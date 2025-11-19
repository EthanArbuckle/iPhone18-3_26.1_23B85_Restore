@interface BuddyProximityAutomatedDeviceEnrollmentInProgressController
- (BFFFlowItemDelegate)delegate;
- (BOOL)controllerNeedsToRun;
- (void)_setupView;
- (void)configureControllerFromViewModel:(id)a3;
- (void)proximityAutomatedDeviceEnrollmentController:(id)a3 hasEnrollmentStatusViewModelUpdate:(id)a4;
- (void)proximityAutomatedDeviceEnrollmentControllerWantsToTransitionToCompletion:(id)a3;
- (void)setProximityAutomatedDeviceEnrollmentController:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation BuddyProximityAutomatedDeviceEnrollmentInProgressController

- (void)viewDidLoad
{
  v8 = self;
  v7 = a2;
  v6.receiver = self;
  v6.super_class = BuddyProximityAutomatedDeviceEnrollmentInProgressController;
  [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)&v6 viewDidLoad];
  v2 = v8;
  v3 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)v8 proximityAutomatedDeviceEnrollmentController];
  v4 = [(BuddyProximityAutomatedDeviceEnrollmentController *)v3 currentEnrollmentStatusViewModel];
  [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)v2 configureControllerFromViewModel:v4];

  v5 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)v8 featureFlags];
  LOBYTE(v3) = [(BuddyFeatureFlags *)v5 isSolariumEnabled];

  if (v3)
  {
    [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)v8 _setupViewForSolarium];
  }

  else
  {
    [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)v8 _setupView];
  }
}

- (void)_setupView
{
  v40 = self;
  location[1] = a2;
  location[0] = [[UIActivityIndicatorView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [location[0] setTranslatesAutoresizingMaskIntoConstraints:0];
  [location[0] startAnimating];
  v2 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)v40 welcomeController];
  v3 = [(BuddyWelcomeController *)v2 contentView];
  [v3 addSubview:location[0]];

  v4 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  spinnerStatusLabel = v40->_spinnerStatusLabel;
  v40->_spinnerStatusLabel = v4;

  [(UILabel *)v40->_spinnerStatusLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)v40->_spinnerStatusLabel setNumberOfLines:0];
  v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(UILabel *)v40->_spinnerStatusLabel setFont:v6];

  [(UILabel *)v40->_spinnerStatusLabel setTextAlignment:1];
  v7 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)v40 welcomeController];
  v8 = [(BuddyWelcomeController *)v7 contentView];
  [v8 addSubview:v40->_spinnerStatusLabel];

  v36 = [location[0] centerXAnchor];
  v38 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)v40 welcomeController];
  v37 = [(BuddyWelcomeController *)v38 contentView];
  v35 = [v37 centerXAnchor];
  v34 = [v36 constraintEqualToAnchor:?];
  v41[0] = v34;
  v31 = [location[0] topAnchor];
  v33 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)v40 welcomeController];
  v32 = [(BuddyWelcomeController *)v33 contentView];
  v30 = [v32 topAnchor];
  v29 = [v31 constraintEqualToAnchor:?];
  v41[1] = v29;
  v28 = [location[0] widthAnchor];
  v27 = [v28 constraintEqualToConstant:50.0];
  v41[2] = v27;
  v26 = [location[0] heightAnchor];
  v25 = [v26 constraintEqualToConstant:50.0];
  v41[3] = v25;
  v22 = [(UILabel *)v40->_spinnerStatusLabel leadingAnchor];
  v24 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)v40 welcomeController];
  v23 = [(BuddyWelcomeController *)v24 contentView];
  v21 = [v23 layoutMarginsGuide];
  v20 = [v21 leadingAnchor];
  v19 = [v22 constraintEqualToAnchor:?];
  v41[4] = v19;
  v9 = [(UILabel *)v40->_spinnerStatusLabel trailingAnchor];
  v10 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)v40 welcomeController];
  v11 = [(BuddyWelcomeController *)v10 contentView];
  v12 = [v11 layoutMarginsGuide];
  v13 = [v12 trailingAnchor];
  v14 = [v9 constraintEqualToAnchor:v13];
  v41[5] = v14;
  v15 = [(UILabel *)v40->_spinnerStatusLabel topAnchor];
  v16 = [location[0] bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:20.0];
  v41[6] = v17;
  v18 = [NSArray arrayWithObjects:v41 count:7];
  [NSLayoutConstraint activateConstraints:v18];

  objc_storeStrong(location, 0);
}

- (void)viewWillAppear:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4.receiver = self;
  v4.super_class = BuddyProximityAutomatedDeviceEnrollmentInProgressController;
  [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)&v4 viewWillAppear:a3];
  v3 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)v7 animationController];
  [(OBAnimationController *)v3 startAnimation];
}

- (void)setProximityAutomatedDeviceEnrollmentController:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v4->_proximityAutomatedDeviceEnrollmentController, location[0]);
  [(BuddyProximityAutomatedDeviceEnrollmentController *)v4->_proximityAutomatedDeviceEnrollmentController setDelegate:v4];
  objc_storeStrong(location, 0);
}

- (void)proximityAutomatedDeviceEnrollmentControllerWantsToTransitionToCompletion:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)v5 delegate];
  [(BFFFlowItemDelegate *)v3 flowItemDone:v5];

  objc_storeStrong(location, 0);
}

- (void)proximityAutomatedDeviceEnrollmentController:(id)a3 hasEnrollmentStatusViewModelUpdate:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)v7 configureControllerFromViewModel:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)controllerNeedsToRun
{
  v11 = self;
  oslog[1] = a2;
  v2 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)self proximityAutomatedDeviceEnrollmentController];

  if (v2)
  {
    v5 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)v11 proximityAutomatedDeviceEnrollmentController];
    v6 = [(BuddyProximityAutomatedDeviceEnrollmentController *)v5 completionViewModel];
    v12 = v6 == 0;
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

- (void)configureControllerFromViewModel:(id)a3
{
  v45 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)v45 featureFlags];
  v4 = [(BuddyFeatureFlags *)v3 isSolariumEnabled];

  if (v4)
  {
    v5 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)v45 spinnerController];

    if (v5)
    {
      v6 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)v45 spinnerController];
      [(BFFSpinnerController *)v6 removeFromParentViewController];
    }

    v7 = [BFFSpinnerController alloc];
    v8 = [location[0] statusMessage];
    v9 = [location[0] title];
    v10 = [v7 initWithSpinnerText:v8 title:v9];
    [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)v45 setSpinnerController:v10];

    v11 = v45;
    v12 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)v45 spinnerController];
    [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)v11 addChildViewController:v12];

    v13 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)v45 spinnerController];
    [(BFFSpinnerController *)v13 didMoveToParentViewController:v45];

    v14 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)v45 view];
    v15 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)v45 spinnerController];
    v16 = [(BFFSpinnerController *)v15 view];
    [v14 addSubview:v16];

    v17 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)v45 spinnerController];
    v18 = [(BFFSpinnerController *)v17 view];
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

    v19 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)v45 spinnerController];
    v20 = [(BFFSpinnerController *)v19 view];
    v21 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)v45 view];
    [v20 pinToEdges:v21];
  }

  else
  {
    v22 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)v45 welcomeController];
    v23 = v22 == 0;

    if (v23)
    {
      v24 = [[BuddyWelcomeController alloc] initWithTitle:&stru_10032F900 detailText:0 symbolName:0];
      [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)v45 setWelcomeController:v24];

      v25 = v45;
      v26 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)v45 welcomeController];
      [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)v25 addChildViewController:v26];

      v27 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)v45 welcomeController];
      [(BuddyWelcomeController *)v27 didMoveToParentViewController:v45];

      v28 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)v45 view];
      v29 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)v45 welcomeController];
      v30 = [(BuddyWelcomeController *)v29 view];
      [v28 addSubview:v30];

      v31 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)v45 welcomeController];
      v32 = [(BuddyWelcomeController *)v31 view];
      [v32 setTranslatesAutoresizingMaskIntoConstraints:0];

      v33 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)v45 welcomeController];
      v34 = [(BuddyWelcomeController *)v33 view];
      v35 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)v45 view];
      [v34 pinToEdges:v35];
    }

    v36 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)v45 welcomeController];
    v37 = [(BuddyWelcomeController *)v36 headerView];
    v38 = [location[0] title];
    [v37 setTitle:v38];

    v39 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)v45 welcomeController];
    v40 = [(BuddyWelcomeController *)v39 headerView];
    v41 = [location[0] detailText];
    [v40 setDetailText:v41];

    v42 = [location[0] statusMessage];
    v43 = [(BuddyProximityAutomatedDeviceEnrollmentInProgressController *)v45 spinnerStatusLabel];
    [(UILabel *)v43 setText:v42];
  }

  objc_storeStrong(location, 0);
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end