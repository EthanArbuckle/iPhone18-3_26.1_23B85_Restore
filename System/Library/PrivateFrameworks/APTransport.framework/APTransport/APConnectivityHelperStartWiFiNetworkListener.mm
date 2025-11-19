@interface APConnectivityHelperStartWiFiNetworkListener
@end

@implementation APConnectivityHelperStartWiFiNetworkListener

uint64_t ___APConnectivityHelperStartWiFiNetworkListener_block_invoke(void *a1)
{
  result = [*(a1[6] + 48) startMonitoringEventType:6 error:*(a1[5] + 8) + 40];
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

@end