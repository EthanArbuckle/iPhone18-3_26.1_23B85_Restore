@interface HSDiscoveredAccessoryPickerViewController
- (HSDiscoveredAccessoryPickerViewController)initWithAccessoryBrowsingManager:(id)manager entitlementContext:(id)context setupAccessoryDescription:(id)description matterDeviceSetupRequest:(id)request;
- (HSDiscoveredAccessoryPickerViewControllerDelegate)discoveredAccessoryPickerViewControllerDelegate;
- (id)hu_preloadContent;
- (void)_setupConstraints;
- (void)discoveredAccessoryGrid:(id)grid didSelectDiscoveredAccessory:(id)accessory;
- (void)discoveredAccessoryGrid:(id)grid didUpdateNumberOfDiscoveredAccessories:(unint64_t)accessories;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)viewDidLoad;
@end

@implementation HSDiscoveredAccessoryPickerViewController

- (HSDiscoveredAccessoryPickerViewController)initWithAccessoryBrowsingManager:(id)manager entitlementContext:(id)context setupAccessoryDescription:(id)description matterDeviceSetupRequest:(id)request
{
  managerCopy = manager;
  contextCopy = context;
  descriptionCopy = description;
  requestCopy = request;
  if (managerCopy)
  {
    if (contextCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_100077A44(a2, self);
    if (contextCopy)
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
    objc_storeStrong(&v16->_accessoryBrowsingManager, manager);
    objc_storeStrong(&v17->_entitlementContext, context);
    objc_storeStrong(&v17->_setupAccessoryDescription, description);
    objc_storeStrong(&v17->_matterDeviceSetupRequest, request);
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
  navigationItem = [(HSDiscoveredAccessoryPickerViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v4];

  [v3 startAnimating];
  v6 = [HSDiscoveredAccessoryFilter alloc];
  entitlementContext = [(HSDiscoveredAccessoryPickerViewController *)self entitlementContext];
  setupAccessoryDescription = [(HSDiscoveredAccessoryPickerViewController *)self setupAccessoryDescription];
  matterDeviceSetupRequest = [(HSDiscoveredAccessoryPickerViewController *)self matterDeviceSetupRequest];
  v10 = [(HSDiscoveredAccessoryFilter *)v6 initWithEntitlementContext:entitlementContext setupAccessoryDescription:setupAccessoryDescription matterDeviceSetupRequest:matterDeviceSetupRequest];

  v11 = [HSDiscoveredAccessoryGridContentViewController alloc];
  accessoryBrowsingManager = [(HSDiscoveredAccessoryPickerViewController *)self accessoryBrowsingManager];
  v13 = [(HSDiscoveredAccessoryGridContentViewController *)v11 initWithAccessoryBrowsingManager:accessoryBrowsingManager discoveredAccessoryFilter:v10];
  [(HSDiscoveredAccessoryPickerViewController *)self setGridViewController:v13];

  v14 = +[UIColor secondarySystemBackgroundColor];
  gridViewController = [(HSDiscoveredAccessoryPickerViewController *)self gridViewController];
  [gridViewController setCellContentViewBackgroundColor:v14];

  gridViewController2 = [(HSDiscoveredAccessoryPickerViewController *)self gridViewController];
  [gridViewController2 setDelegate:self];

  gridViewController3 = [(HSDiscoveredAccessoryPickerViewController *)self gridViewController];
  [gridViewController3 setContentMargins:0];

  gridViewController4 = [(HSDiscoveredAccessoryPickerViewController *)self gridViewController];
  [gridViewController4 setWantsPreferredContentSize:1];

  gridViewController5 = [(HSDiscoveredAccessoryPickerViewController *)self gridViewController];
  [(HSDiscoveredAccessoryPickerViewController *)self addChildViewController:gridViewController5];

  gridViewController6 = [(HSDiscoveredAccessoryPickerViewController *)self gridViewController];
  view = [gridViewController6 view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  view2 = [(HSDiscoveredAccessoryPickerViewController *)self view];
  gridViewController7 = [(HSDiscoveredAccessoryPickerViewController *)self gridViewController];
  view3 = [gridViewController7 view];
  [view2 addSubview:view3];

  gridViewController8 = [(HSDiscoveredAccessoryPickerViewController *)self gridViewController];
  [gridViewController8 didMoveToParentViewController:self];

  [(HSDiscoveredAccessoryPickerViewController *)self _setupConstraints];
}

- (void)_setupConstraints
{
  v30 = +[NSMutableArray array];
  gridViewController = [(HSDiscoveredAccessoryPickerViewController *)self gridViewController];
  view = [gridViewController view];

  leftAnchor = [view leftAnchor];
  view2 = [(HSDiscoveredAccessoryPickerViewController *)self view];
  leftAnchor2 = [view2 leftAnchor];
  v8 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [v30 addObject:v8];

  topAnchor = [view topAnchor];
  view3 = [(HSDiscoveredAccessoryPickerViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v12 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v30 addObject:v12];

  rightAnchor = [view rightAnchor];
  view4 = [(HSDiscoveredAccessoryPickerViewController *)self view];
  rightAnchor2 = [view4 rightAnchor];
  v16 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [v30 addObject:v16];

  bottomAnchor = [view bottomAnchor];
  view5 = [(HSDiscoveredAccessoryPickerViewController *)self view];
  bottomAnchor2 = [view5 bottomAnchor];
  v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v30 addObject:v20];

  gridViewController2 = [(HSDiscoveredAccessoryPickerViewController *)self gridViewController];
  view6 = [gridViewController2 view];
  heightAnchor = [view6 heightAnchor];
  gridViewController3 = [(HSDiscoveredAccessoryPickerViewController *)self gridViewController];
  [gridViewController3 preferredContentSize];
  v26 = [heightAnchor constraintGreaterThanOrEqualToConstant:v25];
  [(HSDiscoveredAccessoryPickerViewController *)self setGridHeightConstraint:v26];

  gridHeightConstraint = [(HSDiscoveredAccessoryPickerViewController *)self gridHeightConstraint];
  LODWORD(v28) = 1144750080;
  [gridHeightConstraint setPriority:v28];

  gridHeightConstraint2 = [(HSDiscoveredAccessoryPickerViewController *)self gridHeightConstraint];
  [v30 addObject:gridHeightConstraint2];

  [NSLayoutConstraint activateConstraints:v30];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  containerCopy = container;
  gridViewController = [(HSDiscoveredAccessoryPickerViewController *)self gridViewController];
  v6 = [containerCopy isEqual:gridViewController];

  if (v6)
  {
    gridViewController2 = [(HSDiscoveredAccessoryPickerViewController *)self gridViewController];
    [gridViewController2 preferredContentSize];
    v9 = v8 + 30.0;
    gridHeightConstraint = [(HSDiscoveredAccessoryPickerViewController *)self gridHeightConstraint];
    [gridHeightConstraint setConstant:v9];

    gridViewController3 = [(HSDiscoveredAccessoryPickerViewController *)self gridViewController];
    view = [gridViewController3 view];
    [view layoutIfNeeded];
  }
}

- (void)discoveredAccessoryGrid:(id)grid didSelectDiscoveredAccessory:(id)accessory
{
  gridCopy = grid;
  accessoryCopy = accessory;
  if (!accessoryCopy)
  {
    NSLog(@"No discovered accessory");
  }

  discoveredAccessoryPickerViewControllerDelegate = [(HSDiscoveredAccessoryPickerViewController *)self discoveredAccessoryPickerViewControllerDelegate];

  if (discoveredAccessoryPickerViewControllerDelegate)
  {
    discoveredAccessoryPickerViewControllerDelegate2 = [(HSDiscoveredAccessoryPickerViewController *)self discoveredAccessoryPickerViewControllerDelegate];
    [discoveredAccessoryPickerViewControllerDelegate2 didSelectDiscoveredAccessory:accessoryCopy];
  }
}

- (void)discoveredAccessoryGrid:(id)grid didUpdateNumberOfDiscoveredAccessories:(unint64_t)accessories
{
  discoveredAccessoryPickerViewControllerDelegate = [(HSDiscoveredAccessoryPickerViewController *)self discoveredAccessoryPickerViewControllerDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    discoveredAccessoryPickerViewControllerDelegate2 = [(HSDiscoveredAccessoryPickerViewController *)self discoveredAccessoryPickerViewControllerDelegate];
    [discoveredAccessoryPickerViewControllerDelegate2 didUpdateNumberOfDiscoveredAccessories:accessories];
  }
}

- (id)hu_preloadContent
{
  gridViewController = [(HSDiscoveredAccessoryPickerViewController *)self gridViewController];
  hu_preloadContent = [gridViewController hu_preloadContent];

  return hu_preloadContent;
}

- (HSDiscoveredAccessoryPickerViewControllerDelegate)discoveredAccessoryPickerViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_discoveredAccessoryPickerViewControllerDelegate);

  return WeakRetained;
}

@end