@interface BuddyProximityCloudController
- (BuddyProximityCloudController)init;
- (void)_beginSignIn;
- (void)_signInCompleted:(id)completed;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation BuddyProximityCloudController

- (BuddyProximityCloudController)init
{
  v11 = a2;
  v3 = +[NSBundle mainBundle];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"PROXIMITY_SETUP_SETTING_UP_APPLE_ID" value:&stru_10032F900 table:@"Localizable"];
  location = 0;
  v10.receiver = self;
  v10.super_class = BuddyProximityCloudController;
  v5 = [(BuddyProximityCloudController *)&v10 initWithSpinnerText:v4];
  location = v5;
  objc_storeStrong(&location, v5);

  if (v5)
  {
    navigationItem = [location navigationItem];
    [navigationItem setTitle:&stru_10032F900];

    navigationItem2 = [location navigationItem];
    [navigationItem2 setHidesBackButton:1 animated:0];
  }

  v8 = location;
  objc_storeStrong(&location, 0);
  return v8;
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v26 = a2;
  appearCopy = appear;
  v24.receiver = self;
  v24.super_class = BuddyProximityCloudController;
  [(BuddyProximityCloudController *)&v24 viewDidAppear:appear];
  if (![(BuddyProximityCloudController *)selfCopy hasInitiatedLogin])
  {
    [(BuddyProximityCloudController *)selfCopy setHasInitiatedLogin:1];
    miscState = [(BuddyProximityCloudController *)selfCopy miscState];
    migrationManager = [(BuddyMiscState *)miscState migrationManager];

    if ([migrationManager willMigrate])
    {
      location = _BYLoggingFacility();
      v21 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
      {
        v4 = location;
        v5 = v21;
        sub_10006AA68(buf);
        _os_log_impl(&_mh_execute_header, v4, v5, "Waiting for keychain transfer and import...", buf, 2u);
      }

      objc_storeStrong(&location, 0);
      v6 = migrationManager;
      v14 = _NSConcreteStackBlock;
      v15 = -1073741824;
      v16 = 0;
      v17 = sub_100168354;
      v18 = &unk_10032B6F0;
      v19 = selfCopy;
      [v6 waitForKeychain:&v14];
      objc_storeStrong(&v19, 0);
    }

    else
    {
      v7 = dispatch_get_global_queue(0, 0);
      v8 = _NSConcreteStackBlock;
      v9 = -1073741824;
      v10 = 0;
      v11 = sub_100168414;
      v12 = &unk_10032B0D0;
      v13 = selfCopy;
      dispatch_async(v7, &v8);

      objc_storeStrong(&v13, 0);
    }

    objc_storeStrong(&migrationManager, 0);
  }
}

- (void)_beginSignIn
{
  selfCopy = self;
  oslog[1] = a2;
  proximitySetupController = [(BuddyProximityCloudController *)self proximitySetupController];
  createSignInTask = [(ProximitySetupController *)proximitySetupController createSignInTask];
  [selfCopy setSignInTask:createSignInTask];

  navigationController = [selfCopy navigationController];
  signInTask = [selfCopy signInTask];
  [signInTask setNavigationController:navigationController];

  miscState = [selfCopy miscState];
  migrationManager = [miscState migrationManager];
  isMigrating = [migrationManager isMigrating];
  signInTask2 = [selfCopy signInTask];
  [signInTask2 setIgnoreLockAssertErrors:isMigrating & 1];

  featureFlags = [selfCopy featureFlags];
  LOBYTE(migrationManager) = [featureFlags isUseCDPContextSecretInsteadOfSBDSecretEnabled];

  if (migrationManager)
  {
    oslog[0] = _BYLoggingFacility();
    v22 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      passcodeCacheManager = [selfCopy passcodeCacheManager];
      signInTask3 = [selfCopy signInTask];
      sub_10011A49C(buf, "[BuddyProximityCloudController _beginSignIn]", passcodeCacheManager, signInTask3);
      _os_log_impl(&_mh_execute_header, oslog[0], v22, "%s: Setting cache manager %@ on sign in task %@", buf, 0x20u);
    }

    objc_storeStrong(oslog, 0);
    passcodeCacheManager2 = [selfCopy passcodeCacheManager];
    signInTask4 = [selfCopy signInTask];
    [signInTask4 setCacheManager:passcodeCacheManager2];
  }

  signInTask5 = [selfCopy signInTask];
  v16 = _NSConcreteStackBlock;
  v17 = -1073741824;
  v18 = 0;
  v19 = sub_10016879C;
  v20 = &unk_10032B6F0;
  v21 = selfCopy;
  [signInTask5 authenticateThenSignInWithCompletion:&v16];

  objc_storeStrong(&v21, 0);
}

- (void)_signInCompleted:(id)completed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completed);
  if (location[0])
  {
    v3 = dispatch_get_global_queue(0, 0);
    block = _NSConcreteStackBlock;
    v21 = -1073741824;
    v22 = 0;
    v23 = sub_100168BA0;
    v24 = &unk_10032B0D0;
    v25 = selfCopy;
    dispatch_async(v3, &block);

    objc_storeStrong(&v25, 0);
  }

  else
  {
    lockdownModeProvider = [selfCopy lockdownModeProvider];
    [lockdownModeProvider fetchAccountStateWithCompletionHandler:&stru_10032DBF0];

    proximitySetupController = [selfCopy proximitySetupController];
    [proximitySetupController setSignedIniCloudAccount:1];
  }

  analyticsManager = [selfCopy analyticsManager];
  v28[0] = @"success";
  v7 = [NSNumber numberWithInt:location[0] == 0];
  v29[0] = v7;
  v28[1] = @"error";
  domain = [location[0] domain];
  v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (%ld)", domain, [location[0] code]);
  v29[1] = v9;
  v28[2] = @"connected";
  proximitySetupController2 = [selfCopy proximitySetupController];
  v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [proximitySetupController2 hasConnection] & 1);
  v29[2] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:3];
  [analyticsManager addEvent:@"com.apple.setupassistant.ios.proximity.proximity.appleid" withPayload:v12 persist:1];

  v13 = &_dispatch_main_q;
  v14 = _NSConcreteStackBlock;
  v15 = -1073741824;
  v16 = 0;
  v17 = sub_100168C04;
  v18 = &unk_10032B0D0;
  v19 = selfCopy;
  dispatch_async(v13, &v14);

  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

@end