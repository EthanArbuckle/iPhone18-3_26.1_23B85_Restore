@interface PPTTestRunnerSM
- (BOOL)checkFatalError;
- (PPTTestRunnerSM)initWithDelegate:(id)a3;
- (void)fromStoppingToIdle;
- (void)runTest;
- (void)sleep:(int)a3 onEnd:(id)a4;
- (void)start;
- (void)stop;
- (void)testError;
- (void)testFinished;
@end

@implementation PPTTestRunnerSM

- (PPTTestRunnerSM)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PPTTestRunnerSM;
  v5 = [(PPTTestRunnerSM *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v6->_state = 0;
    v6->_sleepSeq = 0;
  }

  return v6;
}

- (void)sleep:(int)a3 onEnd:(id)a4
{
  v6 = a4;
  if (a3 >= 1)
  {
    state = self->_state;
    v8 = self->_sleepSeq + 1;
    self->_sleepSeq = v8;
    v9 = dispatch_time(0, 1000000000 * a3);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A2B48;
    block[3] = &unk_100A05CA8;
    block[4] = self;
    v14 = state;
    v15 = v8;
    v13 = v6;
    dispatch_after(v9, v11, block);
  }
}

- (void)runTest
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained isQueueEmpty];

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = [v5 onSuccess];

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      v8 = [v7 onSuccess];
      v8[2]();
    }

    v9 = objc_loadWeakRetained(&self->_delegate);
    v10 = [v9 onIdle];

    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      v12 = [v11 onIdle];
      v12[2]();
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
    v16 = [v15 shouldSleepBeforeTest];

    if (v16)
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
  v4 = [WeakRetained queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A2E2C;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)stop
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A2F7C;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)fromStoppingToIdle
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained removeTestFromQueue];

  v4 = objc_loadWeakRetained(&self->_delegate);
  v5 = [v4 onStopped];

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = [v6 onStopped];
    v7[2]();
  }

  v8 = objc_loadWeakRetained(&self->_delegate);
  v9 = [v8 onIdle];

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    v11 = [v10 onIdle];
    v11[2]();
  }

  self->_state = 0;
}

- (void)testFinished
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A31C0;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(v4, block);
}

- (BOOL)checkFatalError
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained isFatalError];

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = [v5 onFatalError];

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      v8 = [v7 onFatalError];
      v8[2]();
    }

    v9 = objc_loadWeakRetained(&self->_delegate);
    v10 = [v9 onIdle];

    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      v12 = [v11 onIdle];
      v12[2]();
    }

    self->_state = 0;
  }

  return v4;
}

- (void)testError
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A34C4;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(v4, block);
}

@end