@interface VehicleConnectorListViewController
- (UITableView)tableView;
- (VehicleConnectorListViewController)initWithVehicle:(id)vehicle;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation VehicleConnectorListViewController

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  section = [pathCopy section];

  if (section)
  {
    v9 = [[EditVehicleConnectorsViewController alloc] initWithVehicle:self->_vehicle];
    navigationController = [(VehicleConnectorListViewController *)self navigationController];
    [navigationController pushViewController:v9 animated:1];
  }
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  section = [path section];
  result = 44.0;
  if (!section)
  {
    return 72.0;
  }

  return result;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  section = [pathCopy section];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [viewCopy dequeueReusableCellWithIdentifier:v10 forIndexPath:pathCopy];
  if (section)
  {

    [v11 setSelectionStyle:3];
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"[Virtual Garage][Button] Add Adapter Plug" value:@"localized string not found" table:0];
    textLabel = [v11 textLabel];
    [textLabel setText:v13];

    v15 = +[UIColor systemBlueColor];
    textLabel2 = [v11 textLabel];
    [textLabel2 setTextColor:v15];

    v17 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    textLabel3 = [v11 textLabel];
    [textLabel3 setFont:v17];
  }

  else
  {

    unpackedConnectorTypes = self->_unpackedConnectorTypes;
    v20 = [pathCopy row];

    v17 = [(NSArray *)unpackedConnectorTypes objectAtIndexedSubscript:v20];
    [v11 setConnectorType:{objc_msgSend(v17, "unsignedIntegerValue")}];
  }

  return v11;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section)
  {
    return 1;
  }

  else
  {
    return [(NSArray *)self->_unpackedConnectorTypes count];
  }
}

- (int64_t)numberOfSectionsInTableView:(id)view
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

- (void)viewWillDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = VehicleConnectorListViewController;
  [(VehicleConnectorListViewController *)&v7 viewWillDisappear:disappear];
  traitCollection = [(VehicleConnectorListViewController *)self traitCollection];
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
  v12.receiver = self;
  v12.super_class = VehicleConnectorListViewController;
  [(VehicleConnectorListViewController *)&v12 viewWillAppear:?];
  [(VGVehicle *)self->_vehicle supportedConnectors];
  v5 = VGChargingConnectorTypeOptionsUnpacked();
  unpackedConnectorTypes = self->_unpackedConnectorTypes;
  self->_unpackedConnectorTypes = v5;

  tableView = [(VehicleConnectorListViewController *)self tableView];
  [tableView reloadData];

  traitCollection = [(VehicleConnectorListViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    v10 = +[UIApplication sharedMapsDelegate];
    [v10 setLockedOrientations:2];

    v11 = +[UIDevice currentDevice];
    [v11 setOrientation:1 animated:appearCopy];
  }
}

- (void)viewDidLoad
{
  v29.receiver = self;
  v29.super_class = VehicleConnectorListViewController;
  [(VehicleConnectorListViewController *)&v29 viewDidLoad];
  view = [(VehicleConnectorListViewController *)self view];
  [view setAccessibilityIdentifier:@"VehicleConnectorListView"];

  v4 = +[UIColor systemGroupedBackgroundColor];
  view2 = [(VehicleConnectorListViewController *)self view];
  [view2 setBackgroundColor:v4];

  view3 = [(VehicleConnectorListViewController *)self view];
  tableView = [(VehicleConnectorListViewController *)self tableView];
  [view3 addSubview:tableView];

  tableView2 = [(VehicleConnectorListViewController *)self tableView];
  leadingAnchor = [tableView2 leadingAnchor];
  view4 = [(VehicleConnectorListViewController *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v30[0] = v24;
  tableView3 = [(VehicleConnectorListViewController *)self tableView];
  trailingAnchor = [tableView3 trailingAnchor];
  view5 = [(VehicleConnectorListViewController *)self view];
  trailingAnchor2 = [view5 trailingAnchor];
  v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v30[1] = v19;
  tableView4 = [(VehicleConnectorListViewController *)self tableView];
  topAnchor = [tableView4 topAnchor];
  view6 = [(VehicleConnectorListViewController *)self view];
  topAnchor2 = [view6 topAnchor];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v30[2] = v11;
  tableView5 = [(VehicleConnectorListViewController *)self tableView];
  bottomAnchor = [tableView5 bottomAnchor];
  view7 = [(VehicleConnectorListViewController *)self view];
  bottomAnchor2 = [view7 bottomAnchor];
  v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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

- (VehicleConnectorListViewController)initWithVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  v13.receiver = self;
  v13.super_class = VehicleConnectorListViewController;
  v6 = [(VehicleConnectorListViewController *)&v13 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_vehicle, vehicle);
    v8 = +[NSUserDefaults standardUserDefaults];
    v7->_editingEnabled = [v8 BOOLForKey:@"VirtualGarageEditConnectorPlugs"];

    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"[Virtual Garage][Title] Plug Type" value:@"localized string not found" table:0];
    navigationItem = [(VehicleConnectorListViewController *)v7 navigationItem];
    [navigationItem setTitle:v10];
  }

  return v7;
}

@end