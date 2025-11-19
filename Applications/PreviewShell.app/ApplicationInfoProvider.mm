@interface ApplicationInfoProvider
- (_TtC12PreviewShell23ApplicationInfoProvider)init;
- (id)applicationInfoForAuditToken:(id)a3;
- (id)applicationInfoForBundleIdentifier:(id)a3;
@end

@implementation ApplicationInfoProvider

- (id)applicationInfoForBundleIdentifier:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = sub_100015884();

  return v3;
}

- (id)applicationInfoForAuditToken:(id)a3
{
  v3 = a3;
  v4 = [v3 bundleID];
  if (v4)
  {
    v5 = v4;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = sub_100015884();
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (_TtC12PreviewShell23ApplicationInfoProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ApplicationInfoProvider();
  return [(ApplicationInfoProvider *)&v3 init];
}

@end