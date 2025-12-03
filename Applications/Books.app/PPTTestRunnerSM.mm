@interface PPTTestRunnerSM
- (BOOL)checkFatalError;
- (PPTTestRunnerSM)initWithDelegate:(id)delegate;
- (void)fromStoppingToIdle;
- (void)runTest;
- (void)sleep:(int)sleep onEnd:(id)end;
- (void)start;
- (void)stop;
- (void)testError;
- (void)testFinished;
@end

@implementation PPTTestRunnerSM

- (PPTTestRunnerSM)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = PPTTestRunnerSM;
  v5 = [(PPTTestRunnerSM *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v6->_state = 0;
    v6->_sleepSeq = 0;
  }

  return v6;
}

- (void)sleep:(int)sleep onEnd:(id)end
{
  endCopy = end;
  if (sleep >= 1)
  {
    state = self->_state;
    v8 = self->_sleepSeq + 1;
    self->_sleepSeq = v8;
    v9 = dispatch_time(0, 1000000000 * sleep);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    queue = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A2B48;
    block[3] = &unk_100A05CA8;
    block[4] = self;
    v14 = state;
    v15 = v8;
    v13 = endCopy;
    dispatch_after(v9, queue, block);
  }
}

- (void)runTest
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  isQueueEmpty = [WeakRetained isQueueEmpty];

  if (isQueueEmpty)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    onSuccess = [v5 onSuccess];

    if (onSuccess)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      onSuccess2 = [v7 onSuccess];
      onSuccess2[2]();
    }

    v9 = objc_loadWeakRetained(&self->_delegate);
    onIdle = [v9 onIdle];

    if (onIdle)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      onIdle2 = [v11 onIdle];
      onIdle2[2]();
    }

    self->_state = 0;
  }

  else
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000A2D3C;
    v18[3] = &unk_100A033C8;
    v18[4] = self;
    v13 = objc_retainBlock(v18);
    v14 = objc_loadWeakRetained(&self->_delegate);
    [v14 prepareTestToStart];

    v15 = objc_loadWeakRetained(&self->_delegate);
    shouldSleepBeforeTest = [v15 shouldSleepBeforeTest];

    if (shouldSleepBeforeTest)
    {
      self->_state = 1;
      v17 = objc_loadWeakRetained(&self->_delegate);
      -[PPTTestRunnerSM sleep:onEnd:](self, "sleep:onEnd:", [v17 timeBeforeTest], v13);
    }

    else
    {
      (v13[2])(v13);
    }
  }
}

- (void)start
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  queue = [WeakRetained queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A2E2C;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)stop
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  queue = [WeakRetained queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A2F7C;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)fromStoppingToIdle
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained removeTestFromQueue];

  v4 = objc_loadWeakRetained(&self->_delegate);
  onStopped = [v4 onStopped];

  if (onStopped)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    onStopped2 = [v6 onStopped];
    onStopped2[2]();
  }

  v8 = objc_loadWeakRetained(&self->_delegate);
  onIdle = [v8 onIdle];

  if (onIdle)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    onIdle2 = [v10 onIdle];
    onIdle2[2]();
  }

  self->_state = 0;
}

- (void)testFinished
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  queue = [WeakRetained queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A31C0;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)checkFatalError
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  isFatalError = [WeakRetained isFatalError];

  if (isFatalError)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    onFatalError = [v5 onFatalError];

    if (onFatalError)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      onFatalError2 = [v7 onFatalError];
      onFatalError2[2]();
    }

    v9 = objc_loadWeakRetained(&self->_delegate);
    onIdle = [v9 onIdle];

    if (onIdle)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      onIdle2 = [v11 onIdle];
      onIdle2[2]();
    }

    self->_state = 0;
  }

  return isFatalError;
}

- (void)testError
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  queue = [WeakRetained queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A34C4;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(queue, block);
}

@end