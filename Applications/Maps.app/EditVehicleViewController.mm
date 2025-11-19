@interface EditVehicleViewController
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (EditVehicleViewController)initWithColors:(id)a3 vehicle:(id)a4 delegate:(id)a5;
- (EditVehicleViewControllerDelegate)delegate;
- (NSArray)tableStructure;
- (UIImageView)vehicleIconView;
- (UITableView)tableView;
- (UIView)headerView;
- (UIView)vehicleColorView;
- (VehicleColorPicker)colorPicker;
- (VehicleColorPickerCell)colorPickerCell;
- (VehicleTextFieldCell)nicknameCell;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_selectedColor;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)selectedIndex;
- (void)_captureAnalyticsForRemovedNetwork:(id)a3;
- (void)_updateContent;
- (void)_updateDoneButtonAvailability;
- (void)availableNetworksDidChangeForProvider:(id)a3;
- (void)colorPicker:(id)a3 didSelectIndex:(unint64_t)a4;
- (void)pressedCancel;
- (void)pressedDone;
- (void)setSelectedIndex:(unint64_t)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation EditVehicleViewController

- (EditVehicleViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)pressedDone
{
  v3 = [(EditVehicleViewController *)self nicknameCell];
  v4 = [v3 textField];
  [v4 endEditing:1];

  v5 = +[MKMapService sharedService];
  [v5 captureUserAction:41 onTarget:662 eventValue:0];

  v13 = [(EditVehicleViewController *)self _selectedColor];
  v6 = [v13 _maps_hexRepresentation];
  [(VGVehicle *)self->_vehicle setColorHex:v6];

  vehicle = self->_vehicle;
  v8 = self->_currentNickname;
  [(VGVehicle *)vehicle setDisplayName:v8];
  v9 = [(NSMutableArray *)self->_removedNetworks copy];
  v10 = [NSSet setWithArray:self->_currentNetworks];
  [(VGVehicle *)self->_vehicle setPreferredChargingNetworks:v10];

  v11 = [(EditVehicleViewController *)self delegate];
  [v11 editVehicleViewController:self didSelectColor:v13 nickname:v8 removedNetworks:v9];

  v12 = [(EditVehicleViewController *)self delegate];
  [v12 editVehicleViewControllerDidSelectDone:self];
}

- (void)pressedCancel
{
  v3 = +[MKMapService sharedService];
  [v3 captureUserAction:34 onTarget:662 eventValue:0];

  v5 = [(EditVehicleViewController *)self navigationController];
  v4 = [v5 popViewControllerAnimated:1];
}

- (void)availableNetworksDidChangeForProvider:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100A7B6C4;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_captureAnalyticsForRemovedNetwork:(id)a3
{
  v4 = a3;
  v5 = [(VGChargingNetworkAvailabilityProvider *)self->_networksProvider suggestedNetworks];

  if (v5)
  {
    v6 = [(VGChargingNetworkAvailabilityProvider *)self->_networksProvider suggestedNetworks];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100A7B914;
    v10[3] = &unk_101633110;
    v11 = v4;
    v7 = sub_100030774(v6, v10);

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
    [(NSMutableArray *)self->_networksAwaitingLogging addObject:v4];
  }
}

- (void)_updateContent
{
  [(EditVehicleViewController *)self _updateDoneButtonAvailability];
  v3 = [(EditVehicleViewController *)self _selectedColor];
  v4 = [(EditVehicleViewController *)self vehicleColorView];
  [v4 setBackgroundColor:v3];

  currentNickname = self->_currentNickname;
  v6 = [(EditVehicleViewController *)self nicknameCell];
  v7 = [v6 textField];
  [v7 setText:currentNickname];

  v8 = [(VGVehicle *)self->_vehicle licensePlate];
  v9 = [(EditVehicleViewController *)self nicknameCell];
  v10 = [v9 textField];
  [v10 setPlaceholder:v8];

  v11 = [(EditVehicleViewController *)self vehicleColorView];
  v12 = [v11 backgroundColor];
  v13 = +[UIColor whiteColor];
  [v12 _maps_euclideanDistanceFromColor:v13];
  v15 = v14;

  if (v15 >= 0.1)
  {
    v19 = +[UIColor systemWhiteColor];
    v16 = [(EditVehicleViewController *)self vehicleIconView];
    [v16 setTintColor:v19];
  }

  else
  {
    v19 = [NSBundle bundleForClass:objc_opt_class()];
    v16 = [(EditVehicleViewController *)self traitCollection];
    v17 = [UIColor colorNamed:@"TertiaryVehicleTint" inBundle:v19 compatibleWithTraitCollection:v16];
    v18 = [(EditVehicleViewController *)self vehicleIconView];
    [v18 setTintColor:v17];
  }
}

- (void)_updateDoneButtonAvailability
{
  v3 = [(EditVehicleViewController *)self selectedIndex];
  v4 = [(VGVehicle *)self->_vehicle combinedDisplayName];
  v5 = [v4 isEqualToString:self->_currentNickname];

  v6 = [(NSMutableArray *)self->_removedNetworks count];
  v7 = v5 ^ 1;
  if (v6)
  {
    v7 = 1;
  }

  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  v10 = [(EditVehicleViewController *)self navigationItem];
  v9 = [v10 rightBarButtonItem];
  [v9 setEnabled:v8];
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (a4 == 1)
  {
    v9 = [v7 row];
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
      v11 = [(EditVehicleViewController *)self tableView];
      [v11 reloadData];

      [(EditVehicleViewController *)self _updateContent];
    }
  }
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(EditVehicleViewController *)self tableStructure];
  v7 = [v5 section];

  v8 = [v6 objectAtIndexedSubscript:v7];

  v9 = v8 == self->_preferredChargersSection;
  return v9;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(EditVehicleViewController *)self tableStructure];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v6, "section")}];

  v10 = [v9 cells];
  v11 = [v6 row];

  v12 = [v10 objectAtIndexedSubscript:v11];

  [v7 frame];
  Width = CGRectGetWidth(v21);
  [v7 layoutMargins];
  v15 = v14;
  [v7 layoutMargins];
  v17 = v16;

  [v12 cellHeightWithWidth:Width - (v15 + v17)];
  v19 = v18;

  return v19;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(EditVehicleViewController *)self tableStructure];
  v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];

  v8 = [v7 cells];
  v9 = [v5 row];

  v10 = [v8 objectAtIndexedSubscript:v9];

  return v10;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(EditVehicleViewController *)self tableStructure];
  v6 = [v5 objectAtIndexedSubscript:a4];

  v7 = [v6 cells];
  v8 = [v7 count];

  return v8;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(EditVehicleViewController *)self tableStructure];
  v4 = [v3 count];

  return v4;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(UITableViewHeaderFooterView);
  v8 = +[UIListContentConfiguration prominentInsetGroupedHeaderConfiguration];
  v9 = [(EditVehicleViewController *)self tableView:v6 titleForHeaderInSection:a4];

  [v8 setText:v9];
  v10 = +[UIColor secondaryLabelColor];
  v11 = [v8 textProperties];
  [v11 setColor:v10];

  v12 = [UIFont _preferredFontForTextStyle:UIFontTextStyleSubheadline weight:UIFontWeightBold];
  v13 = [v8 textProperties];
  [v13 setFont:v12];

  [v7 setContentConfiguration:v8];

  return v7;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = [(EditVehicleViewController *)self tableStructure];
  v6 = [v5 objectAtIndexedSubscript:a4];

  v7 = [v6 headerTitle];

  return v7;
}

- (void)textFieldDidEndEditing:(id)a3
{
  v4 = [a3 text];
  currentNickname = self->_currentNickname;
  self->_currentNickname = v4;

  [(EditVehicleViewController *)self _updateContent];
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a5;
  v10 = [a3 text];
  v11 = [v10 stringByReplacingCharactersInRange:location withString:{length, v9}];

  currentNickname = self->_currentNickname;
  self->_currentNickname = v11;

  [(EditVehicleViewController *)self _updateDoneButtonAvailability];
  return 1;
}

- (void)textFieldDidBeginEditing:(id)a3
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

- (void)colorPicker:(id)a3 didSelectIndex:(unint64_t)a4
{
  v6 = +[MKMapService sharedService];
  [v6 captureUserAction:442 onTarget:662 eventValue:0];

  [(EditVehicleViewController *)self setSelectedIndex:a4];

  [(EditVehicleViewController *)self _updateContent];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = EditVehicleViewController;
  [(EditVehicleViewController *)&v7 viewWillDisappear:a3];
  v4 = [(EditVehicleViewController *)self traitCollection];
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
  v9.super_class = EditVehicleViewController;
  [(EditVehicleViewController *)&v9 viewWillAppear:?];
  v5 = [(EditVehicleViewController *)self traitCollection];
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
  v29.receiver = self;
  v29.super_class = EditVehicleViewController;
  [(EditVehicleViewController *)&v29 viewDidLoad];
  v3 = [(EditVehicleViewController *)self view];
  v4 = [(EditVehicleViewController *)self tableView];
  [v3 addSubview:v4];

  v5 = [(EditVehicleViewController *)self tableView];
  [v5 setEditing:1];

  v28 = [(EditVehicleViewController *)self tableView];
  v26 = [v28 leadingAnchor];
  v27 = [(EditVehicleViewController *)self view];
  v25 = [v27 leadingAnchor];
  v24 = [v26 constraintEqualToAnchor:v25];
  v30[0] = v24;
  v23 = [(EditVehicleViewController *)self tableView];
  v21 = [v23 trailingAnchor];
  v22 = [(EditVehicleViewController *)self view];
  v20 = [v22 trailingAnchor];
  v19 = [v21 constraintEqualToAnchor:v20];
  v30[1] = v19;
  v18 = [(EditVehicleViewController *)self tableView];
  v17 = [v18 topAnchor];
  v6 = [(EditVehicleViewController *)self view];
  v7 = [v6 topAnchor];
  v8 = [v17 constraintEqualToAnchor:v7];
  v30[2] = v8;
  v9 = [(EditVehicleViewController *)self tableView];
  v10 = [v9 bottomAnchor];
  v11 = [(EditVehicleViewController *)self view];
  v12 = [v11 bottomAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  v30[3] = v13;
  v14 = [NSArray arrayWithObjects:v30 count:4];
  [NSLayoutConstraint activateConstraints:v14];

  v15 = +[UIColor systemGroupedBackgroundColor];
  v16 = [(EditVehicleViewController *)self view];
  [v16 setBackgroundColor:v15];

  [(EditVehicleViewController *)self _updateContent];
}

- (void)setSelectedIndex:(unint64_t)a3
{
  v4 = [NSNumber numberWithUnsignedInteger:a3];
  selectedIndexBacking = self->_selectedIndexBacking;
  self->_selectedIndexBacking = v4;
}

- (unint64_t)selectedIndex
{
  selectedIndexBacking = self->_selectedIndexBacking;
  if (!selectedIndexBacking)
  {
    self->_selectedIndexBacking = &off_1016E82D0;
    v4 = [(VGVehicle *)self->_vehicle colorHex];
    v5 = [UIColor _maps_colorFromHexRepresentation:v4];

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
    v4 = [(EditVehicleViewController *)self selectedIndex];
    v5 = [VehicleColorPicker alloc];
    colors = self->_colors;
    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0;
    }

    else
    {
      v7 = [NSNumber numberWithUnsignedInteger:v4];
    }

    v8 = +[UIColor systemGroupedBackgroundColor];
    v9 = [(VehicleColorPicker *)v5 initWithColors:colors colorsPerRow:6 colorEdgeInsets:v7 selectedIndex:v8 contrastColor:self delegate:8.0, 8.0, 8.0, 8.0];
    v10 = self->_colorPicker;
    self->_colorPicker = v9;

    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
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

    v6 = [(EditVehicleViewController *)self colorPicker];
    [(VehicleColorPickerCell *)self->_colorPickerCell setColorPicker:v6];

    [(VehicleColorPickerCell *)self->_colorPickerCell setSelectionStyle:0];
    v7 = +[UIColor clearColor];
    [(VehicleColorPickerCell *)self->_colorPickerCell setBackgroundColor:v7];

    [(VehicleColorPickerCell *)self->_colorPickerCell setAccessibilityIdentifier:@"ColorPickerCell"];
    v8 = [(VehicleColorPickerCell *)self->_colorPickerCell contentView];
    v9 = [(EditVehicleViewController *)self colorPicker];
    [v8 addSubview:v9];

    v19 = self->_colorPickerCell;
    v24 = [(EditVehicleViewController *)self colorPicker];
    v23 = [v24 centerYAnchor];
    v22 = [(VehicleColorPickerCell *)self->_colorPickerCell centerYAnchor];
    v21 = [v23 constraintEqualToAnchor:v22];
    v25[0] = v21;
    v20 = [(EditVehicleViewController *)self colorPicker];
    v10 = [v20 leadingAnchor];
    v11 = [(VehicleColorPickerCell *)self->_colorPickerCell leadingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v25[1] = v12;
    v13 = [(EditVehicleViewController *)self colorPicker];
    v14 = [v13 trailingAnchor];
    v15 = [(VehicleColorPickerCell *)self->_colorPickerCell trailingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
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

    v6 = [(VehicleTextFieldCell *)self->_nicknameCell textField];
    [v6 setDelegate:self];

    v7 = [(VehicleTextFieldCell *)self->_nicknameCell textField];
    [v7 setAutocorrectionType:1];

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
    v6 = [(UIView *)self->_vehicleColorView layer];
    [v6 setCornerRadius:50.0];

    v7 = self->_vehicleColorView;
    v8 = [(EditVehicleViewController *)self vehicleIconView];
    [(UIView *)v7 addSubview:v8];

    v20 = self->_vehicleColorView;
    v27 = [(EditVehicleViewController *)self vehicleIconView];
    v26 = [v27 centerXAnchor];
    v25 = [(UIView *)self->_vehicleColorView centerXAnchor];
    v24 = [v26 constraintEqualToAnchor:v25];
    v28[0] = v24;
    v23 = [(EditVehicleViewController *)self vehicleIconView];
    v22 = [v23 centerYAnchor];
    v21 = [(UIView *)self->_vehicleColorView centerYAnchor];
    v19 = [v22 constraintEqualToAnchor:v21];
    v28[1] = v19;
    v18 = [(EditVehicleViewController *)self vehicleIconView];
    v9 = [v18 widthAnchor];
    v10 = [(UIView *)self->_vehicleColorView widthAnchor];
    v11 = [v9 constraintLessThanOrEqualToAnchor:v10];
    v28[2] = v11;
    v12 = [(EditVehicleViewController *)self vehicleIconView];
    v13 = [v12 heightAnchor];
    v14 = [(UIView *)self->_vehicleColorView heightAnchor];
    v15 = [v13 constraintLessThanOrEqualToAnchor:v14];
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
    v7 = [(EditVehicleViewController *)self vehicleColorView];
    [(UIView *)v6 addSubview:v7];

    v24 = self->_headerView;
    v32 = [(EditVehicleViewController *)self vehicleColorView];
    v31 = [v32 centerXAnchor];
    v30 = [(UIView *)self->_headerView centerXAnchor];
    v29 = [v31 constraintEqualToAnchor:v30];
    v33[0] = v29;
    v28 = [(EditVehicleViewController *)self vehicleColorView];
    v27 = [v28 topAnchor];
    v26 = [(UIView *)self->_headerView topAnchor];
    v25 = [v27 constraintEqualToAnchor:v26 constant:32.0];
    v33[1] = v25;
    v23 = [(EditVehicleViewController *)self vehicleColorView];
    v22 = [v23 widthAnchor];
    v21 = [v22 constraintEqualToConstant:100.0];
    v33[2] = v21;
    v20 = [(EditVehicleViewController *)self vehicleColorView];
    v19 = [v20 heightAnchor];
    v8 = [v19 constraintEqualToConstant:100.0];
    v33[3] = v8;
    v9 = [(EditVehicleViewController *)self vehicleColorView];
    v10 = [v9 bottomAnchor];
    v11 = [(UIView *)self->_headerView bottomAnchor];
    v12 = [v10 constraintLessThanOrEqualToAnchor:v11 constant:-24.0];
    v33[4] = v12;
    v13 = [(UIView *)self->_headerView heightAnchor];
    v14 = [v13 constraintGreaterThanOrEqualToConstant:156.0];
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
    v6 = [(EditVehicleViewController *)self headerView];
    [(UITableView *)self->_tableView setTableHeaderView:v6];

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
    v6 = [(EditVehicleViewController *)self nicknameCell];
    v30 = v6;
    v7 = [NSArray arrayWithObjects:&v30 count:1];
    v8 = [(VehicleDetailTableSection *)v5 initWithCells:v7];

    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"[Virtual Garage] Vehicle Name" value:@"localized string not found" table:0];
    [(VehicleDetailTableSection *)v8 setHeaderTitle:v10];

    [v4 addObject:v8];
    v11 = [VehicleDetailTableSection alloc];
    v12 = [(EditVehicleViewController *)self colorPickerCell];
    v29 = v12;
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

- (EditVehicleViewController)initWithColors:(id)a3 vehicle:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v40.receiver = self;
  v40.super_class = EditVehicleViewController;
  v11 = [(EditVehicleViewController *)&v40 initWithNibName:0 bundle:0];
  if (v11)
  {
    v12 = [v8 copy];
    colors = v11->_colors;
    v11->_colors = v12;

    objc_storeStrong(&v11->_vehicle, a4);
    objc_storeWeak(&v11->_delegate, v10);
    v14 = [v9 combinedDisplayName];
    currentNickname = v11->_currentNickname;
    v11->_currentNickname = v14;

    v16 = [v9 preferredChargingNetworks];
    v17 = [v16 allObjects];
    v18 = [v17 sortedArrayUsingComparator:&stru_1016330C8];
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
    v29 = [(EditVehicleViewController *)v11 navigationItem];
    [v29 setTitle:v28];

    v30 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:v11 action:"pressedCancel"];
    v31 = [(EditVehicleViewController *)v11 navigationItem];
    [v31 setLeftBarButtonItem:v30];

    v32 = [(EditVehicleViewController *)v11 navigationItem];
    v33 = [v32 leftBarButtonItem];
    [v33 setAccessibilityIdentifier:@"LeftBarButtonItem"];

    v34 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:v11 action:"pressedDone"];
    v35 = [(EditVehicleViewController *)v11 navigationItem];
    [v35 setRightBarButtonItem:v34];

    v36 = [(EditVehicleViewController *)v11 navigationItem];
    v37 = [v36 rightBarButtonItem];
    [v37 setAccessibilityIdentifier:@"RightBarButtonItem"];

    v38 = [(EditVehicleViewController *)v11 view];
    [v38 setAccessibilityIdentifier:@"EditVehicleView"];
  }

  return v11;
}

@end