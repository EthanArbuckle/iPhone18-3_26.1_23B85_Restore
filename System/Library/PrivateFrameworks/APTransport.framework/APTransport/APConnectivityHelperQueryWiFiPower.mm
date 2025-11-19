@interface APConnectivityHelperQueryWiFiPower
@end

@implementation APConnectivityHelperQueryWiFiPower

uint64_t ___APConnectivityHelperQueryWiFiPower_block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 40) + 48) powerOn];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end