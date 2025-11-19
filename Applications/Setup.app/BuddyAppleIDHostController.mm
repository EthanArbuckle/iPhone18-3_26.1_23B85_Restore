@interface BuddyAppleIDHostController
- (BFFFlowItemDelegate)delegate;
- (BOOL)_forceInteractiveAuthFromPreTigrisUpgrade;
- (BOOL)responsibleForViewController:(id)a3;
- (BuddyAppleIDHostController)initWithAccount:(id)a3;
- (BuddyAppleIDHostController)initWithAccount:(id)a3 mode:(unint64_t)a4;
- (id)viewController;
- (void)appleIDControllerFinished:(id)a3;
- (void)appleIDControllerWantsChoiceController:(id)a3;
- (void)controllerWasPopped;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setExistingAccountUsername:(id)a3 accountType:(unint64_t)a4;
- (void)setNavigationController:(id)a3;
@end

@implementation BuddyAppleIDHostController

- (BuddyAppleIDHostController)initWithAccount:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v7;
  v7 = 0;
  v7 = [v3 initWithAccount:location[0] mode:0];
  v4 = v7;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v7, 0);
  return v4;
}

- (BuddyAppleIDHostController)initWithAccount:(id)a3 mode:(unint64_t)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = a4;
  v5 = v13;
  v13 = 0;
  v10.receiver = v5;
  v10.super_class = BuddyAppleIDHostController;
  v13 = [(BuddyAppleIDHostController *)&v10 init];
  objc_storeStrong(&v13, v13);
  if (v13)
  {
    *(v13 + 2) = v11;
    objc_storeStrong(v13 + 6, location[0]);
    v6 = [location[0] accountStore];
    v7 = *(v13 + 5);
    *(v13 + 5) = v6;
  }

  v8 = v13;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v13, 0);
  return v8;
}

- (void)setNavigationController:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BuddyAppleIDController *)v4->_appleIDController setNavigationController:location[0]];
  objc_storeStrong(location, 0);
}

- (void)setDelegate:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeWeak(&v4->_delegate, location[0]);
  [(BuddyAppleIDController *)v4->_appleIDController setFlowItemDelegate:location[0]];
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

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v81 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BuddyAppleIDHostController *)v81 setRanSilentUpdateProperties:0];
  v3 = [BuddyAppleIDController alloc];
  account = v81->_account;
  v5 = [(BuddyAppleIDHostController *)v81 passcodeCacheManager];
  v6 = [(BuddyAppleIDHostController *)v81 analyticsManager];
  v7 = [(BuddyAppleIDHostController *)v81 runState];
  v8 = +[BuddyFeatureFlags currentFlags];
  v9 = [(BuddyAppleIDController *)v3 initWithAccount:account passcodeCacheManager:v5 analyticsManager:v6 runState:v7 featureFlags:v8];
  appleIDController = v81->_appleIDController;
  v81->_appleIDController = v9;

  [(BuddyAppleIDController *)v81->_appleIDController setDelegate:v81];
  v11 = [(BuddyAppleIDHostController *)v81 delegate];
  [(BuddyAppleIDController *)v81->_appleIDController setFlowItemDelegate:v11];

  v12 = [(BuddyAppleIDHostController *)v81 proximitySetupController];
  v13 = [(ProximitySetupController *)v12 hasConnection];
  [(BuddyAppleIDController *)v81->_appleIDController setHasProximityConnection:v13 & 1];

  v14 = [(BuddyAppleIDHostController *)v81 lockdownModeProvider];
  [(BuddyAppleIDController *)v81->_appleIDController setLockdownModeProvider:v14];

  v15 = [(ACAccount *)v81->_account aa_authToken];
  v77 = 0;
  v16 = 1;
  if (!v15)
  {
    v78 = [(ACAccount *)v81->_account aa_password];
    v77 = 1;
    v16 = v78 != 0;
  }

  if (v77)
  {
  }

  v79 = v16;
  v17 = +[BYAppleIDAccountsManager sharedManager];
  v76 = [v17 storedLoginContext];

  v18 = [v76 appleID];
  v73 = 0;
  v71 = 0;
  v19 = 0;
  if (v18)
  {
    v74 = [v76 rawPassword];
    v73 = 1;
    v19 = 1;
    if (!v74)
    {
      v72 = [v76 continuationKey];
      v71 = 1;
      v19 = v72 != 0;
    }
  }

  if (v71)
  {
  }

  if (v73)
  {
  }

  v75 = v19;
  if (v81->_account)
  {
    v20 = v81->_appleIDController;
    v21 = [(ACAccount *)v81->_account username];
    [(BuddyAppleIDController *)v20 setExistingAccountUsername:v21 accountType:1];
  }

  if (v81->_mode == 1 || !v75)
  {
    if ([(BuddyAppleIDHostController *)v81 _forceInteractiveAuthFromPreTigrisUpgrade])
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
      v27 = [v26 restoreType];

      if (v27 == 1)
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
        v30 = [(BuddyAppleIDHostController *)v81 miscState];
        v31 = [(BuddyMiscState *)v30 forcePrimaryAppleIDAuthentication];

        if (v31)
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

        else if (v81->_mode == 2)
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

        else if (v81->_mode == 1 || !v79)
        {
          if (v81->_mode == 1)
          {
            v40 = [(BuddyAppleIDHostController *)v81 miscState];
            v43 = [(BuddyMiscState *)v40 iCloudAppleIdFromActivation];

            if (!v43)
            {
              v41 = [(BuddyAppleIDHostController *)v81 proximitySetupController];
              v42 = [(ProximitySetupController *)v41 information];
              v43 = [(SASProximityInformation *)v42 appleID];
            }

            [(BuddyAppleIDController *)v81->_appleIDController setExistingAccountUsername:v43 accountType:1, v43];
            (*(location[0] + 2))(location[0], v81->_account == 0);
            objc_storeStrong(&v43, 0);
          }

          else
          {
            (*(location[0] + 2))(location[0], v81->_account == 0);
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
          v39 = v81->_account;
          v44 = _NSConcreteStackBlock;
          v45 = -1073741824;
          v46 = 0;
          v47 = sub_100212764;
          v48 = &unk_10032E570;
          v49 = v55;
          v50 = v81;
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

  objc_storeStrong(&v76, 0);
  objc_storeStrong(location, 0);
}

- (id)viewController
{
  v22 = self;
  location[1] = a2;
  if (!self->_viewController)
  {
    if (v22->_mode == 1)
    {
      v2 = [(BuddyAppleIDController *)v22->_appleIDController signInViewControllerForRestore];
      viewController = v22->_viewController;
      v22->_viewController = v2;

      v22->_allowBack = 1;
    }

    else if (v22->_account)
    {
      if (v22->_mode == 2)
      {
        v4 = [(BuddyAppleIDController *)v22->_appleIDController securityUpgradeAccountSignInViewController];
        v5 = v22->_viewController;
        v22->_viewController = v4;

        v22->_allowBack = 1;
      }

      else
      {
        v6 = +[BYAppleIDAccountsManager sharedManager];
        location[0] = [v6 storedLoginContext];

        v7 = [location[0] appleID];
        v19 = 0;
        v17 = 0;
        v8 = 0;
        if (v7)
        {
          v20 = [location[0] rawPassword];
          v19 = 1;
          v8 = 1;
          if (!v20)
          {
            v18 = [location[0] continuationKey];
            v17 = 1;
            v8 = v18 != 0;
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
          v9 = [(BuddyAppleIDController *)v22->_appleIDController silentUpgradeViewControllerWithLoginContext:location[0]];
          v10 = v22->_viewController;
          v22->_viewController = v9;

          v22->_allowBack = 0;
        }

        else
        {
          v11 = [(BuddyAppleIDController *)v22->_appleIDController upgradeAccountSignInViewController];
          v12 = v22->_viewController;
          v22->_viewController = v11;

          v22->_allowBack = 1;
        }

        objc_storeStrong(location, 0);
      }
    }

    else
    {
      v13 = [(BuddyAppleIDController *)v22->_appleIDController signInViewController];
      v14 = v22->_viewController;
      v22->_viewController = v13;
    }
  }

  v15 = v22->_viewController;

  return v15;
}

- (BOOL)responsibleForViewController:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyAppleIDController *)v6->_appleIDController responsibleForViewController:location[0]];
  objc_storeStrong(location, 0);
  return v3 & 1;
}

- (void)setExistingAccountUsername:(id)a3 accountType:(unint64_t)a4
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BuddyAppleIDController *)v6->_appleIDController setExistingAccountUsername:location[0] accountType:a4, a4];
  objc_storeStrong(location, 0);
}

- (void)controllerWasPopped
{
  v2 = [(BuddyAppleIDHostController *)self buddyPreferences:a2];
  [(BYPreferencesController *)v2 setObject:&__kCFBooleanFalse forKey:@"AppleIDPB10Presented"];
}

- (void)appleIDControllerWantsChoiceController:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11->_allowBack = 1;
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
  v5 = [(BuddyAppleIDHostController *)v11 buddyPreferences];
  [(BYPreferencesController *)v5 setObject:&__kCFBooleanTrue forKey:@"AppleIDPB10Presented"];

  WeakRetained = objc_loadWeakRetained(&v11->_delegate);
  [WeakRetained flowItemDone:v11 nextItemClass:objc_opt_class()];

  objc_storeStrong(location, 0);
}

- (void)appleIDControllerFinished:(id)a3
{
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v31->_mode == 1)
  {
    v31->_allowBack = 1;
    v29 = objc_alloc_init(ACAccountStore);
    v28 = [v29 aa_primaryAppleAccount];
    if (v28)
    {
      WeakRetained = objc_loadWeakRetained(&v31->_delegate);
      [WeakRetained flowItemDone:v31];
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
      v26 = v31;
      v10 = [UIAlertAction actionWithTitle:v9 style:0 handler:&v21];
      [v7 addAction:v10];

      [(UIViewController *)v31->_viewController presentViewController:v27 animated:1 completion:0];
      objc_storeStrong(&v26, 0);
      objc_storeStrong(&v27, 0);
    }

    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v29, 0);
  }

  else
  {
    v31->_allowBack = 0;
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
    v14 = [(BuddyAppleIDHostController *)v31 buddyPreferences];
    [(BYPreferencesController *)v14 setObject:&__kCFBooleanTrue forKey:@"AppleIDPB10Presented"];

    v17 = [NSNumber numberWithInt:v31->_mode == 2];
    v15 = [(BuddyAppleIDHostController *)v31 paneFeatureAnalyticsManager];
    [(BYPaneFeatureAnalyticsManager *)v15 recordActionWithValue:&__kCFBooleanTrue previousValue:v17 forFeature:14];

    v16 = objc_loadWeakRetained(&v31->_delegate);
    [v16 flowItemDone:v31];

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