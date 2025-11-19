@interface BEChromeRootView
- (_TtC5Books16BEChromeRootView)initWithCoder:(id)a3;
- (_TtC5Books16BEChromeRootView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation BEChromeRootView

- (_TtC5Books16BEChromeRootView)initWithCoder:(id)a3
{
  result = sub_1007A38A4();
  __break(1u);
  return result;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = BEChromeRootView.hitTest(_:with:)(a4, x, y);

  return v10;
}

- (_TtC5Books16BEChromeRootView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end