@interface FullScreenAssetNavigationController
- (UIViewController)childViewControllerForStatusBarHidden;
- (_TtC7Journal35FullScreenAssetNavigationController)initWithCoder:(id)a3;
- (_TtC7Journal35FullScreenAssetNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC7Journal35FullScreenAssetNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC7Journal35FullScreenAssetNavigationController)initWithRootViewController:(id)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation FullScreenAssetNavigationController

- (UIViewController)childViewControllerForStatusBarHidden
{
  v2 = [(FullScreenAssetNavigationController *)self topViewController];

  return v2;
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_100161864();
}

- (_TtC7Journal35FullScreenAssetNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FullScreenAssetNavigationController();
  return [(FullScreenAssetNavigationController *)&v7 initWithNavigationBarClass:a3 toolbarClass:a4];
}

- (_TtC7Journal35FullScreenAssetNavigationController)initWithRootViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for FullScreenAssetNavigationController();
  return [(FullScreenAssetNavigationController *)&v5 initWithRootViewController:a3];
}

- (_TtC7Journal35FullScreenAssetNavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = a4;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for FullScreenAssetNavigationController();
  v9 = [(FullScreenAssetNavigationController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC7Journal35FullScreenAssetNavigationController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FullScreenAssetNavigationController();
  v4 = a3;
  v5 = [(FullScreenAssetNavigationController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end