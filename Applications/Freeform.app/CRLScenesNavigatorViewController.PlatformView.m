@interface CRLScenesNavigatorViewController.PlatformView
- (_TtCC8Freeform32CRLScenesNavigatorViewController12PlatformView)initWithCoder:(id)a3;
- (_TtCC8Freeform32CRLScenesNavigatorViewController12PlatformView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)updateConstraints;
@end

@implementation CRLScenesNavigatorViewController.PlatformView

- (_TtCC8Freeform32CRLScenesNavigatorViewController12PlatformView)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)updateConstraints
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CRLScenesNavigatorViewController.PlatformView();
  v2 = v5.receiver;
  [(CRLScenesNavigatorViewController.PlatformView *)&v5 updateConstraints];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100F28C7C(1);
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_100F3486C(a4, x, y);

  return v10;
}

- (_TtCC8Freeform32CRLScenesNavigatorViewController12PlatformView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end