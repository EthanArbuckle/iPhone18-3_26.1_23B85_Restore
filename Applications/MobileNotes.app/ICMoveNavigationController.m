@interface ICMoveNavigationController
- (ICMoveNavigationController)initWithCoder:(id)a3;
- (ICMoveNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (ICMoveNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (ICMoveNavigationController)initWithRootViewController:(id)a3;
- (ICMoveNavigationController)initWithViewControllerManager:(id)a3 sourceObjectIds:(id)a4;
- (void)presentationControllerDidDismiss:(id)a3;
@end

@implementation ICMoveNavigationController

- (ICMoveNavigationController)initWithViewControllerManager:(id)a3 sourceObjectIds:(id)a4
{
  sub_10025239C();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_1003FDB40(a3, v5);
}

- (ICMoveNavigationController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR___ICMoveNavigationController_canAppearAbovePasswordEntryView) = 1;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v3 = *(*(&self->super.super.super.super.isa + OBJC_IVAR___ICMoveNavigationController_moveViewController) + OBJC_IVAR___ICMoveViewController_completionHandler);
  if (v3)
  {
    v4 = self;
    sub_100010854(v3);
    v3(0);
    sub_10000C840(v3);
  }
}

- (ICMoveNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (ICMoveNavigationController)initWithRootViewController:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (ICMoveNavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end