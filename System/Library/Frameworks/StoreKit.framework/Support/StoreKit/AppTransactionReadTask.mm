@interface AppTransactionReadTask
- (AppTransactionReadTask)initWithClient:(id)client ignoreCache:(BOOL)cache dbStore:(id)store syncQueue:(id)queue;
- (void)_appTransactionSyncWithRevision:(int64_t)revision forceAuth:(BOOL)auth;
- (void)main;
@end

@implementation AppTransactionReadTask

- (AppTransactionReadTask)initWithClient:(id)client ignoreCache:(BOOL)cache dbStore:(id)store syncQueue:(id)queue
{
  clientCopy = client;
  storeCopy = store;
  queueCopy = queue;
  v17.receiver = self;
  v17.super_class = AppTransactionReadTask;
  v14 = [(Task *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong((v14 + 50), client);
    v15[42] = cache;
    objc_storeStrong((v15 + 66), store);
    objc_storeStrong((v15 + 74), queue);
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
    logKey = [(AppTransactionReadTask *)self logKey];
    client = [(AppTransactionReadTask *)self client];
    requestBundleID = [client requestBundleID];
    *buf = 138543618;
    v14 = logKey;
    v15 = 2114;
    v16 = requestBundleID;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting app transaction for %{public}@", buf, 0x16u);
  }

  client2 = [(AppTransactionReadTask *)self client];
  v9 = [client2 bag];
  v10 = +[_TtC9storekitd6BagKey appTransactionRevision];
  v11 = [v9 integerForKey:v10];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100018A48;
  v12[3] = &unk_100380388;
  v12[4] = self;
  [v11 valueWithCompletion:v12];
}

- (void)_appTransactionSyncWithRevision:(int64_t)revision forceAuth:(BOOL)auth
{
  authCopy = auth;
  v7 = [FetchReceiptTask alloc];
  client = [(AppTransactionReadTask *)self client];
  v9 = [(FetchReceiptTask *)v7 initWithClient:client];

  dialogContext = [(AppTransactionReadTask *)self dialogContext];
  [(FetchReceiptTask *)v9 setDialogContext:dialogContext];

  [(FetchReceiptTask *)v9 setApiVersion:2];
  [(FetchReceiptTask *)v9 setForceAuth:authCopy];
  objc_initWeak(&location, v9);
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_1000191FC;
  v22 = &unk_1003803D8;
  objc_copyWeak(v24, &location);
  selfCopy = self;
  v24[1] = revision;
  [(FetchReceiptTask *)v9 setCompletionBlock:&v19];
  if (authCopy)
  {
    if (qword_1003D3C80 != -1)
    {
      sub_1002C7F9C();
    }

    v11 = qword_1003D3C60;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(AppTransactionReadTask *)self logKey:v19];
      client2 = [(AppTransactionReadTask *)self client];
      requestBundleID = [client2 requestBundleID];
      *buf = 138543618;
      v27 = v12;
      v28 = 2114;
      v29 = requestBundleID;
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
      client3 = [(AppTransactionReadTask *)self client];
      requestBundleID2 = [client3 requestBundleID];
      *buf = 138543618;
      v27 = v15;
      v28 = 2114;
      v29 = requestBundleID2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requesting app transaction for %{public}@", buf, 0x16u);
    }
  }

  syncQueue = [(AppTransactionReadTask *)self syncQueue];
  [syncQueue addOperation:v9];

  objc_destroyWeak(v24);
  objc_destroyWeak(&location);
}

@end