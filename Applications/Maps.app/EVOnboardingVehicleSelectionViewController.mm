@interface EVOnboardingVehicleSelectionViewController
- (EVOnboardingVehicleSelectionViewController)initWithVehicles:(id)vehicles delegate:(id)delegate;
- (id)_selectedVehicles;
- (id)obViewController;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_donePressed;
- (void)_updateNextButton;
- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation EVOnboardingVehicleSelectionViewController

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[VehicleCell reuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithIdentifier:v8 forIndexPath:pathCopy];

  v10 = [(NSMutableSet *)self->_selectedIndexPaths containsObject:pathCopy];
  vehicles = self->_vehicles;
  v12 = [pathCopy row];

  v13 = [(NSArray *)vehicles objectAtIndexedSubscript:v12];
  [v9 setupWithVehicle:v13 cellStyle:0 isSelected:v10];

  return v9;
}

- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[MKMapService sharedService];
  [v8 captureUserAction:447 onTarget:660 eventValue:0];

  [(NSMutableSet *)self->_selectedIndexPaths removeObject:pathCopy];
  v9 = [viewCopy cellForRowAtIndexPath:pathCopy];

  [v9 setAccessoryType:0];

  [(EVOnboardingVehicleSelectionViewController *)self _updateNextButton];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[MKMapService sharedService];
  [v8 captureUserAction:2113 onTarget:660 eventValue:0];

  [(NSMutableSet *)self->_selectedIndexPaths addObject:pathCopy];
  v9 = [viewCopy cellForRowAtIndexPath:pathCopy];

  [v9 setAccessoryType:3];

  [(EVOnboardingVehicleSelectionViewController *)self _updateNextButton];
}

- (void)_donePressed
{
  v3 = +[MKMapService sharedService];
  [v3 captureUserAction:41 onTarget:660 eventValue:0];

  _selectedVehicles = [(EVOnboardingVehicleSelectionViewController *)self _selectedVehicles];
  v5 = sub_100798370();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = _selectedVehicles;
    v7 = v6;
    if (v6)
    {
      if ([v6 count])
      {
        v25 = v5;
        v26 = _selectedVehicles;
        selfCopy = self;
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

            _selectedVehicles = v26;
            self = selfCopy;
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
  [WeakRetained vehicleSelectionViewController:self didSelectContinueWithVehicles:_selectedVehicles];
}

- (void)_updateNextButton
{
  if (MapsFeature_IsEnabled_EVRoutingEnhancements())
  {
    v3 = [(NSMutableSet *)self->_selectedIndexPaths count]!= 0;
    navigationItem = [(EVOnboardingVehicleSelectionViewController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    [rightBarButtonItem setEnabled:v3];
  }
}

- (id)_selectedVehicles
{
  allObjects = [(NSMutableSet *)self->_selectedIndexPaths allObjects];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100EB05C4;
  v6[3] = &unk_101657A50;
  v6[4] = self;
  v4 = sub_100021DB0(allObjects, v6);

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
  view = [v8 view];
  [view setAccessibilityIdentifier:@"EVOnboardingVehicleSelectionView"];

  [v8 setModalPresentationStyle:2];
  headerView = [v8 headerView];
  [headerView setAllowFullWidthIcon:1];

  v11 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v8 setTableView:v11];

  tableView = [v8 tableView];
  [tableView setAccessibilityIdentifier:@"EVOnboardingVehicleSelectionTableView"];

  tableView2 = [v8 tableView];
  [tableView2 setAllowsMultipleSelection:1];

  tableView3 = [v8 tableView];
  [tableView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  tableView4 = [v8 tableView];
  LODWORD(v16) = 1148846080;
  [tableView4 setContentCompressionResistancePriority:1 forAxis:v16];

  tableView5 = [v8 tableView];
  [tableView5 setDataSource:self];

  tableView6 = [v8 tableView];
  [tableView6 setDelegate:self];

  v19 = +[UIColor clearColor];
  tableView7 = [v8 tableView];
  [tableView7 setBackgroundColor:v19];

  tableView8 = [v8 tableView];
  v22 = objc_opt_class();
  v23 = +[VehicleCell reuseIdentifier];
  [tableView8 registerClass:v22 forCellReuseIdentifier:v23];

  v24 = +[UIColor systemBackgroundColor];
  view2 = [v8 view];
  [view2 setBackgroundColor:v24];

  tableView9 = [v8 tableView];
  tableView = self->_tableView;
  self->_tableView = tableView9;

  return v8;
}

- (void)viewDidAppear:(BOOL)appear
{
  v13.receiver = self;
  v13.super_class = EVOnboardingVehicleSelectionViewController;
  [(EVOnboardingVehicleSelectionViewController *)&v13 viewDidAppear:appear];
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

- (EVOnboardingVehicleSelectionViewController)initWithVehicles:(id)vehicles delegate:(id)delegate
{
  vehiclesCopy = vehicles;
  delegateCopy = delegate;
  v24.receiver = self;
  v24.super_class = EVOnboardingVehicleSelectionViewController;
  v9 = [(EVOnboardingBaseViewController *)&v24 initWithDelegate:delegateCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, delegateCopy);
    objc_storeStrong(&v10->_vehicles, vehicles);
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
      navigationItem2 = [v19 localizedStringForKey:@"[EV Onboarding] Next" value:@"localized string not found" table:0];
      v21 = [v18 initWithTitle:navigationItem2 style:2 target:v10 action:"_donePressed"];
      navigationItem = [(EVOnboardingVehicleSelectionViewController *)v10 navigationItem];
      [navigationItem setRightBarButtonItem:v21];
    }

    else
    {
      v19 = [v17 initWithBarButtonSystemItem:0 target:v10 action:"_donePressed"];
      navigationItem2 = [(EVOnboardingVehicleSelectionViewController *)v10 navigationItem];
      [navigationItem2 setRightBarButtonItem:v19];
    }
  }

  return v10;
}

@end