@interface TTRIMainNavigationController
- (_TtC9Reminders28TTRIMainNavigationController)initWithCoder:(id)a3;
- (_TtC9Reminders28TTRIMainNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC9Reminders28TTRIMainNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC9Reminders28TTRIMainNavigationController)initWithRootViewController:(id)a3;
- (void)pushViewController:(id)a3 animated:(BOOL)a4;
@end

@implementation TTRIMainNavigationController

- (_TtC9Reminders28TTRIMainNavigationController)initWithRootViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(TTRIMainNavigationController *)&v5 initWithRootViewController:a3];
}

- (void)pushViewController:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_10000BF24(v6, a4);
}

- (_TtC9Reminders28TTRIMainNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(TTRIMainNavigationController *)&v7 initWithNavigationBarClass:a3 toolbarClass:a4];
}

- (_TtC9Reminders28TTRIMainNavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = a4;
    a3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = a4;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(TTRIMainNavigationController *)&v12 initWithNibName:a3 bundle:a4];

  return v10;
}

- (_TtC9Reminders28TTRIMainNavigationController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(TTRIMainNavigationController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end