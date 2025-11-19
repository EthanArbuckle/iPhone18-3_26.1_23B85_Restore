@interface StartSession
@end

@implementation StartSession

uint64_t __sharedUI_StartSession_block_invoke(uint64_t a1)
{
  result = AirPlayReceiverUI_StartAudio(**(a1 + 40), *(a1 + 48), *(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end