@interface FRFlintEmbedConfigurationManager
- (FRFlintEmbedConfigurationManager)initWithConfigurationManager:(id)manager resourceManager:(id)resourceManager;
- (id)embedForType:(id)type;
- (id)operationForConfigurationManager:(id)manager resourceManager:(id)resourceManager;
- (void)fetchEmbedConfigurationWithCompletion:(id)completion;
- (void)loadEmbedDataWithCompletion:(id)completion;
@end

@implementation FRFlintEmbedConfigurationManager

- (FRFlintEmbedConfigurationManager)initWithConfigurationManager:(id)manager resourceManager:(id)resourceManager
{
  managerCopy = manager;
  resourceManagerCopy = resourceManager;
  v16.receiver = self;
  v16.super_class = FRFlintEmbedConfigurationManager;
  v9 = [(FRFlintEmbedConfigurationManager *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_appConfigurationManager, manager);
    objc_storeStrong(&v10->_resourceManager, resourceManager);
    v11 = [[NFUnfairLock alloc] initWithOptions:1];
    lock = v10->_lock;
    v10->_lock = v11;

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100050FEC;
    v14[3] = &unk_1000C18D0;
    v15 = v10;
    [FCTaskScheduler scheduleLowPriorityBlock:v14];
  }

  return v10;
}

- (void)fetchEmbedConfigurationWithCompletion:(id)completion
{
  completionCopy = completion;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_100009C08;
  v31 = sub_100009F58;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100009C08;
  v25 = sub_100009F58;
  v26 = 0;
  lock = [(FRFlintEmbedConfigurationManager *)self lock];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000513D0;
  v20[3] = &unk_1000C5660;
  v20[4] = self;
  v20[5] = &v27;
  v20[6] = &v21;
  [lock performWithLockSync:v20];

  if (v28[5])
  {
    completionCopy[2](completionCopy);
  }

  else
  {
    if (!v22[5])
    {
      appConfigurationManager = [(FRFlintEmbedConfigurationManager *)self appConfigurationManager];
      resourceManager = [(FRFlintEmbedConfigurationManager *)self resourceManager];
      v8 = [(FRFlintEmbedConfigurationManager *)self operationForConfigurationManager:appConfigurationManager resourceManager:resourceManager];
      v9 = v22[5];
      v22[5] = v8;

      v10 = FCDefaultLog;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        operation = [(FRFlintEmbedConfigurationManager *)self operation];
        shortOperationDescription = [operation shortOperationDescription];
        *buf = 134218242;
        selfCopy = self;
        v35 = 2114;
        v36 = shortOperationDescription;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "embed configuration manager=%p will fetch embed configuration with operation %{public}@", buf, 0x16u);
      }

      v13 = +[NSOperationQueue fc_sharedConcurrentQueue];
      [v13 addOperation:v22[5]];

      lock2 = [(FRFlintEmbedConfigurationManager *)self lock];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10005143C;
      v19[3] = &unk_1000C5598;
      v19[4] = self;
      v19[5] = &v21;
      [lock2 performWithLockSync:v19];
    }

    objc_initWeak(buf, self);
    v15 = v22[5];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10005144C;
    v16[3] = &unk_1000C5688;
    objc_copyWeak(&v18, buf);
    v17 = completionCopy;
    [v15 addCompletionHandler:v16];

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }

  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);
}

- (id)embedForType:(id)type
{
  typeCopy = type;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100009C08;
  v16 = sub_100009F58;
  v17 = 0;
  lock = [(FRFlintEmbedConfigurationManager *)self lock];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100051604;
  v9[3] = &unk_1000C5060;
  v11 = &v12;
  v9[4] = self;
  v6 = typeCopy;
  v10 = v6;
  [lock performWithLockSync:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)loadEmbedDataWithCompletion:(id)completion
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100051704;
  v5[3] = &unk_1000C56B0;
  completionCopy = completion;
  v4 = completionCopy;
  [(FRFlintEmbedConfigurationManager *)self fetchEmbedConfigurationWithCompletion:v5];
}

- (id)operationForConfigurationManager:(id)manager resourceManager:(id)resourceManager
{
  managerCopy = manager;
  resourceManagerCopy = resourceManager;
  v8 = [[FREmbedConfigurationOperation alloc] initWithAppConfigManager:managerCopy andResourceManager:resourceManagerCopy];
  [(FREmbedConfigurationOperation *)v8 setRelativePriority:1];
  [(FREmbedConfigurationOperation *)v8 setQualityOfService:25];
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100051840;
  v10[3] = &unk_1000C56D8;
  objc_copyWeak(&v11, &location);
  [(FREmbedConfigurationOperation *)v8 setEmbedFetchCompletionBlock:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v8;
}

@end