@interface BuddyProximityPairingController
- (BFFFlowItemDelegate)delegate;
- (BOOL)isLandscape;
- (BOOL)isShowingVisualPairing;
- (BOOL)nonUserInitiatedDismissal;
- (BuddyProximityPairingController)init;
- (NSString)language;
- (NSString)pairingCode;
- (void)prepareForLanguageChange:(id)a3;
- (void)setLanguage:(id)a3;
- (void)setNonUserInitiatedDismissal:(BOOL)a3;
- (void)setPairingCode:(id)a3;
- (void)setProximitySetupController:(id)a3;
- (void)showPairingCode;
- (void)showVisualPairing;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
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
  v68 = self;
  v67 = a2;
  v66.receiver = self;
  v66.super_class = BuddyProximityPairingController;
  [(BuddyProximityPairingController *)&v66 viewDidLoad];
  v2 = [(BuddyProximityPairingController *)v68 parentViewController];

  if (v2)
  {
    v3 = [(BuddyProximityPairingController *)v68 parentViewController];
    v4 = [(BuddyProximityPairingController *)v68 proxBackingController];
    [v3 addChildViewController:v4];
  }

  else
  {
    v5 = v68;
    v6 = [(BuddyProximityPairingController *)v68 proxBackingController];
    [(BuddyProximityPairingController *)v5 addChildViewController:v6];
  }

  v7 = [(BuddyProximityPairingController *)v68 proxBackingController];
  v8 = [(BuddyProximityBackingViewController *)v7 view];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [(BuddyProximityPairingController *)v68 view];
  v10 = [(BuddyProximityPairingController *)v68 proxBackingController];
  v11 = [(BuddyProximityBackingViewController *)v10 view];
  [v9 addSubview:v11];

  v12 = [(BuddyProximityPairingController *)v68 proxBackingController];
  [(BuddyProximityBackingViewController *)v12 didMoveToParentViewController:v68];

  v13 = [(BuddyProximityPairingController *)v68 view];
  [v13 layoutIfNeeded];

  v14 = [(BuddyProximityPairingController *)v68 featureFlags];
  LOBYTE(v10) = [(BuddyFeatureFlags *)v14 isSolariumEnabled];

  if (v10)
  {
    v63 = [(BuddyProximityPairingController *)v68 proxBackingController];
    v62 = [(BuddyProximityBackingViewController *)v63 view];
    v57 = [v62 leadingAnchor];
    v59 = [(BuddyProximityPairingController *)v68 view];
    v55 = [v59 leadingAnchor];
    v54 = [v57 constraintEqualToAnchor:?];
    v70[0] = v54;
    v51 = [(BuddyProximityPairingController *)v68 proxBackingController];
    v50 = [(BuddyProximityBackingViewController *)v51 view];
    v45 = [v50 trailingAnchor];
    v47 = [(BuddyProximityPairingController *)v68 view];
    v43 = [v47 trailingAnchor];
    v42 = [v45 constraintEqualToAnchor:?];
    v70[1] = v42;
    v39 = [(BuddyProximityPairingController *)v68 proxBackingController];
    v38 = [(BuddyProximityBackingViewController *)v39 view];
    v35 = [v38 bottomAnchor];
    v15 = [(BuddyProximityPairingController *)v68 view];
    v16 = [v15 bottomAnchor];
    v17 = [v35 constraintEqualToAnchor:v16];
    v70[2] = v17;
    v18 = [(BuddyProximityPairingController *)v68 proxBackingController];
    v19 = [(BuddyProximityBackingViewController *)v18 view];
    v20 = [v19 topAnchor];
    v21 = [(BuddyProximityPairingController *)v68 view];
    v22 = [v21 topAnchor];
    v23 = [v20 constraintEqualToAnchor:v22];
    v70[3] = v23;
    v24 = [NSArray arrayWithObjects:v70 count:4];
    [NSLayoutConstraint activateConstraints:v24];
  }

  else
  {
    v65 = [(BuddyProximityPairingController *)v68 proxBackingController];
    v64 = [(BuddyProximityBackingViewController *)v65 view];
    v60 = [v64 leadingAnchor];
    v61 = [(BuddyProximityPairingController *)v68 view];
    v58 = [v61 leadingAnchor];
    v56 = [v60 constraintEqualToAnchor:?];
    v69[0] = v56;
    v53 = [(BuddyProximityPairingController *)v68 proxBackingController];
    v52 = [(BuddyProximityBackingViewController *)v53 view];
    v48 = [v52 trailingAnchor];
    v49 = [(BuddyProximityPairingController *)v68 view];
    v46 = [v49 trailingAnchor];
    v44 = [v48 constraintEqualToAnchor:?];
    v69[1] = v44;
    v41 = [(BuddyProximityPairingController *)v68 proxBackingController];
    v40 = [(BuddyProximityBackingViewController *)v41 view];
    v36 = [v40 bottomAnchor];
    v37 = [(BuddyProximityPairingController *)v68 view];
    v25 = [v37 bottomAnchor];
    v26 = [v36 constraintEqualToAnchor:v25];
    v69[2] = v26;
    v27 = [(BuddyProximityPairingController *)v68 proxBackingController];
    v28 = [(BuddyProximityBackingViewController *)v27 view];
    v29 = [v28 topAnchor];
    v30 = [(BuddyProximityPairingController *)v68 view];
    v31 = [v30 safeAreaLayoutGuide];
    v32 = [v31 topAnchor];
    v33 = [v29 constraintEqualToAnchor:v32];
    v69[3] = v33;
    v34 = [NSArray arrayWithObjects:v69 count:4];
    [NSLayoutConstraint activateConstraints:v34];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4.receiver = self;
  v4.super_class = BuddyProximityPairingController;
  [(BuddyProximityPairingController *)&v4 viewDidDisappear:a3];
  if (([(BuddyProximityPairingController *)v7 isMovingFromParentViewController]& 1) != 0)
  {
    v3 = [(BuddyProximityPairingController *)v7 proxBackingController];
    [(BuddyProximityBackingViewController *)v3 endPairingIfNeeded];
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

- (void)prepareForLanguageChange:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyProximityPairingController *)v5 proxBackingController];
  [(BuddyProximityBackingViewController *)v3 prepareForLanguageChange:location[0]];

  objc_storeStrong(location, 0);
}

- (NSString)language
{
  v2 = [(BuddyProximityPairingController *)self proxBackingController:a2];
  v3 = [(BuddyProximityBackingViewController *)v2 language];

  return v3;
}

- (void)setLanguage:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyProximityPairingController *)v5 proxBackingController];
  [(BuddyProximityBackingViewController *)v3 setLanguage:location[0]];

  objc_storeStrong(location, 0);
}

- (NSString)pairingCode
{
  v2 = [(BuddyProximityPairingController *)self proxBackingController:a2];
  v3 = [(BuddyProximityBackingViewController *)v2 pairingCode];

  return v3;
}

- (void)setPairingCode:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyProximityPairingController *)v5 proxBackingController];
  [(BuddyProximityBackingViewController *)v3 setPairingCode:location[0]];

  objc_storeStrong(location, 0);
}

- (BOOL)isShowingVisualPairing
{
  v2 = [(BuddyProximityPairingController *)self proxBackingController:a2];
  v3 = [(BuddyProximityBackingViewController *)v2 isShowingVisualPairing];

  return v3 & 1;
}

- (BOOL)nonUserInitiatedDismissal
{
  v2 = [(BuddyProximityPairingController *)self proxBackingController:a2];
  v3 = [(BuddyProximityBackingViewController *)v2 nonUserInitiatedDismissal];

  return v3 & 1;
}

- (void)setNonUserInitiatedDismissal:(BOOL)a3
{
  v3 = [(BuddyProximityPairingController *)self proxBackingController];
  [(BuddyProximityBackingViewController *)v3 setNonUserInitiatedDismissal:a3];
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
  v6.super_class = BuddyProximityPairingController;
  [(BuddyProximityPairingController *)&v6 willTransitionToTraitCollection:location[0] withTransitionCoordinator:v7];
  v5 = [(BuddyProximityPairingController *)v9 view];
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
  v5.super_class = BuddyProximityPairingController;
  [(BuddyProximityPairingController *)&v5 viewWillTransitionToSize:location[0] withTransitionCoordinator:v8.width, v8.height];
  v4 = [(BuddyProximityPairingController *)v7 proxBackingController];
  [(BuddyProximityBackingViewController *)v4 viewWillTransitionToSize:location[0] withTransitionCoordinator:v8.width, v8.height];

  objc_storeStrong(location, 0);
}

- (BOOL)isLandscape
{
  v2 = [(BuddyProximityPairingController *)self navigationController:a2];
  v3 = [v2 view];
  v4 = [v3 window];
  v5 = [v4 windowScene];
  v6 = sub_100201EBC([v5 interfaceOrientation]);

  return v6;
}

- (void)setProximitySetupController:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v4->_proximitySetupController, location[0]);
  [(BuddyProximityBackingViewController *)v4->_proxBackingController setDelegate:location[0]];
  objc_storeStrong(location, 0);
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end