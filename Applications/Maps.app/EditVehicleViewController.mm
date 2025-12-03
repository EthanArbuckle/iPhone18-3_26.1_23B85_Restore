@interface EditVehicleViewController
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (EditVehicleViewController)initWithColors:(id)colors vehicle:(id)vehicle delegate:(id)delegate;
- (EditVehicleViewControllerDelegate)delegate;
- (NSArray)tableStructure;
- (UIImageView)vehicleIconView;
- (UITableView)tableView;
- (UIView)headerView;
- (UIView)vehicleColorView;
- (VehicleColorPicker)colorPicker;
- (VehicleColorPickerCell)colorPickerCell;
- (VehicleTextFieldCell)nicknameCell;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_selectedColor;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)selectedIndex;
- (void)_captureAnalyticsForRemovedNetwork:(id)network;
- (void)_updateContent;
- (void)_updateDoneButtonAvailability;
- (void)availableNetworksDidChangeForProvider:(id)provider;
- (void)colorPicker:(id)picker didSelectIndex:(unint64_t)index;
- (void)pressedCancel;
- (void)pressedDone;
- (void)setSelectedIndex:(unint64_t)index;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation EditVehicleViewController

- (EditVehicleViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)pressedDone
{
  nicknameCell = [(EditVehicleViewController *)self nicknameCell];
  textField = [nicknameCell textField];
  [textField endEditing:1];

  v5 = +[MKMapService sharedService];
  [v5 captureUserAction:41 onTarget:662 eventValue:0];

  _selectedColor = [(EditVehicleViewController *)self _selectedColor];
  _maps_hexRepresentation = [_selectedColor _maps_hexRepresentation];
  [(VGVehicle *)self->_vehicle setColorHex:_maps_hexRepresentation];

  vehicle = self->_vehicle;
  v8 = self->_currentNickname;
  [(VGVehicle *)vehicle setDisplayName:v8];
  v9 = [(NSMutableArray *)self->_removedNetworks copy];
  v10 = [NSSet setWithArray:self->_currentNetworks];
  [(VGVehicle *)self->_vehicle setPreferredChargingNetworks:v10];

  delegate = [(EditVehicleViewController *)self delegate];
  [delegate editVehicleViewController:self didSelectColor:_selectedColor nickname:v8 removedNetworks:v9];

  delegate2 = [(EditVehicleViewController *)self delegate];
  [delegate2 editVehicleViewControllerDidSelectDone:self];
}

- (void)pressedCancel
{
  v3 = +[MKMapService sharedService];
  [v3 captureUserAction:34 onTarget:662 eventValue:0];

  navigationController = [(EditVehicleViewController *)self navigationController];
  v4 = [navigationController popViewControllerAnimated:1];
}

- (void)availableNetworksDidChangeForProvider:(id)provider
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100A7B6C4;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_captureAnalyticsForRemovedNetwork:(id)network
{
  networkCopy = network;
  suggestedNetworks = [(VGChargingNetworkAvailabilityProvider *)self->_networksProvider suggestedNetworks];

  if (suggestedNetworks)
  {
    suggestedNetworks2 = [(VGChargingNetworkAvailabilityProvider *)self->_networksProvider suggestedNetworks];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100A7B914;
    v10[3] = &unk_101633110;
    v11 = networkCopy;
    v7 = sub_100030774(suggestedNetworks2, v10);

    if (v7)
    {
      v8 = 439;
    }

    else
    {
      v8 = 448;
    }

    v9 = +[MKMapService sharedService];
    [v9 captureUserAction:v8 onTarget:122 eventValue:0];
  }

  else
  {
    [(NSMutableArray *)self->_networksAwaitingLogging addObject:networkCopy];
  }
}

- (void)_updateContent
{
  [(EditVehicleViewController *)self _updateDoneButtonAvailability];
  _selectedColor = [(EditVehicleViewController *)self _selectedColor];
  vehicleColorView = [(EditVehicleViewController *)self vehicleColorView];
  [vehicleColorView setBackgroundColor:_selectedColor];

  currentNickname = self->_currentNickname;
  nicknameCell = [(EditVehicleViewController *)self nicknameCell];
  textField = [nicknameCell textField];
  [textField setText:currentNickname];

  licensePlate = [(VGVehicle *)self->_vehicle licensePlate];
  nicknameCell2 = [(EditVehicleViewController *)self nicknameCell];
  textField2 = [nicknameCell2 textField];
  [textField2 setPlaceholder:licensePlate];

  vehicleColorView2 = [(EditVehicleViewController *)self vehicleColorView];
  backgroundColor = [vehicleColorView2 backgroundColor];
  v13 = +[UIColor whiteColor];
  [backgroundColor _maps_euclideanDistanceFromColor:v13];
  v15 = v14;

  if (v15 >= 0.1)
  {
    v19 = +[UIColor systemWhiteColor];
    vehicleIconView = [(EditVehicleViewController *)self vehicleIconView];
    [vehicleIconView setTintColor:v19];
  }

  else
  {
    v19 = [NSBundle bundleForClass:objc_opt_class()];
    vehicleIconView = [(EditVehicleViewController *)self traitCollection];
    v17 = [UIColor colorNamed:@"TertiaryVehicleTint" inBundle:v19 compatibleWithTraitCollection:vehicleIconView];
    vehicleIconView2 = [(EditVehicleViewController *)self vehicleIconView];
    [vehicleIconView2 setTintColor:v17];
  }
}

- (void)_updateDoneButtonAvailability
{
  selectedIndex = [(EditVehicleViewController *)self selectedIndex];
  combinedDisplayName = [(VGVehicle *)self->_vehicle combinedDisplayName];
  v5 = [combinedDisplayName isEqualToString:self->_currentNickname];

  v6 = [(NSMutableArray *)self->_removedNetworks count];
  v7 = v5 ^ 1;
  if (v6)
  {
    v7 = 1;
  }

  if (selectedIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  navigationItem = [(EditVehicleViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v8];
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  pathCopy = path;
  v8 = pathCopy;
  if (style == 1)
  {
    v9 = [pathCopy row];
    if (v9 >= [(NSMutableArray *)self->_currentNetworks count])
    {
      v12 = sub_10006D178();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v15 = 136315650;
        v16 = "[EditVehicleViewController tableView:commitEditingStyle:forRowAtIndexPath:]";
        v17 = 2080;
        v18 = "EditVehicleViewController.m";
        v19 = 1024;
        v20 = 432;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v15, 0x1Cu);
      }

      if (sub_100E03634())
      {
        v13 = sub_10006D178();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = +[NSThread callStackSymbols];
          v15 = 138412290;
          v16 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@", &v15, 0xCu);
        }
      }
    }

    else
    {
      v10 = -[NSMutableArray objectAtIndexedSubscript:](self->_currentNetworks, "objectAtIndexedSubscript:", [v8 row]);
      [(EditVehicleViewController *)self _captureAnalyticsForRemovedNetwork:v10];
      [(NSMutableArray *)self->_removedNetworks addObject:v10];
      -[NSMutableArray removeObjectAtIndex:](self->_currentNetworks, "removeObjectAtIndex:", [v8 row]);
      [(EditVehicleViewController *)self setTableStructure:0];
      tableView = [(EditVehicleViewController *)self tableView];
      [tableView reloadData];

      [(EditVehicleViewController *)self _updateContent];
    }
  }
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  pathCopy = path;
  tableStructure = [(EditVehicleViewController *)self tableStructure];
  section = [pathCopy section];

  v8 = [tableStructure objectAtIndexedSubscript:section];

  v9 = v8 == self->_preferredChargersSection;
  return v9;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  tableStructure = [(EditVehicleViewController *)self tableStructure];
  v9 = [tableStructure objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  cells = [v9 cells];
  v11 = [pathCopy row];

  v12 = [cells objectAtIndexedSubscript:v11];

  [viewCopy frame];
  Width = CGRectGetWidth(v21);
  [viewCopy layoutMargins];
  v15 = v14;
  [viewCopy layoutMargins];
  v17 = v16;

  [v12 cellHeightWithWidth:Width - (v15 + v17)];
  v19 = v18;

  return v19;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  tableStructure = [(EditVehicleViewController *)self tableStructure];
  v7 = [tableStructure objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  cells = [v7 cells];
  v9 = [pathCopy row];

  v10 = [cells objectAtIndexedSubscript:v9];

  return v10;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  tableStructure = [(EditVehicleViewController *)self tableStructure];
  v6 = [tableStructure objectAtIndexedSubscript:section];

  cells = [v6 cells];
  v8 = [cells count];

  return v8;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  tableStructure = [(EditVehicleViewController *)self tableStructure];
  v4 = [tableStructure count];

  return v4;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v7 = objc_alloc_init(UITableViewHeaderFooterView);
  v8 = +[UIListContentConfiguration prominentInsetGroupedHeaderConfiguration];
  v9 = [(EditVehicleViewController *)self tableView:viewCopy titleForHeaderInSection:section];

  [v8 setText:v9];
  v10 = +[UIColor secondaryLabelColor];
  textProperties = [v8 textProperties];
  [textProperties setColor:v10];

  v12 = [UIFont _preferredFontForTextStyle:UIFontTextStyleSubheadline weight:UIFontWeightBold];
  textProperties2 = [v8 textProperties];
  [textProperties2 setFont:v12];

  [v7 setContentConfiguration:v8];

  return v7;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  tableStructure = [(EditVehicleViewController *)self tableStructure];
  v6 = [tableStructure objectAtIndexedSubscript:section];

  headerTitle = [v6 headerTitle];

  return headerTitle;
}

- (void)textFieldDidEndEditing:(id)editing
{
  text = [editing text];
  currentNickname = self->_currentNickname;
  self->_currentNickname = text;

  [(EditVehicleViewController *)self _updateContent];
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  text = [field text];
  v11 = [text stringByReplacingCharactersInRange:location withString:{length, stringCopy}];

  currentNickname = self->_currentNickname;
  self->_currentNickname = v11;

  [(EditVehicleViewController *)self _updateDoneButtonAvailability];
  return 1;
}

- (void)textFieldDidBeginEditing:(id)editing
{
  v3 = +[MKMapService sharedService];
  [v3 captureUserAction:2128 onTarget:662 eventValue:0];
}

- (id)_selectedColor
{
  if ([(EditVehicleViewController *)self selectedIndex]== 0x7FFFFFFFFFFFFFFFLL)
  {
    +[UIColor systemBlueColor];
  }

  else
  {
    [(NSArray *)self->_colors objectAtIndexedSubscript:[(EditVehicleViewController *)self selectedIndex]];
  }
  v3 = ;

  return v3;
}

- (void)colorPicker:(id)picker didSelectIndex:(unint64_t)index
{
  v6 = +[MKMapService sharedService];
  [v6 captureUserAction:442 onTarget:662 eventValue:0];

  [(EditVehicleViewController *)self setSelectedIndex:index];

  [(EditVehicleViewController *)self _updateContent];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = EditVehicleViewController;
  [(EditVehicleViewController *)&v7 viewWillDisappear:disappear];
  traitCollection = [(EditVehicleViewController *)self traitCollection];
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
  v9.super_class = EditVehicleViewController;
  [(EditVehicleViewController *)&v9 viewWillAppear:?];
  traitCollection = [(EditVehicleViewController *)self traitCollection];
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
  v29.receiver = self;
  v29.super_class = EditVehicleViewController;
  [(EditVehicleViewController *)&v29 viewDidLoad];
  view = [(EditVehicleViewController *)self view];
  tableView = [(EditVehicleViewController *)self tableView];
  [view addSubview:tableView];

  tableView2 = [(EditVehicleViewController *)self tableView];
  [tableView2 setEditing:1];

  tableView3 = [(EditVehicleViewController *)self tableView];
  leadingAnchor = [tableView3 leadingAnchor];
  view2 = [(EditVehicleViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v30[0] = v24;
  tableView4 = [(EditVehicleViewController *)self tableView];
  trailingAnchor = [tableView4 trailingAnchor];
  view3 = [(EditVehicleViewController *)self view];
  trailingAnchor2 = [view3 trailingAnchor];
  v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v30[1] = v19;
  tableView5 = [(EditVehicleViewController *)self tableView];
  topAnchor = [tableView5 topAnchor];
  view4 = [(EditVehicleViewController *)self view];
  topAnchor2 = [view4 topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v30[2] = v8;
  tableView6 = [(EditVehicleViewController *)self tableView];
  bottomAnchor = [tableView6 bottomAnchor];
  view5 = [(EditVehicleViewController *)self view];
  bottomAnchor2 = [view5 bottomAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v30[3] = v13;
  v14 = [NSArray arrayWithObjects:v30 count:4];
  [NSLayoutConstraint activateConstraints:v14];

  v15 = +[UIColor systemGroupedBackgroundColor];
  view6 = [(EditVehicleViewController *)self view];
  [view6 setBackgroundColor:v15];

  [(EditVehicleViewController *)self _updateContent];
}

- (void)setSelectedIndex:(unint64_t)index
{
  v4 = [NSNumber numberWithUnsignedInteger:index];
  selectedIndexBacking = self->_selectedIndexBacking;
  self->_selectedIndexBacking = v4;
}

- (unint64_t)selectedIndex
{
  selectedIndexBacking = self->_selectedIndexBacking;
  if (!selectedIndexBacking)
  {
    self->_selectedIndexBacking = &off_1016E82D0;
    colorHex = [(VGVehicle *)self->_vehicle colorHex];
    v5 = [UIColor _maps_colorFromHexRepresentation:colorHex];

    if (v5 && [(NSArray *)self->_colors count])
    {
      v6 = 0;
      v7 = 1.79769313e308;
      do
      {
        v8 = [(NSArray *)self->_colors objectAtIndexedSubscript:v6];
        [v8 _maps_euclideanDistanceFromColor:v5];
        v10 = v9;
        if (v9 < fmin(v7, 0.1))
        {
          v11 = [NSNumber numberWithUnsignedInteger:v6];
          v12 = self->_selectedIndexBacking;
          self->_selectedIndexBacking = v11;

          v7 = v10;
        }

        ++v6;
      }

      while (v6 < [(NSArray *)self->_colors count]);
    }

    selectedIndexBacking = self->_selectedIndexBacking;
  }

  return [(NSNumber *)selectedIndexBacking unsignedIntegerValue];
}

- (VehicleColorPicker)colorPicker
{
  colorPicker = self->_colorPicker;
  if (!colorPicker)
  {
    selectedIndex = [(EditVehicleViewController *)self selectedIndex];
    v5 = [VehicleColorPicker alloc];
    colors = self->_colors;
    if (selectedIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0;
    }

    else
    {
      v7 = [NSNumber numberWithUnsignedInteger:selectedIndex];
    }

    v8 = +[UIColor systemGroupedBackgroundColor];
    v9 = [(VehicleColorPicker *)v5 initWithColors:colors colorsPerRow:6 colorEdgeInsets:v7 selectedIndex:v8 contrastColor:self delegate:8.0, 8.0, 8.0, 8.0];
    v10 = self->_colorPicker;
    self->_colorPicker = v9;

    if (selectedIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
    }

    [(VehicleColorPicker *)self->_colorPicker setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v11) = 1148846080;
    [(VehicleColorPicker *)self->_colorPicker setContentCompressionResistancePriority:1 forAxis:v11];
    [(VehicleColorPicker *)self->_colorPicker setAccessibilityIdentifier:@"ColorPicker"];
    colorPicker = self->_colorPicker;
  }

  return colorPicker;
}

- (VehicleColorPickerCell)colorPickerCell
{
  colorPickerCell = self->_colorPickerCell;
  if (!colorPickerCell)
  {
    v4 = objc_opt_new();
    v5 = self->_colorPickerCell;
    self->_colorPickerCell = v4;

    colorPicker = [(EditVehicleViewController *)self colorPicker];
    [(VehicleColorPickerCell *)self->_colorPickerCell setColorPicker:colorPicker];

    [(VehicleColorPickerCell *)self->_colorPickerCell setSelectionStyle:0];
    v7 = +[UIColor clearColor];
    [(VehicleColorPickerCell *)self->_colorPickerCell setBackgroundColor:v7];

    [(VehicleColorPickerCell *)self->_colorPickerCell setAccessibilityIdentifier:@"ColorPickerCell"];
    contentView = [(VehicleColorPickerCell *)self->_colorPickerCell contentView];
    colorPicker2 = [(EditVehicleViewController *)self colorPicker];
    [contentView addSubview:colorPicker2];

    v19 = self->_colorPickerCell;
    colorPicker3 = [(EditVehicleViewController *)self colorPicker];
    centerYAnchor = [colorPicker3 centerYAnchor];
    centerYAnchor2 = [(VehicleColorPickerCell *)self->_colorPickerCell centerYAnchor];
    v21 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v25[0] = v21;
    colorPicker4 = [(EditVehicleViewController *)self colorPicker];
    leadingAnchor = [colorPicker4 leadingAnchor];
    leadingAnchor2 = [(VehicleColorPickerCell *)self->_colorPickerCell leadingAnchor];
    v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v25[1] = v12;
    colorPicker5 = [(EditVehicleViewController *)self colorPicker];
    trailingAnchor = [colorPicker5 trailingAnchor];
    trailingAnchor2 = [(VehicleColorPickerCell *)self->_colorPickerCell trailingAnchor];
    v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v25[2] = v16;
    v17 = [NSArray arrayWithObjects:v25 count:3];
    [(VehicleColorPickerCell *)v19 addConstraints:v17];

    colorPickerCell = self->_colorPickerCell;
  }

  return colorPickerCell;
}

- (VehicleTextFieldCell)nicknameCell
{
  nicknameCell = self->_nicknameCell;
  if (!nicknameCell)
  {
    v4 = objc_opt_new();
    v5 = self->_nicknameCell;
    self->_nicknameCell = v4;

    textField = [(VehicleTextFieldCell *)self->_nicknameCell textField];
    [textField setDelegate:self];

    textField2 = [(VehicleTextFieldCell *)self->_nicknameCell textField];
    [textField2 setAutocorrectionType:1];

    [(VehicleTextFieldCell *)self->_nicknameCell setSelectionStyle:0];
    v8 = +[UIColor tableCellGroupedBackgroundColor];
    [(VehicleTextFieldCell *)self->_nicknameCell setBackgroundColor:v8];

    [(VehicleTextFieldCell *)self->_nicknameCell setAccessibilityIdentifier:@"NicknameCell"];
    nicknameCell = self->_nicknameCell;
  }

  return nicknameCell;
}

- (UIImageView)vehicleIconView
{
  vehicleIconView = self->_vehicleIconView;
  if (!vehicleIconView)
  {
    v4 = sub_1006D43E0([(VGVehicle *)self->_vehicle isPureElectricVehicle]);
    v5 = [v4 imageWithRenderingMode:2];

    v6 = [[UIImageView alloc] initWithImage:v5];
    v7 = self->_vehicleIconView;
    self->_vehicleIconView = v6;

    [(UIImageView *)self->_vehicleIconView setContentMode:1];
    [(UIImageView *)self->_vehicleIconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)self->_vehicleIconView setAccessibilityIdentifier:@"VehicleIconView"];

    vehicleIconView = self->_vehicleIconView;
  }

  return vehicleIconView;
}

- (UIView)vehicleColorView
{
  vehicleColorView = self->_vehicleColorView;
  if (!vehicleColorView)
  {
    v4 = objc_opt_new();
    v5 = self->_vehicleColorView;
    self->_vehicleColorView = v4;

    [(UIView *)self->_vehicleColorView setAccessibilityIdentifier:@"VehicleColorView"];
    [(UIView *)self->_vehicleColorView setTranslatesAutoresizingMaskIntoConstraints:0];
    layer = [(UIView *)self->_vehicleColorView layer];
    [layer setCornerRadius:50.0];

    v7 = self->_vehicleColorView;
    vehicleIconView = [(EditVehicleViewController *)self vehicleIconView];
    [(UIView *)v7 addSubview:vehicleIconView];

    v20 = self->_vehicleColorView;
    vehicleIconView2 = [(EditVehicleViewController *)self vehicleIconView];
    centerXAnchor = [vehicleIconView2 centerXAnchor];
    centerXAnchor2 = [(UIView *)self->_vehicleColorView centerXAnchor];
    v24 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v28[0] = v24;
    vehicleIconView3 = [(EditVehicleViewController *)self vehicleIconView];
    centerYAnchor = [vehicleIconView3 centerYAnchor];
    centerYAnchor2 = [(UIView *)self->_vehicleColorView centerYAnchor];
    v19 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v28[1] = v19;
    vehicleIconView4 = [(EditVehicleViewController *)self vehicleIconView];
    widthAnchor = [vehicleIconView4 widthAnchor];
    widthAnchor2 = [(UIView *)self->_vehicleColorView widthAnchor];
    v11 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2];
    v28[2] = v11;
    vehicleIconView5 = [(EditVehicleViewController *)self vehicleIconView];
    heightAnchor = [vehicleIconView5 heightAnchor];
    heightAnchor2 = [(UIView *)self->_vehicleColorView heightAnchor];
    v15 = [heightAnchor constraintLessThanOrEqualToAnchor:heightAnchor2];
    v28[3] = v15;
    v16 = [NSArray arrayWithObjects:v28 count:4];
    [(UIView *)v20 addConstraints:v16];

    vehicleColorView = self->_vehicleColorView;
  }

  return vehicleColorView;
}

- (UIView)headerView
{
  headerView = self->_headerView;
  if (!headerView)
  {
    v4 = objc_opt_new();
    v5 = self->_headerView;
    self->_headerView = v4;

    [(UIView *)self->_headerView setAccessibilityIdentifier:@"EditVehicleHeader"];
    v6 = self->_headerView;
    vehicleColorView = [(EditVehicleViewController *)self vehicleColorView];
    [(UIView *)v6 addSubview:vehicleColorView];

    v24 = self->_headerView;
    vehicleColorView2 = [(EditVehicleViewController *)self vehicleColorView];
    centerXAnchor = [vehicleColorView2 centerXAnchor];
    centerXAnchor2 = [(UIView *)self->_headerView centerXAnchor];
    v29 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v33[0] = v29;
    vehicleColorView3 = [(EditVehicleViewController *)self vehicleColorView];
    topAnchor = [vehicleColorView3 topAnchor];
    topAnchor2 = [(UIView *)self->_headerView topAnchor];
    v25 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:32.0];
    v33[1] = v25;
    vehicleColorView4 = [(EditVehicleViewController *)self vehicleColorView];
    widthAnchor = [vehicleColorView4 widthAnchor];
    v21 = [widthAnchor constraintEqualToConstant:100.0];
    v33[2] = v21;
    vehicleColorView5 = [(EditVehicleViewController *)self vehicleColorView];
    heightAnchor = [vehicleColorView5 heightAnchor];
    v8 = [heightAnchor constraintEqualToConstant:100.0];
    v33[3] = v8;
    vehicleColorView6 = [(EditVehicleViewController *)self vehicleColorView];
    bottomAnchor = [vehicleColorView6 bottomAnchor];
    bottomAnchor2 = [(UIView *)self->_headerView bottomAnchor];
    v12 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2 constant:-24.0];
    v33[4] = v12;
    heightAnchor2 = [(UIView *)self->_headerView heightAnchor];
    v14 = [heightAnchor2 constraintGreaterThanOrEqualToConstant:156.0];
    v33[5] = v14;
    v15 = [NSArray arrayWithObjects:v33 count:6];
    [(UIView *)v24 addConstraints:v15];

    [(UIView *)self->_headerView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height];
    [(UIView *)self->_headerView setFrame:CGPointZero.x, CGPointZero.y, v16, v17];
    headerView = self->_headerView;
  }

  return headerView;
}

- (UITableView)tableView
{
  tableView = self->_tableView;
  if (!tableView)
  {
    v4 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_tableView;
    self->_tableView = v4;

    [(UITableView *)self->_tableView setAccessibilityIdentifier:@"EditVehicleTableView"];
    [(UITableView *)self->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UITableView *)self->_tableView setDataSource:self];
    [(UITableView *)self->_tableView setDelegate:self];
    headerView = [(EditVehicleViewController *)self headerView];
    [(UITableView *)self->_tableView setTableHeaderView:headerView];

    [(UITableView *)self->_tableView setKeyboardDismissMode:1];
    tableView = self->_tableView;
  }

  return tableView;
}

- (NSArray)tableStructure
{
  tableStructure = self->_tableStructure;
  if (!tableStructure)
  {
    v4 = objc_opt_new();
    v5 = [VehicleDetailTableSection alloc];
    nicknameCell = [(EditVehicleViewController *)self nicknameCell];
    v30 = nicknameCell;
    v7 = [NSArray arrayWithObjects:&v30 count:1];
    v8 = [(VehicleDetailTableSection *)v5 initWithCells:v7];

    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"[Virtual Garage] Vehicle Name" value:@"localized string not found" table:0];
    [(VehicleDetailTableSection *)v8 setHeaderTitle:v10];

    [v4 addObject:v8];
    v11 = [VehicleDetailTableSection alloc];
    colorPickerCell = [(EditVehicleViewController *)self colorPickerCell];
    v29 = colorPickerCell;
    v13 = [NSArray arrayWithObjects:&v29 count:1];
    v14 = [(VehicleDetailTableSection *)v11 initWithCells:v13];

    v15 = +[NSBundle mainBundle];
    v16 = [v15 localizedStringForKey:@"[Virtual Garage] Vehicle Color" value:@"localized string not found" table:0];
    [(VehicleDetailTableSection *)v14 setHeaderTitle:v16];

    [v4 addObject:v14];
    preferredChargersSection = self->_preferredChargersSection;
    self->_preferredChargersSection = 0;

    if ([(VGVehicle *)self->_vehicle isPureElectricVehicle]&& MapsFeature_IsEnabled_EVRoutingEnhancements() && [(NSMutableArray *)self->_currentNetworks count])
    {
      v28 = sub_100021DB0(self->_currentNetworks, &stru_1016330E8);
      v18 = [[VehicleDetailTableSection alloc] initWithCells:v28];
      v19 = +[NSBundle mainBundle];
      v20 = [v19 localizedStringForKey:@"[Virtual Garage] Preferred Charging Networks header" value:@"localized string not found" table:0];
      [(VehicleDetailTableSection *)v18 setHeaderTitle:v20];

      v21 = +[NSBundle mainBundle];
      v22 = [v21 localizedStringForKey:@"[Virtual Garage] Preferred Charging Networks footer" value:@"localized string not found" table:0];
      [(VehicleDetailTableSection *)v18 setFooterText:v22];

      v23 = self->_preferredChargersSection;
      self->_preferredChargersSection = v18;
      v24 = v18;

      [v4 addObject:v24];
    }

    v25 = [v4 copy];
    v26 = self->_tableStructure;
    self->_tableStructure = v25;

    tableStructure = self->_tableStructure;
  }

  return tableStructure;
}

- (EditVehicleViewController)initWithColors:(id)colors vehicle:(id)vehicle delegate:(id)delegate
{
  colorsCopy = colors;
  vehicleCopy = vehicle;
  delegateCopy = delegate;
  v40.receiver = self;
  v40.super_class = EditVehicleViewController;
  v11 = [(EditVehicleViewController *)&v40 initWithNibName:0 bundle:0];
  if (v11)
  {
    v12 = [colorsCopy copy];
    colors = v11->_colors;
    v11->_colors = v12;

    objc_storeStrong(&v11->_vehicle, vehicle);
    objc_storeWeak(&v11->_delegate, delegateCopy);
    combinedDisplayName = [vehicleCopy combinedDisplayName];
    currentNickname = v11->_currentNickname;
    v11->_currentNickname = combinedDisplayName;

    preferredChargingNetworks = [vehicleCopy preferredChargingNetworks];
    allObjects = [preferredChargingNetworks allObjects];
    v18 = [allObjects sortedArrayUsingComparator:&stru_1016330C8];
    v19 = [v18 mutableCopy];
    currentNetworks = v11->_currentNetworks;
    v11->_currentNetworks = v19;

    v21 = objc_alloc_init(NSMutableArray);
    removedNetworks = v11->_removedNetworks;
    v11->_removedNetworks = v21;

    v23 = [[VGChargingNetworkAvailabilityProvider alloc] initWithDelegate:v11];
    networksProvider = v11->_networksProvider;
    v11->_networksProvider = v23;

    v25 = objc_alloc_init(NSMutableArray);
    networksAwaitingLogging = v11->_networksAwaitingLogging;
    v11->_networksAwaitingLogging = v25;

    v27 = +[NSBundle mainBundle];
    v28 = [v27 localizedStringForKey:@"[Virtual Garage] Edit Vehicle" value:@"localized string not found" table:0];
    navigationItem = [(EditVehicleViewController *)v11 navigationItem];
    [navigationItem setTitle:v28];

    v30 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:v11 action:"pressedCancel"];
    navigationItem2 = [(EditVehicleViewController *)v11 navigationItem];
    [navigationItem2 setLeftBarButtonItem:v30];

    navigationItem3 = [(EditVehicleViewController *)v11 navigationItem];
    leftBarButtonItem = [navigationItem3 leftBarButtonItem];
    [leftBarButtonItem setAccessibilityIdentifier:@"LeftBarButtonItem"];

    v34 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:v11 action:"pressedDone"];
    navigationItem4 = [(EditVehicleViewController *)v11 navigationItem];
    [navigationItem4 setRightBarButtonItem:v34];

    navigationItem5 = [(EditVehicleViewController *)v11 navigationItem];
    rightBarButtonItem = [navigationItem5 rightBarButtonItem];
    [rightBarButtonItem setAccessibilityIdentifier:@"RightBarButtonItem"];

    view = [(EditVehicleViewController *)v11 view];
    [view setAccessibilityIdentifier:@"EditVehicleView"];
  }

  return v11;
}

@end