@interface CLBContentBackgroundView
- (CLBContentBackgroundView)initWithCoder:(id)a3;
- (CLBContentBackgroundView)initWithFrame:(CGRect)a3;
@end

@implementation CLBContentBackgroundView

- (CLBContentBackgroundView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11.receiver = self;
  v11.super_class = type metadata accessor for ContentBackgroundView();
  v7 = [(CLBContentBackgroundView *)&v11 initWithFrame:x, y, width, height];
  sub_1000675D8();
  v8 = v7;
  v9 = static UIColor.clarityUIContentBackground.getter();
  [(CLBContentBackgroundView *)v8 setBackgroundColor:v9];

  return v8;
}

- (CLBContentBackgroundView)initWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for ContentBackgroundView();
  v4 = a3;
  v5 = [(CLBContentBackgroundView *)&v9 initWithCoder:v4];
  if (v5)
  {
    sub_1000675D8();
    v6 = v5;
    v7 = static UIColor.clarityUIContentBackground.getter();
    [(CLBContentBackgroundView *)v6 setBackgroundColor:v7, v9.receiver, v9.super_class];

    v4 = v7;
  }

  return v5;
}

@end