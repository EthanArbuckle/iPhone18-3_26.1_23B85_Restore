@interface FullScreenAssetNavigationController
- (UIViewController)childViewControllerForStatusBarHidden;
- (_TtC7Journal35FullScreenAssetNavigationController)initWithCoder:(id)coder;
- (_TtC7Journal35FullScreenAssetNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC7Journal35FullScreenAssetNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC7Journal35FullScreenAssetNavigationController)initWithRootViewController:(id)controller;
- (void)viewWillLayoutSubviews;
@end

@implementation FullScreenAssetNavigationController

- (UIViewController)childViewControllerForStatusBarHidden
{
  topViewController = [(FullScreenAssetNavigationController *)self topViewController];

  return topViewController;
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_100161864();
}

- (_TtC7Journal35FullScreenAssetNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FullScreenAssetNavigationController();
  return [(FullScreenAssetNavigationController *)&v7 initWithNavigationBarClass:class toolbarClass:toolbarClass];
}

- (_TtC7Journal35FullScreenAssetNavigationController)initWithRootViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for FullScreenAssetNavigationController();
  return [(FullScreenAssetNavigationController *)&v5 initWithRootViewController:controller];
}

- (_TtC7Journal35FullScreenAssetNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    bundleCopy = bundle;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for FullScreenAssetNavigationController();
  v9 = [(FullScreenAssetNavigationController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC7Journal35FullScreenAssetNavigationController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FullScreenAssetNavigationController();
  coderCopy = coder;
  v5 = [(FullScreenAssetNavigationController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end