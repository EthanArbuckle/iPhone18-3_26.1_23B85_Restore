@interface ParallaxView
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutSubviews;
@end

@implementation ParallaxView

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ParallaxView();
  v2 = v3.receiver;
  [(ParallaxView *)&v3 layoutSubviews];
  sub_4F3C80();
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_4F3B4C(a4, x, y);

  return v10;
}

@end