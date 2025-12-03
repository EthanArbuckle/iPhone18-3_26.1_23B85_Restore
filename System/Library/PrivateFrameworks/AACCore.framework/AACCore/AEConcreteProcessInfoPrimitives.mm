@interface AEConcreteProcessInfoPrimitives
- (BOOL)hasEntitlement:(id)entitlement;
- (BOOL)isBeingTested;
- (double)systemUptime;
@end

@implementation AEConcreteProcessInfoPrimitives

- (double)systemUptime
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  [processInfo systemUptime];
  v4 = v3;

  return v4;
}

- (BOOL)hasEntitlement:(id)entitlement
{
  v3 = MEMORY[0x277CCAC38];
  entitlementCopy = entitlement;
  processInfo = [v3 processInfo];
  v6 = [processInfo ae_hasEntitlement:entitlementCopy withValue:MEMORY[0x277CBEC38]];

  return v6;
}

- (BOOL)isBeingTested
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  ae_isBeingTested = [processInfo ae_isBeingTested];

  return ae_isBeingTested;
}

@end