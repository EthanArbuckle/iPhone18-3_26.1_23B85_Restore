@interface ProximityCardRootViewController
- (_TtC13MediaRemoteUI31ProximityCardRootViewController)initWithCoder:(id)coder;
- (_TtC13MediaRemoteUI31ProximityCardRootViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation ProximityCardRootViewController

- (_TtC13MediaRemoteUI31ProximityCardRootViewController)initWithNibName:(id)name bundle:(id)bundle
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
  v11.super_class = type metadata accessor for ProximityCardRootViewController();
  v9 = [(ProximityCardRootViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC13MediaRemoteUI31ProximityCardRootViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ProximityCardRootViewController();
  coderCopy = coder;
  v5 = [(ProximityCardRootViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end