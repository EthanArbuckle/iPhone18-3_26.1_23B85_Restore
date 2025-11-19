@interface JurassicNavigationController
- (BOOL)accessibilityPerformMagicTap;
- (BOOL)prefersStatusBarHidden;
- (UIViewController)childViewControllerForStatusBarHidden;
- (_TtC7Journal28JurassicNavigationController)initWithCoder:(id)a3;
- (_TtC7Journal28JurassicNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC7Journal28JurassicNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC7Journal28JurassicNavigationController)initWithRootViewController:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation JurassicNavigationController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for JurassicNavigationController();
  v2 = v5.receiver;
  [(JurassicNavigationController *)&v5 viewDidLoad];
  v3 = [v2 navigationBar];
  v4 = [objc_opt_self() systemIndigoColor];
  [v3 setTintColor:v4];
}

- (UIViewController)childViewControllerForStatusBarHidden
{
  v2 = [(JurassicNavigationController *)self topViewController];

  return v2;
}

- (BOOL)prefersStatusBarHidden
{
  v2 = self;
  v3 = [(JurassicNavigationController *)v2 topViewController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 prefersStatusBarHidden];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1001A99B4();
}

- (BOOL)accessibilityPerformMagicTap
{
  v2 = self;
  v3 = [(JurassicNavigationController *)v2 topViewController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 accessibilityPerformMagicTap];

    return v5;
  }

  else
  {
    v8.receiver = v2;
    v8.super_class = type metadata accessor for JurassicNavigationController();
    v7 = [(JurassicNavigationController *)&v8 accessibilityPerformMagicTap];

    return v7;
  }
}

- (_TtC7Journal28JurassicNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for JurassicNavigationController();
  return [(JurassicNavigationController *)&v7 initWithNavigationBarClass:a3 toolbarClass:a4];
}

- (_TtC7Journal28JurassicNavigationController)initWithRootViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for JurassicNavigationController();
  return [(JurassicNavigationController *)&v5 initWithRootViewController:a3];
}

- (_TtC7Journal28JurassicNavigationController)initWithNibName:(id)a3 bundle:(id)a4
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
  v11.super_class = type metadata accessor for JurassicNavigationController();
  v9 = [(JurassicNavigationController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC7Journal28JurassicNavigationController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for JurassicNavigationController();
  v4 = a3;
  v5 = [(JurassicNavigationController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end