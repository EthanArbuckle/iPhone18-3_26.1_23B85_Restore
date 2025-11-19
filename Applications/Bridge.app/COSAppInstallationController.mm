@interface COSAppInstallationController
+ (void)getAppAvailabilityStatusWithBundleID:(id)a3 andStoreIdentifier:(id)a4 andCompletion:(id)a5;
- (BOOL)installInProgress;
- (BOOL)isInstalled;
- (COSAppInstallationController)initWithBundleID:(id)a3 andStoreIdentifier:(id)a4;
- (id)amsPromise;
- (id)versionString;
- (unint64_t)isAvailableInStore;
- (void)_checkAwaitingInstallsWithUserInfo:(id)a3;
- (void)_performAvailabilityCheck:(id)a3;
- (void)_setAvailableInStoreResult:(BOOL)a3;
- (void)applicationsDidInstall:(id)a3;
- (void)checkAvailabilityInStore:(id)a3;
- (void)dealloc;
- (void)notifyObserversThatAppAvailabilityChanged:(BOOL)a3;
- (void)notifyObserversThatControllerDidBeginInstallationWithSuccess:(BOOL)a3;
- (void)notifyObserversThatControllerDidCompleteInstallationWithSuccess:(BOOL)a3;
- (void)notifyObserversThatControllerDidInitiatePurchase;
- (void)startInstalling;
@end

@implementation COSAppInstallationController

- (COSAppInstallationController)initWithBundleID:(id)a3 andStoreIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = COSAppInstallationController;
  v8 = [(COSAppInstallationController *)&v15 init];
  if (v8)
  {
    v9 = +[NSHashTable weakObjectsHashTable];
    observers = v8->_observers;
    v8->_observers = v9;

    objc_storeStrong(&v8->_storeIdentifier, a4);
    v11 = [v6 copy];
    bundleIndentifier = v8->_bundleIndentifier;
    v8->_bundleIndentifier = v11;

    v8->_needsAvailableInStoreCheck = 1;
    v13 = +[LSApplicationWorkspace defaultWorkspace];
    [v13 addObserver:v8];
  }

  return v8;
}

- (void)dealloc
{
  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  CFNotificationCenterRemoveObserver(DistributedCenter, self, @"com.apple.LaunchServices.applicationRegistered", 0);
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = COSAppInstallationController;
  [(COSAppInstallationController *)&v5 dealloc];
}

- (BOOL)isInstalled
{
  if (self->_bundleIndentifier)
  {
    v3 = [LSApplicationRecord alloc];
    bundleIndentifier = self->_bundleIndentifier;
    v12 = 0;
    v5 = [v3 initWithBundleIdentifier:bundleIndentifier allowPlaceholder:0 error:&v12];
    v6 = v12;
    if (v6)
    {
      v7 = pbb_bridge_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = self->_bundleIndentifier;
        *buf = 138412546;
        v14 = v8;
        v15 = 2112;
        v16 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "error while retrieving application record %@ with error %@", buf, 0x16u);
      }
    }

    v9 = [v5 applicationState];
    v10 = [v9 isInstalled];
  }

  else
  {
    v6 = pbb_bridge_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "isInstalled requires a bundleID", buf, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)installInProgress
{
  if (self->_bundleIndentifier)
  {
    v2 = [LSApplicationProxy applicationProxyForIdentifier:?];
    v3 = +[LSApplicationWorkspace defaultWorkspace];
    v4 = [v3 installProgressForApplication:v2 withPhase:1];

    if (v4)
    {
      v5 = [v2 appState];
      if ([v5 isInstalled])
      {
        v6 = 0;
      }

      else
      {
        v8 = [v2 appState];
        v6 = [v8 isValid];
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v7 = pbb_bridge_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "install progress requires a bundleID", v10, 2u);
    }

    return 0;
  }

  return v6;
}

- (id)versionString
{
  if (self->_bundleIndentifier)
  {
    v3 = [LSApplicationRecord alloc];
    bundleIndentifier = self->_bundleIndentifier;
    v11 = 0;
    v5 = [v3 initWithBundleIdentifier:bundleIndentifier allowPlaceholder:0 error:&v11];
    v6 = v11;
    if (v6)
    {
      v7 = pbb_bridge_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = self->_bundleIndentifier;
        *buf = 138412546;
        v13 = v8;
        v14 = 2112;
        v15 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "error while retrieving application record %@ with error %@", buf, 0x16u);
      }
    }

    v9 = [v5 shortVersionString];
  }

  else
  {
    v6 = pbb_bridge_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "versionString requires a bundleID", buf, 2u);
    }

    v9 = 0;
  }

  return v9;
}

- (void)_checkAwaitingInstallsWithUserInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"bundleIDs"];
  v6 = [v4 objectForKeyedSubscript:@"isPlaceholder"];
  v7 = v6;
  if (v6 && ([v6 BOOLValue] & 1) == 0)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      while (2)
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          if ([*(*(&v14 + 1) + 8 * v12) isEqualToString:{self->_bundleIndentifier, v14}])
          {

            DistributedCenter = CFNotificationCenterGetDistributedCenter();
            CFNotificationCenterRemoveObserver(DistributedCenter, self, @"com.apple.LaunchServices.applicationRegistered", 0);
            [(COSAppInstallationController *)self notifyObserversThatControllerDidCompleteInstallationWithSuccess:1];
            goto LABEL_13;
          }

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_13:
}

- (void)startInstalling
{
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    storeIdentifier = self->_storeIdentifier;
    *buf = 138412290;
    v14 = storeIdentifier;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting install for StoreID: %@", buf, 0xCu);
  }

  if (self->_storeIdentifier)
  {
    DistributedCenter = CFNotificationCenterGetDistributedCenter();
    CFNotificationCenterAddObserver(DistributedCenter, self, sub_1000843FC, @"com.apple.LaunchServices.applicationRegistered", 0, 1026);
    v6 = [NSString stringWithFormat:@"%@", self->_storeIdentifier];
    v7 = [(COSAppInstallationController *)self amsPromise];
    objc_initWeak(buf, self);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100084408;
    v9[3] = &unk_10026A038;
    objc_copyWeak(&v12, buf);
    v10 = @"com.nike.nikeplus-gps";
    v8 = v6;
    v11 = v8;
    [v7 addFinishBlock:v9];

    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }
}

- (void)_setAvailableInStoreResult:(BOOL)a3
{
  availableInStoreResult = self->_availableInStoreResult;
  self->_availableInStoreResult = a3;
  if (availableInStoreResult != a3 || self->_needsAvailableInStoreCheck)
  {
    [(COSAppInstallationController *)self notifyObserversThatAppAvailabilityChanged:?];
  }

  self->_needsAvailableInStoreCheck = 0;
}

- (void)_performAvailabilityCheck:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_storeIdentifier)
  {
    v6 = [(COSAppInstallationController *)self amsPromise];
    objc_initWeak(&location, self);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100084D40;
    v7[3] = &unk_10026A060;
    objc_copyWeak(&v9, &location);
    v8 = v5;
    [v6 addFinishBlock:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }
}

- (id)amsPromise
{
  v3 = +[AMSMediaTask bagSubProfile];
  v4 = +[AMSMediaTask bagSubProfileVersion];
  v5 = [AMSBag bagForProfile:v3 profileVersion:v4];

  v6 = [[AMSMediaTask alloc] initWithType:0 clientIdentifier:@"com.apple.Bridge" clientVersion:@"1" bag:v5];
  v7 = [NSString stringWithFormat:@"%@", self->_storeIdentifier];
  v11 = v7;
  v8 = [NSArray arrayWithObjects:&v11 count:1];
  [v6 setItemIdentifiers:v8];

  v9 = [v6 perform];

  return v9;
}

- (unint64_t)isAvailableInStore
{
  [(COSAppInstallationController *)self checkAvailabilityInStore:&stru_10026A080];
  if (self->_needsAvailableInStoreCheck)
  {
    return 0;
  }

  if (self->_availableInStoreResult)
  {
    return 1;
  }

  return 2;
}

- (void)checkAvailabilityInStore:(id)a3
{
  if (self->_needsAvailableInStoreCheck)
  {
    [(COSAppInstallationController *)self _performAvailabilityCheck:a3];
  }

  else
  {
    (*(a3 + 2))(a3, self->_availableInStoreResult);
  }
}

+ (void)getAppAvailabilityStatusWithBundleID:(id)a3 andStoreIdentifier:(id)a4 andCompletion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[COSAppInstallationController alloc] initWithBundleID:v9 andStoreIdentifier:v8];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100085264;
  v12[3] = &unk_100269B08;
  v13 = v7;
  v11 = v7;
  [(COSAppInstallationController *)v10 _performAvailabilityCheck:v12];
}

- (void)notifyObserversThatControllerDidCompleteInstallationWithSuccess:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000852F8;
  v3[3] = &unk_1002693C0;
  v3[4] = self;
  v4 = a3;
  dispatch_async(&_dispatch_main_q, v3);
}

- (void)notifyObserversThatControllerDidInitiatePurchase
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008546C;
  block[3] = &unk_1002682F0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)notifyObserversThatControllerDidBeginInstallationWithSuccess:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000855DC;
  v3[3] = &unk_1002693C0;
  v3[4] = self;
  v4 = a3;
  dispatch_async(&_dispatch_main_q, v3);
}

- (void)notifyObserversThatAppAvailabilityChanged:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100085754;
  v3[3] = &unk_1002693C0;
  v3[4] = self;
  v4 = a3;
  dispatch_async(&_dispatch_main_q, v3);
}

- (void)applicationsDidInstall:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * v8) bundleIdentifier];
        v10 = [v9 isEqualToString:self->_bundleIndentifier];

        if (v10)
        {
          [(COSAppInstallationController *)self notifyObserversThatControllerDidCompleteInstallationWithSuccess:1];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

@end