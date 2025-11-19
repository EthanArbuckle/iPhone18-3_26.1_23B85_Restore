@interface BuddyProximityAutomatedDeviceEnrollmentPairingController
- (BFFFlowItemDelegate)delegate;
- (BOOL)isLandscape;
- (BuddyProximityAutomatedDeviceEnrollmentControllerDelegate)priorDelegate;
- (BuddyProximityAutomatedDeviceEnrollmentPairingController)initWithPairingCode:(id)a3;
- (NSString)pairingCode;
- (void)proximityAutomatedDeviceEnrollmentController:(id)a3 wantsToDismissPairingWithError:(id)a4;
- (void)proximityAutomatedDeviceEnrollmentController:(id)a3 wantsToTransitionToEnrollmentWithInitialViewModel:(id)a4;
- (void)setProximityAutomatedDeviceEnrollmentController:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation BuddyProximityAutomatedDeviceEnrollmentPairingController

- (BuddyProximityAutomatedDeviceEnrollmentPairingController)initWithPairingCode:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v13;
  v13 = 0;
  v11.receiver = v3;
  v11.super_class = BuddyProximityAutomatedDeviceEnrollmentPairingController;
  v13 = [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)&v11 init];
  objc_storeStrong(&v13, v13);
  if (v13)
  {
    v10 = objc_alloc_init(BuddyProximityAutomatedDeviceEnrollmentStringProvider);
    v4 = [[BuddyProximityBackingViewController alloc] initWithStringProvider:v10];
    v5 = *(v13 + 5);
    *(v13 + 5) = v4;

    [*(v13 + 5) setPairingCode:location[0]];
    v6 = +[NSLocale currentLocale];
    v7 = [(NSLocale *)v6 localeIdentifier];
    [*(v13 + 5) setLanguage:v7];

    objc_storeStrong(&v10, 0);
  }

  v8 = v13;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v13, 0);
  return v8;
}

- (void)viewDidLoad
{
  v31 = self;
  v30 = a2;
  v29.receiver = self;
  v29.super_class = BuddyProximityAutomatedDeviceEnrollmentPairingController;
  [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)&v29 viewDidLoad];
  location = [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)v31 backingViewController];
  [location loadViewIfNeeded];
  v2 = [location view];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)v31 addChildViewController:location];
  v3 = [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)v31 view];
  v4 = [location view];
  [v3 addSubview:v4];

  [location didMoveToParentViewController:v31];
  v5 = [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)v31 view];
  [v5 layoutIfNeeded];

  v27 = [location view];
  v25 = [v27 leadingAnchor];
  v26 = [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)v31 view];
  v24 = [v26 leadingAnchor];
  v23 = [v25 constraintEqualToAnchor:?];
  v32[0] = v23;
  v22 = [location view];
  v20 = [v22 trailingAnchor];
  v21 = [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)v31 view];
  v19 = [v21 trailingAnchor];
  v18 = [v20 constraintEqualToAnchor:?];
  v32[1] = v18;
  v17 = [location view];
  v16 = [v17 topAnchor];
  v6 = [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)v31 view];
  v7 = [v6 safeAreaLayoutGuide];
  v8 = [v7 topAnchor];
  v9 = [v16 constraintEqualToAnchor:v8];
  v32[2] = v9;
  v10 = [location view];
  v11 = [v10 bottomAnchor];
  v12 = [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)v31 view];
  v13 = [v12 bottomAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  v32[3] = v14;
  v15 = [NSArray arrayWithObjects:v32 count:4];
  [NSLayoutConstraint activateConstraints:v15];

  objc_storeStrong(&location, 0);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  if (([(BuddyProximityAutomatedDeviceEnrollmentPairingController *)self isMovingFromParentViewController]& 1) != 0)
  {
    v3 = [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)v7 backingViewController];
    [(BuddyProximityBackingViewController *)v3 endPairingIfNeeded];
  }

  v4.receiver = v7;
  v4.super_class = BuddyProximityAutomatedDeviceEnrollmentPairingController;
  [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)&v4 viewDidDisappear:v5];
}

- (void)viewDidLayoutSubviews
{
  v6 = self;
  v5 = a2;
  v4.receiver = self;
  v4.super_class = BuddyProximityAutomatedDeviceEnrollmentPairingController;
  [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)&v4 viewDidLayoutSubviews];
  v2 = [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)v6 backingViewController];
  v3 = [(BuddyProximityBackingViewController *)v2 view];
  [v3 layoutIfNeeded];
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v6.receiver = v9;
  v6.super_class = BuddyProximityAutomatedDeviceEnrollmentPairingController;
  [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)&v6 willTransitionToTraitCollection:location[0] withTransitionCoordinator:v7];
  v5 = [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)v9 view];
  [v5 setNeedsLayout];

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v8 = a3;
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a4);
  v5.receiver = v7;
  v5.super_class = BuddyProximityAutomatedDeviceEnrollmentPairingController;
  [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)&v5 viewWillTransitionToSize:location[0] withTransitionCoordinator:v8.width, v8.height];
  v4 = [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)v7 backingViewController];
  [(BuddyProximityBackingViewController *)v4 viewWillTransitionToSize:location[0] withTransitionCoordinator:v8.width, v8.height];

  objc_storeStrong(location, 0);
}

- (BOOL)isLandscape
{
  v2 = [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)self navigationController:a2];
  v3 = [v2 view];
  v4 = [v3 window];
  v5 = [v4 windowScene];
  v6 = sub_1001582AC([v5 interfaceOrientation]);

  return v6;
}

- (NSString)pairingCode
{
  v2 = [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)self backingViewController:a2];
  v3 = [(BuddyProximityBackingViewController *)v2 pairingCode];

  return v3;
}

- (void)setProximityAutomatedDeviceEnrollmentController:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v7->_proximityAutomatedDeviceEnrollmentController, location[0]);
  v3 = [(BuddyProximityAutomatedDeviceEnrollmentController *)v7->_proximityAutomatedDeviceEnrollmentController delegate];
  [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)v7 setPriorDelegate:v3];

  [(BuddyProximityAutomatedDeviceEnrollmentController *)v7->_proximityAutomatedDeviceEnrollmentController setDelegate:v7];
  proximityAutomatedDeviceEnrollmentController = v7->_proximityAutomatedDeviceEnrollmentController;
  v5 = [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)v7 backingViewController];
  [(BuddyProximityBackingViewController *)v5 setDelegate:proximityAutomatedDeviceEnrollmentController];

  objc_storeStrong(location, 0);
}

- (void)proximityAutomatedDeviceEnrollmentController:(id)a3 wantsToDismissPairingWithError:(id)a4
{
  v14 = self;
  aSelector = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  if (v11)
  {
    oslog = _BYLoggingFacility();
    v9 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(aSelector);
      v5 = [v11 debugDescription];
      sub_100073058(buf, v8, v5);
      _os_log_error_impl(&_mh_execute_header, oslog, v9, "%{public}@ %{public}@", buf, 0x16u);

      objc_storeStrong(&v8, 0);
    }

    objc_storeStrong(&oslog, 0);
    v6 = [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)v14 priorDelegate];
    [location setDelegate:v6];
  }

  v7 = [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)v14 delegate];
  [(BFFFlowItemDelegate *)v7 presentWiFiPaneForFlowItem:v14];

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&location, 0);
}

- (void)proximityAutomatedDeviceEnrollmentController:(id)a3 wantsToTransitionToEnrollmentWithInitialViewModel:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5 = [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)v8 delegate];
  [(BFFFlowItemDelegate *)v5 flowItemDone:v8];

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BuddyProximityAutomatedDeviceEnrollmentControllerDelegate)priorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_priorDelegate);

  return WeakRetained;
}

@end