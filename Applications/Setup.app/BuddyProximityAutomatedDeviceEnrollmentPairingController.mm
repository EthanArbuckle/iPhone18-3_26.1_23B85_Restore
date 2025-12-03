@interface BuddyProximityAutomatedDeviceEnrollmentPairingController
- (BFFFlowItemDelegate)delegate;
- (BOOL)isLandscape;
- (BuddyProximityAutomatedDeviceEnrollmentControllerDelegate)priorDelegate;
- (BuddyProximityAutomatedDeviceEnrollmentPairingController)initWithPairingCode:(id)code;
- (NSString)pairingCode;
- (void)proximityAutomatedDeviceEnrollmentController:(id)controller wantsToDismissPairingWithError:(id)error;
- (void)proximityAutomatedDeviceEnrollmentController:(id)controller wantsToTransitionToEnrollmentWithInitialViewModel:(id)model;
- (void)setProximityAutomatedDeviceEnrollmentController:(id)controller;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation BuddyProximityAutomatedDeviceEnrollmentPairingController

- (BuddyProximityAutomatedDeviceEnrollmentPairingController)initWithPairingCode:(id)code
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, code);
  v3 = selfCopy;
  selfCopy = 0;
  v11.receiver = v3;
  v11.super_class = BuddyProximityAutomatedDeviceEnrollmentPairingController;
  selfCopy = [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)&v11 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v10 = objc_alloc_init(BuddyProximityAutomatedDeviceEnrollmentStringProvider);
    v4 = [[BuddyProximityBackingViewController alloc] initWithStringProvider:v10];
    v5 = *(selfCopy + 5);
    *(selfCopy + 5) = v4;

    [*(selfCopy + 5) setPairingCode:location[0]];
    v6 = +[NSLocale currentLocale];
    localeIdentifier = [(NSLocale *)v6 localeIdentifier];
    [*(selfCopy + 5) setLanguage:localeIdentifier];

    objc_storeStrong(&v10, 0);
  }

  v8 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (void)viewDidLoad
{
  selfCopy = self;
  v30 = a2;
  v29.receiver = self;
  v29.super_class = BuddyProximityAutomatedDeviceEnrollmentPairingController;
  [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)&v29 viewDidLoad];
  location = [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)selfCopy backingViewController];
  [location loadViewIfNeeded];
  view = [location view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)selfCopy addChildViewController:location];
  view2 = [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)selfCopy view];
  view3 = [location view];
  [view2 addSubview:view3];

  [location didMoveToParentViewController:selfCopy];
  view4 = [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)selfCopy view];
  [view4 layoutIfNeeded];

  view5 = [location view];
  leadingAnchor = [view5 leadingAnchor];
  view6 = [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)selfCopy view];
  leadingAnchor2 = [view6 leadingAnchor];
  v23 = [leadingAnchor constraintEqualToAnchor:?];
  v32[0] = v23;
  view7 = [location view];
  trailingAnchor = [view7 trailingAnchor];
  view8 = [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)selfCopy view];
  trailingAnchor2 = [view8 trailingAnchor];
  v18 = [trailingAnchor constraintEqualToAnchor:?];
  v32[1] = v18;
  view9 = [location view];
  topAnchor = [view9 topAnchor];
  view10 = [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)selfCopy view];
  safeAreaLayoutGuide = [view10 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v32[2] = v9;
  view11 = [location view];
  bottomAnchor = [view11 bottomAnchor];
  view12 = [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)selfCopy view];
  bottomAnchor2 = [view12 bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v32[3] = v14;
  v15 = [NSArray arrayWithObjects:v32 count:4];
  [NSLayoutConstraint activateConstraints:v15];

  objc_storeStrong(&location, 0);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  v6 = a2;
  disappearCopy = disappear;
  if (([(BuddyProximityAutomatedDeviceEnrollmentPairingController *)self isMovingFromParentViewController]& 1) != 0)
  {
    backingViewController = [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)selfCopy backingViewController];
    [(BuddyProximityBackingViewController *)backingViewController endPairingIfNeeded];
  }

  v4.receiver = selfCopy;
  v4.super_class = BuddyProximityAutomatedDeviceEnrollmentPairingController;
  [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)&v4 viewDidDisappear:disappearCopy];
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  v5 = a2;
  v4.receiver = self;
  v4.super_class = BuddyProximityAutomatedDeviceEnrollmentPairingController;
  [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)&v4 viewDidLayoutSubviews];
  backingViewController = [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)selfCopy backingViewController];
  view = [(BuddyProximityBackingViewController *)backingViewController view];
  [view layoutIfNeeded];
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, collection);
  v7 = 0;
  objc_storeStrong(&v7, coordinator);
  v6.receiver = selfCopy;
  v6.super_class = BuddyProximityAutomatedDeviceEnrollmentPairingController;
  [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)&v6 willTransitionToTraitCollection:location[0] withTransitionCoordinator:v7];
  view = [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)selfCopy view];
  [view setNeedsLayout];

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  sizeCopy = size;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coordinator);
  v5.receiver = selfCopy;
  v5.super_class = BuddyProximityAutomatedDeviceEnrollmentPairingController;
  [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)&v5 viewWillTransitionToSize:location[0] withTransitionCoordinator:sizeCopy.width, sizeCopy.height];
  backingViewController = [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)selfCopy backingViewController];
  [(BuddyProximityBackingViewController *)backingViewController viewWillTransitionToSize:location[0] withTransitionCoordinator:sizeCopy.width, sizeCopy.height];

  objc_storeStrong(location, 0);
}

- (BOOL)isLandscape
{
  v2 = [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)self navigationController:a2];
  view = [v2 view];
  window = [view window];
  windowScene = [window windowScene];
  v6 = sub_1001582AC([windowScene interfaceOrientation]);

  return v6;
}

- (NSString)pairingCode
{
  v2 = [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)self backingViewController:a2];
  pairingCode = [(BuddyProximityBackingViewController *)v2 pairingCode];

  return pairingCode;
}

- (void)setProximityAutomatedDeviceEnrollmentController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  objc_storeStrong(&selfCopy->_proximityAutomatedDeviceEnrollmentController, location[0]);
  delegate = [(BuddyProximityAutomatedDeviceEnrollmentController *)selfCopy->_proximityAutomatedDeviceEnrollmentController delegate];
  [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)selfCopy setPriorDelegate:delegate];

  [(BuddyProximityAutomatedDeviceEnrollmentController *)selfCopy->_proximityAutomatedDeviceEnrollmentController setDelegate:selfCopy];
  proximityAutomatedDeviceEnrollmentController = selfCopy->_proximityAutomatedDeviceEnrollmentController;
  backingViewController = [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)selfCopy backingViewController];
  [(BuddyProximityBackingViewController *)backingViewController setDelegate:proximityAutomatedDeviceEnrollmentController];

  objc_storeStrong(location, 0);
}

- (void)proximityAutomatedDeviceEnrollmentController:(id)controller wantsToDismissPairingWithError:(id)error
{
  selfCopy = self;
  aSelector = a2;
  location = 0;
  objc_storeStrong(&location, controller);
  v11 = 0;
  objc_storeStrong(&v11, error);
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
    priorDelegate = [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)selfCopy priorDelegate];
    [location setDelegate:priorDelegate];
  }

  delegate = [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)selfCopy delegate];
  [(BFFFlowItemDelegate *)delegate presentWiFiPaneForFlowItem:selfCopy];

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&location, 0);
}

- (void)proximityAutomatedDeviceEnrollmentController:(id)controller wantsToTransitionToEnrollmentWithInitialViewModel:(id)model
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v6 = 0;
  objc_storeStrong(&v6, model);
  delegate = [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)selfCopy delegate];
  [(BFFFlowItemDelegate *)delegate flowItemDone:selfCopy];

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