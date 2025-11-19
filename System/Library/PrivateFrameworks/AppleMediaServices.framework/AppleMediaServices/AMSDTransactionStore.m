@interface AMSDTransactionStore
+ (NSCountedSet)transactionsCount;
+ (NSMutableDictionary)transactions;
+ (OS_dispatch_queue)transactionsAccessQueue;
+ (void)releaseKeepAliveTransaction:(id)a3;
+ (void)shutdown;
+ (void)takeKeepAliveTransaction:(id)a3;
+ (void)takeKeepAliveTransaction:(id)a3 whilePerformingBlock:(id)a4;
+ (void)takeKeepAliveTransaction:(id)a3 withQueue:(id)a4 postActionQueue:(id)a5 whilePerformingBlockOnQueue:(id)a6 postAction:(id)a7;
+ (void)takeKeepAliveTransaction:(id)a3 withQueue:(id)a4 whilePerformingBlock:(id)a5;
+ (void)takeKeepAliveTransaction:(id)a3 withQueue:(id)a4 whilePerformingSyncBlock:(id)a5;
@end

@implementation AMSDTransactionStore

+ (NSMutableDictionary)transactions
{
  v2 = [a1 transactionsAccessQueue];
  dispatch_assert_queue_V2(v2);

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
  v2 = [a1 transactionsAccessQueue];
  dispatch_assert_queue_V2(v2);

  if (qword_1002E3490 != -1)
  {
    sub_10021B558();
  }

  v3 = qword_1002E3498;

  return v3;
}

+ (void)releaseKeepAliveTransaction:(id)a3
{
  v4 = a3;
  v5 = AMSLogKey();
  v6 = [a1 transactionsAccessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009023C;
  block[3] = &unk_1002B0358;
  v19 = a1;
  v7 = v4;
  v18 = v7;
  dispatch_sync(v6, block);

  objc_initWeak(&location, a1);
  v8 = dispatch_time(0, 2000000000);
  v9 = [a1 transactionsAccessQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100090290;
  v12[3] = &unk_1002B25F8;
  objc_copyWeak(&v15, &location);
  v13 = v5;
  v14 = v7;
  v10 = v7;
  v11 = v5;
  dispatch_after(v8, v9, v12);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

+ (void)takeKeepAliveTransaction:(id)a3
{
  v4 = a3;
  v5 = [a1 transactionsAccessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000904C0;
  v7[3] = &unk_1002B0358;
  v8 = v4;
  v9 = a1;
  v6 = v4;
  dispatch_sync(v5, v7);
}

+ (void)takeKeepAliveTransaction:(id)a3 whilePerformingBlock:(id)a4
{
  v8 = a3;
  v6 = a4;
  [a1 takeKeepAliveTransaction:v8];
  v7 = objc_autoreleasePoolPush();
  v6[2](v6);
  objc_autoreleasePoolPop(v7);
  [a1 releaseKeepAliveTransaction:v8];
}

+ (void)takeKeepAliveTransaction:(id)a3 withQueue:(id)a4 whilePerformingBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  [a1 takeKeepAliveTransaction:v8];
  v11 = AMSLogKey();
  objc_initWeak(&location, a1);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000908D8;
  block[3] = &unk_1002B2620;
  objc_copyWeak(&v19, &location);
  v17 = v8;
  v18 = v9;
  v16 = v11;
  v12 = v8;
  v13 = v9;
  v14 = v11;
  dispatch_async(v10, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

+ (void)takeKeepAliveTransaction:(id)a3 withQueue:(id)a4 postActionQueue:(id)a5 whilePerformingBlockOnQueue:(id)a6 postAction:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a4;
  [a1 takeKeepAliveTransaction:v12];
  AMSLogKey();
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100090AB0;
  v23 = v22[3] = &unk_1002B2670;
  v24 = v13;
  v27 = v15;
  v28 = a1;
  v25 = v12;
  v26 = v14;
  v17 = v12;
  v18 = v15;
  v19 = v13;
  v20 = v14;
  v21 = v23;
  dispatch_async(v16, v22);
}

+ (void)takeKeepAliveTransaction:(id)a3 withQueue:(id)a4 whilePerformingSyncBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [a1 takeKeepAliveTransaction:v10];
  AMSLogKey();
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100090D00;
  v17 = v16 = &unk_1002B05B8;
  v18 = v8;
  v11 = v8;
  v12 = v17;
  dispatch_sync(v9, &v13);

  [a1 releaseKeepAliveTransaction:{v10, v13, v14, v15, v16}];
}

+ (void)shutdown
{
  v3 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Shutting down, new transactions will be discarded", &v6, 0xCu);
  }

  v5 = [a1 transactionsAccessQueue];
  dispatch_async(v5, &stru_1002B2690);
}

@end