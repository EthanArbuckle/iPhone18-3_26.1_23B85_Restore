@interface COSBuddyNavigationController
- (COSBuddyNavigationControllerDelegate)buddyNavDelegate;
- (id)popViewControllerAnimated:(BOOL)a3;
- (void)addInternalDashboardButton;
- (void)launchInternalPairingDashboard;
- (void)pushViewController:(id)a3 animated:(BOOL)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation COSBuddyNavigationController

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = COSBuddyNavigationController;
  [(COSBuddyNavigationController *)&v5 viewWillAppear:a3];
  v4 = [(COSBuddyNavigationController *)self interactivePopGestureRecognizer];
  [v4 setEnabled:0];
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

- (id)popViewControllerAnimated:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = COSBuddyNavigationController;
  v4 = [(COSBuddyNavigationController *)&v7 popViewControllerAnimated:a3];
  WeakRetained = objc_loadWeakRetained(&self->_buddyNavDelegate);
  [WeakRetained popViewController:v4];

  return v4;
}

- (void)pushViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v26.receiver = self;
  v26.super_class = COSBuddyNavigationController;
  [(COSBuddyNavigationController *)&v26 pushViewController:v6 animated:v4];
  v7 = [(COSBuddyNavigationController *)self interactivePopGestureRecognizer];
  [v7 setEnabled:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    WeakRetained = objc_loadWeakRetained(&self->_buddyNavDelegate);
    v10 = [WeakRetained pairingReportManager];
    [v10 checkInWithRUIController:v8];
  }

  if (objc_opt_respondsToSelector())
  {
    v11 = [v6 maximumSupportedContentSizeCategory];
    if (v11 != UIContentSizeCategoryUnspecified)
    {
      v12 = [(COSBuddyNavigationController *)self traitCollection];
      v13 = [v12 preferredContentSizeCategory];
      v14 = UIContentSizeCategoryCompareToCategory(v13, v11);

      if (v14 == NSOrderedDescending)
      {
        v15 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:v11];
        v16 = [(COSBuddyNavigationController *)self traitCollection];
        v31[0] = v16;
        v31[1] = v15;
        v17 = [NSArray arrayWithObjects:v31 count:2];
        v18 = [UITraitCollection traitCollectionWithTraitsFromCollections:v17];

        [(COSBuddyNavigationController *)self setOverrideTraitCollection:v18 forChildViewController:v6];
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
    v23 = [(COSBuddyNavigationController *)self topViewController];
    v24 = [(COSBuddyNavigationController *)self interactivePopGestureRecognizer];
    v25 = [v24 isEnabled];
    *buf = 138412546;
    v28 = v23;
    v29 = 1024;
    v30 = v25;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "BUDDY NAV: pushed %@, popswipe: %i", buf, 0x12u);
  }
}

- (void)addInternalDashboardButton
{
  v13 = [UIImage systemImageNamed:@"gear"];
  [v13 size];
  v4 = v3;
  v5 = [(COSBuddyNavigationController *)self view];
  [v5 frame];
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
  v12 = [(COSBuddyNavigationController *)self view];
  [v12 addSubview:self->_internalDashboardButton];
}

- (void)launchInternalPairingDashboard
{
  WeakRetained = objc_loadWeakRetained(&self->_buddyNavDelegate);
  v4 = [WeakRetained dashboardController];

  if (v4)
  {
    v5.receiver = self;
    v5.super_class = COSBuddyNavigationController;
    [(COSBuddyNavigationController *)&v5 presentViewController:v4 animated:1 completion:&stru_10026C068];
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