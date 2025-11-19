@interface ANLogHandleHomeManager
@end

@implementation ANLogHandleHomeManager

uint64_t __ANLogHandleHomeManager_HomeContext_block_invoke()
{
  ANLogHandleHomeManager_HomeContext_logger = os_log_create("com.apple.intercom", "HomeManager_HomeContext");

  return MEMORY[0x2821F96F8]();
}

@end