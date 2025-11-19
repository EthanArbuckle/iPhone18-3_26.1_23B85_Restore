@interface FRArticleNotificationPersonalizer
- (FRArticleNotificationPersonalizer)init;
- (FRArticleNotificationPersonalizer)initWithAppConfigurationManager:(id)a3 feedPersonalizerFactory:(id)a4;
- (void)sortItems:(id)a3 completion:(id)a4;
@end

@implementation FRArticleNotificationPersonalizer

- (FRArticleNotificationPersonalizer)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[FRArticleNotificationPersonalizer init]";
    v8 = 2080;
    v9 = "FRArticleNotificationPersonalizer.m";
    v10 = 1024;
    v11 = 45;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[FRArticleNotificationPersonalizer init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (FRArticleNotificationPersonalizer)initWithAppConfigurationManager:(id)a3 feedPersonalizerFactory:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10001A444();
    if (v8)
    {
      goto LABEL_6;
    }
  }

  else if (v8)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10001A524();
  }

LABEL_6:
  v12.receiver = self;
  v12.super_class = FRArticleNotificationPersonalizer;
  v9 = [(FRArticleNotificationPersonalizer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_appConfigurationManager, a3);
    objc_storeStrong(&v10->_feedPersonalizerFactory, a4);
  }

  return v10;
}

- (void)sortItems:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [FCFileCoordinatedTodayPrivateDataTransactionQueue alloc];
  v9 = FCURLForTodayPrivateDataTransactionQueue();
  v10 = [v8 initWithFileURL:v9];

  v11 = [FCFileCoordinatedTodayDropbox alloc];
  v12 = FCURLForTodayDropbox();
  v13 = [v11 initWithFileURL:v12];

  v14 = [[FCReadablePrivateDataStorage alloc] initWithDropbox:v13 transactionQueue:v10];
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = sub_100002870;
  v34[4] = sub_100002880;
  v35 = 0;
  v15 = dispatch_group_create();
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = sub_100002870;
  v32[4] = sub_100002880;
  v33 = 0;
  v16 = [(FRArticleNotificationPersonalizer *)self appConfigurationManager];
  dispatch_group_enter(v15);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100002888;
  v29[3] = &unk_100024BC8;
  v31 = v32;
  v17 = v15;
  v30 = v17;
  [v16 fetchAppConfigurationIfNeededWithCompletion:v29];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000028D8;
  v28[3] = &unk_100024BF0;
  v28[4] = v34;
  [v14 readPrivateDataSyncWithAccessor:v28];
  v18 = FCDispatchQueueForQualityOfService();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002920;
  block[3] = &unk_100024C40;
  block[4] = self;
  v23 = v16;
  v26 = v34;
  v27 = v32;
  v24 = v6;
  v25 = v7;
  v19 = v7;
  v20 = v6;
  v21 = v16;
  dispatch_group_notify(v17, v18, block);

  _Block_object_dispose(v32, 8);
  _Block_object_dispose(v34, 8);
}

@end