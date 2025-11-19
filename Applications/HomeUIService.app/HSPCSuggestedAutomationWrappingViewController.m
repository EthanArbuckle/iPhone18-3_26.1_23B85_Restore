@interface HSPCSuggestedAutomationWrappingViewController
- (HSPCSuggestedAutomationWrappingViewController)initWithCoordinator:(id)a3 config:(id)a4;
- (id)commitConfiguration;
- (id)hu_preloadContent;
- (id)shouldSkip;
- (void)viewDidLoad;
@end

@implementation HSPCSuggestedAutomationWrappingViewController

- (HSPCSuggestedAutomationWrappingViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [[HSPCSuggestedAutomationsViewController alloc] initWithCoordinator:v7 config:v8];
  [(HSPCSuggestedAutomationWrappingViewController *)self setMvvmController:v9];
  v10 = [PRXScrollableContentView alloc];
  v11 = [(HSPCSuggestedAutomationsViewController *)v9 tableView];
  v12 = [v10 initWithCardStyle:0 scrollView:v11];

  v26.receiver = self;
  v26.super_class = HSPCSuggestedAutomationWrappingViewController;
  v13 = [(HSPCSuggestedAutomationWrappingViewController *)&v26 initWithContentView:v12];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_config, a4);
    objc_storeStrong(&v14->_coordinator, a3);
    v25 = [v7 activeTuple];
    v15 = [v25 accessoryCategoryOrPrimaryServiceType];
    v16 = [v7 setupAccessoryDescription];
    v17 = [v16 setupAccessoryPayload];
    v18 = [v17 matterDeviceTypeID];
    HFLocalizedCategoryOrPrimaryServiceTypeString();
    v19 = v12;
    v20 = v7;
    v22 = v21 = v8;
    [(HSPCSuggestedAutomationWrappingViewController *)v14 setTitle:v22];

    v8 = v21;
    v7 = v20;
    v12 = v19;

    v23 = [(HSPCSuggestedAutomationWrappingViewController *)v14 addProminentButtonWithTitleKey:@"HUContinueTitle" target:v14 futureSelector:"commitConfiguration"];
  }

  return v14;
}

- (id)commitConfiguration
{
  v2 = [(HSPCSuggestedAutomationWrappingViewController *)self mvvmController];
  v3 = [v2 commitConfiguration];

  return v3;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = HSPCSuggestedAutomationWrappingViewController;
  [(HSPCSuggestedAutomationWrappingViewController *)&v5 viewDidLoad];
  v3 = [(HSPCSuggestedAutomationWrappingViewController *)self mvvmController];
  [(HSPCSuggestedAutomationWrappingViewController *)self addChildViewController:v3];

  v4 = [(HSPCSuggestedAutomationWrappingViewController *)self mvvmController];
  [v4 didMoveToParentViewController:self];
}

- (id)hu_preloadContent
{
  v2 = [(HSPCSuggestedAutomationWrappingViewController *)self mvvmController];
  v3 = [v2 hu_preloadContent];

  return v3;
}

- (id)shouldSkip
{
  v3 = [(HSPCSuggestedAutomationWrappingViewController *)self mvvmController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(HSPCSuggestedAutomationWrappingViewController *)self mvvmController];
    v6 = [v5 shouldSkip];
  }

  else
  {
    v6 = [NAFuture futureWithResult:&__kCFBooleanFalse];
  }

  return v6;
}

@end