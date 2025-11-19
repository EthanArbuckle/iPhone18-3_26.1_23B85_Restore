@interface ANLogHandleMessenger
@end

@implementation ANLogHandleMessenger

uint64_t __ANLogHandleMessenger_Announcement_block_invoke()
{
  ANLogHandleMessenger_Announcement_logger = os_log_create("com.apple.intercom", "Messenger_Announcement");

  return MEMORY[0x2821F96F8]();
}

@end