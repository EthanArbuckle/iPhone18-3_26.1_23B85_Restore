@interface HSPCTroubleshootingTipsViewController
- (HSPCTroubleshootingTipsViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (UITableView)tableView;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (unint64_t)_tipCount;
- (unint64_t)_tipForIndexPath:(id)path;
- (void)actionInvokedForTip:(unint64_t)tip;
- (void)setPage:(unint64_t)page;
- (void)viewDidLoad;
@end

@implementation HSPCTroubleshootingTipsViewController

- (HSPCTroubleshootingTipsViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  configCopy = config;
  v9 = [[UITableView alloc] initWithFrame:0 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v10 = [[PRXScrollableContentView alloc] initWithCardStyle:0 scrollView:v9];
  v20.receiver = self;
  v20.super_class = HSPCTroubleshootingTipsViewController;
  v11 = [(HSPCTroubleshootingTipsViewController *)&v20 initWithContentView:v10];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_coordinator, coordinator);
    objc_storeStrong(&v12->_config, config);
    v13 = objc_storeWeak(&v12->_tableView, v9);
    [v9 setAllowsSelection:0];

    WeakRetained = objc_loadWeakRetained(&v12->_tableView);
    [WeakRetained setDataSource:v12];

    v15 = objc_loadWeakRetained(&v12->_tableView);
    [v15 setDelegate:v12];

    v16 = +[UIColor clearColor];
    v17 = objc_loadWeakRetained(&v12->_tableView);
    [v17 setSeparatorColor:v16];

    v18 = [(HSPCTroubleshootingTipsViewController *)v12 addProminentDismissButtonWithTitleKey:@"HUDoneTitle"];
  }

  return v12;
}

- (void)setPage:(unint64_t)page
{
  self->_page = page;
  if (page)
  {
    if (page != 1)
    {
      return;
    }

    v4 = @"HSTroubleshootingTipCantScanCodePageTitle";
  }

  else
  {
    v4 = @"HSTroubleshootingTipAccessoryNotShownPageTitle";
  }

  v5 = sub_100063A44(v4);
  [(HSPCTroubleshootingTipsViewController *)self setTitle:v5];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = HSPCTroubleshootingTipsViewController;
  [(HSPCTroubleshootingTipsViewController *)&v4 viewDidLoad];
  tableView = [(HSPCTroubleshootingTipsViewController *)self tableView];
  [tableView reloadData];
}

- (void)actionInvokedForTip:(unint64_t)tip
{
  if (tip)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      tipCopy = tip;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Unknown action to invoke for tip %lu", buf, 0xCu);
    }
  }

  else
  {
    coordinator = [(HSPCTroubleshootingTipsViewController *)self coordinator];
    v7 = [coordinator didReceiveSetupCode:0 withPayload:0 fromViewController:self];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000387E4;
    v9[3] = &unk_1000C6CA0;
    v9[4] = self;
    v8 = [v7 addCompletionBlock:v9];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"Cell"];
  if (!v7)
  {
    v7 = [[HSSetupTroubleshootingTipCell alloc] initWithStyle:0 reuseIdentifier:@"Cell"];
  }

  [(HSSetupTroubleshootingTipCell *)v7 setTip:[(HSPCTroubleshootingTipsViewController *)self _tipForIndexPath:pathCopy]];
  [(HSSetupTroubleshootingTipCell *)v7 setDelegate:self];

  return v7;
}

- (unint64_t)_tipForIndexPath:(id)path
{
  pathCopy = path;
  _tips = [(HSPCTroubleshootingTipsViewController *)self _tips];
  v6 = [_tips objectAtIndexedSubscript:{-[HSPCTroubleshootingTipsViewController page](self, "page")}];
  v7 = [pathCopy row];

  v8 = [v6 objectAtIndexedSubscript:v7];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (unint64_t)_tipCount
{
  _tips = [(HSPCTroubleshootingTipsViewController *)self _tips];
  v4 = [_tips objectAtIndexedSubscript:{-[HSPCTroubleshootingTipsViewController page](self, "page")}];
  v5 = [v4 count];

  return v5;
}

- (UITableView)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

@end