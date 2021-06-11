//
//  ContentView.swift
//  FirstSwiftMacApp
//
//  Created by Virej Dasani on 10/06/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var numClicked = 0

    var body: some View {
        
        ZStack {
            Color.blue
            
            VStack {
                Text("Hello, Swift!")
                    .font(.title)
                    .fontWeight(.heavy)
                    .padding(1)
                    .foregroundColor(.black)
                
                Text("This is my First Swift & Xcode app!")
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .padding(1)
                    .foregroundColor(.black)

                
                Button("Click Me!") {
                    // Because the numClicked has @State, everytime it is updated, it will also update in the Text()
                    numClicked += 1
                    // This shows "Clicked 'n'x"
                    print("Clicked " + String(numClicked) + "x")
                }
                .foregroundColor(.black)

                
                // This Test() acts as a Button
                // This is better because it can be styled however we want
                Text("Or Click Me!")
                .frame(width: 80, height: 5, alignment: .center)
                .foregroundColor(.white)
                .padding(.all)
                .background(Color.black)
                .cornerRadius(80)
                // This is the onClickListener
                .onTapGesture {
                    // Because the numClicked has @State, everytime it is updated, it will also update in the Text()
                    numClicked += 1
                    // This logs "Clicked 'n'x"
                    print("Clicked " + String(numClicked) + "x")
                }
                
                // "\(numClicked)" is the same as String(numClicked)
                Text("Clicked " + "\(numClicked)" + " times")
                    .font(.title2)
                    .fontWeight(.medium)
                    .padding(10)
                
            }
            .frame(minWidth: 400, idealWidth: 400, maxWidth: 600, minHeight: 200, idealHeight: 200, maxHeight: 400)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
