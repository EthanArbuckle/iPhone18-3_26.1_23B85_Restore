@interface RemoteAlertRootViewController
- (_TtC10CoreAuthUI29RemoteAlertRootViewController)initWithCoder:(id)coder;
- (_TtC10CoreAuthUI29RemoteAlertRootViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC10CoreAuthUI29RemoteAlertRootViewController)initWithScene:(id)scene;
@end

@implementation RemoteAlertRootViewController

- (_TtC10CoreAuthUI29RemoteAlertRootViewController)initWithScene:(id)scene
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for RemoteAlertRootViewController();
  return [(RemoteAlertRootViewController *)&v5 initWithScene:scene];
}

- (_TtC10CoreAuthUI29RemoteAlertRootViewController)initWithNibName:(id)name bundle:(id)bundle
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
  v11.super_class = type metadata accessor for RemoteAlertRootViewController();
  v9 = [(RemoteAlertRootViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC10CoreAuthUI29RemoteAlertRootViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for RemoteAlertRootViewController();
  coderCopy = coder;
  v5 = [(RemoteAlertRootViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end