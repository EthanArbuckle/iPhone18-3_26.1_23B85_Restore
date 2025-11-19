@interface APConnectivityHelperStartWiFiPowerListener
@end

@implementation APConnectivityHelperStartWiFiPowerListener

uint64_t ___APConnectivityHelperStartWiFiPowerListener_block_invoke(void *a1)
{
  result = [*(a1[6] + 48) startMonitoringEventType:1 error:*(a1[5] + 8) + 40];
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

@end