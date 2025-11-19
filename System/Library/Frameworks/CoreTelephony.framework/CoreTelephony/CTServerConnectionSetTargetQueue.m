@interface CTServerConnectionSetTargetQueue
@end

@implementation CTServerConnectionSetTargetQueue

void ___CTServerConnectionSetTargetQueue_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_retain(*(a1 + 48));
  }

  v4 = *(v3 + 8);
  *(v3 + 8) = v2;
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(a1 + 32);

  _RegisterForLocalDaemonReadyNotificationIfNeeded(v5);
}

@end