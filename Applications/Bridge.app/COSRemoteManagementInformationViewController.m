@interface COSRemoteManagementInformationViewController
+ (BOOL)controllerNeedsToRun;
- (COSRemoteManagementInformationViewController)init;
- (id)alternateButtonTitle;
- (id)detailString;
- (id)localizedWaitScreenDescription;
- (id)suggestedButtonTitle;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)titleString;
- (void)didEstablishHold;
- (void)discoveryOperationComplete;
- (void)remoteManagementInformationCell:(id)a3 buttonPressed:(id)a4;
- (void)suggestedButtonPressed:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation COSRemoteManagementInformationViewController

+ (BOOL)controllerNeedsToRun
{
  v2 = [UIApp setupController];
  v3 = [v2 offerYorktownForCurrentPairing];

  return v3;
}

- (COSRemoteManagementInformationViewController)init
{
  v7.receiver = self;
  v7.super_class = COSRemoteManagementInformationViewController;
  v2 = [(COSRemoteManagementInformationViewController *)&v7 initWithTitle:&stru_10026E598 detailText:0 icon:0 contentLayout:3];
  v3 = v2;
  if (v2)
  {
    [(COSRemoteManagementInformationViewController *)v2 setStyle:10];
    v4 = [[COSBuddyWatchDiscoveryMonitor alloc] initWithPresentingViewController:v3];
    buddyWatchDiscoveryMonitor = v3->_buddyWatchDiscoveryMonitor;
    v3->_buddyWatchDiscoveryMonitor = v4;

    [(COSBuddyWatchDiscoveryMonitor *)v3->_buddyWatchDiscoveryMonitor setDelegate:v3];
  }

  return v3;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = COSRemoteManagementInformationViewController;
  [(COSRemoteManagementInformationViewController *)&v4 viewWillAppear:a3];
  [(COSBuddyWatchDiscoveryMonitor *)self->_buddyWatchDiscoveryMonitor startDiscoveryCoordinator];
}

- (id)titleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"REMOTE_MANAGEMENT_TITLE" value:&stru_10026E598 table:@"Localizable-yorktown"];

  return v3;
}

- (id)detailString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"CLOUD_CONFIG_DESCRIPTION_MANDATORY" value:&stru_10026E598 table:@"Localizable-yorktown"];

  return v3;
}

- (id)suggestedButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"CONTINUE_ENROLLMENT" value:&stru_10026E598 table:@"Localizable-yorktown"];

  return v3;
}

- (void)suggestedButtonPressed:(id)a3
{
  if (_os_feature_enabled_impl())
  {
    buddyWatchDiscoveryMonitor = self->_buddyWatchDiscoveryMonitor;

    [(COSBuddyWatchDiscoveryMonitor *)buddyWatchDiscoveryMonitor discoverWatchesOrShowSpinner];
  }

  else
  {
    v5 = [(COSRemoteManagementInformationViewController *)self delegate];
    [v5 buddyControllerDone:self];
  }
}

- (id)alternateButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"CANCEL_AND_EXIT_PAIRING" value:&stru_10026E598 table:@"Localizable-yorktown"];

  return v3;
}

- (void)didEstablishHold
{
  v3 = dispatch_get_global_queue(25, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003AD8C;
  block[3] = &unk_1002682F0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (id)localizedWaitScreenDescription
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"WAITING_MESSAGE_FETCH_ORGANIZATION_INFORMATION" value:&stru_10026E598 table:@"Localizable-yorktown"];

  return v3;
}

- (void)discoveryOperationComplete
{
  v3 = [(COSRemoteManagementInformationViewController *)self delegate];
  [v3 buddyControllerDone:self];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = [a3 dequeueReusableCellWithIdentifier:@"COSRemoteManagementInformationCell" forIndexPath:a4];
  [v5 setDelegate:self];

  return v5;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v5 = [a3 dequeueReusableHeaderFooterViewWithIdentifier:{@"COSRemoteManagementInformationHeder", a4}];
  if (!self || (v6 = self->_organizationName) == 0)
  {
    v7 = +[NSBundle mainBundle];
    v6 = [v7 localizedStringForKey:@"UNKNOWN" value:&stru_10026E598 table:@"Localizable-yorktown"];
  }

  v8 = [(NSString *)v6 stringByAppendingString:@"\n"];

  [v5 setOrganizationName:v8];

  return v5;
}

- (void)viewDidLoad
{
  v41.receiver = self;
  v41.super_class = COSRemoteManagementInformationViewController;
  [(COSRemoteManagementInformationViewController *)&v41 viewDidLoad];
  v3 = [[COSSelfSizingTableView alloc] initWithFrame:2 style:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  sub_100187008(self, v3);

  if (self)
  {
    tableView = self->_tableView;
  }

  else
  {
    tableView = 0;
  }

  [(UITableView *)tableView setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [(COSRemoteManagementInformationViewController *)self contentView];
  v6 = v5;
  if (self)
  {
    v7 = self->_tableView;
  }

  else
  {
    v7 = 0;
  }

  [v5 addSubview:v7];

  v40 = [(COSRemoteManagementInformationViewController *)self contentView];
  v8 = [v40 topAnchor];
  if (self)
  {
    sub_10003B11C();
  }

  else
  {
    v9 = 0;
  }

  v38 = v9;
  v37 = [v38 topAnchor];
  v36 = [v8 constraintEqualToAnchor:?];
  v42[0] = v36;
  v35 = [(COSRemoteManagementInformationViewController *)self contentView];
  v10 = [v35 bottomAnchor];
  if (self)
  {
    sub_10003B11C();
  }

  else
  {
    v11 = 0;
  }

  v33 = v11;
  v32 = [v33 bottomAnchor];
  v31 = [v10 constraintEqualToAnchor:?];
  v42[1] = v31;
  v30 = [(COSRemoteManagementInformationViewController *)self contentView];
  v12 = [v30 leadingAnchor];
  if (self)
  {
    sub_10003B11C();
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  v15 = [v14 leadingAnchor];
  v29 = v12;
  v16 = [v12 constraintEqualToAnchor:v15];
  v42[2] = v16;
  v17 = [(COSRemoteManagementInformationViewController *)self contentView];
  v18 = [v17 trailingAnchor];
  v39 = v8;
  v34 = v10;
  if (self)
  {
    sub_10003B11C();
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;
  v21 = [v20 trailingAnchor];
  v22 = [v18 constraintEqualToAnchor:v21];
  v42[3] = v22;
  v23 = [NSArray arrayWithObjects:v42 count:4];
  [NSLayoutConstraint activateConstraints:v23];

  if (self)
  {
    v24 = self->_tableView;
    [(UITableView *)v24 registerClass:objc_opt_class() forCellReuseIdentifier:@"COSRemoteManagementInformationCell"];

    v25 = self->_tableView;
  }

  else
  {
    [0 registerClass:objc_opt_class() forCellReuseIdentifier:@"COSRemoteManagementInformationCell"];
    v25 = 0;
  }

  v26 = v25;
  [(UITableView *)v26 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"COSRemoteManagementInformationHeder"];

  if (self)
  {
    [sub_10003B128() setRowHeight:?];
    v27 = sub_10003B128();
  }

  else
  {
    [0 setRowHeight:UITableViewAutomaticDimension];
    v27 = 0;
  }

  [v27 setDelegate:self];
  if (self)
  {
    [sub_10003B128() setDataSource:self];
    v28 = sub_10003B128();
  }

  else
  {
    [0 setDataSource:0];
    v28 = 0;
  }

  [v28 setScrollEnabled:0];
}

- (void)remoteManagementInformationCell:(id)a3 buttonPressed:(id)a4
{
  v6 = [COSNavigationController alloc];
  sub_100187260(self);
  objc_claimAutoreleasedReturnValue();
  v7 = [sub_10003B104() initWithRootViewController:?];

  [v7 setModalPresentationStyle:5];
  [(COSRemoteManagementInformationViewController *)self presentViewController:v7 animated:1 completion:0];
}

@end