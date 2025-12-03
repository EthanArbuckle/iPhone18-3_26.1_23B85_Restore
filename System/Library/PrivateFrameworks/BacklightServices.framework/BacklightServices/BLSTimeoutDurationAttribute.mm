@interface BLSTimeoutDurationAttribute
- (BOOL)checkEntitlementSourceForRequiredEntitlements:(id)entitlements error:(id *)error;
@end

@implementation BLSTimeoutDurationAttribute

- (BOOL)checkEntitlementSourceForRequiredEntitlements:(id)entitlements error:(id *)error
{
  entitlementsCopy = entitlements;
  [(BLSDurationAttribute *)self duration];
  v8 = v7 <= 600.0 || [(BLSAttribute *)self checkEntitlementSource:entitlementsCopy forSingleEntitlement:0x28339CE90 error:error];

  return v8;
}

@end