@interface NSXPCConnection(Entitlements)
- (uint64_t)hasAnnounceEntitlement;
@end

@implementation NSXPCConnection(Entitlements)

- (uint64_t)hasAnnounceEntitlement
{
  v1 = [self valueForEntitlement:*MEMORY[0x277CEAC10]];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

@end