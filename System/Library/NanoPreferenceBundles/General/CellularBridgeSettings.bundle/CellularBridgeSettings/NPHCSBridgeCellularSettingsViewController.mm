@interface NPHCSBridgeCellularSettingsViewController
- (BOOL)_deleteWillPerformEUICCReset:(id)reset;
- (BOOL)_shouldShowCellularDataUsage;
- (NPHCSBridgeCellularSettingsViewController)initWithStyle:(int64_t)style;
- (id)_errorsForFooterMessage;
- (id)_footerStringForErrors;
- (id)_resetStatisticsCell;
- (id)_setUpCellularPlanCell;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_checkForUpdatedCarrierBundle;
- (void)_clearStats;
- (void)_displaySoftwareUpdateAlertIfNeeded;
- (void)_expireTaskAssertion:(id)assertion;
- (void)_extendBackgroundAssertion;
- (void)_getTinkerDeviceAssertion;
- (void)_promptUserForConsent:(id)consent;
- (void)_promptUserForConsentIfNecessary;
- (void)_promptUserToConfirmPlanRemoval:(id)removal willRemoveMoreThanOnePlan:(BOOL)plan;
- (void)_removePlan:(id)plan;
- (void)_removeTinkerDeviceAssertion;
- (void)_setUpPlan;
- (void)_showManageOrDeleteForCellularPlanItem:(id)item;
- (void)_sortCellularDataUsageItems;
- (void)_switchToCellularPlanItem:(id)item;
- (void)_updateCellularDataUsageItems;
- (void)_updateTableView;
- (void)_userDidProvideResponse:(int64_t)response forPlan:(id)plan;
- (void)cellularPlansUpdated:(id)updated error:(id)error;
- (void)dealloc;
- (void)presentError:(id)error;
- (void)presentErrorWithTitle:(id)title message:(id)message;
- (void)simSetupFlowCompleted:(unint64_t)completed;
- (void)sortToggleSelector;
- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation NPHCSBridgeCellularSettingsViewController

- (NPHCSBridgeCellularSettingsViewController)initWithStyle:(int64_t)style
{
  v8.receiver = self;
  v8.super_class = NPHCSBridgeCellularSettingsViewController;
  v3 = [(NPHCSBridgeCellularSettingsViewController *)&v8 initWithStyle:2];
  if (v3)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"BRIDGE_APP_TITLE" value:&stru_1CD90 table:0];
    [(NPHCSBridgeCellularSettingsViewController *)v3 setTitle:v5];

    v6 = [[NPHCSCellularPlanDataSource alloc] initWithDelegate:v3];
    [(NPHCSBridgeCellularSettingsViewController *)v3 setCellularPlansDataSource:v6];
  }

  return v3;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = NPHCSBridgeCellularSettingsViewController;
  [(NPHCSBridgeCellularSettingsBaseViewController *)&v5 viewDidLoad];
  tableView = [(NPHCSBridgeCellularSettingsViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"FooterHyperLinkView"];

  tableView2 = [(NPHCSBridgeCellularSettingsViewController *)self tableView];
  [tableView2 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"SortOptionsHeaderView"];

  [(NPHCSBridgeCellularSettingsViewController *)self _checkForUpdatedCarrierBundle];
  [(NPHCSBridgeCellularSettingsViewController *)self _displaySoftwareUpdateAlertIfNeeded];
  [(NPHCSBridgeCellularSettingsViewController *)self _updateCellularDataUsageItems];
}

- (void)willMoveToParentViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = NPHCSBridgeCellularSettingsViewController;
  [(NPHCSBridgeCellularSettingsViewController *)&v5 willMoveToParentViewController:?];
  if (!controller)
  {
    [(NPHCSBridgeCellularSettingsViewController *)self _removeTinkerDeviceAssertion];
  }
}

- (void)dealloc
{
  [(NPHCSBridgeCellularSettingsViewController *)self _removeTinkerDeviceAssertion];
  v3.receiver = self;
  v3.super_class = NPHCSBridgeCellularSettingsViewController;
  [(NPHCSBridgeCellularSettingsViewController *)&v3 dealloc];
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  sections = [(NPHCSBridgeCellularSettingsViewController *)self sections];
  v8 = [sections objectAtIndexedSubscript:section];
  v9 = [v8 objectForKeyedSubscript:@"key"];

  if ([v9 isEqualToString:@"appsDataUsageSection"])
  {
    v10 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:@"SortOptionsHeaderView"];
    sortToggle = [v10 sortToggle];
    [sortToggle addTarget:self action:"sortToggleSelector" forEvents:64];

    sortToggle2 = [v10 sortToggle];
    v13 = BPSBridgeTintColor();
    [sortToggle2 setTitleColor:v13 forState:0];

    [v10 setTitles];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)sortToggleSelector
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 BOOLForKey:@"NPHCSBridgeCellularUsageShouldSortByNameKey"];

  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 setBool:v4 ^ 1 forKey:@"NPHCSBridgeCellularUsageShouldSortByNameKey"];

  [(NPHCSBridgeCellularSettingsViewController *)self _sortCellularDataUsageItems];

  [(NPHCSBridgeCellularSettingsViewController *)self _updateTableView];
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  sections = [(NPHCSBridgeCellularSettingsViewController *)self sections];
  v7 = [sections objectAtIndexedSubscript:section];
  v8 = [v7 objectForKeyedSubscript:@"key"];
  v9 = [v8 isEqualToString:@"appsDataUsageSection"];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    sections2 = [(NPHCSBridgeCellularSettingsViewController *)self sections];
    v12 = [sections2 objectAtIndexedSubscript:section];
    v10 = [v12 objectForKeyedSubscript:@"header"];
  }

  return v10;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  sections = [(NPHCSBridgeCellularSettingsViewController *)self sections];
  v4 = [sections count];

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  sections = [(NPHCSBridgeCellularSettingsViewController *)self sections];
  v6 = [sections objectAtIndexedSubscript:section];
  v7 = [v6 objectForKeyedSubscript:@"count"];
  integerValue = [v7 integerValue];

  return integerValue;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  sections = [(NPHCSBridgeCellularSettingsViewController *)self sections];
  v9 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
  v10 = [v9 objectForKeyedSubscript:@"key"];

  if ([v10 isEqualToString:@"activeCellularPlansSection"])
  {
    v11 = nph_general_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 136315394;
      v30 = "[NPHCSBridgeCellularSettingsViewController tableView:cellForRowAtIndexPath:]";
      v31 = 1024;
      receivedRemotePlanInfo = [(NPHCSBridgeCellularSettingsViewController *)self receivedRemotePlanInfo];
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%s -- receivedRemotePlanInfo:%d", &v29, 0x12u);
    }

    if ([(NPHCSBridgeCellularSettingsViewController *)self receivedRemotePlanInfo])
    {
      activeCellularPlans = [(NPHCSBridgeCellularSettingsViewController *)self activeCellularPlans];
      if ([activeCellularPlans count])
      {
        v13 = [pathCopy row];
        activeCellularPlans2 = [(NPHCSBridgeCellularSettingsViewController *)self activeCellularPlans];
        v15 = [activeCellularPlans2 count];

        if (v13 < v15)
        {
          activeCellularPlans3 = [(NPHCSBridgeCellularSettingsViewController *)self activeCellularPlans];
          v17 = [activeCellularPlans3 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
          activeCellularPlans4 = [(NPHCSBridgeCellularSettingsViewController *)self activeCellularPlans];
          v19 = +[NPHCSCellularPlanCell cellForTableView:reuseIdentifier:cellularPlanItem:hasMultipleActiveSIM:](NPHCSCellularPlanCell, "cellForTableView:reuseIdentifier:cellularPlanItem:hasMultipleActiveSIM:", viewCopy, @"CellularPlanCellIdentifier", v17, [activeCellularPlans4 count] > 1);

LABEL_10:
          goto LABEL_21;
        }
      }

      else
      {
      }

      _setUpCellularPlanCell = [(NPHCSBridgeCellularSettingsViewController *)self _setUpCellularPlanCell];
    }

    else
    {
      _setUpCellularPlanCell = [NPHCSCellularPlanCell cellForTableView:viewCopy reuseIdentifier:@"CellularPlanCellIdentifier" cellularPlanItem:0 hasMultipleActiveSIM:0];
    }

    goto LABEL_20;
  }

  if ([v10 isEqualToString:@"inactiveCellularPlansSection"])
  {
    activeCellularPlans3 = [(NPHCSBridgeCellularSettingsViewController *)self inactiveCellularPlans];
    v17 = [activeCellularPlans3 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
    v19 = [NPHCSCellularPlanCell cellForTableView:viewCopy reuseIdentifier:@"CellularPlanCellIdentifier" cellularPlanItem:v17 hasMultipleActiveSIM:0];
    goto LABEL_10;
  }

  if ([v10 isEqualToString:@"appsDataUsageSection"])
  {
    appsDataUsageArray = [(NPHCSBridgeCellularSettingsViewController *)self appsDataUsageArray];
    v22 = [appsDataUsageArray objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    isForAnApp = [v22 isForAnApp];
    v24 = @"CellularDataUsageDisclosureCell";
    if (isForAnApp)
    {
      v24 = @"CellularDataUsageCell";
    }

    v25 = v24;
    v26 = +[NPHCellularBridgeUIManager sharedInstance];
    v19 = +[NPHCSAppCellularDataUsageCell cellForTableView:reuseIdentifier:appDataUsageItem:isCellularSetup:](NPHCSAppCellularDataUsageCell, "cellForTableView:reuseIdentifier:appDataUsageItem:isCellularSetup:", viewCopy, v25, v22, [v26 cellularPlanIsSetUp]);

LABEL_21:
    if (v19)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if ([v10 isEqualToString:@"resetDataUsageSection"])
  {
    _setUpCellularPlanCell = [(NPHCSBridgeCellularSettingsViewController *)self _resetStatisticsCell];
LABEL_20:
    v19 = _setUpCellularPlanCell;
    goto LABEL_21;
  }

LABEL_22:
  v27 = nph_general_log();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    sub_E134();
  }

  v19 = objc_alloc_init(UITableViewCell);
LABEL_25:

  return v19;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  viewCopy = view;
  sections = [(NPHCSBridgeCellularSettingsViewController *)self sections];
  v8 = [sections objectAtIndexedSubscript:section];
  v9 = [v8 objectForKeyedSubscript:@"key"];

  _footerStringForErrors = [(NPHCSBridgeCellularSettingsViewController *)self _footerStringForErrors];
  v11 = 0;
  if ([v9 isEqualToString:@"activeCellularPlansSection"] && _footerStringForErrors)
  {
    v11 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:@"FooterHyperLinkView"];
    textView = [v11 textView];
    [textView setText:_footerStringForErrors];
  }

  return v11;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  sections = [(NPHCSBridgeCellularSettingsViewController *)self sections];
  v6 = [sections objectAtIndexedSubscript:section];
  v7 = [v6 objectForKeyedSubscript:@"key"];

  if ([v7 isEqualToString:@"appsDataUsageSection"])
  {
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"CELLULAR_DATA_USAGE_GROUP_FOOTER" value:&stru_1CD90 table:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  sections = [(NPHCSBridgeCellularSettingsViewController *)self sections];
  v8 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
  v9 = [v8 objectForKeyedSubscript:@"key"];

  if ([v9 isEqualToString:@"resetDataUsageSection"])
  {
    [(NPHCSBridgeCellularSettingsViewController *)self _clearStats];
    goto LABEL_15;
  }

  if ([v9 isEqualToString:@"appsDataUsageSection"])
  {
    activeCellularPlans3 = [viewCopy cellForRowAtIndexPath:pathCopy];
    appDataUsageItem = [activeCellularPlans3 appDataUsageItem];
    childObjects = [appDataUsageItem childObjects];

    if (childObjects)
    {
      v13 = off_1C2D8;
    }

    else
    {
      if (![appDataUsageItem isForAnApp] || !+[NPHSharedUtilities isActiveWatchChinaRegionCellular](NPHSharedUtilities, "isActiveWatchChinaRegionCellular"))
      {
        goto LABEL_14;
      }

      v13 = &off_1C2E0;
    }

    v14 = [objc_alloc(*v13) initWithStyle:2];
    [v14 setAppDataUsageItem:appDataUsageItem];
    v15 = +[NPHCellularBridgeUIManager sharedInstance];
    [v14 setCellularSetup:{objc_msgSend(v15, "cellularPlanIsSetUp")}];

    navigationController = [(NPHCSBridgeCellularSettingsViewController *)self navigationController];
    [navigationController pushViewController:v14 animated:1];

LABEL_14:
    goto LABEL_15;
  }

  if (![v9 isEqualToString:@"activeCellularPlansSection"])
  {
    goto LABEL_15;
  }

  activeCellularPlans = [(NPHCSBridgeCellularSettingsViewController *)self activeCellularPlans];
  if ([activeCellularPlans count])
  {
    v18 = [pathCopy row];
    activeCellularPlans2 = [(NPHCSBridgeCellularSettingsViewController *)self activeCellularPlans];
    v20 = [activeCellularPlans2 count];

    if (v18 < v20)
    {
      activeCellularPlans3 = [(NPHCSBridgeCellularSettingsViewController *)self activeCellularPlans];
      appDataUsageItem = [activeCellularPlans3 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
      [(NPHCSBridgeCellularSettingsViewController *)self _switchToCellularPlanItem:appDataUsageItem];
      goto LABEL_14;
    }
  }

  else
  {
  }

  v21 = +[NPHCellularBridgeUIManager sharedInstance];
  shouldAllowUserToAddOrSetUpPlan = [v21 shouldAllowUserToAddOrSetUpPlan];

  if (shouldAllowUserToAddOrSetUpPlan)
  {
    [(NPHCSBridgeCellularSettingsViewController *)self _setUpPlan];
  }

LABEL_15:
}

- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path
{
  pathCopy = path;
  v6 = nph_general_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = pathCopy;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "accessoryButtonTappedForRowWithIndexPath:%@", &v13, 0xCu);
  }

  sections = [(NPHCSBridgeCellularSettingsViewController *)self sections];
  v8 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
  v9 = [v8 objectForKeyedSubscript:@"key"];

  if ([v9 isEqualToString:@"activeCellularPlansSection"])
  {
    activeCellularPlans = [(NPHCSBridgeCellularSettingsViewController *)self activeCellularPlans];
  }

  else
  {
    if (![v9 isEqualToString:@"inactiveCellularPlansSection"])
    {
      v12 = 0;
      goto LABEL_9;
    }

    activeCellularPlans = [(NPHCSBridgeCellularSettingsViewController *)self inactiveCellularPlans];
  }

  v11 = activeCellularPlans;
  v12 = [activeCellularPlans objectAtIndex:{objc_msgSend(pathCopy, "row")}];

LABEL_9:
  [(NPHCSBridgeCellularSettingsViewController *)self _showManageOrDeleteForCellularPlanItem:v12];
}

- (id)_setUpCellularPlanCell
{
  v3 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
  activeCellularPlans = [(NPHCSBridgeCellularSettingsViewController *)self activeCellularPlans];
  v5 = [activeCellularPlans count];
  inactiveCellularPlans = [(NPHCSBridgeCellularSettingsViewController *)self inactiveCellularPlans];
  v7 = [inactiveCellularPlans count];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = v8;
  if (&v7[v5])
  {
    v10 = @"CELLULAR_PLAN_BUTTON_ADD_CELLULAR";
  }

  else
  {
    v10 = @"CELLULAR_PLAN_BUTTON_SET_UP_CELLULAR";
  }

  v11 = [v8 localizedStringForKey:v10 value:&stru_1CD90 table:0];
  textLabel = [v3 textLabel];
  [textLabel setText:v11];

  v13 = BPSBridgeTintColor();
  textLabel2 = [v3 textLabel];
  [textLabel2 setTextColor:v13];

  v15 = +[NPHCellularBridgeUIManager sharedInstance];
  shouldAllowUserToAddOrSetUpPlan = [v15 shouldAllowUserToAddOrSetUpPlan];

  [v3 setEnabled:shouldAllowUserToAddOrSetUpPlan];
  textLabel3 = [v3 textLabel];
  [textLabel3 setEnabled:shouldAllowUserToAddOrSetUpPlan];

  textLabel4 = [v3 textLabel];
  [textLabel4 setUserInteractionEnabled:shouldAllowUserToAddOrSetUpPlan];

  return v3;
}

- (id)_resetStatisticsCell
{
  v3 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"RESET_STATISTICS_TITLE" value:&stru_1CD90 table:0];
  textLabel = [v3 textLabel];
  [textLabel setText:v5];

  view = [(NPHCSBridgeCellularSettingsViewController *)self view];
  tintColor = [view tintColor];
  textLabel2 = [v3 textLabel];
  [textLabel2 setTextColor:tintColor];

  return v3;
}

- (void)_updateTableView
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_85F0;
  block[3] = &unk_1CA00;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_checkForUpdatedCarrierBundle
{
  if (CTSUServerConnectionRef())
  {

    __CTServerConnectionGetUpdatedCarrierBundle();
  }
}

- (void)_displaySoftwareUpdateAlertIfNeeded
{
  _errorsForFooterMessage = [(NPHCSBridgeCellularSettingsViewController *)self _errorsForFooterMessage];
  v5 = [_errorsForFooterMessage firstObjectPassingTest:&stru_1CA40];

  v4 = v5;
  if (v5)
  {
    [(NPHCSBridgeCellularSettingsViewController *)self presentError:v5];
    v4 = v5;
  }
}

- (void)_switchToCellularPlanItem:(id)item
{
  itemCopy = item;
  if ([itemCopy isSelectable] && (objc_msgSend(itemCopy, "isSelected") & 1) == 0)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_8C38;
    v6[3] = &unk_1CAB8;
    v7 = itemCopy;
    selfCopy = self;
    nph_ensure_on_main_queue(v6);
    v5 = v7;
  }

  else
  {
    v5 = nph_general_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_E174();
    }
  }
}

- (void)_promptUserForConsentIfNecessary
{
  v3 = +[NPHCellularBridgeUIManager sharedInstance];
  selectedCellularPlan = [v3 selectedCellularPlan];

  plan = [selectedCellularPlan plan];
  status = [plan status];

  v7 = nph_general_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[NPHCSBridgeCellularSettingsViewController _promptUserForConsentIfNecessary]";
    v10 = 1024;
    v11 = status == 7;
    v12 = 1024;
    promptingUserForConsent = [(NPHCSBridgeCellularSettingsViewController *)self promptingUserForConsent];
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%s consentRequired:%d promptingUserForConsent:%d", &v8, 0x18u);
  }

  if (status == 7 && ![(NPHCSBridgeCellularSettingsViewController *)self promptingUserForConsent])
  {
    [(NPHCSBridgeCellularSettingsViewController *)self _promptUserForConsent:selectedCellularPlan];
  }
}

- (void)_userDidProvideResponse:(int64_t)response forPlan:(id)plan
{
  planCopy = plan;
  v7 = +[CTCellularPlanManager sharedManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_90FC;
  v8[3] = &unk_1CB08;
  v8[4] = self;
  [v7 userDidProvideConsentResponse:response forPlan:planCopy isRemote:1 completion:v8];
}

- (void)_promptUserForConsent:(id)consent
{
  consentCopy = consent;
  v5 = +[NPHCellularBridgeUIManager sharedInstance];
  v24 = 0;
  v6 = [v5 consentRequiredRelevantCellularPlanItem:&v24];
  v7 = v24;

  v8 = +[NPHCellularBridgeUIManager sharedInstance];
  v9 = [v8 userConsentMessageForConsentType:v6 relevantPlanItem:v7];

  if (v9)
  {
    [(NPHCSBridgeCellularSettingsViewController *)self setPromptingUserForConsent:1];
    v10 = nph_general_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v26 = "[NPHCSBridgeCellularSettingsViewController _promptUserForConsent:]";
      v27 = 2112;
      v28 = v9;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%s - consentMessage:%@", buf, 0x16u);
    }

    v11 = [UIAlertController alertControllerWithTitle:0 message:v9 preferredStyle:0];
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"CONSENT_ACTION" value:&stru_1CD90 table:0];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_9674;
    v22[3] = &unk_1CB30;
    v22[4] = self;
    v19 = consentCopy;
    v14 = consentCopy;
    v23 = v14;
    v15 = [UIAlertAction actionWithTitle:v13 style:2 handler:v22];

    [v11 addAction:v15];
    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"REPLACE_PLAN_CANCEL" value:&stru_1CD90 table:0];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_9684;
    v20[3] = &unk_1CB30;
    v20[4] = self;
    v21 = v14;
    v18 = [UIAlertAction actionWithTitle:v17 style:1 handler:v20];

    [v11 addAction:v18];
    [(NPHCSBridgeCellularSettingsViewController *)self presentViewController:v11 animated:1 completion:0];

    consentCopy = v19;
  }
}

- (void)presentError:(id)error
{
  errorCopy = error;
  v5 = nph_general_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[NPHCSBridgeCellularSettingsViewController presentError:]";
    v13 = 2112;
    v14 = errorCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%s - Error: %@", &v11, 0x16u);
  }

  if (errorCopy)
  {
    domain = [errorCopy domain];
    if ([domain isEqualToString:CTCellularPlanErrorDomain])
    {
      code = [errorCopy code];

      if (code == &dword_10)
      {
LABEL_11:
        v10 = [errorCopy description];
        BPSPresentGizmoUnreachableServiceAlertWithDismissalHandler();

        goto LABEL_12;
      }
    }

    else
    {
    }

    domain2 = [errorCopy domain];
    v9 = [domain2 isEqualToString:NPHCellularDataUsageErrorDomain];

    if (v9 && [errorCopy code] != &stru_20.cmd + 3)
    {
      goto LABEL_11;
    }

    [NPHCellularBridgeUIManager presentCellularError:errorCopy onViewController:self];
  }

LABEL_12:
}

- (void)presentErrorWithTitle:(id)title message:(id)message
{
  titleCopy = title;
  messageCopy = message;
  v8 = nph_general_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315650;
    v15 = "[NPHCSBridgeCellularSettingsViewController presentErrorWithTitle:message:]";
    v16 = 2112;
    v17 = titleCopy;
    v18 = 2112;
    v19 = messageCopy;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%s - errorTitle:%@ errorMessage:%@", &v14, 0x20u);
  }

  if (!titleCopy)
  {
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    titleCopy = [v9 localizedStringForKey:@"ERROR_TITLE" value:&stru_1CD90 table:0];
  }

  v10 = [UIAlertController alertControllerWithTitle:titleCopy message:messageCopy preferredStyle:1];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"ERROR_OK" value:&stru_1CD90 table:0];
  v13 = [UIAlertAction actionWithTitle:v12 style:0 handler:0];

  [v10 addAction:v13];
  [(NPHCSBridgeCellularSettingsViewController *)self presentViewController:v10 animated:1 completion:0];
}

- (id)_errorsForFooterMessage
{
  v3 = +[NPHCellularBridgeUIManager sharedInstance];
  cellularUseErrors = [v3 cellularUseErrors];

  if (![cellularUseErrors count])
  {
    v5 = +[NPHCellularBridgeUIManager sharedInstance];
    cellularPlanIsSetUp = [v5 cellularPlanIsSetUp];

    if ((cellularPlanIsSetUp & 1) == 0)
    {
      v9 = [NSError NPHCellularErrorWithCode:4 forSubscriptionContext:0];
      v29 = v9;
      v10 = &v29;
      goto LABEL_6;
    }

    v7 = +[NPHCellularBridgeUIManager sharedInstance];
    lTEMayImpactService = [v7 LTEMayImpactService];

    if (lTEMayImpactService)
    {
      v9 = [NSError NPHCellularErrorWithCode:5 forSubscriptionContext:0];
      v28 = v9;
      v10 = &v28;
LABEL_6:
      v11 = [NSArray arrayWithObjects:v10 count:1];

      cellularUseErrors = v11;
    }
  }

  v12 = +[NPHCellularBridgeUIManager sharedInstance];
  serviceSubscriptionsShouldShowAddNewRemotePlan = [v12 serviceSubscriptionsShouldShowAddNewRemotePlan];
  v14 = [serviceSubscriptionsShouldShowAddNewRemotePlan count];

  if (v14)
  {
    activeCellularPlans = [(NPHCSBridgeCellularSettingsViewController *)self activeCellularPlans];
    v16 = [activeCellularPlans count];
    inactiveCellularPlans = [(NPHCSBridgeCellularSettingsViewController *)self inactiveCellularPlans];
    v18 = [inactiveCellularPlans count];

    if (&v18[v16])
    {
      v19 = [cellularUseErrors objectsPassingTest:&stru_1CB50];

      cellularUseErrors = v19;
    }
  }

  v20 = [NSSet setWithArray:cellularUseErrors];
  allObjects = [v20 allObjects];

  v22 = nph_general_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 136315394;
    v25 = "[NPHCSBridgeCellularSettingsViewController _errorsForFooterMessage]";
    v26 = 2112;
    v27 = allObjects;
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%s - cellularUseErrors:%@", &v24, 0x16u);
  }

  return allObjects;
}

- (id)_footerStringForErrors
{
  _errorsForFooterMessage = [(NPHCSBridgeCellularSettingsViewController *)self _errorsForFooterMessage];
  if ([_errorsForFooterMessage count])
  {
    v3 = [_errorsForFooterMessage objectAtIndexedSubscript:0];
    userInfo = [v3 userInfo];
    v5 = [userInfo objectForKeyedSubscript:NSLocalizedDescriptionKey];

    v6 = [NSMutableString stringWithString:v5];
    if ([_errorsForFooterMessage count] >= 2)
    {
      v7 = 1;
      do
      {
        [v6 appendString:@"\r\r"];
        v8 = [_errorsForFooterMessage objectAtIndexedSubscript:v7];
        userInfo2 = [v8 userInfo];
        v10 = [userInfo2 objectForKeyedSubscript:NSLocalizedDescriptionKey];

        [v6 appendString:v10];
        ++v7;
      }

      while (v7 < [_errorsForFooterMessage count]);
    }
  }

  else
  {
    v6 = 0;
  }

  v11 = [v6 copy];

  return v11;
}

- (void)cellularPlansUpdated:(id)updated error:(id)error
{
  updatedCopy = updated;
  errorCopy = error;
  [(NPHCSBridgeCellularSettingsViewController *)self setReceivedRemotePlanInfo:1];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_9F30;
  v10[3] = &unk_1CB78;
  v11 = errorCopy;
  selfCopy = self;
  v13 = updatedCopy;
  v8 = updatedCopy;
  v9 = errorCopy;
  nph_ensure_on_main_queue(v10);
}

- (BOOL)_shouldShowCellularDataUsage
{
  appsDataUsageArray = [(NPHCSBridgeCellularSettingsViewController *)self appsDataUsageArray];
  if ([appsDataUsageArray count])
  {
    activeCellularPlans = [(NPHCSBridgeCellularSettingsViewController *)self activeCellularPlans];
    if ([activeCellularPlans count])
    {
      v5 = 1;
    }

    else
    {
      v5 = +[NPHSharedUtilities isActiveWatchChinaRegionCellular];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updateCellularDataUsageItems
{
  v3 = objc_alloc_init(NPHCSCellularDataUsageDataSource);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_A10C;
  v4[3] = &unk_1CBA0;
  v4[4] = self;
  [(NPHCSCellularDataUsageDataSource *)v3 getCellularDataUsage:v4];
}

- (void)_sortCellularDataUsageItems
{
  appsDataUsageArray = [(NPHCSBridgeCellularSettingsViewController *)self appsDataUsageArray];
  v3 = +[NPHCSAppCellularDataUsageItem userSelectedComparator];
  v4 = [appsDataUsageArray sortedArrayUsingComparator:v3];
  [(NPHCSBridgeCellularSettingsViewController *)self setAppsDataUsageArray:v4];
}

- (void)_setUpPlan
{
  v3 = nph_general_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[NPHCSBridgeCellularSettingsViewController _setUpPlan]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  [(NPHCSBridgeCellularSettingsViewController *)self _getTinkerDeviceAssertion];
  v4 = [[NPHCellularSetupViewController alloc] initWithConfiguration:1];
  v5 = [[UINavigationController alloc] initWithRootViewController:v4];
  [(NPHCSBridgeCellularSettingsViewController *)self presentViewController:v5 animated:1 completion:&stru_1CBC0];
}

- (void)_clearStats
{
  v12 = kCTCellularUsageDeviceID;
  v13 = kCTCellularUsageRemoteDevice;
  v2 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  CTSUServerConnectionRef();
  v3 = CTSUServerQueue();
  v4 = _CTServerConnectionEraseCellularDataUsageRecordsEx();

  v5 = nph_general_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v7 = "[NPHCSBridgeCellularSettingsViewController _clearStats]";
    v8 = 1024;
    v9 = v4;
    v10 = 1024;
    v11 = HIDWORD(v4);
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%s: domain: %d, error: %d", buf, 0x18u);
  }
}

- (void)simSetupFlowCompleted:(unint64_t)completed
{
  v4 = nph_general_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[NPHCSBridgeCellularSettingsViewController simSetupFlowCompleted:]";
    v7 = 2048;
    completedCopy = completed;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%s: %lu", &v5, 0x16u);
  }
}

- (BOOL)_deleteWillPerformEUICCReset:(id)reset
{
  resetCopy = reset;
  activeCellularPlans = [(NPHCSBridgeCellularSettingsViewController *)self activeCellularPlans];
  v6 = [activeCellularPlans count];
  inactiveCellularPlans = [(NPHCSBridgeCellularSettingsViewController *)self inactiveCellularPlans];
  if (&v6[[inactiveCellularPlans count]] == &dword_0 + 1)
  {
    isDeleteNotAllowed = 1;
  }

  else
  {
    plan = [resetCopy plan];
    isDeleteNotAllowed = [plan isDeleteNotAllowed];
  }

  return isDeleteNotAllowed;
}

- (void)_showManageOrDeleteForCellularPlanItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  if ([(NPHCSBridgeCellularSettingsViewController *)self _deleteWillPerformEUICCReset:itemCopy])
  {
    activeCellularPlans = [(NPHCSBridgeCellularSettingsViewController *)self activeCellularPlans];
    v6 = [activeCellularPlans count];
    inactiveCellularPlans = [(NPHCSBridgeCellularSettingsViewController *)self inactiveCellularPlans];
    v8 = &v6[[inactiveCellularPlans count]] > &dword_0 + 1;
  }

  else
  {
    v8 = 0;
  }

  name = [itemCopy name];
  v9 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:0];
  plan = [itemCopy plan];
  accountURL = [plan accountURL];
  v12 = [accountURL length];

  if (v12)
  {
    v13 = nph_general_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      plan2 = [itemCopy plan];
      accountURL2 = [plan2 accountURL];
      *buf = 138412290;
      v40 = accountURL2;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "manage plan URL:%@", buf, 0xCu);
    }

    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"MANAGE_PLAN_ACTION" value:&stru_1CD90 table:0];
    v18 = [NSString stringWithFormat:v17, name];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_ACCC;
    v36[3] = &unk_1CB30;
    v37 = itemCopy;
    selfCopy2 = self;
    v19 = [UIAlertAction actionWithTitle:v18 style:0 handler:v36];

    [v9 addAction:v19];
  }

  v20 = @"REMOVE_PLAN_ACTION";
  if (v8)
  {
    v20 = @"REMOVE_MULTILE_PLANS_ACTION";
  }

  v30 = v8;
  v21 = v20;
  v22 = [NSBundle bundleForClass:objc_opt_class()];
  v23 = [v22 localizedStringForKey:v21 value:&stru_1CD90 table:0];

  v24 = [NSString stringWithFormat:v23, name];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_AEC4;
  v33[3] = &unk_1CC38;
  v33[4] = self;
  v34 = itemCopy;
  v35 = v30;
  v25 = itemCopy;
  v26 = [UIAlertAction actionWithTitle:v24 style:2 handler:v33];

  [v9 addAction:v26];
  v27 = [NSBundle bundleForClass:objc_opt_class()];
  v28 = [v27 localizedStringForKey:@"MANAGE_OR_REMOVE_PLAN_CANCEL" value:&stru_1CD90 table:0];
  v29 = [UIAlertAction actionWithTitle:v28 style:1 handler:0];

  [v9 addAction:v29];
  [(NPHCSBridgeCellularSettingsViewController *)selfCopy presentViewController:v9 animated:1 completion:0];
}

- (void)_promptUserToConfirmPlanRemoval:(id)removal willRemoveMoreThanOnePlan:(BOOL)plan
{
  planCopy = plan;
  removalCopy = removal;
  v7 = nph_general_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = removalCopy;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "cellularPlanItem:%@", buf, 0xCu);
  }

  v8 = @"REMOVE_PLAN_CONFIRMATION_MESSAGE";
  if (planCopy)
  {
    v8 = @"REMOVE_MORE_THAN_ONE_PLAN_CONFIRMATION_MESSAGE";
    v9 = @"REMOVE_MORE_THAN_ONE_PLAN_ACTION";
  }

  else
  {
    v9 = @"REMOVE_PLAN_ACTION";
  }

  v10 = v8;
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:v10 value:&stru_1CD90 table:0];

  name = [removalCopy name];
  name2 = [removalCopy name];
  v15 = [NSString stringWithFormat:v12, name, name2];
  v16 = [UIAlertController alertControllerWithTitle:0 message:v15 preferredStyle:0];

  v17 = v9;
  v18 = [NSBundle bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:v17 value:&stru_1CD90 table:0];

  name3 = [removalCopy name];
  v21 = [NSString stringWithFormat:v19, name3];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_B28C;
  v28[3] = &unk_1CB30;
  v29 = removalCopy;
  selfCopy = self;
  v22 = removalCopy;
  v23 = [UIAlertAction actionWithTitle:v21 style:2 handler:v28];

  [v16 addAction:v23];
  v24 = [NSBundle bundleForClass:objc_opt_class()];
  v25 = [v24 localizedStringForKey:@"REMOVE_PLAN_CANCEL" value:&stru_1CD90 table:0];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_B33C;
  v27[3] = &unk_1CC60;
  v27[4] = self;
  v26 = [UIAlertAction actionWithTitle:v25 style:1 handler:v27];

  [v16 addAction:v26];
  [(NPHCSBridgeCellularSettingsViewController *)self presentViewController:v16 animated:1 completion:0];
}

- (void)_removePlan:(id)plan
{
  planCopy = plan;
  v5 = nph_general_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[NPHCSBridgeCellularSettingsViewController _removePlan:]";
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  [(NPHCSBridgeCellularSettingsViewController *)self _getTinkerDeviceAssertion];
  v6 = [(NPHCSBridgeCellularSettingsViewController *)self _deleteWillPerformEUICCReset:planCopy];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_B4F4;
  v16 = &unk_1CA90;
  v7 = planCopy;
  v17 = v7;
  selfCopy = self;
  v8 = objc_retainBlock(&v13);
  v9 = [CTCellularPlanManager sharedManager:v13];
  v10 = v9;
  if (v6)
  {
    v11 = +[NPHCellularBridgeUIManager sharedInstance];
    _currentDeviceCSN = [v11 _currentDeviceCSN];
    [v10 eraseAllRemotePlansWithCSN:_currentDeviceCSN completion:v8];
  }

  else
  {
    [v9 didDeleteRemotePlanItem:v7 completion:v8];
  }
}

- (void)_getTinkerDeviceAssertion
{
  v3 = nph_general_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[NPHCSBridgeCellularSettingsViewController _getTinkerDeviceAssertion]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (+[NPHSharedUtilities isActiveDeviceTinker])
  {
    [(NPHCSBridgeCellularSettingsViewController *)self _extendBackgroundAssertion];
    if ([(NPHCSBridgeCellularSettingsViewController *)self tinkerCellularSetUpBackgroundTaskID]== UIBackgroundTaskInvalid)
    {
      v4 = +[UIApplication sharedApplication];
      -[NPHCSBridgeCellularSettingsViewController setTinkerCellularSetUpBackgroundTaskID:](self, "setTinkerCellularSetUpBackgroundTaskID:", [v4 beginBackgroundTaskWithName:@"Cellular-Setup-Flow" expirationHandler:&stru_1CC80]);
    }

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_B9AC;
    v8[3] = &unk_1CCA8;
    v8[4] = self;
    v5 = objc_retainBlock(v8);
    v6 = +[PDRRegistry sharedInstance];
    v7 = +[PDRDevice activeDevice];
    [v6 setActivePairedDevice:v7 resultsCallback:v5];
  }
}

- (void)_removeTinkerDeviceAssertion
{
  v3 = nph_general_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[NPHCSBridgeCellularSettingsViewController _removeTinkerDeviceAssertion]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  tinkerDeviceAssertion = [(NPHCSBridgeCellularSettingsViewController *)self tinkerDeviceAssertion];
  isActive = [tinkerDeviceAssertion isActive];

  if (isActive)
  {
    v6 = +[UIApplication sharedApplication];
    [v6 endBackgroundTask:{-[NPHCSBridgeCellularSettingsViewController tinkerCellularSetUpBackgroundTaskID](self, "tinkerCellularSetUpBackgroundTaskID")}];

    [(NPHCSBridgeCellularSettingsViewController *)self setTinkerCellularSetUpBackgroundTaskID:UIBackgroundTaskInvalid];
    tinkerDeviceAssertion2 = [(NPHCSBridgeCellularSettingsViewController *)self tinkerDeviceAssertion];
    [tinkerDeviceAssertion2 invalidate];
  }
}

- (void)_extendBackgroundAssertion
{
  v3 = nph_general_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[NPHCSBridgeCellularSettingsViewController _extendBackgroundAssertion]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%s Wants to take/extend background assertion timeout.", &v8, 0xCu);
  }

  tinkerCellularSetUpTaskCompletionTimeout = [(NPHCSBridgeCellularSettingsViewController *)self tinkerCellularSetUpTaskCompletionTimeout];
  [tinkerCellularSetUpTaskCompletionTimeout invalidate];

  v5 = [NSTimer timerWithTimeInterval:self target:"_expireTaskAssertion:" selector:0 userInfo:0 repeats:600.0];
  [(NPHCSBridgeCellularSettingsViewController *)self setTinkerCellularSetUpTaskCompletionTimeout:v5];

  v6 = +[NSRunLoop currentRunLoop];
  tinkerCellularSetUpTaskCompletionTimeout2 = [(NPHCSBridgeCellularSettingsViewController *)self tinkerCellularSetUpTaskCompletionTimeout];
  [v6 addTimer:tinkerCellularSetUpTaskCompletionTimeout2 forMode:NSRunLoopCommonModes];
}

- (void)_expireTaskAssertion:(id)assertion
{
  v4 = nph_general_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[NPHCSBridgeCellularSettingsViewController _expireTaskAssertion:]";
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%s Released Background Assertion due to a timeout.", &v7, 0xCu);
  }

  if ([(NPHCSBridgeCellularSettingsViewController *)self tinkerCellularSetUpBackgroundTaskID]!= UIBackgroundTaskInvalid)
  {
    v5 = nph_general_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[NPHCSBridgeCellularSettingsViewController _expireTaskAssertion:]";
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%s Setup Background Assertion Expired", &v7, 0xCu);
    }

    v6 = +[UIApplication sharedApplication];
    [v6 endBackgroundTask:{-[NPHCSBridgeCellularSettingsViewController tinkerCellularSetUpBackgroundTaskID](self, "tinkerCellularSetUpBackgroundTaskID")}];

    [(NPHCSBridgeCellularSettingsViewController *)self setTinkerCellularSetUpBackgroundTaskID:UIBackgroundTaskInvalid];
  }
}

@end