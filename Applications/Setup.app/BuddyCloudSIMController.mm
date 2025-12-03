@interface BuddyCloudSIMController
- (BFFNavigationController)flowNavigationController;
- (BOOL)_isLaunchingPostMigrationOrRestore;
- (BOOL)_sourceHasTransferrablePlans;
- (BOOL)controllerNeedsToRun;
- (id)viewController;
- (void)_endProximityIfApplicable;
- (void)_postponeSIMMigrationForPostRestore;
- (void)_unsetSIMMigrationForPostRestore;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)setNavigationController:(id)controller;
- (void)simSetupFlowCompleted:(unint64_t)completed;
- (void)updateSourceProxCardState:(BOOL)state;
@end

@implementation BuddyCloudSIMController

- (void)setNavigationController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  [(BuddyCloudSIMController *)selfCopy setFlowNavigationController:location[0]];
  objc_storeStrong(location, 0);
}

- (BOOL)controllerNeedsToRun
{
  runState = [(BuddyCloudSIMController *)self runState];
  hasCompletedInitialRun = [(BYRunState *)runState hasCompletedInitialRun];

  if ((hasCompletedInitialRun & 1) == 0)
  {
    return 1;
  }

  miscState = [(BuddyCloudSIMController *)self miscState];
  launchedToShowSIMSetupAfterRestore = [(BuddyMiscState *)miscState launchedToShowSIMSetupAfterRestore];

  return launchedToShowSIMSetupAfterRestore;
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  setupMethod = [(BuddyCloudSIMController *)selfCopy setupMethod];
  v67 = 0;
  v4 = 1;
  if ([(BuddySetupMethod *)setupMethod dataTransferMethod]!= 2)
  {
    setupMethod2 = [(BuddyCloudSIMController *)selfCopy setupMethod];
    v67 = 1;
    v4 = [(BuddySetupMethod *)setupMethod2 dataTransferMethod]== 1;
  }

  if (v67)
  {
  }

  if (v4)
  {
    capabilities = [(BuddyCloudSIMController *)selfCopy capabilities];
    mgHasBaseband = [(BYCapabilities *)capabilities mgHasBaseband];

    v66 = mgHasBaseband & 1;
    if (mgHasBaseband)
    {
      [(BuddyCloudSIMController *)selfCopy _postponeSIMMigrationForPostRestore];
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
      [(BuddyCloudSIMController *)selfCopy _endProximityIfApplicable];
      (*(location[0] + 2))(location[0], 0);
      v62 = 1;
    }
  }

  else
  {
    v61 = 0;
    proximitySetupController = [(BuddyCloudSIMController *)selfCopy proximitySetupController];
    hasAppliedSettings = [(ProximitySetupController *)proximitySetupController hasAppliedSettings];

    if (hasAppliedSettings)
    {
      proximitySetupController2 = [(BuddyCloudSIMController *)selfCopy proximitySetupController];
      hasConnection = [(ProximitySetupController *)proximitySetupController2 hasConnection];

      if (hasConnection)
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

    proximitySetupController3 = [(BuddyCloudSIMController *)selfCopy proximitySetupController];
    sharingMessageSession = [(ProximitySetupController *)proximitySetupController3 sharingMessageSession];
    v18 = sub_1000F269C();
    [v60 setObject:sharingMessageSession forKeyedSubscript:v18];

    proximitySetupController4 = [(BuddyCloudSIMController *)selfCopy proximitySetupController];
    v58 = 0;
    v56 = 0;
    v20 = 0;
    if ([(ProximitySetupController *)proximitySetupController4 hasConnection])
    {
      proximitySetupController5 = [(BuddyCloudSIMController *)selfCopy proximitySetupController];
      v58 = 1;
      information = [proximitySetupController5 information];
      v56 = 1;
      v20 = information != 0;
    }

    if (v56)
    {
    }

    if (v58)
    {
    }

    if (v20)
    {
      proximitySetupController6 = [(BuddyCloudSIMController *)selfCopy proximitySetupController];
      information2 = [(ProximitySetupController *)proximitySetupController6 information];
      productVersion = [(SASProximityInformation *)information2 productVersion];
      v24 = sub_1000F27A4();
      [v60 setObject:productVersion forKeyedSubscript:v24];

      v25 = [NSNumber numberWithBool:[(BuddyCloudSIMController *)selfCopy _sourceHasTransferrablePlans]];
      v26 = sub_1000F28AC();
      [v60 setObject:v25 forKeyedSubscript:v26];
    }

    else
    {
      v27 = [BuddySIMMigrationSourceInformationCache alloc];
      buddyPreferencesExcludedFromBackup = [(BuddyCloudSIMController *)selfCopy buddyPreferencesExcludedFromBackup];
      v55 = [(BuddySIMMigrationSourceInformationCache *)v27 initFromPreferences:buddyPreferencesExcludedFromBackup];

      if (v55)
      {
        sourceOSVersion = [v55 sourceOSVersion];
        v30 = sub_1000F27A4();
        [v60 setObject:sourceOSVersion forKeyedSubscript:v30];

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
    [(BuddyCloudSIMController *)selfCopy setSetupFlow:v35];

    setupFlow = [(BuddyCloudSIMController *)selfCopy setupFlow];
    LOBYTE(v35) = setupFlow == 0;

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
      [(BuddyCloudSIMController *)selfCopy _endProximityIfApplicable];
      (*(location[0] + 2))(location[0], 0);
      v62 = 1;
    }

    else
    {
      v39 = selfCopy;
      setupFlow2 = [(BuddyCloudSIMController *)selfCopy setupFlow];
      [(TSSIMSetupFlow *)setupFlow2 setDelegate:v39];

      setupFlow3 = [(BuddyCloudSIMController *)selfCopy setupFlow];
      v42 = _NSConcreteStackBlock;
      v43 = -1073741824;
      v44 = 0;
      v45 = sub_1000F2AC8;
      v46 = &unk_10032CC40;
      v47 = selfCopy;
      v48 = location[0];
      [(TSSIMSetupFlow *)setupFlow3 firstViewController:&v42];

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
  rootViewController = [(TSSIMSetupFlow *)v2 rootViewController];

  return rootViewController;
}

- (BOOL)_isLaunchingPostMigrationOrRestore
{
  runState = [(BuddyCloudSIMController *)self runState];
  hasCompletedInitialRun = [(BYRunState *)runState hasCompletedInitialRun];
  v6 = 0;
  launchedToShowSIMSetupAfterRestore = 0;
  if (hasCompletedInitialRun)
  {
    miscState = [(BuddyCloudSIMController *)self miscState];
    v6 = 1;
    launchedToShowSIMSetupAfterRestore = [(BuddyMiscState *)miscState launchedToShowSIMSetupAfterRestore];
  }

  v9 = launchedToShowSIMSetupAfterRestore & 1;
  if (v6)
  {
  }

  return v9 & 1;
}

- (BOOL)_sourceHasTransferrablePlans
{
  v2 = [(BuddyCloudSIMController *)self proximitySetupController:a2];
  information = [(ProximitySetupController *)v2 information];
  hasTransferrableTelephonyPlan = [(SASProximityInformation *)information hasTransferrableTelephonyPlan];
  bOOLValue = [hasTransferrableTelephonyPlan BOOLValue];

  return bOOLValue & 1;
}

- (void)_postponeSIMMigrationForPostRestore
{
  selfCopy = self;
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
  proximitySetupController = [(BuddyCloudSIMController *)selfCopy proximitySetupController];
  hasConnection = [(ProximitySetupController *)proximitySetupController hasConnection];

  if (hasConnection)
  {
    proximitySetupController2 = [(BuddyCloudSIMController *)selfCopy proximitySetupController];
    information = [(ProximitySetupController *)proximitySetupController2 information];
    productVersion = [(SASProximityInformation *)information productVersion];

    _sourceHasTransferrablePlans = [(BuddyCloudSIMController *)selfCopy _sourceHasTransferrablePlans];
    location = [[BuddySIMMigrationSourceInformationCache alloc] initWithSourceOSVersion:productVersion sourceHasTransferrablePlans:_sourceHasTransferrablePlans & 1];
    buddyPreferencesExcludedFromBackup = [(BuddyCloudSIMController *)selfCopy buddyPreferencesExcludedFromBackup];
    [location writeToPreferences:buddyPreferencesExcludedFromBackup];

    [(BuddyCloudSIMController *)selfCopy _endProximityIfApplicable];
    objc_storeStrong(&location, 0);
    objc_storeStrong(&productVersion, 0);
  }
}

- (void)_unsetSIMMigrationForPostRestore
{
  selfCopy = self;
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
  buddyPreferencesExcludedFromBackup = [(BuddyCloudSIMController *)selfCopy buddyPreferencesExcludedFromBackup];
  [BuddySIMMigrationSourceInformationCache resetFromPrefernces:buddyPreferencesExcludedFromBackup];
}

- (void)_endProximityIfApplicable
{
  selfCopy = self;
  v8[1] = a2;
  v2 = dispatch_get_global_queue(0, 0);
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1000F30E4;
  v7 = &unk_10032B0D0;
  v8[0] = selfCopy;
  dispatch_async(v2, &block);

  objc_storeStrong(v8, 0);
}

- (void)simSetupFlowCompleted:(unint64_t)completed
{
  selfCopy = self;
  v25 = a2;
  completedCopy = completed;
  [(BuddyCloudSIMController *)self _endProximityIfApplicable];
  [(BuddyCloudSIMController *)selfCopy _unsetSIMMigrationForPostRestore];
  setupFlow = [(BuddyCloudSIMController *)selfCopy setupFlow];
  v22 = 0;
  v20 = 0;
  v4 = 0;
  if (setupFlow)
  {
    setupFlow2 = [(BuddyCloudSIMController *)selfCopy setupFlow];
    v22 = 1;
    rootViewController = [setupFlow2 rootViewController];
    v20 = 1;
    v4 = rootViewController != 0;
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
    flowNavigationController = [(BuddyCloudSIMController *)selfCopy flowNavigationController];
    viewControllers = [(BFFNavigationController *)flowNavigationController viewControllers];
    reverseObjectEnumerator = [viewControllers reverseObjectEnumerator];

    v8 = [reverseObjectEnumerator countByEnumeratingWithState:__b objects:v27 count:16];
    if (v8)
    {
      v9 = *__b[2];
LABEL_10:
      v10 = 0;
      while (1)
      {
        if (*__b[2] != v9)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v18 = *(__b[1] + 8 * v10);
        [location addObject:v18];
        v11 = v18;
        setupFlow3 = [(BuddyCloudSIMController *)selfCopy setupFlow];
        rootViewController2 = [(TSSIMSetupFlow *)setupFlow3 rootViewController];

        if (v11 == rootViewController2)
        {
          break;
        }

        if (++v10 >= v8)
        {
          v8 = [reverseObjectEnumerator countByEnumeratingWithState:__b objects:v27 count:16];
          if (v8)
          {
            goto LABEL_10;
          }

          break;
        }
      }
    }

    delegate = [(BuddyCloudSIMController *)selfCopy delegate];
    v15 = [location copy];
    [(BFFFlowItemDelegate *)delegate removeViewControllersOnNextPush:v15];

    objc_storeStrong(&location, 0);
  }

  delegate2 = [(BuddyCloudSIMController *)selfCopy delegate];
  [(BFFFlowItemDelegate *)delegate2 flowItemDone:selfCopy];
}

- (void)updateSourceProxCardState:(BOOL)state
{
  proximitySetupController = [(BuddyCloudSIMController *)self proximitySetupController];
  [(ProximitySetupController *)proximitySetupController setSourceProxCardVisibliityForSIMSetupExternalAuthentication:state];
}

- (BFFNavigationController)flowNavigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_flowNavigationController);

  return WeakRetained;
}

@end