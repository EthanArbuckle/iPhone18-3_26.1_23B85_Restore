@interface BuddyProximityCloudDependentFlow
+ (id)allowedFlowItems;
- (BOOL)controllerNeedsToRun;
- (BOOL)responsibleForViewController:(id)controller;
- (BuddyProximityCloudDependentFlow)initWithNavigationController:(id)controller flowDelegate:(id)delegate flowStarter:(id)starter dependencyInjector:(id)injector;
- (void)_endFlowPrematurely;
- (void)_flowItemDone;
- (void)_updateClassListWithPasscodeShownInitially:(BOOL)initially;
- (void)configureFlowItem:(id)item;
- (void)connectionTerminated;
- (void)flowItemDone:(id)done nextItemClass:(Class)class;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)proximitySetupCompletedWithResult:(id)result;
- (void)proximitySetupSelectedAccount:(int64_t)account completion:(id)completion;
- (void)pushFlowItem:(id)item inFlow:(id)flow animated:(BOOL)animated;
- (void)setupPasscodeAndBiometricWithCompletion:(id)completion;
- (void)setupPerformAIDASignInWith:(id)with completion:(id)completion;
@end

@implementation BuddyProximityCloudDependentFlow

- (BuddyProximityCloudDependentFlow)initWithNavigationController:(id)controller flowDelegate:(id)delegate flowStarter:(id)starter dependencyInjector:(id)injector
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v15 = 0;
  objc_storeStrong(&v15, delegate);
  v14 = 0;
  objc_storeStrong(&v14, starter);
  v13 = 0;
  objc_storeStrong(&v13, injector);
  v9 = selfCopy;
  selfCopy = 0;
  v12.receiver = v9;
  v12.super_class = BuddyProximityCloudDependentFlow;
  selfCopy = [(BuddyProximityCloudDependentFlow *)&v12 initWithNavigationController:location[0] flowDelegate:v15 flowStarter:v14 dependencyInjector:v13];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    [selfCopy _updateClassListWithPasscodeShownInitially:0];
  }

  v10 = selfCopy;
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v10;
}

- (void)configureFlowItem:(id)item
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = location[0];
    viewController = [(BuddyProximityCloudDependentFlow *)selfCopy viewController];
    [v5 setViewController:viewController];

    objc_storeStrong(&v5, 0);
  }

  v4.receiver = selfCopy;
  v4.super_class = BuddyProximityCloudDependentFlow;
  [(BuddyProximityCloudDependentFlow *)&v4 configureFlowItem:location[0]];
  objc_storeStrong(location, 0);
}

+ (id)allowedFlowItems
{
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  return [NSArray arrayWithObjects:v5 count:3, a2, self];
}

- (BOOL)controllerNeedsToRun
{
  selfCopy = self;
  oslog[1] = a2;
  managedConfiguration = [(BuddyProximityCloudDependentFlow *)self managedConfiguration];
  v3 = [(MCProfileConnection *)managedConfiguration effectiveBoolValueForSetting:MCFeatureAccountModificationAllowed];

  if (v3 == 2)
  {
    oslog[0] = _BYLoggingFacility();
    v22 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v4 = oslog[0];
      v5 = v22;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v4, v5, "Skipping proximity sign in, account modification is restricted", buf, 2u);
    }

    objc_storeStrong(oslog, 0);
    return 0;
  }

  else
  {
    networkProvider = [(BuddyProximityCloudDependentFlow *)selfCopy networkProvider];
    v7 = ![(BuddyNetworkProvider *)networkProvider networkReachable];

    if (v7)
    {
      v20 = _BYLoggingFacility();
      v19 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v20;
        v9 = v19;
        sub_10006AA68(v18);
        _os_log_impl(&_mh_execute_header, v8, v9, "Skipping proximity sign in, network is not reachable", v18, 2u);
      }

      objc_storeStrong(&v20, 0);
      return 0;
    }

    else
    {
      proximitySetupController = [(BuddyProximityCloudDependentFlow *)selfCopy proximitySetupController];
      v11 = ![(ProximitySetupController *)proximitySetupController hasConnection];

      if (v11)
      {
        return 0;
      }

      else
      {
        proximitySetupController2 = [(BuddyProximityCloudDependentFlow *)selfCopy proximitySetupController];
        dependentController = [(ProximitySetupController *)proximitySetupController2 dependentController];
        v14 = dependentController == 0;

        if (v14)
        {
          return 0;
        }

        else
        {
          v15 = +[ACAccountStore defaultStore];
          aa_primaryAppleAccount = [v15 aa_primaryAppleAccount];

          return aa_primaryAppleAccount == 0;
        }
      }
    }
  }
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  proximitySetupController = [(BuddyProximityCloudDependentFlow *)selfCopy proximitySetupController];
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001E5FC8;
  v8 = &unk_10032BB88;
  v9 = selfCopy;
  v10 = location[0];
  [(ProximitySetupController *)proximitySetupController waitForIntent:&v4];

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)responsibleForViewController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  controllers = [(BuddyProximityCloudDependentFlow *)selfCopy controllers];
  lastObject = [controllers lastObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_22;
  }

  controllers2 = [(BuddyProximityCloudDependentFlow *)selfCopy controllers];
  lastObject2 = [controllers2 lastObject];

  memset(__b, 0, sizeof(__b));
  controllers3 = [lastObject2 controllers];
  v8 = [controllers3 countByEnumeratingWithState:__b objects:v25 count:16];
  if (v8)
  {
    v9 = *__b[2];
    do
    {
      for (i = 0; i < v8; ++i)
      {
        if (*__b[2] != v9)
        {
          objc_enumerationMutation(controllers3);
        }

        v20 = *(__b[1] + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && v20 == location[0])
        {
          v24 = 1;
          v18 = 1;
          goto LABEL_19;
        }

        v16 = 0;
        v11 = 0;
        if (objc_opt_respondsToSelector())
        {
          viewController = [v20 viewController];
          v16 = 1;
          v11 = viewController == location[0];
        }

        if (v16)
        {
        }

        if (v11)
        {
          v24 = 1;
          v18 = 1;
          goto LABEL_19;
        }
      }

      v8 = [controllers3 countByEnumeratingWithState:__b objects:v25 count:16];
    }

    while (v8);
  }

  v18 = 0;
LABEL_19:

  if (!v18)
  {
    v18 = 0;
  }

  objc_storeStrong(&lastObject2, 0);
  if (!v18)
  {
LABEL_22:
    viewController2 = [(BuddyProximityCloudDependentFlow *)selfCopy viewController];
    v13 = location[0];

    if (viewController2 == v13)
    {
      v24 = 1;
    }

    else
    {
      v15.receiver = selfCopy;
      v15.super_class = BuddyProximityCloudDependentFlow;
      v24 = [(BuddyProximityCloudDependentFlow *)&v15 responsibleForViewController:location[0]];
    }

    v18 = 1;
  }

  objc_storeStrong(location, 0);
  return v24 & 1;
}

- (void)_updateClassListWithPasscodeShownInitially:(BOOL)initially
{
  selfCopy = self;
  v6 = a2;
  initiallyCopy = initially;
  v4 = objc_alloc_init(NSMutableArray);
  if (!initiallyCopy)
  {
    [v4 addObject:objc_opt_class()];
  }

  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v8[2] = objc_opt_class();
  v3 = [NSArray arrayWithObjects:v8 count:3];
  [v4 addObjectsFromArray:v3];

  [(BuddyProximityCloudDependentFlow *)selfCopy setClassList:v4];
  objc_storeStrong(&v4, 0);
}

- (void)_flowItemDone
{
  selfCopy = self;
  v15[1] = a2;
  v2 = &_dispatch_main_q;
  dispatch_assert_queue_V2(v2);

  v15[0] = [(BuddyProximityCloudDependentFlow *)selfCopy navigationController];
  viewControllers = [v15[0] viewControllers];
  viewController = [(BuddyProximityCloudDependentFlow *)selfCopy viewController];
  v5 = [viewControllers indexOfObject:viewController];

  v14 = v5;
  viewControllers2 = [v15[0] viewControllers];
  v7 = v5;
  viewControllers3 = [v15[0] viewControllers];
  v18 = v7;
  v17 = ([viewControllers3 count] - v14);
  v19 = v7;
  v20 = v17;
  v9 = [NSIndexSet indexSetWithIndexesInRange:v7, v17];
  location = [viewControllers2 objectsAtIndexes:v9];

  navigationFlowDelegate = [(BuddyProximityCloudDependentFlow *)selfCopy navigationFlowDelegate];
  [navigationFlowDelegate removeViewControllersOnNextPush:location];

  proximitySetupController = [(BuddyProximityCloudDependentFlow *)selfCopy proximitySetupController];
  [(ProximitySetupController *)proximitySetupController removeObserver:selfCopy];

  flowItemDelegate = [(BuddyProximityCloudDependentFlow *)selfCopy flowItemDelegate];
  [flowItemDelegate flowItemDone:selfCopy];

  objc_storeStrong(&location, 0);
  objc_storeStrong(v15, 0);
}

- (void)_endFlowPrematurely
{
  selfCopy = self;
  v15[1] = a2;
  v2 = dispatch_get_global_queue(0, 0);
  block = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_1001E6A98;
  v14 = &unk_10032B0D0;
  v15[0] = selfCopy;
  dispatch_async(v2, &block);

  v3 = &_dispatch_main_q;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001E6AE8;
  v8 = &unk_10032B0D0;
  v9 = selfCopy;
  dispatch_async(v3, &v4);

  objc_storeStrong(&v9, 0);
  objc_storeStrong(v15, 0);
}

- (void)flowItemDone:(id)done nextItemClass:(Class)class
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, done);
  classCopy = class;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = location[0];
    passcodeFlowCompletion = [(BuddyProximityCloudDependentFlow *)selfCopy passcodeFlowCompletion];

    if (passcodeFlowCompletion)
    {
      miscState = [(BuddyProximityCloudDependentFlow *)selfCopy miscState];
      [(BuddyMiscState *)miscState setHasPresentedPasscodeFlow:1];

      proximitySetupController = [(BuddyProximityCloudDependentFlow *)selfCopy proximitySetupController];
      hasConnection = [(ProximitySetupController *)proximitySetupController hasConnection];

      if (hasConnection)
      {
        v9 = selfCopy;
        viewControllers = [v18 viewControllers];
        [(BuddyProximityCloudDependentFlow *)v9 removeViewControllersOnNextPush:viewControllers];

        passcodeFlowCompletion2 = [(BuddyProximityCloudDependentFlow *)selfCopy passcodeFlowCompletion];
        passcodeFlowCompletion2[2](passcodeFlowCompletion2, 1);
      }

      else
      {
        oslog = _BYLoggingFacility();
        v16 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v12 = oslog;
          v13 = v16;
          sub_10006AA68(buf);
          _os_log_impl(&_mh_execute_header, v12, v13, "Prematurely ending dependent flow after passcode/biometrics due to loss of proximity connection", buf, 2u);
        }

        objc_storeStrong(&oslog, 0);
        [(BuddyProximityCloudDependentFlow *)selfCopy _endFlowPrematurely];
      }

      [(BuddyProximityCloudDependentFlow *)selfCopy setPasscodeFlowCompletion:0];
    }

    objc_storeStrong(&v18, 0);
  }

  v14.receiver = selfCopy;
  v14.super_class = BuddyProximityCloudDependentFlow;
  [(BuddyProximityCloudDependentFlow *)&v14 flowItemDone:location[0] nextItemClass:classCopy];
  objc_storeStrong(location, 0);
}

- (void)pushFlowItem:(id)item inFlow:(id)flow animated:(BOOL)animated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  v17 = 0;
  objc_storeStrong(&v17, flow);
  animatedCopy = animated;
  objc_opt_class();
  v14 = 0;
  v12 = 0;
  v10 = 0;
  v7 = 0;
  if (objc_opt_isKindOfClass())
  {
    navigationController = [(BuddyProximityCloudDependentFlow *)selfCopy navigationController];
    v14 = 1;
    topViewController = [navigationController topViewController];
    v12 = 1;
    viewController = [(BuddyProximityCloudDependentFlow *)selfCopy viewController];
    v10 = 1;
    v7 = topViewController == viewController;
  }

  if (v10)
  {
  }

  if (v12)
  {
  }

  if (v14)
  {
  }

  if (v7)
  {
    v9 = 1;
  }

  else
  {
    v8.receiver = selfCopy;
    v8.super_class = BuddyProximityCloudDependentFlow;
    [(BuddyProximityCloudDependentFlow *)&v8 pushFlowItem:location[0] inFlow:v17 animated:animatedCopy];
    v9 = 0;
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)setupPasscodeAndBiometricWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v3 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001E6FD4;
  v8 = &unk_10032AFD0;
  v9 = selfCopy;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)proximitySetupCompletedWithResult:(id)result
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, result);
  error = [location[0] error];

  if (error)
  {
    v51 = _BYLoggingFacility();
    v50 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      accountType = [location[0] accountType];
      v48 = 0;
      v46 = 0;
      v44 = 0;
      v42 = 0;
      v40 = 0;
      v38 = 0;
      if (_BYIsInternalInstall())
      {
        error2 = [location[0] error];
        v49 = error2;
        v48 = 1;
      }

      else
      {
        error3 = [location[0] error];
        v46 = 1;
        if (error3)
        {
          error4 = [location[0] error];
          v44 = 1;
          domain = [error4 domain];
          v42 = 1;
          error5 = [location[0] error];
          v40 = 1;
          error2 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", domain, [error5 code]);
          v39 = error2;
          v38 = 1;
        }

        else
        {
          error2 = 0;
        }
      }

      sub_1000A79D4(buf, accountType, error2);
      _os_log_error_impl(&_mh_execute_header, v51, v50, "Sign-in failed for account type (%ld): %{public}@", buf, 0x16u);
      if (v38)
      {
      }

      if (v40)
      {
      }

      if (v42)
      {
      }

      if (v44)
      {
      }

      if (v46)
      {
      }

      if (v48)
      {
      }
    }

    objc_storeStrong(&v51, 0);
    v6 = dispatch_get_global_queue(0, 0);
    block = _NSConcreteStackBlock;
    v33 = -1073741824;
    v34 = 0;
    v35 = sub_1001E7A08;
    v36 = &unk_10032B0D0;
    v37 = selfCopy;
    dispatch_async(v6, &block);

    objc_storeStrong(&v37, 0);
  }

  else
  {
    accountType2 = [location[0] accountType];
    if (accountType2)
    {
      if ((accountType2 - 1) < 2)
      {
        v22 = _BYLoggingFacility();
        v21 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          sub_100077E48(v54, [location[0] accountType]);
          _os_log_impl(&_mh_execute_header, v22, v21, "Sign-in unnecessary for account type (%ld)", v54, 0xCu);
        }

        objc_storeStrong(&v22, 0);
      }
    }

    else
    {
      oslog = _BYLoggingFacility();
      v30 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v8 = oslog;
        v9 = v30;
        sub_10006AA68(v29);
        _os_log_impl(&_mh_execute_header, v8, v9, "Sign-in succeeded!", v29, 2u);
      }

      objc_storeStrong(&oslog, 0);
      v10 = +[BFFAppleAccountInfo primaryAccountInfo];
      authResults = [location[0] authResults];
      [v10 updateWithAuthenticationResults:authResults];

      proximitySetupController = [(BuddyProximityCloudDependentFlow *)selfCopy proximitySetupController];
      [(ProximitySetupController *)proximitySetupController setSignedIniCloudAccount:1];

      v13 = dispatch_get_global_queue(0, 0);
      v23 = _NSConcreteStackBlock;
      v24 = -1073741824;
      v25 = 0;
      v26 = sub_1001E7A58;
      v27 = &unk_10032B0D0;
      v28 = selfCopy;
      dispatch_async(v13, &v23);

      objc_storeStrong(&v28, 0);
    }
  }

  v14 = &_dispatch_main_q;
  v15 = _NSConcreteStackBlock;
  v16 = -1073741824;
  v17 = 0;
  v18 = sub_1001E7AA8;
  v19 = &unk_10032B0D0;
  v20 = selfCopy;
  dispatch_async(v14, &v15);

  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (void)proximitySetupSelectedAccount:(int64_t)account completion:(id)completion
{
  v4[3] = self;
  v4[2] = a2;
  v4[1] = account;
  v4[0] = 0;
  objc_storeStrong(v4, completion);
  objc_storeStrong(v4, 0);
}

- (void)setupPerformAIDASignInWith:(id)with completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, with);
  v22 = 0;
  objc_storeStrong(&v22, completion);
  v5 = [BuddyAppleIDSignInTask alloc];
  featureFlags = [(BuddyProximityCloudDependentFlow *)selfCopy featureFlags];
  v7 = +[BuddyAccountTools sharedBuddyAccountTools];
  v8 = [(BuddyAppleIDSignInTask *)v5 initWithFeatureFlags:featureFlags accountTools:v7];
  [(BuddyProximityCloudDependentFlow *)selfCopy setSignInTask:v8];

  navigationController = [(BuddyProximityCloudDependentFlow *)selfCopy navigationController];
  signInTask = [(BuddyProximityCloudDependentFlow *)selfCopy signInTask];
  [(BuddyAppleIDSignInTask *)signInTask setNavigationController:navigationController];

  signInTask2 = [(BuddyProximityCloudDependentFlow *)selfCopy signInTask];
  [(BuddyAppleIDSignInTask *)signInTask2 setEnableFindMy:0];

  signInTask3 = [(BuddyProximityCloudDependentFlow *)selfCopy signInTask];
  [(BuddyAppleIDSignInTask *)signInTask3 setRestoreFromBackupMode:1];

  signInTask4 = [(BuddyProximityCloudDependentFlow *)selfCopy signInTask];
  v14 = location[0];
  v15 = _NSConcreteStackBlock;
  v16 = -1073741824;
  v17 = 0;
  v18 = sub_1001E7D78;
  v19 = &unk_10032DEC8;
  v20 = selfCopy;
  v21 = v22;
  [(BuddyAppleIDSignInTask *)signInTask4 signInToAllServicesWithAuthenticationResults:v14 completion:&v15];

  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)connectionTerminated
{
  selfCopy = self;
  v8[1] = a2;
  v2 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1001E7F60;
  v7 = &unk_10032B0D0;
  v8[0] = selfCopy;
  dispatch_async(v2, &block);

  objc_storeStrong(v8, 0);
}

@end