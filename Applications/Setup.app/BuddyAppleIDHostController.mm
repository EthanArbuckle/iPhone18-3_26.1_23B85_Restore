@interface BuddyAppleIDHostController
- (BFFFlowItemDelegate)delegate;
- (BOOL)_forceInteractiveAuthFromPreTigrisUpgrade;
- (BOOL)responsibleForViewController:(id)controller;
- (BuddyAppleIDHostController)initWithAccount:(id)account;
- (BuddyAppleIDHostController)initWithAccount:(id)account mode:(unint64_t)mode;
- (id)viewController;
- (void)appleIDControllerFinished:(id)finished;
- (void)appleIDControllerWantsChoiceController:(id)controller;
- (void)controllerWasPopped;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)setDelegate:(id)delegate;
- (void)setExistingAccountUsername:(id)username accountType:(unint64_t)type;
- (void)setNavigationController:(id)controller;
@end

@implementation BuddyAppleIDHostController

- (BuddyAppleIDHostController)initWithAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v3 = selfCopy;
  selfCopy = 0;
  selfCopy = [v3 initWithAccount:location[0] mode:0];
  v4 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v4;
}

- (BuddyAppleIDHostController)initWithAccount:(id)account mode:(unint64_t)mode
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  modeCopy = mode;
  v5 = selfCopy;
  selfCopy = 0;
  v10.receiver = v5;
  v10.super_class = BuddyAppleIDHostController;
  selfCopy = [(BuddyAppleIDHostController *)&v10 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    *(selfCopy + 2) = modeCopy;
    objc_storeStrong(selfCopy + 6, location[0]);
    accountStore = [location[0] accountStore];
    v7 = *(selfCopy + 5);
    *(selfCopy + 5) = accountStore;
  }

  v8 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (void)setNavigationController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  [(BuddyAppleIDController *)selfCopy->_appleIDController setNavigationController:location[0]];
  objc_storeStrong(location, 0);
}

- (void)setDelegate:(id)delegate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  objc_storeWeak(&selfCopy->_delegate, location[0]);
  [(BuddyAppleIDController *)selfCopy->_appleIDController setFlowItemDelegate:location[0]];
  objc_storeStrong(location, 0);
}

- (BOOL)_forceInteractiveAuthFromPreTigrisUpgrade
{
  HasCompletedInitialRun = BYSetupAssistantHasCompletedInitialRun();
  v6 = 0;
  v3 = 0;
  if (HasCompletedInitialRun)
  {
    v7 = +[NSUserDefaults standardUserDefaults];
    v6 = 1;
    v4 = [(NSUserDefaults *)v7 integerForKey:BYBuddyIOSVersionKey];
    v3 = v4 < BYTigrisVersion;
  }

  v8 = v3;
  if (v6)
  {
  }

  return v8;
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  [(BuddyAppleIDHostController *)selfCopy setRanSilentUpdateProperties:0];
  v3 = [BuddyAppleIDController alloc];
  account = selfCopy->_account;
  passcodeCacheManager = [(BuddyAppleIDHostController *)selfCopy passcodeCacheManager];
  analyticsManager = [(BuddyAppleIDHostController *)selfCopy analyticsManager];
  runState = [(BuddyAppleIDHostController *)selfCopy runState];
  v8 = +[BuddyFeatureFlags currentFlags];
  v9 = [(BuddyAppleIDController *)v3 initWithAccount:account passcodeCacheManager:passcodeCacheManager analyticsManager:analyticsManager runState:runState featureFlags:v8];
  appleIDController = selfCopy->_appleIDController;
  selfCopy->_appleIDController = v9;

  [(BuddyAppleIDController *)selfCopy->_appleIDController setDelegate:selfCopy];
  delegate = [(BuddyAppleIDHostController *)selfCopy delegate];
  [(BuddyAppleIDController *)selfCopy->_appleIDController setFlowItemDelegate:delegate];

  proximitySetupController = [(BuddyAppleIDHostController *)selfCopy proximitySetupController];
  hasConnection = [(ProximitySetupController *)proximitySetupController hasConnection];
  [(BuddyAppleIDController *)selfCopy->_appleIDController setHasProximityConnection:hasConnection & 1];

  lockdownModeProvider = [(BuddyAppleIDHostController *)selfCopy lockdownModeProvider];
  [(BuddyAppleIDController *)selfCopy->_appleIDController setLockdownModeProvider:lockdownModeProvider];

  aa_authToken = [(ACAccount *)selfCopy->_account aa_authToken];
  v77 = 0;
  v16 = 1;
  if (!aa_authToken)
  {
    aa_password = [(ACAccount *)selfCopy->_account aa_password];
    v77 = 1;
    v16 = aa_password != 0;
  }

  if (v77)
  {
  }

  v79 = v16;
  v17 = +[BYAppleIDAccountsManager sharedManager];
  storedLoginContext = [v17 storedLoginContext];

  appleID = [storedLoginContext appleID];
  v73 = 0;
  v71 = 0;
  v19 = 0;
  if (appleID)
  {
    rawPassword = [storedLoginContext rawPassword];
    v73 = 1;
    v19 = 1;
    if (!rawPassword)
    {
      continuationKey = [storedLoginContext continuationKey];
      v71 = 1;
      v19 = continuationKey != 0;
    }
  }

  if (v71)
  {
  }

  if (v73)
  {
  }

  v75 = v19;
  if (selfCopy->_account)
  {
    v20 = selfCopy->_appleIDController;
    username = [(ACAccount *)selfCopy->_account username];
    [(BuddyAppleIDController *)v20 setExistingAccountUsername:username accountType:1];
  }

  if (selfCopy->_mode == 1 || !v75)
  {
    if ([(BuddyAppleIDHostController *)selfCopy _forceInteractiveAuthFromPreTigrisUpgrade])
    {
      v67 = _BYLoggingFacility();
      v66 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v67;
        v25 = v66;
        sub_10006AA68(v65);
        _os_log_impl(&_mh_execute_header, v24, v25, "AppleIDHost: Forcing interactive Apple ID upgrade auth", v65, 2u);
      }

      objc_storeStrong(&v67, 0);
      (*(location[0] + 2))(location[0], 1);
    }

    else
    {
      v26 = +[BYSetupStateManager sharedManager];
      restoreType = [v26 restoreType];

      if (restoreType == 1)
      {
        v64 = _BYLoggingFacility();
        v63 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          v28 = v64;
          v29 = v63;
          sub_10006AA68(v62);
          _os_log_impl(&_mh_execute_header, v28, v29, "AppleIDHost: Running post-iTunes-Restore interactive Apple ID renew", v62, 2u);
        }

        objc_storeStrong(&v64, 0);
        (*(location[0] + 2))(location[0], 1);
      }

      else
      {
        miscState = [(BuddyAppleIDHostController *)selfCopy miscState];
        forcePrimaryAppleIDAuthentication = [(BuddyMiscState *)miscState forcePrimaryAppleIDAuthentication];

        if (forcePrimaryAppleIDAuthentication)
        {
          v61 = _BYLoggingFacility();
          v60 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            v32 = v61;
            v33 = v60;
            sub_10006AA68(v59);
            _os_log_impl(&_mh_execute_header, v32, v33, "AppleIDHost: Running forced interactive Apple ID renew", v59, 2u);
          }

          objc_storeStrong(&v61, 0);
          (*(location[0] + 2))(location[0], 1);
        }

        else if (selfCopy->_mode == 2)
        {
          v58 = _BYLoggingFacility();
          v57 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            v34 = v58;
            v35 = v57;
            sub_10006AA68(v56);
            _os_log_impl(&_mh_execute_header, v34, v35, "AppleIDHost: Running Apple ID security upgrade", v56, 2u);
          }

          objc_storeStrong(&v58, 0);
          (*(location[0] + 2))(location[0], 1);
        }

        else if (selfCopy->_mode == 1 || !v79)
        {
          if (selfCopy->_mode == 1)
          {
            miscState2 = [(BuddyAppleIDHostController *)selfCopy miscState];
            iCloudAppleIdFromActivation = [(BuddyMiscState *)miscState2 iCloudAppleIdFromActivation];

            if (!iCloudAppleIdFromActivation)
            {
              proximitySetupController2 = [(BuddyAppleIDHostController *)selfCopy proximitySetupController];
              information = [(ProximitySetupController *)proximitySetupController2 information];
              iCloudAppleIdFromActivation = [(SASProximityInformation *)information appleID];
            }

            [(BuddyAppleIDController *)selfCopy->_appleIDController setExistingAccountUsername:iCloudAppleIdFromActivation accountType:1, iCloudAppleIdFromActivation];
            (*(location[0] + 2))(location[0], selfCopy->_account == 0);
            objc_storeStrong(&iCloudAppleIdFromActivation, 0);
          }

          else
          {
            (*(location[0] + 2))(location[0], selfCopy->_account == 0);
          }
        }

        else
        {
          v55 = objc_alloc_init(ACAccountStore);
          v54 = _BYLoggingFacility();
          v53 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            v36 = v54;
            v37 = v53;
            sub_10006AA68(v52);
            _os_log_impl(&_mh_execute_header, v36, v37, "AppleIDHost: Attempting silent -upgradeProperties...", v52, 2u);
          }

          objc_storeStrong(&v54, 0);
          v38 = v55;
          v39 = selfCopy->_account;
          v44 = _NSConcreteStackBlock;
          v45 = -1073741824;
          v46 = 0;
          v47 = sub_100212764;
          v48 = &unk_10032E570;
          v49 = v55;
          v50 = selfCopy;
          v51 = location[0];
          [v38 aa_updatePropertiesForAppleAccount:v39 completion:&v44];
          objc_storeStrong(&v51, 0);
          objc_storeStrong(&v50, 0);
          objc_storeStrong(&v49, 0);
          objc_storeStrong(&v55, 0);
        }
      }
    }
  }

  else
  {
    oslog = _BYLoggingFacility();
    v69 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v22 = oslog;
      v23 = v69;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v22, v23, "AppleIDHost: Transient storage has credentials", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
    (*(location[0] + 2))(location[0], 1);
  }

  objc_storeStrong(&storedLoginContext, 0);
  objc_storeStrong(location, 0);
}

- (id)viewController
{
  selfCopy = self;
  location[1] = a2;
  if (!self->_viewController)
  {
    if (selfCopy->_mode == 1)
    {
      signInViewControllerForRestore = [(BuddyAppleIDController *)selfCopy->_appleIDController signInViewControllerForRestore];
      viewController = selfCopy->_viewController;
      selfCopy->_viewController = signInViewControllerForRestore;

      selfCopy->_allowBack = 1;
    }

    else if (selfCopy->_account)
    {
      if (selfCopy->_mode == 2)
      {
        securityUpgradeAccountSignInViewController = [(BuddyAppleIDController *)selfCopy->_appleIDController securityUpgradeAccountSignInViewController];
        v5 = selfCopy->_viewController;
        selfCopy->_viewController = securityUpgradeAccountSignInViewController;

        selfCopy->_allowBack = 1;
      }

      else
      {
        v6 = +[BYAppleIDAccountsManager sharedManager];
        location[0] = [v6 storedLoginContext];

        appleID = [location[0] appleID];
        v19 = 0;
        v17 = 0;
        v8 = 0;
        if (appleID)
        {
          rawPassword = [location[0] rawPassword];
          v19 = 1;
          v8 = 1;
          if (!rawPassword)
          {
            continuationKey = [location[0] continuationKey];
            v17 = 1;
            v8 = continuationKey != 0;
          }
        }

        if (v17)
        {
        }

        if (v19)
        {
        }

        if (v8)
        {
          v9 = [(BuddyAppleIDController *)selfCopy->_appleIDController silentUpgradeViewControllerWithLoginContext:location[0]];
          v10 = selfCopy->_viewController;
          selfCopy->_viewController = v9;

          selfCopy->_allowBack = 0;
        }

        else
        {
          upgradeAccountSignInViewController = [(BuddyAppleIDController *)selfCopy->_appleIDController upgradeAccountSignInViewController];
          v12 = selfCopy->_viewController;
          selfCopy->_viewController = upgradeAccountSignInViewController;

          selfCopy->_allowBack = 1;
        }

        objc_storeStrong(location, 0);
      }
    }

    else
    {
      signInViewController = [(BuddyAppleIDController *)selfCopy->_appleIDController signInViewController];
      v14 = selfCopy->_viewController;
      selfCopy->_viewController = signInViewController;
    }
  }

  v15 = selfCopy->_viewController;

  return v15;
}

- (BOOL)responsibleForViewController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v3 = [(BuddyAppleIDController *)selfCopy->_appleIDController responsibleForViewController:location[0]];
  objc_storeStrong(location, 0);
  return v3 & 1;
}

- (void)setExistingAccountUsername:(id)username accountType:(unint64_t)type
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, username);
  [(BuddyAppleIDController *)selfCopy->_appleIDController setExistingAccountUsername:location[0] accountType:type, type];
  objc_storeStrong(location, 0);
}

- (void)controllerWasPopped
{
  v2 = [(BuddyAppleIDHostController *)self buddyPreferences:a2];
  [(BYPreferencesController *)v2 setObject:&__kCFBooleanFalse forKey:@"AppleIDPB10Presented"];
}

- (void)appleIDControllerWantsChoiceController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  selfCopy->_allowBack = 1;
  oslog = _BYLoggingFacility();
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog;
    v4 = v8;
    sub_10006AA68(v7);
    _os_log_impl(&_mh_execute_header, v3, v4, "BuddyAppleIDHostController wants choice controller", v7, 2u);
  }

  objc_storeStrong(&oslog, 0);
  buddyPreferences = [(BuddyAppleIDHostController *)selfCopy buddyPreferences];
  [(BYPreferencesController *)buddyPreferences setObject:&__kCFBooleanTrue forKey:@"AppleIDPB10Presented"];

  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  [WeakRetained flowItemDone:selfCopy nextItemClass:objc_opt_class()];

  objc_storeStrong(location, 0);
}

- (void)appleIDControllerFinished:(id)finished
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, finished);
  if (selfCopy->_mode == 1)
  {
    selfCopy->_allowBack = 1;
    v29 = objc_alloc_init(ACAccountStore);
    aa_primaryAppleAccount = [v29 aa_primaryAppleAccount];
    if (aa_primaryAppleAccount)
    {
      WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
      [WeakRetained flowItemDone:selfCopy];
    }

    else
    {
      v3 = +[NSBundle mainBundle];
      v4 = [(NSBundle *)v3 localizedStringForKey:@"CANT_LOGIN_APPLEID_GENERIC_TITLE" value:&stru_10032F900 table:@"Localizable"];
      v5 = +[NSBundle mainBundle];
      v6 = [(NSBundle *)v5 localizedStringForKey:@"CANT_LOGIN_APPLEID_UNKNOWN_ERROR" value:&stru_10032F900 table:@"Localizable"];
      v27 = [UIAlertController alertControllerWithTitle:v4 message:v6 preferredStyle:1];

      v7 = v27;
      v8 = +[NSBundle mainBundle];
      v9 = [(NSBundle *)v8 localizedStringForKey:@"OK" value:&stru_10032F900 table:@"Localizable"];
      v21 = _NSConcreteStackBlock;
      v22 = -1073741824;
      v23 = 0;
      v24 = sub_1002134D8;
      v25 = &unk_10032B598;
      v26 = selfCopy;
      v10 = [UIAlertAction actionWithTitle:v9 style:0 handler:&v21];
      [v7 addAction:v10];

      [(UIViewController *)selfCopy->_viewController presentViewController:v27 animated:1 completion:0];
      objc_storeStrong(&v26, 0);
      objc_storeStrong(&v27, 0);
    }

    objc_storeStrong(&aa_primaryAppleAccount, 0);
    objc_storeStrong(&v29, 0);
  }

  else
  {
    selfCopy->_allowBack = 0;
    oslog = _BYLoggingFacility();
    v19 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = oslog;
      v13 = v19;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v12, v13, "BuddyAppleIDHostController finished!", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
    buddyPreferences = [(BuddyAppleIDHostController *)selfCopy buddyPreferences];
    [(BYPreferencesController *)buddyPreferences setObject:&__kCFBooleanTrue forKey:@"AppleIDPB10Presented"];

    v17 = [NSNumber numberWithInt:selfCopy->_mode == 2];
    paneFeatureAnalyticsManager = [(BuddyAppleIDHostController *)selfCopy paneFeatureAnalyticsManager];
    [(BYPaneFeatureAnalyticsManager *)paneFeatureAnalyticsManager recordActionWithValue:&__kCFBooleanTrue previousValue:v17 forFeature:14];

    v16 = objc_loadWeakRetained(&selfCopy->_delegate);
    [v16 flowItemDone:selfCopy];

    objc_storeStrong(&v17, 0);
  }

  objc_storeStrong(location, 0);
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end