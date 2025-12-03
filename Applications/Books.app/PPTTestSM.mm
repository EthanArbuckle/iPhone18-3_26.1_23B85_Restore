@interface PPTTestSM
- (PPTTestSM)initWithDelegate:(id)delegate;
- (void)handlerReceived;
- (void)sleep:(int)sleep completion:(id)completion;
- (void)start;
- (void)startTest;
- (void)testFinished;
@end

@implementation PPTTestSM

- (PPTTestSM)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = PPTTestSM;
  v5 = [(PPTTestSM *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v6->_state = 0;
    v6->_sleepSeq = 0;
  }

  return v6;
}

- (void)sleep:(int)sleep completion:(id)completion
{
  completionCopy = completion;
  v7 = self->_sleepSeq + 1;
  self->_sleepSeq = v7;
  state = self->_state;
  v9 = dispatch_time(0, 1000000000 * sleep);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  queue = [WeakRetained queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B9ECC;
  block[3] = &unk_100A05CA8;
  v15 = state;
  v16 = v7;
  block[4] = self;
  v14 = completionCopy;
  v12 = completionCopy;
  dispatch_after(v9, queue, block);
}

- (void)startTest
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  testDelegate = [WeakRetained testDelegate];
  [testDelegate startTest];

  self->_state = 2;
  v5 = objc_loadWeakRetained(&self->_delegate);
  testDelegate2 = [v5 testDelegate];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001B9FDC;
  v7[3] = &unk_100A033C8;
  v7[4] = self;
  -[PPTTestSM sleep:completion:](self, "sleep:completion:", [testDelegate2 testTimeout], v7);
}

- (void)start
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  queue = [WeakRetained queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BA134;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)handlerReceived
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  queue = [WeakRetained queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BA350;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)testFinished
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  queue = [WeakRetained queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BA408;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(queue, block);
}

@end