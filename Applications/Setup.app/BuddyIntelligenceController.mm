@interface BuddyIntelligenceController
- (BFFFlowItemDelegate)delegate;
- (BFFNavigationController)weakNavigationController;
- (BOOL)hasBlackBackground;
- (BOOL)responsibleForViewController:(id)a3;
- (id)viewController;
- (void)controllerCompletedWithContinue:(BOOL)a3;
- (void)controllerWasPopped;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)setNavigationController:(id)a3;
- (void)siriGMIntroViewControllerContinuePressed:(id)a3;
- (void)siriGMIntroViewControllerNotNowPressed:(id)a3;
@end

@implementation BuddyIntelligenceController

- (id)viewController
{
  v2 = [(BuddyIntelligenceController *)self intelligenceController];

  if (v2)
  {
    v8 = [(BuddyIntelligenceController *)self intelligenceController];
  }

  else
  {
    v3 = [(BuddyIntelligenceController *)self viewControllerProviderBlock];

    if (v3)
    {
      v4 = [(BuddyIntelligenceController *)self viewControllerProviderBlock];
      v5 = v4[2](v4);
      [(BuddyIntelligenceController *)self setIntelligenceController:v5];
    }

    else
    {
      v4 = [objc_alloc(sub_10016A4E8()) initWithDelegate:self];
      [(BuddyIntelligenceController *)self setIntelligenceController:v4];
    }

    v8 = [(BuddyIntelligenceController *)self intelligenceController];
  }

  return v8;
}

- (void)controllerCompletedWithContinue:(BOOL)a3
{
  v20 = self;
  v19 = a2;
  v18 = a3;
  v17 = [(BuddyIntelligenceController *)self weakNavigationController];
  location = [v17 topViewController];
  if (location)
  {
    v3 = [location view];
    v4 = [v3 window];
    [v4 setUserInteractionEnabled:0];

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [BFFViewControllerSpinnerManager startAnimatingSpinnerFor:location identifier:v6];
  }

  v7 = [(BuddyIntelligenceController *)v20 intelligenceProvider];
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_10016A7D0;
  v12 = &unk_10032BAC0;
  v13 = v20;
  v15 = v18;
  v14 = location;
  [(IntelligenceProvider *)v7 updateAppleIntelligenceUpsellPreferencesWithDidShow:1 completionHandler:&v8];

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v17, 0);
}

- (void)setNavigationController:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BuddyIntelligenceController *)v4 setWeakNavigationController:location[0]];
  objc_storeStrong(location, 0);
}

- (void)controllerWasPopped
{
  v2 = [(BuddyIntelligenceController *)self intelligenceProvider:a2];
  [(IntelligenceProvider *)v2 updateAppleIntelligenceUpsellPreferencesWithDidShow:0 completionHandler:&stru_10032DC50];
}

- (BOOL)hasBlackBackground
{
  v2 = [(BuddyIntelligenceController *)self intelligenceProvider];
  v3 = [(IntelligenceProvider *)v2 canEnableIntelligence];
  v8 = 0;
  v6 = 0;
  v4 = 0;
  if (v3)
  {
    v9 = [(BuddyIntelligenceController *)self viewController];
    v8 = 1;
    v7 = [v9 traitCollection];
    v6 = 1;
    v4 = [v7 userInterfaceStyle] == 2;
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

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyIntelligenceController *)v15 networkProvider];
  v4 = [(BuddyNetworkProvider *)v3 networkReachable];

  v13 = v4 & 1;
  v5 = [(BuddyIntelligenceController *)v15 intelligenceProvider];
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_10016AF04;
  v10 = &unk_10032B020;
  v11 = v15;
  v12 = location[0];
  [(IntelligenceProvider *)v5 shouldShowIntelligenceWithServerCheck:v4 & 1 completionHandler:&v6];

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)responsibleForViewController:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [(BuddyIntelligenceController *)v14 viewController];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [(NSBundle *)v3 isEqual:v5];
  v11 = 0;
  v9 = 0;
  v7 = 1;
  if ((v6 & 1) == 0)
  {
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = 1;
    v10 = [(NSBundle *)v12 bundleIdentifier];
    v9 = 1;
    v7 = [(NSString *)v10 containsString:@"UserNotifications"];
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

- (void)siriGMIntroViewControllerContinuePressed:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  [(BuddyIntelligenceController *)v9 controllerCompletedWithContinue:1];
  objc_storeStrong(location, 0);
}

- (void)siriGMIntroViewControllerNotNowPressed:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  [(BuddyIntelligenceController *)v9 controllerCompletedWithContinue:0];
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