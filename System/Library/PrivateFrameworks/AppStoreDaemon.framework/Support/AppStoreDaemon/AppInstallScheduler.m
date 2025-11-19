@interface AppInstallScheduler
- (AppInstallScheduler)init;
- (void)_didDeleteEntityNotification:(id)a3;
- (void)_handleDeviceStateDidChangeNotification:(id)a3;
- (void)_handlePolicyNotificationWithMonitorStateDidChangeNotification:(id)a3;
@end

@implementation AppInstallScheduler

- (AppInstallScheduler)init
{
  v3 = sub_1003C27BC();
  v4 = v3;
  if (self && (v22.receiver = self, v22.super_class = AppInstallScheduler, (v5 = [(AppInstallScheduler *)&v22 init]) != 0))
  {
    v6 = v5;
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.appstored.AppInstallScheduler", v7);
    dispatchQueue = v6->_dispatchQueue;
    v6->_dispatchQueue = v8;

    objc_storeStrong(&v6->_databaseStore, v3);
    v10 = objc_alloc_init(TaskQueue);
    bootstrapQueue = v6->_bootstrapQueue;
    v6->_bootstrapQueue = v10;

    v12 = v6->_bootstrapQueue;
    if (v12)
    {
      [(NSOperationQueue *)v12->_operationQueue setName:@"com.apple.appstored.TaskQueue.bootstrapQueue"];
    }

    v13 = objc_alloc_init(NSMutableDictionary);
    retryCount = v6->_retryCount;
    v6->_retryCount = v13;

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:v6 selector:"_didDeleteEntityNotification:" name:@"SQLiteDidDeleteEntityNotification" object:0];

    v16 = v6->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002C1000;
    block[3] = &unk_10051AF98;
    v17 = v6;
    v21 = v17;
    dispatch_async(v16, block);

    v17->_maxActiveCount = 3;
    v18 = MGGetProductType();
    if (v18 == 1872992317 || v18 == 936054259)
    {
      v17->_maxActiveCount = 2;
    }
  }

  else
  {

    return 0;
  }

  return v17;
}

- (void)_handleDeviceStateDidChangeNotification:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002C276C;
  block[3] = &unk_10051AF98;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_didDeleteEntityNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"SQLiteUserInfoKeyPersistentID"];

  if (v5)
  {
    dispatchQueue = self->_dispatchQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1002C2B30;
    v7[3] = &unk_10051B570;
    v7[4] = self;
    v8 = v5;
    dispatch_async(dispatchQueue, v7);
  }
}

- (void)_handlePolicyNotificationWithMonitorStateDidChangeNotification:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002C2BD8;
  v7[3] = &unk_10051B570;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

@end