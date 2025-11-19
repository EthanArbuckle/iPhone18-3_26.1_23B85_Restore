@interface HSPCResumeWelcomeViewController
- (HSPCResumeWelcomeViewController)initWithCoordinator:(id)a3 config:(id)a4;
- (void)viewDidLoad;
@end

@implementation HSPCResumeWelcomeViewController

- (HSPCResumeWelcomeViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v6 = a3;
  v18.receiver = self;
  v18.super_class = HSPCResumeWelcomeViewController;
  v7 = [(HSPCDetectedViewController *)&v18 initWithCoordinator:v6 config:a4];
  if (v7)
  {
    v8 = [v6 activeTuple];
    v9 = [v8 accessoryCategoryOrPrimaryServiceType];

    v10 = [v6 setupAccessoryDescription];
    v11 = [v10 setupAccessoryPayload];
    v12 = [v11 matterDeviceTypeID];

    v13 = HFLocalizedCategoryOrPrimaryServiceTypeString();
    v14 = [v6 activeTuple];
    v15 = [v14 titleForAccessoryWithDefaultValue:v13];
    [(HSPCResumeWelcomeViewController *)v7 setTitle:v15];

    v16 = HFLocalizedCategoryOrPrimaryServiceTypeString();
    [(HSPCResumeWelcomeViewController *)v7 setSubtitle:v16];
  }

  return v7;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = HSPCResumeWelcomeViewController;
  [(HSPCCenterIconViewController *)&v2 viewDidLoad];
}

@end