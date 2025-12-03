@interface ADSessionBarrier
- (ADSessionBarrier)initWithThunk:(id)thunk barrier:(id)barrier;
- (void)barrierResultReturnedWithSuccess:(BOOL)success;
- (void)dealloc;
- (void)siriCore_invokeThunk;
- (void)siriNetwork_invokeThunk;
@end

@implementation ADSessionBarrier

- (void)siriNetwork_invokeThunk
{
  thunkBlock = self->_thunkBlock;
  if (thunkBlock)
  {
    thunkBlock[2](thunkBlock, self);
  }
}

- (void)siriCore_invokeThunk
{
  thunkBlock = self->_thunkBlock;
  if (thunkBlock)
  {
    thunkBlock[2](thunkBlock, self);
  }
}

- (void)barrierResultReturnedWithSuccess:(BOOL)success
{
  barrierQueue = self->_barrierQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1002FB6A8;
  v4[3] = &unk_10051CBD8;
  successCopy = success;
  v4[4] = self;
  dispatch_async(barrierQueue, v4);
}

- (void)dealloc
{
  barrierBlock = self->_barrierBlock;
  if (barrierBlock)
  {
    barrierBlock[2](barrierBlock, 0);
  }

  v4.receiver = self;
  v4.super_class = ADSessionBarrier;
  [(ADSessionBarrier *)&v4 dealloc];
}

- (ADSessionBarrier)initWithThunk:(id)thunk barrier:(id)barrier
{
  thunkCopy = thunk;
  barrierCopy = barrier;
  v17.receiver = self;
  v17.super_class = ADSessionBarrier;
  v8 = [(ADSessionBarrier *)&v17 init];
  if (v8)
  {
    v9 = objc_retainBlock(thunkCopy);
    thunkBlock = v8->_thunkBlock;
    v8->_thunkBlock = v9;

    v11 = objc_retainBlock(barrierCopy);
    barrierBlock = v8->_barrierBlock;
    v8->_barrierBlock = v11;

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create(0, v13);

    barrierQueue = v8->_barrierQueue;
    v8->_barrierQueue = v14;
  }

  return v8;
}

@end