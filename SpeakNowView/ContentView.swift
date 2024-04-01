//
//  ContentView.swift
//  SpeakNowView
//
//  Created by Sidak Singh Aulakh on 26/3/2024.
//

import SwiftUI

struct ContentView: View {
    @State var date: Date = Date()
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.speakNow)
                .ignoresSafeArea()
            VStack {
                Text("AND I GO BACK TO")
                    .foregroundStyle(.regularMaterial)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.black)
                DatePicker(DateFormatter.month.string(from: date).uppercased(), selection: $date, displayedComponents: .date)
                    .foregroundStyle(.regularMaterial)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.black)
                Text("ALL THE TIME")
                    .foregroundStyle(.regularMaterial)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.black)
                
            }
            .padding()
        }
    }
}

extension DateFormatter {
    static var month: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "d MMMM"
        return formatter
    }
}

#Preview {
    ContentView()
}
