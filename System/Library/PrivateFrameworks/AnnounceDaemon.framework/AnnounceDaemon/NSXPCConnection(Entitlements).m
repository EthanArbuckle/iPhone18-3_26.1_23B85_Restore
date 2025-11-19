@interface NSXPCConnection(Entitlements)
- (uint64_t)hasAnnounceEntitlement;
@end

@implementation NSXPCConnection(Entitlements)

- (uint64_t)hasAnnounceEntitlement
{
  v1 = [a1 valueForEntitlement:*MEMORY[0x277CEAC10]];
  v2 = [v1 BOOLValue];

  return v2;
}

@end