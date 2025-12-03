@interface JurassicNavigationController
- (BOOL)accessibilityPerformMagicTap;
- (BOOL)prefersStatusBarHidden;
- (UIViewController)childViewControllerForStatusBarHidden;
- (_TtC7Journal28JurassicNavigationController)initWithCoder:(id)coder;
- (_TtC7Journal28JurassicNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC7Journal28JurassicNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC7Journal28JurassicNavigationController)initWithRootViewController:(id)controller;
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
  navigationBar = [v2 navigationBar];
  systemIndigoColor = [objc_opt_self() systemIndigoColor];
  [navigationBar setTintColor:systemIndigoColor];
}

- (UIViewController)childViewControllerForStatusBarHidden
{
  topViewController = [(JurassicNavigationController *)self topViewController];

  return topViewController;
}

- (BOOL)prefersStatusBarHidden
{
  selfCopy = self;
  topViewController = [(JurassicNavigationController *)selfCopy topViewController];
  if (topViewController)
  {
    v4 = topViewController;
    prefersStatusBarHidden = [topViewController prefersStatusBarHidden];
  }

  else
  {
    prefersStatusBarHidden = 0;
  }

  return prefersStatusBarHidden;
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1001A99B4();
}

- (BOOL)accessibilityPerformMagicTap
{
  selfCopy = self;
  topViewController = [(JurassicNavigationController *)selfCopy topViewController];
  if (topViewController)
  {
    v4 = topViewController;
    accessibilityPerformMagicTap = [topViewController accessibilityPerformMagicTap];

    return accessibilityPerformMagicTap;
  }

  else
  {
    v8.receiver = selfCopy;
    v8.super_class = type metadata accessor for JurassicNavigationController();
    accessibilityPerformMagicTap2 = [(JurassicNavigationController *)&v8 accessibilityPerformMagicTap];

    return accessibilityPerformMagicTap2;
  }
}

- (_TtC7Journal28JurassicNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for JurassicNavigationController();
  return [(JurassicNavigationController *)&v7 initWithNavigationBarClass:class toolbarClass:toolbarClass];
}

- (_TtC7Journal28JurassicNavigationController)initWithRootViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for JurassicNavigationController();
  return [(JurassicNavigationController *)&v5 initWithRootViewController:controller];
}

- (_TtC7Journal28JurassicNavigationController)initWithNibName:(id)name bundle:(id)bundle
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
  v11.super_class = type metadata accessor for JurassicNavigationController();
  v9 = [(JurassicNavigationController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC7Journal28JurassicNavigationController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for JurassicNavigationController();
  coderCopy = coder;
  v5 = [(JurassicNavigationController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end