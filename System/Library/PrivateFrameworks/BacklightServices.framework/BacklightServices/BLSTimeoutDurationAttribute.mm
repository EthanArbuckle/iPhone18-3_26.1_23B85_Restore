@interface BLSTimeoutDurationAttribute
- (BOOL)checkEntitlementSourceForRequiredEntitlements:(id)a3 error:(id *)a4;
@end

@implementation BLSTimeoutDurationAttribute

- (BOOL)checkEntitlementSourceForRequiredEntitlements:(id)a3 error:(id *)a4
{
  v6 = a3;
  [(BLSDurationAttribute *)self duration];
  v8 = v7 <= 600.0 || [(BLSAttribute *)self checkEntitlementSource:v6 forSingleEntitlement:0x28339CE90 error:a4];

  return v8;
}

@end