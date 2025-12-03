@interface ApplicationInfoProvider
- (_TtC12PreviewShell23ApplicationInfoProvider)init;
- (id)applicationInfoForAuditToken:(id)token;
- (id)applicationInfoForBundleIdentifier:(id)identifier;
@end

@implementation ApplicationInfoProvider

- (id)applicationInfoForBundleIdentifier:(id)identifier
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = sub_100015884();

  return v3;
}

- (id)applicationInfoForAuditToken:(id)token
{
  tokenCopy = token;
  bundleID = [tokenCopy bundleID];
  if (bundleID)
  {
    v5 = bundleID;
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