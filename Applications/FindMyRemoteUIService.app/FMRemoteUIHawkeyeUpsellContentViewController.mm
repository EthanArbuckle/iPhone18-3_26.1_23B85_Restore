@interface FMRemoteUIHawkeyeUpsellContentViewController
- (_TtC21FindMyRemoteUIService44FMRemoteUIHawkeyeUpsellContentViewController)initWithCoder:(id)coder;
- (_TtC21FindMyRemoteUIService44FMRemoteUIHawkeyeUpsellContentViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation FMRemoteUIHawkeyeUpsellContentViewController

- (_TtC21FindMyRemoteUIService44FMRemoteUIHawkeyeUpsellContentViewController)initWithNibName:(id)name bundle:(id)bundle
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
  v11.super_class = type metadata accessor for FMRemoteUIHawkeyeUpsellContentViewController();
  v9 = [(FMRemoteUIPRXFlowContentViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC21FindMyRemoteUIService44FMRemoteUIHawkeyeUpsellContentViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMRemoteUIHawkeyeUpsellContentViewController();
  coderCopy = coder;
  v5 = [(FMRemoteUIPRXFlowContentViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end