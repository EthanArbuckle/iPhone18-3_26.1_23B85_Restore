@interface RootViewController
- (_TtC24AuthenticationServicesUI18RootViewController)initWithCoder:(id)coder;
- (_TtC24AuthenticationServicesUI18RootViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation RootViewController

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100003450(appear);
}

- (_TtC24AuthenticationServicesUI18RootViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.isa + OBJC_IVAR____TtC24AuthenticationServicesUI18RootViewController_viewServiceViewController) = 0;
    bundleCopy = bundle;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR____TtC24AuthenticationServicesUI18RootViewController_viewServiceViewController) = 0;
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for RootViewController();
  v9 = [(RootViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC24AuthenticationServicesUI18RootViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC24AuthenticationServicesUI18RootViewController_viewServiceViewController) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for RootViewController();
  coderCopy = coder;
  v5 = [(RootViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end