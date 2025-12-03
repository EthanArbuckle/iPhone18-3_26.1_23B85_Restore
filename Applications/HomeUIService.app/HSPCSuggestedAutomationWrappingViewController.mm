@interface HSPCSuggestedAutomationWrappingViewController
- (HSPCSuggestedAutomationWrappingViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (id)commitConfiguration;
- (id)hu_preloadContent;
- (id)shouldSkip;
- (void)viewDidLoad;
@end

@implementation HSPCSuggestedAutomationWrappingViewController

- (HSPCSuggestedAutomationWrappingViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  configCopy = config;
  v9 = [[HSPCSuggestedAutomationsViewController alloc] initWithCoordinator:coordinatorCopy config:configCopy];
  [(HSPCSuggestedAutomationWrappingViewController *)self setMvvmController:v9];
  v10 = [PRXScrollableContentView alloc];
  tableView = [(HSPCSuggestedAutomationsViewController *)v9 tableView];
  v12 = [v10 initWithCardStyle:0 scrollView:tableView];

  v26.receiver = self;
  v26.super_class = HSPCSuggestedAutomationWrappingViewController;
  v13 = [(HSPCSuggestedAutomationWrappingViewController *)&v26 initWithContentView:v12];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_config, config);
    objc_storeStrong(&v14->_coordinator, coordinator);
    activeTuple = [coordinatorCopy activeTuple];
    accessoryCategoryOrPrimaryServiceType = [activeTuple accessoryCategoryOrPrimaryServiceType];
    setupAccessoryDescription = [coordinatorCopy setupAccessoryDescription];
    setupAccessoryPayload = [setupAccessoryDescription setupAccessoryPayload];
    matterDeviceTypeID = [setupAccessoryPayload matterDeviceTypeID];
    HFLocalizedCategoryOrPrimaryServiceTypeString();
    v19 = v12;
    v20 = coordinatorCopy;
    v22 = v21 = configCopy;
    [(HSPCSuggestedAutomationWrappingViewController *)v14 setTitle:v22];

    configCopy = v21;
    coordinatorCopy = v20;
    v12 = v19;

    v23 = [(HSPCSuggestedAutomationWrappingViewController *)v14 addProminentButtonWithTitleKey:@"HUContinueTitle" target:v14 futureSelector:"commitConfiguration"];
  }

  return v14;
}

- (id)commitConfiguration
{
  mvvmController = [(HSPCSuggestedAutomationWrappingViewController *)self mvvmController];
  commitConfiguration = [mvvmController commitConfiguration];

  return commitConfiguration;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = HSPCSuggestedAutomationWrappingViewController;
  [(HSPCSuggestedAutomationWrappingViewController *)&v5 viewDidLoad];
  mvvmController = [(HSPCSuggestedAutomationWrappingViewController *)self mvvmController];
  [(HSPCSuggestedAutomationWrappingViewController *)self addChildViewController:mvvmController];

  mvvmController2 = [(HSPCSuggestedAutomationWrappingViewController *)self mvvmController];
  [mvvmController2 didMoveToParentViewController:self];
}

- (id)hu_preloadContent
{
  mvvmController = [(HSPCSuggestedAutomationWrappingViewController *)self mvvmController];
  hu_preloadContent = [mvvmController hu_preloadContent];

  return hu_preloadContent;
}

- (id)shouldSkip
{
  mvvmController = [(HSPCSuggestedAutomationWrappingViewController *)self mvvmController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    mvvmController2 = [(HSPCSuggestedAutomationWrappingViewController *)self mvvmController];
    shouldSkip = [mvvmController2 shouldSkip];
  }

  else
  {
    shouldSkip = [NAFuture futureWithResult:&__kCFBooleanFalse];
  }

  return shouldSkip;
}

@end