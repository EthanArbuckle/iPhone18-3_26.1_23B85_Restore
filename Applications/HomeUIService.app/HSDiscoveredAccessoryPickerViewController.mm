@interface HSDiscoveredAccessoryPickerViewController
- (HSDiscoveredAccessoryPickerViewController)initWithAccessoryBrowsingManager:(id)a3 entitlementContext:(id)a4 setupAccessoryDescription:(id)a5 matterDeviceSetupRequest:(id)a6;
- (HSDiscoveredAccessoryPickerViewControllerDelegate)discoveredAccessoryPickerViewControllerDelegate;
- (id)hu_preloadContent;
- (void)_setupConstraints;
- (void)discoveredAccessoryGrid:(id)a3 didSelectDiscoveredAccessory:(id)a4;
- (void)discoveredAccessoryGrid:(id)a3 didUpdateNumberOfDiscoveredAccessories:(unint64_t)a4;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)viewDidLoad;
@end

@implementation HSDiscoveredAccessoryPickerViewController

- (HSDiscoveredAccessoryPickerViewController)initWithAccessoryBrowsingManager:(id)a3 entitlementContext:(id)a4 setupAccessoryDescription:(id)a5 matterDeviceSetupRequest:(id)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v12)
  {
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_100077A44(a2, self);
    if (v13)
    {
      goto LABEL_3;
    }
  }

  sub_100077AC0(a2, self);
LABEL_3:
  v22.receiver = self;
  v22.super_class = HSDiscoveredAccessoryPickerViewController;
  v16 = [(HSDiscoveredAccessoryPickerViewController *)&v22 initWithNibName:0 bundle:0];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_accessoryBrowsingManager, a3);
    objc_storeStrong(&v17->_entitlementContext, a4);
    objc_storeStrong(&v17->_setupAccessoryDescription, a5);
    objc_storeStrong(&v17->_matterDeviceSetupRequest, a6);
    v18 = [[HSNetworkInterfaceManager alloc] initWithAlertHostViewController:v17];
    networkInterfaceManager = v17->_networkInterfaceManager;
    v17->_networkInterfaceManager = v18;

    v20 = HULocalizedString();
    [(HSDiscoveredAccessoryPickerViewController *)v17 setTitle:v20];
  }

  return v17;
}

- (void)viewDidLoad
{
  v26.receiver = self;
  v26.super_class = HSDiscoveredAccessoryPickerViewController;
  [(HSDiscoveredAccessoryPickerViewController *)&v26 viewDidLoad];
  v3 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  v4 = [[UIBarButtonItem alloc] initWithCustomView:v3];
  v5 = [(HSDiscoveredAccessoryPickerViewController *)self navigationItem];
  [v5 setRightBarButtonItem:v4];

  [v3 startAnimating];
  v6 = [HSDiscoveredAccessoryFilter alloc];
  v7 = [(HSDiscoveredAccessoryPickerViewController *)self entitlementContext];
  v8 = [(HSDiscoveredAccessoryPickerViewController *)self setupAccessoryDescription];
  v9 = [(HSDiscoveredAccessoryPickerViewController *)self matterDeviceSetupRequest];
  v10 = [(HSDiscoveredAccessoryFilter *)v6 initWithEntitlementContext:v7 setupAccessoryDescription:v8 matterDeviceSetupRequest:v9];

  v11 = [HSDiscoveredAccessoryGridContentViewController alloc];
  v12 = [(HSDiscoveredAccessoryPickerViewController *)self accessoryBrowsingManager];
  v13 = [(HSDiscoveredAccessoryGridContentViewController *)v11 initWithAccessoryBrowsingManager:v12 discoveredAccessoryFilter:v10];
  [(HSDiscoveredAccessoryPickerViewController *)self setGridViewController:v13];

  v14 = +[UIColor secondarySystemBackgroundColor];
  v15 = [(HSDiscoveredAccessoryPickerViewController *)self gridViewController];
  [v15 setCellContentViewBackgroundColor:v14];

  v16 = [(HSDiscoveredAccessoryPickerViewController *)self gridViewController];
  [v16 setDelegate:self];

  v17 = [(HSDiscoveredAccessoryPickerViewController *)self gridViewController];
  [v17 setContentMargins:0];

  v18 = [(HSDiscoveredAccessoryPickerViewController *)self gridViewController];
  [v18 setWantsPreferredContentSize:1];

  v19 = [(HSDiscoveredAccessoryPickerViewController *)self gridViewController];
  [(HSDiscoveredAccessoryPickerViewController *)self addChildViewController:v19];

  v20 = [(HSDiscoveredAccessoryPickerViewController *)self gridViewController];
  v21 = [v20 view];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];

  v22 = [(HSDiscoveredAccessoryPickerViewController *)self view];
  v23 = [(HSDiscoveredAccessoryPickerViewController *)self gridViewController];
  v24 = [v23 view];
  [v22 addSubview:v24];

  v25 = [(HSDiscoveredAccessoryPickerViewController *)self gridViewController];
  [v25 didMoveToParentViewController:self];

  [(HSDiscoveredAccessoryPickerViewController *)self _setupConstraints];
}

- (void)_setupConstraints
{
  v30 = +[NSMutableArray array];
  v3 = [(HSDiscoveredAccessoryPickerViewController *)self gridViewController];
  v4 = [v3 view];

  v5 = [v4 leftAnchor];
  v6 = [(HSDiscoveredAccessoryPickerViewController *)self view];
  v7 = [v6 leftAnchor];
  v8 = [v5 constraintEqualToAnchor:v7];
  [v30 addObject:v8];

  v9 = [v4 topAnchor];
  v10 = [(HSDiscoveredAccessoryPickerViewController *)self view];
  v11 = [v10 topAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  [v30 addObject:v12];

  v13 = [v4 rightAnchor];
  v14 = [(HSDiscoveredAccessoryPickerViewController *)self view];
  v15 = [v14 rightAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  [v30 addObject:v16];

  v17 = [v4 bottomAnchor];
  v18 = [(HSDiscoveredAccessoryPickerViewController *)self view];
  v19 = [v18 bottomAnchor];
  v20 = [v17 constraintEqualToAnchor:v19];
  [v30 addObject:v20];

  v21 = [(HSDiscoveredAccessoryPickerViewController *)self gridViewController];
  v22 = [v21 view];
  v23 = [v22 heightAnchor];
  v24 = [(HSDiscoveredAccessoryPickerViewController *)self gridViewController];
  [v24 preferredContentSize];
  v26 = [v23 constraintGreaterThanOrEqualToConstant:v25];
  [(HSDiscoveredAccessoryPickerViewController *)self setGridHeightConstraint:v26];

  v27 = [(HSDiscoveredAccessoryPickerViewController *)self gridHeightConstraint];
  LODWORD(v28) = 1144750080;
  [v27 setPriority:v28];

  v29 = [(HSDiscoveredAccessoryPickerViewController *)self gridHeightConstraint];
  [v30 addObject:v29];

  [NSLayoutConstraint activateConstraints:v30];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v4 = a3;
  v5 = [(HSDiscoveredAccessoryPickerViewController *)self gridViewController];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = [(HSDiscoveredAccessoryPickerViewController *)self gridViewController];
    [v7 preferredContentSize];
    v9 = v8 + 30.0;
    v10 = [(HSDiscoveredAccessoryPickerViewController *)self gridHeightConstraint];
    [v10 setConstant:v9];

    v12 = [(HSDiscoveredAccessoryPickerViewController *)self gridViewController];
    v11 = [v12 view];
    [v11 layoutIfNeeded];
  }
}

- (void)discoveredAccessoryGrid:(id)a3 didSelectDiscoveredAccessory:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (!v6)
  {
    NSLog(@"No discovered accessory");
  }

  v7 = [(HSDiscoveredAccessoryPickerViewController *)self discoveredAccessoryPickerViewControllerDelegate];

  if (v7)
  {
    v8 = [(HSDiscoveredAccessoryPickerViewController *)self discoveredAccessoryPickerViewControllerDelegate];
    [v8 didSelectDiscoveredAccessory:v6];
  }
}

- (void)discoveredAccessoryGrid:(id)a3 didUpdateNumberOfDiscoveredAccessories:(unint64_t)a4
{
  v6 = [(HSDiscoveredAccessoryPickerViewController *)self discoveredAccessoryPickerViewControllerDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(HSDiscoveredAccessoryPickerViewController *)self discoveredAccessoryPickerViewControllerDelegate];
    [v8 didUpdateNumberOfDiscoveredAccessories:a4];
  }
}

- (id)hu_preloadContent
{
  v2 = [(HSDiscoveredAccessoryPickerViewController *)self gridViewController];
  v3 = [v2 hu_preloadContent];

  return v3;
}

- (HSDiscoveredAccessoryPickerViewControllerDelegate)discoveredAccessoryPickerViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_discoveredAccessoryPickerViewControllerDelegate);

  return WeakRetained;
}

@end