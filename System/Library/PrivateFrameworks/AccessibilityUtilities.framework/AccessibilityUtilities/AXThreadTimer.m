@interface AXThreadTimer
- (AXThreadTimer)initWithThread:(id)a3;
- (BOOL)isActive;
- (BOOL)isCancelled;
- (BOOL)isPending;
- (void)_runAfterDelay:(id)a3;
- (void)afterDelay:(double)a3 processBlock:(id)a4 cancelBlock:(id)a5;
- (void)cancel;
@end

@implementation AXThreadTimer

- (AXThreadTimer)initWithThread:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = AXThreadTimer;
  v6 = [(AXThreadTimer *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_thread, a3);
    v8 = v7;
  }

  return v7;
}

- (void)_runAfterDelay:(id)a3
{
  v4 = a3;
  v7 = [(AXThreadTimer *)self task];
  [v4 floatValue];
  v6 = v5;

  [v7 performSelector:&sel_run withObject:0 afterDelay:v6];
}

- (void)afterDelay:(double)a3 processBlock:(id)a4 cancelBlock:(id)a5
{
  v18 = a5;
  v8 = a4;
  v9 = [(AXThreadTimer *)self task];
  if ([v9 isFinished])
  {
  }

  else
  {
    v10 = [(AXThreadTimer *)self automaticallyCancelPendingBlockUponSchedulingNewBlock];

    if (v10)
    {
      [(AXThreadTimer *)self cancel];
    }
  }

  v11 = [v18 copy];
  cancelBlock = self->_cancelBlock;
  self->_cancelBlock = v11;

  v13 = objc_alloc_init(AXThreadTimerTask);
  [(AXThreadTimerTask *)v13 setBlock:v8];

  [(AXThreadTimer *)self setTask:v13];
  v14 = [MEMORY[0x1E696AF00] currentThread];
  thread = self->_thread;

  if (v14 == thread)
  {
    v17 = [(AXThreadTimer *)self task];
    [v17 performSelector:&sel_run withObject:0 afterDelay:a3];
  }

  else
  {
    v16 = self->_thread;
    v17 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    [(AXThreadTimer *)self performSelector:sel__runAfterDelay_ onThread:v16 withObject:v17 waitUntilDone:0];
  }
}

- (void)cancel
{
  v3 = [(AXThreadTimer *)self task];
  v4 = [v3 isFinished];

  if ((v4 & 1) == 0)
  {
    v5 = [(AXThreadTimer *)self task];
    [v5 setCancel:1];

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
  v2 = [(AXThreadTimer *)self task];
  v3 = [v2 isCancelled];

  return v3;
}

- (BOOL)isPending
{
  v3 = [(AXThreadTimer *)self task];
  if (v3)
  {
    v4 = [(AXThreadTimer *)self task];
    v5 = [v4 isFinished] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)isActive
{
  v2 = [(AXThreadTimer *)self task];
  v3 = [v2 isActive];

  return v3;
}

@end