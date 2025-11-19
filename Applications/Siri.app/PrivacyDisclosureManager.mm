@interface PrivacyDisclosureManager
+ (BOOL)appRequiresPreflightWithAppBundleId:(id)a3;
- (_TtC4Siri24PrivacyDisclosureManager)init;
@end

@implementation PrivacyDisclosureManager

+ (BOOL)appRequiresPreflightWithAppBundleId:(id)a3
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  v6 = objc_allocWithZone(LSApplicationRecord);
  v7 = sub_100095928(v3, v5, 0);
  if (!v7)
  {
    return 0;
  }

  v9 = v7;
  if (qword_10018D748 != -1)
  {
    swift_once();
  }

  v10 = [qword_10018DF40 requiresPreflightForApplicationRecord:v9];

  return v10;
}

- (_TtC4Siri24PrivacyDisclosureManager)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PrivacyDisclosureManager();
  return [(PrivacyDisclosureManager *)&v3 init];
}

@end