@interface LPROnboardingPageViewController
- (LPROnboardingPageViewController)initWithScenario:(int64_t)scenario vehicle:(id)vehicle delegate:(id)delegate;
- (void)cancelPressed;
- (void)continuePressed;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation LPROnboardingPageViewController

- (void)continuePressed
{
  v3 = [LPRRegionSelectionViewController alloc];
  scenario = self->_scenario;
  vehicle = self->_vehicle;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [(LPRRegionSelectionViewController *)v3 initWithScenario:scenario vehicle:vehicle delegate:WeakRetained];

  navigationController = [(LPROnboardingPageViewController *)self navigationController];
  [navigationController pushViewController:v8 animated:1];
}

- (void)cancelPressed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didCancelConfiguringLPRForVehicle:self->_vehicle];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = LPROnboardingPageViewController;
  [(LPROnboardingPageViewController *)&v7 viewWillDisappear:disappear];
  traitCollection = [(LPROnboardingPageViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    v6 = +[UIApplication sharedMapsDelegate];
    [v6 setLockedOrientations:0];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v9.receiver = self;
  v9.super_class = LPROnboardingPageViewController;
  [(LPROnboardingPageViewController *)&v9 viewWillAppear:?];
  traitCollection = [(LPROnboardingPageViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    v7 = +[UIApplication sharedMapsDelegate];
    [v7 setLockedOrientations:2];

    v8 = +[UIDevice currentDevice];
    [v8 setOrientation:1 animated:appearCopy];
  }
}

- (void)viewDidLoad
{
  v37.receiver = self;
  v37.super_class = LPROnboardingPageViewController;
  [(LPROnboardingPageViewController *)&v37 viewDidLoad];
  view = [(LPROnboardingPageViewController *)self view];
  [view setAccessibilityIdentifier:@"LPROnboardingPageView"];

  if (self->_vehicle)
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"[LPR Onboarding] Add License Plate (with vehicle)" value:@"localized string not found" table:0];
    displayName = [(VGVehicle *)self->_vehicle displayName];
    v7 = [NSString stringWithFormat:v5, displayName];
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
  headerView = [v11 headerView];
  [headerView setAllowFullWidthIcon:1];

  view2 = [v11 view];
  [view2 setAccessibilityIdentifier:@"OBWelcomeView"];

  v14 = +[OBBoldTrayButton boldButton];
  titleLabel = [v14 titleLabel];
  [titleLabel setLineBreakMode:0];

  titleLabel2 = [v14 titleLabel];
  [titleLabel2 setTextAlignment:1];

  titleLabel3 = [v14 titleLabel];
  [titleLabel3 setNumberOfLines:0];

  v18 = +[NSBundle mainBundle];
  v19 = [v18 localizedStringForKey:@"[LPR Onboarding] continue" value:@"localized string not found" table:0];
  [v14 setTitle:v19 forState:0];

  [v14 addTarget:self action:"continuePressed" forControlEvents:64];
  [v14 setAccessibilityIdentifier:@"ContinueButton"];
  buttonTray = [v11 buttonTray];
  [buttonTray addButton:v14];

  v21 = +[OBLinkTrayButton linkButton];
  titleLabel4 = [v21 titleLabel];
  [titleLabel4 setLineBreakMode:0];

  titleLabel5 = [v21 titleLabel];
  [titleLabel5 setTextAlignment:1];

  titleLabel6 = [v21 titleLabel];
  [titleLabel6 setNumberOfLines:0];

  v25 = +[NSBundle mainBundle];
  v26 = [v25 localizedStringForKey:@"[LPR Onboarding] Set Up Later" value:@"localized string not found" table:0];
  [v21 setTitle:v26 forState:0];

  [v21 addTarget:self action:"cancelPressed" forControlEvents:64];
  [v21 setAccessibilityIdentifier:@"SetupLaterButton"];
  buttonTray2 = [v11 buttonTray];
  [buttonTray2 addButton:v21];

  buttonTray3 = [v11 buttonTray];
  v29 = +[NSBundle mainBundle];
  v30 = [v29 localizedStringForKey:@"[LPR Onboarding] Add License Plate privacy" value:@"localized string not found" table:0];
  [buttonTray3 setCaptionText:v30];

  [(LPROnboardingPageViewController *)self addChildViewController:v11];
  view3 = [(LPROnboardingPageViewController *)self view];
  view4 = [v11 view];
  [view3 addSubview:view4];

  [v11 didMoveToParentViewController:self];
  view5 = [v11 view];
  [view5 setTranslatesAutoresizingMaskIntoConstraints:0];

  view6 = [v11 view];
  view7 = [(LPROnboardingPageViewController *)self view];
  v36 = [view6 _maps_constraintsForCenteringInView:view7];
  [NSLayoutConstraint activateConstraints:v36];
}

- (LPROnboardingPageViewController)initWithScenario:(int64_t)scenario vehicle:(id)vehicle delegate:(id)delegate
{
  vehicleCopy = vehicle;
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = LPROnboardingPageViewController;
  v11 = [(LPROnboardingPageViewController *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_scenario = scenario;
    objc_storeStrong(&v11->_vehicle, vehicle);
    objc_storeWeak(&v12->_delegate, delegateCopy);
  }

  return v12;
}

@end