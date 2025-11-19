@interface ANLogHandleAccessory
@end

@implementation ANLogHandleAccessory

uint64_t __ANLogHandleAccessory_Announce_block_invoke()
{
  ANLogHandleAccessory_Announce_logger = os_log_create("com.apple.intercom", "Accessory_Announce");

  return MEMORY[0x2821F96F8]();
}

@end