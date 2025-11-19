@interface HSPCGuestAccessTableViewController
- (HSPCGuestAccessTableViewController)init;
- (HSPCGuestAccessTableViewController)initWithCoordinator:(id)a3 config:(id)a4;
- (HSPCGuestAccessTableViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4;
- (id)_enableAccessIncludingGuestPinCodeItems:(id)a3;
- (id)commitConfiguration;
- (void)_updateCellInTableView:(id)a3 atIndexPath:(id)a4;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation HSPCGuestAccessTableViewController

- (HSPCGuestAccessTableViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = +[HFHomeKitDispatcher sharedDispatcher];
  v10 = [v8 home];
  v11 = [v9 pinCodeManagerForHome:v10];

  v12 = [HSPCGuestAccessItemManager alloc];
  v13 = [v8 home];
  v14 = [v8 addedAccessory];
  v15 = [(HSPCGuestAccessItemManager *)v12 initWithPinCodeManager:v11 delegate:self home:v13 forAccessory:v14];

  v20.receiver = self;
  v20.super_class = HSPCGuestAccessTableViewController;
  v16 = [(HSPCGuestAccessTableViewController *)&v20 initWithItemManager:v15 tableViewStyle:2];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_config, a4);
    objc_storeStrong(&v17->_coordinator, a3);
    commitInProgress = v17->_commitInProgress;
    v17->_commitInProgress = 0;
  }

  return v17;
}

- (HSPCGuestAccessTableViewController)init
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = NSStringFromSelector("initWithCoordinator:config:");
  [v4 handleFailureInMethod:a2 object:self file:@"HSPCGuestAccessTableViewController.m" lineNumber:56 description:{@"%s is unavailable; use %@ instead", "-[HSPCGuestAccessTableViewController init]", v5}];

  return 0;
}

- (HSPCGuestAccessTableViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4
{
  v6 = [NSAssertionHandler currentHandler:a3];
  v7 = NSStringFromSelector("initWithCoordinator:config:");
  [v6 handleFailureInMethod:a2 object:self file:@"HSPCGuestAccessTableViewController.m" lineNumber:62 description:{@"%s is unavailable; use %@ instead", "-[HSPCGuestAccessTableViewController initWithItemManager:tableViewStyle:]", v7}];

  return 0;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = HSPCGuestAccessTableViewController;
  [(HSPCGuestAccessTableViewController *)&v10 viewDidLoad];
  [(HSPCGuestAccessTableViewController *)self setWantsPreferredContentSize:1];
  v3 = [(HSPCGuestAccessTableViewController *)self tableView];
  [v3 setAllowsMultipleSelection:1];

  v4 = [(HSPCGuestAccessTableViewController *)self tableView];
  v5 = [v4 layer];
  [v5 setMasksToBounds:1];

  v6 = [(HSPCGuestAccessTableViewController *)self tableView];
  v7 = [v6 layer];
  [v7 setCornerRadius:20.0];

  v8 = [(HSPCGuestAccessTableViewController *)self tableView];
  [v8 setEstimatedRowHeight:88.0];

  v9 = [(HSPCGuestAccessTableViewController *)self tableView];
  [v9 setRowHeight:UITableViewAutomaticDimension];
}

- (id)_enableAccessIncludingGuestPinCodeItems:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(HSPCGuestAccessTableViewController *)self itemManager];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 pinCodeManager];
  v9 = [(HSPCGuestAccessTableViewController *)self config];
  v10 = [v9 addedAccessory];
  v11 = [v8 enablePinCodesForNewAccessory:v10 forGuestItems:v4];

  return v11;
}

- (void)_updateCellInTableView:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HSPCGuestAccessTableViewController *)self itemManager];
  v10 = [v8 displayedItemAtIndexPath:v6];

  v9 = [v7 cellForRowAtIndexPath:v6];

  [(HSPCGuestAccessTableViewController *)self updateCell:v9 forItem:v10 indexPath:v6 animated:1];
}

- (id)commitConfiguration
{
  v3 = [(HSPCGuestAccessTableViewController *)self commitInProgress];
  if (v3 && (v4 = v3, -[HSPCGuestAccessTableViewController commitInProgress](self, "commitInProgress"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isFinished], v5, v4, (v6 & 1) == 0))
  {
    v26 = [NAFuture futureWithResult:&off_1000CD2A0];
  }

  else
  {
    v7 = [(HSPCGuestAccessTableViewController *)self tableView];
    v8 = [v7 indexPathsForSelectedRows];

    v9 = +[NSMutableArray array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v30;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v30 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v29 + 1) + 8 * i);
          v16 = [(HSPCGuestAccessTableViewController *)self itemManager];
          v17 = [v16 displayedItemAtIndexPath:v15];

          objc_opt_class();
          v18 = v17;
          if (objc_opt_isKindOfClass())
          {
            v19 = v18;
          }

          else
          {
            v19 = 0;
          }

          v20 = v19;

          [v9 na_safeAddObject:v20];
        }

        v12 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v12);
    }

    v21 = [(HSPCGuestAccessTableViewController *)self _enableAccessIncludingGuestPinCodeItems:v9];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100003ED0;
    v28[3] = &unk_1000C5658;
    v28[4] = self;
    v22 = [v21 addCompletionBlock:v28];
    [(HSPCGuestAccessTableViewController *)self setCommitInProgress:v22];

    v23 = [(HSPCGuestAccessTableViewController *)self itemManager];
    [v23 disableExternalUpdatesWithReason:@"setupGuestAccessTableViewControllerUpdatesDisabledReason "];

    v24 = [(HSPCGuestAccessTableViewController *)self commitInProgress];
    v25 = [v24 flatMap:&stru_1000C5698];
    v26 = [v25 recover:&stru_1000C56D8];
  }

  return v26;
}

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v19.receiver = self;
  v19.super_class = HSPCGuestAccessTableViewController;
  [(HSPCGuestAccessTableViewController *)&v19 setupCell:v8 forItem:v9 indexPath:a5];
  objc_opt_class();
  v10 = v9;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    v13 = +[UIListContentConfiguration cellConfiguration];
    v14 = [HUListContentConfigurationUtilities labelConfiguration:v13 forItem:v12];

    [v14 setPrefersSideBySideTextAndSecondaryText:0];
    v15 = HUDefaultAvatarSize;
    v16 = [v14 imageProperties];
    [v16 setReservedLayoutSize:{v15, v15}];

    v17 = +[UIColor systemGray2Color];
    v18 = [v14 imageProperties];
    [v18 setTintColor:v17];

    [v14 setAxesPreservingSuperviewLayoutMargins:2];
    [v8 setContentConfiguration:v14];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v8.receiver = self;
  v8.super_class = HSPCGuestAccessTableViewController;
  v6 = a4;
  v7 = a3;
  [(HSPCGuestAccessTableViewController *)&v8 tableView:v7 didSelectRowAtIndexPath:v6];
  [(HSPCGuestAccessTableViewController *)self _updateCellInTableView:v7 atIndexPath:v6, v8.receiver, v8.super_class];
}

@end