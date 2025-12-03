@interface MarketplaceKitBridge
+ (void)requestLicenseRepair:(id)repair status:(int)status;
- (_TtC19applicensedeliveryd20MarketplaceKitBridge)init;
@end

@implementation MarketplaceKitBridge

+ (void)requestLicenseRepair:(id)repair status:(int)status
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  static LicenseRepair.requestLicenseRepair(_:status:)();

  _swift_bridgeObjectRelease(v5);
}

- (_TtC19applicensedeliveryd20MarketplaceKitBridge)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(MarketplaceKitBridge *)&v3 init];
}

@end