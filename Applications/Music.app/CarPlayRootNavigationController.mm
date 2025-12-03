@interface CarPlayRootNavigationController
- (_TtC5Music31CarPlayRootNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC5Music31CarPlayRootNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC5Music31CarPlayRootNavigationController)initWithRootViewController:(id)controller;
- (void)MCD_pushNowPlayingViewControllerAnimated:(BOOL)animated;
- (void)MCD_pushNowPlayingViewControllerAnimated:(BOOL)animated fromViewController:(id)controller;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)nowPlayingButtonAction;
- (void)searchButtonAction;
- (void)viewDidLoad;
@end

@implementation CarPlayRootNavigationController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1001D46CC();
}

- (void)nowPlayingButtonAction
{
  selfCopy = self;
  sub_1001D3268(0, 1);
}

- (void)searchButtonAction
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5Music31CarPlayRootNavigationController_siriActionSource);
  v4 = objc_opt_self();
  selfCopy = self;
  v6 = String._bridgeToObjectiveC()();
  v7 = [v4 musicSearchDirectActionWithAppBundleId:v6];

  [v3 activateWithContext:v7];
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  sub_1001D6D4C(viewControllerCopy);
}

- (void)MCD_pushNowPlayingViewControllerAnimated:(BOOL)animated
{
  selfCopy = self;
  sub_1001D3268(0, animated);
}

- (void)MCD_pushNowPlayingViewControllerAnimated:(BOOL)animated fromViewController:(id)controller
{
  selfCopy = self;
  sub_1001D3268(0, animated);
}

- (_TtC5Music31CarPlayRootNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Music31CarPlayRootNavigationController)initWithRootViewController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Music31CarPlayRootNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end