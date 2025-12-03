@interface ABDelayedBlockExecutor
- (void)_cancelScheduledBlock;
- (void)cancelPendingBlock;
- (void)pause;
- (void)reschedulePendingBlock;
- (void)resume;
- (void)scheduleBlock:(double)block delay:;
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

- (void)scheduleBlock:(double)block delay:
{
  v12 = a2;
  if (self)
  {
    [self _cancelScheduledBlock];
    v5 = MEMORY[0x23EF01A70](v12);
    v6 = *(self + 8);
    *(self + 8) = v5;

    v7 = [MEMORY[0x277CCABB0] numberWithDouble:block];
    v8 = *(self + 24);
    *(self + 24) = v7;

    if ((*(self + 32) & 1) == 0)
    {
      v9 = dispatch_block_create(0, *(self + 8));
      v10 = *(self + 16);
      *(self + 16) = v9;

      v11 = dispatch_time(0, (block * 1000000000.0));
      dispatch_after(v11, MEMORY[0x277D85CD0], *(self + 16));
    }
  }
}

- (void)reschedulePendingBlock
{
  if (self)
  {
    v2 = *(self + 24);
    if (v2)
    {
      [v2 doubleValue];
      v4 = *(self + 8);
      if (v4)
      {

        [(ABDelayedBlockExecutor *)self scheduleBlock:v4 delay:v3];
      }
    }
  }
}

- (void)cancelPendingBlock
{
  if (self)
  {
    [self _cancelScheduledBlock];
    v2 = self[1];
    self[1] = 0;

    v3 = self[3];
    self[3] = 0;
  }
}

- (void)pause
{
  if (self)
  {
    if ((*(self + 32) & 1) == 0)
    {
      *(self + 32) = 1;
      return [self _cancelScheduledBlock];
    }
  }

  return self;
}

- (void)resume
{
  if (self)
  {
    if (*(self + 32) == 1)
    {
      *(self + 32) = 0;
      [(ABDelayedBlockExecutor *)self reschedulePendingBlock];
    }
  }
}

@end