@interface StopVideoPlaybackV1
@end

@implementation StopVideoPlaybackV1

uint64_t __sharedUI_StopVideoPlaybackV1_block_invoke(uint64_t a1)
{
  result = AirPlayReceiverUI_StopVideo(**(a1 + 40), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end