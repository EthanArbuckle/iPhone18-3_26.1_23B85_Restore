@interface ANLogHandleHome
@end

@implementation ANLogHandleHome

uint64_t __ANLogHandleHome_Announce_block_invoke()
{
  ANLogHandleHome_Announce_logger = os_log_create("com.apple.intercom", "Home_Announce");

  return MEMORY[0x2821F96F8]();
}

@end