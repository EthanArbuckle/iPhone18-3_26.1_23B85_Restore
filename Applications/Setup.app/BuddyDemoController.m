@interface BuddyDemoController
- (BFFFlowItemDelegate)delegate;
- (BOOL)controllerNeedsToRun;
- (id)viewController;
- (void)_setupCompleted:(BOOL)a3;
- (void)performExtendedInitializationWithCompletion:(id)a3;
@end

@implementation BuddyDemoController

- (void)_setupCompleted:(BOOL)a3
{
  v35 = self;
  v34 = a2;
  v33 = a3;
  if (a3)
  {
    oslog = _BYLoggingFacility();
    v31 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog;
      v4 = v31;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v3, v4, "Demo setup completed", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v5 = [(BuddyDemoController *)v35 activationRecord];
    v28 = 0;
    v6 = 1;
    if (![(BuddyActivationRecord *)v5 impliesEarlyExit])
    {
      v29 = [(BuddyDemoController *)v35 deviceConfiguration];
      v28 = 1;
      v6 = [v29 inStoreDemoMode];
    }

    if (v28)
    {
    }

    if (v6)
    {
      v7 = [(BuddyDemoController *)v35 exitBuddyForDemoSetUpBlock];
      v7[2](v7);

      return;
    }
  }

  else
  {
    v27 = _BYLoggingFacility();
    v26 = 16;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v8 = v27;
      v9 = v26;
      sub_10006AA68(v25);
      _os_log_error_impl(&_mh_execute_header, v8, v9, "Demo setup failed!", v25, 2u);
    }

    objc_storeStrong(&v27, 0);
  }

  v10 = [(BuddyDemoController *)v35 miscState];
  [(BuddyMiscState *)v10 setCompletedDemoSetup:1];

  v11 = [(BuddyDemoController *)v35 demoViewController];
  v24 = [(MSDWelcomeViewController *)v11 navigationController];

  v12 = [v24 viewControllers];
  v13 = [(BuddyDemoController *)v35 demoViewController];
  v14 = [v12 indexOfObject:v13];

  v23 = v14;
  v15 = [v24 viewControllers];
  v16 = v14;
  v17 = [v24 viewControllers];
  v18 = [v17 count];
  v37 = v16;
  v36 = (v18 - v23);
  v38 = v16;
  v39 = (v18 - v23);
  v19 = [NSIndexSet indexSetWithIndexesInRange:v16, v18 - v23];
  location = [v15 objectsAtIndexes:v19];

  v20 = [(BuddyDemoController *)v35 delegate];
  [(BFFFlowItemDelegate *)v20 removeViewControllersOnNextPush:location];

  v21 = [(BuddyDemoController *)v35 delegate];
  [(BFFFlowItemDelegate *)v21 flowItemDone:v35];

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v24, 0);
}

- (BOOL)controllerNeedsToRun
{
  v30 = self;
  v29 = a2;
  v2 = [(BuddyDemoController *)self runState];
  v3 = 0;
  if (([(BYRunState *)v2 hasCompletedInitialRun]& 1) != 0)
  {
    v3 = BYIsRunningInStoreDemoMode() ^ 1;
  }

  if (v3)
  {
    return 0;
  }

  v4 = [(BuddyDemoController *)v30 deviceConfiguration];
  v26 = 0;
  v5 = 1;
  if (([(BYDeviceConfiguration *)v4 inStoreDemoMode]& 1) == 0)
  {
    v27 = [(BuddyDemoController *)v30 activationRecord];
    v26 = 1;
    v5 = [v27 impliesDemod];
  }

  if (v26)
  {
  }

  v28 = v5 & 1;
  if (v5)
  {
    v8 = [(BuddyDemoController *)v30 managedConfiguration];
    v9 = [(MCProfileConnection *)v8 activationRecordIndicatesCloudConfigurationIsAvailable];

    if (v9)
    {
      v22 = _BYLoggingFacility();
      v21 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v22;
        v11 = v21;
        sub_10006AA68(v20);
        _os_log_impl(&_mh_execute_header, v10, v11, "Skipping demo setup due to cloud configuration", v20, 2u);
      }

      objc_storeStrong(&v22, 0);
      return 0;
    }

    else
    {
      v12 = [(BuddyDemoController *)v30 miscState];
      v13 = [(BuddyMiscState *)v12 completedDemoSetup];

      if (v13)
      {
        v19 = _BYLoggingFacility();
        v18 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v14 = v19;
          v15 = v18;
          sub_10006AA68(v17);
          _os_log_impl(&_mh_execute_header, v14, v15, "Skipping demo setup because it has completed", v17, 2u);
        }

        objc_storeStrong(&v19, 0);
        return 0;
      }

      else
      {
        return 1;
      }
    }
  }

  else
  {
    oslog = _BYLoggingFacility();
    v24 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = oslog;
      v7 = v24;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v6, v7, "Skipping demo setup because this isn't a demo device", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
    return 0;
  }
}

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [sub_1001A9050() needsToRun:location[0]];
  objc_storeStrong(location, 0);
}

- (id)viewController
{
  v14 = self;
  location[1] = a2;
  v2 = [(BuddyDemoController *)self demoViewController];

  if (v2)
  {
    v15 = [(BuddyDemoController *)v14 demoViewController];
  }

  else
  {
    objc_initWeak(location, v14);
    v3 = objc_alloc_init(sub_1001A9050());
    [(BuddyDemoController *)v14 setDemoViewController:v3];

    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_1001A9354;
    v11 = &unk_10032B1A0;
    objc_copyWeak(&v12, location);
    v4 = [(BuddyDemoController *)v14 demoViewController];
    [(MSDWelcomeViewController *)v4 setCompletionHandler:&v7];

    v15 = [(BuddyDemoController *)v14 demoViewController];
    objc_destroyWeak(&v12);
    objc_destroyWeak(location);
  }

  v5 = v15;

  return v5;
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end