@interface HSPCResumeWelcomeViewController
- (HSPCResumeWelcomeViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (void)viewDidLoad;
@end

@implementation HSPCResumeWelcomeViewController

- (HSPCResumeWelcomeViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  v18.receiver = self;
  v18.super_class = HSPCResumeWelcomeViewController;
  v7 = [(HSPCDetectedViewController *)&v18 initWithCoordinator:coordinatorCopy config:config];
  if (v7)
  {
    activeTuple = [coordinatorCopy activeTuple];
    accessoryCategoryOrPrimaryServiceType = [activeTuple accessoryCategoryOrPrimaryServiceType];

    setupAccessoryDescription = [coordinatorCopy setupAccessoryDescription];
    setupAccessoryPayload = [setupAccessoryDescription setupAccessoryPayload];
    matterDeviceTypeID = [setupAccessoryPayload matterDeviceTypeID];

    v13 = HFLocalizedCategoryOrPrimaryServiceTypeString();
    activeTuple2 = [coordinatorCopy activeTuple];
    v15 = [activeTuple2 titleForAccessoryWithDefaultValue:v13];
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