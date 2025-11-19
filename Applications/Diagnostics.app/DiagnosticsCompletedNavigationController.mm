@interface DiagnosticsCompletedNavigationController
- (_TtC11Diagnostics40DiagnosticsCompletedNavigationController)initWithCoder:(id)a3;
- (_TtC11Diagnostics40DiagnosticsCompletedNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC11Diagnostics40DiagnosticsCompletedNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC11Diagnostics40DiagnosticsCompletedNavigationController)initWithRootViewController:(id)a3;
- (void)viewDidLoad;
@end

@implementation DiagnosticsCompletedNavigationController

- (void)viewDidLoad
{
  v2 = self;
  sub_100074F38();
}

- (_TtC11Diagnostics40DiagnosticsCompletedNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DiagnosticsCompletedNavigationController();
  return [(DiagnosticsCompletedNavigationController *)&v7 initWithNavigationBarClass:a3 toolbarClass:a4];
}

- (_TtC11Diagnostics40DiagnosticsCompletedNavigationController)initWithRootViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for DiagnosticsCompletedNavigationController();
  return [(DiagnosticsCompletedNavigationController *)&v5 initWithRootViewController:a3];
}

- (_TtC11Diagnostics40DiagnosticsCompletedNavigationController)initWithNibName:(id)a3 bundle:(id)a4
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
  v11.super_class = type metadata accessor for DiagnosticsCompletedNavigationController();
  v9 = [(DiagnosticsCompletedNavigationController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC11Diagnostics40DiagnosticsCompletedNavigationController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DiagnosticsCompletedNavigationController();
  v4 = a3;
  v5 = [(DiagnosticsCompletedNavigationController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end