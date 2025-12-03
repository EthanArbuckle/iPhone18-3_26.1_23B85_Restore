@interface ATCountSessionTask
- (ATCountSessionTask)initWithMaximumCount:(unint64_t)count;
- (void)start;
@end

@implementation ATCountSessionTask

- (void)start
{
  v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
  timer = self->_timer;
  self->_timer = v3;

  v5 = self->_timer;
  v6 = dispatch_time(0, 1000000000);
  dispatch_source_set_timer(v5, v6, 0x3B9ACA00uLL, 0);
  v7 = self->_timer;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __27__ATCountSessionTask_start__block_invoke;
  handler[3] = &unk_2784E94D0;
  handler[4] = self;
  dispatch_source_set_event_handler(v7, handler);
  dispatch_resume(self->_timer);
}

void __27__ATCountSessionTask_start__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCompletedItemCount:{objc_msgSend(*(a1 + 32), "completedItemCount") + 1}];
  v2 = [*(a1 + 32) completedItemCount];
  if (v2 == [*(a1 + 32) totalItemCount])
  {
    [*(a1 + 32) setFinished:1];
    v3 = *(*(a1 + 32) + 168);

    dispatch_suspend(v3);
  }
}

- (ATCountSessionTask)initWithMaximumCount:(unint64_t)count
{
  v7.receiver = self;
  v7.super_class = ATCountSessionTask;
  v4 = [(ATSessionTask *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(ATSessionTask *)v4 setTotalItemCount:count];
  }

  return v5;
}

@end