@interface ParallaxView
- (id)hitTest:(CGPoint)test withEvent:(id)event;
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

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_4F3B4C(event, x, y);

  return v10;
}

@end