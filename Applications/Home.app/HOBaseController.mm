@interface HOBaseController
+ (BOOL)isHomeManagerStatusReady:(id)ready;
- (BOOL)_areHMSettingsValidForHome:(id)home;
- (HOBaseController)initWithRootController:(id)controller;
- (HOBaseControllerDelegate)rootViewController;
- (id)_overridingTabIdentifier;
- (id)_populateWallpaperForLoadingViewController:(id)controller;
- (id)currentlyPresentedViewController;
- (id)loadLoadingViewController;
- (id)onboardingPresentationFuture;
- (id)presentConfirmationAlertForExecutingTriggerWithIdentifier:(id)identifier;
- (id)selectCurrentTab;
- (id)selectTabWithIdentifier:(id)identifier;
- (id)stateController:(id)controller dismissViewController:(id)viewController forState:(unint64_t)state;
- (id)stateController:(id)controller presentViewController:(id)viewController forState:(unint64_t)state;
- (void)_presentLocationAlertForTriggerWithIdentifier:(id)identifier;
- (void)_presentLocationTriggerAlertsIfNeeded;
- (void)appOnboardingWillFinishForStateController:(id)controller;
- (void)executionEnvironmentWillEnterForeground:(id)foreground;
- (void)home:(id)home didAddAccessory:(id)accessory;
- (void)homeKitDispatcher:(id)dispatcher manager:(id)manager didChangeHome:(id)home;
- (void)homeManager:(id)manager didRemoveHome:(id)home;
- (void)homeManager:(id)manager didUpdateStatus:(unint64_t)status;
- (void)homeManagerDidFinishInitialDatabaseLoad:(id)load;
- (void)reloadInitialSetup;
- (void)settingsDidUpdate:(id)update;
- (void)showOnboardingIfNeededForHomeInvitation:(id)invitation;
@end

@implementation HOBaseController

- (HOBaseController)initWithRootController:(id)controller
{
  controllerCopy = controller;
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

    objc_storeWeak(&v5->_rootViewController, controllerCopy);
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
  initialSetupStateController = [(HOBaseController *)self initialSetupStateController];
  [initialSetupStateController reloadState];

  initialSetupStateController2 = [(HOBaseController *)self initialSetupStateController];
  onboardingCompleteFuture = [initialSetupStateController2 onboardingCompleteFuture];
  isFinished = [onboardingCompleteFuture isFinished];

  if ((isFinished & 1) == 0)
  {
    objc_initWeak(&location, self);
    initialSetupStateController3 = [(HOBaseController *)self initialSetupStateController];
    onboardingCompleteFuture2 = [initialSetupStateController3 onboardingCompleteFuture];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10002EE50;
    v10[3] = &unk_1000C3AC8;
    objc_copyWeak(&v11, &location);
    v9 = [onboardingCompleteFuture2 addSuccessBlock:v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (id)_populateWallpaperForLoadingViewController:(id)controller
{
  controllerCopy = controller;
  v4 = +[HFWallpaperManager sharedInstance];
  v5 = [v4 defaultWallpaperForCollectionType:0];

  wallpaperView = [controllerCopy wallpaperView];

  [wallpaperView populateWallpaper:v5 withAnimation:1 onlyIfNeeded:1];
  v7 = +[NAFuture futureWithNoResult];

  return v7;
}

- (id)presentConfirmationAlertForExecutingTriggerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  triggersPendingExecutionConfirmation = [(HOBaseController *)self triggersPendingExecutionConfirmation];
  [triggersPendingExecutionConfirmation addObject:identifierCopy];

  [(HOBaseController *)self _presentLocationTriggerAlertsIfNeeded];

  return +[NAFuture futureWithNoResult];
}

- (void)_presentLocationTriggerAlertsIfNeeded
{
  triggersPendingExecutionConfirmation = [(HOBaseController *)self triggersPendingExecutionConfirmation];
  v4 = [triggersPendingExecutionConfirmation count];

  if (v4)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    triggersPendingExecutionConfirmation2 = [(HOBaseController *)self triggersPendingExecutionConfirmation];
    v6 = [triggersPendingExecutionConfirmation2 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(triggersPendingExecutionConfirmation2);
          }

          [(HOBaseController *)self _presentLocationAlertForTriggerWithIdentifier:*(*(&v11 + 1) + 8 * v9)];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [triggersPendingExecutionConfirmation2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    triggersPendingExecutionConfirmation3 = [(HOBaseController *)self triggersPendingExecutionConfirmation];
    [triggersPendingExecutionConfirmation3 removeAllObjects];
  }
}

- (void)_presentLocationAlertForTriggerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  home = [v5 home];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002F1B0;
  v8[3] = &unk_1000C3B18;
  v9 = identifierCopy;
  selfCopy = self;
  v7 = identifierCopy;
  [home fetchTriggerNameForTriggerIdentifier:v7 completionHandler:v8];
}

- (void)showOnboardingIfNeededForHomeInvitation:(id)invitation
{
  invitationCopy = invitation;
  initialSetupStateController = [(HOBaseController *)self initialSetupStateController];
  [initialSetupStateController showOnboardingIfNeededForHomeInvitation:invitationCopy];
}

- (id)onboardingPresentationFuture
{
  initialSetupStateController = [(HOBaseController *)self initialSetupStateController];
  onboardingCompleteFuture = [initialSetupStateController onboardingCompleteFuture];

  return onboardingCompleteFuture;
}

- (id)stateController:(id)controller presentViewController:(id)viewController forState:(unint64_t)state
{
  viewControllerCopy = viewController;
  objc_opt_class();
  rootViewController = [(HOBaseController *)self rootViewController];
  currentViewController = [rootViewController currentViewController];
  if (objc_opt_isKindOfClass())
  {
    v9 = currentViewController;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    v11 = [(HOBaseController *)self _populateWallpaperForLoadingViewController:v10];
    rootViewController2 = [(HOBaseController *)self rootViewController];
    v13 = [objc_opt_class() instancesRespondToSelector:"didLoadLoadingViewController"];

    if (v13)
    {
      rootViewController3 = [(HOBaseController *)self rootViewController];
      [rootViewController3 didLoadLoadingViewController];
    }
  }

  v15 = +[NAFuture futureWithNoResult];
  rootViewController4 = [(HOBaseController *)self rootViewController];
  presentedViewController = [rootViewController4 presentedViewController];

  if (presentedViewController)
  {
    v18 = HFLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      rootViewController5 = [(HOBaseController *)self rootViewController];
      presentedViewController2 = [rootViewController5 presentedViewController];
      *buf = 138412546;
      v29 = presentedViewController2;
      v30 = 2112;
      v31 = viewControllerCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Dismissing unexpected presented VC %@ in preparation of presenting initial setup VC %@", buf, 0x16u);
    }

    rootViewController6 = [(HOBaseController *)self rootViewController];
    v22 = [rootViewController6 hu_dismissViewControllerAnimated:1];

    v15 = v22;
  }

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10002FB1C;
  v26[3] = &unk_1000C3B40;
  v26[4] = self;
  v27 = viewControllerCopy;
  v23 = viewControllerCopy;
  v24 = [v15 flatMap:v26];

  return v24;
}

- (id)stateController:(id)controller dismissViewController:(id)viewController forState:(unint64_t)state
{
  v5 = [(HOBaseController *)self rootViewController:controller];
  v6 = [v5 hu_dismissViewControllerAnimated:1];

  return v6;
}

- (id)currentlyPresentedViewController
{
  rootViewController = [(HOBaseController *)self rootViewController];
  presentedViewController = [rootViewController presentedViewController];

  return presentedViewController;
}

- (void)appOnboardingWillFinishForStateController:(id)controller
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Finished App Onboarding, running Feature Onboarding checks", v5, 2u);
  }

  [(HOBaseController *)self _checkAndRunFeatureOnboardingWithHomeSwitch:0];
}

+ (BOOL)isHomeManagerStatusReady:(id)ready
{
  readyCopy = ready;
  v4 = ([readyCopy status] & 1) == 0 && (objc_msgSend(readyCopy, "status") & 0x10) == 0 && (objc_msgSend(readyCopy, "status") & 0x20) == 0;

  return v4;
}

- (BOOL)_areHMSettingsValidForHome:(id)home
{
  currentUser = [home currentUser];
  v4 = +[HFHomeKitDispatcher sharedDispatcher];
  home = [v4 home];
  v6 = [currentUser userSettingsForHome:home];

  settings = [v6 settings];
  rootGroup = [settings rootGroup];
  if (rootGroup)
  {
    privateSettings = [v6 privateSettings];
    rootGroup2 = [privateSettings rootGroup];
    v11 = rootGroup2 != 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)executionEnvironmentWillEnterForeground:(id)foreground
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "App entering foreground, running Feature Onboarding checks", v5, 2u);
  }

  [(HOBaseController *)self _checkAndRunFeatureOnboardingWithHomeSwitch:0];
}

- (void)home:(id)home didAddAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = accessoryCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Accessory added (%@), running Feature Onboarding checks", &v7, 0xCu);
  }

  [(HOBaseController *)self _checkAndRunFeatureOnboardingWithHomeSwitch:0];
}

- (void)settingsDidUpdate:(id)update
{
  updateCopy = update;
  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  home = [v5 home];

  if ([(HOBaseController *)self userHasValidHMSettings]|| ![(HOBaseController *)self _areHMSettingsValidForHome:home])
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100080ED4(self, home, v8);
    }
  }

  else
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = updateCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "User transitioned from no settings to valid settings (%@), now running Feature Onboarding checks", &v9, 0xCu);
    }

    [(HOBaseController *)self setUserHasValidHMSettings:1];
    [(HOBaseController *)self _checkAndRunFeatureOnboardingWithHomeSwitch:0];
  }
}

- (void)homeKitDispatcher:(id)dispatcher manager:(id)manager didChangeHome:(id)home
{
  dispatcherCopy = dispatcher;
  homeCopy = home;
  userHasValidHMSettings = [(HOBaseController *)self userHasValidHMSettings];
  [(HOBaseController *)self setUserHasValidHMSettings:[(HOBaseController *)self _areHMSettingsValidForHome:homeCopy]];
  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringFromSelector(a2);
    name = [homeCopy name];
    *buf = 138413314;
    selfCopy = self;
    v29 = 2112;
    v30 = v12;
    v31 = 2112;
    v32 = name;
    v33 = 1024;
    v34 = userHasValidHMSettings;
    v35 = 1024;
    userHasValidHMSettings2 = [(HOBaseController *)self userHasValidHMSettings];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@:%@ Changing homes to %@. Settings validity was %{BOOL}d, now is %{BOOL}d", buf, 0x2Cu);
  }

  if (homeCopy)
  {
    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      name2 = [homeCopy name];
      *buf = 138412290;
      selfCopy = name2;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Switched homes, running Feature Onboarding checks for %@", buf, 0xCu);
    }

    rootViewController = [(HOBaseController *)self rootViewController];
    v17 = [objc_opt_class() instancesRespondToSelector:"didLoadHome:"];

    if (v17)
    {
      rootViewController2 = [(HOBaseController *)self rootViewController];
      [rootViewController2 didLoadHome:homeCopy];
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
    v24 = dispatcherCopy;
    selfCopy2 = self;
    v26 = v19;
    v21 = v19;
    v22 = [v20 addSuccessBlock:v23];
  }
}

- (void)homeManager:(id)manager didRemoveHome:(id)home
{
  homeCopy = home;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412290;
    v26 = homeCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "HomeKit Removed Home [%@]", &v25, 0xCu);
  }

  rootViewController = [(HOBaseController *)self rootViewController];
  presentedViewController = [rootViewController presentedViewController];

  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    childViewControllers = [presentedViewController childViewControllers];
    v25 = 138412546;
    v26 = presentedViewController;
    v27 = 2112;
    v28 = childViewControllers;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "presentedViewController:[%@] with childViewControllers:[%@]", &v25, 0x16u);
  }

  if (presentedViewController)
  {
    childViewControllers2 = [presentedViewController childViewControllers];
    v12 = [childViewControllers2 count];

    if (v12)
    {
      childViewControllers3 = [presentedViewController childViewControllers];
      firstObject = [childViewControllers3 firstObject];
      v15 = &OBJC_PROTOCOL___HUConfigurationViewControllerFlow;
      if ([firstObject conformsToProtocol:v15])
      {
        v16 = firstObject;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;

      if (objc_opt_respondsToSelector())
      {
        onboardingFlowClass = [v17 onboardingFlowClass];
        v19 = HFLogForCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 138412290;
          v26 = onboardingFlowClass;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "onboardingFlow = [%@]", &v25, 0xCu);
        }

        if (onboardingFlowClass)
        {
          v20 = +[HFHomeKitDispatcher sharedDispatcher];
          home = [v20 home];
          v22 = [homeCopy isEqual:home];

          if (v22)
          {
            v23 = HFLogForCategory();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v25 = 138412290;
              v26 = v17;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Now dismissing presented View Controller = [%@]", &v25, 0xCu);
            }

            rootViewController2 = [(HOBaseController *)self rootViewController];
            [rootViewController2 dismissViewControllerAnimated:1 completion:0];
          }
        }
      }
    }
  }
}

- (void)homeManager:(id)manager didUpdateStatus:(unint64_t)status
{
  v6 = [HOBaseController isHomeManagerStatusReady:manager];
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
    statusCopy = status;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "HMHomeManager status updated to %@ (%lu), %@ Feature Onboarding checks...", &v10, 0x20u);
  }

  if (v6)
  {
    [(HOBaseController *)self _checkAndRunFeatureOnboardingWithHomeSwitch:0];
  }
}

- (void)homeManagerDidFinishInitialDatabaseLoad:(id)load
{
  v4 = +[HFHomeKitDispatcher sharedDispatcher];
  home = [v4 home];

  if (home)
  {
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Refresh home view after initial databse load has finished", v10, 2u);
    }

    rootViewController = [(HOBaseController *)self rootViewController];
    v8 = [objc_opt_class() instancesRespondToSelector:"didLoadHome:"];

    if (v8)
    {
      rootViewController2 = [(HOBaseController *)self rootViewController];
      [rootViewController2 didLoadHome:home];
    }

    [(HOBaseController *)self _checkAndRunFeatureOnboardingWithHomeSwitch:1];
  }
}

- (id)selectTabWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _overridingTabIdentifier = [(HOBaseController *)self _overridingTabIdentifier];
  v6 = _overridingTabIdentifier;
  if (_overridingTabIdentifier && ([_overridingTabIdentifier isEqualToString:identifierCopy] & 1) == 0)
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315650;
      v13 = "[HOBaseController selectTabWithIdentifier:]";
      v14 = 2112;
      v15 = v6;
      v16 = 2112;
      v17 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(%s) Using '%@' as an override instead of '%@' for the tab identifier", &v12, 0x20u);
    }

    v8 = v6;
    identifierCopy = v8;
  }

  rootViewController = [(HOBaseController *)self rootViewController];
  v10 = [rootViewController selectTabWithIdentifier:identifierCopy];

  return v10;
}

- (id)selectCurrentTab
{
  v3 = +[HFStateRestorationSettings sharedInstance];
  selectedHomeAppTabIdentifier = [v3 selectedHomeAppTabIdentifier];
  v5 = selectedHomeAppTabIdentifier;
  v6 = HFHomeAppTabIdentifierHome;
  if (selectedHomeAppTabIdentifier)
  {
    v6 = selectedHomeAppTabIdentifier;
  }

  v7 = v6;

  v8 = [(HOBaseController *)self selectTabWithIdentifier:v7];

  return v8;
}

- (id)_overridingTabIdentifier
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  home = [v2 home];

  if ([home hf_currentUserIsRestrictedGuest])
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