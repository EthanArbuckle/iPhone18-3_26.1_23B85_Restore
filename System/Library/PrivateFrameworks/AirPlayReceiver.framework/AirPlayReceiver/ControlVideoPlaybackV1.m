@interface ControlVideoPlaybackV1
@end

@implementation ControlVideoPlaybackV1

uint64_t __sharedUI_ControlVideoPlaybackV1_block_invoke(uint64_t a1)
{
  result = AirPlayReceiverUI_Perform(**(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end