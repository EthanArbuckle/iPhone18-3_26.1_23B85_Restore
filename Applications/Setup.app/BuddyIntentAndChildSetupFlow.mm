@interface BuddyIntentAndChildSetupFlow
+ (id)allowedFlowItems;
- (BuddyIntentAndChildSetupFlow)initWithNavigationController:(id)controller flowDelegate:(id)delegate flowStarter:(id)starter dependencyInjector:(id)injector;
- (void)_callShieldViewSetupLocationServicesCompletion;
- (void)_callShieldViewSetupPasscodeCompletion;
- (void)_finishFlowWithAISProvidedViewControllersToRemove:(id)remove;
- (void)configureFlowItem:(id)item;
- (void)controllerWasPopped;
- (void)flowItemDone:(id)done nextItem:(id)item;
- (void)performAIDASignInWith:(id)with completion:(id)completion;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)setupLocationServicesWithCompletion:(id)completion;
- (void)setupPasscodeAndBiometricWithCompletion:(id)completion;
- (void)shieldSetupDidFinishWithResult:(id)result error:(id)error;
- (void)shieldSetupDidFinishWithResult:(id)result viewControllersToRemove:(id)remove error:(id)error;
- (void)shieldSetupSelectedAccount:(int64_t)account completion:(id)completion;
- (void)shieldSetupUpdateCDPContext:(id)context;
@end

@implementation BuddyIntentAndChildSetupFlow

- (BuddyIntentAndChildSetupFlow)initWithNavigationController:(id)controller flowDelegate:(id)delegate flowStarter:(id)starter dependencyInjector:(id)injector
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v16 = 0;
  objc_storeStrong(&v16, delegate);
  v15 = 0;
  objc_storeStrong(&v15, starter);
  v14 = 0;
  objc_storeStrong(&v14, injector);
  v9 = selfCopy;
  selfCopy = 0;
  v13.receiver = v9;
  v13.super_class = BuddyIntentAndChildSetupFlow;
  selfCopy = [(BuddyIntentAndChildSetupFlow *)&v13 initWithNavigationController:location[0] flowDelegate:v16 flowStarter:v15 dependencyInjector:v14];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v10 = +[BuddyAccountTools sharedBuddyAccountTools];
    [selfCopy setAccountTools:v10];
  }

  v11 = selfCopy;
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v11;
}

+ (id)allowedFlowItems
{
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  return [NSArray arrayWithObjects:v5 count:3, a2, self];
}

- (void)configureFlowItem:(id)item
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  v3.receiver = selfCopy;
  v3.super_class = BuddyIntentAndChildSetupFlow;
  [(BuddyIntentAndChildSetupFlow *)&v3 configureFlowItem:location[0]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(BuddyIntentAndChildSetupFlow *)selfCopy setIntentAndChildSetupFlowItem:location[0]];
    [location[0] setShieldViewControllerDelegate:selfCopy];
  }

  objc_storeStrong(location, 0);
}

- (void)flowItemDone:(id)done nextItem:(id)item
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, done);
  v31 = 0;
  objc_storeStrong(&v31, item);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    navigationController = [(BuddyIntentAndChildSetupFlow *)selfCopy navigationController];
    viewControllers = [navigationController viewControllers];
    v30 = [viewControllers mutableCopy];

    allPasscodeViewControllers = [location[0] allPasscodeViewControllers];
    oslog = _BYLoggingFacility();
    v27 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_10006AE18(buf, allPasscodeViewControllers);
      _os_log_impl(&_mh_execute_header, oslog, v27, "Age attestation intent found passcode view controllers %@", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v7 = [v30 count];
    v26 = v7 - [allPasscodeViewControllers count] - 1;
    v25 = [v30 objectAtIndexedSubscript:v26];
    v24 = _BYLoggingFacility();
    v23 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      sub_10006AE18(v36, v25);
      _os_log_impl(&_mh_execute_header, v24, v23, "Age attestation intent found prior view controller %@", v36, 0xCu);
    }

    objc_storeStrong(&v24, 0);
    [v30 removeObjectAtIndex:v26];
    v8 = v30;
    navigationController2 = [(BuddyIntentAndChildSetupFlow *)selfCopy navigationController];
    [navigationController2 setViewControllers:v8];

    navigationFlowDelegate = [(BuddyIntentAndChildSetupFlow *)selfCopy navigationFlowDelegate];
    [navigationFlowDelegate removeViewControllersOnNextPush:allPasscodeViewControllers];

    v22 = _BYLoggingFacility();
    v21 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      sub_10006AE18(v35, v25);
      _os_log_impl(&_mh_execute_header, v22, v21, "Age attestation intent will re-push prior view controller %@", v35, 0xCu);
    }

    objc_storeStrong(&v22, 0);
    navigationController3 = [(BuddyIntentAndChildSetupFlow *)selfCopy navigationController];
    v12 = v25;
    v15 = _NSConcreteStackBlock;
    v16 = -1073741824;
    v17 = 0;
    v18 = sub_100164334;
    v19 = &unk_10032B0D0;
    v20 = selfCopy;
    [navigationController3 pushViewController:v12 completion:&v15];

    v14 = 1;
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&allPasscodeViewControllers, 0);
    objc_storeStrong(&v30, 0);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(BuddyIntentAndChildSetupFlow *)selfCopy _callShieldViewSetupLocationServicesCompletion];
      v14 = 1;
    }

    else
    {
      v13 = _BYLoggingFacility();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        sub_10006AE18(v34, location[0]);
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Age attestation intent got unexpected flowItemDone: for %@", v34, 0xCu);
      }

      objc_storeStrong(&v13, 0);
      [(BuddyIntentAndChildSetupFlow *)selfCopy _finishFlowWithAISProvidedViewControllersToRemove:0];
      v14 = 0;
    }
  }

  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
}

- (void)_callShieldViewSetupPasscodeCompletion
{
  selfCopy = self;
  v9 = a2;
  managedConfiguration = [(BuddyIntentAndChildSetupFlow *)self managedConfiguration];
  isPasscodeSet = [(MCProfileConnection *)managedConfiguration isPasscodeSet];

  v8 = isPasscodeSet & 1;
  oslog = _BYLoggingFacility();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100082D54(buf, v8 & 1);
    _os_log_impl(&_mh_execute_header, oslog, v6, "Age attestation intent calling shield view passcode completion with %d", buf, 8u);
  }

  objc_storeStrong(&oslog, 0);
  v4 = selfCopy;
  objc_sync_enter(v4);
  location = [(BuddyIntentAndChildSetupFlow *)selfCopy shieldViewSetupPasscodeCompletion];

  [(BuddyIntentAndChildSetupFlow *)selfCopy setShieldViewSetupPasscodeCompletion:0];
  objc_sync_exit(v4);

  (*(location + 2))(location, v8 & 1);
  objc_storeStrong(&location, 0);
}

- (void)_callShieldViewSetupLocationServicesCompletion
{
  selfCopy = self;
  v7 = a2;
  v6 = +[CLLocationManager locationServicesEnabled];
  oslog = _BYLoggingFacility();
  v4 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100082D54(buf, v6 & 1);
    _os_log_impl(&_mh_execute_header, oslog, v4, "Age attestation intent calling shield view location services completion with %d", buf, 8u);
  }

  objc_storeStrong(&oslog, 0);
  v2 = selfCopy;
  objc_sync_enter(v2);
  location = [(BuddyIntentAndChildSetupFlow *)selfCopy shieldViewSetupLocationServicesCompletion];

  [(BuddyIntentAndChildSetupFlow *)selfCopy setShieldViewSetupLocationServicesCompletion:0];
  objc_sync_exit(v2);

  (*(location + 2))(location, v6 & 1);
  objc_storeStrong(&location, 0);
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  featureFlags = [(BuddyIntentAndChildSetupFlow *)selfCopy featureFlags];
  v4 = [(BuddyFeatureFlags *)featureFlags isAgeAttestationPhase1Enabled]^ 1;

  if (v4)
  {
    v72 = _BYLoggingFacility();
    v71 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v72;
      v6 = v71;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v5, v6, "Skipping age attestation intent because feature flag is off", buf, 2u);
    }

    objc_storeStrong(&v72, 0);
    (*(location[0] + 2))(location[0], 0);
    v69 = 1;
  }

  else
  {
    runState = [(BuddyIntentAndChildSetupFlow *)selfCopy runState];
    hasCompletedInitialRun = [(BYRunState *)runState hasCompletedInitialRun];

    if (hasCompletedInitialRun)
    {
      v68 = _BYLoggingFacility();
      v67 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v68;
        v10 = v67;
        sub_10006AA68(v66);
        _os_log_impl(&_mh_execute_header, v9, v10, "Skipping age attestation intent because has completed initial run", v66, 2u);
      }

      objc_storeStrong(&v68, 0);
      (*(location[0] + 2))(location[0], 0);
      v69 = 1;
    }

    else
    {
      proximitySetupController = [(BuddyIntentAndChildSetupFlow *)selfCopy proximitySetupController];
      hasConnection = [(ProximitySetupController *)proximitySetupController hasConnection];

      if (hasConnection)
      {
        oslog = _BYLoggingFacility();
        v64 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v13 = oslog;
          v14 = v64;
          sub_10006AA68(v63);
          _os_log_impl(&_mh_execute_header, v13, v14, "Skipping age attestation intent because proximity has connection", v63, 2u);
        }

        objc_storeStrong(&oslog, 0);
        (*(location[0] + 2))(location[0], 0);
        v69 = 1;
      }

      else
      {
        accountTools = [(BuddyIntentAndChildSetupFlow *)selfCopy accountTools];
        primaryAccount = [(BuddyAccountTools *)accountTools primaryAccount];

        if (primaryAccount)
        {
          v62 = _BYLoggingFacility();
          v61 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
          {
            v17 = v62;
            v18 = v61;
            sub_10006AA68(v60);
            _os_log_impl(&_mh_execute_header, v17, v18, "Skipping age attestation intent because primary account exists", v60, 2u);
          }

          objc_storeStrong(&v62, 0);
          setupMethod = [(BuddyIntentAndChildSetupFlow *)selfCopy setupMethod];
          intent = [(BuddySetupMethod *)setupMethod intent];

          if (!intent)
          {
            setupMethod2 = [(BuddyIntentAndChildSetupFlow *)selfCopy setupMethod];
            [(BuddySetupMethod *)setupMethod2 setIntent:1];
          }

          (*(location[0] + 2))(location[0], 0);
          v69 = 1;
        }

        else
        {
          managedConfiguration = [(BuddyIntentAndChildSetupFlow *)selfCopy managedConfiguration];
          activationRecordIndicatesCloudConfigurationIsAvailable = [(MCProfileConnection *)managedConfiguration activationRecordIndicatesCloudConfigurationIsAvailable];

          if (activationRecordIndicatesCloudConfigurationIsAvailable)
          {
            v59 = _BYLoggingFacility();
            v58 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
            {
              v24 = v59;
              v25 = v58;
              sub_10006AA68(v57);
              _os_log_impl(&_mh_execute_header, v24, v25, "Skipping age attestation intent because cloud configuration available", v57, 2u);
            }

            objc_storeStrong(&v59, 0);
            setupMethod3 = [(BuddyIntentAndChildSetupFlow *)selfCopy setupMethod];
            [(BuddySetupMethod *)setupMethod3 setIntent:1];

            (*(location[0] + 2))(location[0], 0);
            v69 = 1;
          }

          else
          {
            managedConfiguration2 = [(BuddyIntentAndChildSetupFlow *)selfCopy managedConfiguration];
            isSupervised = [(MCProfileConnection *)managedConfiguration2 isSupervised];

            if (isSupervised)
            {
              v56 = _BYLoggingFacility();
              v55 = OS_LOG_TYPE_DEFAULT;
              if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
              {
                v29 = v56;
                v30 = v55;
                sub_10006AA68(v54);
                _os_log_impl(&_mh_execute_header, v29, v30, "Skipping age attestation intent because supervised", v54, 2u);
              }

              objc_storeStrong(&v56, 0);
              setupMethod4 = [(BuddyIntentAndChildSetupFlow *)selfCopy setupMethod];
              [(BuddySetupMethod *)setupMethod4 setIntent:1];

              (*(location[0] + 2))(location[0], 0);
              v69 = 1;
            }

            else if (sub_100164EC8())
            {
              networkProvider = [(BuddyIntentAndChildSetupFlow *)selfCopy networkProvider];
              v35 = ![(BuddyNetworkProvider *)networkProvider networkReachable];

              if (v35)
              {
                v50 = _BYLoggingFacility();
                v49 = OS_LOG_TYPE_DEFAULT;
                if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
                {
                  v36 = v50;
                  v37 = v49;
                  sub_10006AA68(v48);
                  _os_log_impl(&_mh_execute_header, v36, v37, "Age attestation intent lacks network reachability so not refreshing age range", v48, 2u);
                }

                objc_storeStrong(&v50, 0);
                (*(location[0] + 2))(location[0], 1);
                v69 = 1;
              }

              else
              {
                v47 = objc_alloc_init(sub_100164EC8());
                v46 = _BYLoggingFacility();
                v45 = OS_LOG_TYPE_DEFAULT;
                if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                {
                  sub_100077E48(v75, v47);
                  _os_log_impl(&_mh_execute_header, v46, v45, "Age attestation intent will refresh age range using provider %p", v75, 0xCu);
                }

                objc_storeStrong(&v46, 0);
                v38 = v47;
                v39 = _NSConcreteStackBlock;
                v40 = -1073741824;
                v41 = 0;
                v42 = sub_100164FDC;
                v43 = &unk_10032DBB8;
                v44 = location[0];
                [v38 refreshAgeRangeWithCompletion:&v39];
                objc_storeStrong(&v44, 0);
                objc_storeStrong(&v47, 0);
                v69 = 0;
              }
            }

            else
            {
              v53 = _BYLoggingFacility();
              v52 = OS_LOG_TYPE_DEFAULT;
              if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
              {
                v32 = v53;
                v33 = v52;
                sub_10006AA68(v51);
                _os_log_impl(&_mh_execute_header, v32, v33, "Age attestation intent found no age range settings provider", v51, 2u);
              }

              objc_storeStrong(&v53, 0);
              (*(location[0] + 2))(location[0], 1);
              v69 = 1;
            }
          }
        }
      }
    }
  }

  objc_storeStrong(location, 0);
}

- (void)controllerWasPopped
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Age attestation intent controller was popped", buf, 2u);
  }

  objc_storeStrong(oslog, 0);
  accountTools = [(BuddyIntentAndChildSetupFlow *)selfCopy accountTools];
  primaryAccount = [(BuddyAccountTools *)accountTools primaryAccount];

  if (!primaryAccount)
  {
    v11 = _BYLoggingFacility();
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v11;
      v7 = v10;
      sub_10006AA68(v9);
      _os_log_impl(&_mh_execute_header, v6, v7, "Age attestation intent resetting intent to unknown", v9, 2u);
    }

    objc_storeStrong(&v11, 0);
    setupMethod = [(BuddyIntentAndChildSetupFlow *)selfCopy setupMethod];
    [(BuddySetupMethod *)setupMethod setIntent:0];
  }
}

- (void)shieldSetupSelectedAccount:(int64_t)account completion:(id)completion
{
  selfCopy = self;
  v16 = a2;
  accountCopy = account;
  location = 0;
  objc_storeStrong(&location, completion);
  oslog = _BYLoggingFacility();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100077E48(buf, accountCopy);
    _os_log_impl(&_mh_execute_header, oslog, v12, "Age attestation intent shield view selected account type %ld", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v4 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1001654DC;
  v9 = &unk_10032B7C8;
  v10 = selfCopy;
  v11[1] = accountCopy;
  v11[0] = location;
  dispatch_async(v4, &block);

  objc_storeStrong(v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&location, 0);
}

- (void)setupPasscodeAndBiometricWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  oslog = _BYLoggingFacility();
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog;
    v4 = v14;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v3, v4, "Age attestation intent shield view requested passcode setup", buf, 2u);
  }

  objc_storeStrong(&oslog, 0);
  v5 = &_dispatch_main_q;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_1001656B8;
  v10 = &unk_10032AFD0;
  v11 = selfCopy;
  v12 = location[0];
  dispatch_async(v5, &v6);

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)shieldSetupUpdateCDPContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  oslog = _BYLoggingFacility();
  v17 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006AE18(buf, location[0]);
    _os_log_impl(&_mh_execute_header, oslog, v17, "Age attestation intent shield view requested update to cdpContext %@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  passcodeCacheManager = [(BuddyIntentAndChildSetupFlow *)selfCopy passcodeCacheManager];
  cachedLocalSecret = [(BYPasscodeCacheManager *)passcodeCacheManager cachedLocalSecret];

  if (cachedLocalSecret)
  {
    validatedSecret = [cachedLocalSecret validatedSecret];
    [location[0] setCachedLocalSecret:validatedSecret];

    secretType = [cachedLocalSecret secretType];
    [location[0] setCachedLocalSecretType:secretType];
    v12 = _BYLoggingFacility();
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v12;
      v9 = v11;
      sub_10006AA68(v10);
      _os_log_impl(&_mh_execute_header, v8, v9, "Age attestation intent updated cdpContext with local secret", v10, 2u);
    }

    objc_storeStrong(&v12, 0);
  }

  else
  {
    v15 = _BYLoggingFacility();
    v14 = 16;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v4 = v15;
      v5 = v14;
      sub_10006AA68(v13);
      _os_log_error_impl(&_mh_execute_header, v4, v5, "Age attestation intent has no local secret!", v13, 2u);
    }

    objc_storeStrong(&v15, 0);
  }

  objc_storeStrong(&cachedLocalSecret, 0);
  objc_storeStrong(location, 0);
}

- (void)setupLocationServicesWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  oslog = _BYLoggingFacility();
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog;
    v4 = v14;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v3, v4, "Age attestation intent shield view requested location services setup", buf, 2u);
  }

  objc_storeStrong(&oslog, 0);
  v5 = &_dispatch_main_q;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_100165F74;
  v10 = &unk_10032AFD0;
  v11 = selfCopy;
  v12 = location[0];
  dispatch_async(v5, &v6);

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)performAIDASignInWith:(id)with completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, with);
  v19 = 0;
  objc_storeStrong(&v19, completion);
  oslog = _BYLoggingFacility();
  v17 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = oslog;
    v6 = v17;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v5, v6, "Age attestation intent shield view requested sign in", buf, 2u);
  }

  objc_storeStrong(&oslog, 0);
  v7 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_1001663A4;
  v12 = &unk_10032BC78;
  v13 = selfCopy;
  v14 = location[0];
  v15 = v19;
  dispatch_async(v7, &block);

  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

- (void)shieldSetupDidFinishWithResult:(id)result viewControllersToRemove:(id)remove error:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, result);
  v24 = 0;
  objc_storeStrong(&v24, remove);
  v23 = 0;
  objc_storeStrong(&v23, error);
  oslog = _BYLoggingFacility();
  v21 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = location[0];
    v19 = 0;
    v17 = 0;
    if (_BYIsInternalInstall())
    {
      v8 = v23;
    }

    else if (v23)
    {
      domain = [v23 domain];
      v19 = 1;
      v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", domain, [v23 code]);
      v18 = v8;
      v17 = 1;
    }

    else
    {
      v8 = 0;
    }

    sub_10008FCD8(buf, v7, v8, v24);
    _os_log_impl(&_mh_execute_header, oslog, v21, "Age attestation intent did complete with result %p error %@ controllers %@", buf, 0x20u);
    if (v17)
    {
    }

    if (v19)
    {
    }
  }

  objc_storeStrong(&oslog, 0);
  v9 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_100166AC8;
  v14 = &unk_10032B838;
  v15 = selfCopy;
  v16 = v24;
  dispatch_async(v9, &block);

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

- (void)shieldSetupDidFinishWithResult:(id)result error:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, result);
  v12 = 0;
  objc_storeStrong(&v12, error);
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = location[0];
    v9 = 0;
    v7 = 0;
    if (_BYIsInternalInstall())
    {
      v6 = v12;
    }

    else if (v12)
    {
      domain = [v12 domain];
      v9 = 1;
      v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", domain, [v12 code]);
      v8 = v6;
      v7 = 1;
    }

    else
    {
      v6 = 0;
    }

    sub_10008E19C(buf, v5, v6);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Age attestation intent did complete with result %p error %@", buf, 0x16u);
    if (v7)
    {
    }

    if (v9)
    {
    }
  }

  objc_storeStrong(&oslog, 0);
  [(BuddyIntentAndChildSetupFlow *)selfCopy shieldSetupDidFinishWithResult:location[0] viewControllersToRemove:0 error:v12];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)_finishFlowWithAISProvidedViewControllersToRemove:(id)remove
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, remove);
  oslog = _BYLoggingFacility();
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog;
    v4 = v14;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v3, v4, "Age attestation intent finishing flow", buf, 2u);
  }

  objc_storeStrong(&oslog, 0);
  v5 = &_dispatch_main_q;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_100167264;
  v10 = &unk_10032B838;
  v11 = selfCopy;
  v12 = location[0];
  dispatch_async(v5, &v6);

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

@end