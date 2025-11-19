@interface BuddyProximityExpressController
- (BFFFlowItemDelegate)delegate;
- (BOOL)controllerAllowsNavigatingBack;
- (void)_nextTapped;
- (void)_showAccessibilitySettings;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)viewDidLoad;
@end

@implementation BuddyProximityExpressController

- (void)viewDidLoad
{
  v42 = self;
  v41 = a2;
  v40.receiver = self;
  v40.super_class = BuddyProximityExpressController;
  [(BuddyProximityExpressController *)&v40 viewDidLoad];
  v39 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v39 setText:@"FPO"];
  [v39 setTextAlignment:1];
  v2 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle1];
  [v39 setFont:v2];

  v38 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v38 setText:@"Bring other iPhone nearby"];
  [v38 setTextAlignment:1];
  v3 = [(BuddyProximityExpressController *)v42 view];
  [v3 addSubview:v39];

  v4 = [(BuddyProximityExpressController *)v42 view];
  [v4 addSubview:v38];

  v33 = [v39 centerYAnchor];
  v34 = [(BuddyProximityExpressController *)v42 view];
  v32 = [v34 centerYAnchor];
  v31 = [v33 constraintEqualToAnchor:?];
  v43[0] = v31;
  v29 = [v39 leadingAnchor];
  v30 = [(BuddyProximityExpressController *)v42 view];
  v28 = [v30 leadingAnchor];
  v27 = [v29 constraintEqualToAnchor:?];
  v43[1] = v27;
  v25 = [v39 trailingAnchor];
  v26 = [(BuddyProximityExpressController *)v42 view];
  v24 = [v26 trailingAnchor];
  v23 = [v25 constraintEqualToAnchor:?];
  v43[2] = v23;
  v21 = [v38 leadingAnchor];
  v22 = [(BuddyProximityExpressController *)v42 view];
  v20 = [v22 leadingAnchor];
  v5 = [v21 constraintEqualToAnchor:?];
  v43[3] = v5;
  v6 = [v38 trailingAnchor];
  v7 = [(BuddyProximityExpressController *)v42 view];
  v8 = [v7 trailingAnchor];
  v9 = [v6 constraintEqualToAnchor:v8];
  v43[4] = v9;
  v10 = [(BuddyProximityExpressController *)v42 view];
  v11 = [v10 bottomAnchor];
  v12 = [v38 bottomAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:100.0];
  v43[5] = v13;
  v14 = [NSArray arrayWithObjects:v43 count:6];
  [NSLayoutConstraint activateConstraints:v14];

  v15 = +[BuddyAccessibilityUtilities accessibilityViewController];
  if (v15)
  {
    v37 = +[BuddyAccessibilityUtilities navigationBarButton];
    location = [[UIBarButtonItem alloc] initWithCustomView:v37];
    [location setStyle:0];
    [v37 addTarget:v42 action:"_showAccessibilitySettings" forControlEvents:64];
    v16 = [(BuddyProximityExpressController *)v42 navigationItem];
    [v16 setLeftBarButtonItem:location];

    objc_storeStrong(&location, 0);
    objc_storeStrong(&v37, 0);
  }

  v35 = [UIImage systemImageNamed:@"chevron.right.circle"];
  v17 = [UIBarButtonItem alloc];
  v18 = [v17 initWithImage:v35 style:0 target:v42 action:"_nextTapped"];
  v19 = [(BuddyProximityExpressController *)v42 navigationItem];
  [v19 setRightBarButtonItem:v18];

  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
}

- (void)_showAccessibilitySettings
{
  v3 = self;
  location[1] = a2;
  location[0] = +[BuddyAccessibilityUtilities accessibilityViewController];
  if (location[0])
  {
    [(BuddyProximityExpressController *)v3 presentViewController:location[0] animated:1 completion:0];
  }

  objc_storeStrong(location, 0);
}

- (void)_nextTapped
{
  v2 = [(BuddyProximityExpressController *)self delegate];
  [(BFFFlowItemDelegate *)v2 flowItemDone:self];
}

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = dispatch_get_global_queue(0, 0);
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001621E4;
  v8 = &unk_10032BCA0;
  v10 = location[0];
  v9 = v12;
  dispatch_async(v3, &block);

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)controllerAllowsNavigatingBack
{
  v2 = [(BuddyProximityExpressController *)self proximitySetupController:a2];
  v3 = ![(ProximitySetupController *)v2 hasAppliedSettings];

  return v3 & 1;
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end