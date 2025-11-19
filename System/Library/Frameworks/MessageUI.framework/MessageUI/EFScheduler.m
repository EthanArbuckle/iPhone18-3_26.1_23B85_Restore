@interface EFScheduler
@end

@implementation EFScheduler

void __62__EFScheduler_MessageUI____mui_nextRunLoopMainThreadScheduler__block_invoke()
{
  v0 = MEMORY[0x1E699B978];
  v1 = MEMORY[0x1E69E96A0];
  v2 = MEMORY[0x1E69E96A0];
  v3 = [v0 dispatchQueueSchedulerWithQueue:v1];
  v4 = __mui_nextRunLoopMainThreadScheduler_scheduler;
  __mui_nextRunLoopMainThreadScheduler_scheduler = v3;

  v5 = MEMORY[0x1E69E96A0];
}

@end