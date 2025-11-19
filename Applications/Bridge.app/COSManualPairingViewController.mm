@interface COSManualPairingViewController
- (BOOL)updateDiscoveredDevices;
- (COSManualPairingViewController)initWithStyle:(int64_t)a3;
- (Class)headerClass;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)cellNameForRow:(int64_t)a3;
- (id)didSelectRowAtIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_reloadDataForUI;
- (void)beginDiscovery;
- (void)controllerCancelled:(id)a3;
- (void)endDiscovery;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation COSManualPairingViewController

- (COSManualPairingViewController)initWithStyle:(int64_t)a3
{
  v24.receiver = self;
  v24.super_class = COSManualPairingViewController;
  v3 = [(COSManualPairingViewController *)&v24 initWithStyle:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(COSManualPairingViewController *)v3 tableView];
    [v5 setDelegate:v4];

    v6 = [(COSManualPairingViewController *)v4 tableView];
    [v6 setDataSource:v4];

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

    v15 = [(COSManualPairingViewController *)v4 navigationItem];
    [v15 setRightBarButtonItem:v14];

    v16 = [(COSManualPairingViewController *)v4 tableView];
    [v16 registerClass:objc_opt_class() forCellReuseIdentifier:@"SecurePairingCellID"];

    v17 = [(COSManualPairingViewController *)v4 tableView];
    v18 = BPSSeparatorColor();
    [v17 setSeparatorColor:v18];

    v19 = [(COSManualPairingViewController *)v4 view];
    v20 = +[UIColor clearColor];
    [v19 setBackgroundColor:v20];

    v21 = [(COSManualPairingViewController *)v4 view];
    v22 = BPSSetupTintColor();
    [v21 setTintColor:v22];
  }

  return v4;
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = COSManualPairingViewController;
  [(COSManualPairingViewController *)&v6 viewWillAppear:a3];
  [(COSManualPairingViewController *)self beginDiscovery];
  if (!self->_tableUpdateTimer)
  {
    v4 = [NSTimer scheduledTimerWithTimeInterval:self target:"_reloadDataForUI" selector:0 userInfo:1 repeats:1.5];
    tableUpdateTimer = self->_tableUpdateTimer;
    self->_tableUpdateTimer = v4;
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = COSManualPairingViewController;
  [(COSManualPairingViewController *)&v5 viewWillDisappear:a3];
  [(NSTimer *)self->_tableUpdateTimer invalidate];
  tableUpdateTimer = self->_tableUpdateTimer;
  self->_tableUpdateTimer = 0;

  [(COSManualPairingViewController *)self endDiscovery];
}

- (void)_reloadDataForUI
{
  if ([(COSManualPairingViewController *)self updateDiscoveredDevices])
  {
    v3 = [(COSManualPairingViewController *)self tableView];
    [v3 reloadData];
  }
}

- (void)controllerCancelled:(id)a3
{
  v5 = a3;
  v4 = [(COSManualPairingViewController *)self navigationController];
  if (objc_opt_respondsToSelector())
  {
    [v4 controllerCancelled:v5];
  }
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v5 = a3;
  v6 = [(COSManualPairingViewController *)self view];
  [v6 bounds];
  Width = CGRectGetWidth(v16);
  [v5 _sectionContentInset];
  v9 = v8;
  [v5 _sectionContentInset];
  v11 = v10;

  [(COSManualPairingHeader *)self->_headerView sizeThatFits:Width - (v9 + v11), 0.0];
  v13 = v12;
  [(COSManualPairingHeader *)self->_headerView setFrame:CGPointZero.x, CGPointZero.y, v14, v12];
  return v13;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v8 = a4;
  [a3 deselectRowAtIndexPath:? animated:?];
  if ([(NSMutableArray *)self->_displayedDeviceNames count])
  {
    v6 = [(COSManualPairingViewController *)self navigationController];
    v7 = [(COSManualPairingViewController *)self didSelectRowAtIndexPath:v8];
    [v6 pushViewController:v7 animated:1];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"SecurePairingCellID"];
  if ([(NSMutableArray *)self->_displayedDeviceNames count])
  {
    v8 = -[COSManualPairingViewController cellNameForRow:](self, "cellNameForRow:", [v6 row]);
    v9 = 1;
  }

  else
  {
    v9 = 0;
    v8 = &stru_10026E598;
  }

  [v7 setAccessoryType:v9];
  v10 = [v7 textLabel];
  [v10 setText:v8];

  v11 = [v7 textLabel];
  v12 = BPSTextColor();
  [v11 setTextColor:v12];

  v13 = BPSForegroundColor();
  [v7 setBackgroundColor:v13];

  v14 = [v7 accessoryView];
  v15 = BPSAccessoryColor();
  [v14 setTintColor:v15];

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

- (id)cellNameForRow:(int64_t)a3
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

- (id)didSelectRowAtIndexPath:(id)a3
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