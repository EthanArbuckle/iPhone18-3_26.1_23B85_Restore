@interface HSPCCenterIconViewController
- (HFIconDescriptor)iconDescriptor;
- (HSPCCenterIconViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (HSPCCenterIconViewController)initWithCoordinator:(id)coordinator config:(id)config iconView:(id)view;
- (void)viewDidLoad;
@end

@implementation HSPCCenterIconViewController

- (HSPCCenterIconViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  configCopy = config;
  coordinatorCopy = coordinator;
  v8 = [[HUIconView alloc] initWithFrame:1 contentMode:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v8 setIconSize:5];
  v9 = [(HSPCCenterIconViewController *)self initWithCoordinator:coordinatorCopy config:configCopy iconView:v8];

  return v9;
}

- (HSPCCenterIconViewController)initWithCoordinator:(id)coordinator config:(id)config iconView:(id)view
{
  coordinatorCopy = coordinator;
  configCopy = config;
  viewCopy = view;
  v15.receiver = self;
  v15.super_class = HSPCCenterIconViewController;
  v12 = [(HSPCFixedSizeCenterContentViewController *)&v15 initWithCenterContentView:viewCopy];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_config, config);
    objc_storeStrong(&v13->_coordinator, coordinator);
    objc_storeStrong(&v13->_iconView, view);
  }

  return v13;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = HSPCCenterIconViewController;
  [(HSPCFixedSizeCenterContentViewController *)&v7 viewDidLoad];
  iconDescriptor = [(HSPCCenterIconViewController *)self iconDescriptor];
  if (iconDescriptor)
  {
    objc_opt_class();
    iconView = [(HSPCCenterIconViewController *)self iconView];
    if (objc_opt_isKindOfClass())
    {
      v5 = iconView;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    [v6 updateWithIconDescriptor:iconDescriptor displayStyle:1 animated:1];
  }
}

- (HFIconDescriptor)iconDescriptor
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HSPCCenterIconViewController.m" lineNumber:58 description:@"Subclass to override."];

  return 0;
}

@end