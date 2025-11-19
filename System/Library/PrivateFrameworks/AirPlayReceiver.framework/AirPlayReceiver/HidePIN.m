@interface HidePIN
@end

@implementation HidePIN

uint64_t __sharedUI_HidePIN_block_invoke(uint64_t a1)
{
  result = AirPlayReceiverUI_EnsurePINHidden(**(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end