@interface EVOnboardingPrivacyViewController
- (EVOnboardingPrivacyViewController)initWithDelegate:(id)a3;
- (id)obViewController;
- (void)_aboutImproveEVRoutingPressed;
- (void)_notNowPressed;
- (void)_sharePressed;
- (void)viewDidLoad;
@end

@implementation EVOnboardingPrivacyViewController

- (void)_notNowPressed
{
  v3 = sub_100798370();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "User selected not now.", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained privacyViewControllerDidSelectNotNow:self];
}

- (void)_sharePressed
{
  v3 = sub_100798370();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "User selected to share.", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained privacyViewControllerDidSelectShare:self];
}

- (void)_aboutImproveEVRoutingPressed
{
  v3 = sub_100798370();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "User pressed on About Improve EV Routing. Will display privacy texts.", v5, 2u);
  }

  v4 = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.improveEVRouting"];
  [v4 setPresentingViewController:self];
  [v4 present];
}

- (id)obViewController
{
  v4 = +[NSBundle mainBundle];
  v29 = [v4 localizedStringForKey:@"[EV Onboarding] Improve EV Title" value:@"localized string not found" table:0];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"[EV Onboarding] Improve EV Routing subtitle" value:@"localized string not found" table:0];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 bundleIdentifier];
  v9 = [(EVOnboardingPrivacyViewController *)self view];
  v10 = [v9 _screen];
  if (v10)
  {
    v2 = [(EVOnboardingPrivacyViewController *)self view];
    [v2 _screen];
  }

  else
  {
    +[UIScreen mainScreen];
  }
  v11 = ;
  [v11 scale];
  v12 = [UIImage _applicationIconImageForBundleIdentifier:v8 format:2 scale:?];
  if (v10)
  {

    v11 = v2;
  }

  v13 = [[OBWelcomeController alloc] initWithTitle:v29 detailText:v6 icon:v12];
  [v13 setModalPresentationStyle:2];
  v14 = +[OBBoldTrayButton boldButton];
  v15 = +[NSBundle mainBundle];
  v16 = [v15 localizedStringForKey:@"[EV Onboarding] Share" value:@"localized string not found" table:0];
  [v14 setTitle:v16 forState:0];

  [v14 addTarget:self action:"_sharePressed" forControlEvents:64];
  [v14 setAccessibilityIdentifier:@"ShareButton"];
  v17 = [v13 buttonTray];
  [v17 addButton:v14];

  v18 = +[OBLinkTrayButton linkButton];
  v19 = +[NSBundle mainBundle];
  v20 = [v19 localizedStringForKey:@"[EV Onboarding] Not Now" value:@"localized string not found" table:0];
  [v18 setTitle:v20 forState:0];

  [v18 addTarget:self action:"_notNowPressed" forControlEvents:64];
  [v18 setAccessibilityIdentifier:@"NotNowButton"];
  v21 = [v13 buttonTray];
  [v21 addButton:v18];

  v22 = +[OBHeaderAccessoryButton accessoryButton];
  v23 = +[NSBundle mainBundle];
  v24 = [v23 localizedStringForKey:@"[EV Onboarding] About Improve EV" value:@"localized string not found" table:0];
  [v22 setTitle:v24 forState:0];

  [v22 addTarget:self action:"_aboutImproveEVRoutingPressed" forControlEvents:64];
  [v22 setAccessibilityIdentifier:@"ImproveEVRoutingButton"];
  v25 = [v22 titleLabel];
  [v25 setNumberOfLines:0];

  v26 = [v13 headerView];
  [v26 addAccessoryButton:v22];

  v27 = [v13 headerView];
  [v27 setAccessibilityIdentifier:@"EVOnboardingHeader"];

  return v13;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = EVOnboardingPrivacyViewController;
  [(EVOnboardingBaseViewController *)&v5 viewDidLoad];
  v3 = [(EVOnboardingPrivacyViewController *)self view];
  [v3 setAccessibilityIdentifier:@"EVOnboardingPrivacyView"];

  v4 = [(EVOnboardingPrivacyViewController *)self navigationItem];
  [v4 setHidesBackButton:1];
}

- (EVOnboardingPrivacyViewController)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = EVOnboardingPrivacyViewController;
  v5 = [(EVOnboardingBaseViewController *)&v8 initWithDelegate:v4];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

@end