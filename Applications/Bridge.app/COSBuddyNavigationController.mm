@interface COSBuddyNavigationController
- (COSBuddyNavigationControllerDelegate)buddyNavDelegate;
- (id)popViewControllerAnimated:(BOOL)animated;
- (void)addInternalDashboardButton;
- (void)launchInternalPairingDashboard;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation COSBuddyNavigationController

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = COSBuddyNavigationController;
  [(COSBuddyNavigationController *)&v5 viewWillAppear:appear];
  interactivePopGestureRecognizer = [(COSBuddyNavigationController *)self interactivePopGestureRecognizer];
  [interactivePopGestureRecognizer setEnabled:0];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = COSBuddyNavigationController;
  [(COSBuddyNavigationController *)&v3 viewDidLoad];
  if (sub_100009A74())
  {
    [(COSBuddyNavigationController *)self addInternalDashboardButton];
  }
}

- (id)popViewControllerAnimated:(BOOL)animated
{
  v7.receiver = self;
  v7.super_class = COSBuddyNavigationController;
  v4 = [(COSBuddyNavigationController *)&v7 popViewControllerAnimated:animated];
  WeakRetained = objc_loadWeakRetained(&self->_buddyNavDelegate);
  [WeakRetained popViewController:v4];

  return v4;
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  v26.receiver = self;
  v26.super_class = COSBuddyNavigationController;
  [(COSBuddyNavigationController *)&v26 pushViewController:controllerCopy animated:animatedCopy];
  interactivePopGestureRecognizer = [(COSBuddyNavigationController *)self interactivePopGestureRecognizer];
  [interactivePopGestureRecognizer setEnabled:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = controllerCopy;
    WeakRetained = objc_loadWeakRetained(&self->_buddyNavDelegate);
    pairingReportManager = [WeakRetained pairingReportManager];
    [pairingReportManager checkInWithRUIController:v8];
  }

  if (objc_opt_respondsToSelector())
  {
    maximumSupportedContentSizeCategory = [controllerCopy maximumSupportedContentSizeCategory];
    if (maximumSupportedContentSizeCategory != UIContentSizeCategoryUnspecified)
    {
      traitCollection = [(COSBuddyNavigationController *)self traitCollection];
      preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
      v14 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, maximumSupportedContentSizeCategory);

      if (v14 == NSOrderedDescending)
      {
        v15 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:maximumSupportedContentSizeCategory];
        traitCollection2 = [(COSBuddyNavigationController *)self traitCollection];
        v31[0] = traitCollection2;
        v31[1] = v15;
        v17 = [NSArray arrayWithObjects:v31 count:2];
        v18 = [UITraitCollection traitCollectionWithTraitsFromCollections:v17];

        [(COSBuddyNavigationController *)self setOverrideTraitCollection:v18 forChildViewController:controllerCopy];
        v19 = pbb_setupflow_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = objc_opt_class();
          v21 = NSStringFromClass(v20);
          *buf = 138412290;
          v28 = v21;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Content size category is above maximum supported for %@, overriding.", buf, 0xCu);
        }
      }
    }
  }

  v22 = pbb_setupflow_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    topViewController = [(COSBuddyNavigationController *)self topViewController];
    interactivePopGestureRecognizer2 = [(COSBuddyNavigationController *)self interactivePopGestureRecognizer];
    isEnabled = [interactivePopGestureRecognizer2 isEnabled];
    *buf = 138412546;
    v28 = topViewController;
    v29 = 1024;
    v30 = isEnabled;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "BUDDY NAV: pushed %@, popswipe: %i", buf, 0x12u);
  }
}

- (void)addInternalDashboardButton
{
  v13 = [UIImage systemImageNamed:@"gear"];
  [v13 size];
  v4 = v3;
  view = [(COSBuddyNavigationController *)self view];
  [view frame];
  v7 = v6;

  v8 = [UIButton buttonWithType:1];
  internalDashboardButton = self->_internalDashboardButton;
  self->_internalDashboardButton = v8;

  [(UIButton *)self->_internalDashboardButton setFrame:v7 - (v4 + 50.0), 80.0, 100.0, 50.0];
  [(UIButton *)self->_internalDashboardButton setOpaque:1];
  [(UIButton *)self->_internalDashboardButton setEnabled:1];
  v10 = self->_internalDashboardButton;
  v11 = +[UIColor systemRedColor];
  [(UIButton *)v10 setTitleColor:v11 forState:0];

  [(UIButton *)self->_internalDashboardButton setImage:v13 forState:0];
  [(UIButton *)self->_internalDashboardButton addTarget:self action:"launchInternalPairingDashboard" forControlEvents:64];
  [(UIButton *)self->_internalDashboardButton setHidden:1];
  view2 = [(COSBuddyNavigationController *)self view];
  [view2 addSubview:self->_internalDashboardButton];
}

- (void)launchInternalPairingDashboard
{
  WeakRetained = objc_loadWeakRetained(&self->_buddyNavDelegate);
  dashboardController = [WeakRetained dashboardController];

  if (dashboardController)
  {
    v5.receiver = self;
    v5.super_class = COSBuddyNavigationController;
    [(COSBuddyNavigationController *)&v5 presentViewController:dashboardController animated:1 completion:&stru_10026C068];
  }

  else
  {
    NSLog(@"no dashboard view available");
  }
}

- (COSBuddyNavigationControllerDelegate)buddyNavDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_buddyNavDelegate);

  return WeakRetained;
}

@end