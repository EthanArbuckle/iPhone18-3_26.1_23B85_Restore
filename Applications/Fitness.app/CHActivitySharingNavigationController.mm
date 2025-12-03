@interface CHActivitySharingNavigationController
- (BOOL)_activitySharingIsSetup;
- (BOOL)_cachedPhoneCloudKitAccountStatusIsActive;
- (BOOL)_cachedWatchCloudKitAccountAssumedToExist;
- (BOOL)_cachedWatchCloudKitAccountStatusIsActive;
- (BOOL)_cloudKitAccountsAreActive;
- (BOOL)_fitnessModeRequiresWatchSetup;
- (BOOL)_isSetupViewControllerVisible;
- (CHActivitySharingNavigationController)initWithFriendListManager:(id)manager friendManager:(id)friendManager achievementsDataProvider:(id)provider workoutsDataProvider:(id)dataProvider workoutFormattingManager:(id)formattingManager formattingManager:(id)a8 badgeImageFactory:(id)factory healthStore:(id)self0 fitnessAppContext:(id)self1;
- (void)_applicationDidBecomeActive:(id)active;
- (void)_getAndHandlePhoneCloudKitAccountStatus;
- (void)_getAndHandleWatchCloudKitAccountStatus;
- (void)_handleWatchStatusAndCloudKitAccountStatusChange;
- (void)_hideSetupControllerAnimated:(BOOL)animated;
- (void)_setActivitySharingIsSetup:(BOOL)setup;
- (void)_showSetupControllerInPhase:(int64_t)phase animated:(BOOL)animated;
- (void)_updateActivitySharingWatchPairingStatus;
- (void)dealloc;
- (void)friendsSetupViewController:(id)controller didCompletePhase:(int64_t)phase;
- (void)friendsSetupViewControllerDidCompleteSetup:(id)setup;
- (void)handleActivitySharingURL:(id)l;
- (void)scrollToTop;
- (void)setPhoneCloudKitAccountIsActive:(BOOL)active;
- (void)setWatchCloudKitAccountAssumedToExist:(BOOL)exist;
- (void)setWatchCloudKitAccountExists:(BOOL)exists;
@end

@implementation CHActivitySharingNavigationController

- (CHActivitySharingNavigationController)initWithFriendListManager:(id)manager friendManager:(id)friendManager achievementsDataProvider:(id)provider workoutsDataProvider:(id)dataProvider workoutFormattingManager:(id)formattingManager formattingManager:(id)a8 badgeImageFactory:(id)factory healthStore:(id)self0 fitnessAppContext:(id)self1
{
  managerCopy = manager;
  obj = friendManager;
  friendManagerCopy = friendManager;
  providerCopy = provider;
  dataProviderCopy = dataProvider;
  formattingManagerCopy = formattingManager;
  v22 = a8;
  factoryCopy = factory;
  storeCopy = store;
  contextCopy = context;
  v26 = [CHFriendListViewController alloc];
  v54 = providerCopy;
  v55 = factoryCopy;
  v52 = managerCopy;
  v53 = friendManagerCopy;
  v27 = providerCopy;
  v28 = dataProviderCopy;
  v29 = formattingManagerCopy;
  v56 = v22;
  v30 = [(CHFriendListViewController *)v26 initWithFriendListManager:managerCopy andWithFriendManager:friendManagerCopy achievementsDataProvider:v27 workoutsDataProvider:v28 workoutFormattingManager:formattingManagerCopy formattingManager:v22 badgeImageFactory:factoryCopy healthStore:storeCopy fitnessAppContext:contextCopy];
  v62.receiver = self;
  v62.super_class = CHActivitySharingNavigationController;
  v31 = [(CHActivitySharingNavigationController *)&v62 initWithRootViewController:v30];
  v32 = v31;
  if (v31)
  {
    [(CHActivitySharingNavigationController *)v31 setFormattingManager:v56];
    objc_storeStrong(&v32->_friendListViewController, v30);
    objc_storeStrong(&v32->_friendManager, obj);
    objc_storeStrong(&v32->_imageFactory, factory);
    v33 = +[NSBundle mainBundle];
    v34 = [v33 localizedStringForKey:@"SHARING" value:&stru_1008680E8 table:@"Localizable"];
    tabBarItem = [(CHActivitySharingNavigationController *)v32 tabBarItem];
    [tabBarItem setTitle:v34];

    v36 = [UIImage _systemImageNamed:@"activity.sharing"];
    tabBarItem2 = [(CHActivitySharingNavigationController *)v32 tabBarItem];
    [tabBarItem2 setImage:v36];

    navigationBar = [(CHActivitySharingNavigationController *)v32 navigationBar];
    [navigationBar setPrefersLargeTitles:1];

    v39 = [[NSSManager alloc] initWithQueue:&_dispatch_main_q];
    [(CHActivitySharingNavigationController *)v32 setNanoSystemSettingsManager:v39];

    v32->_phoneCloudKitAccountIsActive = [(CHActivitySharingNavigationController *)v32 _cachedPhoneCloudKitAccountStatusIsActive];
    v32->_watchCloudKitAccountExists = [(CHActivitySharingNavigationController *)v32 _cachedWatchCloudKitAccountStatusIsActive];
    v32->_watchCloudKitAccountAssumedToExist = [(CHActivitySharingNavigationController *)v32 _cachedWatchCloudKitAccountAssumedToExist];
    ASLoggingInitialize();
    v40 = ASLogDefault;
    if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v41 = v40;
      phoneCloudKitAccountIsActive = [(CHActivitySharingNavigationController *)v32 phoneCloudKitAccountIsActive];
      watchCloudKitAccountExists = [(CHActivitySharingNavigationController *)v32 watchCloudKitAccountExists];
      watchCloudKitAccountAssumedToExist = [(CHActivitySharingNavigationController *)v32 watchCloudKitAccountAssumedToExist];
      LODWORD(buf) = 67109632;
      HIDWORD(buf) = phoneCloudKitAccountIsActive;
      v64 = 1024;
      v65 = watchCloudKitAccountExists;
      v66 = 1024;
      v67 = watchCloudKitAccountAssumedToExist;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Initializing account status from cache: [phone=%d], [watch=%d], [watch(assumed)=%d]", &buf, 0x14u);
    }

    objc_storeStrong(&v32->_friendListManager, manager);
    _checkPairedWatchIsMinimumVersion = [(CHActivitySharingNavigationController *)v32 _checkPairedWatchIsMinimumVersion];
    v32->_currentlyPairedWatchIsMinimumVersion = _checkPairedWatchIsMinimumVersion;
    if ((_checkPairedWatchIsMinimumVersion & 1) != 0 || ([(ASFriendListSectionManager *)v32->_friendListManager hasAnyFriendsSetup]& 1) != 0 || ![(CHActivitySharingNavigationController *)v32 _fitnessModeRequiresWatchSetup])
    {
      if ([(CHActivitySharingNavigationController *)v32 _activitySharingIsSetup])
      {
        [(CHActivitySharingNavigationController *)v32 _handleWatchStatusAndCloudKitAccountStatusChange];
      }

      else
      {
        [(CHActivitySharingNavigationController *)v32 _showSetupControllerInPhase:0 animated:0];
      }
    }

    else
    {
      [(CHActivitySharingNavigationController *)v32 _showSetupControllerInPhase:2 animated:0];
    }

    objc_initWeak(&buf, v32);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000E6054;
    handler[3] = &unk_10083BD18;
    objc_copyWeak(&v61, &buf);
    notify_register_dispatch(kASCloudKitAccountStatusChangedNotificationKey, &v32->_activitySharingCloudKitAccountStatusChangedToken, &_dispatch_main_q, handler);

    ASLoggingInitialize();
    v46 = ASLogDefault;
    if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Registered a callback for CloudKit address changed notifications", v59, 2u);
    }

    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_1000E60DC;
    v57[3] = &unk_10083BD18;
    objc_copyWeak(&v58, &buf);
    notify_register_dispatch(kASGatewayStatusChangedNotificationKey, &v32->_activitySharingGatewayStatusChangedToken, &_dispatch_main_q, v57);

    ASLoggingInitialize();
    v47 = ASLogDefault;
    if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Registered a callback for Watch pairing changed notifications", v59, 2u);
    }

    [(CHActivitySharingNavigationController *)v32 _getAndHandlePhoneCloudKitAccountStatus];
    [(CHActivitySharingNavigationController *)v32 _getAndHandleWatchCloudKitAccountStatus];
    v48 = +[NSNotificationCenter defaultCenter];
    [v48 addObserver:v32 selector:"_applicationDidBecomeActive:" name:UIApplicationDidBecomeActiveNotification object:0];

    objc_destroyWeak(&v58);
    objc_destroyWeak(&v61);
    objc_destroyWeak(&buf);
  }

  return v32;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  ASLoggingInitialize();
  v4 = ASLogDefault;
  if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Unregistered for CloudKit address changed notifications", buf, 2u);
  }

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = CHActivitySharingNavigationController;
  [(CHActivitySharingNavigationController *)&v6 dealloc];
}

- (void)_applicationDidBecomeActive:(id)active
{
  if (![(CHActivitySharingNavigationController *)self watchCloudKitAccountExists])
  {
    ASLoggingInitialize();
    v8 = ASLogDefault;
    if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      v9 = "Application active, watch cloudKit status is inactive";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
    }

LABEL_12:
    [(CHActivitySharingNavigationController *)self _getAndHandleWatchCloudKitAccountStatus];
    return;
  }

  if (!self->_lastWatchCloudKitAccountFetchTimestamp)
  {
    ASLoggingInitialize();
    v8 = ASLogDefault;
    if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      v9 = "Application active, watch cloudKit status has never been successfully fetched";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v4 = +[NSDate date];
  [v4 timeIntervalSinceDate:self->_lastWatchCloudKitAccountFetchTimestamp];
  v6 = v5;
  ASLoggingInitialize();
  v7 = ASLogDefault;
  if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 134217984;
    *&v10[4] = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Application active, time since last fetch of watch cloudKit status: %f", v10, 0xCu);
  }

  if (v6 > 3600.0)
  {
    goto LABEL_12;
  }
}

- (void)scrollToTop
{
  topViewController = [(CHActivitySharingNavigationController *)self topViewController];
  friendListViewController = self->_friendListViewController;

  if (topViewController == friendListViewController)
  {
    v5 = self->_friendListViewController;

    [(CHFriendListViewController *)v5 scrollToTop];
  }
}

- (void)setPhoneCloudKitAccountIsActive:(BOOL)active
{
  if (self->_phoneCloudKitAccountIsActive != active)
  {
    activeCopy = active;
    self->_phoneCloudKitAccountIsActive = active;
    v5 = +[NSUserDefaults standardUserDefaults];
    [v5 setBool:activeCopy forKey:@"CHActivitySharingPhoneHasCloudKitAccountDefaultsKey"];
  }
}

- (void)setWatchCloudKitAccountExists:(BOOL)exists
{
  if (self->_watchCloudKitAccountExists != exists)
  {
    existsCopy = exists;
    self->_watchCloudKitAccountExists = exists;
    v5 = +[NSUserDefaults standardUserDefaults];
    [v5 setBool:existsCopy forKey:@"CHActivitySharingWatchHasCloudKitAccountDefaultsKey"];
  }
}

- (void)setWatchCloudKitAccountAssumedToExist:(BOOL)exist
{
  if (self->_watchCloudKitAccountAssumedToExist != exist)
  {
    v13[5] = v3;
    v13[6] = v4;
    existCopy = exist;
    self->_watchCloudKitAccountAssumedToExist = exist;
    v7 = +[NSUserDefaults standardUserDefaults];
    [v7 setBool:existCopy forKey:@"CHActivitySharingWatchAssumedToHaveCloudKitAccountDefaultsKey"];

    v8 = +[NSUserDefaults standardUserDefaults];
    v9 = +[NSDate date];
    [v8 setObject:v9 forKey:@"CHActivitySharingWatchAssumedToHaveCloudKitAccountTimesampDefaultsKey"];

    objc_initWeak(v13, self);
    v10 = dispatch_time(0, 600000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000E6668;
    block[3] = &unk_10083AB50;
    objc_copyWeak(&v12, v13);
    block[4] = self;
    dispatch_after(v10, &_dispatch_main_q, block);
    objc_destroyWeak(&v12);
    objc_destroyWeak(v13);
  }
}

- (void)handleActivitySharingURL:(id)l
{
  lCopy = l;
  _isSetupViewControllerVisible = [(CHActivitySharingNavigationController *)self _isSetupViewControllerVisible];
  ASLoggingInitialize();
  v6 = ASLogDefault;
  v7 = os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT);
  if (_isSetupViewControllerVisible)
  {
    if (v7)
    {
      v25 = 138543362;
      v26 = lCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setup controller is visible, not handling URL: %{public}@", &v25, 0xCu);
    }
  }

  else
  {
    if (v7)
    {
      v25 = 138543362;
      v26 = lCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Handling URL: %{public}@", &v25, 0xCu);
    }

    v8 = [(CHActivitySharingNavigationController *)self popToRootViewControllerAnimated:0];
    v9 = ASDateFromActivityAppLaunchURL();
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = +[NSDate date];
    }

    v12 = v11;

    ASLoggingInitialize();
    v13 = ASLogDefault;
    if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138412290;
      v26 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Date is %@", &v25, 0xCu);
    }

    host = [lCopy host];
    v15 = [host isEqualToString:kASActivitySharingHostMe];

    if (v15)
    {
      ASLoggingInitialize();
      v16 = ASLogDefault;
      if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Requesting me detail", &v25, 2u);
      }

      [(CHFriendListViewController *)self->_friendListViewController showDetailForMeOnDate:v12];
    }

    else
    {
      host2 = [lCopy host];
      v18 = [host2 isEqualToString:kASActivitySharingHostFriendDetail];

      if (v18)
      {
        v19 = ASFriendUUIDFromActivityAppLaunchURL();
        ASLoggingInitialize();
        v20 = ASLogDefault;
        if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 138543362;
          v26 = v19;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Requesting friend detail with friendUUID=%{public}@", &v25, 0xCu);
        }

        [(CHFriendListViewController *)self->_friendListViewController showDetailForFriendWithUUID:v19 date:v12];
      }

      else
      {
        host3 = [lCopy host];
        v22 = [host3 isEqualToString:kASActivitySharingHostInbox];

        ASLoggingInitialize();
        v23 = ASLogDefault;
        v24 = os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT);
        if (v22)
        {
          if (v24)
          {
            LOWORD(v25) = 0;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Requesting inbox view", &v25, 2u);
          }

          [(CHFriendListViewController *)self->_friendListViewController showInbox];
        }

        else if (v24)
        {
          LOWORD(v25) = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Showing friend list", &v25, 2u);
        }
      }
    }
  }
}

- (BOOL)_isSetupViewControllerVisible
{
  friendsSetupViewController = [(CHActivitySharingNavigationController *)self friendsSetupViewController];
  if (friendsSetupViewController)
  {
    viewControllers = [(CHActivitySharingNavigationController *)self viewControllers];
    friendsSetupViewController2 = [(CHActivitySharingNavigationController *)self friendsSetupViewController];
    v6 = [viewControllers containsObject:friendsSetupViewController2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_showSetupControllerInPhase:(int64_t)phase animated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(CHActivitySharingNavigationController *)self _isSetupViewControllerVisible])
  {
    friendsSetupViewController = [(CHActivitySharingNavigationController *)self friendsSetupViewController];
    [friendsSetupViewController setPhase:phase animated:0];
  }

  else
  {
    viewControllers = [(CHActivitySharingNavigationController *)self viewControllers];
    [(CHActivitySharingNavigationController *)self setNavigationStackDisplacedBySetupController:viewControllers];

    v8 = objc_alloc_init(CHFriendsSetupViewController);
    [(CHActivitySharingNavigationController *)self setFriendsSetupViewController:v8];

    friendsSetupViewController2 = [(CHActivitySharingNavigationController *)self friendsSetupViewController];
    [friendsSetupViewController2 setDelegate:self];

    friendsSetupViewController3 = [(CHActivitySharingNavigationController *)self friendsSetupViewController];
    [friendsSetupViewController3 setPhase:phase animated:0];

    friendsSetupViewController4 = [(CHActivitySharingNavigationController *)self friendsSetupViewController];
    v14 = friendsSetupViewController4;
    v12 = [NSArray arrayWithObjects:&v14 count:1];
    [(CHActivitySharingNavigationController *)self setViewControllers:v12 animated:animatedCopy];

    [(CHActivitySharingNavigationController *)self setNavigationBarHidden:1 animated:animatedCopy];
  }
}

- (void)_hideSetupControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(CHActivitySharingNavigationController *)self _isSetupViewControllerVisible])
  {
    navigationStackDisplacedBySetupController = [(CHActivitySharingNavigationController *)self navigationStackDisplacedBySetupController];
    [(CHActivitySharingNavigationController *)self setViewControllers:navigationStackDisplacedBySetupController animated:animatedCopy];

    [(CHActivitySharingNavigationController *)self setNavigationBarHidden:0 animated:animatedCopy];
    [(CHActivitySharingNavigationController *)self setNavigationStackDisplacedBySetupController:0];

    [(CHActivitySharingNavigationController *)self setFriendsSetupViewController:0];
  }
}

- (void)friendsSetupViewController:(id)controller didCompletePhase:(int64_t)phase
{
  controllerCopy = controller;
  friendsSetupViewController = [(CHActivitySharingNavigationController *)self friendsSetupViewController];

  if (friendsSetupViewController != controllerCopy)
  {
    return;
  }

  if (phase == 2)
  {
    v10 = +[LSApplicationWorkspace defaultWorkspace];
    v8 = @"bridge:root=GENERAL_LINK&path=SOFTWARE_UPDATE_LINK";
  }

  else
  {
    if (phase != 1)
    {
      if (!phase)
      {

        [(CHActivitySharingNavigationController *)self _setActivitySharingIsSetup:1];
      }

      return;
    }

    if ([(CHActivitySharingNavigationController *)self phoneCloudKitAccountIsActive])
    {
      if ([(CHActivitySharingNavigationController *)self watchCloudKitAccountExists])
      {
        return;
      }

      v10 = +[LSApplicationWorkspace defaultWorkspace];
      v8 = @"bridge:root=GENERAL_LINK&path=LINK_WITH_ICLOUD_LINK";
    }

    else
    {
      v10 = +[LSApplicationWorkspace defaultWorkspace];
      v8 = @"settings-navigation://com.apple.Settings.AppleAccount";
    }
  }

  v9 = [NSURL URLWithString:v8];
  [v10 openSensitiveURL:v9 withOptions:0];
}

- (void)friendsSetupViewControllerDidCompleteSetup:(id)setup
{
  setupCopy = setup;
  friendsSetupViewController = [(CHActivitySharingNavigationController *)self friendsSetupViewController];

  if (friendsSetupViewController == setupCopy)
  {

    [(CHActivitySharingNavigationController *)self _hideSetupControllerAnimated:1];
  }
}

- (BOOL)_activitySharingIsSetup
{
  v2 = [NSUserDefaults alloc];
  v3 = [v2 initWithSuiteName:kASDomain];
  v4 = [v3 BOOLForKey:kASActivitySharingIsSetup];
  ASLoggingInitialize();
  v5 = ASLogDefault;
  if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Checking defaults for fitness friends setup: %{BOOL}d", v7, 8u);
  }

  return v4;
}

- (void)_setActivitySharingIsSetup:(BOOL)setup
{
  setupCopy = setup;
  v4 = [NSUserDefaults alloc];
  v5 = kASDomain;
  v6 = [v4 initWithSuiteName:kASDomain];
  ASLoggingInitialize();
  v7 = ASLogDefault;
  if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109120;
    v12[1] = setupCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting defaults for fitness friends setup: %{BOOL}d", v12, 8u);
  }

  v8 = [NSNumber numberWithBool:setupCopy];
  v9 = kASActivitySharingIsSetup;
  [v6 setObject:v8 forKey:kASActivitySharingIsSetup];

  CFPreferencesAppSynchronize(v5);
  v10 = objc_opt_new();
  v11 = [NSSet setWithObject:v9];
  [v10 synchronizeUserDefaultsDomain:v5 keys:v11];
}

- (void)_getAndHandlePhoneCloudKitAccountStatus
{
  ASLoggingInitialize();
  v3 = ASLogDefault;
  if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Asking for phone account", buf, 2u);
  }

  objc_initWeak(buf, self);
  friendManager = self->_friendManager;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000E72D8;
  v5[3] = &unk_10083BD68;
  objc_copyWeak(&v6, buf);
  v5[4] = self;
  [(CHFriendManager *)friendManager cloudKitAccountStatusWithCompletion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

- (void)_getAndHandleWatchCloudKitAccountStatus
{
  watchCloudKitAccountFetchInProgress = [(CHActivitySharingNavigationController *)self watchCloudKitAccountFetchInProgress];
  ASLoggingInitialize();
  v4 = ASLogDefault;
  v5 = os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT);
  if (watchCloudKitAccountFetchInProgress)
  {
    if (v5)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "NSS fetch already in progress", buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Asking NSS for watch accounts", buf, 2u);
    }

    [(CHActivitySharingNavigationController *)self setWatchCloudKitAccountFetchInProgress:1];
    objc_initWeak(buf, self);
    nanoSystemSettingsManager = [(CHActivitySharingNavigationController *)self nanoSystemSettingsManager];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000E7778;
    v7[3] = &unk_10083A738;
    objc_copyWeak(&v8, buf);
    [nanoSystemSettingsManager getAccountsInfo:v7];

    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }
}

- (BOOL)_fitnessModeRequiresWatchSetup
{
  v2 = +[_HKBehavior sharedBehavior];
  fitnessMode = [v2 fitnessMode];

  return (fitnessMode & 0xFFFFFFFFFFFFFFFELL) != 2;
}

- (void)_handleWatchStatusAndCloudKitAccountStatusChange
{
  viewIfLoaded = [(CHActivitySharingNavigationController *)self viewIfLoaded];
  window = [viewIfLoaded window];

  _cloudKitAccountsAreActive = [(CHActivitySharingNavigationController *)self _cloudKitAccountsAreActive];
  self->_currentlyPairedWatchIsMinimumVersion = [(CHActivitySharingNavigationController *)self _checkPairedWatchIsMinimumVersion];
  ASLoggingInitialize();
  v6 = ASLogDefault;
  if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v17[0] = 67109120;
    v17[1] = window != 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Handling account status change (view currently visible: %d)", v17, 8u);
  }

  if (!self->_currentlyPairedWatchIsMinimumVersion)
  {
    friendListManager = [(CHActivitySharingNavigationController *)self friendListManager];
    if ([friendListManager hasAnyFriendsSetup])
    {
    }

    else
    {
      _fitnessModeRequiresWatchSetup = [(CHActivitySharingNavigationController *)self _fitnessModeRequiresWatchSetup];

      if (_fitnessModeRequiresWatchSetup)
      {
        ASLoggingInitialize();
        v9 = ASLogDefault;
        if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v17[0]) = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Showing upgrade watch page.", v17, 2u);
        }

        v10 = window != 0;
        selfCopy3 = self;
        v12 = 2;
        goto LABEL_24;
      }
    }
  }

  _isSetupViewControllerVisible = [(CHActivitySharingNavigationController *)self _isSetupViewControllerVisible];
  if ((_cloudKitAccountsAreActive & 1) == 0)
  {
    if (_isSetupViewControllerVisible)
    {
LABEL_17:
      if ([(CHActivitySharingNavigationController *)self _activitySharingIsSetup])
      {
        return;
      }

      ASLoggingInitialize();
      v15 = ASLogDefault;
      if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17[0]) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Showing introduction setup page.", v17, 2u);
      }

      selfCopy3 = self;
      v12 = 0;
      v10 = 0;
      goto LABEL_24;
    }

    ASLoggingInitialize();
    v16 = ASLogDefault;
    if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17[0]) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Showing iCloud signin page.", v17, 2u);
    }

    v10 = window != 0;
    selfCopy3 = self;
    v12 = 1;
LABEL_24:
    [(CHActivitySharingNavigationController *)selfCopy3 _showSetupControllerInPhase:v12 animated:v10];
    return;
  }

  if (!_isSetupViewControllerVisible || ![(CHActivitySharingNavigationController *)self _activitySharingIsSetup])
  {
    goto LABEL_17;
  }

  ASLoggingInitialize();
  v14 = ASLogDefault;
  if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17[0]) = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Hiding iCloud signin page.", v17, 2u);
  }

  [(CHActivitySharingNavigationController *)self _hideSetupControllerAnimated:window != 0];
}

- (void)_updateActivitySharingWatchPairingStatus
{
  _checkPairedWatchIsMinimumVersion = [(CHActivitySharingNavigationController *)self _checkPairedWatchIsMinimumVersion];
  if (self->_currentlyPairedWatchIsMinimumVersion != _checkPairedWatchIsMinimumVersion)
  {
    self->_currentlyPairedWatchIsMinimumVersion = _checkPairedWatchIsMinimumVersion;

    [(CHActivitySharingNavigationController *)self _handleWatchStatusAndCloudKitAccountStatusChange];
  }
}

- (BOOL)_cloudKitAccountsAreActive
{
  ASLoggingInitialize();
  v3 = ASLogDefault;
  if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v7[0] = 67109632;
    v7[1] = [(CHActivitySharingNavigationController *)self phoneCloudKitAccountIsActive];
    v8 = 1024;
    watchCloudKitAccountExists = [(CHActivitySharingNavigationController *)self watchCloudKitAccountExists];
    v10 = 1024;
    watchCloudKitAccountAssumedToExist = [(CHActivitySharingNavigationController *)self watchCloudKitAccountAssumedToExist];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Deriving account status from: [phone=%d], [watch=%d], [watch(assumed)=%d]", v7, 0x14u);
  }

  phoneCloudKitAccountIsActive = [(CHActivitySharingNavigationController *)self phoneCloudKitAccountIsActive];
  if (phoneCloudKitAccountIsActive)
  {
    if ([(CHActivitySharingNavigationController *)self watchCloudKitAccountExists]|| [(CHActivitySharingNavigationController *)self watchCloudKitAccountAssumedToExist])
    {
      LOBYTE(phoneCloudKitAccountIsActive) = 1;
    }

    else
    {
      LOBYTE(phoneCloudKitAccountIsActive) = ![(CHActivitySharingNavigationController *)self _fitnessModeRequiresWatchSetup];
    }
  }

  return phoneCloudKitAccountIsActive;
}

- (BOOL)_cachedPhoneCloudKitAccountStatusIsActive
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"CHActivitySharingPhoneHasCloudKitAccountDefaultsKey"];

  return v3;
}

- (BOOL)_cachedWatchCloudKitAccountStatusIsActive
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"CHActivitySharingWatchHasCloudKitAccountDefaultsKey"];

  return v3;
}

- (BOOL)_cachedWatchCloudKitAccountAssumedToExist
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"CHActivitySharingWatchAssumedToHaveCloudKitAccountDefaultsKey"];

  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 objectForKey:@"CHActivitySharingWatchAssumedToHaveCloudKitAccountTimesampDefaultsKey"];

  v6 = +[NSDate date];
  [v6 timeIntervalSinceDate:v5];
  v8 = v7 < 600.0;

  return v8 & v3;
}

@end