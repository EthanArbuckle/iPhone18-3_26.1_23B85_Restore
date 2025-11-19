@interface HOBaseController
+ (BOOL)isHomeManagerStatusReady:(id)a3;
- (BOOL)_areHMSettingsValidForHome:(id)a3;
- (HOBaseController)initWithRootController:(id)a3;
- (HOBaseControllerDelegate)rootViewController;
- (id)_overridingTabIdentifier;
- (id)_populateWallpaperForLoadingViewController:(id)a3;
- (id)currentlyPresentedViewController;
- (id)loadLoadingViewController;
- (id)onboardingPresentationFuture;
- (id)presentConfirmationAlertForExecutingTriggerWithIdentifier:(id)a3;
- (id)selectCurrentTab;
- (id)selectTabWithIdentifier:(id)a3;
- (id)stateController:(id)a3 dismissViewController:(id)a4 forState:(unint64_t)a5;
- (id)stateController:(id)a3 presentViewController:(id)a4 forState:(unint64_t)a5;
- (void)_presentLocationAlertForTriggerWithIdentifier:(id)a3;
- (void)_presentLocationTriggerAlertsIfNeeded;
- (void)appOnboardingWillFinishForStateController:(id)a3;
- (void)executionEnvironmentWillEnterForeground:(id)a3;
- (void)home:(id)a3 didAddAccessory:(id)a4;
- (void)homeKitDispatcher:(id)a3 manager:(id)a4 didChangeHome:(id)a5;
- (void)homeManager:(id)a3 didRemoveHome:(id)a4;
- (void)homeManager:(id)a3 didUpdateStatus:(unint64_t)a4;
- (void)homeManagerDidFinishInitialDatabaseLoad:(id)a3;
- (void)reloadInitialSetup;
- (void)settingsDidUpdate:(id)a3;
- (void)showOnboardingIfNeededForHomeInvitation:(id)a3;
@end

@implementation HOBaseController

- (HOBaseController)initWithRootController:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = HOBaseController;
  v5 = [(HOBaseController *)&v16 init];
  if (v5)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v5 selector:"applicationWillEnterForeground" name:UIApplicationWillEnterForegroundNotification object:0];

    v7 = +[HFExecutionEnvironment sharedInstance];
    [v7 addObserver:v5];

    v8 = +[HFHomeKitDispatcher sharedDispatcher];
    [v8 addHomeObserver:v5];

    v9 = +[HFHomeKitDispatcher sharedDispatcher];
    [v9 addHomeKitSettingsObserver:v5];

    v10 = +[HFHomeKitDispatcher sharedDispatcher];
    [v10 addHomeManagerObserver:v5];

    v11 = objc_alloc_init(NSMutableArray);
    triggersPendingExecutionConfirmation = v5->_triggersPendingExecutionConfirmation;
    v5->_triggersPendingExecutionConfirmation = v11;

    v13 = [[HOInitialSetupStateController alloc] initWithDelegate:v5];
    initialSetupStateController = v5->_initialSetupStateController;
    v5->_initialSetupStateController = v13;

    objc_storeWeak(&v5->_rootViewController, v4);
  }

  return v5;
}

- (id)loadLoadingViewController
{
  v3 = objc_alloc_init(HOMainLoadingViewController);
  v4 = [(HOBaseController *)self _populateWallpaperForLoadingViewController:v3];

  return v3;
}

- (void)reloadInitialSetup
{
  v3 = [(HOBaseController *)self initialSetupStateController];
  [v3 reloadState];

  v4 = [(HOBaseController *)self initialSetupStateController];
  v5 = [v4 onboardingCompleteFuture];
  v6 = [v5 isFinished];

  if ((v6 & 1) == 0)
  {
    objc_initWeak(&location, self);
    v7 = [(HOBaseController *)self initialSetupStateController];
    v8 = [v7 onboardingCompleteFuture];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10002EE50;
    v10[3] = &unk_1000C3AC8;
    objc_copyWeak(&v11, &location);
    v9 = [v8 addSuccessBlock:v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (id)_populateWallpaperForLoadingViewController:(id)a3
{
  v3 = a3;
  v4 = +[HFWallpaperManager sharedInstance];
  v5 = [v4 defaultWallpaperForCollectionType:0];

  v6 = [v3 wallpaperView];

  [v6 populateWallpaper:v5 withAnimation:1 onlyIfNeeded:1];
  v7 = +[NAFuture futureWithNoResult];

  return v7;
}

- (id)presentConfirmationAlertForExecutingTriggerWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HOBaseController *)self triggersPendingExecutionConfirmation];
  [v5 addObject:v4];

  [(HOBaseController *)self _presentLocationTriggerAlertsIfNeeded];

  return +[NAFuture futureWithNoResult];
}

- (void)_presentLocationTriggerAlertsIfNeeded
{
  v3 = [(HOBaseController *)self triggersPendingExecutionConfirmation];
  v4 = [v3 count];

  if (v4)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [(HOBaseController *)self triggersPendingExecutionConfirmation];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [(HOBaseController *)self _presentLocationAlertForTriggerWithIdentifier:*(*(&v11 + 1) + 8 * v9)];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    v10 = [(HOBaseController *)self triggersPendingExecutionConfirmation];
    [v10 removeAllObjects];
  }
}

- (void)_presentLocationAlertForTriggerWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  v6 = [v5 home];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002F1B0;
  v8[3] = &unk_1000C3B18;
  v9 = v4;
  v10 = self;
  v7 = v4;
  [v6 fetchTriggerNameForTriggerIdentifier:v7 completionHandler:v8];
}

- (void)showOnboardingIfNeededForHomeInvitation:(id)a3
{
  v4 = a3;
  v5 = [(HOBaseController *)self initialSetupStateController];
  [v5 showOnboardingIfNeededForHomeInvitation:v4];
}

- (id)onboardingPresentationFuture
{
  v2 = [(HOBaseController *)self initialSetupStateController];
  v3 = [v2 onboardingCompleteFuture];

  return v3;
}

- (id)stateController:(id)a3 presentViewController:(id)a4 forState:(unint64_t)a5
{
  v6 = a4;
  objc_opt_class();
  v7 = [(HOBaseController *)self rootViewController];
  v8 = [v7 currentViewController];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    v11 = [(HOBaseController *)self _populateWallpaperForLoadingViewController:v10];
    v12 = [(HOBaseController *)self rootViewController];
    v13 = [objc_opt_class() instancesRespondToSelector:"didLoadLoadingViewController"];

    if (v13)
    {
      v14 = [(HOBaseController *)self rootViewController];
      [v14 didLoadLoadingViewController];
    }
  }

  v15 = +[NAFuture futureWithNoResult];
  v16 = [(HOBaseController *)self rootViewController];
  v17 = [v16 presentedViewController];

  if (v17)
  {
    v18 = HFLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [(HOBaseController *)self rootViewController];
      v20 = [v19 presentedViewController];
      *buf = 138412546;
      v29 = v20;
      v30 = 2112;
      v31 = v6;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Dismissing unexpected presented VC %@ in preparation of presenting initial setup VC %@", buf, 0x16u);
    }

    v21 = [(HOBaseController *)self rootViewController];
    v22 = [v21 hu_dismissViewControllerAnimated:1];

    v15 = v22;
  }

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10002FB1C;
  v26[3] = &unk_1000C3B40;
  v26[4] = self;
  v27 = v6;
  v23 = v6;
  v24 = [v15 flatMap:v26];

  return v24;
}

- (id)stateController:(id)a3 dismissViewController:(id)a4 forState:(unint64_t)a5
{
  v5 = [(HOBaseController *)self rootViewController:a3];
  v6 = [v5 hu_dismissViewControllerAnimated:1];

  return v6;
}

- (id)currentlyPresentedViewController
{
  v2 = [(HOBaseController *)self rootViewController];
  v3 = [v2 presentedViewController];

  return v3;
}

- (void)appOnboardingWillFinishForStateController:(id)a3
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Finished App Onboarding, running Feature Onboarding checks", v5, 2u);
  }

  [(HOBaseController *)self _checkAndRunFeatureOnboardingWithHomeSwitch:0];
}

+ (BOOL)isHomeManagerStatusReady:(id)a3
{
  v3 = a3;
  v4 = ([v3 status] & 1) == 0 && (objc_msgSend(v3, "status") & 0x10) == 0 && (objc_msgSend(v3, "status") & 0x20) == 0;

  return v4;
}

- (BOOL)_areHMSettingsValidForHome:(id)a3
{
  v3 = [a3 currentUser];
  v4 = +[HFHomeKitDispatcher sharedDispatcher];
  v5 = [v4 home];
  v6 = [v3 userSettingsForHome:v5];

  v7 = [v6 settings];
  v8 = [v7 rootGroup];
  if (v8)
  {
    v9 = [v6 privateSettings];
    v10 = [v9 rootGroup];
    v11 = v10 != 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)executionEnvironmentWillEnterForeground:(id)a3
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "App entering foreground, running Feature Onboarding checks", v5, 2u);
  }

  [(HOBaseController *)self _checkAndRunFeatureOnboardingWithHomeSwitch:0];
}

- (void)home:(id)a3 didAddAccessory:(id)a4
{
  v5 = a4;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Accessory added (%@), running Feature Onboarding checks", &v7, 0xCu);
  }

  [(HOBaseController *)self _checkAndRunFeatureOnboardingWithHomeSwitch:0];
}

- (void)settingsDidUpdate:(id)a3
{
  v4 = a3;
  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  v6 = [v5 home];

  if ([(HOBaseController *)self userHasValidHMSettings]|| ![(HOBaseController *)self _areHMSettingsValidForHome:v6])
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100080ED4(self, v6, v8);
    }
  }

  else
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "User transitioned from no settings to valid settings (%@), now running Feature Onboarding checks", &v9, 0xCu);
    }

    [(HOBaseController *)self setUserHasValidHMSettings:1];
    [(HOBaseController *)self _checkAndRunFeatureOnboardingWithHomeSwitch:0];
  }
}

- (void)homeKitDispatcher:(id)a3 manager:(id)a4 didChangeHome:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(HOBaseController *)self userHasValidHMSettings];
  [(HOBaseController *)self setUserHasValidHMSettings:[(HOBaseController *)self _areHMSettingsValidForHome:v9]];
  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringFromSelector(a2);
    v13 = [v9 name];
    *buf = 138413314;
    v28 = self;
    v29 = 2112;
    v30 = v12;
    v31 = 2112;
    v32 = v13;
    v33 = 1024;
    v34 = v10;
    v35 = 1024;
    v36 = [(HOBaseController *)self userHasValidHMSettings];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@:%@ Changing homes to %@. Settings validity was %{BOOL}d, now is %{BOOL}d", buf, 0x2Cu);
  }

  if (v9)
  {
    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v9 name];
      *buf = 138412290;
      v28 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Switched homes, running Feature Onboarding checks for %@", buf, 0xCu);
    }

    v16 = [(HOBaseController *)self rootViewController];
    v17 = [objc_opt_class() instancesRespondToSelector:"didLoadHome:"];

    if (v17)
    {
      v18 = [(HOBaseController *)self rootViewController];
      [v18 didLoadHome:v9];
    }

    [(HOBaseController *)self _checkAndRunFeatureOnboardingWithHomeSwitch:1];
  }

  else
  {
    v19 = objc_alloc_init(HOMainLoadingViewController);
    v20 = [(HOBaseController *)self _populateWallpaperForLoadingViewController:v19];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10003067C;
    v23[3] = &unk_1000C3B68;
    v24 = v8;
    v25 = self;
    v26 = v19;
    v21 = v19;
    v22 = [v20 addSuccessBlock:v23];
  }
}

- (void)homeManager:(id)a3 didRemoveHome:(id)a4
{
  v5 = a4;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412290;
    v26 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "HomeKit Removed Home [%@]", &v25, 0xCu);
  }

  v7 = [(HOBaseController *)self rootViewController];
  v8 = [v7 presentedViewController];

  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 childViewControllers];
    v25 = 138412546;
    v26 = v8;
    v27 = 2112;
    v28 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "presentedViewController:[%@] with childViewControllers:[%@]", &v25, 0x16u);
  }

  if (v8)
  {
    v11 = [v8 childViewControllers];
    v12 = [v11 count];

    if (v12)
    {
      v13 = [v8 childViewControllers];
      v14 = [v13 firstObject];
      v15 = &OBJC_PROTOCOL___HUConfigurationViewControllerFlow;
      if ([v14 conformsToProtocol:v15])
      {
        v16 = v14;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;

      if (objc_opt_respondsToSelector())
      {
        v18 = [v17 onboardingFlowClass];
        v19 = HFLogForCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 138412290;
          v26 = v18;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "onboardingFlow = [%@]", &v25, 0xCu);
        }

        if (v18)
        {
          v20 = +[HFHomeKitDispatcher sharedDispatcher];
          v21 = [v20 home];
          v22 = [v5 isEqual:v21];

          if (v22)
          {
            v23 = HFLogForCategory();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v25 = 138412290;
              v26 = v17;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Now dismissing presented View Controller = [%@]", &v25, 0xCu);
            }

            v24 = [(HOBaseController *)self rootViewController];
            [v24 dismissViewControllerAnimated:1 completion:0];
          }
        }
      }
    }
  }
}

- (void)homeManager:(id)a3 didUpdateStatus:(unint64_t)a4
{
  v6 = [HOBaseController isHomeManagerStatusReady:a3];
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMHomeManagerStatusToString();
    v9 = @"so not yet running";
    v10 = 138412802;
    v11 = v8;
    if (v6)
    {
      v9 = @"running";
    }

    v12 = 2048;
    v13 = a4;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "HMHomeManager status updated to %@ (%lu), %@ Feature Onboarding checks...", &v10, 0x20u);
  }

  if (v6)
  {
    [(HOBaseController *)self _checkAndRunFeatureOnboardingWithHomeSwitch:0];
  }
}

- (void)homeManagerDidFinishInitialDatabaseLoad:(id)a3
{
  v4 = +[HFHomeKitDispatcher sharedDispatcher];
  v5 = [v4 home];

  if (v5)
  {
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Refresh home view after initial databse load has finished", v10, 2u);
    }

    v7 = [(HOBaseController *)self rootViewController];
    v8 = [objc_opt_class() instancesRespondToSelector:"didLoadHome:"];

    if (v8)
    {
      v9 = [(HOBaseController *)self rootViewController];
      [v9 didLoadHome:v5];
    }

    [(HOBaseController *)self _checkAndRunFeatureOnboardingWithHomeSwitch:1];
  }
}

- (id)selectTabWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HOBaseController *)self _overridingTabIdentifier];
  v6 = v5;
  if (v5 && ([v5 isEqualToString:v4] & 1) == 0)
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315650;
      v13 = "[HOBaseController selectTabWithIdentifier:]";
      v14 = 2112;
      v15 = v6;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(%s) Using '%@' as an override instead of '%@' for the tab identifier", &v12, 0x20u);
    }

    v8 = v6;
    v4 = v8;
  }

  v9 = [(HOBaseController *)self rootViewController];
  v10 = [v9 selectTabWithIdentifier:v4];

  return v10;
}

- (id)selectCurrentTab
{
  v3 = +[HFStateRestorationSettings sharedInstance];
  v4 = [v3 selectedHomeAppTabIdentifier];
  v5 = v4;
  v6 = HFHomeAppTabIdentifierHome;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = [(HOBaseController *)self selectTabWithIdentifier:v7];

  return v8;
}

- (id)_overridingTabIdentifier
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  v3 = [v2 home];

  if ([v3 hf_currentUserIsRestrictedGuest])
  {
    v4 = HFHomeAppTabIdentifierHome;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (HOBaseControllerDelegate)rootViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_rootViewController);

  return WeakRetained;
}

@end