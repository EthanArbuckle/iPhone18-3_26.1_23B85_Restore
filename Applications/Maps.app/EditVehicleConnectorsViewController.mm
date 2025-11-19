@interface EditVehicleConnectorsViewController
- (EditVehicleConnectorsViewController)initWithVehicle:(id)a3;
- (UILabel)tableFooterLabel;
- (UITableView)tableView;
- (UIView)tableFooterView;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)pressedCancel;
- (void)pressedDone;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation EditVehicleConnectorsViewController

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 deselectRowAtIndexPath:v6 animated:1];
  v11 = [v7 cellForRowAtIndexPath:v6];

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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 dequeueReusableCellWithIdentifier:v9 forIndexPath:v6];

  v11 = VGChargingConnectorTypeOptionsList();
  v12 = [v6 row];

  v13 = [v11 objectAtIndexedSubscript:v12];

  [v10 setConnectorType:{objc_msgSend(v13, "unsignedIntegerValue")}];
  [v10 setActive:{-[NSMutableArray containsObject:](self->_currentConnectorTypes, "containsObject:", v13)}];
  [v10 setSelectionStyle:3];

  return v10;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
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

  v6 = [(EditVehicleConnectorsViewController *)self navigationController];
  v5 = [v6 popViewControllerAnimated:1];
}

- (void)pressedCancel
{
  v3 = +[MKMapService sharedService];
  [v3 captureUserAction:34 onTarget:660 eventValue:0];

  v5 = [(EditVehicleConnectorsViewController *)self navigationController];
  v4 = [v5 popViewControllerAnimated:1];
}

- (void)viewDidLayoutSubviews
{
  v11.receiver = self;
  v11.super_class = EditVehicleConnectorsViewController;
  [(EditVehicleConnectorsViewController *)&v11 viewDidLayoutSubviews];
  v3 = [(EditVehicleConnectorsViewController *)self tableView];
  [v3 frame];
  v5 = v4;

  v6 = [(EditVehicleConnectorsViewController *)self tableFooterLabel];
  [v6 sizeThatFits:{v5 + -72.0, 1.79769313e308}];
  v8 = v7;

  v9 = [(EditVehicleConnectorsViewController *)self tableFooterView];
  [v9 setFrame:{0.0, 0.0, v5, v8}];

  v10 = [(EditVehicleConnectorsViewController *)self tableFooterLabel];
  [v10 setFrame:{36.0, 0.0, v5 + -72.0, v8}];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = EditVehicleConnectorsViewController;
  [(EditVehicleConnectorsViewController *)&v7 viewWillDisappear:a3];
  v4 = [(EditVehicleConnectorsViewController *)self traitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (!v5)
  {
    v6 = +[UIApplication sharedMapsDelegate];
    [v6 setLockedOrientations:0];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = EditVehicleConnectorsViewController;
  [(EditVehicleConnectorsViewController *)&v9 viewWillAppear:?];
  v5 = [(EditVehicleConnectorsViewController *)self traitCollection];
  v6 = [v5 userInterfaceIdiom];

  if (!v6)
  {
    v7 = +[UIApplication sharedMapsDelegate];
    [v7 setLockedOrientations:2];

    v8 = +[UIDevice currentDevice];
    [v8 setOrientation:1 animated:v3];
  }
}

- (void)viewDidLoad
{
  v28.receiver = self;
  v28.super_class = EditVehicleConnectorsViewController;
  [(EditVehicleConnectorsViewController *)&v28 viewDidLoad];
  v3 = +[UIColor systemGroupedBackgroundColor];
  v4 = [(EditVehicleConnectorsViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(EditVehicleConnectorsViewController *)self view];
  v6 = [(EditVehicleConnectorsViewController *)self tableView];
  [v5 addSubview:v6];

  v27 = [(EditVehicleConnectorsViewController *)self tableView];
  v25 = [v27 leadingAnchor];
  v26 = [(EditVehicleConnectorsViewController *)self view];
  v24 = [v26 leadingAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v29[0] = v23;
  v22 = [(EditVehicleConnectorsViewController *)self tableView];
  v20 = [v22 trailingAnchor];
  v21 = [(EditVehicleConnectorsViewController *)self view];
  v19 = [v21 trailingAnchor];
  v18 = [v20 constraintEqualToAnchor:v19];
  v29[1] = v18;
  v17 = [(EditVehicleConnectorsViewController *)self tableView];
  v7 = [v17 topAnchor];
  v8 = [(EditVehicleConnectorsViewController *)self view];
  v9 = [v8 topAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  v29[2] = v10;
  v11 = [(EditVehicleConnectorsViewController *)self tableView];
  v12 = [v11 bottomAnchor];
  v13 = [(EditVehicleConnectorsViewController *)self view];
  v14 = [v13 bottomAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
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
    v7 = [(EditVehicleConnectorsViewController *)self tableFooterLabel];
    [(UIView *)v6 addSubview:v7];

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

    v10 = [(EditVehicleConnectorsViewController *)self tableFooterView];
    [(UITableView *)self->_tableView setTableFooterView:v10];

    tableView = self->_tableView;
  }

  return tableView;
}

- (EditVehicleConnectorsViewController)initWithVehicle:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = EditVehicleConnectorsViewController;
  v6 = [(EditVehicleConnectorsViewController *)&v20 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_vehicle, a3);
    [v5 supportedConnectors];
    v8 = VGChargingConnectorTypeOptionsUnpacked();
    startingConnectorTypes = v7->_startingConnectorTypes;
    v7->_startingConnectorTypes = v8;

    v10 = [(NSArray *)v7->_startingConnectorTypes mutableCopy];
    currentConnectorTypes = v7->_currentConnectorTypes;
    v7->_currentConnectorTypes = v10;

    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"[Virtual Garage][Title] Add Adapter Plug" value:@"localized string not found" table:0];
    v14 = [(EditVehicleConnectorsViewController *)v7 navigationItem];
    [v14 setTitle:v13];

    v15 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:v7 action:"pressedCancel"];
    v16 = [(EditVehicleConnectorsViewController *)v7 navigationItem];
    [v16 setLeftBarButtonItem:v15];

    v17 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:v7 action:"pressedDone"];
    v18 = [(EditVehicleConnectorsViewController *)v7 navigationItem];
    [v18 setRightBarButtonItem:v17];
  }

  return v7;
}

@end