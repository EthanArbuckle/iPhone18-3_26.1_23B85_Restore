@interface BuddyProximityPairingController
- (BFFFlowItemDelegate)delegate;
- (BOOL)isLandscape;
- (BOOL)isShowingVisualPairing;
- (BOOL)nonUserInitiatedDismissal;
- (BuddyProximityPairingController)init;
- (NSString)language;
- (NSString)pairingCode;
- (void)prepareForLanguageChange:(id)change;
- (void)setLanguage:(id)language;
- (void)setNonUserInitiatedDismissal:(BOOL)dismissal;
- (void)setPairingCode:(id)code;
- (void)setProximitySetupController:(id)controller;
- (void)showPairingCode;
- (void)showVisualPairing;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation BuddyProximityPairingController

- (BuddyProximityPairingController)init
{
  v8 = a2;
  location = 0;
  v7.receiver = self;
  v7.super_class = BuddyProximityPairingController;
  location = [(BuddyProximityPairingController *)&v7 init];
  objc_storeStrong(&location, location);
  if (location)
  {
    v6 = objc_alloc_init(BuddyProximityPairingControllerStringProvider);
    v2 = [[BuddyProximityBackingViewController alloc] initWithStringProvider:v6];
    v3 = *(location + 4);
    *(location + 4) = v2;

    objc_storeStrong(&v6, 0);
  }

  v4 = location;
  objc_storeStrong(&location, 0);
  return v4;
}

- (void)viewDidLoad
{
  selfCopy = self;
  v67 = a2;
  v66.receiver = self;
  v66.super_class = BuddyProximityPairingController;
  [(BuddyProximityPairingController *)&v66 viewDidLoad];
  parentViewController = [(BuddyProximityPairingController *)selfCopy parentViewController];

  if (parentViewController)
  {
    parentViewController2 = [(BuddyProximityPairingController *)selfCopy parentViewController];
    proxBackingController = [(BuddyProximityPairingController *)selfCopy proxBackingController];
    [parentViewController2 addChildViewController:proxBackingController];
  }

  else
  {
    v5 = selfCopy;
    proxBackingController2 = [(BuddyProximityPairingController *)selfCopy proxBackingController];
    [(BuddyProximityPairingController *)v5 addChildViewController:proxBackingController2];
  }

  proxBackingController3 = [(BuddyProximityPairingController *)selfCopy proxBackingController];
  view = [(BuddyProximityBackingViewController *)proxBackingController3 view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  view2 = [(BuddyProximityPairingController *)selfCopy view];
  proxBackingController4 = [(BuddyProximityPairingController *)selfCopy proxBackingController];
  view3 = [(BuddyProximityBackingViewController *)proxBackingController4 view];
  [view2 addSubview:view3];

  proxBackingController5 = [(BuddyProximityPairingController *)selfCopy proxBackingController];
  [(BuddyProximityBackingViewController *)proxBackingController5 didMoveToParentViewController:selfCopy];

  view4 = [(BuddyProximityPairingController *)selfCopy view];
  [view4 layoutIfNeeded];

  featureFlags = [(BuddyProximityPairingController *)selfCopy featureFlags];
  LOBYTE(proxBackingController4) = [(BuddyFeatureFlags *)featureFlags isSolariumEnabled];

  if (proxBackingController4)
  {
    proxBackingController6 = [(BuddyProximityPairingController *)selfCopy proxBackingController];
    view5 = [(BuddyProximityBackingViewController *)proxBackingController6 view];
    leadingAnchor = [view5 leadingAnchor];
    view6 = [(BuddyProximityPairingController *)selfCopy view];
    leadingAnchor2 = [view6 leadingAnchor];
    v54 = [leadingAnchor constraintEqualToAnchor:?];
    v70[0] = v54;
    proxBackingController7 = [(BuddyProximityPairingController *)selfCopy proxBackingController];
    view7 = [(BuddyProximityBackingViewController *)proxBackingController7 view];
    trailingAnchor = [view7 trailingAnchor];
    view8 = [(BuddyProximityPairingController *)selfCopy view];
    trailingAnchor2 = [view8 trailingAnchor];
    v42 = [trailingAnchor constraintEqualToAnchor:?];
    v70[1] = v42;
    proxBackingController8 = [(BuddyProximityPairingController *)selfCopy proxBackingController];
    view9 = [(BuddyProximityBackingViewController *)proxBackingController8 view];
    bottomAnchor = [view9 bottomAnchor];
    view10 = [(BuddyProximityPairingController *)selfCopy view];
    bottomAnchor2 = [view10 bottomAnchor];
    v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v70[2] = v17;
    proxBackingController9 = [(BuddyProximityPairingController *)selfCopy proxBackingController];
    view11 = [(BuddyProximityBackingViewController *)proxBackingController9 view];
    topAnchor = [view11 topAnchor];
    view12 = [(BuddyProximityPairingController *)selfCopy view];
    topAnchor2 = [view12 topAnchor];
    v23 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v70[3] = v23;
    v24 = [NSArray arrayWithObjects:v70 count:4];
    [NSLayoutConstraint activateConstraints:v24];
  }

  else
  {
    proxBackingController10 = [(BuddyProximityPairingController *)selfCopy proxBackingController];
    view13 = [(BuddyProximityBackingViewController *)proxBackingController10 view];
    leadingAnchor3 = [view13 leadingAnchor];
    view14 = [(BuddyProximityPairingController *)selfCopy view];
    leadingAnchor4 = [view14 leadingAnchor];
    v56 = [leadingAnchor3 constraintEqualToAnchor:?];
    v69[0] = v56;
    proxBackingController11 = [(BuddyProximityPairingController *)selfCopy proxBackingController];
    view15 = [(BuddyProximityBackingViewController *)proxBackingController11 view];
    trailingAnchor3 = [view15 trailingAnchor];
    view16 = [(BuddyProximityPairingController *)selfCopy view];
    trailingAnchor4 = [view16 trailingAnchor];
    v44 = [trailingAnchor3 constraintEqualToAnchor:?];
    v69[1] = v44;
    proxBackingController12 = [(BuddyProximityPairingController *)selfCopy proxBackingController];
    view17 = [(BuddyProximityBackingViewController *)proxBackingController12 view];
    bottomAnchor3 = [view17 bottomAnchor];
    view18 = [(BuddyProximityPairingController *)selfCopy view];
    bottomAnchor4 = [view18 bottomAnchor];
    v26 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v69[2] = v26;
    proxBackingController13 = [(BuddyProximityPairingController *)selfCopy proxBackingController];
    view19 = [(BuddyProximityBackingViewController *)proxBackingController13 view];
    topAnchor3 = [view19 topAnchor];
    view20 = [(BuddyProximityPairingController *)selfCopy view];
    safeAreaLayoutGuide = [view20 safeAreaLayoutGuide];
    topAnchor4 = [safeAreaLayoutGuide topAnchor];
    v33 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v69[3] = v33;
    v34 = [NSArray arrayWithObjects:v69 count:4];
    [NSLayoutConstraint activateConstraints:v34];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  v6 = a2;
  disappearCopy = disappear;
  v4.receiver = self;
  v4.super_class = BuddyProximityPairingController;
  [(BuddyProximityPairingController *)&v4 viewDidDisappear:disappear];
  if (([(BuddyProximityPairingController *)selfCopy isMovingFromParentViewController]& 1) != 0)
  {
    proxBackingController = [(BuddyProximityPairingController *)selfCopy proxBackingController];
    [(BuddyProximityBackingViewController *)proxBackingController endPairingIfNeeded];
  }
}

- (void)showVisualPairing
{
  v2 = [(BuddyProximityPairingController *)self proxBackingController:a2];
  [(BuddyProximityBackingViewController *)v2 showVisualPairing];
}

- (void)showPairingCode
{
  v2 = [(BuddyProximityPairingController *)self proxBackingController:a2];
  [(BuddyProximityBackingViewController *)v2 showPairingCode];
}

- (void)prepareForLanguageChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  proxBackingController = [(BuddyProximityPairingController *)selfCopy proxBackingController];
  [(BuddyProximityBackingViewController *)proxBackingController prepareForLanguageChange:location[0]];

  objc_storeStrong(location, 0);
}

- (NSString)language
{
  v2 = [(BuddyProximityPairingController *)self proxBackingController:a2];
  language = [(BuddyProximityBackingViewController *)v2 language];

  return language;
}

- (void)setLanguage:(id)language
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, language);
  proxBackingController = [(BuddyProximityPairingController *)selfCopy proxBackingController];
  [(BuddyProximityBackingViewController *)proxBackingController setLanguage:location[0]];

  objc_storeStrong(location, 0);
}

- (NSString)pairingCode
{
  v2 = [(BuddyProximityPairingController *)self proxBackingController:a2];
  pairingCode = [(BuddyProximityBackingViewController *)v2 pairingCode];

  return pairingCode;
}

- (void)setPairingCode:(id)code
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, code);
  proxBackingController = [(BuddyProximityPairingController *)selfCopy proxBackingController];
  [(BuddyProximityBackingViewController *)proxBackingController setPairingCode:location[0]];

  objc_storeStrong(location, 0);
}

- (BOOL)isShowingVisualPairing
{
  v2 = [(BuddyProximityPairingController *)self proxBackingController:a2];
  isShowingVisualPairing = [(BuddyProximityBackingViewController *)v2 isShowingVisualPairing];

  return isShowingVisualPairing & 1;
}

- (BOOL)nonUserInitiatedDismissal
{
  v2 = [(BuddyProximityPairingController *)self proxBackingController:a2];
  nonUserInitiatedDismissal = [(BuddyProximityBackingViewController *)v2 nonUserInitiatedDismissal];

  return nonUserInitiatedDismissal & 1;
}

- (void)setNonUserInitiatedDismissal:(BOOL)dismissal
{
  proxBackingController = [(BuddyProximityPairingController *)self proxBackingController];
  [(BuddyProximityBackingViewController *)proxBackingController setNonUserInitiatedDismissal:dismissal];
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
  v6.super_class = BuddyProximityPairingController;
  [(BuddyProximityPairingController *)&v6 willTransitionToTraitCollection:location[0] withTransitionCoordinator:v7];
  view = [(BuddyProximityPairingController *)selfCopy view];
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
  v5.super_class = BuddyProximityPairingController;
  [(BuddyProximityPairingController *)&v5 viewWillTransitionToSize:location[0] withTransitionCoordinator:sizeCopy.width, sizeCopy.height];
  proxBackingController = [(BuddyProximityPairingController *)selfCopy proxBackingController];
  [(BuddyProximityBackingViewController *)proxBackingController viewWillTransitionToSize:location[0] withTransitionCoordinator:sizeCopy.width, sizeCopy.height];

  objc_storeStrong(location, 0);
}

- (BOOL)isLandscape
{
  v2 = [(BuddyProximityPairingController *)self navigationController:a2];
  view = [v2 view];
  window = [view window];
  windowScene = [window windowScene];
  v6 = sub_100201EBC([windowScene interfaceOrientation]);

  return v6;
}

- (void)setProximitySetupController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  objc_storeStrong(&selfCopy->_proximitySetupController, location[0]);
  [(BuddyProximityBackingViewController *)selfCopy->_proxBackingController setDelegate:location[0]];
  objc_storeStrong(location, 0);
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end