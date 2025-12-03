@interface BuddyDemoController
- (BFFFlowItemDelegate)delegate;
- (BOOL)controllerNeedsToRun;
- (id)viewController;
- (void)_setupCompleted:(BOOL)completed;
- (void)performExtendedInitializationWithCompletion:(id)completion;
@end

@implementation BuddyDemoController

- (void)_setupCompleted:(BOOL)completed
{
  selfCopy = self;
  v34 = a2;
  completedCopy = completed;
  if (completed)
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
    activationRecord = [(BuddyDemoController *)selfCopy activationRecord];
    v28 = 0;
    inStoreDemoMode = 1;
    if (![(BuddyActivationRecord *)activationRecord impliesEarlyExit])
    {
      deviceConfiguration = [(BuddyDemoController *)selfCopy deviceConfiguration];
      v28 = 1;
      inStoreDemoMode = [deviceConfiguration inStoreDemoMode];
    }

    if (v28)
    {
    }

    if (inStoreDemoMode)
    {
      exitBuddyForDemoSetUpBlock = [(BuddyDemoController *)selfCopy exitBuddyForDemoSetUpBlock];
      exitBuddyForDemoSetUpBlock[2](exitBuddyForDemoSetUpBlock);

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

  miscState = [(BuddyDemoController *)selfCopy miscState];
  [(BuddyMiscState *)miscState setCompletedDemoSetup:1];

  demoViewController = [(BuddyDemoController *)selfCopy demoViewController];
  navigationController = [(MSDWelcomeViewController *)demoViewController navigationController];

  viewControllers = [navigationController viewControllers];
  demoViewController2 = [(BuddyDemoController *)selfCopy demoViewController];
  v14 = [viewControllers indexOfObject:demoViewController2];

  v23 = v14;
  viewControllers2 = [navigationController viewControllers];
  v16 = v14;
  viewControllers3 = [navigationController viewControllers];
  v18 = [viewControllers3 count];
  v37 = v16;
  v36 = (v18 - v23);
  v38 = v16;
  v39 = (v18 - v23);
  v19 = [NSIndexSet indexSetWithIndexesInRange:v16, v18 - v23];
  location = [viewControllers2 objectsAtIndexes:v19];

  delegate = [(BuddyDemoController *)selfCopy delegate];
  [(BFFFlowItemDelegate *)delegate removeViewControllersOnNextPush:location];

  delegate2 = [(BuddyDemoController *)selfCopy delegate];
  [(BFFFlowItemDelegate *)delegate2 flowItemDone:selfCopy];

  objc_storeStrong(&location, 0);
  objc_storeStrong(&navigationController, 0);
}

- (BOOL)controllerNeedsToRun
{
  selfCopy = self;
  v29 = a2;
  runState = [(BuddyDemoController *)self runState];
  v3 = 0;
  if (([(BYRunState *)runState hasCompletedInitialRun]& 1) != 0)
  {
    v3 = BYIsRunningInStoreDemoMode() ^ 1;
  }

  if (v3)
  {
    return 0;
  }

  deviceConfiguration = [(BuddyDemoController *)selfCopy deviceConfiguration];
  v26 = 0;
  impliesDemod = 1;
  if (([(BYDeviceConfiguration *)deviceConfiguration inStoreDemoMode]& 1) == 0)
  {
    activationRecord = [(BuddyDemoController *)selfCopy activationRecord];
    v26 = 1;
    impliesDemod = [activationRecord impliesDemod];
  }

  if (v26)
  {
  }

  v28 = impliesDemod & 1;
  if (impliesDemod)
  {
    managedConfiguration = [(BuddyDemoController *)selfCopy managedConfiguration];
    activationRecordIndicatesCloudConfigurationIsAvailable = [(MCProfileConnection *)managedConfiguration activationRecordIndicatesCloudConfigurationIsAvailable];

    if (activationRecordIndicatesCloudConfigurationIsAvailable)
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
      miscState = [(BuddyDemoController *)selfCopy miscState];
      completedDemoSetup = [(BuddyMiscState *)miscState completedDemoSetup];

      if (completedDemoSetup)
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

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  [sub_1001A9050() needsToRun:location[0]];
  objc_storeStrong(location, 0);
}

- (id)viewController
{
  selfCopy = self;
  location[1] = a2;
  demoViewController = [(BuddyDemoController *)self demoViewController];

  if (demoViewController)
  {
    demoViewController2 = [(BuddyDemoController *)selfCopy demoViewController];
  }

  else
  {
    objc_initWeak(location, selfCopy);
    v3 = objc_alloc_init(sub_1001A9050());
    [(BuddyDemoController *)selfCopy setDemoViewController:v3];

    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_1001A9354;
    v11 = &unk_10032B1A0;
    objc_copyWeak(&v12, location);
    demoViewController3 = [(BuddyDemoController *)selfCopy demoViewController];
    [(MSDWelcomeViewController *)demoViewController3 setCompletionHandler:&v7];

    demoViewController2 = [(BuddyDemoController *)selfCopy demoViewController];
    objc_destroyWeak(&v12);
    objc_destroyWeak(location);
  }

  v5 = demoViewController2;

  return v5;
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end