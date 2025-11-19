@interface ACDNotificationLogSystem
@end

@implementation ACDNotificationLogSystem

uint64_t ___ACDNotificationLogSystem_block_invoke()
{
  _ACDNotificationLogSystem_log = os_log_create("com.apple.accounts", "notification");

  return MEMORY[0x2821F96F8]();
}

@end