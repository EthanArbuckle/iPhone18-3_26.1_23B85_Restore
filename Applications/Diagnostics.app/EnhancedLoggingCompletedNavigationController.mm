@interface EnhancedLoggingCompletedNavigationController
- (_TtC11Diagnostics44EnhancedLoggingCompletedNavigationController)initWithCoder:(id)coder;
- (_TtC11Diagnostics44EnhancedLoggingCompletedNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC11Diagnostics44EnhancedLoggingCompletedNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC11Diagnostics44EnhancedLoggingCompletedNavigationController)initWithRootViewController:(id)controller;
- (void)viewDidLoad;
@end

@implementation EnhancedLoggingCompletedNavigationController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10008D0DC();
}

- (_TtC11Diagnostics44EnhancedLoggingCompletedNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  v7 = OBJC_IVAR____TtC11Diagnostics44EnhancedLoggingCompletedNavigationController_enhancedLoggingCompletedViewController;
  v8 = objc_allocWithZone(type metadata accessor for EnhancedLoggingCompletedViewController());
  *(&self->super.super.super.super.isa + v7) = sub_10006C6A0();
  v10.receiver = self;
  v10.super_class = type metadata accessor for EnhancedLoggingCompletedNavigationController();
  return [(EnhancedLoggingCompletedNavigationController *)&v10 initWithNavigationBarClass:class toolbarClass:toolbarClass];
}

- (_TtC11Diagnostics44EnhancedLoggingCompletedNavigationController)initWithRootViewController:(id)controller
{
  v5 = OBJC_IVAR____TtC11Diagnostics44EnhancedLoggingCompletedNavigationController_enhancedLoggingCompletedViewController;
  v6 = objc_allocWithZone(type metadata accessor for EnhancedLoggingCompletedViewController());
  controllerCopy = controller;
  *(&self->super.super.super.super.isa + v5) = sub_10006C6A0();
  v10.receiver = self;
  v10.super_class = type metadata accessor for EnhancedLoggingCompletedNavigationController();
  v8 = [(EnhancedLoggingCompletedNavigationController *)&v10 initWithRootViewController:controllerCopy];

  return v8;
}

- (_TtC11Diagnostics44EnhancedLoggingCompletedNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
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
  bundleCopy = bundle;
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
  v11 = [(EnhancedLoggingCompletedNavigationController *)&v13 initWithNibName:v10 bundle:bundleCopy];

  return v11;
}

- (_TtC11Diagnostics44EnhancedLoggingCompletedNavigationController)initWithCoder:(id)coder
{
  v5 = OBJC_IVAR____TtC11Diagnostics44EnhancedLoggingCompletedNavigationController_enhancedLoggingCompletedViewController;
  v6 = objc_allocWithZone(type metadata accessor for EnhancedLoggingCompletedViewController());
  coderCopy = coder;
  *(&self->super.super.super.super.isa + v5) = sub_10006C6A0();
  v10.receiver = self;
  v10.super_class = type metadata accessor for EnhancedLoggingCompletedNavigationController();
  v8 = [(EnhancedLoggingCompletedNavigationController *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end