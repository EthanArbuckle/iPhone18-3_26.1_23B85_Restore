@interface COSInternalPairingDashboardViewController
- (COSInternalPairingDashboardViewController)init;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_updateDashBoardRows:(id)rows;
- (void)_updatePairingEvents:(id)events;
- (void)_updatePairingEventsWithEvent:(id)event;
- (void)addPairingDevice:(id)device;
- (void)dealloc;
- (void)decorateCell:(id)cell basedOnEvent:(id)event;
- (void)viewDidLoad;
@end

@implementation COSInternalPairingDashboardViewController

- (COSInternalPairingDashboardViewController)init
{
  v11.receiver = self;
  v11.super_class = COSInternalPairingDashboardViewController;
  v2 = [(COSInternalPairingDashboardViewController *)&v11 init];
  v3 = v2;
  if (v2)
  {
    tableView = [(COSInternalPairingDashboardViewController *)v2 tableView];
    [tableView setDelegate:v3];

    tableView2 = [(COSInternalPairingDashboardViewController *)v3 tableView];
    [tableView2 setDataSource:v3];

    tableView3 = [(COSInternalPairingDashboardViewController *)v3 tableView];
    [tableView3 registerClass:objc_opt_class() forCellReuseIdentifier:@"PairingDashboardCellID"];

    v7 = dispatch_queue_create("com.apple.InternalPairingDashboard", 0);
    [(COSInternalPairingDashboardViewController *)v3 setQueue:v7];

    v8 = objc_alloc_init(COSInternalPairingDashboardModel);
    [(COSInternalPairingDashboardViewController *)v3 setDashboardData:v8];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v3 selector:"_updatePairingEvents:" name:BRPairingMetricChangedNotification object:0];
  }

  return v3;
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = COSInternalPairingDashboardViewController;
  [(COSInternalPairingDashboardViewController *)&v13 viewDidLoad];
  v3 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  tableView = [(COSInternalPairingDashboardViewController *)self tableView];
  [tableView setTableFooterView:v7];

  v9 = BPSBackgroundColor();
  tableView2 = [(COSInternalPairingDashboardViewController *)self tableView];
  [tableView2 setBackgroundColor:v9];

  height = [[COSInternalPairingDashboardHeader alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  watchHeader = self->_watchHeader;
  self->_watchHeader = height;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:BRPairingMetricChangedNotification object:0];

  v4.receiver = self;
  v4.super_class = COSInternalPairingDashboardViewController;
  [(COSInternalPairingDashboardViewController *)&v4 dealloc];
}

- (void)_updatePairingEvents:(id)events
{
  userInfo = [events userInfo];
  v5 = [userInfo objectForKey:BRPairingChangedMetricKey];

  [(COSInternalPairingDashboardViewController *)self _updatePairingEventsWithEvent:v5];
  if ([v5 isEqualToString:@"PairingBeginsType"])
  {
    [(COSInternalPairingDashboardViewController *)self _updatePairingEventsWithEvent:@"PairingBeginsTime"];
  }
}

- (void)_updatePairingEventsWithEvent:(id)event
{
  eventCopy = event;
  queue = [(COSInternalPairingDashboardViewController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003CEEC;
  v7[3] = &unk_100268358;
  v7[4] = self;
  v8 = eventCopy;
  v6 = eventCopy;
  dispatch_async(queue, v7);
}

- (void)_updateDashBoardRows:(id)rows
{
  if ([rows count])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003D014;
    block[3] = &unk_1002682F0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)addPairingDevice:(id)device
{
  deviceCopy = device;
  pairingDevice = [(COSInternalPairingDashboardViewController *)self pairingDevice];

  if (!pairingDevice)
  {
    [(COSInternalPairingDashboardViewController *)self setPairingDevice:deviceCopy];
    watchHeader = [(COSInternalPairingDashboardViewController *)self watchHeader];
    [watchHeader refreshForWatchDetails:deviceCopy];
  }
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  v4 = [(COSInternalPairingDashboardViewController *)self watchHeader:view];
  [v4 totalHeaderHeight];
  v6 = v5 + 10.0;

  return v6;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(COSInternalPairingDashboardViewController *)self dashboardData:view];
  pairingEvents = [v4 pairingEvents];
  v6 = [pairingEvents count];

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  dashboardData = [(COSInternalPairingDashboardViewController *)self dashboardData];
  pairingEvents = [dashboardData pairingEvents];
  v10 = [pairingEvents objectAtIndex:{objc_msgSend(pathCopy, "row")}];

  v11 = [viewCopy dequeueReusableCellWithIdentifier:@"PairingDashboardCellID" forIndexPath:pathCopy];

  if (!v11)
  {
    v11 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"PairingDashboardCellID"];
  }

  textLabel = [v11 textLabel];
  dashboardKey = [v10 dashboardKey];
  [textLabel setText:dashboardKey];

  textLabel2 = [v11 textLabel];
  v15 = BPSTextColor();
  [textLabel2 setTextColor:v15];

  v16 = BPSAccessoryColor();
  [v11 setBackgroundColor:v16];

  accessoryView = [v11 accessoryView];
  v18 = BPSAccessoryColor();
  [accessoryView setTintColor:v18];

  v19 = objc_alloc_init(UIView);
  v20 = BPSCellHightlightColor();
  [v19 setBackgroundColor:v20];

  [v11 setSelectedBackgroundView:v19];
  [(COSInternalPairingDashboardViewController *)self decorateCell:v11 basedOnEvent:v10];

  return v11;
}

- (void)decorateCell:(id)cell basedOnEvent:(id)event
{
  cellCopy = cell;
  eventCopy = event;
  v6 = [UIImage systemImageNamed:@"checkmark.circle"];
  v7 = +[UIColor systemGreenColor];
  v8 = [v6 imageWithTintColor:v7 renderingMode:1];

  v9 = [UIImage systemImageNamed:@"xmark.circle"];
  v10 = +[UIColor systemGrayColor];
  v11 = [v9 imageWithTintColor:v10 renderingMode:1];

  eventValue = [eventCopy eventValue];

  if (eventValue)
  {
    eventValue2 = [eventCopy eventValue];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      eventValue3 = [eventCopy eventValue];
      if ([eventValue3 isEqual:&off_100281A38])
      {
        v16 = v8;
      }

      else
      {
        v16 = v11;
      }

      textLabel = v16;

      imageView = [cellCopy imageView];
      [imageView setImage:textLabel];
    }

    else
    {
      dashboardKey = [eventCopy dashboardKey];
      eventValue4 = [eventCopy eventValue];
      imageView = [NSString stringWithFormat:@"%@ : %@", dashboardKey, eventValue4];

      imageView2 = [cellCopy imageView];
      [imageView2 setImage:v8];

      textLabel = [cellCopy textLabel];
      [textLabel setText:imageView];
    }
  }

  else
  {
    imageView = [cellCopy imageView];
    [imageView setImage:v11];
  }
}

@end