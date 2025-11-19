@interface VehicleConnectorListViewController
- (UITableView)tableView;
- (VehicleConnectorListViewController)initWithVehicle:(id)a3;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation VehicleConnectorListViewController

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  v7 = [v6 section];

  if (v7)
  {
    v9 = [[EditVehicleConnectorsViewController alloc] initWithVehicle:self->_vehicle];
    v8 = [(VehicleConnectorListViewController *)self navigationController];
    [v8 pushViewController:v9 animated:1];
  }
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v4 = [a4 section];
  result = 44.0;
  if (!v4)
  {
    return 72.0;
  }

  return result;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 section];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v7 dequeueReusableCellWithIdentifier:v10 forIndexPath:v6];
  if (v8)
  {

    [v11 setSelectionStyle:3];
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"[Virtual Garage][Button] Add Adapter Plug" value:@"localized string not found" table:0];
    v14 = [v11 textLabel];
    [v14 setText:v13];

    v15 = +[UIColor systemBlueColor];
    v16 = [v11 textLabel];
    [v16 setTextColor:v15];

    v17 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    v18 = [v11 textLabel];
    [v18 setFont:v17];
  }

  else
  {

    unpackedConnectorTypes = self->_unpackedConnectorTypes;
    v20 = [v6 row];

    v17 = [(NSArray *)unpackedConnectorTypes objectAtIndexedSubscript:v20];
    [v11 setConnectorType:{objc_msgSend(v17, "unsignedIntegerValue")}];
  }

  return v11;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4)
  {
    return 1;
  }

  else
  {
    return [(NSArray *)self->_unpackedConnectorTypes count];
  }
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  if (self->_editingEnabled)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = VehicleConnectorListViewController;
  [(VehicleConnectorListViewController *)&v7 viewWillDisappear:a3];
  v4 = [(VehicleConnectorListViewController *)self traitCollection];
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
  v12.receiver = self;
  v12.super_class = VehicleConnectorListViewController;
  [(VehicleConnectorListViewController *)&v12 viewWillAppear:?];
  [(VGVehicle *)self->_vehicle supportedConnectors];
  v5 = VGChargingConnectorTypeOptionsUnpacked();
  unpackedConnectorTypes = self->_unpackedConnectorTypes;
  self->_unpackedConnectorTypes = v5;

  v7 = [(VehicleConnectorListViewController *)self tableView];
  [v7 reloadData];

  v8 = [(VehicleConnectorListViewController *)self traitCollection];
  v9 = [v8 userInterfaceIdiom];

  if (!v9)
  {
    v10 = +[UIApplication sharedMapsDelegate];
    [v10 setLockedOrientations:2];

    v11 = +[UIDevice currentDevice];
    [v11 setOrientation:1 animated:v3];
  }
}

- (void)viewDidLoad
{
  v29.receiver = self;
  v29.super_class = VehicleConnectorListViewController;
  [(VehicleConnectorListViewController *)&v29 viewDidLoad];
  v3 = [(VehicleConnectorListViewController *)self view];
  [v3 setAccessibilityIdentifier:@"VehicleConnectorListView"];

  v4 = +[UIColor systemGroupedBackgroundColor];
  v5 = [(VehicleConnectorListViewController *)self view];
  [v5 setBackgroundColor:v4];

  v6 = [(VehicleConnectorListViewController *)self view];
  v7 = [(VehicleConnectorListViewController *)self tableView];
  [v6 addSubview:v7];

  v28 = [(VehicleConnectorListViewController *)self tableView];
  v26 = [v28 leadingAnchor];
  v27 = [(VehicleConnectorListViewController *)self view];
  v25 = [v27 leadingAnchor];
  v24 = [v26 constraintEqualToAnchor:v25];
  v30[0] = v24;
  v23 = [(VehicleConnectorListViewController *)self tableView];
  v21 = [v23 trailingAnchor];
  v22 = [(VehicleConnectorListViewController *)self view];
  v20 = [v22 trailingAnchor];
  v19 = [v21 constraintEqualToAnchor:v20];
  v30[1] = v19;
  v18 = [(VehicleConnectorListViewController *)self tableView];
  v8 = [v18 topAnchor];
  v9 = [(VehicleConnectorListViewController *)self view];
  v10 = [v9 topAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v30[2] = v11;
  v12 = [(VehicleConnectorListViewController *)self tableView];
  v13 = [v12 bottomAnchor];
  v14 = [(VehicleConnectorListViewController *)self view];
  v15 = [v14 bottomAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  v30[3] = v16;
  v17 = [NSArray arrayWithObjects:v30 count:4];
  [NSLayoutConstraint activateConstraints:v17];
}

- (UITableView)tableView
{
  tableView = self->_tableView;
  if (!tableView)
  {
    v4 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_tableView;
    self->_tableView = v4;

    [(UITableView *)self->_tableView setAccessibilityIdentifier:@"VehicleConnectorListTableView"];
    [(UITableView *)self->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UITableView *)self->_tableView setDataSource:self];
    [(UITableView *)self->_tableView setDelegate:self];
    v6 = self->_tableView;
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [(UITableView *)v6 registerClass:v7 forCellReuseIdentifier:v9];

    tableView = self->_tableView;
  }

  return tableView;
}

- (VehicleConnectorListViewController)initWithVehicle:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = VehicleConnectorListViewController;
  v6 = [(VehicleConnectorListViewController *)&v13 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_vehicle, a3);
    v8 = +[NSUserDefaults standardUserDefaults];
    v7->_editingEnabled = [v8 BOOLForKey:@"VirtualGarageEditConnectorPlugs"];

    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"[Virtual Garage][Title] Plug Type" value:@"localized string not found" table:0];
    v11 = [(VehicleConnectorListViewController *)v7 navigationItem];
    [v11 setTitle:v10];
  }

  return v7;
}

@end