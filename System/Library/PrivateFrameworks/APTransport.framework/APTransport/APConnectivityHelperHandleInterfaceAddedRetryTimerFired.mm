@interface APConnectivityHelperHandleInterfaceAddedRetryTimerFired
@end

@implementation APConnectivityHelperHandleInterfaceAddedRetryTimerFired

uint64_t ___APConnectivityHelperHandleInterfaceAddedRetryTimerFired_block_invoke(void *a1)
{
  [*(a1[6] + 48) stopMonitoringEventType:10];
  result = [*(a1[6] + 48) startMonitoringEventType:10 error:*(a1[5] + 8) + 40];
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

@end