@interface ABDelayedBlockExecutor
- (void)_cancelScheduledBlock;
- (void)cancelPendingBlock;
- (void)pause;
- (void)reschedulePendingBlock;
- (void)resume;
- (void)scheduleBlock:(double)a3 delay:;
@end

@implementation ABDelayedBlockExecutor

- (void)_cancelScheduledBlock
{
  scheduledBlock = self->_scheduledBlock;
  if (scheduledBlock)
  {
    dispatch_block_cancel(scheduledBlock);
    v4 = self->_scheduledBlock;
    self->_scheduledBlock = 0;
  }
}

- (void)scheduleBlock:(double)a3 delay:
{
  v12 = a2;
  if (a1)
  {
    [a1 _cancelScheduledBlock];
    v5 = MEMORY[0x23EF01A70](v12);
    v6 = *(a1 + 8);
    *(a1 + 8) = v5;

    v7 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
    v8 = *(a1 + 24);
    *(a1 + 24) = v7;

    if ((*(a1 + 32) & 1) == 0)
    {
      v9 = dispatch_block_create(0, *(a1 + 8));
      v10 = *(a1 + 16);
      *(a1 + 16) = v9;

      v11 = dispatch_time(0, (a3 * 1000000000.0));
      dispatch_after(v11, MEMORY[0x277D85CD0], *(a1 + 16));
    }
  }
}

- (void)reschedulePendingBlock
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      [v2 doubleValue];
      v4 = *(a1 + 8);
      if (v4)
      {

        [(ABDelayedBlockExecutor *)a1 scheduleBlock:v4 delay:v3];
      }
    }
  }
}

- (void)cancelPendingBlock
{
  if (a1)
  {
    [a1 _cancelScheduledBlock];
    v2 = a1[1];
    a1[1] = 0;

    v3 = a1[3];
    a1[3] = 0;
  }
}

- (void)pause
{
  if (a1)
  {
    if ((*(a1 + 32) & 1) == 0)
    {
      *(a1 + 32) = 1;
      return [a1 _cancelScheduledBlock];
    }
  }

  return a1;
}

- (void)resume
{
  if (a1)
  {
    if (*(a1 + 32) == 1)
    {
      *(a1 + 32) = 0;
      [(ABDelayedBlockExecutor *)a1 reschedulePendingBlock];
    }
  }
}

@end