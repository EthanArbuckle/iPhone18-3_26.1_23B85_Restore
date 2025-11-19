@interface JSTelephony
- (BOOL)hasTelephonyCapability;
- (BOOL)hasTelephonyEntitlement;
- (NSString)simStatus;
@end

@implementation JSTelephony

- (NSString)simStatus
{
  v2 = self;
  sub_10013EF20();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (BOOL)hasTelephonyCapability
{
  v2 = self;
  v3 = sub_10013EFC0();

  return v3 & 1;
}

- (BOOL)hasTelephonyEntitlement
{
  v2 = self;
  v3 = sub_10013F048();

  return v3 & 1;
}

@end