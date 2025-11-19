@interface InstallationService
- (InstallationService)init;
- (id)_init;
- (void)areInitialContentDownloadsEnabledWithReplyHandler:(id)a3;
- (void)dealloc;
- (void)installAppReviewApps:(id)a3 withReplyHandler:(id)a4;
- (void)installEnterpriseApps:(id)a3 onPairedDevice:(id)a4 withReplyHandler:(id)a5;
- (void)installSystemApps:(id)a3 onPairedDevice:(id)a4 withReplyHandler:(id)a5;
- (void)installTestFlightApps:(id)a3 onPairedDevice:(id)a4 withReplyHandler:(id)a5;
- (void)installWatchApps:(id)a3 onPairedDevice:(id)a4 withReplyHandler:(id)a5;
- (void)setInitialContentDownloadsEnabled:(BOOL)a3;
- (void)setShouldPostNotificationOnDefaultBrowserInstallation:(BOOL)a3;
- (void)shouldPostNotificationOnDefaultBrowserInstallationWithReplyHandler:(id)a3;
@end

@implementation InstallationService

- (InstallationService)init
{
  v3 = objc_alloc_init(_InstallationService_XDC);

  return &v3->super;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  if (self->_bagChangeObserverToken)
  {
    v4 = +[BagService appstoredService];
    [v4 removeChangeObserverWithToken:self->_bagChangeObserverToken];
  }

  v5.receiver = self;
  v5.super_class = InstallationService;
  [(InstallationService *)&v5 dealloc];
}

- (id)_init
{
  v11.receiver = self;
  v11.super_class = InstallationService;
  v2 = [(InstallationService *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.appstored.InstallationService", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = objc_alloc_init(TaskQueue);
    taskQueue = v2->_taskQueue;
    v2->_taskQueue = v6;

    v8 = sub_1003C27BC();
    databaseStore = v2->_databaseStore;
    v2->_databaseStore = v8;
  }

  return v2;
}

- (void)areInitialContentDownloadsEnabledWithReplyHandler:(id)a3
{
  v4 = a3;
  v5 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001F666C;
  v9[3] = &unk_10051B2D0;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_sync(dispatchQueue, v9);
}

- (void)setInitialContentDownloadsEnabled:(BOOL)a3
{
  v5 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001F6834;
  v8[3] = &unk_10051C8F8;
  v9 = v5;
  v10 = a3;
  v7 = v5;
  sub_100005D90(dispatchQueue, v8);
}

- (void)shouldPostNotificationOnDefaultBrowserInstallationWithReplyHandler:(id)a3
{
  v4 = a3;
  v5 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001F6A14;
  v9[3] = &unk_10051B2D0;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_sync(dispatchQueue, v9);
}

- (void)setShouldPostNotificationOnDefaultBrowserInstallation:(BOOL)a3
{
  v5 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001F6BDC;
  v8[3] = &unk_10051C8F8;
  v9 = v5;
  v10 = a3;
  v7 = v5;
  sub_100005D90(dispatchQueue, v8);
}

- (void)installAppReviewApps:(id)a3 withReplyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001F6DE8;
  v13[3] = &unk_10051CBD0;
  v14 = v6;
  v15 = v8;
  v16 = self;
  v17 = v7;
  v10 = v7;
  v11 = v8;
  v12 = v6;
  sub_100005D90(dispatchQueue, v13);
}

- (void)installEnterpriseApps:(id)a3 onPairedDevice:(id)a4 withReplyHandler:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = sub_100003B90();
  sub_1001F6FBC(self, v8, v7, v9);
}

- (void)installSystemApps:(id)a3 onPairedDevice:(id)a4 withReplyHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = sub_100003B90();
  v12 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    if (v11)
    {
      Property = objc_getProperty(v11, v13, 32, 1);
    }

    else
    {
      Property = 0;
    }

    v15 = Property;
    v16 = [v11 processInfo];
    v17 = [v16 bundleIdentifier];
    v18 = 138543874;
    v19 = v15;
    v20 = 2114;
    v21 = v17;
    v22 = 2114;
    v23 = v8;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[InstallationService][%{public}@] Received request to install system apps for clientID: %{public}@ paringID: %{public}@ ", &v18, 0x20u);
  }

  sub_1001F721C(self, v10, v9, v11);
}

- (void)installTestFlightApps:(id)a3 onPairedDevice:(id)a4 withReplyHandler:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = sub_100003B90();
  sub_1001F7400(self, v8, 0, v7, v9);
}

- (void)installWatchApps:(id)a3 onPairedDevice:(id)a4 withReplyHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001F75D8;
  v14[3] = &unk_10051CBD0;
  v14[4] = self;
  v15 = v7;
  v16 = v9;
  v17 = v8;
  v11 = v9;
  v12 = v8;
  v13 = v7;
  sub_100005D90(dispatchQueue, v14);
}

@end