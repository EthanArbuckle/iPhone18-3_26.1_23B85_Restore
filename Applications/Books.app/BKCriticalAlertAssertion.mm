@interface BKCriticalAlertAssertion
- (BKCriticalAlertAssertion)initWithQueue:(id)queue assertionIsInvalidBlock:(id)block;
- (void)dealloc;
- (void)invalidate;
@end

@implementation BKCriticalAlertAssertion

- (BKCriticalAlertAssertion)initWithQueue:(id)queue assertionIsInvalidBlock:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  v14.receiver = self;
  v14.super_class = BKCriticalAlertAssertion;
  v9 = [(BKCriticalAlertAssertion *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    v11 = [blockCopy copy];
    assertionIsInvalidBlock = v10->_assertionIsInvalidBlock;
    v10->_assertionIsInvalidBlock = v11;
  }

  return v10;
}

- (void)dealloc
{
  [(BKCriticalAlertAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = BKCriticalAlertAssertion;
  [(BKCriticalAlertAssertion *)&v3 dealloc];
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B3C4C;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_sync(queue, block);
}

@end