@interface EVOnboardingVehicleSelectionViewController
- (EVOnboardingVehicleSelectionViewController)initWithVehicles:(id)a3 delegate:(id)a4;
- (id)_selectedVehicles;
- (id)obViewController;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_donePressed;
- (void)_updateNextButton;
- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation EVOnboardingVehicleSelectionViewController

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[VehicleCell reuseIdentifier];
  v9 = [v7 dequeueReusableCellWithIdentifier:v8 forIndexPath:v6];

  v10 = [(NSMutableSet *)self->_selectedIndexPaths containsObject:v6];
  vehicles = self->_vehicles;
  v12 = [v6 row];

  v13 = [(NSArray *)vehicles objectAtIndexedSubscript:v12];
  [v9 setupWithVehicle:v13 cellStyle:0 isSelected:v10];

  return v9;
}

- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[MKMapService sharedService];
  [v8 captureUserAction:447 onTarget:660 eventValue:0];

  [(NSMutableSet *)self->_selectedIndexPaths removeObject:v6];
  v9 = [v7 cellForRowAtIndexPath:v6];

  [v9 setAccessoryType:0];

  [(EVOnboardingVehicleSelectionViewController *)self _updateNextButton];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[MKMapService sharedService];
  [v8 captureUserAction:2113 onTarget:660 eventValue:0];

  [(NSMutableSet *)self->_selectedIndexPaths addObject:v6];
  v9 = [v7 cellForRowAtIndexPath:v6];

  [v9 setAccessoryType:3];

  [(EVOnboardingVehicleSelectionViewController *)self _updateNextButton];
}

- (void)_donePressed
{
  v3 = +[MKMapService sharedService];
  [v3 captureUserAction:41 onTarget:660 eventValue:0];

  v4 = [(EVOnboardingVehicleSelectionViewController *)self _selectedVehicles];
  v5 = sub_100798370();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = v4;
    v7 = v6;
    if (v6)
    {
      if ([v6 count])
      {
        v25 = v5;
        v26 = v4;
        v27 = self;
        v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v7 count]);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v24 = v7;
        v9 = v7;
        v10 = [v9 countByEnumeratingWithState:&v28 objects:buf count:16];
        if (!v10)
        {
          goto LABEL_21;
        }

        v11 = v10;
        v12 = *v29;
        while (1)
        {
          v13 = 0;
          do
          {
            if (*v29 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v28 + 1) + 8 * v13);
            if (v14)
            {
              v15 = objc_opt_class();
              v16 = NSStringFromClass(v15);
              if ((objc_opt_respondsToSelector() & 1) == 0)
              {
                goto LABEL_14;
              }

              v17 = [v14 performSelector:"accessibilityIdentifier"];
              v18 = v17;
              if (v17 && ![v17 isEqualToString:v16])
              {
                v19 = [NSString stringWithFormat:@"%@<%p, %@>", v16, v14, v18];
              }

              else
              {

LABEL_14:
                v19 = [NSString stringWithFormat:@"%@<%p>", v16, v14];
              }

              goto LABEL_17;
            }

            v19 = @"<nil>";
LABEL_17:

            [v8 addObject:v19];
            v13 = v13 + 1;
          }

          while (v11 != v13);
          v20 = [v9 countByEnumeratingWithState:&v28 objects:buf count:16];
          v11 = v20;
          if (!v20)
          {
LABEL_21:

            v21 = [v9 componentsJoinedByString:{@", "}];
            v22 = [NSString stringWithFormat:@"<%p> [%@]", v9, v21];

            v4 = v26;
            self = v27;
            v7 = v24;
            v5 = v25;
            goto LABEL_24;
          }
        }
      }

      v22 = [NSString stringWithFormat:@"<%p> (empty)", v7];
    }

    else
    {
      v22 = @"<nil>";
    }

LABEL_24:

    *buf = 138412290;
    v33 = v22;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "User pressed done with vehicles: %@.", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained vehicleSelectionViewController:self didSelectContinueWithVehicles:v4];
}

- (void)_updateNextButton
{
  if (MapsFeature_IsEnabled_EVRoutingEnhancements())
  {
    v3 = [(NSMutableSet *)self->_selectedIndexPaths count]!= 0;
    v5 = [(EVOnboardingVehicleSelectionViewController *)self navigationItem];
    v4 = [v5 rightBarButtonItem];
    [v4 setEnabled:v3];
  }
}

- (id)_selectedVehicles
{
  v3 = [(NSMutableSet *)self->_selectedIndexPaths allObjects];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100EB05C4;
  v6[3] = &unk_101657A50;
  v6[4] = self;
  v4 = sub_100021DB0(v3, v6);

  return v4;
}

- (id)obViewController
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"[VirtualGarage] Choose Vehicles" value:@"localized string not found" table:0];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"[EV Onboarding] Choose vehicles to plan your trips with." value:@"localized string not found" table:0];

  v7 = [UIImage imageNamed:@"multipleEV"];
  v8 = [[OBTableWelcomeController alloc] initWithTitle:v4 detailText:v6 icon:v7 adoptTableViewScrollView:1];
  v9 = [v8 view];
  [v9 setAccessibilityIdentifier:@"EVOnboardingVehicleSelectionView"];

  [v8 setModalPresentationStyle:2];
  v10 = [v8 headerView];
  [v10 setAllowFullWidthIcon:1];

  v11 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v8 setTableView:v11];

  v12 = [v8 tableView];
  [v12 setAccessibilityIdentifier:@"EVOnboardingVehicleSelectionTableView"];

  v13 = [v8 tableView];
  [v13 setAllowsMultipleSelection:1];

  v14 = [v8 tableView];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

  v15 = [v8 tableView];
  LODWORD(v16) = 1148846080;
  [v15 setContentCompressionResistancePriority:1 forAxis:v16];

  v17 = [v8 tableView];
  [v17 setDataSource:self];

  v18 = [v8 tableView];
  [v18 setDelegate:self];

  v19 = +[UIColor clearColor];
  v20 = [v8 tableView];
  [v20 setBackgroundColor:v19];

  v21 = [v8 tableView];
  v22 = objc_opt_class();
  v23 = +[VehicleCell reuseIdentifier];
  [v21 registerClass:v22 forCellReuseIdentifier:v23];

  v24 = +[UIColor systemBackgroundColor];
  v25 = [v8 view];
  [v25 setBackgroundColor:v24];

  v26 = [v8 tableView];
  tableView = self->_tableView;
  self->_tableView = v26;

  return v8;
}

- (void)viewDidAppear:(BOOL)a3
{
  v13.receiver = self;
  v13.super_class = EVOnboardingVehicleSelectionViewController;
  [(EVOnboardingVehicleSelectionViewController *)&v13 viewDidAppear:a3];
  [(UITableView *)self->_tableView setDelegate:self];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = self->_selectedIndexPaths;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(UITableView *)self->_tableView selectRowAtIndexPath:*(*(&v9 + 1) + 8 * v8) animated:0 scrollPosition:0, v9];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v6);
  }
}

- (EVOnboardingVehicleSelectionViewController)initWithVehicles:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v24.receiver = self;
  v24.super_class = EVOnboardingVehicleSelectionViewController;
  v9 = [(EVOnboardingBaseViewController *)&v24 initWithDelegate:v8];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, v8);
    objc_storeStrong(&v10->_vehicles, a3);
    v11 = +[NSMutableSet set];
    selectedIndexPaths = v10->_selectedIndexPaths;
    v10->_selectedIndexPaths = v11;

    if ([(NSArray *)v10->_vehicles count])
    {
      v13 = 0;
      do
      {
        v14 = v10->_selectedIndexPaths;
        v15 = [NSIndexPath indexPathForRow:v13 inSection:0];
        [(NSMutableSet *)v14 addObject:v15];

        ++v13;
      }

      while (v13 < [(NSArray *)v10->_vehicles count]);
    }

    IsEnabled_EVRoutingEnhancements = MapsFeature_IsEnabled_EVRoutingEnhancements();
    v17 = [UIBarButtonItem alloc];
    v18 = v17;
    if (IsEnabled_EVRoutingEnhancements)
    {
      v19 = +[NSBundle mainBundle];
      v20 = [v19 localizedStringForKey:@"[EV Onboarding] Next" value:@"localized string not found" table:0];
      v21 = [v18 initWithTitle:v20 style:2 target:v10 action:"_donePressed"];
      v22 = [(EVOnboardingVehicleSelectionViewController *)v10 navigationItem];
      [v22 setRightBarButtonItem:v21];
    }

    else
    {
      v19 = [v17 initWithBarButtonSystemItem:0 target:v10 action:"_donePressed"];
      v20 = [(EVOnboardingVehicleSelectionViewController *)v10 navigationItem];
      [v20 setRightBarButtonItem:v19];
    }
  }

  return v10;
}

@end