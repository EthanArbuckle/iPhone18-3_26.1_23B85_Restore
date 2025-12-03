@interface HSPCGuestAccessTableViewController
- (HSPCGuestAccessTableViewController)init;
- (HSPCGuestAccessTableViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (HSPCGuestAccessTableViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style;
- (id)_enableAccessIncludingGuestPinCodeItems:(id)items;
- (id)commitConfiguration;
- (void)_updateCellInTableView:(id)view atIndexPath:(id)path;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation HSPCGuestAccessTableViewController

- (HSPCGuestAccessTableViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  configCopy = config;
  v9 = +[HFHomeKitDispatcher sharedDispatcher];
  home = [configCopy home];
  v11 = [v9 pinCodeManagerForHome:home];

  v12 = [HSPCGuestAccessItemManager alloc];
  home2 = [configCopy home];
  addedAccessory = [configCopy addedAccessory];
  v15 = [(HSPCGuestAccessItemManager *)v12 initWithPinCodeManager:v11 delegate:self home:home2 forAccessory:addedAccessory];

  v20.receiver = self;
  v20.super_class = HSPCGuestAccessTableViewController;
  v16 = [(HSPCGuestAccessTableViewController *)&v20 initWithItemManager:v15 tableViewStyle:2];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_config, config);
    objc_storeStrong(&v17->_coordinator, coordinator);
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

- (HSPCGuestAccessTableViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style
{
  v6 = [NSAssertionHandler currentHandler:manager];
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
  tableView = [(HSPCGuestAccessTableViewController *)self tableView];
  [tableView setAllowsMultipleSelection:1];

  tableView2 = [(HSPCGuestAccessTableViewController *)self tableView];
  layer = [tableView2 layer];
  [layer setMasksToBounds:1];

  tableView3 = [(HSPCGuestAccessTableViewController *)self tableView];
  layer2 = [tableView3 layer];
  [layer2 setCornerRadius:20.0];

  tableView4 = [(HSPCGuestAccessTableViewController *)self tableView];
  [tableView4 setEstimatedRowHeight:88.0];

  tableView5 = [(HSPCGuestAccessTableViewController *)self tableView];
  [tableView5 setRowHeight:UITableViewAutomaticDimension];
}

- (id)_enableAccessIncludingGuestPinCodeItems:(id)items
{
  itemsCopy = items;
  objc_opt_class();
  itemManager = [(HSPCGuestAccessTableViewController *)self itemManager];
  if (objc_opt_isKindOfClass())
  {
    v6 = itemManager;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  pinCodeManager = [v7 pinCodeManager];
  config = [(HSPCGuestAccessTableViewController *)self config];
  addedAccessory = [config addedAccessory];
  v11 = [pinCodeManager enablePinCodesForNewAccessory:addedAccessory forGuestItems:itemsCopy];

  return v11;
}

- (void)_updateCellInTableView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  itemManager = [(HSPCGuestAccessTableViewController *)self itemManager];
  v10 = [itemManager displayedItemAtIndexPath:pathCopy];

  v9 = [viewCopy cellForRowAtIndexPath:pathCopy];

  [(HSPCGuestAccessTableViewController *)self updateCell:v9 forItem:v10 indexPath:pathCopy animated:1];
}

- (id)commitConfiguration
{
  commitInProgress = [(HSPCGuestAccessTableViewController *)self commitInProgress];
  if (commitInProgress && (v4 = commitInProgress, -[HSPCGuestAccessTableViewController commitInProgress](self, "commitInProgress"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isFinished], v5, v4, (v6 & 1) == 0))
  {
    v26 = [NAFuture futureWithResult:&off_1000CD2A0];
  }

  else
  {
    tableView = [(HSPCGuestAccessTableViewController *)self tableView];
    indexPathsForSelectedRows = [tableView indexPathsForSelectedRows];

    v9 = +[NSMutableArray array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v10 = indexPathsForSelectedRows;
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
          itemManager = [(HSPCGuestAccessTableViewController *)self itemManager];
          v17 = [itemManager displayedItemAtIndexPath:v15];

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

    itemManager2 = [(HSPCGuestAccessTableViewController *)self itemManager];
    [itemManager2 disableExternalUpdatesWithReason:@"setupGuestAccessTableViewControllerUpdatesDisabledReason "];

    commitInProgress2 = [(HSPCGuestAccessTableViewController *)self commitInProgress];
    v25 = [commitInProgress2 flatMap:&stru_1000C5698];
    v26 = [v25 recover:&stru_1000C56D8];
  }

  return v26;
}

- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  v19.receiver = self;
  v19.super_class = HSPCGuestAccessTableViewController;
  [(HSPCGuestAccessTableViewController *)&v19 setupCell:cellCopy forItem:itemCopy indexPath:path];
  objc_opt_class();
  v10 = itemCopy;
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
    imageProperties = [v14 imageProperties];
    [imageProperties setReservedLayoutSize:{v15, v15}];

    v17 = +[UIColor systemGray2Color];
    imageProperties2 = [v14 imageProperties];
    [imageProperties2 setTintColor:v17];

    [v14 setAxesPreservingSuperviewLayoutMargins:2];
    [cellCopy setContentConfiguration:v14];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v8.receiver = self;
  v8.super_class = HSPCGuestAccessTableViewController;
  pathCopy = path;
  viewCopy = view;
  [(HSPCGuestAccessTableViewController *)&v8 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  [(HSPCGuestAccessTableViewController *)self _updateCellInTableView:viewCopy atIndexPath:pathCopy, v8.receiver, v8.super_class];
}

@end