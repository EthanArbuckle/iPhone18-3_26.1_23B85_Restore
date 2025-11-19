@interface ProximityCardRootViewController
- (_TtC13MediaRemoteUI31ProximityCardRootViewController)initWithCoder:(id)a3;
- (_TtC13MediaRemoteUI31ProximityCardRootViewController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation ProximityCardRootViewController

- (_TtC13MediaRemoteUI31ProximityCardRootViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = a4;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for ProximityCardRootViewController();
  v9 = [(ProximityCardRootViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC13MediaRemoteUI31ProximityCardRootViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ProximityCardRootViewController();
  v4 = a3;
  v5 = [(ProximityCardRootViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end