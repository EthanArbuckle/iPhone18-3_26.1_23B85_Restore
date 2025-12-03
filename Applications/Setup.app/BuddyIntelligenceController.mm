@interface BuddyIntelligenceController
- (BFFFlowItemDelegate)delegate;
- (BFFNavigationController)weakNavigationController;
- (BOOL)hasBlackBackground;
- (BOOL)responsibleForViewController:(id)controller;
- (id)viewController;
- (void)controllerCompletedWithContinue:(BOOL)continue;
- (void)controllerWasPopped;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)setNavigationController:(id)controller;
- (void)siriGMIntroViewControllerContinuePressed:(id)pressed;
- (void)siriGMIntroViewControllerNotNowPressed:(id)pressed;
@end

@implementation BuddyIntelligenceController

- (id)viewController
{
  intelligenceController = [(BuddyIntelligenceController *)self intelligenceController];

  if (intelligenceController)
  {
    intelligenceController2 = [(BuddyIntelligenceController *)self intelligenceController];
  }

  else
  {
    viewControllerProviderBlock = [(BuddyIntelligenceController *)self viewControllerProviderBlock];

    if (viewControllerProviderBlock)
    {
      viewControllerProviderBlock2 = [(BuddyIntelligenceController *)self viewControllerProviderBlock];
      v5 = viewControllerProviderBlock2[2](viewControllerProviderBlock2);
      [(BuddyIntelligenceController *)self setIntelligenceController:v5];
    }

    else
    {
      viewControllerProviderBlock2 = [objc_alloc(sub_10016A4E8()) initWithDelegate:self];
      [(BuddyIntelligenceController *)self setIntelligenceController:viewControllerProviderBlock2];
    }

    intelligenceController2 = [(BuddyIntelligenceController *)self intelligenceController];
  }

  return intelligenceController2;
}

- (void)controllerCompletedWithContinue:(BOOL)continue
{
  selfCopy = self;
  v19 = a2;
  continueCopy = continue;
  weakNavigationController = [(BuddyIntelligenceController *)self weakNavigationController];
  location = [weakNavigationController topViewController];
  if (location)
  {
    view = [location view];
    window = [view window];
    [window setUserInteractionEnabled:0];

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [BFFViewControllerSpinnerManager startAnimatingSpinnerFor:location identifier:v6];
  }

  intelligenceProvider = [(BuddyIntelligenceController *)selfCopy intelligenceProvider];
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_10016A7D0;
  v12 = &unk_10032BAC0;
  v13 = selfCopy;
  v15 = continueCopy;
  v14 = location;
  [(IntelligenceProvider *)intelligenceProvider updateAppleIntelligenceUpsellPreferencesWithDidShow:1 completionHandler:&v8];

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&weakNavigationController, 0);
}

- (void)setNavigationController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  [(BuddyIntelligenceController *)selfCopy setWeakNavigationController:location[0]];
  objc_storeStrong(location, 0);
}

- (void)controllerWasPopped
{
  v2 = [(BuddyIntelligenceController *)self intelligenceProvider:a2];
  [(IntelligenceProvider *)v2 updateAppleIntelligenceUpsellPreferencesWithDidShow:0 completionHandler:&stru_10032DC50];
}

- (BOOL)hasBlackBackground
{
  intelligenceProvider = [(BuddyIntelligenceController *)self intelligenceProvider];
  canEnableIntelligence = [(IntelligenceProvider *)intelligenceProvider canEnableIntelligence];
  v8 = 0;
  v6 = 0;
  v4 = 0;
  if (canEnableIntelligence)
  {
    viewController = [(BuddyIntelligenceController *)self viewController];
    v8 = 1;
    traitCollection = [viewController traitCollection];
    v6 = 1;
    v4 = [traitCollection userInterfaceStyle] == 2;
  }

  v11 = v4;
  if (v6)
  {
  }

  if (v8)
  {
  }

  return v11;
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  networkProvider = [(BuddyIntelligenceController *)selfCopy networkProvider];
  networkReachable = [(BuddyNetworkProvider *)networkProvider networkReachable];

  v13 = networkReachable & 1;
  intelligenceProvider = [(BuddyIntelligenceController *)selfCopy intelligenceProvider];
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_10016AF04;
  v10 = &unk_10032B020;
  v11 = selfCopy;
  v12 = location[0];
  [(IntelligenceProvider *)intelligenceProvider shouldShowIntelligenceWithServerCheck:networkReachable & 1 completionHandler:&v6];

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)responsibleForViewController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  viewController = [(BuddyIntelligenceController *)selfCopy viewController];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [(NSBundle *)v3 isEqual:v5];
  v11 = 0;
  v9 = 0;
  v7 = 1;
  if ((v6 & 1) == 0)
  {
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = 1;
    bundleIdentifier = [(NSBundle *)v12 bundleIdentifier];
    v9 = 1;
    v7 = [(NSString *)bundleIdentifier containsString:@"UserNotifications"];
  }

  v15 = v7 & 1;
  if (v9)
  {
  }

  if (v11)
  {
  }

  objc_storeStrong(location, 0);
  return v15 & 1;
}

- (void)siriGMIntroViewControllerContinuePressed:(id)pressed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, pressed);
  oslog = _BYLoggingFacility();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog;
    v4 = v6;
    sub_10006AA68(v5);
    _os_log_impl(&_mh_execute_header, v3, v4, "Apple Intelligence continue button pressed", v5, 2u);
  }

  objc_storeStrong(&oslog, 0);
  [(BuddyIntelligenceController *)selfCopy controllerCompletedWithContinue:1];
  objc_storeStrong(location, 0);
}

- (void)siriGMIntroViewControllerNotNowPressed:(id)pressed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, pressed);
  oslog = _BYLoggingFacility();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog;
    v4 = v6;
    sub_10006AA68(v5);
    _os_log_impl(&_mh_execute_header, v3, v4, "Apple Intelligence not now button pressed", v5, 2u);
  }

  objc_storeStrong(&oslog, 0);
  [(BuddyIntelligenceController *)selfCopy controllerCompletedWithContinue:0];
  objc_storeStrong(location, 0);
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BFFNavigationController)weakNavigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_weakNavigationController);

  return WeakRetained;
}

@end