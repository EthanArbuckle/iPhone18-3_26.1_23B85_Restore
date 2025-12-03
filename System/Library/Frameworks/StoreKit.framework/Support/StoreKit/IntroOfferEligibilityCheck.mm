@interface IntroOfferEligibilityCheck
- (NSString)storefrontID;
- (id)initForGroupID:(id)d bundleID:(id)iD storefrontID:(id)storefrontID logKey:(id)key;
- (int64_t)eligibilityBasedOnStatus:(id)status;
@end

@implementation IntroOfferEligibilityCheck

- (NSString)storefrontID
{
  sub_1001CBB24();
  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)initForGroupID:(id)d bundleID:(id)iD storefrontID:(id)storefrontID logKey:(id)key
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (!storefrontID)
  {
    v15 = 0;
    if (key)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    v18 = 0;
    return sub_1001CBBDC(v8, v10, v11, v13, storefrontID, v15, v16, v18);
  }

  storefrontID = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  if (!key)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  return sub_1001CBBDC(v8, v10, v11, v13, storefrontID, v15, v16, v18);
}

- (int64_t)eligibilityBasedOnStatus:(id)status
{
  if (status)
  {
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  v6 = sub_1001CBDAC(v4);

  return v6;
}

@end