@interface WatchSettingsManager
- (WatchSettingsManager)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation WatchSettingsManager

- (WatchSettingsManager)init
{
  v21.receiver = self;
  v21.super_class = WatchSettingsManager;
  v2 = [(WatchSettingsManager *)&v21 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.appstored.WatchSettingsManager.callout", v3);
    calloutQueue = v2->_calloutQueue;
    v2->_calloutQueue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.appstored.WatchSettingsManager.dispatch", v6);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v7;

    v9 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.appstored"];
    domainAccessor = v2->_domainAccessor;
    v2->_domainAccessor = v9;

    v11 = objc_opt_new();
    npsManager = v2->_npsManager;
    v2->_npsManager = v11;

    objc_initWeak(&location, v2);
    v13 = v2->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_144B0;
    handler[3] = &unk_21570;
    objc_copyWeak(&v27, &location);
    notify_register_dispatch("com.apple.appstored.NanoSettingsStateChanged", &v2->_token, v13, handler);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = sub_13F98();
    v15 = [v14 countByEnumeratingWithState:&v22 objects:v29 count:16];
    if (v15)
    {
      v16 = *v23;
      do
      {
        v17 = 0;
        do
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v22 + 1) + 8 * v17);
          v19 = +[NSUserDefaults standardUserDefaults];
          [v19 addObserver:v2 forKeyPath:v18 options:1 context:0];

          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v14 countByEnumeratingWithState:&v22 objects:v29 count:16];
      }

      while (v15);
    }

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  notify_cancel(self->_token);
  v3.receiver = self;
  v3.super_class = WatchSettingsManager;
  [(WatchSettingsManager *)&v3 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  v8 = ASDLogHandleForCategory(14);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543618;
    v14 = objc_opt_class();
    v15 = 2114;
    v16 = pathCopy;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Preference value for %{public}@ changed", &v13, 0x16u);
  }

  if (self)
  {
    v9 = ASDLogHandleForCategory(14);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Synchronizing shared defaults to watch.", &v13, 0xCu);
    }

    v11 = objc_opt_new();
    v12 = sub_13F98();
    [v11 synchronizeUserDefaultsDomain:@"com.apple.appstored" keys:v12];
  }
}

@end