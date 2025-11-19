@interface ShowMessage
@end

@implementation ShowMessage

uint64_t __sharedUI_ShowMessage_block_invoke(uint64_t a1)
{
  result = AirPlayReceiverUI_UpdateStatus(**(a1 + 40), *(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end