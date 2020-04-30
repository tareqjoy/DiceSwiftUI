//
//  ContentView.swift
//  DiceSwiftUI
//
//  Created by Tareq Rahman Joy on 29/4/20.
//  Copyright © 2020 Tareq Rahman Joy. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var leftDiceNo = 1
    @State var rightDiceno = 1
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(img: leftDiceNo)
                    DiceView(img: rightDiceno)
                    
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    self.leftDiceNo = Int.random(in: 1...6)
                    self.rightDiceno = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .bold()
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }.background(Color.red)
            }
            
        }


    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceView: View {
    let img : Int
    var body: some View {
        Image("dice"+"\(img)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}
