@interface BuddyProximityExpressController
- (BFFFlowItemDelegate)delegate;
- (BOOL)controllerAllowsNavigatingBack;
- (void)_nextTapped;
- (void)_showAccessibilitySettings;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)viewDidLoad;
@end

@implementation BuddyProximityExpressController

- (void)viewDidLoad
{
  selfCopy = self;
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
  view = [(BuddyProximityExpressController *)selfCopy view];
  [view addSubview:v39];

  view2 = [(BuddyProximityExpressController *)selfCopy view];
  [view2 addSubview:v38];

  centerYAnchor = [v39 centerYAnchor];
  view3 = [(BuddyProximityExpressController *)selfCopy view];
  centerYAnchor2 = [view3 centerYAnchor];
  v31 = [centerYAnchor constraintEqualToAnchor:?];
  v43[0] = v31;
  leadingAnchor = [v39 leadingAnchor];
  view4 = [(BuddyProximityExpressController *)selfCopy view];
  leadingAnchor2 = [view4 leadingAnchor];
  v27 = [leadingAnchor constraintEqualToAnchor:?];
  v43[1] = v27;
  trailingAnchor = [v39 trailingAnchor];
  view5 = [(BuddyProximityExpressController *)selfCopy view];
  trailingAnchor2 = [view5 trailingAnchor];
  v23 = [trailingAnchor constraintEqualToAnchor:?];
  v43[2] = v23;
  leadingAnchor3 = [v38 leadingAnchor];
  view6 = [(BuddyProximityExpressController *)selfCopy view];
  leadingAnchor4 = [view6 leadingAnchor];
  v5 = [leadingAnchor3 constraintEqualToAnchor:?];
  v43[3] = v5;
  trailingAnchor3 = [v38 trailingAnchor];
  view7 = [(BuddyProximityExpressController *)selfCopy view];
  trailingAnchor4 = [view7 trailingAnchor];
  v9 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v43[4] = v9;
  view8 = [(BuddyProximityExpressController *)selfCopy view];
  bottomAnchor = [view8 bottomAnchor];
  bottomAnchor2 = [v38 bottomAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:100.0];
  v43[5] = v13;
  v14 = [NSArray arrayWithObjects:v43 count:6];
  [NSLayoutConstraint activateConstraints:v14];

  v15 = +[BuddyAccessibilityUtilities accessibilityViewController];
  if (v15)
  {
    v37 = +[BuddyAccessibilityUtilities navigationBarButton];
    location = [[UIBarButtonItem alloc] initWithCustomView:v37];
    [location setStyle:0];
    [v37 addTarget:selfCopy action:"_showAccessibilitySettings" forControlEvents:64];
    navigationItem = [(BuddyProximityExpressController *)selfCopy navigationItem];
    [navigationItem setLeftBarButtonItem:location];

    objc_storeStrong(&location, 0);
    objc_storeStrong(&v37, 0);
  }

  v35 = [UIImage systemImageNamed:@"chevron.right.circle"];
  v17 = [UIBarButtonItem alloc];
  v18 = [v17 initWithImage:v35 style:0 target:selfCopy action:"_nextTapped"];
  navigationItem2 = [(BuddyProximityExpressController *)selfCopy navigationItem];
  [navigationItem2 setRightBarButtonItem:v18];

  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
}

- (void)_showAccessibilitySettings
{
  selfCopy = self;
  location[1] = a2;
  location[0] = +[BuddyAccessibilityUtilities accessibilityViewController];
  if (location[0])
  {
    [(BuddyProximityExpressController *)selfCopy presentViewController:location[0] animated:1 completion:0];
  }

  objc_storeStrong(location, 0);
}

- (void)_nextTapped
{
  delegate = [(BuddyProximityExpressController *)self delegate];
  [(BFFFlowItemDelegate *)delegate flowItemDone:self];
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v3 = dispatch_get_global_queue(0, 0);
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001621E4;
  v8 = &unk_10032BCA0;
  v10 = location[0];
  v9 = selfCopy;
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