@interface ACDEntitlementLogSystem
@end

@implementation ACDEntitlementLogSystem

uint64_t ___ACDEntitlementLogSystem_block_invoke()
{
  _ACDEntitlementLogSystem_log = os_log_create("com.apple.accounts", "entitlement");

  return MEMORY[0x2821F96F8]();
}

@end