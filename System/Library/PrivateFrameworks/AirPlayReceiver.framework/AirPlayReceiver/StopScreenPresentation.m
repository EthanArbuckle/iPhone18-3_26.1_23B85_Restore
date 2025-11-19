@interface StopScreenPresentation
@end

@implementation StopScreenPresentation

uint64_t __sharedUI_StopScreenPresentation_block_invoke(uint64_t a1)
{
  result = AirPlayReceiverUI_StopPresentation(**(a1 + 40), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end