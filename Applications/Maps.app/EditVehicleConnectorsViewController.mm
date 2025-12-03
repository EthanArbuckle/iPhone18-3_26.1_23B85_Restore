@interface EditVehicleConnectorsViewController
- (EditVehicleConnectorsViewController)initWithVehicle:(id)vehicle;
- (UILabel)tableFooterLabel;
- (UITableView)tableView;
- (UIView)tableFooterView;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)pressedCancel;
- (void)pressedDone;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation EditVehicleConnectorsViewController

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  v11 = [viewCopy cellForRowAtIndexPath:pathCopy];

  v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v11 connectorType]);
  v9 = [(NSMutableArray *)self->_currentConnectorTypes containsObject:v8];
  currentConnectorTypes = self->_currentConnectorTypes;
  if (v9)
  {
    [(NSMutableArray *)currentConnectorTypes removeObject:v8];
  }

  else
  {
    [(NSMutableArray *)currentConnectorTypes addObject:v8];
  }

  [v11 setActive:v9 ^ 1];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [viewCopy dequeueReusableCellWithIdentifier:v9 forIndexPath:pathCopy];

  v11 = VGChargingConnectorTypeOptionsList();
  v12 = [pathCopy row];

  v13 = [v11 objectAtIndexedSubscript:v12];

  [v10 setConnectorType:{objc_msgSend(v13, "unsignedIntegerValue")}];
  [v10 setActive:{-[NSMutableArray containsObject:](self->_currentConnectorTypes, "containsObject:", v13)}];
  [v10 setSelectionStyle:3];

  return v10;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = VGChargingConnectorTypeOptionsList();
  v5 = [v4 count];

  return v5;
}

- (void)pressedDone
{
  v3 = +[MKMapService sharedService];
  [v3 captureUserAction:41 onTarget:660 eventValue:0];

  [(VGVehicle *)self->_vehicle setSupportedConnectors:VGChargingConnectorTypeOptionsPacked()];
  v4 = +[VGVirtualGarageService sharedService];
  [v4 virtualGarageSaveVehicle:self->_vehicle];

  navigationController = [(EditVehicleConnectorsViewController *)self navigationController];
  v5 = [navigationController popViewControllerAnimated:1];
}

- (void)pressedCancel
{
  v3 = +[MKMapService sharedService];
  [v3 captureUserAction:34 onTarget:660 eventValue:0];

  navigationController = [(EditVehicleConnectorsViewController *)self navigationController];
  v4 = [navigationController popViewControllerAnimated:1];
}

- (void)viewDidLayoutSubviews
{
  v11.receiver = self;
  v11.super_class = EditVehicleConnectorsViewController;
  [(EditVehicleConnectorsViewController *)&v11 viewDidLayoutSubviews];
  tableView = [(EditVehicleConnectorsViewController *)self tableView];
  [tableView frame];
  v5 = v4;

  tableFooterLabel = [(EditVehicleConnectorsViewController *)self tableFooterLabel];
  [tableFooterLabel sizeThatFits:{v5 + -72.0, 1.79769313e308}];
  v8 = v7;

  tableFooterView = [(EditVehicleConnectorsViewController *)self tableFooterView];
  [tableFooterView setFrame:{0.0, 0.0, v5, v8}];

  tableFooterLabel2 = [(EditVehicleConnectorsViewController *)self tableFooterLabel];
  [tableFooterLabel2 setFrame:{36.0, 0.0, v5 + -72.0, v8}];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = EditVehicleConnectorsViewController;
  [(EditVehicleConnectorsViewController *)&v7 viewWillDisappear:disappear];
  traitCollection = [(EditVehicleConnectorsViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    v6 = +[UIApplication sharedMapsDelegate];
    [v6 setLockedOrientations:0];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v9.receiver = self;
  v9.super_class = EditVehicleConnectorsViewController;
  [(EditVehicleConnectorsViewController *)&v9 viewWillAppear:?];
  traitCollection = [(EditVehicleConnectorsViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    v7 = +[UIApplication sharedMapsDelegate];
    [v7 setLockedOrientations:2];

    v8 = +[UIDevice currentDevice];
    [v8 setOrientation:1 animated:appearCopy];
  }
}

- (void)viewDidLoad
{
  v28.receiver = self;
  v28.super_class = EditVehicleConnectorsViewController;
  [(EditVehicleConnectorsViewController *)&v28 viewDidLoad];
  v3 = +[UIColor systemGroupedBackgroundColor];
  view = [(EditVehicleConnectorsViewController *)self view];
  [view setBackgroundColor:v3];

  view2 = [(EditVehicleConnectorsViewController *)self view];
  tableView = [(EditVehicleConnectorsViewController *)self tableView];
  [view2 addSubview:tableView];

  tableView2 = [(EditVehicleConnectorsViewController *)self tableView];
  leadingAnchor = [tableView2 leadingAnchor];
  view3 = [(EditVehicleConnectorsViewController *)self view];
  leadingAnchor2 = [view3 leadingAnchor];
  v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v29[0] = v23;
  tableView3 = [(EditVehicleConnectorsViewController *)self tableView];
  trailingAnchor = [tableView3 trailingAnchor];
  view4 = [(EditVehicleConnectorsViewController *)self view];
  trailingAnchor2 = [view4 trailingAnchor];
  v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v29[1] = v18;
  tableView4 = [(EditVehicleConnectorsViewController *)self tableView];
  topAnchor = [tableView4 topAnchor];
  view5 = [(EditVehicleConnectorsViewController *)self view];
  topAnchor2 = [view5 topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v29[2] = v10;
  tableView5 = [(EditVehicleConnectorsViewController *)self tableView];
  bottomAnchor = [tableView5 bottomAnchor];
  view6 = [(EditVehicleConnectorsViewController *)self view];
  bottomAnchor2 = [view6 bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v29[3] = v15;
  v16 = [NSArray arrayWithObjects:v29 count:4];
  [NSLayoutConstraint activateConstraints:v16];
}

- (UILabel)tableFooterLabel
{
  tableFooterLabel = self->_tableFooterLabel;
  if (!tableFooterLabel)
  {
    v4 = objc_opt_new();
    v5 = self->_tableFooterLabel;
    self->_tableFooterLabel = v4;

    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"[Virtual Garage] Plug Type Explanation" value:@"localized string not found" table:0];
    [(UILabel *)self->_tableFooterLabel setText:v7];

    [(UILabel *)self->_tableFooterLabel setNumberOfLines:0];
    v8 = +[UIColor secondaryLabelColor];
    [(UILabel *)self->_tableFooterLabel setTextColor:v8];

    v9 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    [(UILabel *)self->_tableFooterLabel setFont:v9];

    tableFooterLabel = self->_tableFooterLabel;
  }

  return tableFooterLabel;
}

- (UIView)tableFooterView
{
  tableFooterView = self->_tableFooterView;
  if (!tableFooterView)
  {
    v4 = objc_opt_new();
    v5 = self->_tableFooterView;
    self->_tableFooterView = v4;

    v6 = self->_tableFooterView;
    tableFooterLabel = [(EditVehicleConnectorsViewController *)self tableFooterLabel];
    [(UIView *)v6 addSubview:tableFooterLabel];

    tableFooterView = self->_tableFooterView;
  }

  return tableFooterView;
}

- (UITableView)tableView
{
  tableView = self->_tableView;
  if (!tableView)
  {
    v4 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_tableView;
    self->_tableView = v4;

    [(UITableView *)self->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UITableView *)self->_tableView setDelegate:self];
    [(UITableView *)self->_tableView setDataSource:self];
    v6 = self->_tableView;
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [(UITableView *)v6 registerClass:v7 forCellReuseIdentifier:v9];

    tableFooterView = [(EditVehicleConnectorsViewController *)self tableFooterView];
    [(UITableView *)self->_tableView setTableFooterView:tableFooterView];

    tableView = self->_tableView;
  }

  return tableView;
}

- (EditVehicleConnectorsViewController)initWithVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  v20.receiver = self;
  v20.super_class = EditVehicleConnectorsViewController;
  v6 = [(EditVehicleConnectorsViewController *)&v20 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_vehicle, vehicle);
    [vehicleCopy supportedConnectors];
    v8 = VGChargingConnectorTypeOptionsUnpacked();
    startingConnectorTypes = v7->_startingConnectorTypes;
    v7->_startingConnectorTypes = v8;

    v10 = [(NSArray *)v7->_startingConnectorTypes mutableCopy];
    currentConnectorTypes = v7->_currentConnectorTypes;
    v7->_currentConnectorTypes = v10;

    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"[Virtual Garage][Title] Add Adapter Plug" value:@"localized string not found" table:0];
    navigationItem = [(EditVehicleConnectorsViewController *)v7 navigationItem];
    [navigationItem setTitle:v13];

    v15 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:v7 action:"pressedCancel"];
    navigationItem2 = [(EditVehicleConnectorsViewController *)v7 navigationItem];
    [navigationItem2 setLeftBarButtonItem:v15];

    v17 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:v7 action:"pressedDone"];
    navigationItem3 = [(EditVehicleConnectorsViewController *)v7 navigationItem];
    [navigationItem3 setRightBarButtonItem:v17];
  }

  return v7;
}

@end