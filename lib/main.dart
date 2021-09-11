import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(
    PortfolioApp(),
  );
}

class PortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'うぇるちのポートフォリオ',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 32,
              ),
              ClipOval(
                child: Image.asset(
                  'assets/profile.png',
                  width: 200,
                  height: 200,
                ),
              ),
              Text(
                'うぇるち',
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                'Flutterエンジニア',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                '自己紹介',
                style: Theme.of(context).textTheme.headline6,
              ),
              Text(
                'Flutter大好きなうぇるちです',
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                'スキル',
                style: Theme.of(context).textTheme.headline6,
              ),
              Text(
                'Flutter、Dart、Firebase',
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                '連絡先',
                style: Theme.of(context).textTheme.headline6,
              ),
              Text(
                'welchizm@gmail.com',
              ),
              SizedBox(
                height: 64,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () {
                      launch(
                        'https://twitter.com/welchi_',
                      );
                    },
                    child: Image.asset(
                      'assets/twitter_logo.png',
                      width: 30,
                      height: 30,
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  GestureDetector(
                    onTap: () {
                      launch(
                        'https://github.com/welchi',
                      );
                    },
                    child: Image.asset(
                      'assets/github_logo.png',
                      width: 30,
                      height: 30,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
