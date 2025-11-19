@interface APSWiFiTransactionPostTransactionReleasedEvent
@end

@implementation APSWiFiTransactionPostTransactionReleasedEvent

uint64_t ___APSWiFiTransactionPostTransactionReleasedEvent_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 24);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end