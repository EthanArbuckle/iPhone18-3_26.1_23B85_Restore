@interface CTServerConnectionAddToRunLoop
@end

@implementation CTServerConnectionAddToRunLoop

void ___CTServerConnectionAddToRunLoop_block_invoke(void *a1)
{
  v1 = a1[4];
  *(a1[5] + 16) = a1[6];
  *(a1[5] + 24) = a1[7];
  _RegisterForLocalDaemonReadyNotificationIfNeeded(v1);
}

@end