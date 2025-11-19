@interface LPROnboardingPageViewController
- (LPROnboardingPageViewController)initWithScenario:(int64_t)a3 vehicle:(id)a4 delegate:(id)a5;
- (void)cancelPressed;
- (void)continuePressed;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation LPROnboardingPageViewController

- (void)continuePressed
{
  v3 = [LPRRegionSelectionViewController alloc];
  scenario = self->_scenario;
  vehicle = self->_vehicle;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [(LPRRegionSelectionViewController *)v3 initWithScenario:scenario vehicle:vehicle delegate:WeakRetained];

  v7 = [(LPROnboardingPageViewController *)self navigationController];
  [v7 pushViewController:v8 animated:1];
}

- (void)cancelPressed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didCancelConfiguringLPRForVehicle:self->_vehicle];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = LPROnboardingPageViewController;
  [(LPROnboardingPageViewController *)&v7 viewWillDisappear:a3];
  v4 = [(LPROnboardingPageViewController *)self traitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (!v5)
  {
    v6 = +[UIApplication sharedMapsDelegate];
    [v6 setLockedOrientations:0];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = LPROnboardingPageViewController;
  [(LPROnboardingPageViewController *)&v9 viewWillAppear:?];
  v5 = [(LPROnboardingPageViewController *)self traitCollection];
  v6 = [v5 userInterfaceIdiom];

  if (!v6)
  {
    v7 = +[UIApplication sharedMapsDelegate];
    [v7 setLockedOrientations:2];

    v8 = +[UIDevice currentDevice];
    [v8 setOrientation:1 animated:v3];
  }
}

- (void)viewDidLoad
{
  v37.receiver = self;
  v37.super_class = LPROnboardingPageViewController;
  [(LPROnboardingPageViewController *)&v37 viewDidLoad];
  v3 = [(LPROnboardingPageViewController *)self view];
  [v3 setAccessibilityIdentifier:@"LPROnboardingPageView"];

  if (self->_vehicle)
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"[LPR Onboarding] Add License Plate (with vehicle)" value:@"localized string not found" table:0];
    v6 = [(VGVehicle *)self->_vehicle displayName];
    v7 = [NSString stringWithFormat:v5, v6];
  }

  else
  {
    v4 = +[NSBundle mainBundle];
    v7 = [v4 localizedStringForKey:@"[LPR Onboarding] Add License Plate" value:@"localized string not found" table:0];
  }

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"[LPR Onboarding] Add License Plate subtitle" value:@"localized string not found" table:0];

  v10 = [UIImage imageNamed:@"LPR_onboarding_icon"];
  v11 = [[OBWelcomeController alloc] initWithTitle:v7 detailText:v9 icon:v10];
  [v11 setModalPresentationStyle:2];
  v12 = [v11 headerView];
  [v12 setAllowFullWidthIcon:1];

  v13 = [v11 view];
  [v13 setAccessibilityIdentifier:@"OBWelcomeView"];

  v14 = +[OBBoldTrayButton boldButton];
  v15 = [v14 titleLabel];
  [v15 setLineBreakMode:0];

  v16 = [v14 titleLabel];
  [v16 setTextAlignment:1];

  v17 = [v14 titleLabel];
  [v17 setNumberOfLines:0];

  v18 = +[NSBundle mainBundle];
  v19 = [v18 localizedStringForKey:@"[LPR Onboarding] continue" value:@"localized string not found" table:0];
  [v14 setTitle:v19 forState:0];

  [v14 addTarget:self action:"continuePressed" forControlEvents:64];
  [v14 setAccessibilityIdentifier:@"ContinueButton"];
  v20 = [v11 buttonTray];
  [v20 addButton:v14];

  v21 = +[OBLinkTrayButton linkButton];
  v22 = [v21 titleLabel];
  [v22 setLineBreakMode:0];

  v23 = [v21 titleLabel];
  [v23 setTextAlignment:1];

  v24 = [v21 titleLabel];
  [v24 setNumberOfLines:0];

  v25 = +[NSBundle mainBundle];
  v26 = [v25 localizedStringForKey:@"[LPR Onboarding] Set Up Later" value:@"localized string not found" table:0];
  [v21 setTitle:v26 forState:0];

  [v21 addTarget:self action:"cancelPressed" forControlEvents:64];
  [v21 setAccessibilityIdentifier:@"SetupLaterButton"];
  v27 = [v11 buttonTray];
  [v27 addButton:v21];

  v28 = [v11 buttonTray];
  v29 = +[NSBundle mainBundle];
  v30 = [v29 localizedStringForKey:@"[LPR Onboarding] Add License Plate privacy" value:@"localized string not found" table:0];
  [v28 setCaptionText:v30];

  [(LPROnboardingPageViewController *)self addChildViewController:v11];
  v31 = [(LPROnboardingPageViewController *)self view];
  v32 = [v11 view];
  [v31 addSubview:v32];

  [v11 didMoveToParentViewController:self];
  v33 = [v11 view];
  [v33 setTranslatesAutoresizingMaskIntoConstraints:0];

  v34 = [v11 view];
  v35 = [(LPROnboardingPageViewController *)self view];
  v36 = [v34 _maps_constraintsForCenteringInView:v35];
  [NSLayoutConstraint activateConstraints:v36];
}

- (LPROnboardingPageViewController)initWithScenario:(int64_t)a3 vehicle:(id)a4 delegate:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = LPROnboardingPageViewController;
  v11 = [(LPROnboardingPageViewController *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_scenario = a3;
    objc_storeStrong(&v11->_vehicle, a4);
    objc_storeWeak(&v12->_delegate, v10);
  }

  return v12;
}

@end