@interface LaunchServicesCatalog
- (LibraryCatalogObserver)observer;
- (id)resultsMatchingPredicate:(id)predicate error:(id *)error;
- (id)resultsWithBundleIDs:(id)ds error:(id *)error;
- (id)resultsWithItemIDs:(id)ds error:(id *)error;
- (void)_handleAppRegisteredNotification:(id)notification;
- (void)_handleAppUnregisteredNotification:(id)notification;
- (void)_handleLaunchAppMessage:(id)message fromDevice:(id)device;
- (void)applicationsDidInstall:(id)install;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)dealloc;
- (void)executeQuery:(id)query excludingBundleIDs:(id)ds completionHandler:(id)handler;
- (void)executeQueryForUpdatesReloadingFromServer:(BOOL)server logKey:(id)key completionHandler:(id)handler;
- (void)launchApp:(id)app extensionType:(int64_t)type withResultHandler:(id)handler;
- (void)launchApp:(id)app onPairedDevice:(id)device withResultHandler:(id)handler;
- (void)launchApp:(id)app withResultHandler:(id)handler;
@end

@implementation LaunchServicesCatalog

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = +[LSApplicationWorkspace defaultWorkspace];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = LaunchServicesCatalog;
  [(LaunchServicesCatalog *)&v5 dealloc];
}

- (void)applicationsDidInstall:(id)install
{
  installCopy = install;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002F0D04;
  v7[3] = &unk_10051B570;
  v8 = installCopy;
  selfCopy = self;
  v6 = installCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)applicationsDidUninstall:(id)uninstall
{
  uninstallCopy = uninstall;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002F1528;
  v7[3] = &unk_10051B570;
  v8 = uninstallCopy;
  selfCopy = self;
  v6 = uninstallCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)executeQuery:(id)query excludingBundleIDs:(id)ds completionHandler:(id)handler
{
  queryCopy = query;
  dsCopy = ds;
  handlerCopy = handler;
  v11 = +[BagService appstoredService];
  dispatchQueue = self->_dispatchQueue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1002F1764;
  v16[3] = &unk_10051C2C8;
  v16[4] = self;
  v17 = queryCopy;
  v18 = dsCopy;
  v19 = handlerCopy;
  v13 = handlerCopy;
  v14 = dsCopy;
  v15 = queryCopy;
  [v11 bagOnQueue:dispatchQueue completionHandler:v16];
}

- (void)executeQueryForUpdatesReloadingFromServer:(BOOL)server logKey:(id)key completionHandler:(id)handler
{
  serverCopy = server;
  handlerCopy = handler;
  keyCopy = key;
  v10 = [_TtC9appstored14UpdatesContext alloc];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1002F1994;
  v16[3] = &unk_100522348;
  v11 = handlerCopy;
  v16[4] = self;
  v17 = v11;
  LOBYTE(v15) = 0;
  v12 = [(UpdatesContext *)v10 initWithReason:0 requestToken:0 logKey:keyCopy callbackHandler:v16 includeMetrics:0 isVPPLookup:0 userInitiated:v15 targetedItemID:0];

  v13 = +[UpdatesManager sharedManager];
  v14 = v13;
  if (serverCopy)
  {
    [v13 reloadUpdatesWithContext:v12];
  }

  else
  {
    [v13 getUpdatesWithContext:v12];
  }
}

- (void)launchApp:(id)app extensionType:(int64_t)type withResultHandler:(id)handler
{
  appCopy = app;
  handlerCopy = handler;
  v10 = +[BagService appstoredService];
  dispatchQueue = self->_dispatchQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1002F1F88;
  v14[3] = &unk_100522370;
  v14[4] = self;
  v15 = appCopy;
  v16 = handlerCopy;
  typeCopy = type;
  v12 = handlerCopy;
  v13 = appCopy;
  [v10 bagOnQueue:dispatchQueue completionHandler:v14];
}

- (void)launchApp:(id)app onPairedDevice:(id)device withResultHandler:(id)handler
{
  appCopy = app;
  handlerCopy = handler;
  deviceCopy = device;
  v11 = sub_1002B0154();
  v12 = sub_1002B08FC(v11, deviceCopy);

  if (v12 && (v12[18] & 1) != 0)
  {
    v13 = objc_alloc_init(XDCLaunchAppRequest);
    bundleID = [appCopy bundleID];
    sub_100266F34(v13, bundleID);

    v15 = sub_1003420C0([XDCMessage alloc], v13, 3);
    v16 = sub_1002EB36C();
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1002F2438;
    v17[3] = &unk_100522398;
    v18 = appCopy;
    v19 = handlerCopy;
    if (v16)
    {
      sub_1002EB834(v16, v15, v12, 1, v17);
    }
  }

  else
  {
    [(LaunchServicesCatalog *)self launchApp:appCopy withResultHandler:handlerCopy];
  }
}

- (void)launchApp:(id)app withResultHandler:(id)handler
{
  appCopy = app;
  handlerCopy = handler;
  v8 = +[BagService appstoredService];
  dispatchQueue = self->_dispatchQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1002F26B4;
  v12[3] = &unk_10051C340;
  v12[4] = self;
  v13 = appCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = appCopy;
  [v8 bagOnQueue:dispatchQueue completionHandler:v12];
}

- (id)resultsMatchingPredicate:(id)predicate error:(id *)error
{
  predicateCopy = predicate;
  v6 = [LibraryLazyResultsEnumerator alloc];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1002F2C58;
  v10[3] = &unk_1005204B8;
  v10[4] = self;
  v11 = predicateCopy;
  v7 = predicateCopy;
  v8 = sub_1002669D8(v6, 1, v10);

  return v8;
}

- (id)resultsWithBundleIDs:(id)ds error:(id *)error
{
  dsCopy = ds;
  v6 = [LibraryLazyResultsEnumerator alloc];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1002F2E64;
  v10[3] = &unk_1005204B8;
  v11 = dsCopy;
  selfCopy = self;
  v7 = dsCopy;
  v8 = sub_1002669D8(v6, 0, v10);

  return v8;
}

- (id)resultsWithItemIDs:(id)ds error:(id *)error
{
  dsCopy = ds;
  v6 = self->_bagForResults;
  v7 = [LibraryLazyResultsEnumerator alloc];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1002F30E0;
  v12[3] = &unk_100522488;
  v13 = dsCopy;
  v14 = v6;
  selfCopy = self;
  v8 = v6;
  v9 = dsCopy;
  v10 = sub_1002669D8(v7, 0, v12);

  return v10;
}

- (void)_handleAppRegisteredNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"isPlaceholder"];
  bOOLValue = [v6 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v8 = +[BagService appstoredService];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1002F35E4;
    v9[3] = &unk_10051C008;
    v9[4] = self;
    v10 = notificationCopy;
    [v8 bagWithCompletionHandler:v9];
  }
}

- (void)_handleAppUnregisteredNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"bundleIDs"];
  v6 = [v5 copy];

  dispatchQueue = self->_dispatchQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1002F39A0;
  v9[3] = &unk_10051B570;
  v10 = v6;
  selfCopy = self;
  v8 = v6;
  dispatch_async(dispatchQueue, v9);
}

- (void)_handleLaunchAppMessage:(id)message fromDevice:(id)device
{
  messageCopy = message;
  deviceCopy = device;
  v8 = sub_1003FA4F0(XPCRequestToken, 0);
  v9 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v25 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}@]  Handling launch app message", buf, 0xCu);
  }

  v11 = [XDCLaunchAppRequest alloc];
  if (messageCopy)
  {
    Property = objc_getProperty(messageCopy, v10, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v13 = Property;
  v14 = [(XDCLaunchAppRequest *)v11 initWithData:v13];

  v15 = [ASDApp alloc];
  if (v14)
  {
    bundleID = v14->_bundleID;
  }

  else
  {
    bundleID = 0;
  }

  v17 = bundleID;
  v18 = [v15 initWithBundleID:v17];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1002F3DE4;
  v21[3] = &unk_1005224D8;
  v22 = messageCopy;
  v23 = deviceCopy;
  v19 = deviceCopy;
  v20 = messageCopy;
  [(LaunchServicesCatalog *)self launchApp:v18 withResultHandler:v21];
}

- (LibraryCatalogObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end