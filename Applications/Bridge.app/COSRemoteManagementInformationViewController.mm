@interface COSRemoteManagementInformationViewController
+ (BOOL)controllerNeedsToRun;
- (COSRemoteManagementInformationViewController)init;
- (id)alternateButtonTitle;
- (id)detailString;
- (id)localizedWaitScreenDescription;
- (id)suggestedButtonTitle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)titleString;
- (void)didEstablishHold;
- (void)discoveryOperationComplete;
- (void)remoteManagementInformationCell:(id)cell buttonPressed:(id)pressed;
- (void)suggestedButtonPressed:(id)pressed;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation COSRemoteManagementInformationViewController

+ (BOOL)controllerNeedsToRun
{
  setupController = [UIApp setupController];
  offerYorktownForCurrentPairing = [setupController offerYorktownForCurrentPairing];

  return offerYorktownForCurrentPairing;
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

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = COSRemoteManagementInformationViewController;
  [(COSRemoteManagementInformationViewController *)&v4 viewWillAppear:appear];
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

- (void)suggestedButtonPressed:(id)pressed
{
  if (_os_feature_enabled_impl())
  {
    buddyWatchDiscoveryMonitor = self->_buddyWatchDiscoveryMonitor;

    [(COSBuddyWatchDiscoveryMonitor *)buddyWatchDiscoveryMonitor discoverWatchesOrShowSpinner];
  }

  else
  {
    delegate = [(COSRemoteManagementInformationViewController *)self delegate];
    [delegate buddyControllerDone:self];
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
  delegate = [(COSRemoteManagementInformationViewController *)self delegate];
  [delegate buddyControllerDone:self];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v5 = [view dequeueReusableCellWithIdentifier:@"COSRemoteManagementInformationCell" forIndexPath:path];
  [v5 setDelegate:self];

  return v5;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  v5 = [view dequeueReusableHeaderFooterViewWithIdentifier:{@"COSRemoteManagementInformationHeder", section}];
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
  contentView = [(COSRemoteManagementInformationViewController *)self contentView];
  v6 = contentView;
  if (self)
  {
    v7 = self->_tableView;
  }

  else
  {
    v7 = 0;
  }

  [contentView addSubview:v7];

  contentView2 = [(COSRemoteManagementInformationViewController *)self contentView];
  topAnchor = [contentView2 topAnchor];
  if (self)
  {
    sub_10003B11C();
  }

  else
  {
    v9 = 0;
  }

  v38 = v9;
  topAnchor2 = [v38 topAnchor];
  v36 = [topAnchor constraintEqualToAnchor:?];
  v42[0] = v36;
  contentView3 = [(COSRemoteManagementInformationViewController *)self contentView];
  bottomAnchor = [contentView3 bottomAnchor];
  if (self)
  {
    sub_10003B11C();
  }

  else
  {
    v11 = 0;
  }

  v33 = v11;
  bottomAnchor2 = [v33 bottomAnchor];
  v31 = [bottomAnchor constraintEqualToAnchor:?];
  v42[1] = v31;
  contentView4 = [(COSRemoteManagementInformationViewController *)self contentView];
  leadingAnchor = [contentView4 leadingAnchor];
  if (self)
  {
    sub_10003B11C();
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  leadingAnchor2 = [v14 leadingAnchor];
  v29 = leadingAnchor;
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v42[2] = v16;
  contentView5 = [(COSRemoteManagementInformationViewController *)self contentView];
  trailingAnchor = [contentView5 trailingAnchor];
  v39 = topAnchor;
  v34 = bottomAnchor;
  if (self)
  {
    sub_10003B11C();
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;
  trailingAnchor2 = [v20 trailingAnchor];
  v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
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

- (void)remoteManagementInformationCell:(id)cell buttonPressed:(id)pressed
{
  v6 = [COSNavigationController alloc];
  sub_100187260(self);
  objc_claimAutoreleasedReturnValue();
  v7 = [sub_10003B104() initWithRootViewController:?];

  [v7 setModalPresentationStyle:5];
  [(COSRemoteManagementInformationViewController *)self presentViewController:v7 animated:1 completion:0];
}

@end