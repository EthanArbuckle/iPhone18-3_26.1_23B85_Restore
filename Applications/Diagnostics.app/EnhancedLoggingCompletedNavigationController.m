@interface EnhancedLoggingCompletedNavigationController
- (_TtC11Diagnostics44EnhancedLoggingCompletedNavigationController)initWithCoder:(id)a3;
- (_TtC11Diagnostics44EnhancedLoggingCompletedNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC11Diagnostics44EnhancedLoggingCompletedNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC11Diagnostics44EnhancedLoggingCompletedNavigationController)initWithRootViewController:(id)a3;
- (void)viewDidLoad;
@end

@implementation EnhancedLoggingCompletedNavigationController

- (void)viewDidLoad
{
  v2 = self;
  sub_10008D0DC();
}

- (_TtC11Diagnostics44EnhancedLoggingCompletedNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  v7 = OBJC_IVAR____TtC11Diagnostics44EnhancedLoggingCompletedNavigationController_enhancedLoggingCompletedViewController;
  v8 = objc_allocWithZone(type metadata accessor for EnhancedLoggingCompletedViewController());
  *(&self->super.super.super.super.isa + v7) = sub_10006C6A0();
  v10.receiver = self;
  v10.super_class = type metadata accessor for EnhancedLoggingCompletedNavigationController();
  return [(EnhancedLoggingCompletedNavigationController *)&v10 initWithNavigationBarClass:a3 toolbarClass:a4];
}

- (_TtC11Diagnostics44EnhancedLoggingCompletedNavigationController)initWithRootViewController:(id)a3
{
  v5 = OBJC_IVAR____TtC11Diagnostics44EnhancedLoggingCompletedNavigationController_enhancedLoggingCompletedViewController;
  v6 = objc_allocWithZone(type metadata accessor for EnhancedLoggingCompletedViewController());
  v7 = a3;
  *(&self->super.super.super.super.isa + v5) = sub_10006C6A0();
  v10.receiver = self;
  v10.super_class = type metadata accessor for EnhancedLoggingCompletedNavigationController();
  v8 = [(EnhancedLoggingCompletedNavigationController *)&v10 initWithRootViewController:v7];

  return v8;
}

- (_TtC11Diagnostics44EnhancedLoggingCompletedNavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = OBJC_IVAR____TtC11Diagnostics44EnhancedLoggingCompletedNavigationController_enhancedLoggingCompletedViewController;
  objc_allocWithZone(type metadata accessor for EnhancedLoggingCompletedViewController());
  v9 = a4;
  *(&self->super.super.super.super.isa + v8) = sub_10006C6A0();
  if (v7)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = self;
  v13.super_class = type metadata accessor for EnhancedLoggingCompletedNavigationController();
  v11 = [(EnhancedLoggingCompletedNavigationController *)&v13 initWithNibName:v10 bundle:v9];

  return v11;
}

- (_TtC11Diagnostics44EnhancedLoggingCompletedNavigationController)initWithCoder:(id)a3
{
  v5 = OBJC_IVAR____TtC11Diagnostics44EnhancedLoggingCompletedNavigationController_enhancedLoggingCompletedViewController;
  v6 = objc_allocWithZone(type metadata accessor for EnhancedLoggingCompletedViewController());
  v7 = a3;
  *(&self->super.super.super.super.isa + v5) = sub_10006C6A0();
  v10.receiver = self;
  v10.super_class = type metadata accessor for EnhancedLoggingCompletedNavigationController();
  v8 = [(EnhancedLoggingCompletedNavigationController *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end