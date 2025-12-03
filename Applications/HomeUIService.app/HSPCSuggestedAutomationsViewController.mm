@interface HSPCSuggestedAutomationsViewController
- (HSPCSuggestedAutomationsViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (id)buildItemModuleControllerForModule:(id)module;
- (id)commitConfiguration;
- (id)shouldSkip;
- (void)viewDidLoad;
@end

@implementation HSPCSuggestedAutomationsViewController

- (HSPCSuggestedAutomationsViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  configCopy = config;
  addedAccessory = [configCopy addedAccessory];
  v10 = +[NSMutableArray array];
  v11 = objc_alloc_init(HFNullValueSource);
  if ([addedAccessory hf_isMediaAccessory])
  {
    v12 = [HFMediaAccessoryItem alloc];
    mediaProfile = [addedAccessory mediaProfile];
    v14 = [v12 initWithValueSource:v11 mediaProfileContainer:mediaProfile];
  }

  else
  {
    v14 = [[HFAccessoryItem alloc] initWithAccessory:addedAccessory valueSource:v11];
  }

  [v10 addObject:v14];
  v15 = HFLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = addedAccessory;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Setting up HSPCSuggestedAutomationsViewController with accessory: %@", buf, 0xCu);
  }

  v16 = [[HSPCSuggestedAutomationsItemManager alloc] initWithDelegate:self serviceLikeItems:v10];
  v23.receiver = self;
  v23.super_class = HSPCSuggestedAutomationsViewController;
  v17 = [(HSPCSuggestedAutomationsViewController *)&v23 initWithItemManager:v16 tableViewStyle:0];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_config, config);
    objc_storeStrong(&v18->_coordinator, coordinator);
    v19 = +[UIColor clearColor];
    tableView = [(HSPCSuggestedAutomationsViewController *)v18 tableView];
    [tableView setBackgroundColor:v19];

    commitInProgress = v18->_commitInProgress;
    v18->_commitInProgress = 0;
  }

  return v18;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = HSPCSuggestedAutomationsViewController;
  [(HSPCSuggestedAutomationsViewController *)&v3 viewDidLoad];
  [(HSPCSuggestedAutomationsViewController *)self setWantsPreferredContentSize:1];
}

- (id)buildItemModuleControllerForModule:(id)module
{
  moduleCopy = module;
  objc_opt_class();
  v5 = moduleCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [[HUAvailableRelatedTriggerItemModuleController alloc] initWithModule:v7];
    recommendationModuleController = self->_recommendationModuleController;
    self->_recommendationModuleController = v8;

    recommendationModuleController = [(HSPCSuggestedAutomationsViewController *)self recommendationModuleController];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = HSPCSuggestedAutomationsViewController;
    recommendationModuleController = [(HSPCSuggestedAutomationsViewController *)&v13 buildItemModuleControllerForModule:v5];
  }

  v11 = recommendationModuleController;

  return v11;
}

- (id)commitConfiguration
{
  commitInProgress = [(HSPCSuggestedAutomationsViewController *)self commitInProgress];
  if (commitInProgress && (v4 = commitInProgress, -[HSPCSuggestedAutomationsViewController commitInProgress](self, "commitInProgress"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isFinished], v5, v4, (v6 & 1) == 0))
  {
    v12 = [NAFuture futureWithResult:&off_1000CE0B0];
  }

  else
  {
    recommendationModuleController = [(HSPCSuggestedAutomationsViewController *)self recommendationModuleController];
    commitSelectedItems = [recommendationModuleController commitSelectedItems];
    [(HSPCSuggestedAutomationsViewController *)self setCommitInProgress:commitSelectedItems];

    itemManager = [(HSPCSuggestedAutomationsViewController *)self itemManager];
    [itemManager disableExternalUpdatesWithReason:@"setupSuggestedAutomationsVCUpdatesDisabledReason"];

    commitInProgress2 = [(HSPCSuggestedAutomationsViewController *)self commitInProgress];
    v11 = [commitInProgress2 flatMap:&stru_1000C8150];
    v12 = [v11 recover:&stru_1000C8170];
  }

  return v12;
}

- (id)shouldSkip
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006855C;
  v5[3] = &unk_1000C81D8;
  v5[4] = self;
  v2 = [NSNumber numberWithBool:sub_10006855C(v5)];
  v3 = [NAFuture futureWithResult:v2];

  return v3;
}

@end