@interface BuddyIntentAndChildSetupFlow
+ (id)allowedFlowItems;
- (BuddyIntentAndChildSetupFlow)initWithNavigationController:(id)a3 flowDelegate:(id)a4 flowStarter:(id)a5 dependencyInjector:(id)a6;
- (void)_callShieldViewSetupLocationServicesCompletion;
- (void)_callShieldViewSetupPasscodeCompletion;
- (void)_finishFlowWithAISProvidedViewControllersToRemove:(id)a3;
- (void)configureFlowItem:(id)a3;
- (void)controllerWasPopped;
- (void)flowItemDone:(id)a3 nextItem:(id)a4;
- (void)performAIDASignInWith:(id)a3 completion:(id)a4;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)setupLocationServicesWithCompletion:(id)a3;
- (void)setupPasscodeAndBiometricWithCompletion:(id)a3;
- (void)shieldSetupDidFinishWithResult:(id)a3 error:(id)a4;
- (void)shieldSetupDidFinishWithResult:(id)a3 viewControllersToRemove:(id)a4 error:(id)a5;
- (void)shieldSetupSelectedAccount:(int64_t)a3 completion:(id)a4;
- (void)shieldSetupUpdateCDPContext:(id)a3;
@end

@implementation BuddyIntentAndChildSetupFlow

- (BuddyIntentAndChildSetupFlow)initWithNavigationController:(id)a3 flowDelegate:(id)a4 flowStarter:(id)a5 dependencyInjector:(id)a6
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = 0;
  objc_storeStrong(&v15, a5);
  v14 = 0;
  objc_storeStrong(&v14, a6);
  v9 = v18;
  v18 = 0;
  v13.receiver = v9;
  v13.super_class = BuddyIntentAndChildSetupFlow;
  v18 = [(BuddyIntentAndChildSetupFlow *)&v13 initWithNavigationController:location[0] flowDelegate:v16 flowStarter:v15 dependencyInjector:v14];
  objc_storeStrong(&v18, v18);
  if (v18)
  {
    v10 = +[BuddyAccountTools sharedBuddyAccountTools];
    [v18 setAccountTools:v10];
  }

  v11 = v18;
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v18, 0);
  return v11;
}

+ (id)allowedFlowItems
{
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  return [NSArray arrayWithObjects:v5 count:3, a2, a1];
}

- (void)configureFlowItem:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = BuddyIntentAndChildSetupFlow;
  [(BuddyIntentAndChildSetupFlow *)&v3 configureFlowItem:location[0]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(BuddyIntentAndChildSetupFlow *)v5 setIntentAndChildSetupFlowItem:location[0]];
    [location[0] setShieldViewControllerDelegate:v5];
  }

  objc_storeStrong(location, 0);
}

- (void)flowItemDone:(id)a3 nextItem:(id)a4
{
  v33 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v31 = 0;
  objc_storeStrong(&v31, a4);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(BuddyIntentAndChildSetupFlow *)v33 navigationController];
    v6 = [v5 viewControllers];
    v30 = [v6 mutableCopy];

    v29 = [location[0] allPasscodeViewControllers];
    oslog = _BYLoggingFacility();
    v27 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_10006AE18(buf, v29);
      _os_log_impl(&_mh_execute_header, oslog, v27, "Age attestation intent found passcode view controllers %@", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v7 = [v30 count];
    v26 = v7 - [v29 count] - 1;
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
    v9 = [(BuddyIntentAndChildSetupFlow *)v33 navigationController];
    [v9 setViewControllers:v8];

    v10 = [(BuddyIntentAndChildSetupFlow *)v33 navigationFlowDelegate];
    [v10 removeViewControllersOnNextPush:v29];

    v22 = _BYLoggingFacility();
    v21 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      sub_10006AE18(v35, v25);
      _os_log_impl(&_mh_execute_header, v22, v21, "Age attestation intent will re-push prior view controller %@", v35, 0xCu);
    }

    objc_storeStrong(&v22, 0);
    v11 = [(BuddyIntentAndChildSetupFlow *)v33 navigationController];
    v12 = v25;
    v15 = _NSConcreteStackBlock;
    v16 = -1073741824;
    v17 = 0;
    v18 = sub_100164334;
    v19 = &unk_10032B0D0;
    v20 = v33;
    [v11 pushViewController:v12 completion:&v15];

    v14 = 1;
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v30, 0);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(BuddyIntentAndChildSetupFlow *)v33 _callShieldViewSetupLocationServicesCompletion];
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
      [(BuddyIntentAndChildSetupFlow *)v33 _finishFlowWithAISProvidedViewControllersToRemove:0];
      v14 = 0;
    }
  }

  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
}

- (void)_callShieldViewSetupPasscodeCompletion
{
  v10 = self;
  v9 = a2;
  v2 = [(BuddyIntentAndChildSetupFlow *)self managedConfiguration];
  v3 = [(MCProfileConnection *)v2 isPasscodeSet];

  v8 = v3 & 1;
  oslog = _BYLoggingFacility();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100082D54(buf, v8 & 1);
    _os_log_impl(&_mh_execute_header, oslog, v6, "Age attestation intent calling shield view passcode completion with %d", buf, 8u);
  }

  objc_storeStrong(&oslog, 0);
  v4 = v10;
  objc_sync_enter(v4);
  location = [(BuddyIntentAndChildSetupFlow *)v10 shieldViewSetupPasscodeCompletion];

  [(BuddyIntentAndChildSetupFlow *)v10 setShieldViewSetupPasscodeCompletion:0];
  objc_sync_exit(v4);

  (*(location + 2))(location, v8 & 1);
  objc_storeStrong(&location, 0);
}

- (void)_callShieldViewSetupLocationServicesCompletion
{
  v8 = self;
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
  v2 = v8;
  objc_sync_enter(v2);
  location = [(BuddyIntentAndChildSetupFlow *)v8 shieldViewSetupLocationServicesCompletion];

  [(BuddyIntentAndChildSetupFlow *)v8 setShieldViewSetupLocationServicesCompletion:0];
  objc_sync_exit(v2);

  (*(location + 2))(location, v6 & 1);
  objc_storeStrong(&location, 0);
}

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v74 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyIntentAndChildSetupFlow *)v74 featureFlags];
  v4 = [(BuddyFeatureFlags *)v3 isAgeAttestationPhase1Enabled]^ 1;

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
    v7 = [(BuddyIntentAndChildSetupFlow *)v74 runState];
    v8 = [(BYRunState *)v7 hasCompletedInitialRun];

    if (v8)
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
      v11 = [(BuddyIntentAndChildSetupFlow *)v74 proximitySetupController];
      v12 = [(ProximitySetupController *)v11 hasConnection];

      if (v12)
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
        v15 = [(BuddyIntentAndChildSetupFlow *)v74 accountTools];
        v16 = [(BuddyAccountTools *)v15 primaryAccount];

        if (v16)
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
          v19 = [(BuddyIntentAndChildSetupFlow *)v74 setupMethod];
          v20 = [(BuddySetupMethod *)v19 intent];

          if (!v20)
          {
            v21 = [(BuddyIntentAndChildSetupFlow *)v74 setupMethod];
            [(BuddySetupMethod *)v21 setIntent:1];
          }

          (*(location[0] + 2))(location[0], 0);
          v69 = 1;
        }

        else
        {
          v22 = [(BuddyIntentAndChildSetupFlow *)v74 managedConfiguration];
          v23 = [(MCProfileConnection *)v22 activationRecordIndicatesCloudConfigurationIsAvailable];

          if (v23)
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
            v26 = [(BuddyIntentAndChildSetupFlow *)v74 setupMethod];
            [(BuddySetupMethod *)v26 setIntent:1];

            (*(location[0] + 2))(location[0], 0);
            v69 = 1;
          }

          else
          {
            v27 = [(BuddyIntentAndChildSetupFlow *)v74 managedConfiguration];
            v28 = [(MCProfileConnection *)v27 isSupervised];

            if (v28)
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
              v31 = [(BuddyIntentAndChildSetupFlow *)v74 setupMethod];
              [(BuddySetupMethod *)v31 setIntent:1];

              (*(location[0] + 2))(location[0], 0);
              v69 = 1;
            }

            else if (sub_100164EC8())
            {
              v34 = [(BuddyIntentAndChildSetupFlow *)v74 networkProvider];
              v35 = ![(BuddyNetworkProvider *)v34 networkReachable];

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
  v15 = self;
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
  v4 = [(BuddyIntentAndChildSetupFlow *)v15 accountTools];
  v5 = [(BuddyAccountTools *)v4 primaryAccount];

  if (!v5)
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
    v8 = [(BuddyIntentAndChildSetupFlow *)v15 setupMethod];
    [(BuddySetupMethod *)v8 setIntent:0];
  }
}

- (void)shieldSetupSelectedAccount:(int64_t)a3 completion:(id)a4
{
  v17 = self;
  v16 = a2;
  v15 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  oslog = _BYLoggingFacility();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100077E48(buf, v15);
    _os_log_impl(&_mh_execute_header, oslog, v12, "Age attestation intent shield view selected account type %ld", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v4 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1001654DC;
  v9 = &unk_10032B7C8;
  v10 = v17;
  v11[1] = v15;
  v11[0] = location;
  dispatch_async(v4, &block);

  objc_storeStrong(v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&location, 0);
}

- (void)setupPasscodeAndBiometricWithCompletion:(id)a3
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  v11 = v17;
  v12 = location[0];
  dispatch_async(v5, &v6);

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)shieldSetupUpdateCDPContext:(id)a3
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog = _BYLoggingFacility();
  v17 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006AE18(buf, location[0]);
    _os_log_impl(&_mh_execute_header, oslog, v17, "Age attestation intent shield view requested update to cdpContext %@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v3 = [(BuddyIntentAndChildSetupFlow *)v20 passcodeCacheManager];
  v16 = [(BYPasscodeCacheManager *)v3 cachedLocalSecret];

  if (v16)
  {
    v6 = [v16 validatedSecret];
    [location[0] setCachedLocalSecret:v6];

    v7 = [v16 secretType];
    [location[0] setCachedLocalSecretType:v7];
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

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)setupLocationServicesWithCompletion:(id)a3
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  v11 = v17;
  v12 = location[0];
  dispatch_async(v5, &v6);

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)performAIDASignInWith:(id)a3 completion:(id)a4
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
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
  v13 = v21;
  v14 = location[0];
  v15 = v19;
  dispatch_async(v7, &block);

  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

- (void)shieldSetupDidFinishWithResult:(id)a3 viewControllersToRemove:(id)a4 error:(id)a5
{
  v26 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v24 = 0;
  objc_storeStrong(&v24, a4);
  v23 = 0;
  objc_storeStrong(&v23, a5);
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
      v20 = [v23 domain];
      v19 = 1;
      v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v20, [v23 code]);
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
  v15 = v26;
  v16 = v24;
  dispatch_async(v9, &block);

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

- (void)shieldSetupDidFinishWithResult:(id)a3 error:(id)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
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
      v10 = [v12 domain];
      v9 = 1;
      v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v10, [v12 code]);
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
  [(BuddyIntentAndChildSetupFlow *)v14 shieldSetupDidFinishWithResult:location[0] viewControllersToRemove:0 error:v12];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)_finishFlowWithAISProvidedViewControllersToRemove:(id)a3
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  v11 = v17;
  v12 = location[0];
  dispatch_async(v5, &v6);

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

@end