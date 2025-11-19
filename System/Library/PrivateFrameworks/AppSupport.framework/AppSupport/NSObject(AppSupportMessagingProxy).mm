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
  v2 = [MEMORY[0x1E696AF00] mainThread];

  return [a1 pep_onThread:v2];
}

- (uint64_t)pep_onMainThreadIfNecessary
{
  v2 = [MEMORY[0x1E696AF00] mainThread];

  return [a1 pep_onThread:v2 immediateForMatchingThread:1];
}

- (ThreadedInvocationTrampoline)pep_onThread:()AppSupportMessagingProxy immediateForMatchingThread:
{
  v4 = [[ThreadedInvocationTrampoline alloc] initWithTarget:a1 thread:a3 immediateForMatchingThread:a4];

  return v4;
}

- (DelayedInvocationTrampoline)pep_afterDelay:()AppSupportMessagingProxy
{
  v2 = [[DelayedInvocationTrampoline alloc] initWithTarget:a1 delay:a2];

  return v2;
}

- (OperationQueueInvocationTrampoline)pep_onOperationQueue:()AppSupportMessagingProxy priority:
{
  v4 = [[OperationQueueInvocationTrampoline alloc] initWithTarget:a1 operationQueue:a3 priority:a4];

  return v4;
}

- (CapturedInvocationTrampoline)pep_getInvocation:()AppSupportMessagingProxy
{
  v3 = [[CapturedInvocationTrampoline alloc] initWithTarget:a1 outInvocation:a3];

  return v3;
}

@end