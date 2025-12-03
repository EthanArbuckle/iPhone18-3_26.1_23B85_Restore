@interface BEChromeRootView
- (_TtC5Books16BEChromeRootView)initWithCoder:(id)coder;
- (_TtC5Books16BEChromeRootView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation BEChromeRootView

- (_TtC5Books16BEChromeRootView)initWithCoder:(id)coder
{
  result = sub_1007A38A4();
  __break(1u);
  return result;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = BEChromeRootView.hitTest(_:with:)(event, x, y);

  return v10;
}

- (_TtC5Books16BEChromeRootView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end