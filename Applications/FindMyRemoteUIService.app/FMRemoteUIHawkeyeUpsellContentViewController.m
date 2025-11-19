@interface FMRemoteUIHawkeyeUpsellContentViewController
- (_TtC21FindMyRemoteUIService44FMRemoteUIHawkeyeUpsellContentViewController)initWithCoder:(id)a3;
- (_TtC21FindMyRemoteUIService44FMRemoteUIHawkeyeUpsellContentViewController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation FMRemoteUIHawkeyeUpsellContentViewController

- (_TtC21FindMyRemoteUIService44FMRemoteUIHawkeyeUpsellContentViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  v11.super_class = type metadata accessor for FMRemoteUIHawkeyeUpsellContentViewController();
  v9 = [(FMRemoteUIPRXFlowContentViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC21FindMyRemoteUIService44FMRemoteUIHawkeyeUpsellContentViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMRemoteUIHawkeyeUpsellContentViewController();
  v4 = a3;
  v5 = [(FMRemoteUIPRXFlowContentViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end