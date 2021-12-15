//
//  ContentView.swift
//  Layout and Geometry
//
//  Created by Yash Poojary on 13/12/21.
//

import SwiftUI

struct ContentView: View {
    
    let colors: [Color] = [.red, .green, .blue, .orange, .pink, .purple, .yellow]
    
    
    var body: some View {
        GeometryReader { fullview in
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0..<50) { index in
                        GeometryReader { geo in
                            Rectangle()
                                .fill(colors[index % 7])
                                .frame(height: 150)
                                .rotation3DEffect(.degrees(Double(geo.frame(in: .global).midX - fullview.size.width / 2) / 10), axis: (x: 0, y: 1, z:0))
                        }
                        .frame(width: 150)
                    }
                }
                .padding(.horizontal, (fullview.size.width - 150) / 2)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
    


//struct ContentView: View {
//    let colors: [Color] = [.red, .green, .blue, .orange, .pink, .purple, .yellow]
//
//    var body: some View {
//        VStack {
//            Spacer()
//        GeometryReader { fullView in
//            ScrollView(.horizontal, showsIndicators: false) {
//                HStack {
//                    ForEach(0..<50) { index in
//                        GeometryReader { geo in
//                            Rectangle()
//                                .fill(self.colors[index % 7])
//                                .frame(height: 150)
//                                .rotation3DEffect(.degrees(-Double(geo.frame(in: .global).midX - fullView.size.width / 2) / 10), axis: (x: 0, y: 1, z: 0))
//                        }
//                        .frame(width: 150)
//                    }
//                }
//                .padding(.horizontal, (fullView.size.width - 150) / 2)
//            }
//        }
//        .ignoresSafeArea()
//    }
//    }
//}
//

//

//
//struct ContentView: View {
//
//    let colors: [Color] = [.red, .green, .blue, .orange, .pink, .purple, .yellow]
//
//
//    var body: some View {
//        GeometryReader { fullView in
//            ScrollView(.vertical) {
//                ForEach(0..<50) { index in
//                    GeometryReader { geo in
//                        Text("Row #\(index)")
//                            .font(.title)
//                            .frame(width: fullView.size.width)
//                            .background(colors[index % 7])
//                            .rotation3DEffect(.degrees(Double(geo.frame(in: .global).minY - fullView.size.height / 2) / 5), axis: (x: 0, y: 1, z: 0))
//
//                    }
//                    .frame(height: 40)
//                }
//            }
//        }
//    }
//}
//
    
    //struct InnerView: View {
    //    var body: some View {
    //        HStack {
    //            Text("Left")
    //            GeometryReader { geo in
    //                Text("Center")
    //                    .background(.blue)
    //                    .onTapGesture {
    //                        print("Global center: \(geo.frame(in: .global).midX) x \(geo.frame(in: .global).midY)")
    //                        print("Custom center: \(geo.frame(in: .named("Custom")).midX) x \(geo.frame(in: .named("Custom")).midY)")
    //                        print("Local center: \(geo.frame(in: .local).midX) x \(geo.frame(in: .local).midY)")
    //                    }
    //            }
    //            .background(.orange)
    //            Text("Right ")
    //        }
    //
    //    }
    //}

    //
    //
    //struct OuterView: View {
    //    var body: some View {
    //        VStack {
    //            Text("Top")
    //            InnerView()
    //                .background(.green)
    //            Text("Bottom")
    //        }
    //    }
    //}
//}



//struct ContentView: View {
//    var body: some View {
//
//        VStack {
//            GeometryReader { geo in
//                Text("Hello, World!")
//                    .frame(width: geo.size.width * 0.9, height: 40)
//                    .background(.red)
//            }
//            .background(.green)
//
//            Text("Hello World")
//                .background(.blue)
//        }
//
//
//
//    }
//}


//struct ContentView: View {
//    var body: some View {
//        HStack(alignment: .midAccountAndName) {
//            VStack {
//                Text("poojary_yash")
//                    .font(.caption)
//                    .alignmentGuide(.midAccountAndName) { d in
//                        d[VerticalAlignment.center]
//                    }
//
//                Image("yash")
//                    .resizable()
//                    .frame(width: 64, height: 64)
//            }
//
//            VStack {
//
//                    Text("Full name:")
//                    Text("Yash Poojary")
//                        .font(.largeTitle)
//                        .alignmentGuide(.midAccountAndName) { d in
//                            d[VerticalAlignment.center]
//                        }
//
//                }
//        }
//
//    }
//}

//extension VerticalAlignment {
//    struct MidAccountAndName: AlignmentID {
//        static func defaultValue(in context: ViewDimensions) -> CGFloat {
//            context[.top]
//        }
//
//    }
//
//    static let midAccountAndName = VerticalAlignment(MidAccountAndName.self)
//}



//struct ContentView: View {
//    var body: some View {
//        VStack(alignment: .leading) {
//            ForEach(0..<10) { position in
//                Text("The current position is \(position)")
//                    .alignmentGuide(.leading) { _ in
//                        CGFloat((position) * -10)
//                    }
//            }
//        }
//            .background(Color.red)
//            .frame(width: 300, height: 300)
//            .background(Color.blue)
//        }
//
//}
