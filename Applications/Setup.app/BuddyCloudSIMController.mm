@interface BuddyCloudSIMController
- (BFFNavigationController)flowNavigationController;
- (BOOL)_isLaunchingPostMigrationOrRestore;
- (BOOL)_sourceHasTransferrablePlans;
- (BOOL)controllerNeedsToRun;
- (id)viewController;
- (void)_endProximityIfApplicable;
- (void)_postponeSIMMigrationForPostRestore;
- (void)_unsetSIMMigrationForPostRestore;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)setNavigationController:(id)a3;
- (void)simSetupFlowCompleted:(unint64_t)a3;
- (void)updateSourceProxCardState:(BOOL)a3;
@end

@implementation BuddyCloudSIMController

- (void)setNavigationController:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BuddyCloudSIMController *)v4 setFlowNavigationController:location[0]];
  objc_storeStrong(location, 0);
}

- (BOOL)controllerNeedsToRun
{
  v2 = [(BuddyCloudSIMController *)self runState];
  v3 = [(BYRunState *)v2 hasCompletedInitialRun];

  if ((v3 & 1) == 0)
  {
    return 1;
  }

  v4 = [(BuddyCloudSIMController *)self miscState];
  v7 = [(BuddyMiscState *)v4 launchedToShowSIMSetupAfterRestore];

  return v7;
}

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v70 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyCloudSIMController *)v70 setupMethod];
  v67 = 0;
  v4 = 1;
  if ([(BuddySetupMethod *)v3 dataTransferMethod]!= 2)
  {
    v68 = [(BuddyCloudSIMController *)v70 setupMethod];
    v67 = 1;
    v4 = [(BuddySetupMethod *)v68 dataTransferMethod]== 1;
  }

  if (v67)
  {
  }

  if (v4)
  {
    v5 = [(BuddyCloudSIMController *)v70 capabilities];
    v6 = [(BYCapabilities *)v5 mgHasBaseband];

    v66 = v6 & 1;
    if (v6)
    {
      [(BuddyCloudSIMController *)v70 _postponeSIMMigrationForPostRestore];
      if (location[0])
      {
        (*(location[0] + 2))(location[0], 0);
      }

      v62 = 1;
    }

    else
    {
      v65 = _BYLoggingFacility();
      v64 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v65;
        v8 = v64;
        sub_10006AA68(buf);
        _os_log_impl(&_mh_execute_header, v7, v8, "CloudSIMController: Cellular not supported", buf, 2u);
      }

      objc_storeStrong(&v65, 0);
      [(BuddyCloudSIMController *)v70 _endProximityIfApplicable];
      (*(location[0] + 2))(location[0], 0);
      v62 = 1;
    }
  }

  else
  {
    v61 = 0;
    v9 = [(BuddyCloudSIMController *)v70 proximitySetupController];
    v10 = [(ProximitySetupController *)v9 hasAppliedSettings];

    if (v10)
    {
      v11 = [(BuddyCloudSIMController *)v70 proximitySetupController];
      v12 = [(ProximitySetupController *)v11 hasConnection];

      if (v12)
      {
        v61 = 3;
      }

      else
      {
        v61 = 2;
      }
    }

    else
    {
      v61 = 1;
    }

    v60 = objc_opt_new();
    v13 = sub_1000F248C();
    [v60 setObject:&off_10033D130 forKeyedSubscript:v13];

    v14 = [NSNumber numberWithUnsignedInteger:v61];
    v15 = sub_1000F2594();
    [v60 setObject:v14 forKeyedSubscript:v15];

    v16 = [(BuddyCloudSIMController *)v70 proximitySetupController];
    v17 = [(ProximitySetupController *)v16 sharingMessageSession];
    v18 = sub_1000F269C();
    [v60 setObject:v17 forKeyedSubscript:v18];

    v19 = [(BuddyCloudSIMController *)v70 proximitySetupController];
    v58 = 0;
    v56 = 0;
    v20 = 0;
    if ([(ProximitySetupController *)v19 hasConnection])
    {
      v59 = [(BuddyCloudSIMController *)v70 proximitySetupController];
      v58 = 1;
      v57 = [v59 information];
      v56 = 1;
      v20 = v57 != 0;
    }

    if (v56)
    {
    }

    if (v58)
    {
    }

    if (v20)
    {
      v21 = [(BuddyCloudSIMController *)v70 proximitySetupController];
      v22 = [(ProximitySetupController *)v21 information];
      v23 = [(SASProximityInformation *)v22 productVersion];
      v24 = sub_1000F27A4();
      [v60 setObject:v23 forKeyedSubscript:v24];

      v25 = [NSNumber numberWithBool:[(BuddyCloudSIMController *)v70 _sourceHasTransferrablePlans]];
      v26 = sub_1000F28AC();
      [v60 setObject:v25 forKeyedSubscript:v26];
    }

    else
    {
      v27 = [BuddySIMMigrationSourceInformationCache alloc];
      v28 = [(BuddyCloudSIMController *)v70 buddyPreferencesExcludedFromBackup];
      v55 = [(BuddySIMMigrationSourceInformationCache *)v27 initFromPreferences:v28];

      if (v55)
      {
        v29 = [v55 sourceOSVersion];
        v30 = sub_1000F27A4();
        [v60 setObject:v29 forKeyedSubscript:v30];

        v31 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v55 sourceHasTransferrablePlans] & 1);
        v32 = sub_1000F28AC();
        [v60 setObject:v31 forKeyedSubscript:v32];
      }

      else
      {
        oslog = _BYLoggingFacility();
        v53 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v33 = oslog;
          v34 = v53;
          sub_10006AA68(v52);
          _os_log_impl(&_mh_execute_header, v33, v34, "BuddySIMMigrationSourceInformationCache not found", v52, 2u);
        }

        objc_storeStrong(&oslog, 0);
      }

      objc_storeStrong(&v55, 0);
    }

    v35 = [sub_1000F29B4() flowWithOptions:v60];
    [(BuddyCloudSIMController *)v70 setSetupFlow:v35];

    v36 = [(BuddyCloudSIMController *)v70 setupFlow];
    LOBYTE(v35) = v36 == 0;

    if (v35)
    {
      v51 = _BYLoggingFacility();
      v50 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        v37 = v51;
        v38 = v50;
        sub_10006AA68(v49);
        _os_log_impl(&_mh_execute_header, v37, v38, "TSSIMSetupFlow is nil", v49, 2u);
      }

      objc_storeStrong(&v51, 0);
      [(BuddyCloudSIMController *)v70 _endProximityIfApplicable];
      (*(location[0] + 2))(location[0], 0);
      v62 = 1;
    }

    else
    {
      v39 = v70;
      v40 = [(BuddyCloudSIMController *)v70 setupFlow];
      [(TSSIMSetupFlow *)v40 setDelegate:v39];

      v41 = [(BuddyCloudSIMController *)v70 setupFlow];
      v42 = _NSConcreteStackBlock;
      v43 = -1073741824;
      v44 = 0;
      v45 = sub_1000F2AC8;
      v46 = &unk_10032CC40;
      v47 = v70;
      v48 = location[0];
      [(TSSIMSetupFlow *)v41 firstViewController:&v42];

      objc_storeStrong(&v48, 0);
      objc_storeStrong(&v47, 0);
      v62 = 0;
    }

    objc_storeStrong(&v60, 0);
  }

  objc_storeStrong(location, 0);
}

- (id)viewController
{
  v2 = [(BuddyCloudSIMController *)self setupFlow:a2];
  v3 = [(TSSIMSetupFlow *)v2 rootViewController];

  return v3;
}

- (BOOL)_isLaunchingPostMigrationOrRestore
{
  v2 = [(BuddyCloudSIMController *)self runState];
  v3 = [(BYRunState *)v2 hasCompletedInitialRun];
  v6 = 0;
  v4 = 0;
  if (v3)
  {
    v7 = [(BuddyCloudSIMController *)self miscState];
    v6 = 1;
    v4 = [(BuddyMiscState *)v7 launchedToShowSIMSetupAfterRestore];
  }

  v9 = v4 & 1;
  if (v6)
  {
  }

  return v9 & 1;
}

- (BOOL)_sourceHasTransferrablePlans
{
  v2 = [(BuddyCloudSIMController *)self proximitySetupController:a2];
  v3 = [(ProximitySetupController *)v2 information];
  v4 = [(SASProximityInformation *)v3 hasTransferrableTelephonyPlan];
  v5 = [v4 BOOLValue];

  return v5 & 1;
}

- (void)_postponeSIMMigrationForPostRestore
{
  v15 = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v13;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v2, v3, "Postpone SIM migration post restore", buf, 2u);
  }

  objc_storeStrong(oslog, 0);
  CFPreferencesSetAppValue(@"ShouldShowSIMSetupInRestoreMiniBuddy", kCFBooleanTrue, BYBuddyNotBackedUpIdentifier);
  v4 = [(BuddyCloudSIMController *)v15 proximitySetupController];
  v5 = [(ProximitySetupController *)v4 hasConnection];

  if (v5)
  {
    v6 = [(BuddyCloudSIMController *)v15 proximitySetupController];
    v7 = [(ProximitySetupController *)v6 information];
    v11 = [(SASProximityInformation *)v7 productVersion];

    v10 = [(BuddyCloudSIMController *)v15 _sourceHasTransferrablePlans];
    location = [[BuddySIMMigrationSourceInformationCache alloc] initWithSourceOSVersion:v11 sourceHasTransferrablePlans:v10 & 1];
    v8 = [(BuddyCloudSIMController *)v15 buddyPreferencesExcludedFromBackup];
    [location writeToPreferences:v8];

    [(BuddyCloudSIMController *)v15 _endProximityIfApplicable];
    objc_storeStrong(&location, 0);
    objc_storeStrong(&v11, 0);
  }
}

- (void)_unsetSIMMigrationForPostRestore
{
  v8 = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v6;
    sub_10006AA68(v5);
    _os_log_impl(&_mh_execute_header, v2, v3, "Removing SIM migration post restore flag", v5, 2u);
  }

  objc_storeStrong(oslog, 0);
  CFPreferencesSetAppValue(@"ShouldShowSIMSetupInRestoreMiniBuddy", 0, BYBuddyNotBackedUpIdentifier);
  v4 = [(BuddyCloudSIMController *)v8 buddyPreferencesExcludedFromBackup];
  [BuddySIMMigrationSourceInformationCache resetFromPrefernces:v4];
}

- (void)_endProximityIfApplicable
{
  v9 = self;
  v8[1] = a2;
  v2 = dispatch_get_global_queue(0, 0);
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1000F30E4;
  v7 = &unk_10032B0D0;
  v8[0] = v9;
  dispatch_async(v2, &block);

  objc_storeStrong(v8, 0);
}

- (void)simSetupFlowCompleted:(unint64_t)a3
{
  v26 = self;
  v25 = a2;
  v24 = a3;
  [(BuddyCloudSIMController *)self _endProximityIfApplicable];
  [(BuddyCloudSIMController *)v26 _unsetSIMMigrationForPostRestore];
  v3 = [(BuddyCloudSIMController *)v26 setupFlow];
  v22 = 0;
  v20 = 0;
  v4 = 0;
  if (v3)
  {
    v23 = [(BuddyCloudSIMController *)v26 setupFlow];
    v22 = 1;
    v21 = [v23 rootViewController];
    v20 = 1;
    v4 = v21 != 0;
  }

  if (v20)
  {
  }

  if (v22)
  {
  }

  if (v4)
  {
    location = objc_alloc_init(NSMutableArray);
    memset(__b, 0, sizeof(__b));
    v5 = [(BuddyCloudSIMController *)v26 flowNavigationController];
    v6 = [(BFFNavigationController *)v5 viewControllers];
    v7 = [v6 reverseObjectEnumerator];

    v8 = [v7 countByEnumeratingWithState:__b objects:v27 count:16];
    if (v8)
    {
      v9 = *__b[2];
LABEL_10:
      v10 = 0;
      while (1)
      {
        if (*__b[2] != v9)
        {
          objc_enumerationMutation(v7);
        }

        v18 = *(__b[1] + 8 * v10);
        [location addObject:v18];
        v11 = v18;
        v12 = [(BuddyCloudSIMController *)v26 setupFlow];
        v13 = [(TSSIMSetupFlow *)v12 rootViewController];

        if (v11 == v13)
        {
          break;
        }

        if (++v10 >= v8)
        {
          v8 = [v7 countByEnumeratingWithState:__b objects:v27 count:16];
          if (v8)
          {
            goto LABEL_10;
          }

          break;
        }
      }
    }

    v14 = [(BuddyCloudSIMController *)v26 delegate];
    v15 = [location copy];
    [(BFFFlowItemDelegate *)v14 removeViewControllersOnNextPush:v15];

    objc_storeStrong(&location, 0);
  }

  v16 = [(BuddyCloudSIMController *)v26 delegate];
  [(BFFFlowItemDelegate *)v16 flowItemDone:v26];
}

- (void)updateSourceProxCardState:(BOOL)a3
{
  v3 = [(BuddyCloudSIMController *)self proximitySetupController];
  [(ProximitySetupController *)v3 setSourceProxCardVisibliityForSIMSetupExternalAuthentication:a3];
}

- (BFFNavigationController)flowNavigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_flowNavigationController);

  return WeakRetained;
}

@end