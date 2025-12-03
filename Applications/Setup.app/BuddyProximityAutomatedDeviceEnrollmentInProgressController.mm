@interface BuddyProximityAutomatedDeviceEnrollmentInProgressController
- (BFFFlowItemDelegate)delegate;
- (BOOL)controllerNeedsToRun;
- (void)_setupView;
- (void)configureControllerFromViewModel:(id)model;
- (void)proximityAutomatedDeviceEnrollmentController:(id)controller hasEnrollmentStatusViewModelUpdate:(id)update;
- (void)proximityAutomatedDeviceEnrollmentControllerWantsToTransitionToCompletion:(id)completion;
- (void)setProximityAutomatedDeviceEnrollmentController:(id)controller;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation BuddyProximityAutomatedDeviceEnrollmentInProgressController

- (void)viewDidLoad
{
  selfCopy = self;
  v7 = a2;
  v6.receiver = self;
  v6.super_class = BuddyProximityAutomatedDeviceEnrollmentInProgressController;
  [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)&v6 viewDidLoad];
  v2 = selfCopy;
  proximityAutomatedDeviceEnrollmentController = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)selfCopy proximityAutomatedDeviceEnrollmentController];
  currentEnrollmentStatusViewModel = [(BuddyProximityAutomatedDeviceEnrollmentController *)proximityAutomatedDeviceEnrollmentController currentEnrollmentStatusViewModel];
  [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)v2 configureControllerFromViewModel:currentEnrollmentStatusViewModel];

  featureFlags = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)selfCopy featureFlags];
  LOBYTE(proximityAutomatedDeviceEnrollmentController) = [(BuddyFeatureFlags *)featureFlags isSolariumEnabled];

  if (proximityAutomatedDeviceEnrollmentController)
  {
    [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)selfCopy _setupViewForSolarium];
  }

  else
  {
    [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)selfCopy _setupView];
  }
}

- (void)_setupView
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [[UIActivityIndicatorView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [location[0] setTranslatesAutoresizingMaskIntoConstraints:0];
  [location[0] startAnimating];
  welcomeController = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)selfCopy welcomeController];
  contentView = [(BuddyWelcomeController *)welcomeController contentView];
  [contentView addSubview:location[0]];

  v4 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  spinnerStatusLabel = selfCopy->_spinnerStatusLabel;
  selfCopy->_spinnerStatusLabel = v4;

  [(UILabel *)selfCopy->_spinnerStatusLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)selfCopy->_spinnerStatusLabel setNumberOfLines:0];
  v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(UILabel *)selfCopy->_spinnerStatusLabel setFont:v6];

  [(UILabel *)selfCopy->_spinnerStatusLabel setTextAlignment:1];
  welcomeController2 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)selfCopy welcomeController];
  contentView2 = [(BuddyWelcomeController *)welcomeController2 contentView];
  [contentView2 addSubview:selfCopy->_spinnerStatusLabel];

  centerXAnchor = [location[0] centerXAnchor];
  welcomeController3 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)selfCopy welcomeController];
  contentView3 = [(BuddyWelcomeController *)welcomeController3 contentView];
  centerXAnchor2 = [contentView3 centerXAnchor];
  v34 = [centerXAnchor constraintEqualToAnchor:?];
  v41[0] = v34;
  topAnchor = [location[0] topAnchor];
  welcomeController4 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)selfCopy welcomeController];
  contentView4 = [(BuddyWelcomeController *)welcomeController4 contentView];
  topAnchor2 = [contentView4 topAnchor];
  v29 = [topAnchor constraintEqualToAnchor:?];
  v41[1] = v29;
  widthAnchor = [location[0] widthAnchor];
  v27 = [widthAnchor constraintEqualToConstant:50.0];
  v41[2] = v27;
  heightAnchor = [location[0] heightAnchor];
  v25 = [heightAnchor constraintEqualToConstant:50.0];
  v41[3] = v25;
  leadingAnchor = [(UILabel *)selfCopy->_spinnerStatusLabel leadingAnchor];
  welcomeController5 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)selfCopy welcomeController];
  contentView5 = [(BuddyWelcomeController *)welcomeController5 contentView];
  layoutMarginsGuide = [contentView5 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v19 = [leadingAnchor constraintEqualToAnchor:?];
  v41[4] = v19;
  trailingAnchor = [(UILabel *)selfCopy->_spinnerStatusLabel trailingAnchor];
  welcomeController6 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)selfCopy welcomeController];
  contentView6 = [(BuddyWelcomeController *)welcomeController6 contentView];
  layoutMarginsGuide2 = [contentView6 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v41[5] = v14;
  topAnchor3 = [(UILabel *)selfCopy->_spinnerStatusLabel topAnchor];
  bottomAnchor = [location[0] bottomAnchor];
  v17 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:20.0];
  v41[6] = v17;
  v18 = [NSArray arrayWithObjects:v41 count:7];
  [NSLayoutConstraint activateConstraints:v18];

  objc_storeStrong(location, 0);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v6 = a2;
  appearCopy = appear;
  v4.receiver = self;
  v4.super_class = BuddyProximityAutomatedDeviceEnrollmentInProgressController;
  [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)&v4 viewWillAppear:appear];
  animationController = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)selfCopy animationController];
  [(OBAnimationController *)animationController startAnimation];
}

- (void)setProximityAutomatedDeviceEnrollmentController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  objc_storeStrong(&selfCopy->_proximityAutomatedDeviceEnrollmentController, location[0]);
  [(BuddyProximityAutomatedDeviceEnrollmentController *)selfCopy->_proximityAutomatedDeviceEnrollmentController setDelegate:selfCopy];
  objc_storeStrong(location, 0);
}

- (void)proximityAutomatedDeviceEnrollmentControllerWantsToTransitionToCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  delegate = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)selfCopy delegate];
  [(BFFFlowItemDelegate *)delegate flowItemDone:selfCopy];

  objc_storeStrong(location, 0);
}

- (void)proximityAutomatedDeviceEnrollmentController:(id)controller hasEnrollmentStatusViewModelUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v5 = 0;
  objc_storeStrong(&v5, update);
  [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)selfCopy configureControllerFromViewModel:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)controllerNeedsToRun
{
  selfCopy = self;
  oslog[1] = a2;
  proximityAutomatedDeviceEnrollmentController = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)self proximityAutomatedDeviceEnrollmentController];

  if (proximityAutomatedDeviceEnrollmentController)
  {
    proximityAutomatedDeviceEnrollmentController2 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)selfCopy proximityAutomatedDeviceEnrollmentController];
    completionViewModel = [(BuddyProximityAutomatedDeviceEnrollmentController *)proximityAutomatedDeviceEnrollmentController2 completionViewModel];
    v12 = completionViewModel == 0;
  }

  else
  {
    oslog[0] = _BYLoggingFacility();
    v9 = 17;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_FAULT))
    {
      v3 = oslog[0];
      v4 = v9;
      sub_10006AA68(v8);
      _os_log_fault_impl(&_mh_execute_header, v3, v4, "proximityAutomatedDeviceEnrollmentController not yet in place when asked -controllerNeedsToRun", v8, 2u);
    }

    objc_storeStrong(oslog, 0);
    return 1;
  }

  return v12;
}

- (void)configureControllerFromViewModel:(id)model
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, model);
  featureFlags = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)selfCopy featureFlags];
  isSolariumEnabled = [(BuddyFeatureFlags *)featureFlags isSolariumEnabled];

  if (isSolariumEnabled)
  {
    spinnerController = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)selfCopy spinnerController];

    if (spinnerController)
    {
      spinnerController2 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)selfCopy spinnerController];
      [(BFFSpinnerController *)spinnerController2 removeFromParentViewController];
    }

    v7 = [BFFSpinnerController alloc];
    statusMessage = [location[0] statusMessage];
    title = [location[0] title];
    v10 = [v7 initWithSpinnerText:statusMessage title:title];
    [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)selfCopy setSpinnerController:v10];

    v11 = selfCopy;
    spinnerController3 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)selfCopy spinnerController];
    [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)v11 addChildViewController:spinnerController3];

    spinnerController4 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)selfCopy spinnerController];
    [(BFFSpinnerController *)spinnerController4 didMoveToParentViewController:selfCopy];

    view = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)selfCopy view];
    spinnerController5 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)selfCopy spinnerController];
    view2 = [(BFFSpinnerController *)spinnerController5 view];
    [view addSubview:view2];

    spinnerController6 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)selfCopy spinnerController];
    view3 = [(BFFSpinnerController *)spinnerController6 view];
    [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

    spinnerController7 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)selfCopy spinnerController];
    view4 = [(BFFSpinnerController *)spinnerController7 view];
    view5 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)selfCopy view];
    [view4 pinToEdges:view5];
  }

  else
  {
    welcomeController = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)selfCopy welcomeController];
    v23 = welcomeController == 0;

    if (v23)
    {
      v24 = [[BuddyWelcomeController alloc] initWithTitle:&stru_10032F900 detailText:0 symbolName:0];
      [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)selfCopy setWelcomeController:v24];

      v25 = selfCopy;
      welcomeController2 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)selfCopy welcomeController];
      [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)v25 addChildViewController:welcomeController2];

      welcomeController3 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)selfCopy welcomeController];
      [(BuddyWelcomeController *)welcomeController3 didMoveToParentViewController:selfCopy];

      view6 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)selfCopy view];
      welcomeController4 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)selfCopy welcomeController];
      view7 = [(BuddyWelcomeController *)welcomeController4 view];
      [view6 addSubview:view7];

      welcomeController5 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)selfCopy welcomeController];
      view8 = [(BuddyWelcomeController *)welcomeController5 view];
      [view8 setTranslatesAutoresizingMaskIntoConstraints:0];

      welcomeController6 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)selfCopy welcomeController];
      view9 = [(BuddyWelcomeController *)welcomeController6 view];
      view10 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)selfCopy view];
      [view9 pinToEdges:view10];
    }

    welcomeController7 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)selfCopy welcomeController];
    headerView = [(BuddyWelcomeController *)welcomeController7 headerView];
    title2 = [location[0] title];
    [headerView setTitle:title2];

    welcomeController8 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)selfCopy welcomeController];
    headerView2 = [(BuddyWelcomeController *)welcomeController8 headerView];
    detailText = [location[0] detailText];
    [headerView2 setDetailText:detailText];

    statusMessage2 = [location[0] statusMessage];
    spinnerStatusLabel = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)selfCopy spinnerStatusLabel];
    [(UILabel *)spinnerStatusLabel setText:statusMessage2];
  }

  objc_storeStrong(location, 0);
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end