@interface OSTransactionStore
+ (id)globalStore;
+ (void)holdKeepAliveTransaction:(id)transaction whilePerformingBlock:(id)block;
+ (void)releaseKeepAliveTransaction:(id)transaction;
+ (void)takeKeepAliveTransaction:(id)transaction;
- (NSCountedSet)activeTransactions;
- (OSTransactionStore)initWithHoldTime:(double)time;
- (unint64_t)transactionCount;
- (void)dealloc;
- (void)holdKeepAliveTransaction:(id)transaction whilePerformingBlock:(id)block;
- (void)releaseKeepAliveTransaction:(id)transaction;
- (void)takeKeepAliveTransaction:(id)transaction;
@end

@implementation OSTransactionStore

+ (id)globalStore
{
  if (qword_1003D4440 != -1)
  {
    sub_1002CF604();
  }

  v3 = qword_1003D4438;

  return v3;
}

- (OSTransactionStore)initWithHoldTime:(double)time
{
  v14.receiver = self;
  v14.super_class = OSTransactionStore;
  v4 = [(OSTransactionStore *)&v14 init];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.AppStoreFoundation.OSTransactionStore", v5);
    dispatchQueue = v4->_dispatchQueue;
    v4->_dispatchQueue = v6;

    v4->_holdTime = (time * 1000000000.0);
    v8 = objc_alloc_init(NSCountedSet);
    transactionCount = v4->_transactionCount;
    v4->_transactionCount = v8;

    v10 = objc_alloc_init(NSMutableDictionary);
    transactionStore = v4->_transactionStore;
    v4->_transactionStore = v10;

    v13 = v4;
    v13->_handle = os_state_add_handler();
  }

  return v4;
}

- (void)dealloc
{
  os_state_remove_handler();
  v3.receiver = self;
  v3.super_class = OSTransactionStore;
  [(OSTransactionStore *)&v3 dealloc];
}

- (NSCountedSet)activeTransactions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10005701C;
  v10 = sub_10005702C;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100057034;
  v5[3] = &unk_10037F7D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (unint64_t)transactionCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10005712C;
  v5[3] = &unk_10037F7D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

+ (void)holdKeepAliveTransaction:(id)transaction whilePerformingBlock:(id)block
{
  blockCopy = block;
  transactionCopy = transaction;
  globalStore = [self globalStore];
  [globalStore holdKeepAliveTransaction:transactionCopy whilePerformingBlock:blockCopy];
}

+ (void)takeKeepAliveTransaction:(id)transaction
{
  transactionCopy = transaction;
  globalStore = [self globalStore];
  [globalStore takeKeepAliveTransaction:transactionCopy];
}

+ (void)releaseKeepAliveTransaction:(id)transaction
{
  transactionCopy = transaction;
  globalStore = [self globalStore];
  [globalStore releaseKeepAliveTransaction:transactionCopy];
}

- (void)holdKeepAliveTransaction:(id)transaction whilePerformingBlock:(id)block
{
  transactionCopy = transaction;
  blockCopy = block;
  [(OSTransactionStore *)self takeKeepAliveTransaction:transactionCopy];
  v7 = objc_autoreleasePoolPush();
  blockCopy[2](blockCopy);
  objc_autoreleasePoolPop(v7);
  [(OSTransactionStore *)self releaseKeepAliveTransaction:transactionCopy];
}

- (void)takeKeepAliveTransaction:(id)transaction
{
  transactionCopy = transaction;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000573CC;
  v7[3] = &unk_10037F868;
  v7[4] = self;
  v8 = transactionCopy;
  v6 = transactionCopy;
  dispatch_sync(dispatchQueue, v7);
}

- (void)releaseKeepAliveTransaction:(id)transaction
{
  transactionCopy = transaction;
  v5 = dispatch_time(0, self->_holdTime);
  dispatchQueue = self->_dispatchQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000575EC;
  v8[3] = &unk_10037F868;
  v8[4] = self;
  v9 = transactionCopy;
  v7 = transactionCopy;
  dispatch_after(v5, dispatchQueue, v8);
}

@end