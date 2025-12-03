@interface JSTelephony
- (BOOL)hasTelephonyCapability;
- (BOOL)hasTelephonyEntitlement;
- (NSString)simStatus;
@end

@implementation JSTelephony

- (NSString)simStatus
{
  selfCopy = self;
  sub_10013EF20();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (BOOL)hasTelephonyCapability
{
  selfCopy = self;
  v3 = sub_10013EFC0();

  return v3 & 1;
}

- (BOOL)hasTelephonyEntitlement
{
  selfCopy = self;
  v3 = sub_10013F048();

  return v3 & 1;
}

@end