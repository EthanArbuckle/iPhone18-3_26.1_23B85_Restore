@interface COSManualPairingViewController
- (BOOL)updateDiscoveredDevices;
- (COSManualPairingViewController)initWithStyle:(int64_t)style;
- (Class)headerClass;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)cellNameForRow:(int64_t)row;
- (id)didSelectRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_reloadDataForUI;
- (void)beginDiscovery;
- (void)controllerCancelled:(id)cancelled;
- (void)endDiscovery;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation COSManualPairingViewController

- (COSManualPairingViewController)initWithStyle:(int64_t)style
{
  v24.receiver = self;
  v24.super_class = COSManualPairingViewController;
  v3 = [(COSManualPairingViewController *)&v24 initWithStyle:style];
  v4 = v3;
  if (v3)
  {
    tableView = [(COSManualPairingViewController *)v3 tableView];
    [tableView setDelegate:v4];

    tableView2 = [(COSManualPairingViewController *)v4 tableView];
    [tableView2 setDataSource:v4];

    v7 = objc_alloc_init(NSMutableArray);
    displayedDeviceNames = v4->_displayedDeviceNames;
    v4->_displayedDeviceNames = v7;

    v9 = [objc_alloc(-[COSManualPairingViewController headerClass](v4 "headerClass"))];
    headerView = v4->_headerView;
    v4->_headerView = v9;

    v11 = [UIBarButtonItem alloc];
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"CANCEL" value:&stru_10026E598 table:@"Localizable"];
    v14 = [v11 initWithTitle:v13 style:0 target:v4 action:"controllerCancelled:"];

    navigationItem = [(COSManualPairingViewController *)v4 navigationItem];
    [navigationItem setRightBarButtonItem:v14];

    tableView3 = [(COSManualPairingViewController *)v4 tableView];
    [tableView3 registerClass:objc_opt_class() forCellReuseIdentifier:@"SecurePairingCellID"];

    tableView4 = [(COSManualPairingViewController *)v4 tableView];
    v18 = BPSSeparatorColor();
    [tableView4 setSeparatorColor:v18];

    view = [(COSManualPairingViewController *)v4 view];
    v20 = +[UIColor clearColor];
    [view setBackgroundColor:v20];

    view2 = [(COSManualPairingViewController *)v4 view];
    v22 = BPSSetupTintColor();
    [view2 setTintColor:v22];
  }

  return v4;
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = COSManualPairingViewController;
  [(COSManualPairingViewController *)&v6 viewWillAppear:appear];
  [(COSManualPairingViewController *)self beginDiscovery];
  if (!self->_tableUpdateTimer)
  {
    v4 = [NSTimer scheduledTimerWithTimeInterval:self target:"_reloadDataForUI" selector:0 userInfo:1 repeats:1.5];
    tableUpdateTimer = self->_tableUpdateTimer;
    self->_tableUpdateTimer = v4;
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = COSManualPairingViewController;
  [(COSManualPairingViewController *)&v5 viewWillDisappear:disappear];
  [(NSTimer *)self->_tableUpdateTimer invalidate];
  tableUpdateTimer = self->_tableUpdateTimer;
  self->_tableUpdateTimer = 0;

  [(COSManualPairingViewController *)self endDiscovery];
}

- (void)_reloadDataForUI
{
  if ([(COSManualPairingViewController *)self updateDiscoveredDevices])
  {
    tableView = [(COSManualPairingViewController *)self tableView];
    [tableView reloadData];
  }
}

- (void)controllerCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  navigationController = [(COSManualPairingViewController *)self navigationController];
  if (objc_opt_respondsToSelector())
  {
    [navigationController controllerCancelled:cancelledCopy];
  }
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  view = [(COSManualPairingViewController *)self view];
  [view bounds];
  Width = CGRectGetWidth(v16);
  [viewCopy _sectionContentInset];
  v9 = v8;
  [viewCopy _sectionContentInset];
  v11 = v10;

  [(COSManualPairingHeader *)self->_headerView sizeThatFits:Width - (v9 + v11), 0.0];
  v13 = v12;
  [(COSManualPairingHeader *)self->_headerView setFrame:CGPointZero.x, CGPointZero.y, v14, v12];
  return v13;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:? animated:?];
  if ([(NSMutableArray *)self->_displayedDeviceNames count])
  {
    navigationController = [(COSManualPairingViewController *)self navigationController];
    v7 = [(COSManualPairingViewController *)self didSelectRowAtIndexPath:pathCopy];
    [navigationController pushViewController:v7 animated:1];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"SecurePairingCellID"];
  if ([(NSMutableArray *)self->_displayedDeviceNames count])
  {
    v8 = -[COSManualPairingViewController cellNameForRow:](self, "cellNameForRow:", [pathCopy row]);
    v9 = 1;
  }

  else
  {
    v9 = 0;
    v8 = &stru_10026E598;
  }

  [v7 setAccessoryType:v9];
  textLabel = [v7 textLabel];
  [textLabel setText:v8];

  textLabel2 = [v7 textLabel];
  v12 = BPSTextColor();
  [textLabel2 setTextColor:v12];

  v13 = BPSForegroundColor();
  [v7 setBackgroundColor:v13];

  accessoryView = [v7 accessoryView];
  v15 = BPSAccessoryColor();
  [accessoryView setTintColor:v15];

  v16 = objc_alloc_init(UIView);
  v17 = BPSCellHightlightColor();
  [v16 setBackgroundColor:v17];

  [v7 setSelectedBackgroundView:v16];

  return v7;
}

- (Class)headerClass
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[COSManualPairingViewController headerClass]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s should be overridden by subclasses", &v4, 0xCu);
  }

  return 0;
}

- (BOOL)updateDiscoveredDevices
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[COSManualPairingViewController updateDiscoveredDevices]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s should be overridden by subclasses", &v4, 0xCu);
  }

  return 0;
}

- (void)beginDiscovery
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[COSManualPairingViewController beginDiscovery]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s should be overridden by subclasses", &v3, 0xCu);
  }
}

- (void)endDiscovery
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[COSManualPairingViewController endDiscovery]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s should be overridden by subclasses", &v3, 0xCu);
  }
}

- (id)cellNameForRow:(int64_t)row
{
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[COSManualPairingViewController cellNameForRow:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s should be overridden by subclasses", &v5, 0xCu);
  }

  return &stru_10026E598;
}

- (id)didSelectRowAtIndexPath:(id)path
{
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[COSManualPairingViewController didSelectRowAtIndexPath:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s should be overridden by subclasses", &v5, 0xCu);
  }

  return 0;
}

@end