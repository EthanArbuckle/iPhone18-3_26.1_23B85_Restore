@interface DummyVoicemailNavigationController
- (_TtC11MobilePhone34DummyVoicemailNavigationController)initWithCoder:(id)coder;
- (_TtC11MobilePhone34DummyVoicemailNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC11MobilePhone34DummyVoicemailNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC11MobilePhone34DummyVoicemailNavigationController)initWithRootViewController:(id)controller;
@end

@implementation DummyVoicemailNavigationController

- (_TtC11MobilePhone34DummyVoicemailNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DummyVoicemailNavigationController();
  return [(DummyVoicemailNavigationController *)&v7 initWithNavigationBarClass:class toolbarClass:toolbarClass];
}

- (_TtC11MobilePhone34DummyVoicemailNavigationController)initWithRootViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for DummyVoicemailNavigationController();
  return [(PhoneNavigationController *)&v5 initWithRootViewController:controller];
}

- (_TtC11MobilePhone34DummyVoicemailNavigationController)initWithNibName:(id)name bundle:(id)bundle
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
  v11.super_class = type metadata accessor for DummyVoicemailNavigationController();
  v9 = [(DummyVoicemailNavigationController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC11MobilePhone34DummyVoicemailNavigationController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DummyVoicemailNavigationController();
  coderCopy = coder;
  v5 = [(DummyVoicemailNavigationController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end