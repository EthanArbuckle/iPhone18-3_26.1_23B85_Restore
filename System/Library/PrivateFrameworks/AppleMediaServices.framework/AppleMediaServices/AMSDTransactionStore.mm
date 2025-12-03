@interface AMSDTransactionStore
+ (NSCountedSet)transactionsCount;
+ (NSMutableDictionary)transactions;
+ (OS_dispatch_queue)transactionsAccessQueue;
+ (void)releaseKeepAliveTransaction:(id)transaction;
+ (void)shutdown;
+ (void)takeKeepAliveTransaction:(id)transaction;
+ (void)takeKeepAliveTransaction:(id)transaction whilePerformingBlock:(id)block;
+ (void)takeKeepAliveTransaction:(id)transaction withQueue:(id)queue postActionQueue:(id)actionQueue whilePerformingBlockOnQueue:(id)onQueue postAction:(id)action;
+ (void)takeKeepAliveTransaction:(id)transaction withQueue:(id)queue whilePerformingBlock:(id)block;
+ (void)takeKeepAliveTransaction:(id)transaction withQueue:(id)queue whilePerformingSyncBlock:(id)block;
@end

@implementation AMSDTransactionStore

+ (NSMutableDictionary)transactions
{
  transactionsAccessQueue = [self transactionsAccessQueue];
  dispatch_assert_queue_V2(transactionsAccessQueue);

  if (qword_1002E3470 != -1)
  {
    sub_10021B530();
  }

  v3 = qword_1002E3478;

  return v3;
}

+ (OS_dispatch_queue)transactionsAccessQueue
{
  if (qword_1002E3480 != -1)
  {
    sub_10021B544();
  }

  v3 = qword_1002E3488;

  return v3;
}

+ (NSCountedSet)transactionsCount
{
  transactionsAccessQueue = [self transactionsAccessQueue];
  dispatch_assert_queue_V2(transactionsAccessQueue);

  if (qword_1002E3490 != -1)
  {
    sub_10021B558();
  }

  v3 = qword_1002E3498;

  return v3;
}

+ (void)releaseKeepAliveTransaction:(id)transaction
{
  transactionCopy = transaction;
  v5 = AMSLogKey();
  transactionsAccessQueue = [self transactionsAccessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009023C;
  block[3] = &unk_1002B0358;
  selfCopy = self;
  v7 = transactionCopy;
  v18 = v7;
  dispatch_sync(transactionsAccessQueue, block);

  objc_initWeak(&location, self);
  v8 = dispatch_time(0, 2000000000);
  transactionsAccessQueue2 = [self transactionsAccessQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100090290;
  v12[3] = &unk_1002B25F8;
  objc_copyWeak(&v15, &location);
  v13 = v5;
  v14 = v7;
  v10 = v7;
  v11 = v5;
  dispatch_after(v8, transactionsAccessQueue2, v12);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

+ (void)takeKeepAliveTransaction:(id)transaction
{
  transactionCopy = transaction;
  transactionsAccessQueue = [self transactionsAccessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000904C0;
  v7[3] = &unk_1002B0358;
  v8 = transactionCopy;
  selfCopy = self;
  v6 = transactionCopy;
  dispatch_sync(transactionsAccessQueue, v7);
}

+ (void)takeKeepAliveTransaction:(id)transaction whilePerformingBlock:(id)block
{
  transactionCopy = transaction;
  blockCopy = block;
  [self takeKeepAliveTransaction:transactionCopy];
  v7 = objc_autoreleasePoolPush();
  blockCopy[2](blockCopy);
  objc_autoreleasePoolPop(v7);
  [self releaseKeepAliveTransaction:transactionCopy];
}

+ (void)takeKeepAliveTransaction:(id)transaction withQueue:(id)queue whilePerformingBlock:(id)block
{
  transactionCopy = transaction;
  blockCopy = block;
  queueCopy = queue;
  [self takeKeepAliveTransaction:transactionCopy];
  v11 = AMSLogKey();
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000908D8;
  block[3] = &unk_1002B2620;
  objc_copyWeak(&v19, &location);
  v17 = transactionCopy;
  v18 = blockCopy;
  v16 = v11;
  v12 = transactionCopy;
  v13 = blockCopy;
  v14 = v11;
  dispatch_async(queueCopy, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

+ (void)takeKeepAliveTransaction:(id)transaction withQueue:(id)queue postActionQueue:(id)actionQueue whilePerformingBlockOnQueue:(id)onQueue postAction:(id)action
{
  transactionCopy = transaction;
  actionQueueCopy = actionQueue;
  onQueueCopy = onQueue;
  actionCopy = action;
  queueCopy = queue;
  [self takeKeepAliveTransaction:transactionCopy];
  AMSLogKey();
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100090AB0;
  v23 = v22[3] = &unk_1002B2670;
  v24 = actionQueueCopy;
  v27 = actionCopy;
  selfCopy = self;
  v25 = transactionCopy;
  v26 = onQueueCopy;
  v17 = transactionCopy;
  v18 = actionCopy;
  v19 = actionQueueCopy;
  v20 = onQueueCopy;
  v21 = v23;
  dispatch_async(queueCopy, v22);
}

+ (void)takeKeepAliveTransaction:(id)transaction withQueue:(id)queue whilePerformingSyncBlock:(id)block
{
  blockCopy = block;
  queueCopy = queue;
  transactionCopy = transaction;
  [self takeKeepAliveTransaction:transactionCopy];
  AMSLogKey();
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100090D00;
  v17 = v16 = &unk_1002B05B8;
  v18 = blockCopy;
  v11 = blockCopy;
  v12 = v17;
  dispatch_sync(queueCopy, &v13);

  [self releaseKeepAliveTransaction:{transactionCopy, v13, v14, v15, v16}];
}

+ (void)shutdown
{
  v3 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Shutting down, new transactions will be discarded", &v6, 0xCu);
  }

  transactionsAccessQueue = [self transactionsAccessQueue];
  dispatch_async(transactionsAccessQueue, &stru_1002B2690);
}

@end