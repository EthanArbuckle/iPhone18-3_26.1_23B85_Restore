@interface LaunchServicesCatalog
- (LibraryCatalogObserver)observer;
- (id)resultsMatchingPredicate:(id)a3 error:(id *)a4;
- (id)resultsWithBundleIDs:(id)a3 error:(id *)a4;
- (id)resultsWithItemIDs:(id)a3 error:(id *)a4;
- (void)_handleAppRegisteredNotification:(id)a3;
- (void)_handleAppUnregisteredNotification:(id)a3;
- (void)_handleLaunchAppMessage:(id)a3 fromDevice:(id)a4;
- (void)applicationsDidInstall:(id)a3;
- (void)applicationsDidUninstall:(id)a3;
- (void)dealloc;
- (void)executeQuery:(id)a3 excludingBundleIDs:(id)a4 completionHandler:(id)a5;
- (void)executeQueryForUpdatesReloadingFromServer:(BOOL)a3 logKey:(id)a4 completionHandler:(id)a5;
- (void)launchApp:(id)a3 extensionType:(int64_t)a4 withResultHandler:(id)a5;
- (void)launchApp:(id)a3 onPairedDevice:(id)a4 withResultHandler:(id)a5;
- (void)launchApp:(id)a3 withResultHandler:(id)a4;
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

- (void)applicationsDidInstall:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002F0D04;
  v7[3] = &unk_10051B570;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)applicationsDidUninstall:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002F1528;
  v7[3] = &unk_10051B570;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)executeQuery:(id)a3 excludingBundleIDs:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[BagService appstoredService];
  dispatchQueue = self->_dispatchQueue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1002F1764;
  v16[3] = &unk_10051C2C8;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  [v11 bagOnQueue:dispatchQueue completionHandler:v16];
}

- (void)executeQueryForUpdatesReloadingFromServer:(BOOL)a3 logKey:(id)a4 completionHandler:(id)a5
{
  v6 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [_TtC9appstored14UpdatesContext alloc];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1002F1994;
  v16[3] = &unk_100522348;
  v11 = v8;
  v16[4] = self;
  v17 = v11;
  LOBYTE(v15) = 0;
  v12 = [(UpdatesContext *)v10 initWithReason:0 requestToken:0 logKey:v9 callbackHandler:v16 includeMetrics:0 isVPPLookup:0 userInitiated:v15 targetedItemID:0];

  v13 = +[UpdatesManager sharedManager];
  v14 = v13;
  if (v6)
  {
    [v13 reloadUpdatesWithContext:v12];
  }

  else
  {
    [v13 getUpdatesWithContext:v12];
  }
}

- (void)launchApp:(id)a3 extensionType:(int64_t)a4 withResultHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = +[BagService appstoredService];
  dispatchQueue = self->_dispatchQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1002F1F88;
  v14[3] = &unk_100522370;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = a4;
  v12 = v9;
  v13 = v8;
  [v10 bagOnQueue:dispatchQueue completionHandler:v14];
}

- (void)launchApp:(id)a3 onPairedDevice:(id)a4 withResultHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = sub_1002B0154();
  v12 = sub_1002B08FC(v11, v10);

  if (v12 && (v12[18] & 1) != 0)
  {
    v13 = objc_alloc_init(XDCLaunchAppRequest);
    v14 = [v8 bundleID];
    sub_100266F34(v13, v14);

    v15 = sub_1003420C0([XDCMessage alloc], v13, 3);
    v16 = sub_1002EB36C();
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1002F2438;
    v17[3] = &unk_100522398;
    v18 = v8;
    v19 = v9;
    if (v16)
    {
      sub_1002EB834(v16, v15, v12, 1, v17);
    }
  }

  else
  {
    [(LaunchServicesCatalog *)self launchApp:v8 withResultHandler:v9];
  }
}

- (void)launchApp:(id)a3 withResultHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[BagService appstoredService];
  dispatchQueue = self->_dispatchQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1002F26B4;
  v12[3] = &unk_10051C340;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  [v8 bagOnQueue:dispatchQueue completionHandler:v12];
}

- (id)resultsMatchingPredicate:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [LibraryLazyResultsEnumerator alloc];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1002F2C58;
  v10[3] = &unk_1005204B8;
  v10[4] = self;
  v11 = v5;
  v7 = v5;
  v8 = sub_1002669D8(v6, 1, v10);

  return v8;
}

- (id)resultsWithBundleIDs:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [LibraryLazyResultsEnumerator alloc];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1002F2E64;
  v10[3] = &unk_1005204B8;
  v11 = v5;
  v12 = self;
  v7 = v5;
  v8 = sub_1002669D8(v6, 0, v10);

  return v8;
}

- (id)resultsWithItemIDs:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self->_bagForResults;
  v7 = [LibraryLazyResultsEnumerator alloc];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1002F30E0;
  v12[3] = &unk_100522488;
  v13 = v5;
  v14 = v6;
  v15 = self;
  v8 = v6;
  v9 = v5;
  v10 = sub_1002669D8(v7, 0, v12);

  return v10;
}

- (void)_handleAppRegisteredNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"isPlaceholder"];
  v7 = [v6 BOOLValue];

  if ((v7 & 1) == 0)
  {
    v8 = +[BagService appstoredService];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1002F35E4;
    v9[3] = &unk_10051C008;
    v9[4] = self;
    v10 = v4;
    [v8 bagWithCompletionHandler:v9];
  }
}

- (void)_handleAppUnregisteredNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"bundleIDs"];
  v6 = [v5 copy];

  dispatchQueue = self->_dispatchQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1002F39A0;
  v9[3] = &unk_10051B570;
  v10 = v6;
  v11 = self;
  v8 = v6;
  dispatch_async(dispatchQueue, v9);
}

- (void)_handleLaunchAppMessage:(id)a3 fromDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1003FA4F0(XPCRequestToken, 0);
  v9 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v25 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}@]  Handling launch app message", buf, 0xCu);
  }

  v11 = [XDCLaunchAppRequest alloc];
  if (v6)
  {
    Property = objc_getProperty(v6, v10, 16, 1);
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
  v22 = v6;
  v23 = v7;
  v19 = v7;
  v20 = v6;
  [(LaunchServicesCatalog *)self launchApp:v18 withResultHandler:v21];
}

- (LibraryCatalogObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end