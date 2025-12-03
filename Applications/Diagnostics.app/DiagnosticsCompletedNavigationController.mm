@interface DiagnosticsCompletedNavigationController
- (_TtC11Diagnostics40DiagnosticsCompletedNavigationController)initWithCoder:(id)coder;
- (_TtC11Diagnostics40DiagnosticsCompletedNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC11Diagnostics40DiagnosticsCompletedNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC11Diagnostics40DiagnosticsCompletedNavigationController)initWithRootViewController:(id)controller;
- (void)viewDidLoad;
@end

@implementation DiagnosticsCompletedNavigationController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100074F38();
}

- (_TtC11Diagnostics40DiagnosticsCompletedNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DiagnosticsCompletedNavigationController();
  return [(DiagnosticsCompletedNavigationController *)&v7 initWithNavigationBarClass:class toolbarClass:toolbarClass];
}

- (_TtC11Diagnostics40DiagnosticsCompletedNavigationController)initWithRootViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for DiagnosticsCompletedNavigationController();
  return [(DiagnosticsCompletedNavigationController *)&v5 initWithRootViewController:controller];
}

- (_TtC11Diagnostics40DiagnosticsCompletedNavigationController)initWithNibName:(id)name bundle:(id)bundle
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
  v11.super_class = type metadata accessor for DiagnosticsCompletedNavigationController();
  v9 = [(DiagnosticsCompletedNavigationController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC11Diagnostics40DiagnosticsCompletedNavigationController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DiagnosticsCompletedNavigationController();
  coderCopy = coder;
  v5 = [(DiagnosticsCompletedNavigationController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end