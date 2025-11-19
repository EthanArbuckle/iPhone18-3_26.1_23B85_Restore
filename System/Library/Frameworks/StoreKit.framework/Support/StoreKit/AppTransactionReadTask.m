@interface AppTransactionReadTask
- (AppTransactionReadTask)initWithClient:(id)a3 ignoreCache:(BOOL)a4 dbStore:(id)a5 syncQueue:(id)a6;
- (void)_appTransactionSyncWithRevision:(int64_t)a3 forceAuth:(BOOL)a4;
- (void)main;
@end

@implementation AppTransactionReadTask

- (AppTransactionReadTask)initWithClient:(id)a3 ignoreCache:(BOOL)a4 dbStore:(id)a5 syncQueue:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = AppTransactionReadTask;
  v14 = [(Task *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong((v14 + 50), a3);
    v15[42] = a4;
    objc_storeStrong((v15 + 66), a5);
    objc_storeStrong((v15 + 74), a6);
  }

  return v15;
}

- (void)main
{
  if (qword_1003D3C80 != -1)
  {
    sub_1002C7E8C();
  }

  v3 = qword_1003D3C60;
  if (os_log_type_enabled(qword_1003D3C60, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(AppTransactionReadTask *)self logKey];
    v6 = [(AppTransactionReadTask *)self client];
    v7 = [v6 requestBundleID];
    *buf = 138543618;
    v14 = v5;
    v15 = 2114;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting app transaction for %{public}@", buf, 0x16u);
  }

  v8 = [(AppTransactionReadTask *)self client];
  v9 = [v8 bag];
  v10 = +[_TtC9storekitd6BagKey appTransactionRevision];
  v11 = [v9 integerForKey:v10];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100018A48;
  v12[3] = &unk_100380388;
  v12[4] = self;
  [v11 valueWithCompletion:v12];
}

- (void)_appTransactionSyncWithRevision:(int64_t)a3 forceAuth:(BOOL)a4
{
  v4 = a4;
  v7 = [FetchReceiptTask alloc];
  v8 = [(AppTransactionReadTask *)self client];
  v9 = [(FetchReceiptTask *)v7 initWithClient:v8];

  v10 = [(AppTransactionReadTask *)self dialogContext];
  [(FetchReceiptTask *)v9 setDialogContext:v10];

  [(FetchReceiptTask *)v9 setApiVersion:2];
  [(FetchReceiptTask *)v9 setForceAuth:v4];
  objc_initWeak(&location, v9);
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_1000191FC;
  v22 = &unk_1003803D8;
  objc_copyWeak(v24, &location);
  v23 = self;
  v24[1] = a3;
  [(FetchReceiptTask *)v9 setCompletionBlock:&v19];
  if (v4)
  {
    if (qword_1003D3C80 != -1)
    {
      sub_1002C7F9C();
    }

    v11 = qword_1003D3C60;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(AppTransactionReadTask *)self logKey:v19];
      v13 = [(AppTransactionReadTask *)self client];
      v14 = [v13 requestBundleID];
      *buf = 138543618;
      v27 = v12;
      v28 = 2114;
      v29 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Ignoring cache and requesting app transaction for %{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (qword_1003D3C80 != -1)
    {
      sub_1002C7F9C();
    }

    v11 = qword_1003D3C60;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(AppTransactionReadTask *)self logKey:v19];
      v16 = [(AppTransactionReadTask *)self client];
      v17 = [v16 requestBundleID];
      *buf = 138543618;
      v27 = v15;
      v28 = 2114;
      v29 = v17;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requesting app transaction for %{public}@", buf, 0x16u);
    }
  }

  v18 = [(AppTransactionReadTask *)self syncQueue];
  [v18 addOperation:v9];

  objc_destroyWeak(v24);
  objc_destroyWeak(&location);
}

@end