@interface CLBContentBackgroundView
- (CLBContentBackgroundView)initWithCoder:(id)coder;
- (CLBContentBackgroundView)initWithFrame:(CGRect)frame;
@end

@implementation CLBContentBackgroundView

- (CLBContentBackgroundView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v11.receiver = self;
  v11.super_class = type metadata accessor for ContentBackgroundView();
  height = [(CLBContentBackgroundView *)&v11 initWithFrame:x, y, width, height];
  sub_1000675D8();
  v8 = height;
  v9 = static UIColor.clarityUIContentBackground.getter();
  [(CLBContentBackgroundView *)v8 setBackgroundColor:v9];

  return v8;
}

- (CLBContentBackgroundView)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for ContentBackgroundView();
  coderCopy = coder;
  v5 = [(CLBContentBackgroundView *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    sub_1000675D8();
    v6 = v5;
    v7 = static UIColor.clarityUIContentBackground.getter();
    [(CLBContentBackgroundView *)v6 setBackgroundColor:v7, v9.receiver, v9.super_class];

    coderCopy = v7;
  }

  return v5;
}

@end