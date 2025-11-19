@interface StopSession
@end

@implementation StopSession

uint64_t __sharedUI_StopSession_block_invoke(uint64_t a1)
{
  result = AirPlayReceiverUI_StopAudio(**(a1 + 40), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end