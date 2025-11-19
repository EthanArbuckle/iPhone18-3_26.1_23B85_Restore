@interface StartVideoPlaybackV1
@end

@implementation StartVideoPlaybackV1

uint64_t __sharedUI_StartVideoPlaybackV1_block_invoke(uint64_t a1)
{
  result = AirPlayReceiverUI_StartVideo(**(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end