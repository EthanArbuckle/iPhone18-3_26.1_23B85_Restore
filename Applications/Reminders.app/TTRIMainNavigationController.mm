@interface TTRIMainNavigationController
- (_TtC9Reminders28TTRIMainNavigationController)initWithCoder:(id)coder;
- (_TtC9Reminders28TTRIMainNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC9Reminders28TTRIMainNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC9Reminders28TTRIMainNavigationController)initWithRootViewController:(id)controller;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
@end

@implementation TTRIMainNavigationController

- (_TtC9Reminders28TTRIMainNavigationController)initWithRootViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(TTRIMainNavigationController *)&v5 initWithRootViewController:controller];
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  controllerCopy = controller;
  selfCopy = self;
  sub_10000BF24(controllerCopy, animated);
}

- (_TtC9Reminders28TTRIMainNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(TTRIMainNavigationController *)&v7 initWithNavigationBarClass:class toolbarClass:toolbarClass];
}

- (_TtC9Reminders28TTRIMainNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    bundleCopy = bundle;
    name = String._bridgeToObjectiveC()();
  }

  else
  {
    bundleCopy2 = bundle;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(TTRIMainNavigationController *)&v12 initWithNibName:name bundle:bundle];

  return v10;
}

- (_TtC9Reminders28TTRIMainNavigationController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(TTRIMainNavigationController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end