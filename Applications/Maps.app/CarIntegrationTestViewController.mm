@interface CarIntegrationTestViewController
- (_TtC4Maps32CarIntegrationTestViewController)initWithCoder:(id)coder;
- (_TtC4Maps32CarIntegrationTestViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation CarIntegrationTestViewController

- (_TtC4Maps32CarIntegrationTestViewController)initWithNibName:(id)name bundle:(id)bundle
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
  v10 = [(CarHostingViewController *)&v12 initWithNibName:name bundle:bundle];

  return v10;
}

- (_TtC4Maps32CarIntegrationTestViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(CarHostingViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end