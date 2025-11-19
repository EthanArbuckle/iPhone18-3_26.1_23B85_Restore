@interface AEConcreteProcessInfoPrimitives
- (BOOL)hasEntitlement:(id)a3;
- (BOOL)isBeingTested;
- (double)systemUptime;
@end

@implementation AEConcreteProcessInfoPrimitives

- (double)systemUptime
{
  v2 = [MEMORY[0x277CCAC38] processInfo];
  [v2 systemUptime];
  v4 = v3;

  return v4;
}

- (BOOL)hasEntitlement:(id)a3
{
  v3 = MEMORY[0x277CCAC38];
  v4 = a3;
  v5 = [v3 processInfo];
  v6 = [v5 ae_hasEntitlement:v4 withValue:MEMORY[0x277CBEC38]];

  return v6;
}

- (BOOL)isBeingTested
{
  v2 = [MEMORY[0x277CCAC38] processInfo];
  v3 = [v2 ae_isBeingTested];

  return v3;
}

@end