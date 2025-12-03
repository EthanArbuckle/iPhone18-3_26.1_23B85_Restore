@interface COSAppInstallationController
+ (void)getAppAvailabilityStatusWithBundleID:(id)d andStoreIdentifier:(id)identifier andCompletion:(id)completion;
- (BOOL)installInProgress;
- (BOOL)isInstalled;
- (COSAppInstallationController)initWithBundleID:(id)d andStoreIdentifier:(id)identifier;
- (id)amsPromise;
- (id)versionString;
- (unint64_t)isAvailableInStore;
- (void)_checkAwaitingInstallsWithUserInfo:(id)info;
- (void)_performAvailabilityCheck:(id)check;
- (void)_setAvailableInStoreResult:(BOOL)result;
- (void)applicationsDidInstall:(id)install;
- (void)checkAvailabilityInStore:(id)store;
- (void)dealloc;
- (void)notifyObserversThatAppAvailabilityChanged:(BOOL)changed;
- (void)notifyObserversThatControllerDidBeginInstallationWithSuccess:(BOOL)success;
- (void)notifyObserversThatControllerDidCompleteInstallationWithSuccess:(BOOL)success;
- (void)notifyObserversThatControllerDidInitiatePurchase;
- (void)startInstalling;
@end

@implementation COSAppInstallationController

- (COSAppInstallationController)initWithBundleID:(id)d andStoreIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = COSAppInstallationController;
  v8 = [(COSAppInstallationController *)&v15 init];
  if (v8)
  {
    v9 = +[NSHashTable weakObjectsHashTable];
    observers = v8->_observers;
    v8->_observers = v9;

    objc_storeStrong(&v8->_storeIdentifier, identifier);
    v11 = [dCopy copy];
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

    applicationState = [v5 applicationState];
    isInstalled = [applicationState isInstalled];
  }

  else
  {
    v6 = pbb_bridge_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "isInstalled requires a bundleID", buf, 2u);
    }

    isInstalled = 0;
  }

  return isInstalled;
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
      appState = [v2 appState];
      if ([appState isInstalled])
      {
        isValid = 0;
      }

      else
      {
        appState2 = [v2 appState];
        isValid = [appState2 isValid];
      }
    }

    else
    {
      isValid = 0;
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

  return isValid;
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

    shortVersionString = [v5 shortVersionString];
  }

  else
  {
    v6 = pbb_bridge_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "versionString requires a bundleID", buf, 2u);
    }

    shortVersionString = 0;
  }

  return shortVersionString;
}

- (void)_checkAwaitingInstallsWithUserInfo:(id)info
{
  infoCopy = info;
  v5 = [infoCopy objectForKeyedSubscript:@"bundleIDs"];
  v6 = [infoCopy objectForKeyedSubscript:@"isPlaceholder"];
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
    amsPromise = [(COSAppInstallationController *)self amsPromise];
    objc_initWeak(buf, self);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100084408;
    v9[3] = &unk_10026A038;
    objc_copyWeak(&v12, buf);
    v10 = @"com.nike.nikeplus-gps";
    v8 = v6;
    v11 = v8;
    [amsPromise addFinishBlock:v9];

    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }
}

- (void)_setAvailableInStoreResult:(BOOL)result
{
  availableInStoreResult = self->_availableInStoreResult;
  self->_availableInStoreResult = result;
  if (availableInStoreResult != result || self->_needsAvailableInStoreCheck)
  {
    [(COSAppInstallationController *)self notifyObserversThatAppAvailabilityChanged:?];
  }

  self->_needsAvailableInStoreCheck = 0;
}

- (void)_performAvailabilityCheck:(id)check
{
  checkCopy = check;
  v5 = checkCopy;
  if (self->_storeIdentifier)
  {
    amsPromise = [(COSAppInstallationController *)self amsPromise];
    objc_initWeak(&location, self);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100084D40;
    v7[3] = &unk_10026A060;
    objc_copyWeak(&v9, &location);
    v8 = v5;
    [amsPromise addFinishBlock:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(checkCopy + 2))(checkCopy, 0);
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

  perform = [v6 perform];

  return perform;
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

- (void)checkAvailabilityInStore:(id)store
{
  if (self->_needsAvailableInStoreCheck)
  {
    [(COSAppInstallationController *)self _performAvailabilityCheck:store];
  }

  else
  {
    (*(store + 2))(store, self->_availableInStoreResult);
  }
}

+ (void)getAppAvailabilityStatusWithBundleID:(id)d andStoreIdentifier:(id)identifier andCompletion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  dCopy = d;
  v10 = [[COSAppInstallationController alloc] initWithBundleID:dCopy andStoreIdentifier:identifierCopy];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100085264;
  v12[3] = &unk_100269B08;
  v13 = completionCopy;
  v11 = completionCopy;
  [(COSAppInstallationController *)v10 _performAvailabilityCheck:v12];
}

- (void)notifyObserversThatControllerDidCompleteInstallationWithSuccess:(BOOL)success
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000852F8;
  v3[3] = &unk_1002693C0;
  v3[4] = self;
  successCopy = success;
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

- (void)notifyObserversThatControllerDidBeginInstallationWithSuccess:(BOOL)success
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000855DC;
  v3[3] = &unk_1002693C0;
  v3[4] = self;
  successCopy = success;
  dispatch_async(&_dispatch_main_q, v3);
}

- (void)notifyObserversThatAppAvailabilityChanged:(BOOL)changed
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100085754;
  v3[3] = &unk_1002693C0;
  v3[4] = self;
  changedCopy = changed;
  dispatch_async(&_dispatch_main_q, v3);
}

- (void)applicationsDidInstall:(id)install
{
  installCopy = install;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [installCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(installCopy);
        }

        bundleIdentifier = [*(*(&v11 + 1) + 8 * v8) bundleIdentifier];
        v10 = [bundleIdentifier isEqualToString:self->_bundleIndentifier];

        if (v10)
        {
          [(COSAppInstallationController *)self notifyObserversThatControllerDidCompleteInstallationWithSuccess:1];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [installCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

@end