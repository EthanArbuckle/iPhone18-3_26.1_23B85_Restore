@interface NSObject(AppSupportMessagingProxy)
- (CapturedInvocationTrampoline)pep_getInvocation:()AppSupportMessagingProxy;
- (DelayedInvocationTrampoline)pep_afterDelay:()AppSupportMessagingProxy;
- (OperationQueueInvocationTrampoline)pep_onOperationQueue:()AppSupportMessagingProxy priority:;
- (ThreadedInvocationTrampoline)pep_onThread:()AppSupportMessagingProxy immediateForMatchingThread:;
- (uint64_t)pep_onMainThread;
- (uint64_t)pep_onMainThreadIfNecessary;
@end

@implementation NSObject(AppSupportMessagingProxy)

- (uint64_t)pep_onMainThread
{
  mainThread = [MEMORY[0x1E696AF00] mainThread];

  return [self pep_onThread:mainThread];
}

- (uint64_t)pep_onMainThreadIfNecessary
{
  mainThread = [MEMORY[0x1E696AF00] mainThread];

  return [self pep_onThread:mainThread immediateForMatchingThread:1];
}

- (ThreadedInvocationTrampoline)pep_onThread:()AppSupportMessagingProxy immediateForMatchingThread:
{
  v4 = [[ThreadedInvocationTrampoline alloc] initWithTarget:self thread:a3 immediateForMatchingThread:a4];

  return v4;
}

- (DelayedInvocationTrampoline)pep_afterDelay:()AppSupportMessagingProxy
{
  v2 = [[DelayedInvocationTrampoline alloc] initWithTarget:self delay:a2];

  return v2;
}

- (OperationQueueInvocationTrampoline)pep_onOperationQueue:()AppSupportMessagingProxy priority:
{
  v4 = [[OperationQueueInvocationTrampoline alloc] initWithTarget:self operationQueue:a3 priority:a4];

  return v4;
}

- (CapturedInvocationTrampoline)pep_getInvocation:()AppSupportMessagingProxy
{
  v3 = [[CapturedInvocationTrampoline alloc] initWithTarget:self outInvocation:a3];

  return v3;
}

@end