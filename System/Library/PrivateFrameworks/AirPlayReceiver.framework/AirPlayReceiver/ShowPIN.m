@interface ShowPIN
@end

@implementation ShowPIN

uint64_t __sharedUI_ShowPIN_block_invoke(uint64_t a1)
{
  result = AirPlayReceiverUI_EnsurePINVisible(**(a1 + 40), *(a1 + 48), *(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end