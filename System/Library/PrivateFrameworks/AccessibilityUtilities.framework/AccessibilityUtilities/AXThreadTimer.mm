@interface AXThreadTimer
- (AXThreadTimer)initWithThread:(id)thread;
- (BOOL)isActive;
- (BOOL)isCancelled;
- (BOOL)isPending;
- (void)_runAfterDelay:(id)delay;
- (void)afterDelay:(double)delay processBlock:(id)block cancelBlock:(id)cancelBlock;
- (void)cancel;
@end

@implementation AXThreadTimer

- (AXThreadTimer)initWithThread:(id)thread
{
  threadCopy = thread;
  v10.receiver = self;
  v10.super_class = AXThreadTimer;
  v6 = [(AXThreadTimer *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_thread, thread);
    v8 = v7;
  }

  return v7;
}

- (void)_runAfterDelay:(id)delay
{
  delayCopy = delay;
  task = [(AXThreadTimer *)self task];
  [delayCopy floatValue];
  v6 = v5;

  [task performSelector:&sel_run withObject:0 afterDelay:v6];
}

- (void)afterDelay:(double)delay processBlock:(id)block cancelBlock:(id)cancelBlock
{
  cancelBlockCopy = cancelBlock;
  blockCopy = block;
  task = [(AXThreadTimer *)self task];
  if ([task isFinished])
  {
  }

  else
  {
    automaticallyCancelPendingBlockUponSchedulingNewBlock = [(AXThreadTimer *)self automaticallyCancelPendingBlockUponSchedulingNewBlock];

    if (automaticallyCancelPendingBlockUponSchedulingNewBlock)
    {
      [(AXThreadTimer *)self cancel];
    }
  }

  v11 = [cancelBlockCopy copy];
  cancelBlock = self->_cancelBlock;
  self->_cancelBlock = v11;

  v13 = objc_alloc_init(AXThreadTimerTask);
  [(AXThreadTimerTask *)v13 setBlock:blockCopy];

  [(AXThreadTimer *)self setTask:v13];
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  thread = self->_thread;

  if (currentThread == thread)
  {
    task2 = [(AXThreadTimer *)self task];
    [task2 performSelector:&sel_run withObject:0 afterDelay:delay];
  }

  else
  {
    v16 = self->_thread;
    task2 = [MEMORY[0x1E696AD98] numberWithDouble:delay];
    [(AXThreadTimer *)self performSelector:sel__runAfterDelay_ onThread:v16 withObject:task2 waitUntilDone:0];
  }
}

- (void)cancel
{
  task = [(AXThreadTimer *)self task];
  isFinished = [task isFinished];

  if ((isFinished & 1) == 0)
  {
    task2 = [(AXThreadTimer *)self task];
    [task2 setCancel:1];

    cancelBlock = self->_cancelBlock;
    if (cancelBlock)
    {
      cancelBlock[2]();
    }

    [(AXThreadTimer *)self setTask:0];
    v7 = self->_cancelBlock;
    self->_cancelBlock = 0;
  }
}

- (BOOL)isCancelled
{
  task = [(AXThreadTimer *)self task];
  isCancelled = [task isCancelled];

  return isCancelled;
}

- (BOOL)isPending
{
  task = [(AXThreadTimer *)self task];
  if (task)
  {
    task2 = [(AXThreadTimer *)self task];
    v5 = [task2 isFinished] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)isActive
{
  task = [(AXThreadTimer *)self task];
  isActive = [task isActive];

  return isActive;
}

@end