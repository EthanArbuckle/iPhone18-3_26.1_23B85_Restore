@interface ACDNotificationSignpostSystem
@end

@implementation ACDNotificationSignpostSystem

uint64_t ___ACDNotificationSignpostSystem_block_invoke()
{
  _ACDNotificationSignpostSystem_log = os_log_create("com.apple.accounts", "notification.signpost");

  return MEMORY[0x2821F96F8]();
}

@end