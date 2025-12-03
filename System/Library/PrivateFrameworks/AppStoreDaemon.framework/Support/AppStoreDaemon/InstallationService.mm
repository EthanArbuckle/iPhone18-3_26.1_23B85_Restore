@interface InstallationService
- (InstallationService)init;
- (id)_init;
- (void)areInitialContentDownloadsEnabledWithReplyHandler:(id)handler;
- (void)dealloc;
- (void)installAppReviewApps:(id)apps withReplyHandler:(id)handler;
- (void)installEnterpriseApps:(id)apps onPairedDevice:(id)device withReplyHandler:(id)handler;
- (void)installSystemApps:(id)apps onPairedDevice:(id)device withReplyHandler:(id)handler;
- (void)installTestFlightApps:(id)apps onPairedDevice:(id)device withReplyHandler:(id)handler;
- (void)installWatchApps:(id)apps onPairedDevice:(id)device withReplyHandler:(id)handler;
- (void)setInitialContentDownloadsEnabled:(BOOL)enabled;
- (void)setShouldPostNotificationOnDefaultBrowserInstallation:(BOOL)installation;
- (void)shouldPostNotificationOnDefaultBrowserInstallationWithReplyHandler:(id)handler;
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

- (void)areInitialContentDownloadsEnabledWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  v5 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001F666C;
  v9[3] = &unk_10051B2D0;
  v10 = v5;
  v11 = handlerCopy;
  v7 = handlerCopy;
  v8 = v5;
  dispatch_sync(dispatchQueue, v9);
}

- (void)setInitialContentDownloadsEnabled:(BOOL)enabled
{
  v5 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001F6834;
  v8[3] = &unk_10051C8F8;
  v9 = v5;
  enabledCopy = enabled;
  v7 = v5;
  sub_100005D90(dispatchQueue, v8);
}

- (void)shouldPostNotificationOnDefaultBrowserInstallationWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  v5 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001F6A14;
  v9[3] = &unk_10051B2D0;
  v10 = v5;
  v11 = handlerCopy;
  v7 = handlerCopy;
  v8 = v5;
  dispatch_sync(dispatchQueue, v9);
}

- (void)setShouldPostNotificationOnDefaultBrowserInstallation:(BOOL)installation
{
  v5 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001F6BDC;
  v8[3] = &unk_10051C8F8;
  v9 = v5;
  installationCopy = installation;
  v7 = v5;
  sub_100005D90(dispatchQueue, v8);
}

- (void)installAppReviewApps:(id)apps withReplyHandler:(id)handler
{
  appsCopy = apps;
  handlerCopy = handler;
  v8 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001F6DE8;
  v13[3] = &unk_10051CBD0;
  v14 = appsCopy;
  v15 = v8;
  selfCopy = self;
  v17 = handlerCopy;
  v10 = handlerCopy;
  v11 = v8;
  v12 = appsCopy;
  sub_100005D90(dispatchQueue, v13);
}

- (void)installEnterpriseApps:(id)apps onPairedDevice:(id)device withReplyHandler:(id)handler
{
  handlerCopy = handler;
  appsCopy = apps;
  v9 = sub_100003B90();
  sub_1001F6FBC(self, appsCopy, handlerCopy, v9);
}

- (void)installSystemApps:(id)apps onPairedDevice:(id)device withReplyHandler:(id)handler
{
  deviceCopy = device;
  handlerCopy = handler;
  appsCopy = apps;
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
    processInfo = [v11 processInfo];
    bundleIdentifier = [processInfo bundleIdentifier];
    v18 = 138543874;
    v19 = v15;
    v20 = 2114;
    v21 = bundleIdentifier;
    v22 = 2114;
    v23 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[InstallationService][%{public}@] Received request to install system apps for clientID: %{public}@ paringID: %{public}@ ", &v18, 0x20u);
  }

  sub_1001F721C(self, appsCopy, handlerCopy, v11);
}

- (void)installTestFlightApps:(id)apps onPairedDevice:(id)device withReplyHandler:(id)handler
{
  handlerCopy = handler;
  appsCopy = apps;
  v9 = sub_100003B90();
  sub_1001F7400(self, appsCopy, 0, handlerCopy, v9);
}

- (void)installWatchApps:(id)apps onPairedDevice:(id)device withReplyHandler:(id)handler
{
  appsCopy = apps;
  handlerCopy = handler;
  v9 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001F75D8;
  v14[3] = &unk_10051CBD0;
  v14[4] = self;
  v15 = appsCopy;
  v16 = v9;
  v17 = handlerCopy;
  v11 = v9;
  v12 = handlerCopy;
  v13 = appsCopy;
  sub_100005D90(dispatchQueue, v14);
}

@end