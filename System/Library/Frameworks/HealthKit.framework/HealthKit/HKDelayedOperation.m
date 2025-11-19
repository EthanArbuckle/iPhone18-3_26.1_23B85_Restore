@interface HKDelayedOperation
@end

@implementation HKDelayedOperation

void __60___HKDelayedOperation_initWithMode_clock_queue_delay_block___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_executeBlockIfScheduled];
}

void __33___HKDelayedOperation_invalidate__block_invoke(uint64_t a1)
{
  dispatch_source_cancel(*(*(a1 + 32) + 40));
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = 0;
}

@end