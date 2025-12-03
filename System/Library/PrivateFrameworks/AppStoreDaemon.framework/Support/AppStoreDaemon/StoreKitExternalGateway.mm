@interface StoreKitExternalGateway
+ (_TtC9appstored23StoreKitExternalGateway)shared;
- (_TtC9appstored23StoreKitExternalGateway)init;
- (void)handleExternalPurchaseTokenInfoDictionary:(id)dictionary bundleID:(id)d;
@end

@implementation StoreKitExternalGateway

+ (_TtC9appstored23StoreKitExternalGateway)shared
{
  if (qword_10059B4E8 != -1)
  {
    swift_once();
  }

  v3 = qword_1005AB100;

  return v3;
}

- (void)handleExternalPurchaseTokenInfoDictionary:(id)dictionary bundleID:(id)d
{
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  selfCopy = self;
  sub_1000FE9A0(v5, v6, v8);
}

- (_TtC9appstored23StoreKitExternalGateway)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(StoreKitExternalGateway *)&v3 init];
}

@end