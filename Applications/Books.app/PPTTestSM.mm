@interface PPTTestSM
- (PPTTestSM)initWithDelegate:(id)a3;
- (void)handlerReceived;
- (void)sleep:(int)a3 completion:(id)a4;
- (void)start;
- (void)startTest;
- (void)testFinished;
@end

@implementation PPTTestSM

- (PPTTestSM)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PPTTestSM;
  v5 = [(PPTTestSM *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v6->_state = 0;
    v6->_sleepSeq = 0;
  }

  return v6;
}

- (void)sleep:(int)a3 completion:(id)a4
{
  v6 = a4;
  v7 = self->_sleepSeq + 1;
  self->_sleepSeq = v7;
  state = self->_state;
  v9 = dispatch_time(0, 1000000000 * a3);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = [WeakRetained queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B9ECC;
  block[3] = &unk_100A05CA8;
  v15 = state;
  v16 = v7;
  block[4] = self;
  v14 = v6;
  v12 = v6;
  dispatch_after(v9, v11, block);
}

- (void)startTest
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained testDelegate];
  [v4 startTest];

  self->_state = 2;
  v5 = objc_loadWeakRetained(&self->_delegate);
  v6 = [v5 testDelegate];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001B9FDC;
  v7[3] = &unk_100A033C8;
  v7[4] = self;
  -[PPTTestSM sleep:completion:](self, "sleep:completion:", [v6 testTimeout], v7);
}

- (void)start
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BA134;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)handlerReceived
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BA350;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)testFinished
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BA408;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(v4, block);
}

@end