@interface Toolbar
- (UIColor)backgroundColor;
- (id)initInView:(id)a3 withFrame:(CGRect)a4 withItemList:(id)a5;
- (void)setBackgroundColor:(id)a3;
@end

@implementation Toolbar

- (UIColor)backgroundColor
{
  v2 = self;
  v3 = sub_10004838C();

  return v3;
}

- (void)setBackgroundColor:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100048434(a3);
}

- (id)initInView:(id)a3 withFrame:(CGRect)a4 withItemList:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  if (a5)
  {
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v10 = 0;
  }

  v11 = a3;
  return sub_100048610(a3, v10, x, y, width, height);
}

@end