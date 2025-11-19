@interface HSPCCenterIconViewController
- (HFIconDescriptor)iconDescriptor;
- (HSPCCenterIconViewController)initWithCoordinator:(id)a3 config:(id)a4;
- (HSPCCenterIconViewController)initWithCoordinator:(id)a3 config:(id)a4 iconView:(id)a5;
- (void)viewDidLoad;
@end

@implementation HSPCCenterIconViewController

- (HSPCCenterIconViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[HUIconView alloc] initWithFrame:1 contentMode:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v8 setIconSize:5];
  v9 = [(HSPCCenterIconViewController *)self initWithCoordinator:v7 config:v6 iconView:v8];

  return v9;
}

- (HSPCCenterIconViewController)initWithCoordinator:(id)a3 config:(id)a4 iconView:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HSPCCenterIconViewController;
  v12 = [(HSPCFixedSizeCenterContentViewController *)&v15 initWithCenterContentView:v11];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_config, a4);
    objc_storeStrong(&v13->_coordinator, a3);
    objc_storeStrong(&v13->_iconView, a5);
  }

  return v13;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = HSPCCenterIconViewController;
  [(HSPCFixedSizeCenterContentViewController *)&v7 viewDidLoad];
  v3 = [(HSPCCenterIconViewController *)self iconDescriptor];
  if (v3)
  {
    objc_opt_class();
    v4 = [(HSPCCenterIconViewController *)self iconView];
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    [v6 updateWithIconDescriptor:v3 displayStyle:1 animated:1];
  }
}

- (HFIconDescriptor)iconDescriptor
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HSPCCenterIconViewController.m" lineNumber:58 description:@"Subclass to override."];

  return 0;
}

@end