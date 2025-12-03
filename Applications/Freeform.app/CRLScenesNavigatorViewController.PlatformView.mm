@interface CRLScenesNavigatorViewController.PlatformView
- (_TtCC8Freeform32CRLScenesNavigatorViewController12PlatformView)initWithCoder:(id)coder;
- (_TtCC8Freeform32CRLScenesNavigatorViewController12PlatformView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)updateConstraints;
@end

@implementation CRLScenesNavigatorViewController.PlatformView

- (_TtCC8Freeform32CRLScenesNavigatorViewController12PlatformView)initWithCoder:(id)coder
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

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_100F3486C(event, x, y);

  return v10;
}

- (_TtCC8Freeform32CRLScenesNavigatorViewController12PlatformView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end