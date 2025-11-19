@interface ANLogHandleAnnouncementDataItem
@end

@implementation ANLogHandleAnnouncementDataItem

uint64_t __ANLogHandleAnnouncementDataItem_AudioProcessing_block_invoke()
{
  ANLogHandleAnnouncementDataItem_AudioProcessing_logger = os_log_create("com.apple.intercom", "AnnouncementDataItem_AudioProcessing");

  return MEMORY[0x2821F96F8]();
}

@end