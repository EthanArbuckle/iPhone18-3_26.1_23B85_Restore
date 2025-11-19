@interface BuddyAppleIDController
- (BFFFlowItemDelegate)flowItemDelegate;
- (BOOL)_isRestore;
- (BOOL)controllerNeedsToRunForClass:(Class)a3;
- (BOOL)isFlowItemOnTop:(id)a3;
- (BOOL)responsibleForViewController:(id)a3;
- (BOOL)shouldAllowStartOver;
- (BuddyAppleIDController)initWithAccount:(id)a3 passcodeCacheManager:(id)a4 analyticsManager:(id)a5 runState:(id)a6 featureFlags:(id)a7;
- (BuddyAppleIDControllerDelegate)delegate;
- (BuddyAppleIDSignInController)twoAccountsiCloudSignInController;
- (id)_authenticationContextForSecurityUpgrade;
- (id)popToBuddyControllerWithClass:(Class)a3 animated:(BOOL)a4;
- (id)popToBuddyControllerWithClass:(Class)a3 withOffset:(unint64_t)a4 animated:(BOOL)a5;
- (id)securityUpgradeAccountSignInViewController;
- (id)signInViewController;
- (id)signInViewControllerForRestore;
- (id)silentUpgradeViewControllerWithLoginContext:(id)a3;
- (id)upgradeAccountForRestoreAfterSoftwareUpdateSignInViewController;
- (id)upgradeAccountSignInViewController;
- (void)_appleIDControllerCompletedShouldProceed:(BOOL)a3 error:(id)a4;
- (void)_authCompletedShouldProceed:(BOOL)a3 error:(id)a4;
- (void)_beginPostUpgradeAppleIDLoginWithUsername:(id)a3 password:(id)a4 continuationKey:(id)a5 signInController:(id)a6;
- (void)_beginPostUpgradeAppleIDLoginWithUsername:(id)a3 password:(id)a4 signInController:(id)a5;
- (void)_createMeCard;
- (void)_didFinishResponsibilityViewControllerPushSeesion;
- (void)_loadSecurityUpgradeUI;
- (void)_nameDevice;
- (void)_popBackToAuthAttemptLandingPage;
- (void)_pushNextViewController:(id)a3;
- (void)_removeBackToViewControllerMatchingBlock:(id)a3 withOffset:(int64_t)a4;
- (void)_setAppearanceHandler:(id)a3 forSpinnerPage:(id)a4;
- (void)_setLogInOptionsForBuddyAppleIDAuthMode:(int)a3 signInController:(id)a4;
- (void)_setupAccountForSecurityUpgrade;
- (void)_showProximityiCloudSignInController:(id)a3;
- (void)_showSpinnerPage:(id)a3 appearanceHandler:(id)a4;
- (void)_showSpinnerPageWithIdentifier:(id)a3 handler:(id)a4;
- (void)_showTwoAccountsiCloudSignInController;
- (void)_showTwoAccountsiTunesSignInController;
- (void)_signInFailedWithError:(id)a3;
- (void)_signInSucceeded;
- (void)_upgradeAccountWithAuthenticationResults:(id)a3 completion:(id)a4;
- (void)_willStartResponsibilityViewControllerPushSession;
- (void)buddyAppleIDSpinnerPageDidAppear:(id)a3;
- (void)cancelAuthentication;
- (void)flowItemCancelled:(id)a3;
- (void)flowItemDone:(id)a3;
- (void)flowItemDone:(id)a3 nextItem:(id)a4;
- (void)flowItemDone:(id)a3 nextItemClass:(Class)a4;
- (void)markFlowItemDone:(id)a3;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)pushFlowItem:(id)a3 animated:(BOOL)a4;
- (void)pushFlowItem:(id)a3 inFlow:(id)a4 animated:(BOOL)a5;
- (void)pushFlowItem:(id)a3 inFlow:(id)a4 withExtendedInitialization:(BOOL)a5 animated:(BOOL)a6;
- (void)pushFlowItem:(id)a3 inFlow:(id)a4 withExtendedInitialization:(BOOL)a5 animated:(BOOL)a6 willPushFlowItem:(id)a7;
- (void)removeViewControllersOnNextPush:(id)a3;
- (void)setExistingAccountUsername:(id)a3 accountType:(unint64_t)a4;
- (void)setNavigationController:(id)a3;
- (void)showCreateAppleID;
- (void)showCredentialRecovery;
@end

@implementation BuddyAppleIDController

- (BuddyAppleIDController)initWithAccount:(id)a3 passcodeCacheManager:(id)a4 analyticsManager:(id)a5 runState:(id)a6 featureFlags:(id)a7
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  obj = 0;
  objc_storeStrong(&obj, a4);
  v19 = 0;
  objc_storeStrong(&v19, a5);
  v18 = 0;
  objc_storeStrong(&v18, a6);
  v17 = 0;
  objc_storeStrong(&v17, a7);
  v11 = v22;
  v22 = 0;
  v16.receiver = v11;
  v16.super_class = BuddyAppleIDController;
  v22 = [(BuddyAppleIDController *)&v16 init];
  objc_storeStrong(&v22, v22);
  if (v22)
  {
    objc_storeStrong(v22 + 14, obj);
    objc_storeStrong(v22 + 20, v19);
    objc_storeStrong(v22 + 21, v18);
    *(v22 + 15) = 0;
    v12 = +[NSPointerArray weakObjectsPointerArray];
    v13 = *(v22 + 16);
    *(v22 + 16) = v12;

    objc_storeStrong(v22 + 8, v17);
    if (location[0])
    {
      objc_storeStrong(v22 + 9, location[0]);
    }
  }

  v14 = v22;
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&obj, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v22, 0);
  return v14;
}

- (BFFFlowItemDelegate)flowItemDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_flowItemDelegate);

  return WeakRetained;
}

- (void)setExistingAccountUsername:(id)a3 accountType:(unint64_t)a4
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BuddyAppleIDController *)v6 setExistingAccountUsername:location[0]];
  [(BuddyAppleIDController *)v6 setExistingAccountType:a4];
  objc_storeStrong(location, 0);
}

- (void)setNavigationController:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    if (location[0] != v4->_navigationController)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [location[0] addDelegateObserver:v4];
      }
    }
  }

  objc_storeStrong(&v4->_navigationController, location[0]);
  objc_storeStrong(location, 0);
}

- (void)showCredentialRecovery
{
  v30 = self;
  oslog[1] = a2;
  v2 = [(BuddyAppleIDController *)self navigationController];
  v3 = [(UINavigationController *)v2 topViewController];
  [v30 setAuthAttemptLandingViewController:v3];

  v4 = [BuddyAppleIDSignInTask alloc];
  v5 = [v30 featureFlags];
  v6 = +[BuddyAccountTools sharedBuddyAccountTools];
  v7 = [(BuddyAppleIDSignInTask *)v4 initWithFeatureFlags:v5 accountTools:v6];
  [v30 setSignInTask:v7];

  v8 = [v30 navigationController];
  v9 = [v30 signInTask];
  [v9 setNavigationController:v8];

  LOBYTE(v8) = [v30 _isRestore];
  v10 = [v30 signInTask];
  [v10 setRestoreFromBackupMode:v8 & 1];

  v11 = [v30 featureFlags];
  LOBYTE(v10) = [v11 isUseCDPContextSecretInsteadOfSBDSecretEnabled];

  if (v10)
  {
    oslog[0] = _BYLoggingFacility();
    v28 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v30 passcodeCacheManager];
      v13 = [v30 signInTask];
      sub_10011A49C(buf, "[BuddyAppleIDController showCredentialRecovery]", v12, v13);
      _os_log_impl(&_mh_execute_header, oslog[0], v28, "%s: Setting cache manager %@ on sign in task %@", buf, 0x20u);
    }

    objc_storeStrong(oslog, 0);
    v14 = [v30 passcodeCacheManager];
    v15 = [v30 signInTask];
    [v15 setCacheManager:v14];
  }

  v27 = _BYLoggingFacility();
  v26 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v27;
    v17 = v26;
    sub_10006AA68(v25);
    _os_log_impl(&_mh_execute_header, v16, v17, "Beginning credential recovery...", v25, 2u);
  }

  objc_storeStrong(&v27, 0);
  v18 = [v30 signInTask];
  v19 = _NSConcreteStackBlock;
  v20 = -1073741824;
  v21 = 0;
  v22 = sub_100139524;
  v23 = &unk_10032D598;
  v24 = v30;
  [v18 authenticateForCredentialRecoveryWithCompletion:&v19];

  objc_storeStrong(&v24, 0);
}

- (void)showCreateAppleID
{
  v30 = self;
  oslog[1] = a2;
  v2 = [(BuddyAppleIDController *)self navigationController];
  v3 = [(UINavigationController *)v2 topViewController];
  [v30 setAuthAttemptLandingViewController:v3];

  v4 = [BuddyAppleIDSignInTask alloc];
  v5 = [v30 featureFlags];
  v6 = +[BuddyAccountTools sharedBuddyAccountTools];
  v7 = [(BuddyAppleIDSignInTask *)v4 initWithFeatureFlags:v5 accountTools:v6];
  [v30 setSignInTask:v7];

  v8 = [v30 navigationController];
  v9 = [v30 signInTask];
  [v9 setNavigationController:v8];

  LOBYTE(v8) = [v30 _isRestore];
  v10 = [v30 signInTask];
  [v10 setRestoreFromBackupMode:v8 & 1];

  v11 = [v30 featureFlags];
  LOBYTE(v10) = [v11 isUseCDPContextSecretInsteadOfSBDSecretEnabled];

  if (v10)
  {
    oslog[0] = _BYLoggingFacility();
    v28 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v30 passcodeCacheManager];
      v13 = [v30 signInTask];
      sub_10011A49C(buf, "[BuddyAppleIDController showCreateAppleID]", v12, v13);
      _os_log_impl(&_mh_execute_header, oslog[0], v28, "%s: Setting cache manager %@ on sign in task %@", buf, 0x20u);
    }

    objc_storeStrong(oslog, 0);
    v14 = [v30 passcodeCacheManager];
    v15 = [v30 signInTask];
    [v15 setCacheManager:v14];
  }

  v27 = _BYLoggingFacility();
  v26 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v27;
    v17 = v26;
    sub_10006AA68(v25);
    _os_log_impl(&_mh_execute_header, v16, v17, "Beginning account creation...", v25, 2u);
  }

  objc_storeStrong(&v27, 0);
  v18 = [v30 signInTask];
  v19 = _NSConcreteStackBlock;
  v20 = -1073741824;
  v21 = 0;
  v22 = sub_10013A298;
  v23 = &unk_10032D598;
  v24 = v30;
  [v18 authenticateForAccountCreationWithCompletion:&v19];

  objc_storeStrong(&v24, 0);
}

- (void)_willStartResponsibilityViewControllerPushSession
{
  v2 = &_dispatch_main_q;
  dispatch_assert_queue_V2(v2);

  [(BuddyAppleIDController *)self setCountOfResponsibilityViewControllerPushSessions:[(BuddyAppleIDController *)self countOfResponsibilityViewControllerPushSessions]+ 1];
}

- (void)_didFinishResponsibilityViewControllerPushSeesion
{
  v2 = &_dispatch_main_q;
  dispatch_assert_queue_V2(v2);

  if ([(BuddyAppleIDController *)self countOfResponsibilityViewControllerPushSessions])
  {
    [(BuddyAppleIDController *)self setCountOfResponsibilityViewControllerPushSessions:[(BuddyAppleIDController *)self countOfResponsibilityViewControllerPushSessions]- 1];
  }
}

- (BOOL)responsibleForViewController:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(BuddyAppleIDController *)v14 assumeResponsibilityForRUIPage]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v15 = 1;
    v12 = 1;
  }

  else
  {
    memset(__b, 0, sizeof(__b));
    v3 = [(BuddyAppleIDController *)v14 responsibilityViewControllers];
    v4 = [(NSPointerArray *)v3 allObjects];

    v5 = [(NSArray *)v4 countByEnumeratingWithState:__b objects:v16 count:16];
    if (v5)
    {
      v6 = *__b[2];
      do
      {
        for (i = 0; i < v5; ++i)
        {
          if (*__b[2] != v6)
          {
            v8 = v5;
            objc_enumerationMutation(v4);
            v5 = v8;
          }

          v11 = *(__b[1] + 8 * i);
          if (v11 == location[0])
          {
            v15 = 1;
            v12 = 1;
            goto LABEL_14;
          }
        }

        v5 = [(NSArray *)v4 countByEnumeratingWithState:__b objects:v16 count:16];
      }

      while (v5);
    }

    v12 = 0;
LABEL_14:

    if (!v12)
    {
      objc_opt_class();
      v15 = objc_opt_isKindOfClass() & 1;
      v12 = 1;
    }
  }

  objc_storeStrong(location, 0);
  return v15 & 1;
}

- (void)cancelAuthentication
{
  v7 = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  v5 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v5;
    sub_10006AA68(v4);
    _os_log_impl(&_mh_execute_header, v2, v3, "Cancelling authentication...", v4, 2u);
  }

  objc_storeStrong(oslog, 0);
  [(BuddyAppleIDController *)v7 _authCompletedShouldProceed:0 error:0];
}

- (id)upgradeAccountSignInViewController
{
  v38 = self;
  v37[1] = a2;
  v2 = [(BuddyAppleIDController *)self navigationController];
  v3 = [(BuddyAppleIDController *)v38 passcodeCacheManager];
  v4 = [(BuddyAppleIDController *)v38 featureFlags];
  v37[0] = [BuddyAppleIDSignInController federatedAuthSignInControllerInNavigationController:v2 mode:4 passcodeCacheManager:v3 featureFlags:v4];

  v5 = [(BuddyAppleIDController *)v38 existingAccountUsername];
  [v37[0] setUsername:v5];

  v6 = +[NSBundle mainBundle];
  v7 = [(NSBundle *)v6 localizedStringForKey:@"FORGOT_PASSWORD_QUESTION" value:&stru_10032F900 table:@"Localizable"];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10013B328;
  v35[3] = &unk_10032B0D0;
  v36 = v38;
  [v37[0] setiForgotText:v7 handler:v35];

  objc_initWeak(&location, v37[0]);
  v8 = v37[0];
  v27 = _NSConcreteStackBlock;
  v28 = -1073741824;
  v29 = 0;
  v30 = sub_10013B3D0;
  v31 = &unk_10032AFA8;
  objc_copyWeak(&v33, &location);
  v32 = v38;
  [v8 setAppearanceHandler:&v27];
  v9 = v37[0];
  v20 = _NSConcreteStackBlock;
  v21 = -1073741824;
  v22 = 0;
  v23 = sub_10013B434;
  v24 = &unk_10032D2E0;
  v25 = v38;
  objc_copyWeak(v26, &location);
  [v9 setHandler:&v20];
  v10 = v37[0];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10013B560;
  v18 = &unk_10032D598;
  v19 = v38;
  [v10 setProximityLoginHandler:&v15];
  v11 = v38;
  v12 = objc_loadWeakRetained(&location);
  [(BuddyAppleIDController *)v11 _setLogInOptionsForBuddyAppleIDAuthMode:4 signInController:v12, v15, v16, v17, v18];

  v13 = v37[0];
  objc_storeStrong(&v19, 0);
  objc_destroyWeak(v26);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v32, 0);
  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(v37, 0);
  return v13;
}

- (id)upgradeAccountForRestoreAfterSoftwareUpdateSignInViewController
{
  v34 = self;
  v33[1] = a2;
  v2 = [(BuddyAppleIDController *)self navigationController];
  v3 = [(BuddyAppleIDController *)v34 passcodeCacheManager];
  v4 = [(BuddyAppleIDController *)v34 featureFlags];
  v33[0] = [BuddyAppleIDSignInController federatedAuthSignInControllerInNavigationController:v2 mode:7 passcodeCacheManager:v3 featureFlags:v4];

  v5 = [(BuddyAppleIDController *)v34 existingAccountUsername];
  [v33[0] setUsername:v5];

  v6 = +[NSBundle mainBundle];
  v7 = [(NSBundle *)v6 localizedStringForKey:@"FORGOT_PASSWORD_QUESTION" value:&stru_10032F900 table:@"Localizable"];
  v27 = _NSConcreteStackBlock;
  v28 = -1073741824;
  v29 = 0;
  v30 = sub_10013BC18;
  v31 = &unk_10032B0D0;
  v32 = v34;
  [v33[0] setiForgotText:v7 handler:&v27];

  objc_initWeak(&location, v33[0]);
  v8 = v33[0];
  v19 = _NSConcreteStackBlock;
  v20 = -1073741824;
  v21 = 0;
  v22 = sub_10013BCC0;
  v23 = &unk_10032AFA8;
  objc_copyWeak(&v25, &location);
  v24 = v34;
  [v8 setAppearanceHandler:&v19];
  v9 = v33[0];
  v12 = _NSConcreteStackBlock;
  v13 = -1073741824;
  v14 = 0;
  v15 = sub_10013BD24;
  v16 = &unk_10032D2E0;
  v17 = v34;
  objc_copyWeak(v18, &location);
  [v9 setHandler:&v12];
  v10 = v33[0];
  objc_destroyWeak(v18);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v24, 0);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(v33, 0);
  return v10;
}

- (id)securityUpgradeAccountSignInViewController
{
  v7 = self;
  location[1] = a2;
  [(BuddyAppleIDController *)self setOperationType:4];
  v2 = [(BuddyAppleIDController *)v7 navigationController];
  v3 = [(UINavigationController *)v2 topViewController];
  [(BuddyAppleIDController *)v7 setAuthAttemptLandingViewController:v3];

  location[0] = [[BuddyAppleIDSpinnerPage alloc] initWithAccountMode:[(BuddyAppleIDController *)v7 operationType]];
  [location[0] setDelegate:v7];
  [(BuddyAppleIDController *)v7 _loadSecurityUpgradeUI];
  v4 = location[0];
  objc_storeStrong(location, 0);
  return v4;
}

- (id)silentUpgradeViewControllerWithLoginContext:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = [[BuddyAppleIDSpinnerPage alloc] initForSilentAuthentication];
  [v13 setDelegate:v15];
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_10013C074;
  v9 = &unk_10032B838;
  v10 = v15;
  v11 = location[0];
  v12 = objc_retainBlock(&v5);
  [(BuddyAppleIDController *)v15 _setAppearanceHandler:v12 forSpinnerPage:v13];
  v3 = v13;
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  return v3;
}

- (id)signInViewController
{
  v75 = self;
  location[1] = a2;
  location[0] = _BYLoggingFacility();
  v73 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = location[0];
    v3 = v73;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v2, v3, "Showing sign in UI", buf, 2u);
  }

  objc_storeStrong(location, 0);
  [(BuddyAppleIDController *)v75 setOperationType:1];
  v4 = [(BuddyAppleIDController *)v75 navigationController];
  v5 = [(BuddyAppleIDController *)v75 passcodeCacheManager];
  v6 = [(BuddyAppleIDController *)v75 featureFlags];
  v71 = [BuddyAppleIDSignInController federatedAuthSignInControllerInNavigationController:v4 mode:1 passcodeCacheManager:v5 featureFlags:v6];

  v7 = [(BuddyAppleIDController *)v75 existingAccountUsername];
  [v71 setUsername:v7];

  if ([(BuddyAppleIDController *)v75 existingAccountType]< 2)
  {
    [(BuddyAppleIDController *)v75 _setLogInOptionsForBuddyAppleIDAuthMode:1 signInController:v71];
  }

  v8 = +[NSBundle mainBundle];
  v9 = [(NSBundle *)v8 localizedStringForKey:@"DONT_HAVE_AN_APPLE_ID_OR_FORGOT_IT" value:&stru_10032F900 table:@"Localizable"];
  v65 = _NSConcreteStackBlock;
  v66 = -1073741824;
  v67 = 0;
  v68 = sub_10013CC08;
  v69 = &unk_10032B0D0;
  v70 = v75;
  [v71 setiForgotText:v9 handler:&v65];

  objc_initWeak(&from, v71);
  v10 = v71;
  v57 = _NSConcreteStackBlock;
  v58 = -1073741824;
  v59 = 0;
  v60 = sub_10013CD08;
  v61 = &unk_10032AFA8;
  objc_copyWeak(&v63, &from);
  v62 = v75;
  [v10 setAppearanceHandler:&v57];
  v11 = [BYAnalyticsEventAppleIDSignIn alloc];
  v12 = [(BuddyAppleIDController *)v75 analyticsManager];
  v56 = [v11 initWithAnalyticsManager:v12 context:2];

  v13 = [BuddyAppleIDSignInTask alloc];
  v14 = [(BuddyAppleIDController *)v75 featureFlags];
  v15 = +[BuddyAccountTools sharedBuddyAccountTools];
  v16 = [(BuddyAppleIDSignInTask *)v13 initWithFeatureFlags:v14 accountTools:v15];
  [(BuddyAppleIDController *)v75 setSignInTask:v16];

  LOBYTE(v14) = [(BuddyAppleIDController *)v75 _isRestore];
  v17 = [(BuddyAppleIDController *)v75 signInTask];
  [(BuddyAppleIDSignInTask *)v17 setRestoreFromBackupMode:v14 & 1];

  v18 = [(BuddyAppleIDController *)v75 featureFlags];
  LOBYTE(v17) = [(BuddyFeatureFlags *)v18 isUseCDPContextSecretInsteadOfSBDSecretEnabled];

  if (v17)
  {
    oslog = _BYLoggingFacility();
    v54 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [(BuddyAppleIDController *)v75 passcodeCacheManager];
      v20 = [(BuddyAppleIDController *)v75 signInTask];
      sub_10011A49C(v76, "[BuddyAppleIDController signInViewController]", v19, v20);
      _os_log_impl(&_mh_execute_header, oslog, v54, "%s: Setting cache manager %@ on sign in task %@", v76, 0x20u);
    }

    objc_storeStrong(&oslog, 0);
    v21 = [(BuddyAppleIDController *)v75 passcodeCacheManager];
    v22 = [(BuddyAppleIDController *)v75 signInTask];
    [(BuddyAppleIDSignInTask *)v22 setCacheManager:v21];
  }

  v45 = _NSConcreteStackBlock;
  v46 = -1073741824;
  v47 = 0;
  v48 = sub_10013CD6C;
  v49 = &unk_10032D638;
  objc_copyWeak(&v52, &from);
  v50 = v75;
  v51 = v56;
  v53 = objc_retainBlock(&v45);
  v23 = [(BuddyAppleIDController *)v75 signInTask];
  objc_initWeak(&v44, v23);

  v24 = v71;
  v36 = _NSConcreteStackBlock;
  v37 = -1073741824;
  v38 = 0;
  v39 = sub_10013D844;
  v40 = &unk_10032D688;
  objc_copyWeak(&v42, &from);
  objc_copyWeak(&v43, &v44);
  v41 = v53;
  [v24 setHandler:&v36];
  v25 = v71;
  v29 = _NSConcreteStackBlock;
  v30 = -1073741824;
  v31 = 0;
  v32 = sub_10013DB00;
  v33 = &unk_10032D660;
  v34 = v53;
  objc_copyWeak(&v35, &v44);
  [v25 setProximityLoginHandler:&v29];
  v26 = v71;
  v27 = v71;
  objc_destroyWeak(&v35);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v41, 0);
  objc_destroyWeak(&v43);
  objc_destroyWeak(&v42);
  objc_destroyWeak(&v44);
  objc_storeStrong(&v53, 0);
  objc_storeStrong(&v51, 0);
  objc_storeStrong(&v50, 0);
  objc_destroyWeak(&v52);
  objc_storeStrong(&v56, 0);
  objc_storeStrong(&v62, 0);
  objc_destroyWeak(&v63);
  objc_destroyWeak(&from);
  objc_storeStrong(&v70, 0);
  objc_storeStrong(&v71, 0);
  return v26;
}

- (id)signInViewControllerForRestore
{
  v75 = self;
  location[1] = a2;
  [(BuddyAppleIDController *)self setOperationType:2];
  location[0] = _BYLoggingFacility();
  v73 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = location[0];
    v3 = v73;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v2, v3, "Show Restore from iCloud Sign In", buf, 2u);
  }

  objc_storeStrong(location, 0);
  objc_initWeak(&from, v75);
  v4 = [(BuddyAppleIDController *)v75 navigationController];
  v5 = [(BuddyAppleIDController *)v75 passcodeCacheManager];
  v6 = [(BuddyAppleIDController *)v75 featureFlags];
  v70 = [BuddyAppleIDSignInController federatedAuthSignInControllerInNavigationController:v4 mode:5 passcodeCacheManager:v5 featureFlags:v6];

  v7 = [(BuddyAppleIDController *)v75 existingAccountUsername];
  [v70 setUsername:v7];

  v8 = v70;
  v9 = +[NSBundle mainBundle];
  v10 = [(NSBundle *)v9 localizedStringForKey:@"FORGOT_PASSWORD_QUESTION" value:&stru_10032F900 table:@"Localizable"];
  v64 = _NSConcreteStackBlock;
  v65 = -1073741824;
  v66 = 0;
  v67 = sub_10013E58C;
  v68 = &unk_10032AF58;
  objc_copyWeak(&v69, &from);
  [v8 setiForgotText:v10 handler:&v64];

  objc_initWeak(&v63, v70);
  v11 = v70;
  v56 = _NSConcreteStackBlock;
  v57 = -1073741824;
  v58 = 0;
  v59 = sub_10013E648;
  v60 = &unk_10032D6B0;
  objc_copyWeak(&v61, &v63);
  objc_copyWeak(&v62, &from);
  [v11 setAppearanceHandler:&v56];
  [(BuddyAppleIDController *)v75 _setLogInOptionsForBuddyAppleIDAuthMode:5 signInController:v70];
  v48 = _NSConcreteStackBlock;
  v49 = -1073741824;
  v50 = 0;
  v51 = sub_10013E728;
  v52 = &unk_10032D728;
  objc_copyWeak(&v54, &v63);
  v53 = v75;
  v55 = objc_retainBlock(&v48);
  v12 = [BuddyAppleIDSignInTask alloc];
  v13 = [(BuddyAppleIDController *)v75 featureFlags];
  v14 = +[BuddyAccountTools sharedBuddyAccountTools];
  v15 = [(BuddyAppleIDSignInTask *)v12 initWithFeatureFlags:v13 accountTools:v14];
  [(BuddyAppleIDController *)v75 setSignInTask:v15];

  v16 = [(BuddyAppleIDController *)v75 signInTask];
  [(BuddyAppleIDSignInTask *)v16 setSkipDataclassEnablement:1];

  v17 = [(BuddyAppleIDController *)v75 signInTask];
  [(BuddyAppleIDSignInTask *)v17 setMakeStoreServiceActive:0];

  LOBYTE(v17) = [(BuddyAppleIDController *)v75 _isRestore];
  v18 = [(BuddyAppleIDController *)v75 signInTask];
  [(BuddyAppleIDSignInTask *)v18 setRestoreFromBackupMode:v17 & 1];

  v19 = [(BuddyAppleIDController *)v75 featureFlags];
  LOBYTE(v18) = [(BuddyFeatureFlags *)v19 isUseCDPContextSecretInsteadOfSBDSecretEnabled];

  if (v18)
  {
    oslog = _BYLoggingFacility();
    v46 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(BuddyAppleIDController *)v75 passcodeCacheManager];
      v21 = [(BuddyAppleIDController *)v75 signInTask];
      sub_10011A49C(v76, "[BuddyAppleIDController signInViewControllerForRestore]", v20, v21);
      _os_log_impl(&_mh_execute_header, oslog, v46, "%s: Setting cache manager %@ on sign in task %@", v76, 0x20u);
    }

    objc_storeStrong(&oslog, 0);
    v22 = [(BuddyAppleIDController *)v75 passcodeCacheManager];
    v23 = [(BuddyAppleIDController *)v75 signInTask];
    [(BuddyAppleIDSignInTask *)v23 setCacheManager:v22];
  }

  v24 = [(BuddyAppleIDController *)v75 signInTask];
  objc_initWeak(&v45, v24);

  v25 = v70;
  v37 = _NSConcreteStackBlock;
  v38 = -1073741824;
  v39 = 0;
  v40 = sub_10013F1A4;
  v41 = &unk_10032D688;
  objc_copyWeak(&v43, &v63);
  objc_copyWeak(&v44, &v45);
  v42 = v55;
  [v25 setHandler:&v37];
  v26 = v70;
  v30 = _NSConcreteStackBlock;
  v31 = -1073741824;
  v32 = 0;
  v33 = sub_10013F460;
  v34 = &unk_10032D660;
  v35 = v55;
  objc_copyWeak(&v36, &v45);
  [v26 setProximityLoginHandler:&v30];
  v27 = v70;
  v28 = v70;
  objc_destroyWeak(&v36);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v42, 0);
  objc_destroyWeak(&v44);
  objc_destroyWeak(&v43);
  objc_destroyWeak(&v45);
  objc_storeStrong(&v55, 0);
  objc_storeStrong(&v53, 0);
  objc_destroyWeak(&v54);
  objc_destroyWeak(&v62);
  objc_destroyWeak(&v61);
  objc_destroyWeak(&v63);
  objc_destroyWeak(&v69);
  objc_storeStrong(&v70, 0);
  objc_destroyWeak(&from);
  return v27;
}

- (BOOL)shouldAllowStartOver
{
  location[2] = self;
  location[1] = a2;
  v2 = [(BuddyAppleIDController *)self navigationController];
  location[0] = [(UINavigationController *)v2 topViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) == 0 || ([location[0] enabled] & 1) != 0;
  }

  objc_storeStrong(location, 0);
  return v5;
}

- (void)flowItemCancelled:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)flowItemDone:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)flowItemDone:(id)a3 nextItem:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [(BuddyAppleIDController *)v7 flowItemDone:location[0]];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)flowItemDone:(id)a3 nextItemClass:(Class)a4
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BuddyAppleIDController *)v6 flowItemDone:location[0], a4];
  objc_storeStrong(location, 0);
}

- (BOOL)controllerNeedsToRunForClass:(Class)a3
{
  v3 = [(BuddyAppleIDController *)self flowItemDelegate];
  v4 = [(BFFFlowItemDelegate *)v3 controllerNeedsToRunForClass:a3];

  return v4 & 1;
}

- (BOOL)isFlowItemOnTop:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyAppleIDController *)v7 flowItemDelegate];
  v4 = [(BFFFlowItemDelegate *)v3 isFlowItemOnTop:location[0]];

  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (id)popToBuddyControllerWithClass:(Class)a3 animated:(BOOL)a4
{
  v7 = a4;
  v4 = [(BuddyAppleIDController *)self flowItemDelegate];
  v5 = [(BFFFlowItemDelegate *)v4 popToBuddyControllerWithClass:a3 animated:v7];

  return v5;
}

- (id)popToBuddyControllerWithClass:(Class)a3 withOffset:(unint64_t)a4 animated:(BOOL)a5
{
  v8 = a5;
  v5 = [(BuddyAppleIDController *)self flowItemDelegate];
  v6 = [(BFFFlowItemDelegate *)v5 popToBuddyControllerWithClass:a3 withOffset:a4 animated:v8];

  return v6;
}

- (void)pushFlowItem:(id)a3 animated:(BOOL)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = a4;
  v5 = [(BuddyAppleIDController *)v8 flowItemDelegate];
  [(BFFFlowItemDelegate *)v5 pushFlowItem:location[0] animated:v6];

  objc_storeStrong(location, 0);
}

- (void)pushFlowItem:(id)a3 inFlow:(id)a4 animated:(BOOL)a5
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8 = a5;
  v7 = [(BuddyAppleIDController *)v11 flowItemDelegate];
  [(BFFFlowItemDelegate *)v7 pushFlowItem:location[0] inFlow:v9 animated:v8];

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)pushFlowItem:(id)a3 inFlow:(id)a4 withExtendedInitialization:(BOOL)a5 animated:(BOOL)a6
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = a6;
  v9 = [(BuddyAppleIDController *)v13 flowItemDelegate];
  [(BFFFlowItemDelegate *)v9 pushFlowItem:location[0] inFlow:v11 withExtendedInitialization:a5 animated:v10];

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)pushFlowItem:(id)a3 inFlow:(id)a4 withExtendedInitialization:(BOOL)a5 animated:(BOOL)a6 willPushFlowItem:(id)a7
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14 = a5;
  v13 = a6;
  v12 = 0;
  objc_storeStrong(&v12, a7);
  v11 = [(BuddyAppleIDController *)v17 flowItemDelegate];
  [(BFFFlowItemDelegate *)v11 pushFlowItem:location[0] inFlow:v15 withExtendedInitialization:v14 animated:v13 willPushFlowItem:v12];

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)removeViewControllersOnNextPush:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyAppleIDController *)v5 flowItemDelegate];
  [(BFFFlowItemDelegate *)v3 removeViewControllersOnNextPush:location[0]];

  objc_storeStrong(location, 0);
}

- (void)markFlowItemDone:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyAppleIDController *)v5 flowItemDelegate];
  [(BFFFlowItemDelegate *)v3 markFlowItemDone:location[0]];

  objc_storeStrong(location, 0);
}

- (void)buddyAppleIDSpinnerPageDidAppear:(id)a3
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog = _BYLoggingFacility();
  v19 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100071CBC(buf, location[0]);
    _os_log_impl(&_mh_execute_header, oslog, v19, "Spinner page %{public}@ appeared", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v18 = [NSValue valueWithPointer:location[0]];
  v3 = [(BuddyAppleIDController *)v22 spinnerAppearanceHandlers];
  v17 = [(NSMutableDictionary *)v3 objectForKey:v18];

  if (v17)
  {
    v16 = _BYLoggingFacility();
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v16;
      v5 = v15;
      sub_10006AA68(v14);
      _os_log_impl(&_mh_execute_header, v4, v5, "Spinner page matched!", v14, 2u);
    }

    objc_storeStrong(&v16, 0);
    v6 = [(BuddyAppleIDController *)v22 spinnerAppearanceHandlers];
    [(NSMutableDictionary *)v6 removeObjectForKey:v18];

    (*(v17 + 2))();
  }

  else
  {
    v13 = _BYLoggingFacility();
    v12 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v13;
      v8 = v12;
      sub_10006AA68(v11);
      _os_log_impl(&_mh_execute_header, v7, v8, "Spinner page had no handler!", v11, 2u);
    }

    objc_storeStrong(&v13, 0);
    v9 = [(BuddyAppleIDController *)v22 navigationController];
    v10 = [(UINavigationController *)v9 popViewControllerAnimated:1];
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  if ([(BuddyAppleIDController *)v9 countOfResponsibilityViewControllerPushSessions])
  {
    v6 = [(BuddyAppleIDController *)v9 responsibilityViewControllers];
    [(NSPointerArray *)v6 addPointer:v7];
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_isRestore
{
  v2 = [(BuddyAppleIDController *)self operationType];
  if (v2 < 2)
  {
    goto LABEL_4;
  }

  if (v2 == 2)
  {
    v4 = 1;
    return v4 & 1;
  }

  if (v2 - 3 <= 1)
  {
LABEL_4:
    v4 = 0;
  }

  return v4 & 1;
}

- (void)_showTwoAccountsiTunesSignInController
{
  v25 = self;
  v24[1] = a2;
  v2 = [(BuddyAppleIDController *)self navigationController];
  v3 = [(BuddyAppleIDController *)v25 passcodeCacheManager];
  v4 = [(BuddyAppleIDController *)v25 featureFlags];
  v24[0] = [BuddyAppleIDSignInController federatedAuthSignInControllerInNavigationController:v2 mode:3 passcodeCacheManager:v3 featureFlags:v4];

  v5 = [v24[0] navigationItem];
  [v5 setHidesBackButton:1];

  if ([(BuddyAppleIDController *)v25 existingAccountType]== 2)
  {
    v6 = [(BuddyAppleIDController *)v25 existingAccountUsername];
    [v24[0] setUsername:v6];
  }

  objc_initWeak(&location, v24[0]);
  v7 = v24[0];
  v16 = _NSConcreteStackBlock;
  v17 = -1073741824;
  v18 = 0;
  v19 = sub_100140370;
  v20 = &unk_10032AFA8;
  objc_copyWeak(&v22, &location);
  v21 = v25;
  [v7 setAppearanceHandler:&v16];
  v8 = v24[0];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1001404E8;
  v13 = &unk_10032D2E0;
  v14 = v25;
  objc_copyWeak(v15, &location);
  [v8 setHandler:&v10];
  v9 = [(BuddyAppleIDController *)v25 navigationController:v10];
  [(UINavigationController *)v9 pushViewController:v24[0] animated:1];

  objc_destroyWeak(v15);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v21, 0);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
  objc_storeStrong(v24, 0);
}

- (void)_showProximityiCloudSignInController:(id)a3
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyAppleIDController *)v18 navigationController];
  v4 = [(BuddyAppleIDController *)v18 signInTask];
  [(BuddyAppleIDSignInTask *)v4 setNavigationController:v3];

  v16 = _BYLoggingFacility();
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v16;
    v6 = v15;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v5, v6, "Starting proximity authentication.", buf, 2u);
  }

  objc_storeStrong(&v16, 0);
  v7 = [(BuddyAppleIDController *)v18 signInTask];
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_10014165C;
  v12 = &unk_10032D598;
  v13 = location[0];
  [(BuddyAppleIDSignInTask *)v7 authenticateWithProximity:&v8];

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)_showTwoAccountsiCloudSignInController
{
  v24 = self;
  v23[1] = a2;
  [(BuddyAppleIDController *)self setOperationType:1];
  v2 = [(BuddyAppleIDController *)v24 navigationController];
  v3 = [(BuddyAppleIDController *)v24 passcodeCacheManager];
  v4 = [(BuddyAppleIDController *)v24 featureFlags];
  v23[0] = [BuddyAppleIDSignInController federatedAuthSignInControllerInNavigationController:v2 mode:2 passcodeCacheManager:v3 featureFlags:v4];

  v5 = [(BuddyAppleIDController *)v24 existingAccountUsername];
  [v23[0] setUsername:v5];

  objc_initWeak(&location, v23[0]);
  v6 = v23[0];
  v15 = _NSConcreteStackBlock;
  v16 = -1073741824;
  v17 = 0;
  v18 = sub_100141BB4;
  v19 = &unk_10032AFA8;
  objc_copyWeak(&v21, &location);
  v20 = v24;
  [v6 setAppearanceHandler:&v15];
  v7 = v23[0];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100141C18;
  v12 = &unk_10032D2E0;
  v13 = v24;
  objc_copyWeak(v14, &location);
  [v7 setHandler:&v9];
  v8 = [(BuddyAppleIDController *)v24 navigationController:v9];
  [(UINavigationController *)v8 pushViewController:v23[0] animated:1];

  [(BuddyAppleIDController *)v24 setTwoAccountsiCloudSignInController:v23[0]];
  objc_destroyWeak(v14);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v20, 0);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
  objc_storeStrong(v23, 0);
}

- (void)_appleIDControllerCompletedShouldProceed:(BOOL)a3 error:(id)a4
{
  v36 = self;
  v35 = a2;
  v34 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v4 = [location domain];
  v5 = 1;
  if ([v4 isEqualToString:AKAppleIDAuthenticationErrorDomain])
  {
    v5 = [location code] != -7003;
  }

  if (v5)
  {
    v32 = _BYLoggingFacility();
    v31 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      if (v34)
      {
        v6 = @"YASE";
      }

      else
      {
        v6 = @"NERP";
      }

      v29 = 0;
      v27 = 0;
      if (_BYIsInternalInstall())
      {
        v7 = location;
      }

      else if (location)
      {
        v30 = [location domain];
        v29 = 1;
        v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v30, [location code]);
        v28 = v7;
        v27 = 1;
      }

      else
      {
        v7 = 0;
      }

      sub_100073058(buf, v6, v7);
      _os_log_impl(&_mh_execute_header, v32, v31, "Auth finished, shouldProceed = %{public}@, error = %{public}@", buf, 0x16u);
      if (v27)
      {
      }

      if (v29)
      {
      }
    }

    objc_storeStrong(&v32, 0);
  }

  v8 = +[BYAppleIDAccountsManager sharedManager];
  [v8 clearStoredLoginContext];

  if (v34)
  {
    v12 = [(BuddyAppleIDController *)v36 delegate];
    [(BuddyAppleIDControllerDelegate *)v12 appleIDControllerFinished:v36];
  }

  else if ((BYSetupAssistantHasCompletedInitialRun() & 1) == 0)
  {
    v25 = objc_opt_new();
    v24 = [v25 aa_primaryAppleAccount];
    if (v24)
    {
      oslog = _BYLoggingFacility();
      v22 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v24 aa_primaryEmail];
        sub_10006AE18(v37, v21);
        _os_log_impl(&_mh_execute_header, oslog, v22, "Removing primary account '%@' due to failure", v37, 0xCu);

        objc_storeStrong(&v21, 0);
      }

      objc_storeStrong(&oslog, 0);
    }

    v9 = [(BuddyAppleIDController *)v36 navigationController];
    v10 = [(UINavigationController *)v9 topViewController];
    v20 = [(UIViewController *)v10 view];

    [v20 setUserInteractionEnabled:0];
    v11 = +[BuddyAccountTools sharedBuddyAccountTools];
    v13 = _NSConcreteStackBlock;
    v14 = -1073741824;
    v15 = 0;
    v16 = sub_100143018;
    v17 = &unk_10032D7F0;
    v18 = v20;
    v19 = v36;
    [v11 removePrimaryAccountCompletion:&v13];

    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v25, 0);
  }

  else
  {
    [(BuddyAppleIDController *)v36 _popBackToAuthAttemptLandingPage];
  }

  objc_storeStrong(&location, 0);
}

- (void)_authCompletedShouldProceed:(BOOL)a3 error:(id)a4
{
  v29 = self;
  v28 = a2;
  v27 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_100143424(buf, "[BuddyAppleIDController _authCompletedShouldProceed:error:]", v27, location);
    _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "%s shouldProceed = %d, error = %@", buf, 0x1Cu);
  }

  objc_storeStrong(&oslog, 0);
  v4 = +[BYAppleIDAccountsManager sharedManager];
  [v4 clearStoredLoginContext];

  if (v27)
  {
    v5 = [(BuddyAppleIDController *)v29 delegate];
    [(BuddyAppleIDControllerDelegate *)v5 appleIDControllerFinished:v29];
  }

  else
  {
    v6 = [(BuddyAppleIDController *)v29 delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(BuddyAppleIDController *)v29 delegate];
      [(BuddyAppleIDControllerDelegate *)v8 appleIDController:v29 failedWithError:location];
    }

    else
    {
      v9 = [(BuddyAppleIDController *)v29 authAttemptLandingViewController];

      if (v9)
      {
        v10 = [(BuddyAppleIDController *)v29 navigationController];
        v11 = [(UINavigationController *)v10 viewControllers];
        v12 = [(BuddyAppleIDController *)v29 authAttemptLandingViewController];
        v23 = 0;
        v21 = 0;
        v19 = 0;
        v17 = 0;
        v13 = 0;
        if ([(NSArray *)v11 containsObject:v12])
        {
          v24 = [(BuddyAppleIDController *)v29 navigationController];
          v23 = 1;
          v22 = [(UINavigationController *)v24 viewControllers];
          v21 = 1;
          v20 = [(NSArray *)v22 lastObject];
          v19 = 1;
          v18 = [(BuddyAppleIDController *)v29 authAttemptLandingViewController];
          v17 = 1;
          v13 = v20 != v18;
        }

        if (v17)
        {
        }

        if (v19)
        {
        }

        if (v21)
        {
        }

        if (v23)
        {
        }

        if (v13)
        {
          v14 = [(BuddyAppleIDController *)v29 navigationController];
          v15 = [(BuddyAppleIDController *)v29 authAttemptLandingViewController];
          v16 = [(UINavigationController *)v14 popToViewController:v15 animated:1];
        }

        [(BuddyAppleIDController *)v29 setAuthAttemptLandingViewController:0];
      }
    }
  }

  objc_storeStrong(&location, 0);
}

- (void)_signInSucceeded
{
  v12 = self;
  v11[1] = a2;
  if ([(BuddyAppleIDController *)self operationType]== 1)
  {
    v2 = [(BuddyAppleIDController *)v12 runState];
    v3 = [(BYRunState *)v2 hasCompletedInitialRun]^ 1;

    if (v3)
    {
      v4 = dispatch_get_global_queue(25, 0);
      block = _NSConcreteStackBlock;
      v7 = -1073741824;
      v8 = 0;
      v9 = sub_1001435A4;
      v10 = &unk_10032B0D0;
      v11[0] = v12;
      dispatch_async(v4, &block);

      objc_storeStrong(v11, 0);
    }
  }

  v5 = [(BuddyAppleIDController *)v12 delegate];
  [(BuddyAppleIDControllerDelegate *)v5 appleIDControllerFinished:v12];
}

- (void)_signInFailedWithError:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyAppleIDController *)v11 delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(BuddyAppleIDController *)v11 delegate];
    [(BuddyAppleIDControllerDelegate *)v5 appleIDController:v11 failedWithError:location[0]];
  }

  else
  {
    v6 = [(BuddyAppleIDController *)v11 authAttemptLandingViewController];

    if (v6)
    {
      v7 = [(BuddyAppleIDController *)v11 navigationController];
      v8 = [(BuddyAppleIDController *)v11 authAttemptLandingViewController];
      v9 = [(UINavigationController *)v7 popToViewController:v8 animated:1];

      [(BuddyAppleIDController *)v11 setAuthAttemptLandingViewController:0];
    }
  }

  objc_storeStrong(location, 0);
}

- (void)_createMeCard
{
  v33[2] = self;
  v33[1] = a2;
  v33[0] = objc_alloc_init(CNContactStore);
  location = _BYLoggingFacility();
  v31 = 16;
  if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
  {
    v2 = location;
    v3 = v31;
    sub_10006AA68(buf);
    _os_log_error_impl(&_mh_execute_header, v2, v3, "Creating Me card...", buf, 2u);
  }

  objc_storeStrong(&location, 0);
  if (v33[0])
  {
    v29 = objc_alloc_init(ACAccountStore);
    v28 = [v29 aa_primaryAppleAccount];
    v27 = 0;
    v4 = v33[0];
    v5 = [v28 aa_firstName];
    v6 = [v28 aa_lastName];
    v7 = [v28 aa_primaryEmail];
    obj = 0;
    LOBYTE(v4) = [v4 setBestMeIfNeededForGivenName:v5 familyName:v6 email:v7 error:&obj];
    objc_storeStrong(&v27, obj);

    v26 = v4 & 1;
    if (v4)
    {
      oslog = _BYLoggingFacility();
      v23 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v8 = oslog;
        v9 = v23;
        sub_10006AA68(v22);
        _os_log_impl(&_mh_execute_header, v8, v9, "Successfully created Me card", v22, 2u);
      }

      objc_storeStrong(&oslog, 0);
    }

    else if (v27)
    {
      v21 = _BYLoggingFacility();
      v20 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v18 = 0;
        v16 = 0;
        if (_BYIsInternalInstall())
        {
          v10 = v27;
        }

        else if (v27)
        {
          v19 = [v27 domain];
          v18 = 1;
          v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v19, [v27 code]);
          v17 = v10;
          v16 = 1;
        }

        else
        {
          v10 = 0;
        }

        sub_100071CBC(v34, v10);
        _os_log_error_impl(&_mh_execute_header, v21, v20, "Failed to create Me card: %{public}@", v34, 0xCu);
        if (v16)
        {
        }

        if (v18)
        {
        }
      }

      objc_storeStrong(&v21, 0);
    }

    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v29, 0);
  }

  else
  {
    v15 = _BYLoggingFacility();
    v14 = 16;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v11 = v15;
      v12 = v14;
      sub_10006AA68(v13);
      _os_log_error_impl(&_mh_execute_header, v11, v12, "Failed to create contact store to create Me card", v13, 2u);
    }

    objc_storeStrong(&v15, 0);
  }

  objc_storeStrong(v33, 0);
}

- (void)_nameDevice
{
  v16[2] = self;
  v16[1] = a2;
  v16[0] = objc_alloc_init(ACAccountStore);
  v15 = [v16[0] aa_primaryAppleAccount];
  v14 = [v15 aa_firstName];
  if ((BYSetupAssistantHasCompletedInitialRun() & 1) == 0 && [v14 length])
  {
    v18 = MGCopyAnswer();
    v13 = v18;
    if (lockdown_connect())
    {
      v17 = MGCopyAnswer();
      v11 = v17;
      if ([v13 length] && (objc_msgSend(v13, "isEqualToString:", v11) & 1) != 0)
      {
        v10 = v14;
        if ([v14 _containsCJKScriptsOnly])
        {
          location = [v15 aa_lastName];
          if ([location length] && (objc_msgSend(location, "_containsCJKScriptsOnly") & 1) != 0)
          {
            v2 = [location stringByAppendingString:v14];
            v3 = v10;
            v10 = v2;
          }

          objc_storeStrong(&location, 0);
        }

        v4 = +[NSBundle mainBundle];
        v5 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"DEVICE_NAME"];
        v6 = [(NSBundle *)v4 localizedStringForKey:v5 value:&stru_10032F900 table:@"Localizable"];
        v8 = [NSString localizedStringWithFormat:v6, v10];

        oslog = _BYLoggingFacility();
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          sub_10006AE18(buf, v8);
          _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Setting device name to '%@'", buf, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
        lockdown_set_value();
        objc_storeStrong(&v8, 0);
        objc_storeStrong(&v10, 0);
      }

      lockdown_disconnect();
      objc_storeStrong(&v11, 0);
    }

    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(v16, 0);
}

- (void)_beginPostUpgradeAppleIDLoginWithUsername:(id)a3 password:(id)a4 signInController:(id)a5
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7 = 0;
  objc_storeStrong(&v7, a5);
  [(BuddyAppleIDController *)v10 _beginPostUpgradeAppleIDLoginWithUsername:location[0] password:v8 continuationKey:0 signInController:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)_beginPostUpgradeAppleIDLoginWithUsername:(id)a3 password:(id)a4 continuationKey:(id)a5 signInController:(id)a6
{
  v30 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v28 = 0;
  objc_storeStrong(&v28, a4);
  v27 = 0;
  objc_storeStrong(&v27, a5);
  v26 = 0;
  objc_storeStrong(&v26, a6);
  if (location[0] && (v28 || v27))
  {
    v9 = [(BuddyAppleIDController *)v30 navigationController];
    v10 = [(BuddyAppleIDController *)v30 passcodeCacheManager];
    v11 = [BuddyAppleIDAuthManager managerWithNavigationController:v9 passcodeCacheManager:v10];
    [(BuddyAppleIDController *)v30 setAuthManager:v11];

    v12 = [(BuddyAppleIDController *)v30 authManager];
    [(BuddyAppleIDAuthManager *)v12 setShouldOfferSecurityUpgrade:1];

    v13 = [(BuddyAppleIDController *)v30 authManager];
    v14 = [(BuddyAppleIDController *)v30 accountToUpgrade];
    [(BuddyAppleIDAuthManager *)v13 setAccountToUpgrade:v14];

    v15 = [(BuddyAppleIDController *)v30 authManager];
    [(BuddyAppleIDAuthManager *)v15 setHasContinuationKey:v27 != 0];

    v16 = [(BuddyAppleIDController *)v30 authManager];
    v17 = v26;
    v18 = location[0];
    v19 = v28;
    v20 = _NSConcreteStackBlock;
    v21 = -1073741824;
    v22 = 0;
    v23 = sub_1001441EC;
    v24 = &unk_10032D598;
    v25 = v30;
    [(BuddyAppleIDAuthManager *)v16 authenticateWithSignInController:v17 username:v18 password:v19 completion:&v20];

    objc_storeStrong(&v25, 0);
  }

  else
  {
    [(BuddyAppleIDController *)v30 _authCompletedShouldProceed:1 error:0];
  }

  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

- (void)_upgradeAccountWithAuthenticationResults:(id)a3 completion:(id)a4
{
  v45 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v43 = 0;
  objc_storeStrong(&v43, a4);
  v5 = [BuddyAppleIDSignInTask alloc];
  v6 = [(BuddyAppleIDController *)v45 featureFlags];
  v7 = +[BuddyAccountTools sharedBuddyAccountTools];
  v8 = [(BuddyAppleIDSignInTask *)v5 initWithFeatureFlags:v6 accountTools:v7];
  [(BuddyAppleIDController *)v45 setSignInTask:v8];

  v9 = [(BuddyAppleIDController *)v45 navigationController];
  v10 = [(BuddyAppleIDController *)v45 signInTask];
  [(BuddyAppleIDSignInTask *)v10 setNavigationController:v9];

  v11 = [(BuddyAppleIDController *)v45 signInTask];
  [(BuddyAppleIDSignInTask *)v11 setSkipDataclassEnablement:1];

  LOBYTE(v11) = [(BuddyAppleIDController *)v45 _isRestore];
  v12 = [(BuddyAppleIDController *)v45 signInTask];
  [(BuddyAppleIDSignInTask *)v12 setRestoreFromBackupMode:v11 & 1];

  v13 = [(BuddyAppleIDController *)v45 featureFlags];
  LOBYTE(v12) = [(BuddyFeatureFlags *)v13 isUseCDPContextSecretInsteadOfSBDSecretEnabled];

  if (v12)
  {
    oslog = _BYLoggingFacility();
    v41 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(BuddyAppleIDController *)v45 passcodeCacheManager];
      v15 = [(BuddyAppleIDController *)v45 signInTask];
      sub_10011A49C(buf, "[BuddyAppleIDController _upgradeAccountWithAuthenticationResults:completion:]", v14, v15);
      _os_log_impl(&_mh_execute_header, oslog, v41, "%s: Setting cache manager %@ on sign in task %@", buf, 0x20u);
    }

    objc_storeStrong(&oslog, 0);
    v16 = [(BuddyAppleIDController *)v45 passcodeCacheManager];
    v17 = [(BuddyAppleIDController *)v45 signInTask];
    [(BuddyAppleIDSignInTask *)v17 setCacheManager:v16];
  }

  v18 = [BuddyAppleIDSpinnerPage alloc];
  v40 = [(BuddyAppleIDSpinnerPage *)v18 initWithAccountMode:[(BuddyAppleIDController *)v45 operationType]];
  v19 = [(BuddyAppleIDController *)v45 navigationController];
  [(UINavigationController *)v19 pushViewController:v40 animated:1];

  v39 = _BYLoggingFacility();
  v38 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v39;
    v21 = v38;
    sub_10006AA68(v37);
    _os_log_impl(&_mh_execute_header, v20, v21, "Beginning sign-in...", v37, 2u);
  }

  objc_storeStrong(&v39, 0);
  v36 = [NSMutableArray arrayWithObject:AIDAServiceTypeCloud];
  v35 = +[ACAccountStore ams_sharedAccountStore];
  v22 = [location[0] objectForKeyedSubscript:AKAuthenticationAlternateDSIDKey];
  v23 = [v35 ams_activeiTunesAccount];
  v24 = [v23 aa_altDSID];
  v25 = [v22 isEqualToString:v24];

  if (v25)
  {
    [v36 addObject:AIDAServiceTypeStore];
  }

  [(BuddyAppleIDController *)v45 _willStartResponsibilityViewControllerPushSession];
  v26 = [(BuddyAppleIDController *)v45 signInTask];
  v27 = location[0];
  v28 = _NSConcreteStackBlock;
  v29 = -1073741824;
  v30 = 0;
  v31 = sub_100144AEC;
  v32 = &unk_10032D860;
  v33 = v45;
  v34 = v43;
  [(BuddyAppleIDSignInTask *)v26 signInToServices:v36 authenticationResults:v27 completion:&v28];

  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(location, 0);
}

- (void)_loadSecurityUpgradeUI
{
  v10 = self;
  v9[1] = a2;
  [(BuddyAppleIDController *)self setAssumeResponsibilityForRUIPage:1];
  [(BuddyAppleIDController *)v10 _setupAccountForSecurityUpgrade];
  v9[0] = [(BuddyAppleIDController *)v10 _authenticationContextForSecurityUpgrade];
  location = objc_alloc_init(AKAppleIDAuthenticationController);
  v2 = _NSConcreteStackBlock;
  v3 = -1073741824;
  v4 = 0;
  v5 = sub_100144F18;
  v6 = &unk_10032D598;
  v7 = v10;
  [location authenticateWithContext:v9[0] completion:&v2];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v9, 0);
}

- (id)_authenticationContextForSecurityUpgrade
{
  v17 = self;
  v16[1] = a2;
  v16[0] = objc_alloc_init(AKAppleIDAuthenticationInAppContext);
  v2 = [(BuddyAppleIDController *)v17 navigationController];
  [v16[0] setPresentingViewController:v2];

  v3 = +[AKAccountManager sharedInstance];
  v4 = [(BuddyAppleIDController *)v17 accountToUpgrade];
  v5 = [(AKAccountManager *)v3 altDSIDForAccount:v4];
  [v16[0] setAltDSID:v5];

  v6 = [(BuddyAppleIDController *)v17 accountToUpgrade];
  v7 = [(ACAccount *)v6 username];
  [v16[0] setUsername:v7];

  [v16[0] setIsUsernameEditable:0];
  [v16[0] setAppProvidedContext:AKAppleIDAuthenticationAppProvidedContextAuthless];
  [v16[0] setNeedsSecurityUpgradeUI:1];
  [v16[0] setShouldOfferSecurityUpgrade:1];
  [v16[0] setForceInlinePresentation:1];
  if ([(BuddyAppleIDController *)v17 accountToUpgradeIsPrimary])
  {
    if ((+[BYWarranty shouldDisplay]& 1) != 0)
    {
      v8 = [v16[0] httpHeadersForRemoteUI];
      v9 = [v8 mutableCopy];
      v10 = v9;
      v13 = 0;
      if (!v9)
      {
        v9 = objc_opt_new();
        v14 = v9;
        v13 = 1;
      }

      location = v9;
      if (v13)
      {
      }

      [location setObject:@"true" forKey:@"X-MMe-Show-Warranty"];
      [v16[0] setHttpHeadersForRemoteUI:location];
      objc_storeStrong(&location, 0);
    }

    [v16[0] setAnticipateEscrowAttempt:1];
    [v16[0] setShouldRequestConfigurationInfo:1];
  }

  v11 = v16[0];
  objc_storeStrong(v16, 0);
  return v11;
}

- (void)_setupAccountForSecurityUpgrade
{
  v11 = self;
  v10[1] = a2;
  v10[0] = [(BuddyAppleIDController *)self accountToUpgrade];
  v2 = +[AKAccountManager sharedInstance];
  v9 = [(AKAccountManager *)v2 altDSIDForAccount:v10[0]];

  v3 = +[AKAccountManager sharedInstance];
  location = [(AKAccountManager *)v3 primaryAuthKitAccount];

  v4 = +[AKAccountManager sharedInstance];
  v5 = [(AKAccountManager *)v4 altDSIDForAccount:location];
  -[BuddyAppleIDController setAccountToUpgradeIsPrimary:](v11, "setAccountToUpgradeIsPrimary:", [v9 isEqualToString:v5] & 1);

  if ([(BuddyAppleIDController *)v11 accountToUpgradeIsPrimary])
  {
    v6 = +[BuddyAccountTools sharedBuddyAccountTools];
    v7 = [v6 primaryAccount];
    [(BuddyAppleIDController *)v11 setAccountToUpgrade:v7];
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(v10, 0);
}

- (void)_showSpinnerPageWithIdentifier:(id)a3 handler:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = [(BuddyAppleIDController *)v13 navigationController];
  v5 = [v10 topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    (*(v11 + 2))();
  }

  else
  {
    v7 = [BuddyAppleIDSpinnerPage alloc];
    v8 = [(BuddyAppleIDSpinnerPage *)v7 initWithAccountMode:[(BuddyAppleIDController *)v13 operationType]];
    [(BuddyAppleIDController *)v13 _showSpinnerPage:v8 appearanceHandler:v11, v8];
    objc_storeStrong(&v9, 0);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)_showSpinnerPage:(id)a3 appearanceHandler:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v5 = [(BuddyAppleIDController *)v10 navigationController];
  v6 = [(UINavigationController *)v5 topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8[2]();
  }

  else
  {
    [(BuddyAppleIDController *)v10 _setAppearanceHandler:v8 forSpinnerPage:location[0]];
    [location[0] setSpinnerDelegate:v10];
    [(BuddyAppleIDController *)v10 _pushNextViewController:location[0]];
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)_pushNextViewController:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyAppleIDController *)v8 navigationController];
  v6 = [(UINavigationController *)v3 topViewController];

  if ((objc_opt_respondsToSelector() & 1) != 0 && ([(UIViewController *)v6 controllerAllowsNavigatingBack]& 1) == 0)
  {
    v4 = [location[0] navigationItem];
    [v4 setHidesBackButton:1];
  }

  v5 = [(BuddyAppleIDController *)v8 navigationController];
  [(UINavigationController *)v5 pushViewController:location[0] animated:1];

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)_setAppearanceHandler:(id)a3 forSpinnerPage:(id)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  if (location[0])
  {
    v5 = [(BuddyAppleIDController *)v14 spinnerAppearanceHandlers];
    v6 = v5 == 0;

    if (v6)
    {
      v7 = objc_alloc_init(NSMutableDictionary);
      [(BuddyAppleIDController *)v14 setSpinnerAppearanceHandlers:v7];
    }

    v10 = [NSValue valueWithPointer:v12];
    v8 = objc_retainBlock(location[0]);
    v9 = [(BuddyAppleIDController *)v14 spinnerAppearanceHandlers];
    [(NSMutableDictionary *)v9 setObject:v8 forKeyedSubscript:v10];

    [v12 setSpinnerDelegate:v14];
    objc_storeStrong(&v10, 0);
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)_popBackToAuthAttemptLandingPage
{
  v14 = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    v2 = [(BuddyAppleIDController *)v14 authAttemptLandingViewController];
    v3 = [(BuddyAppleIDController *)v14 navigationController];
    v4 = [(UINavigationController *)v3 topViewController];
    sub_100078180(buf, v2, v4);
    _os_log_debug_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEBUG, "Auth attempt landing = %@, top view controller = %@", buf, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  v5 = [(BuddyAppleIDController *)v14 authAttemptLandingViewController];

  if (v5)
  {
    v6 = [(BuddyAppleIDController *)v14 navigationController];
    v7 = [(UINavigationController *)v6 viewControllers];
    v8 = [(BuddyAppleIDController *)v14 authAttemptLandingViewController];
    v9 = [(NSArray *)v7 containsObject:v8];

    if (v9)
    {
      v10 = [(BuddyAppleIDController *)v14 navigationController];
      v11 = [(BuddyAppleIDController *)v14 authAttemptLandingViewController];
      v12 = [(UINavigationController *)v10 popToViewController:v11 animated:1];
    }

    [(BuddyAppleIDController *)v14 setAuthAttemptLandingViewController:0];
  }
}

- (void)_removeBackToViewControllerMatchingBlock:(id)a3 withOffset:(int64_t)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = a4;
  v13 = 0;
  v12 = objc_opt_new();
  v5 = [(BuddyAppleIDController *)v16 navigationController];
  v11 = [(UINavigationController *)v5 viewControllers];

  if ([v11 count] > v14)
  {
    for (i = [v11 count] - v14 - 1; i > 0; --i)
    {
      v6 = location[0];
      v7 = [v11 objectAtIndexedSubscript:i];
      LOBYTE(v6) = v6[2](v6, v7) ^ 1;

      if ((v6 & 1) == 0)
      {
        v13 = 1;
        break;
      }

      v8 = [v11 objectAtIndexedSubscript:i];
      [v12 addObject:v8];
    }

    if (v13)
    {
      v9 = [(BuddyAppleIDController *)v16 flowItemDelegate];
      [(BFFFlowItemDelegate *)v9 removeViewControllersOnNextPush:v12];
    }
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)_setLogInOptionsForBuddyAppleIDAuthMode:(int)a3 signInController:(id)a4
{
  v43 = self;
  v42 = a2;
  v41 = a3;
  objc_initWeak(&location, a4);
  v39 = v43;
  v38 = [(BuddyAppleIDController *)v43 hasProximityConnection];
  v37 = +[AKFeatureManager isProxAuthEnabled]& 1;
  v4 = 0;
  if ((v38 & 1) == 0)
  {
    v4 = v37;
  }

  v36 = v4;
  if (v41 == 1 || v41 == 5 || v41 == 4)
  {
    if (v41 == 1)
    {
      if (v36)
      {
        v5 = objc_loadWeakRetained(&location);
        v26 = _NSConcreteStackBlock;
        v27 = -1073741824;
        v28 = 0;
        v29 = sub_100146A24;
        v30 = &unk_10032D8B0;
        v31 = v39;
        objc_copyWeak(&v32, &location);
        [v5 setLoginOptionsConstructor:&v26];

        objc_destroyWeak(&v32);
        objc_storeStrong(&v31, 0);
      }

      else
      {
        oslog = _BYLoggingFacility();
        v24 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          sub_100075A38(v46, v41, [(BuddyAppleIDController *)v43 hasProximityConnection]);
          _os_log_impl(&_mh_execute_header, oslog, v24, "Not showing Apple ID Proximity Login for auth mode %i, in prox flow %i", v46, 0xEu);
        }

        objc_storeStrong(&oslog, 0);
        v6 = objc_loadWeakRetained(&location);
        v18 = _NSConcreteStackBlock;
        v19 = -1073741824;
        v20 = 0;
        v21 = sub_100147100;
        v22 = &unk_10032D8D8;
        v23 = v39;
        [v6 setLoginOptionsConstructor:&v18];

        objc_storeStrong(&v23, 0);
      }

      goto LABEL_27;
    }

    if ((v41 - 2) < 2)
    {
      goto LABEL_24;
    }

    if ((v41 - 4) < 2)
    {
      if (v36)
      {
        v7 = objc_loadWeakRetained(&location);
        v11 = _NSConcreteStackBlock;
        v12 = -1073741824;
        v13 = 0;
        v14 = sub_100147264;
        v15 = &unk_10032D8B0;
        v16 = v39;
        objc_copyWeak(&v17, &location);
        [v7 setLoginOptionsConstructor:&v11];

        objc_destroyWeak(&v17);
        objc_storeStrong(&v16, 0);
      }

      else
      {
        v10 = _BYLoggingFacility();
        v9 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          sub_100075A38(v45, v41, [(BuddyAppleIDController *)v43 hasProximityConnection]);
          _os_log_impl(&_mh_execute_header, v10, v9, "Not showing Apple ID Proximity Login for auth mode %i, in prox flow %i", v45, 0xEu);
        }

        objc_storeStrong(&v10, 0);
      }

      goto LABEL_27;
    }

    if ((v41 - 6) < 3)
    {
LABEL_24:
      v8 = _BYLoggingFacility();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        sub_100082D54(v44, v41);
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Not elegible for Proximity Login with auth mode %i", v44, 8u);
      }

      objc_storeStrong(&v8, 0);
    }

LABEL_27:
    v33 = 0;
    goto LABEL_28;
  }

  v35 = _BYLoggingFacility();
  v34 = OS_LOG_TYPE_ERROR;
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    sub_100082D54(buf, v41);
    _os_log_error_impl(&_mh_execute_header, v35, v34, "_setLogInOptionsForBuddyAppleIDAuthMode called for unsupported auth mode %i", buf, 8u);
  }

  objc_storeStrong(&v35, 0);
  v33 = 1;
LABEL_28:
  objc_storeStrong(&v39, 0);
  objc_destroyWeak(&location);
}

- (BuddyAppleIDControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BuddyAppleIDSignInController)twoAccountsiCloudSignInController
{
  WeakRetained = objc_loadWeakRetained(&self->_twoAccountsiCloudSignInController);

  return WeakRetained;
}

@end