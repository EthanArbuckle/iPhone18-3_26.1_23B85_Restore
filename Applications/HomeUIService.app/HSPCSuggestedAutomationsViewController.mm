@interface HSPCSuggestedAutomationsViewController
- (HSPCSuggestedAutomationsViewController)initWithCoordinator:(id)a3 config:(id)a4;
- (id)buildItemModuleControllerForModule:(id)a3;
- (id)commitConfiguration;
- (id)shouldSkip;
- (void)viewDidLoad;
@end

@implementation HSPCSuggestedAutomationsViewController

- (HSPCSuggestedAutomationsViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 addedAccessory];
  v10 = +[NSMutableArray array];
  v11 = objc_alloc_init(HFNullValueSource);
  if ([v9 hf_isMediaAccessory])
  {
    v12 = [HFMediaAccessoryItem alloc];
    v13 = [v9 mediaProfile];
    v14 = [v12 initWithValueSource:v11 mediaProfileContainer:v13];
  }

  else
  {
    v14 = [[HFAccessoryItem alloc] initWithAccessory:v9 valueSource:v11];
  }

  [v10 addObject:v14];
  v15 = HFLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Setting up HSPCSuggestedAutomationsViewController with accessory: %@", buf, 0xCu);
  }

  v16 = [[HSPCSuggestedAutomationsItemManager alloc] initWithDelegate:self serviceLikeItems:v10];
  v23.receiver = self;
  v23.super_class = HSPCSuggestedAutomationsViewController;
  v17 = [(HSPCSuggestedAutomationsViewController *)&v23 initWithItemManager:v16 tableViewStyle:0];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_config, a4);
    objc_storeStrong(&v18->_coordinator, a3);
    v19 = +[UIColor clearColor];
    v20 = [(HSPCSuggestedAutomationsViewController *)v18 tableView];
    [v20 setBackgroundColor:v19];

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

- (id)buildItemModuleControllerForModule:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
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

    v10 = [(HSPCSuggestedAutomationsViewController *)self recommendationModuleController];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = HSPCSuggestedAutomationsViewController;
    v10 = [(HSPCSuggestedAutomationsViewController *)&v13 buildItemModuleControllerForModule:v5];
  }

  v11 = v10;

  return v11;
}

- (id)commitConfiguration
{
  v3 = [(HSPCSuggestedAutomationsViewController *)self commitInProgress];
  if (v3 && (v4 = v3, -[HSPCSuggestedAutomationsViewController commitInProgress](self, "commitInProgress"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isFinished], v5, v4, (v6 & 1) == 0))
  {
    v12 = [NAFuture futureWithResult:&off_1000CE0B0];
  }

  else
  {
    v7 = [(HSPCSuggestedAutomationsViewController *)self recommendationModuleController];
    v8 = [v7 commitSelectedItems];
    [(HSPCSuggestedAutomationsViewController *)self setCommitInProgress:v8];

    v9 = [(HSPCSuggestedAutomationsViewController *)self itemManager];
    [v9 disableExternalUpdatesWithReason:@"setupSuggestedAutomationsVCUpdatesDisabledReason"];

    v10 = [(HSPCSuggestedAutomationsViewController *)self commitInProgress];
    v11 = [v10 flatMap:&stru_1000C8150];
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