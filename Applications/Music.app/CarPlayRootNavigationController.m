@interface CarPlayRootNavigationController
- (_TtC5Music31CarPlayRootNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC5Music31CarPlayRootNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC5Music31CarPlayRootNavigationController)initWithRootViewController:(id)a3;
- (void)MCD_pushNowPlayingViewControllerAnimated:(BOOL)a3;
- (void)MCD_pushNowPlayingViewControllerAnimated:(BOOL)a3 fromViewController:(id)a4;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)nowPlayingButtonAction;
- (void)searchButtonAction;
- (void)viewDidLoad;
@end

@implementation CarPlayRootNavigationController

- (void)viewDidLoad
{
  v2 = self;
  sub_1001D46CC();
}

- (void)nowPlayingButtonAction
{
  v2 = self;
  sub_1001D3268(0, 1);
}

- (void)searchButtonAction
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5Music31CarPlayRootNavigationController_siriActionSource);
  v4 = objc_opt_self();
  v5 = self;
  v6 = String._bridgeToObjectiveC()();
  v7 = [v4 musicSearchDirectActionWithAppBundleId:v6];

  [v3 activateWithContext:v7];
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_1001D6D4C(v8);
}

- (void)MCD_pushNowPlayingViewControllerAnimated:(BOOL)a3
{
  v4 = self;
  sub_1001D3268(0, a3);
}

- (void)MCD_pushNowPlayingViewControllerAnimated:(BOOL)a3 fromViewController:(id)a4
{
  v5 = self;
  sub_1001D3268(0, a3);
}

- (_TtC5Music31CarPlayRootNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Music31CarPlayRootNavigationController)initWithRootViewController:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Music31CarPlayRootNavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end