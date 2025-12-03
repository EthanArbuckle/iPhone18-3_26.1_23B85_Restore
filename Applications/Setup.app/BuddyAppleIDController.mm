@interface BuddyAppleIDController
- (BFFFlowItemDelegate)flowItemDelegate;
- (BOOL)_isRestore;
- (BOOL)controllerNeedsToRunForClass:(Class)class;
- (BOOL)isFlowItemOnTop:(id)top;
- (BOOL)responsibleForViewController:(id)controller;
- (BOOL)shouldAllowStartOver;
- (BuddyAppleIDController)initWithAccount:(id)account passcodeCacheManager:(id)manager analyticsManager:(id)analyticsManager runState:(id)state featureFlags:(id)flags;
- (BuddyAppleIDControllerDelegate)delegate;
- (BuddyAppleIDSignInController)twoAccountsiCloudSignInController;
- (id)_authenticationContextForSecurityUpgrade;
- (id)popToBuddyControllerWithClass:(Class)class animated:(BOOL)animated;
- (id)popToBuddyControllerWithClass:(Class)class withOffset:(unint64_t)offset animated:(BOOL)animated;
- (id)securityUpgradeAccountSignInViewController;
- (id)signInViewController;
- (id)signInViewControllerForRestore;
- (id)silentUpgradeViewControllerWithLoginContext:(id)context;
- (id)upgradeAccountForRestoreAfterSoftwareUpdateSignInViewController;
- (id)upgradeAccountSignInViewController;
- (void)_appleIDControllerCompletedShouldProceed:(BOOL)proceed error:(id)error;
- (void)_authCompletedShouldProceed:(BOOL)proceed error:(id)error;
- (void)_beginPostUpgradeAppleIDLoginWithUsername:(id)username password:(id)password continuationKey:(id)key signInController:(id)controller;
- (void)_beginPostUpgradeAppleIDLoginWithUsername:(id)username password:(id)password signInController:(id)controller;
- (void)_createMeCard;
- (void)_didFinishResponsibilityViewControllerPushSeesion;
- (void)_loadSecurityUpgradeUI;
- (void)_nameDevice;
- (void)_popBackToAuthAttemptLandingPage;
- (void)_pushNextViewController:(id)controller;
- (void)_removeBackToViewControllerMatchingBlock:(id)block withOffset:(int64_t)offset;
- (void)_setAppearanceHandler:(id)handler forSpinnerPage:(id)page;
- (void)_setLogInOptionsForBuddyAppleIDAuthMode:(int)mode signInController:(id)controller;
- (void)_setupAccountForSecurityUpgrade;
- (void)_showProximityiCloudSignInController:(id)controller;
- (void)_showSpinnerPage:(id)page appearanceHandler:(id)handler;
- (void)_showSpinnerPageWithIdentifier:(id)identifier handler:(id)handler;
- (void)_showTwoAccountsiCloudSignInController;
- (void)_showTwoAccountsiTunesSignInController;
- (void)_signInFailedWithError:(id)error;
- (void)_signInSucceeded;
- (void)_upgradeAccountWithAuthenticationResults:(id)results completion:(id)completion;
- (void)_willStartResponsibilityViewControllerPushSession;
- (void)buddyAppleIDSpinnerPageDidAppear:(id)appear;
- (void)cancelAuthentication;
- (void)flowItemCancelled:(id)cancelled;
- (void)flowItemDone:(id)done;
- (void)flowItemDone:(id)done nextItem:(id)item;
- (void)flowItemDone:(id)done nextItemClass:(Class)class;
- (void)markFlowItemDone:(id)done;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)pushFlowItem:(id)item animated:(BOOL)animated;
- (void)pushFlowItem:(id)item inFlow:(id)flow animated:(BOOL)animated;
- (void)pushFlowItem:(id)item inFlow:(id)flow withExtendedInitialization:(BOOL)initialization animated:(BOOL)animated;
- (void)pushFlowItem:(id)item inFlow:(id)flow withExtendedInitialization:(BOOL)initialization animated:(BOOL)animated willPushFlowItem:(id)flowItem;
- (void)removeViewControllersOnNextPush:(id)push;
- (void)setExistingAccountUsername:(id)username accountType:(unint64_t)type;
- (void)setNavigationController:(id)controller;
- (void)showCreateAppleID;
- (void)showCredentialRecovery;
@end

@implementation BuddyAppleIDController

- (BuddyAppleIDController)initWithAccount:(id)account passcodeCacheManager:(id)manager analyticsManager:(id)analyticsManager runState:(id)state featureFlags:(id)flags
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  obj = 0;
  objc_storeStrong(&obj, manager);
  v19 = 0;
  objc_storeStrong(&v19, analyticsManager);
  v18 = 0;
  objc_storeStrong(&v18, state);
  v17 = 0;
  objc_storeStrong(&v17, flags);
  v11 = selfCopy;
  selfCopy = 0;
  v16.receiver = v11;
  v16.super_class = BuddyAppleIDController;
  selfCopy = [(BuddyAppleIDController *)&v16 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(selfCopy + 14, obj);
    objc_storeStrong(selfCopy + 20, v19);
    objc_storeStrong(selfCopy + 21, v18);
    *(selfCopy + 15) = 0;
    v12 = +[NSPointerArray weakObjectsPointerArray];
    v13 = *(selfCopy + 16);
    *(selfCopy + 16) = v12;

    objc_storeStrong(selfCopy + 8, v17);
    if (location[0])
    {
      objc_storeStrong(selfCopy + 9, location[0]);
    }
  }

  v14 = selfCopy;
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&obj, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v14;
}

- (BFFFlowItemDelegate)flowItemDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_flowItemDelegate);

  return WeakRetained;
}

- (void)setExistingAccountUsername:(id)username accountType:(unint64_t)type
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, username);
  [(BuddyAppleIDController *)selfCopy setExistingAccountUsername:location[0]];
  [(BuddyAppleIDController *)selfCopy setExistingAccountType:type];
  objc_storeStrong(location, 0);
}

- (void)setNavigationController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  if (location[0])
  {
    if (location[0] != selfCopy->_navigationController)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [location[0] addDelegateObserver:selfCopy];
      }
    }
  }

  objc_storeStrong(&selfCopy->_navigationController, location[0]);
  objc_storeStrong(location, 0);
}

- (void)showCredentialRecovery
{
  selfCopy = self;
  oslog[1] = a2;
  navigationController = [(BuddyAppleIDController *)self navigationController];
  topViewController = [(UINavigationController *)navigationController topViewController];
  [selfCopy setAuthAttemptLandingViewController:topViewController];

  v4 = [BuddyAppleIDSignInTask alloc];
  featureFlags = [selfCopy featureFlags];
  v6 = +[BuddyAccountTools sharedBuddyAccountTools];
  v7 = [(BuddyAppleIDSignInTask *)v4 initWithFeatureFlags:featureFlags accountTools:v6];
  [selfCopy setSignInTask:v7];

  navigationController2 = [selfCopy navigationController];
  signInTask = [selfCopy signInTask];
  [signInTask setNavigationController:navigationController2];

  LOBYTE(navigationController2) = [selfCopy _isRestore];
  signInTask2 = [selfCopy signInTask];
  [signInTask2 setRestoreFromBackupMode:navigationController2 & 1];

  featureFlags2 = [selfCopy featureFlags];
  LOBYTE(signInTask2) = [featureFlags2 isUseCDPContextSecretInsteadOfSBDSecretEnabled];

  if (signInTask2)
  {
    oslog[0] = _BYLoggingFacility();
    v28 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      passcodeCacheManager = [selfCopy passcodeCacheManager];
      signInTask3 = [selfCopy signInTask];
      sub_10011A49C(buf, "[BuddyAppleIDController showCredentialRecovery]", passcodeCacheManager, signInTask3);
      _os_log_impl(&_mh_execute_header, oslog[0], v28, "%s: Setting cache manager %@ on sign in task %@", buf, 0x20u);
    }

    objc_storeStrong(oslog, 0);
    passcodeCacheManager2 = [selfCopy passcodeCacheManager];
    signInTask4 = [selfCopy signInTask];
    [signInTask4 setCacheManager:passcodeCacheManager2];
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
  signInTask5 = [selfCopy signInTask];
  v19 = _NSConcreteStackBlock;
  v20 = -1073741824;
  v21 = 0;
  v22 = sub_100139524;
  v23 = &unk_10032D598;
  v24 = selfCopy;
  [signInTask5 authenticateForCredentialRecoveryWithCompletion:&v19];

  objc_storeStrong(&v24, 0);
}

- (void)showCreateAppleID
{
  selfCopy = self;
  oslog[1] = a2;
  navigationController = [(BuddyAppleIDController *)self navigationController];
  topViewController = [(UINavigationController *)navigationController topViewController];
  [selfCopy setAuthAttemptLandingViewController:topViewController];

  v4 = [BuddyAppleIDSignInTask alloc];
  featureFlags = [selfCopy featureFlags];
  v6 = +[BuddyAccountTools sharedBuddyAccountTools];
  v7 = [(BuddyAppleIDSignInTask *)v4 initWithFeatureFlags:featureFlags accountTools:v6];
  [selfCopy setSignInTask:v7];

  navigationController2 = [selfCopy navigationController];
  signInTask = [selfCopy signInTask];
  [signInTask setNavigationController:navigationController2];

  LOBYTE(navigationController2) = [selfCopy _isRestore];
  signInTask2 = [selfCopy signInTask];
  [signInTask2 setRestoreFromBackupMode:navigationController2 & 1];

  featureFlags2 = [selfCopy featureFlags];
  LOBYTE(signInTask2) = [featureFlags2 isUseCDPContextSecretInsteadOfSBDSecretEnabled];

  if (signInTask2)
  {
    oslog[0] = _BYLoggingFacility();
    v28 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      passcodeCacheManager = [selfCopy passcodeCacheManager];
      signInTask3 = [selfCopy signInTask];
      sub_10011A49C(buf, "[BuddyAppleIDController showCreateAppleID]", passcodeCacheManager, signInTask3);
      _os_log_impl(&_mh_execute_header, oslog[0], v28, "%s: Setting cache manager %@ on sign in task %@", buf, 0x20u);
    }

    objc_storeStrong(oslog, 0);
    passcodeCacheManager2 = [selfCopy passcodeCacheManager];
    signInTask4 = [selfCopy signInTask];
    [signInTask4 setCacheManager:passcodeCacheManager2];
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
  signInTask5 = [selfCopy signInTask];
  v19 = _NSConcreteStackBlock;
  v20 = -1073741824;
  v21 = 0;
  v22 = sub_10013A298;
  v23 = &unk_10032D598;
  v24 = selfCopy;
  [signInTask5 authenticateForAccountCreationWithCompletion:&v19];

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

- (BOOL)responsibleForViewController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  if ([(BuddyAppleIDController *)selfCopy assumeResponsibilityForRUIPage]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v15 = 1;
    v12 = 1;
  }

  else
  {
    memset(__b, 0, sizeof(__b));
    responsibilityViewControllers = [(BuddyAppleIDController *)selfCopy responsibilityViewControllers];
    allObjects = [(NSPointerArray *)responsibilityViewControllers allObjects];

    v5 = [(NSArray *)allObjects countByEnumeratingWithState:__b objects:v16 count:16];
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
            objc_enumerationMutation(allObjects);
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

        v5 = [(NSArray *)allObjects countByEnumeratingWithState:__b objects:v16 count:16];
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
  selfCopy = self;
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
  [(BuddyAppleIDController *)selfCopy _authCompletedShouldProceed:0 error:0];
}

- (id)upgradeAccountSignInViewController
{
  selfCopy = self;
  v37[1] = a2;
  navigationController = [(BuddyAppleIDController *)self navigationController];
  passcodeCacheManager = [(BuddyAppleIDController *)selfCopy passcodeCacheManager];
  featureFlags = [(BuddyAppleIDController *)selfCopy featureFlags];
  v37[0] = [BuddyAppleIDSignInController federatedAuthSignInControllerInNavigationController:navigationController mode:4 passcodeCacheManager:passcodeCacheManager featureFlags:featureFlags];

  existingAccountUsername = [(BuddyAppleIDController *)selfCopy existingAccountUsername];
  [v37[0] setUsername:existingAccountUsername];

  v6 = +[NSBundle mainBundle];
  v7 = [(NSBundle *)v6 localizedStringForKey:@"FORGOT_PASSWORD_QUESTION" value:&stru_10032F900 table:@"Localizable"];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10013B328;
  v35[3] = &unk_10032B0D0;
  v36 = selfCopy;
  [v37[0] setiForgotText:v7 handler:v35];

  objc_initWeak(&location, v37[0]);
  v8 = v37[0];
  v27 = _NSConcreteStackBlock;
  v28 = -1073741824;
  v29 = 0;
  v30 = sub_10013B3D0;
  v31 = &unk_10032AFA8;
  objc_copyWeak(&v33, &location);
  v32 = selfCopy;
  [v8 setAppearanceHandler:&v27];
  v9 = v37[0];
  v20 = _NSConcreteStackBlock;
  v21 = -1073741824;
  v22 = 0;
  v23 = sub_10013B434;
  v24 = &unk_10032D2E0;
  v25 = selfCopy;
  objc_copyWeak(v26, &location);
  [v9 setHandler:&v20];
  v10 = v37[0];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10013B560;
  v18 = &unk_10032D598;
  v19 = selfCopy;
  [v10 setProximityLoginHandler:&v15];
  v11 = selfCopy;
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
  selfCopy = self;
  v33[1] = a2;
  navigationController = [(BuddyAppleIDController *)self navigationController];
  passcodeCacheManager = [(BuddyAppleIDController *)selfCopy passcodeCacheManager];
  featureFlags = [(BuddyAppleIDController *)selfCopy featureFlags];
  v33[0] = [BuddyAppleIDSignInController federatedAuthSignInControllerInNavigationController:navigationController mode:7 passcodeCacheManager:passcodeCacheManager featureFlags:featureFlags];

  existingAccountUsername = [(BuddyAppleIDController *)selfCopy existingAccountUsername];
  [v33[0] setUsername:existingAccountUsername];

  v6 = +[NSBundle mainBundle];
  v7 = [(NSBundle *)v6 localizedStringForKey:@"FORGOT_PASSWORD_QUESTION" value:&stru_10032F900 table:@"Localizable"];
  v27 = _NSConcreteStackBlock;
  v28 = -1073741824;
  v29 = 0;
  v30 = sub_10013BC18;
  v31 = &unk_10032B0D0;
  v32 = selfCopy;
  [v33[0] setiForgotText:v7 handler:&v27];

  objc_initWeak(&location, v33[0]);
  v8 = v33[0];
  v19 = _NSConcreteStackBlock;
  v20 = -1073741824;
  v21 = 0;
  v22 = sub_10013BCC0;
  v23 = &unk_10032AFA8;
  objc_copyWeak(&v25, &location);
  v24 = selfCopy;
  [v8 setAppearanceHandler:&v19];
  v9 = v33[0];
  v12 = _NSConcreteStackBlock;
  v13 = -1073741824;
  v14 = 0;
  v15 = sub_10013BD24;
  v16 = &unk_10032D2E0;
  v17 = selfCopy;
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
  selfCopy = self;
  location[1] = a2;
  [(BuddyAppleIDController *)self setOperationType:4];
  navigationController = [(BuddyAppleIDController *)selfCopy navigationController];
  topViewController = [(UINavigationController *)navigationController topViewController];
  [(BuddyAppleIDController *)selfCopy setAuthAttemptLandingViewController:topViewController];

  location[0] = [[BuddyAppleIDSpinnerPage alloc] initWithAccountMode:[(BuddyAppleIDController *)selfCopy operationType]];
  [location[0] setDelegate:selfCopy];
  [(BuddyAppleIDController *)selfCopy _loadSecurityUpgradeUI];
  v4 = location[0];
  objc_storeStrong(location, 0);
  return v4;
}

- (id)silentUpgradeViewControllerWithLoginContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  initForSilentAuthentication = [[BuddyAppleIDSpinnerPage alloc] initForSilentAuthentication];
  [initForSilentAuthentication setDelegate:selfCopy];
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_10013C074;
  v9 = &unk_10032B838;
  v10 = selfCopy;
  v11 = location[0];
  v12 = objc_retainBlock(&v5);
  [(BuddyAppleIDController *)selfCopy _setAppearanceHandler:v12 forSpinnerPage:initForSilentAuthentication];
  v3 = initForSilentAuthentication;
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&initForSilentAuthentication, 0);
  objc_storeStrong(location, 0);
  return v3;
}

- (id)signInViewController
{
  selfCopy = self;
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
  [(BuddyAppleIDController *)selfCopy setOperationType:1];
  navigationController = [(BuddyAppleIDController *)selfCopy navigationController];
  passcodeCacheManager = [(BuddyAppleIDController *)selfCopy passcodeCacheManager];
  featureFlags = [(BuddyAppleIDController *)selfCopy featureFlags];
  v71 = [BuddyAppleIDSignInController federatedAuthSignInControllerInNavigationController:navigationController mode:1 passcodeCacheManager:passcodeCacheManager featureFlags:featureFlags];

  existingAccountUsername = [(BuddyAppleIDController *)selfCopy existingAccountUsername];
  [v71 setUsername:existingAccountUsername];

  if ([(BuddyAppleIDController *)selfCopy existingAccountType]< 2)
  {
    [(BuddyAppleIDController *)selfCopy _setLogInOptionsForBuddyAppleIDAuthMode:1 signInController:v71];
  }

  v8 = +[NSBundle mainBundle];
  v9 = [(NSBundle *)v8 localizedStringForKey:@"DONT_HAVE_AN_APPLE_ID_OR_FORGOT_IT" value:&stru_10032F900 table:@"Localizable"];
  v65 = _NSConcreteStackBlock;
  v66 = -1073741824;
  v67 = 0;
  v68 = sub_10013CC08;
  v69 = &unk_10032B0D0;
  v70 = selfCopy;
  [v71 setiForgotText:v9 handler:&v65];

  objc_initWeak(&from, v71);
  v10 = v71;
  v57 = _NSConcreteStackBlock;
  v58 = -1073741824;
  v59 = 0;
  v60 = sub_10013CD08;
  v61 = &unk_10032AFA8;
  objc_copyWeak(&v63, &from);
  v62 = selfCopy;
  [v10 setAppearanceHandler:&v57];
  v11 = [BYAnalyticsEventAppleIDSignIn alloc];
  analyticsManager = [(BuddyAppleIDController *)selfCopy analyticsManager];
  v56 = [v11 initWithAnalyticsManager:analyticsManager context:2];

  v13 = [BuddyAppleIDSignInTask alloc];
  featureFlags2 = [(BuddyAppleIDController *)selfCopy featureFlags];
  v15 = +[BuddyAccountTools sharedBuddyAccountTools];
  v16 = [(BuddyAppleIDSignInTask *)v13 initWithFeatureFlags:featureFlags2 accountTools:v15];
  [(BuddyAppleIDController *)selfCopy setSignInTask:v16];

  LOBYTE(featureFlags2) = [(BuddyAppleIDController *)selfCopy _isRestore];
  signInTask = [(BuddyAppleIDController *)selfCopy signInTask];
  [(BuddyAppleIDSignInTask *)signInTask setRestoreFromBackupMode:featureFlags2 & 1];

  featureFlags3 = [(BuddyAppleIDController *)selfCopy featureFlags];
  LOBYTE(signInTask) = [(BuddyFeatureFlags *)featureFlags3 isUseCDPContextSecretInsteadOfSBDSecretEnabled];

  if (signInTask)
  {
    oslog = _BYLoggingFacility();
    v54 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      passcodeCacheManager2 = [(BuddyAppleIDController *)selfCopy passcodeCacheManager];
      signInTask2 = [(BuddyAppleIDController *)selfCopy signInTask];
      sub_10011A49C(v76, "[BuddyAppleIDController signInViewController]", passcodeCacheManager2, signInTask2);
      _os_log_impl(&_mh_execute_header, oslog, v54, "%s: Setting cache manager %@ on sign in task %@", v76, 0x20u);
    }

    objc_storeStrong(&oslog, 0);
    passcodeCacheManager3 = [(BuddyAppleIDController *)selfCopy passcodeCacheManager];
    signInTask3 = [(BuddyAppleIDController *)selfCopy signInTask];
    [(BuddyAppleIDSignInTask *)signInTask3 setCacheManager:passcodeCacheManager3];
  }

  v45 = _NSConcreteStackBlock;
  v46 = -1073741824;
  v47 = 0;
  v48 = sub_10013CD6C;
  v49 = &unk_10032D638;
  objc_copyWeak(&v52, &from);
  v50 = selfCopy;
  v51 = v56;
  v53 = objc_retainBlock(&v45);
  signInTask4 = [(BuddyAppleIDController *)selfCopy signInTask];
  objc_initWeak(&v44, signInTask4);

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
  selfCopy = self;
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
  objc_initWeak(&from, selfCopy);
  navigationController = [(BuddyAppleIDController *)selfCopy navigationController];
  passcodeCacheManager = [(BuddyAppleIDController *)selfCopy passcodeCacheManager];
  featureFlags = [(BuddyAppleIDController *)selfCopy featureFlags];
  v70 = [BuddyAppleIDSignInController federatedAuthSignInControllerInNavigationController:navigationController mode:5 passcodeCacheManager:passcodeCacheManager featureFlags:featureFlags];

  existingAccountUsername = [(BuddyAppleIDController *)selfCopy existingAccountUsername];
  [v70 setUsername:existingAccountUsername];

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
  [(BuddyAppleIDController *)selfCopy _setLogInOptionsForBuddyAppleIDAuthMode:5 signInController:v70];
  v48 = _NSConcreteStackBlock;
  v49 = -1073741824;
  v50 = 0;
  v51 = sub_10013E728;
  v52 = &unk_10032D728;
  objc_copyWeak(&v54, &v63);
  v53 = selfCopy;
  v55 = objc_retainBlock(&v48);
  v12 = [BuddyAppleIDSignInTask alloc];
  featureFlags2 = [(BuddyAppleIDController *)selfCopy featureFlags];
  v14 = +[BuddyAccountTools sharedBuddyAccountTools];
  v15 = [(BuddyAppleIDSignInTask *)v12 initWithFeatureFlags:featureFlags2 accountTools:v14];
  [(BuddyAppleIDController *)selfCopy setSignInTask:v15];

  signInTask = [(BuddyAppleIDController *)selfCopy signInTask];
  [(BuddyAppleIDSignInTask *)signInTask setSkipDataclassEnablement:1];

  signInTask2 = [(BuddyAppleIDController *)selfCopy signInTask];
  [(BuddyAppleIDSignInTask *)signInTask2 setMakeStoreServiceActive:0];

  LOBYTE(signInTask2) = [(BuddyAppleIDController *)selfCopy _isRestore];
  signInTask3 = [(BuddyAppleIDController *)selfCopy signInTask];
  [(BuddyAppleIDSignInTask *)signInTask3 setRestoreFromBackupMode:signInTask2 & 1];

  featureFlags3 = [(BuddyAppleIDController *)selfCopy featureFlags];
  LOBYTE(signInTask3) = [(BuddyFeatureFlags *)featureFlags3 isUseCDPContextSecretInsteadOfSBDSecretEnabled];

  if (signInTask3)
  {
    oslog = _BYLoggingFacility();
    v46 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      passcodeCacheManager2 = [(BuddyAppleIDController *)selfCopy passcodeCacheManager];
      signInTask4 = [(BuddyAppleIDController *)selfCopy signInTask];
      sub_10011A49C(v76, "[BuddyAppleIDController signInViewControllerForRestore]", passcodeCacheManager2, signInTask4);
      _os_log_impl(&_mh_execute_header, oslog, v46, "%s: Setting cache manager %@ on sign in task %@", v76, 0x20u);
    }

    objc_storeStrong(&oslog, 0);
    passcodeCacheManager3 = [(BuddyAppleIDController *)selfCopy passcodeCacheManager];
    signInTask5 = [(BuddyAppleIDController *)selfCopy signInTask];
    [(BuddyAppleIDSignInTask *)signInTask5 setCacheManager:passcodeCacheManager3];
  }

  signInTask6 = [(BuddyAppleIDController *)selfCopy signInTask];
  objc_initWeak(&v45, signInTask6);

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
  navigationController = [(BuddyAppleIDController *)self navigationController];
  location[0] = [(UINavigationController *)navigationController topViewController];

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

- (void)flowItemCancelled:(id)cancelled
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, cancelled);
  objc_storeStrong(location, 0);
}

- (void)flowItemDone:(id)done
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, done);
  objc_storeStrong(location, 0);
}

- (void)flowItemDone:(id)done nextItem:(id)item
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, done);
  v5 = 0;
  objc_storeStrong(&v5, item);
  [(BuddyAppleIDController *)selfCopy flowItemDone:location[0]];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)flowItemDone:(id)done nextItemClass:(Class)class
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, done);
  [(BuddyAppleIDController *)selfCopy flowItemDone:location[0], class];
  objc_storeStrong(location, 0);
}

- (BOOL)controllerNeedsToRunForClass:(Class)class
{
  flowItemDelegate = [(BuddyAppleIDController *)self flowItemDelegate];
  v4 = [(BFFFlowItemDelegate *)flowItemDelegate controllerNeedsToRunForClass:class];

  return v4 & 1;
}

- (BOOL)isFlowItemOnTop:(id)top
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, top);
  flowItemDelegate = [(BuddyAppleIDController *)selfCopy flowItemDelegate];
  v4 = [(BFFFlowItemDelegate *)flowItemDelegate isFlowItemOnTop:location[0]];

  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (id)popToBuddyControllerWithClass:(Class)class animated:(BOOL)animated
{
  animatedCopy = animated;
  flowItemDelegate = [(BuddyAppleIDController *)self flowItemDelegate];
  v5 = [(BFFFlowItemDelegate *)flowItemDelegate popToBuddyControllerWithClass:class animated:animatedCopy];

  return v5;
}

- (id)popToBuddyControllerWithClass:(Class)class withOffset:(unint64_t)offset animated:(BOOL)animated
{
  animatedCopy = animated;
  flowItemDelegate = [(BuddyAppleIDController *)self flowItemDelegate];
  v6 = [(BFFFlowItemDelegate *)flowItemDelegate popToBuddyControllerWithClass:class withOffset:offset animated:animatedCopy];

  return v6;
}

- (void)pushFlowItem:(id)item animated:(BOOL)animated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  animatedCopy = animated;
  flowItemDelegate = [(BuddyAppleIDController *)selfCopy flowItemDelegate];
  [(BFFFlowItemDelegate *)flowItemDelegate pushFlowItem:location[0] animated:animatedCopy];

  objc_storeStrong(location, 0);
}

- (void)pushFlowItem:(id)item inFlow:(id)flow animated:(BOOL)animated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  v9 = 0;
  objc_storeStrong(&v9, flow);
  animatedCopy = animated;
  flowItemDelegate = [(BuddyAppleIDController *)selfCopy flowItemDelegate];
  [(BFFFlowItemDelegate *)flowItemDelegate pushFlowItem:location[0] inFlow:v9 animated:animatedCopy];

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)pushFlowItem:(id)item inFlow:(id)flow withExtendedInitialization:(BOOL)initialization animated:(BOOL)animated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  v11 = 0;
  objc_storeStrong(&v11, flow);
  animatedCopy = animated;
  flowItemDelegate = [(BuddyAppleIDController *)selfCopy flowItemDelegate];
  [(BFFFlowItemDelegate *)flowItemDelegate pushFlowItem:location[0] inFlow:v11 withExtendedInitialization:initialization animated:animatedCopy];

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)pushFlowItem:(id)item inFlow:(id)flow withExtendedInitialization:(BOOL)initialization animated:(BOOL)animated willPushFlowItem:(id)flowItem
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  v15 = 0;
  objc_storeStrong(&v15, flow);
  initializationCopy = initialization;
  animatedCopy = animated;
  v12 = 0;
  objc_storeStrong(&v12, flowItem);
  flowItemDelegate = [(BuddyAppleIDController *)selfCopy flowItemDelegate];
  [(BFFFlowItemDelegate *)flowItemDelegate pushFlowItem:location[0] inFlow:v15 withExtendedInitialization:initializationCopy animated:animatedCopy willPushFlowItem:v12];

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)removeViewControllersOnNextPush:(id)push
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, push);
  flowItemDelegate = [(BuddyAppleIDController *)selfCopy flowItemDelegate];
  [(BFFFlowItemDelegate *)flowItemDelegate removeViewControllersOnNextPush:location[0]];

  objc_storeStrong(location, 0);
}

- (void)markFlowItemDone:(id)done
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, done);
  flowItemDelegate = [(BuddyAppleIDController *)selfCopy flowItemDelegate];
  [(BFFFlowItemDelegate *)flowItemDelegate markFlowItemDone:location[0]];

  objc_storeStrong(location, 0);
}

- (void)buddyAppleIDSpinnerPageDidAppear:(id)appear
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, appear);
  oslog = _BYLoggingFacility();
  v19 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100071CBC(buf, location[0]);
    _os_log_impl(&_mh_execute_header, oslog, v19, "Spinner page %{public}@ appeared", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v18 = [NSValue valueWithPointer:location[0]];
  spinnerAppearanceHandlers = [(BuddyAppleIDController *)selfCopy spinnerAppearanceHandlers];
  v17 = [(NSMutableDictionary *)spinnerAppearanceHandlers objectForKey:v18];

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
    spinnerAppearanceHandlers2 = [(BuddyAppleIDController *)selfCopy spinnerAppearanceHandlers];
    [(NSMutableDictionary *)spinnerAppearanceHandlers2 removeObjectForKey:v18];

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
    navigationController = [(BuddyAppleIDController *)selfCopy navigationController];
    v10 = [(UINavigationController *)navigationController popViewControllerAnimated:1];
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v7 = 0;
  objc_storeStrong(&v7, viewController);
  if ([(BuddyAppleIDController *)selfCopy countOfResponsibilityViewControllerPushSessions])
  {
    responsibilityViewControllers = [(BuddyAppleIDController *)selfCopy responsibilityViewControllers];
    [(NSPointerArray *)responsibilityViewControllers addPointer:v7];
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_isRestore
{
  operationType = [(BuddyAppleIDController *)self operationType];
  if (operationType < 2)
  {
    goto LABEL_4;
  }

  if (operationType == 2)
  {
    v4 = 1;
    return v4 & 1;
  }

  if (operationType - 3 <= 1)
  {
LABEL_4:
    v4 = 0;
  }

  return v4 & 1;
}

- (void)_showTwoAccountsiTunesSignInController
{
  selfCopy = self;
  v24[1] = a2;
  navigationController = [(BuddyAppleIDController *)self navigationController];
  passcodeCacheManager = [(BuddyAppleIDController *)selfCopy passcodeCacheManager];
  featureFlags = [(BuddyAppleIDController *)selfCopy featureFlags];
  v24[0] = [BuddyAppleIDSignInController federatedAuthSignInControllerInNavigationController:navigationController mode:3 passcodeCacheManager:passcodeCacheManager featureFlags:featureFlags];

  navigationItem = [v24[0] navigationItem];
  [navigationItem setHidesBackButton:1];

  if ([(BuddyAppleIDController *)selfCopy existingAccountType]== 2)
  {
    existingAccountUsername = [(BuddyAppleIDController *)selfCopy existingAccountUsername];
    [v24[0] setUsername:existingAccountUsername];
  }

  objc_initWeak(&location, v24[0]);
  v7 = v24[0];
  v16 = _NSConcreteStackBlock;
  v17 = -1073741824;
  v18 = 0;
  v19 = sub_100140370;
  v20 = &unk_10032AFA8;
  objc_copyWeak(&v22, &location);
  v21 = selfCopy;
  [v7 setAppearanceHandler:&v16];
  v8 = v24[0];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1001404E8;
  v13 = &unk_10032D2E0;
  v14 = selfCopy;
  objc_copyWeak(v15, &location);
  [v8 setHandler:&v10];
  v9 = [(BuddyAppleIDController *)selfCopy navigationController:v10];
  [(UINavigationController *)v9 pushViewController:v24[0] animated:1];

  objc_destroyWeak(v15);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v21, 0);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
  objc_storeStrong(v24, 0);
}

- (void)_showProximityiCloudSignInController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  navigationController = [(BuddyAppleIDController *)selfCopy navigationController];
  signInTask = [(BuddyAppleIDController *)selfCopy signInTask];
  [(BuddyAppleIDSignInTask *)signInTask setNavigationController:navigationController];

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
  signInTask2 = [(BuddyAppleIDController *)selfCopy signInTask];
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_10014165C;
  v12 = &unk_10032D598;
  v13 = location[0];
  [(BuddyAppleIDSignInTask *)signInTask2 authenticateWithProximity:&v8];

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)_showTwoAccountsiCloudSignInController
{
  selfCopy = self;
  v23[1] = a2;
  [(BuddyAppleIDController *)self setOperationType:1];
  navigationController = [(BuddyAppleIDController *)selfCopy navigationController];
  passcodeCacheManager = [(BuddyAppleIDController *)selfCopy passcodeCacheManager];
  featureFlags = [(BuddyAppleIDController *)selfCopy featureFlags];
  v23[0] = [BuddyAppleIDSignInController federatedAuthSignInControllerInNavigationController:navigationController mode:2 passcodeCacheManager:passcodeCacheManager featureFlags:featureFlags];

  existingAccountUsername = [(BuddyAppleIDController *)selfCopy existingAccountUsername];
  [v23[0] setUsername:existingAccountUsername];

  objc_initWeak(&location, v23[0]);
  v6 = v23[0];
  v15 = _NSConcreteStackBlock;
  v16 = -1073741824;
  v17 = 0;
  v18 = sub_100141BB4;
  v19 = &unk_10032AFA8;
  objc_copyWeak(&v21, &location);
  v20 = selfCopy;
  [v6 setAppearanceHandler:&v15];
  v7 = v23[0];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100141C18;
  v12 = &unk_10032D2E0;
  v13 = selfCopy;
  objc_copyWeak(v14, &location);
  [v7 setHandler:&v9];
  v8 = [(BuddyAppleIDController *)selfCopy navigationController:v9];
  [(UINavigationController *)v8 pushViewController:v23[0] animated:1];

  [(BuddyAppleIDController *)selfCopy setTwoAccountsiCloudSignInController:v23[0]];
  objc_destroyWeak(v14);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v20, 0);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
  objc_storeStrong(v23, 0);
}

- (void)_appleIDControllerCompletedShouldProceed:(BOOL)proceed error:(id)error
{
  selfCopy = self;
  v35 = a2;
  proceedCopy = proceed;
  location = 0;
  objc_storeStrong(&location, error);
  domain = [location domain];
  v5 = 1;
  if ([domain isEqualToString:AKAppleIDAuthenticationErrorDomain])
  {
    v5 = [location code] != -7003;
  }

  if (v5)
  {
    v32 = _BYLoggingFacility();
    v31 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      if (proceedCopy)
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
        domain2 = [location domain];
        v29 = 1;
        v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", domain2, [location code]);
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

  if (proceedCopy)
  {
    delegate = [(BuddyAppleIDController *)selfCopy delegate];
    [(BuddyAppleIDControllerDelegate *)delegate appleIDControllerFinished:selfCopy];
  }

  else if ((BYSetupAssistantHasCompletedInitialRun() & 1) == 0)
  {
    v25 = objc_opt_new();
    aa_primaryAppleAccount = [v25 aa_primaryAppleAccount];
    if (aa_primaryAppleAccount)
    {
      oslog = _BYLoggingFacility();
      v22 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        aa_primaryEmail = [aa_primaryAppleAccount aa_primaryEmail];
        sub_10006AE18(v37, aa_primaryEmail);
        _os_log_impl(&_mh_execute_header, oslog, v22, "Removing primary account '%@' due to failure", v37, 0xCu);

        objc_storeStrong(&aa_primaryEmail, 0);
      }

      objc_storeStrong(&oslog, 0);
    }

    navigationController = [(BuddyAppleIDController *)selfCopy navigationController];
    topViewController = [(UINavigationController *)navigationController topViewController];
    view = [(UIViewController *)topViewController view];

    [view setUserInteractionEnabled:0];
    v11 = +[BuddyAccountTools sharedBuddyAccountTools];
    v13 = _NSConcreteStackBlock;
    v14 = -1073741824;
    v15 = 0;
    v16 = sub_100143018;
    v17 = &unk_10032D7F0;
    v18 = view;
    v19 = selfCopy;
    [v11 removePrimaryAccountCompletion:&v13];

    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&view, 0);
    objc_storeStrong(&aa_primaryAppleAccount, 0);
    objc_storeStrong(&v25, 0);
  }

  else
  {
    [(BuddyAppleIDController *)selfCopy _popBackToAuthAttemptLandingPage];
  }

  objc_storeStrong(&location, 0);
}

- (void)_authCompletedShouldProceed:(BOOL)proceed error:(id)error
{
  selfCopy = self;
  v28 = a2;
  proceedCopy = proceed;
  location = 0;
  objc_storeStrong(&location, error);
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_100143424(buf, "[BuddyAppleIDController _authCompletedShouldProceed:error:]", proceedCopy, location);
    _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "%s shouldProceed = %d, error = %@", buf, 0x1Cu);
  }

  objc_storeStrong(&oslog, 0);
  v4 = +[BYAppleIDAccountsManager sharedManager];
  [v4 clearStoredLoginContext];

  if (proceedCopy)
  {
    delegate = [(BuddyAppleIDController *)selfCopy delegate];
    [(BuddyAppleIDControllerDelegate *)delegate appleIDControllerFinished:selfCopy];
  }

  else
  {
    delegate2 = [(BuddyAppleIDController *)selfCopy delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate3 = [(BuddyAppleIDController *)selfCopy delegate];
      [(BuddyAppleIDControllerDelegate *)delegate3 appleIDController:selfCopy failedWithError:location];
    }

    else
    {
      authAttemptLandingViewController = [(BuddyAppleIDController *)selfCopy authAttemptLandingViewController];

      if (authAttemptLandingViewController)
      {
        navigationController = [(BuddyAppleIDController *)selfCopy navigationController];
        viewControllers = [(UINavigationController *)navigationController viewControllers];
        authAttemptLandingViewController2 = [(BuddyAppleIDController *)selfCopy authAttemptLandingViewController];
        v23 = 0;
        v21 = 0;
        v19 = 0;
        v17 = 0;
        v13 = 0;
        if ([(NSArray *)viewControllers containsObject:authAttemptLandingViewController2])
        {
          navigationController2 = [(BuddyAppleIDController *)selfCopy navigationController];
          v23 = 1;
          viewControllers2 = [(UINavigationController *)navigationController2 viewControllers];
          v21 = 1;
          lastObject = [(NSArray *)viewControllers2 lastObject];
          v19 = 1;
          authAttemptLandingViewController3 = [(BuddyAppleIDController *)selfCopy authAttemptLandingViewController];
          v17 = 1;
          v13 = lastObject != authAttemptLandingViewController3;
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
          navigationController3 = [(BuddyAppleIDController *)selfCopy navigationController];
          authAttemptLandingViewController4 = [(BuddyAppleIDController *)selfCopy authAttemptLandingViewController];
          v16 = [(UINavigationController *)navigationController3 popToViewController:authAttemptLandingViewController4 animated:1];
        }

        [(BuddyAppleIDController *)selfCopy setAuthAttemptLandingViewController:0];
      }
    }
  }

  objc_storeStrong(&location, 0);
}

- (void)_signInSucceeded
{
  selfCopy = self;
  v11[1] = a2;
  if ([(BuddyAppleIDController *)self operationType]== 1)
  {
    runState = [(BuddyAppleIDController *)selfCopy runState];
    v3 = [(BYRunState *)runState hasCompletedInitialRun]^ 1;

    if (v3)
    {
      v4 = dispatch_get_global_queue(25, 0);
      block = _NSConcreteStackBlock;
      v7 = -1073741824;
      v8 = 0;
      v9 = sub_1001435A4;
      v10 = &unk_10032B0D0;
      v11[0] = selfCopy;
      dispatch_async(v4, &block);

      objc_storeStrong(v11, 0);
    }
  }

  delegate = [(BuddyAppleIDController *)selfCopy delegate];
  [(BuddyAppleIDControllerDelegate *)delegate appleIDControllerFinished:selfCopy];
}

- (void)_signInFailedWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  delegate = [(BuddyAppleIDController *)selfCopy delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(BuddyAppleIDController *)selfCopy delegate];
    [(BuddyAppleIDControllerDelegate *)delegate2 appleIDController:selfCopy failedWithError:location[0]];
  }

  else
  {
    authAttemptLandingViewController = [(BuddyAppleIDController *)selfCopy authAttemptLandingViewController];

    if (authAttemptLandingViewController)
    {
      navigationController = [(BuddyAppleIDController *)selfCopy navigationController];
      authAttemptLandingViewController2 = [(BuddyAppleIDController *)selfCopy authAttemptLandingViewController];
      v9 = [(UINavigationController *)navigationController popToViewController:authAttemptLandingViewController2 animated:1];

      [(BuddyAppleIDController *)selfCopy setAuthAttemptLandingViewController:0];
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
    aa_primaryAppleAccount = [v29 aa_primaryAppleAccount];
    v27 = 0;
    v4 = v33[0];
    aa_firstName = [aa_primaryAppleAccount aa_firstName];
    aa_lastName = [aa_primaryAppleAccount aa_lastName];
    aa_primaryEmail = [aa_primaryAppleAccount aa_primaryEmail];
    obj = 0;
    LOBYTE(v4) = [v4 setBestMeIfNeededForGivenName:aa_firstName familyName:aa_lastName email:aa_primaryEmail error:&obj];
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
          domain = [v27 domain];
          v18 = 1;
          v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", domain, [v27 code]);
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
    objc_storeStrong(&aa_primaryAppleAccount, 0);
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
  aa_primaryAppleAccount = [v16[0] aa_primaryAppleAccount];
  aa_firstName = [aa_primaryAppleAccount aa_firstName];
  if ((BYSetupAssistantHasCompletedInitialRun() & 1) == 0 && [aa_firstName length])
  {
    v18 = MGCopyAnswer();
    v13 = v18;
    if (lockdown_connect())
    {
      v17 = MGCopyAnswer();
      v11 = v17;
      if ([v13 length] && (objc_msgSend(v13, "isEqualToString:", v11) & 1) != 0)
      {
        v10 = aa_firstName;
        if ([aa_firstName _containsCJKScriptsOnly])
        {
          location = [aa_primaryAppleAccount aa_lastName];
          if ([location length] && (objc_msgSend(location, "_containsCJKScriptsOnly") & 1) != 0)
          {
            v2 = [location stringByAppendingString:aa_firstName];
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

  objc_storeStrong(&aa_firstName, 0);
  objc_storeStrong(&aa_primaryAppleAccount, 0);
  objc_storeStrong(v16, 0);
}

- (void)_beginPostUpgradeAppleIDLoginWithUsername:(id)username password:(id)password signInController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, username);
  v8 = 0;
  objc_storeStrong(&v8, password);
  v7 = 0;
  objc_storeStrong(&v7, controller);
  [(BuddyAppleIDController *)selfCopy _beginPostUpgradeAppleIDLoginWithUsername:location[0] password:v8 continuationKey:0 signInController:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)_beginPostUpgradeAppleIDLoginWithUsername:(id)username password:(id)password continuationKey:(id)key signInController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, username);
  v28 = 0;
  objc_storeStrong(&v28, password);
  v27 = 0;
  objc_storeStrong(&v27, key);
  v26 = 0;
  objc_storeStrong(&v26, controller);
  if (location[0] && (v28 || v27))
  {
    navigationController = [(BuddyAppleIDController *)selfCopy navigationController];
    passcodeCacheManager = [(BuddyAppleIDController *)selfCopy passcodeCacheManager];
    v11 = [BuddyAppleIDAuthManager managerWithNavigationController:navigationController passcodeCacheManager:passcodeCacheManager];
    [(BuddyAppleIDController *)selfCopy setAuthManager:v11];

    authManager = [(BuddyAppleIDController *)selfCopy authManager];
    [(BuddyAppleIDAuthManager *)authManager setShouldOfferSecurityUpgrade:1];

    authManager2 = [(BuddyAppleIDController *)selfCopy authManager];
    accountToUpgrade = [(BuddyAppleIDController *)selfCopy accountToUpgrade];
    [(BuddyAppleIDAuthManager *)authManager2 setAccountToUpgrade:accountToUpgrade];

    authManager3 = [(BuddyAppleIDController *)selfCopy authManager];
    [(BuddyAppleIDAuthManager *)authManager3 setHasContinuationKey:v27 != 0];

    authManager4 = [(BuddyAppleIDController *)selfCopy authManager];
    v17 = v26;
    v18 = location[0];
    v19 = v28;
    v20 = _NSConcreteStackBlock;
    v21 = -1073741824;
    v22 = 0;
    v23 = sub_1001441EC;
    v24 = &unk_10032D598;
    v25 = selfCopy;
    [(BuddyAppleIDAuthManager *)authManager4 authenticateWithSignInController:v17 username:v18 password:v19 completion:&v20];

    objc_storeStrong(&v25, 0);
  }

  else
  {
    [(BuddyAppleIDController *)selfCopy _authCompletedShouldProceed:1 error:0];
  }

  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

- (void)_upgradeAccountWithAuthenticationResults:(id)results completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  v43 = 0;
  objc_storeStrong(&v43, completion);
  v5 = [BuddyAppleIDSignInTask alloc];
  featureFlags = [(BuddyAppleIDController *)selfCopy featureFlags];
  v7 = +[BuddyAccountTools sharedBuddyAccountTools];
  v8 = [(BuddyAppleIDSignInTask *)v5 initWithFeatureFlags:featureFlags accountTools:v7];
  [(BuddyAppleIDController *)selfCopy setSignInTask:v8];

  navigationController = [(BuddyAppleIDController *)selfCopy navigationController];
  signInTask = [(BuddyAppleIDController *)selfCopy signInTask];
  [(BuddyAppleIDSignInTask *)signInTask setNavigationController:navigationController];

  signInTask2 = [(BuddyAppleIDController *)selfCopy signInTask];
  [(BuddyAppleIDSignInTask *)signInTask2 setSkipDataclassEnablement:1];

  LOBYTE(signInTask2) = [(BuddyAppleIDController *)selfCopy _isRestore];
  signInTask3 = [(BuddyAppleIDController *)selfCopy signInTask];
  [(BuddyAppleIDSignInTask *)signInTask3 setRestoreFromBackupMode:signInTask2 & 1];

  featureFlags2 = [(BuddyAppleIDController *)selfCopy featureFlags];
  LOBYTE(signInTask3) = [(BuddyFeatureFlags *)featureFlags2 isUseCDPContextSecretInsteadOfSBDSecretEnabled];

  if (signInTask3)
  {
    oslog = _BYLoggingFacility();
    v41 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      passcodeCacheManager = [(BuddyAppleIDController *)selfCopy passcodeCacheManager];
      signInTask4 = [(BuddyAppleIDController *)selfCopy signInTask];
      sub_10011A49C(buf, "[BuddyAppleIDController _upgradeAccountWithAuthenticationResults:completion:]", passcodeCacheManager, signInTask4);
      _os_log_impl(&_mh_execute_header, oslog, v41, "%s: Setting cache manager %@ on sign in task %@", buf, 0x20u);
    }

    objc_storeStrong(&oslog, 0);
    passcodeCacheManager2 = [(BuddyAppleIDController *)selfCopy passcodeCacheManager];
    signInTask5 = [(BuddyAppleIDController *)selfCopy signInTask];
    [(BuddyAppleIDSignInTask *)signInTask5 setCacheManager:passcodeCacheManager2];
  }

  v18 = [BuddyAppleIDSpinnerPage alloc];
  v40 = [(BuddyAppleIDSpinnerPage *)v18 initWithAccountMode:[(BuddyAppleIDController *)selfCopy operationType]];
  navigationController2 = [(BuddyAppleIDController *)selfCopy navigationController];
  [(UINavigationController *)navigationController2 pushViewController:v40 animated:1];

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
  ams_activeiTunesAccount = [v35 ams_activeiTunesAccount];
  aa_altDSID = [ams_activeiTunesAccount aa_altDSID];
  v25 = [v22 isEqualToString:aa_altDSID];

  if (v25)
  {
    [v36 addObject:AIDAServiceTypeStore];
  }

  [(BuddyAppleIDController *)selfCopy _willStartResponsibilityViewControllerPushSession];
  signInTask6 = [(BuddyAppleIDController *)selfCopy signInTask];
  v27 = location[0];
  v28 = _NSConcreteStackBlock;
  v29 = -1073741824;
  v30 = 0;
  v31 = sub_100144AEC;
  v32 = &unk_10032D860;
  v33 = selfCopy;
  v34 = v43;
  [(BuddyAppleIDSignInTask *)signInTask6 signInToServices:v36 authenticationResults:v27 completion:&v28];

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
  selfCopy = self;
  v9[1] = a2;
  [(BuddyAppleIDController *)self setAssumeResponsibilityForRUIPage:1];
  [(BuddyAppleIDController *)selfCopy _setupAccountForSecurityUpgrade];
  v9[0] = [(BuddyAppleIDController *)selfCopy _authenticationContextForSecurityUpgrade];
  location = objc_alloc_init(AKAppleIDAuthenticationController);
  v2 = _NSConcreteStackBlock;
  v3 = -1073741824;
  v4 = 0;
  v5 = sub_100144F18;
  v6 = &unk_10032D598;
  v7 = selfCopy;
  [location authenticateWithContext:v9[0] completion:&v2];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v9, 0);
}

- (id)_authenticationContextForSecurityUpgrade
{
  selfCopy = self;
  v16[1] = a2;
  v16[0] = objc_alloc_init(AKAppleIDAuthenticationInAppContext);
  navigationController = [(BuddyAppleIDController *)selfCopy navigationController];
  [v16[0] setPresentingViewController:navigationController];

  v3 = +[AKAccountManager sharedInstance];
  accountToUpgrade = [(BuddyAppleIDController *)selfCopy accountToUpgrade];
  v5 = [(AKAccountManager *)v3 altDSIDForAccount:accountToUpgrade];
  [v16[0] setAltDSID:v5];

  accountToUpgrade2 = [(BuddyAppleIDController *)selfCopy accountToUpgrade];
  username = [(ACAccount *)accountToUpgrade2 username];
  [v16[0] setUsername:username];

  [v16[0] setIsUsernameEditable:0];
  [v16[0] setAppProvidedContext:AKAppleIDAuthenticationAppProvidedContextAuthless];
  [v16[0] setNeedsSecurityUpgradeUI:1];
  [v16[0] setShouldOfferSecurityUpgrade:1];
  [v16[0] setForceInlinePresentation:1];
  if ([(BuddyAppleIDController *)selfCopy accountToUpgradeIsPrimary])
  {
    if ((+[BYWarranty shouldDisplay]& 1) != 0)
    {
      httpHeadersForRemoteUI = [v16[0] httpHeadersForRemoteUI];
      v9 = [httpHeadersForRemoteUI mutableCopy];
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
  selfCopy = self;
  v10[1] = a2;
  v10[0] = [(BuddyAppleIDController *)self accountToUpgrade];
  v2 = +[AKAccountManager sharedInstance];
  v9 = [(AKAccountManager *)v2 altDSIDForAccount:v10[0]];

  v3 = +[AKAccountManager sharedInstance];
  location = [(AKAccountManager *)v3 primaryAuthKitAccount];

  v4 = +[AKAccountManager sharedInstance];
  v5 = [(AKAccountManager *)v4 altDSIDForAccount:location];
  -[BuddyAppleIDController setAccountToUpgradeIsPrimary:](selfCopy, "setAccountToUpgradeIsPrimary:", [v9 isEqualToString:v5] & 1);

  if ([(BuddyAppleIDController *)selfCopy accountToUpgradeIsPrimary])
  {
    v6 = +[BuddyAccountTools sharedBuddyAccountTools];
    primaryAccount = [v6 primaryAccount];
    [(BuddyAppleIDController *)selfCopy setAccountToUpgrade:primaryAccount];
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(v10, 0);
}

- (void)_showSpinnerPageWithIdentifier:(id)identifier handler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v11 = 0;
  objc_storeStrong(&v11, handler);
  navigationController = [(BuddyAppleIDController *)selfCopy navigationController];
  topViewController = [navigationController topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    (*(v11 + 2))();
  }

  else
  {
    v7 = [BuddyAppleIDSpinnerPage alloc];
    v8 = [(BuddyAppleIDSpinnerPage *)v7 initWithAccountMode:[(BuddyAppleIDController *)selfCopy operationType]];
    [(BuddyAppleIDController *)selfCopy _showSpinnerPage:v8 appearanceHandler:v11, v8];
    objc_storeStrong(&v9, 0);
  }

  objc_storeStrong(&navigationController, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)_showSpinnerPage:(id)page appearanceHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, page);
  v8 = 0;
  objc_storeStrong(&v8, handler);
  navigationController = [(BuddyAppleIDController *)selfCopy navigationController];
  topViewController = [(UINavigationController *)navigationController topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8[2]();
  }

  else
  {
    [(BuddyAppleIDController *)selfCopy _setAppearanceHandler:v8 forSpinnerPage:location[0]];
    [location[0] setSpinnerDelegate:selfCopy];
    [(BuddyAppleIDController *)selfCopy _pushNextViewController:location[0]];
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)_pushNextViewController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  navigationController = [(BuddyAppleIDController *)selfCopy navigationController];
  topViewController = [(UINavigationController *)navigationController topViewController];

  if ((objc_opt_respondsToSelector() & 1) != 0 && ([(UIViewController *)topViewController controllerAllowsNavigatingBack]& 1) == 0)
  {
    navigationItem = [location[0] navigationItem];
    [navigationItem setHidesBackButton:1];
  }

  navigationController2 = [(BuddyAppleIDController *)selfCopy navigationController];
  [(UINavigationController *)navigationController2 pushViewController:location[0] animated:1];

  objc_storeStrong(&topViewController, 0);
  objc_storeStrong(location, 0);
}

- (void)_setAppearanceHandler:(id)handler forSpinnerPage:(id)page
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  v12 = 0;
  objc_storeStrong(&v12, page);
  if (location[0])
  {
    spinnerAppearanceHandlers = [(BuddyAppleIDController *)selfCopy spinnerAppearanceHandlers];
    v6 = spinnerAppearanceHandlers == 0;

    if (v6)
    {
      v7 = objc_alloc_init(NSMutableDictionary);
      [(BuddyAppleIDController *)selfCopy setSpinnerAppearanceHandlers:v7];
    }

    v10 = [NSValue valueWithPointer:v12];
    v8 = objc_retainBlock(location[0]);
    spinnerAppearanceHandlers2 = [(BuddyAppleIDController *)selfCopy spinnerAppearanceHandlers];
    [(NSMutableDictionary *)spinnerAppearanceHandlers2 setObject:v8 forKeyedSubscript:v10];

    [v12 setSpinnerDelegate:selfCopy];
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
  selfCopy = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    authAttemptLandingViewController = [(BuddyAppleIDController *)selfCopy authAttemptLandingViewController];
    navigationController = [(BuddyAppleIDController *)selfCopy navigationController];
    topViewController = [(UINavigationController *)navigationController topViewController];
    sub_100078180(buf, authAttemptLandingViewController, topViewController);
    _os_log_debug_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEBUG, "Auth attempt landing = %@, top view controller = %@", buf, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  authAttemptLandingViewController2 = [(BuddyAppleIDController *)selfCopy authAttemptLandingViewController];

  if (authAttemptLandingViewController2)
  {
    navigationController2 = [(BuddyAppleIDController *)selfCopy navigationController];
    viewControllers = [(UINavigationController *)navigationController2 viewControllers];
    authAttemptLandingViewController3 = [(BuddyAppleIDController *)selfCopy authAttemptLandingViewController];
    v9 = [(NSArray *)viewControllers containsObject:authAttemptLandingViewController3];

    if (v9)
    {
      navigationController3 = [(BuddyAppleIDController *)selfCopy navigationController];
      authAttemptLandingViewController4 = [(BuddyAppleIDController *)selfCopy authAttemptLandingViewController];
      v12 = [(UINavigationController *)navigationController3 popToViewController:authAttemptLandingViewController4 animated:1];
    }

    [(BuddyAppleIDController *)selfCopy setAuthAttemptLandingViewController:0];
  }
}

- (void)_removeBackToViewControllerMatchingBlock:(id)block withOffset:(int64_t)offset
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, block);
  offsetCopy = offset;
  v13 = 0;
  v12 = objc_opt_new();
  navigationController = [(BuddyAppleIDController *)selfCopy navigationController];
  viewControllers = [(UINavigationController *)navigationController viewControllers];

  if ([viewControllers count] > offsetCopy)
  {
    for (i = [viewControllers count] - offsetCopy - 1; i > 0; --i)
    {
      v6 = location[0];
      v7 = [viewControllers objectAtIndexedSubscript:i];
      LOBYTE(v6) = v6[2](v6, v7) ^ 1;

      if ((v6 & 1) == 0)
      {
        v13 = 1;
        break;
      }

      v8 = [viewControllers objectAtIndexedSubscript:i];
      [v12 addObject:v8];
    }

    if (v13)
    {
      flowItemDelegate = [(BuddyAppleIDController *)selfCopy flowItemDelegate];
      [(BFFFlowItemDelegate *)flowItemDelegate removeViewControllersOnNextPush:v12];
    }
  }

  objc_storeStrong(&viewControllers, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)_setLogInOptionsForBuddyAppleIDAuthMode:(int)mode signInController:(id)controller
{
  selfCopy = self;
  v42 = a2;
  modeCopy = mode;
  objc_initWeak(&location, controller);
  v39 = selfCopy;
  hasProximityConnection = [(BuddyAppleIDController *)selfCopy hasProximityConnection];
  v37 = +[AKFeatureManager isProxAuthEnabled]& 1;
  v4 = 0;
  if ((hasProximityConnection & 1) == 0)
  {
    v4 = v37;
  }

  v36 = v4;
  if (modeCopy == 1 || modeCopy == 5 || modeCopy == 4)
  {
    if (modeCopy == 1)
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
          sub_100075A38(v46, modeCopy, [(BuddyAppleIDController *)selfCopy hasProximityConnection]);
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

    if ((modeCopy - 2) < 2)
    {
      goto LABEL_24;
    }

    if ((modeCopy - 4) < 2)
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
          sub_100075A38(v45, modeCopy, [(BuddyAppleIDController *)selfCopy hasProximityConnection]);
          _os_log_impl(&_mh_execute_header, v10, v9, "Not showing Apple ID Proximity Login for auth mode %i, in prox flow %i", v45, 0xEu);
        }

        objc_storeStrong(&v10, 0);
      }

      goto LABEL_27;
    }

    if ((modeCopy - 6) < 3)
    {
LABEL_24:
      v8 = _BYLoggingFacility();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        sub_100082D54(v44, modeCopy);
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
    sub_100082D54(buf, modeCopy);
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