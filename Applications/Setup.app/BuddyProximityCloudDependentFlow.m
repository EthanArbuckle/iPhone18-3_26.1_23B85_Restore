@interface BuddyProximityCloudDependentFlow
+ (id)allowedFlowItems;
- (BOOL)controllerNeedsToRun;
- (BOOL)responsibleForViewController:(id)a3;
- (BuddyProximityCloudDependentFlow)initWithNavigationController:(id)a3 flowDelegate:(id)a4 flowStarter:(id)a5 dependencyInjector:(id)a6;
- (void)_endFlowPrematurely;
- (void)_flowItemDone;
- (void)_updateClassListWithPasscodeShownInitially:(BOOL)a3;
- (void)configureFlowItem:(id)a3;
- (void)connectionTerminated;
- (void)flowItemDone:(id)a3 nextItemClass:(Class)a4;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)proximitySetupCompletedWithResult:(id)a3;
- (void)proximitySetupSelectedAccount:(int64_t)a3 completion:(id)a4;
- (void)pushFlowItem:(id)a3 inFlow:(id)a4 animated:(BOOL)a5;
- (void)setupPasscodeAndBiometricWithCompletion:(id)a3;
- (void)setupPerformAIDASignInWith:(id)a3 completion:(id)a4;
@end

@implementation BuddyProximityCloudDependentFlow

- (BuddyProximityCloudDependentFlow)initWithNavigationController:(id)a3 flowDelegate:(id)a4 flowStarter:(id)a5 dependencyInjector:(id)a6
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14 = 0;
  objc_storeStrong(&v14, a5);
  v13 = 0;
  objc_storeStrong(&v13, a6);
  v9 = v17;
  v17 = 0;
  v12.receiver = v9;
  v12.super_class = BuddyProximityCloudDependentFlow;
  v17 = [(BuddyProximityCloudDependentFlow *)&v12 initWithNavigationController:location[0] flowDelegate:v15 flowStarter:v14 dependencyInjector:v13];
  objc_storeStrong(&v17, v17);
  if (v17)
  {
    [v17 _updateClassListWithPasscodeShownInitially:0];
  }

  v10 = v17;
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v17, 0);
  return v10;
}

- (void)configureFlowItem:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = location[0];
    v3 = [(BuddyProximityCloudDependentFlow *)v7 viewController];
    [v5 setViewController:v3];

    objc_storeStrong(&v5, 0);
  }

  v4.receiver = v7;
  v4.super_class = BuddyProximityCloudDependentFlow;
  [(BuddyProximityCloudDependentFlow *)&v4 configureFlowItem:location[0]];
  objc_storeStrong(location, 0);
}

+ (id)allowedFlowItems
{
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  return [NSArray arrayWithObjects:v5 count:3, a2, a1];
}

- (BOOL)controllerNeedsToRun
{
  v24 = self;
  oslog[1] = a2;
  v2 = [(BuddyProximityCloudDependentFlow *)self managedConfiguration];
  v3 = [(MCProfileConnection *)v2 effectiveBoolValueForSetting:MCFeatureAccountModificationAllowed];

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
    v6 = [(BuddyProximityCloudDependentFlow *)v24 networkProvider];
    v7 = ![(BuddyNetworkProvider *)v6 networkReachable];

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
      v10 = [(BuddyProximityCloudDependentFlow *)v24 proximitySetupController];
      v11 = ![(ProximitySetupController *)v10 hasConnection];

      if (v11)
      {
        return 0;
      }

      else
      {
        v12 = [(BuddyProximityCloudDependentFlow *)v24 proximitySetupController];
        v13 = [(ProximitySetupController *)v12 dependentController];
        v14 = v13 == 0;

        if (v14)
        {
          return 0;
        }

        else
        {
          v15 = +[ACAccountStore defaultStore];
          v16 = [v15 aa_primaryAppleAccount];

          return v16 == 0;
        }
      }
    }
  }
}

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyProximityCloudDependentFlow *)v12 proximitySetupController];
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001E5FC8;
  v8 = &unk_10032BB88;
  v9 = v12;
  v10 = location[0];
  [(ProximitySetupController *)v3 waitForIntent:&v4];

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)responsibleForViewController:(id)a3
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyProximityCloudDependentFlow *)v23 controllers];
  v4 = [v3 lastObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_22;
  }

  v6 = [(BuddyProximityCloudDependentFlow *)v23 controllers];
  v21 = [v6 lastObject];

  memset(__b, 0, sizeof(__b));
  v7 = [v21 controllers];
  v8 = [v7 countByEnumeratingWithState:__b objects:v25 count:16];
  if (v8)
  {
    v9 = *__b[2];
    do
    {
      for (i = 0; i < v8; ++i)
      {
        if (*__b[2] != v9)
        {
          objc_enumerationMutation(v7);
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
          v17 = [v20 viewController];
          v16 = 1;
          v11 = v17 == location[0];
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

      v8 = [v7 countByEnumeratingWithState:__b objects:v25 count:16];
    }

    while (v8);
  }

  v18 = 0;
LABEL_19:

  if (!v18)
  {
    v18 = 0;
  }

  objc_storeStrong(&v21, 0);
  if (!v18)
  {
LABEL_22:
    v12 = [(BuddyProximityCloudDependentFlow *)v23 viewController];
    v13 = location[0];

    if (v12 == v13)
    {
      v24 = 1;
    }

    else
    {
      v15.receiver = v23;
      v15.super_class = BuddyProximityCloudDependentFlow;
      v24 = [(BuddyProximityCloudDependentFlow *)&v15 responsibleForViewController:location[0]];
    }

    v18 = 1;
  }

  objc_storeStrong(location, 0);
  return v24 & 1;
}

- (void)_updateClassListWithPasscodeShownInitially:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4 = objc_alloc_init(NSMutableArray);
  if (!v5)
  {
    [v4 addObject:objc_opt_class()];
  }

  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v8[2] = objc_opt_class();
  v3 = [NSArray arrayWithObjects:v8 count:3];
  [v4 addObjectsFromArray:v3];

  [(BuddyProximityCloudDependentFlow *)v7 setClassList:v4];
  objc_storeStrong(&v4, 0);
}

- (void)_flowItemDone
{
  v16 = self;
  v15[1] = a2;
  v2 = &_dispatch_main_q;
  dispatch_assert_queue_V2(v2);

  v15[0] = [(BuddyProximityCloudDependentFlow *)v16 navigationController];
  v3 = [v15[0] viewControllers];
  v4 = [(BuddyProximityCloudDependentFlow *)v16 viewController];
  v5 = [v3 indexOfObject:v4];

  v14 = v5;
  v6 = [v15[0] viewControllers];
  v7 = v5;
  v8 = [v15[0] viewControllers];
  v18 = v7;
  v17 = ([v8 count] - v14);
  v19 = v7;
  v20 = v17;
  v9 = [NSIndexSet indexSetWithIndexesInRange:v7, v17];
  location = [v6 objectsAtIndexes:v9];

  v10 = [(BuddyProximityCloudDependentFlow *)v16 navigationFlowDelegate];
  [v10 removeViewControllersOnNextPush:location];

  v11 = [(BuddyProximityCloudDependentFlow *)v16 proximitySetupController];
  [(ProximitySetupController *)v11 removeObserver:v16];

  v12 = [(BuddyProximityCloudDependentFlow *)v16 flowItemDelegate];
  [v12 flowItemDone:v16];

  objc_storeStrong(&location, 0);
  objc_storeStrong(v15, 0);
}

- (void)_endFlowPrematurely
{
  v16 = self;
  v15[1] = a2;
  v2 = dispatch_get_global_queue(0, 0);
  block = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_1001E6A98;
  v14 = &unk_10032B0D0;
  v15[0] = v16;
  dispatch_async(v2, &block);

  v3 = &_dispatch_main_q;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001E6AE8;
  v8 = &unk_10032B0D0;
  v9 = v16;
  dispatch_async(v3, &v4);

  objc_storeStrong(&v9, 0);
  objc_storeStrong(v15, 0);
}

- (void)flowItemDone:(id)a3 nextItemClass:(Class)a4
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = location[0];
    v5 = [(BuddyProximityCloudDependentFlow *)v21 passcodeFlowCompletion];

    if (v5)
    {
      v6 = [(BuddyProximityCloudDependentFlow *)v21 miscState];
      [(BuddyMiscState *)v6 setHasPresentedPasscodeFlow:1];

      v7 = [(BuddyProximityCloudDependentFlow *)v21 proximitySetupController];
      v8 = [(ProximitySetupController *)v7 hasConnection];

      if (v8)
      {
        v9 = v21;
        v10 = [v18 viewControllers];
        [(BuddyProximityCloudDependentFlow *)v9 removeViewControllersOnNextPush:v10];

        v11 = [(BuddyProximityCloudDependentFlow *)v21 passcodeFlowCompletion];
        v11[2](v11, 1);
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
        [(BuddyProximityCloudDependentFlow *)v21 _endFlowPrematurely];
      }

      [(BuddyProximityCloudDependentFlow *)v21 setPasscodeFlowCompletion:0];
    }

    objc_storeStrong(&v18, 0);
  }

  v14.receiver = v21;
  v14.super_class = BuddyProximityCloudDependentFlow;
  [(BuddyProximityCloudDependentFlow *)&v14 flowItemDone:location[0] nextItemClass:v19];
  objc_storeStrong(location, 0);
}

- (void)pushFlowItem:(id)a3 inFlow:(id)a4 animated:(BOOL)a5
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v16 = a5;
  objc_opt_class();
  v14 = 0;
  v12 = 0;
  v10 = 0;
  v7 = 0;
  if (objc_opt_isKindOfClass())
  {
    v15 = [(BuddyProximityCloudDependentFlow *)v19 navigationController];
    v14 = 1;
    v13 = [v15 topViewController];
    v12 = 1;
    v11 = [(BuddyProximityCloudDependentFlow *)v19 viewController];
    v10 = 1;
    v7 = v13 == v11;
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
    v8.receiver = v19;
    v8.super_class = BuddyProximityCloudDependentFlow;
    [(BuddyProximityCloudDependentFlow *)&v8 pushFlowItem:location[0] inFlow:v17 animated:v16];
    v9 = 0;
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)setupPasscodeAndBiometricWithCompletion:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001E6FD4;
  v8 = &unk_10032AFD0;
  v9 = v12;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)proximitySetupCompletedWithResult:(id)a3
{
  v53 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] error];

  if (v3)
  {
    v51 = _BYLoggingFacility();
    v50 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v4 = [location[0] accountType];
      v48 = 0;
      v46 = 0;
      v44 = 0;
      v42 = 0;
      v40 = 0;
      v38 = 0;
      if (_BYIsInternalInstall())
      {
        v5 = [location[0] error];
        v49 = v5;
        v48 = 1;
      }

      else
      {
        v47 = [location[0] error];
        v46 = 1;
        if (v47)
        {
          v45 = [location[0] error];
          v44 = 1;
          v43 = [v45 domain];
          v42 = 1;
          v41 = [location[0] error];
          v40 = 1;
          v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v43, [v41 code]);
          v39 = v5;
          v38 = 1;
        }

        else
        {
          v5 = 0;
        }
      }

      sub_1000A79D4(buf, v4, v5);
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
    v37 = v53;
    dispatch_async(v6, &block);

    objc_storeStrong(&v37, 0);
  }

  else
  {
    v7 = [location[0] accountType];
    if (v7)
    {
      if ((v7 - 1) < 2)
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
      v11 = [location[0] authResults];
      [v10 updateWithAuthenticationResults:v11];

      v12 = [(BuddyProximityCloudDependentFlow *)v53 proximitySetupController];
      [(ProximitySetupController *)v12 setSignedIniCloudAccount:1];

      v13 = dispatch_get_global_queue(0, 0);
      v23 = _NSConcreteStackBlock;
      v24 = -1073741824;
      v25 = 0;
      v26 = sub_1001E7A58;
      v27 = &unk_10032B0D0;
      v28 = v53;
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
  v20 = v53;
  dispatch_async(v14, &v15);

  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (void)proximitySetupSelectedAccount:(int64_t)a3 completion:(id)a4
{
  v4[3] = self;
  v4[2] = a2;
  v4[1] = a3;
  v4[0] = 0;
  objc_storeStrong(v4, a4);
  objc_storeStrong(v4, 0);
}

- (void)setupPerformAIDASignInWith:(id)a3 completion:(id)a4
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  objc_storeStrong(&v22, a4);
  v5 = [BuddyAppleIDSignInTask alloc];
  v6 = [(BuddyProximityCloudDependentFlow *)v24 featureFlags];
  v7 = +[BuddyAccountTools sharedBuddyAccountTools];
  v8 = [(BuddyAppleIDSignInTask *)v5 initWithFeatureFlags:v6 accountTools:v7];
  [(BuddyProximityCloudDependentFlow *)v24 setSignInTask:v8];

  v9 = [(BuddyProximityCloudDependentFlow *)v24 navigationController];
  v10 = [(BuddyProximityCloudDependentFlow *)v24 signInTask];
  [(BuddyAppleIDSignInTask *)v10 setNavigationController:v9];

  v11 = [(BuddyProximityCloudDependentFlow *)v24 signInTask];
  [(BuddyAppleIDSignInTask *)v11 setEnableFindMy:0];

  v12 = [(BuddyProximityCloudDependentFlow *)v24 signInTask];
  [(BuddyAppleIDSignInTask *)v12 setRestoreFromBackupMode:1];

  v13 = [(BuddyProximityCloudDependentFlow *)v24 signInTask];
  v14 = location[0];
  v15 = _NSConcreteStackBlock;
  v16 = -1073741824;
  v17 = 0;
  v18 = sub_1001E7D78;
  v19 = &unk_10032DEC8;
  v20 = v24;
  v21 = v22;
  [(BuddyAppleIDSignInTask *)v13 signInToAllServicesWithAuthenticationResults:v14 completion:&v15];

  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)connectionTerminated
{
  v9 = self;
  v8[1] = a2;
  v2 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1001E7F60;
  v7 = &unk_10032B0D0;
  v8[0] = v9;
  dispatch_async(v2, &block);

  objc_storeStrong(v8, 0);
}

@end