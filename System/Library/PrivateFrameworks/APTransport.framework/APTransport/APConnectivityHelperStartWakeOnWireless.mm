@interface APConnectivityHelperStartWakeOnWireless
@end

@implementation APConnectivityHelperStartWakeOnWireless

uint64_t ___APConnectivityHelperStartWakeOnWireless_block_invoke(void *a1)
{
  result = [*(a1[7] + 48) beginActivity:a1[4] error:*(a1[6] + 8) + 40];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

@end