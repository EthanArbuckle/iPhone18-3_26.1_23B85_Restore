@interface RootViewController
- (_TtC24AuthenticationServicesUI18RootViewController)initWithCoder:(id)a3;
- (_TtC24AuthenticationServicesUI18RootViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation RootViewController

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_100003450(a3);
}

- (_TtC24AuthenticationServicesUI18RootViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.isa + OBJC_IVAR____TtC24AuthenticationServicesUI18RootViewController_viewServiceViewController) = 0;
    v6 = a4;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR____TtC24AuthenticationServicesUI18RootViewController_viewServiceViewController) = 0;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for RootViewController();
  v9 = [(RootViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC24AuthenticationServicesUI18RootViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC24AuthenticationServicesUI18RootViewController_viewServiceViewController) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for RootViewController();
  v4 = a3;
  v5 = [(RootViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end