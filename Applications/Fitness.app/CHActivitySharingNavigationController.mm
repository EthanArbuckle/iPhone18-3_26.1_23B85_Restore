@interface CHActivitySharingNavigationController
- (BOOL)_activitySharingIsSetup;
- (BOOL)_cachedPhoneCloudKitAccountStatusIsActive;
- (BOOL)_cachedWatchCloudKitAccountAssumedToExist;
- (BOOL)_cachedWatchCloudKitAccountStatusIsActive;
- (BOOL)_cloudKitAccountsAreActive;
- (BOOL)_fitnessModeRequiresWatchSetup;
- (BOOL)_isSetupViewControllerVisible;
- (CHActivitySharingNavigationController)initWithFriendListManager:(id)a3 friendManager:(id)a4 achievementsDataProvider:(id)a5 workoutsDataProvider:(id)a6 workoutFormattingManager:(id)a7 formattingManager:(id)a8 badgeImageFactory:(id)a9 healthStore:(id)a10 fitnessAppContext:(id)a11;
- (void)_applicationDidBecomeActive:(id)a3;
- (void)_getAndHandlePhoneCloudKitAccountStatus;
- (void)_getAndHandleWatchCloudKitAccountStatus;
- (void)_handleWatchStatusAndCloudKitAccountStatusChange;
- (void)_hideSetupControllerAnimated:(BOOL)a3;
- (void)_setActivitySharingIsSetup:(BOOL)a3;
- (void)_showSetupControllerInPhase:(int64_t)a3 animated:(BOOL)a4;
- (void)_updateActivitySharingWatchPairingStatus;
- (void)dealloc;
- (void)friendsSetupViewController:(id)a3 didCompletePhase:(int64_t)a4;
- (void)friendsSetupViewControllerDidCompleteSetup:(id)a3;
- (void)handleActivitySharingURL:(id)a3;
- (void)scrollToTop;
- (void)setPhoneCloudKitAccountIsActive:(BOOL)a3;
- (void)setWatchCloudKitAccountAssumedToExist:(BOOL)a3;
- (void)setWatchCloudKitAccountExists:(BOOL)a3;
@end

@implementation CHActivitySharingNavigationController

- (CHActivitySharingNavigationController)initWithFriendListManager:(id)a3 friendManager:(id)a4 achievementsDataProvider:(id)a5 workoutsDataProvider:(id)a6 workoutFormattingManager:(id)a7 formattingManager:(id)a8 badgeImageFactory:(id)a9 healthStore:(id)a10 fitnessAppContext:(id)a11
{
  v17 = a3;
  obj = a4;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v25 = a11;
  v26 = [CHFriendListViewController alloc];
  v54 = v19;
  v55 = v23;
  v52 = v17;
  v53 = v18;
  v27 = v19;
  v28 = v20;
  v29 = v21;
  v56 = v22;
  v30 = [(CHFriendListViewController *)v26 initWithFriendListManager:v17 andWithFriendManager:v18 achievementsDataProvider:v27 workoutsDataProvider:v28 workoutFormattingManager:v21 formattingManager:v22 badgeImageFactory:v23 healthStore:v24 fitnessAppContext:v25];
  v62.receiver = self;
  v62.super_class = CHActivitySharingNavigationController;
  v31 = [(CHActivitySharingNavigationController *)&v62 initWithRootViewController:v30];
  v32 = v31;
  if (v31)
  {
    [(CHActivitySharingNavigationController *)v31 setFormattingManager:v56];
    objc_storeStrong(&v32->_friendListViewController, v30);
    objc_storeStrong(&v32->_friendManager, obj);
    objc_storeStrong(&v32->_imageFactory, a9);
    v33 = +[NSBundle mainBundle];
    v34 = [v33 localizedStringForKey:@"SHARING" value:&stru_1008680E8 table:@"Localizable"];
    v35 = [(CHActivitySharingNavigationController *)v32 tabBarItem];
    [v35 setTitle:v34];

    v36 = [UIImage _systemImageNamed:@"activity.sharing"];
    v37 = [(CHActivitySharingNavigationController *)v32 tabBarItem];
    [v37 setImage:v36];

    v38 = [(CHActivitySharingNavigationController *)v32 navigationBar];
    [v38 setPrefersLargeTitles:1];

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
      v42 = [(CHActivitySharingNavigationController *)v32 phoneCloudKitAccountIsActive];
      v43 = [(CHActivitySharingNavigationController *)v32 watchCloudKitAccountExists];
      v44 = [(CHActivitySharingNavigationController *)v32 watchCloudKitAccountAssumedToExist];
      LODWORD(buf) = 67109632;
      HIDWORD(buf) = v42;
      v64 = 1024;
      v65 = v43;
      v66 = 1024;
      v67 = v44;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Initializing account status from cache: [phone=%d], [watch=%d], [watch(assumed)=%d]", &buf, 0x14u);
    }

    objc_storeStrong(&v32->_friendListManager, a3);
    v45 = [(CHActivitySharingNavigationController *)v32 _checkPairedWatchIsMinimumVersion];
    v32->_currentlyPairedWatchIsMinimumVersion = v45;
    if ((v45 & 1) != 0 || ([(ASFriendListSectionManager *)v32->_friendListManager hasAnyFriendsSetup]& 1) != 0 || ![(CHActivitySharingNavigationController *)v32 _fitnessModeRequiresWatchSetup])
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

- (void)_applicationDidBecomeActive:(id)a3
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
  v3 = [(CHActivitySharingNavigationController *)self topViewController];
  friendListViewController = self->_friendListViewController;

  if (v3 == friendListViewController)
  {
    v5 = self->_friendListViewController;

    [(CHFriendListViewController *)v5 scrollToTop];
  }
}

- (void)setPhoneCloudKitAccountIsActive:(BOOL)a3
{
  if (self->_phoneCloudKitAccountIsActive != a3)
  {
    v4 = a3;
    self->_phoneCloudKitAccountIsActive = a3;
    v5 = +[NSUserDefaults standardUserDefaults];
    [v5 setBool:v4 forKey:@"CHActivitySharingPhoneHasCloudKitAccountDefaultsKey"];
  }
}

- (void)setWatchCloudKitAccountExists:(BOOL)a3
{
  if (self->_watchCloudKitAccountExists != a3)
  {
    v4 = a3;
    self->_watchCloudKitAccountExists = a3;
    v5 = +[NSUserDefaults standardUserDefaults];
    [v5 setBool:v4 forKey:@"CHActivitySharingWatchHasCloudKitAccountDefaultsKey"];
  }
}

- (void)setWatchCloudKitAccountAssumedToExist:(BOOL)a3
{
  if (self->_watchCloudKitAccountAssumedToExist != a3)
  {
    v13[5] = v3;
    v13[6] = v4;
    v5 = a3;
    self->_watchCloudKitAccountAssumedToExist = a3;
    v7 = +[NSUserDefaults standardUserDefaults];
    [v7 setBool:v5 forKey:@"CHActivitySharingWatchAssumedToHaveCloudKitAccountDefaultsKey"];

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

- (void)handleActivitySharingURL:(id)a3
{
  v4 = a3;
  v5 = [(CHActivitySharingNavigationController *)self _isSetupViewControllerVisible];
  ASLoggingInitialize();
  v6 = ASLogDefault;
  v7 = os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v25 = 138543362;
      v26 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setup controller is visible, not handling URL: %{public}@", &v25, 0xCu);
    }
  }

  else
  {
    if (v7)
    {
      v25 = 138543362;
      v26 = v4;
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

    v14 = [v4 host];
    v15 = [v14 isEqualToString:kASActivitySharingHostMe];

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
      v17 = [v4 host];
      v18 = [v17 isEqualToString:kASActivitySharingHostFriendDetail];

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
        v21 = [v4 host];
        v22 = [v21 isEqualToString:kASActivitySharingHostInbox];

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
  v3 = [(CHActivitySharingNavigationController *)self friendsSetupViewController];
  if (v3)
  {
    v4 = [(CHActivitySharingNavigationController *)self viewControllers];
    v5 = [(CHActivitySharingNavigationController *)self friendsSetupViewController];
    v6 = [v4 containsObject:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_showSetupControllerInPhase:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  if ([(CHActivitySharingNavigationController *)self _isSetupViewControllerVisible])
  {
    v13 = [(CHActivitySharingNavigationController *)self friendsSetupViewController];
    [v13 setPhase:a3 animated:0];
  }

  else
  {
    v7 = [(CHActivitySharingNavigationController *)self viewControllers];
    [(CHActivitySharingNavigationController *)self setNavigationStackDisplacedBySetupController:v7];

    v8 = objc_alloc_init(CHFriendsSetupViewController);
    [(CHActivitySharingNavigationController *)self setFriendsSetupViewController:v8];

    v9 = [(CHActivitySharingNavigationController *)self friendsSetupViewController];
    [v9 setDelegate:self];

    v10 = [(CHActivitySharingNavigationController *)self friendsSetupViewController];
    [v10 setPhase:a3 animated:0];

    v11 = [(CHActivitySharingNavigationController *)self friendsSetupViewController];
    v14 = v11;
    v12 = [NSArray arrayWithObjects:&v14 count:1];
    [(CHActivitySharingNavigationController *)self setViewControllers:v12 animated:v4];

    [(CHActivitySharingNavigationController *)self setNavigationBarHidden:1 animated:v4];
  }
}

- (void)_hideSetupControllerAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(CHActivitySharingNavigationController *)self _isSetupViewControllerVisible])
  {
    v5 = [(CHActivitySharingNavigationController *)self navigationStackDisplacedBySetupController];
    [(CHActivitySharingNavigationController *)self setViewControllers:v5 animated:v3];

    [(CHActivitySharingNavigationController *)self setNavigationBarHidden:0 animated:v3];
    [(CHActivitySharingNavigationController *)self setNavigationStackDisplacedBySetupController:0];

    [(CHActivitySharingNavigationController *)self setFriendsSetupViewController:0];
  }
}

- (void)friendsSetupViewController:(id)a3 didCompletePhase:(int64_t)a4
{
  v6 = a3;
  v7 = [(CHActivitySharingNavigationController *)self friendsSetupViewController];

  if (v7 != v6)
  {
    return;
  }

  if (a4 == 2)
  {
    v10 = +[LSApplicationWorkspace defaultWorkspace];
    v8 = @"bridge:root=GENERAL_LINK&path=SOFTWARE_UPDATE_LINK";
  }

  else
  {
    if (a4 != 1)
    {
      if (!a4)
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

- (void)friendsSetupViewControllerDidCompleteSetup:(id)a3
{
  v4 = a3;
  v5 = [(CHActivitySharingNavigationController *)self friendsSetupViewController];

  if (v5 == v4)
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

- (void)_setActivitySharingIsSetup:(BOOL)a3
{
  v3 = a3;
  v4 = [NSUserDefaults alloc];
  v5 = kASDomain;
  v6 = [v4 initWithSuiteName:kASDomain];
  ASLoggingInitialize();
  v7 = ASLogDefault;
  if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109120;
    v12[1] = v3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting defaults for fitness friends setup: %{BOOL}d", v12, 8u);
  }

  v8 = [NSNumber numberWithBool:v3];
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
  v3 = [(CHActivitySharingNavigationController *)self watchCloudKitAccountFetchInProgress];
  ASLoggingInitialize();
  v4 = ASLogDefault;
  v5 = os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT);
  if (v3)
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
    v6 = [(CHActivitySharingNavigationController *)self nanoSystemSettingsManager];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000E7778;
    v7[3] = &unk_10083A738;
    objc_copyWeak(&v8, buf);
    [v6 getAccountsInfo:v7];

    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }
}

- (BOOL)_fitnessModeRequiresWatchSetup
{
  v2 = +[_HKBehavior sharedBehavior];
  v3 = [v2 fitnessMode];

  return (v3 & 0xFFFFFFFFFFFFFFFELL) != 2;
}

- (void)_handleWatchStatusAndCloudKitAccountStatusChange
{
  v3 = [(CHActivitySharingNavigationController *)self viewIfLoaded];
  v4 = [v3 window];

  v5 = [(CHActivitySharingNavigationController *)self _cloudKitAccountsAreActive];
  self->_currentlyPairedWatchIsMinimumVersion = [(CHActivitySharingNavigationController *)self _checkPairedWatchIsMinimumVersion];
  ASLoggingInitialize();
  v6 = ASLogDefault;
  if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v17[0] = 67109120;
    v17[1] = v4 != 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Handling account status change (view currently visible: %d)", v17, 8u);
  }

  if (!self->_currentlyPairedWatchIsMinimumVersion)
  {
    v7 = [(CHActivitySharingNavigationController *)self friendListManager];
    if ([v7 hasAnyFriendsSetup])
    {
    }

    else
    {
      v8 = [(CHActivitySharingNavigationController *)self _fitnessModeRequiresWatchSetup];

      if (v8)
      {
        ASLoggingInitialize();
        v9 = ASLogDefault;
        if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v17[0]) = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Showing upgrade watch page.", v17, 2u);
        }

        v10 = v4 != 0;
        v11 = self;
        v12 = 2;
        goto LABEL_24;
      }
    }
  }

  v13 = [(CHActivitySharingNavigationController *)self _isSetupViewControllerVisible];
  if ((v5 & 1) == 0)
  {
    if (v13)
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

      v11 = self;
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

    v10 = v4 != 0;
    v11 = self;
    v12 = 1;
LABEL_24:
    [(CHActivitySharingNavigationController *)v11 _showSetupControllerInPhase:v12 animated:v10];
    return;
  }

  if (!v13 || ![(CHActivitySharingNavigationController *)self _activitySharingIsSetup])
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

  [(CHActivitySharingNavigationController *)self _hideSetupControllerAnimated:v4 != 0];
}

- (void)_updateActivitySharingWatchPairingStatus
{
  v3 = [(CHActivitySharingNavigationController *)self _checkPairedWatchIsMinimumVersion];
  if (self->_currentlyPairedWatchIsMinimumVersion != v3)
  {
    self->_currentlyPairedWatchIsMinimumVersion = v3;

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
    v9 = [(CHActivitySharingNavigationController *)self watchCloudKitAccountExists];
    v10 = 1024;
    v11 = [(CHActivitySharingNavigationController *)self watchCloudKitAccountAssumedToExist];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Deriving account status from: [phone=%d], [watch=%d], [watch(assumed)=%d]", v7, 0x14u);
  }

  v5 = [(CHActivitySharingNavigationController *)self phoneCloudKitAccountIsActive];
  if (v5)
  {
    if ([(CHActivitySharingNavigationController *)self watchCloudKitAccountExists]|| [(CHActivitySharingNavigationController *)self watchCloudKitAccountAssumedToExist])
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      LOBYTE(v5) = ![(CHActivitySharingNavigationController *)self _fitnessModeRequiresWatchSetup];
    }
  }

  return v5;
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