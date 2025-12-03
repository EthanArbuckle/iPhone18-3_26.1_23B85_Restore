@interface VehicleListViewController
- (BOOL)_isIndexPathOfAddNewCarCell:(id)cell;
- (BOOL)_shouldShowManualAddCell;
- (BOOL)_shouldShowUnpairedVehicles;
- (VehicleListViewController)init;
- (id)actionCoordinator;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_consumeUpdatedUnpairedVehicles:(id)vehicles;
- (void)_consumeUpdatedVirtualGarage:(id)garage;
- (void)_refreshSavedVehiclesStates;
- (void)_setupConstraints;
- (void)_updateVehicle:(id)vehicle atIndex:(unint64_t)index;
- (void)dealloc;
- (void)headerViewButtonTapped:(id)tapped buttonType:(unint64_t)type;
- (void)setSavedVehicles:(id)vehicles;
- (void)setUnpairedVehicles:(id)vehicles;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)vehicleDetailViewController:(id)controller deleteVehicle:(id)vehicle;
- (void)vehicleDetailViewController:(id)controller saveVehicleEdit:(id)edit;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation VehicleListViewController

- (void)vehicleDetailViewController:(id)controller deleteVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  v6 = +[VGVirtualGarageService sharedService];
  [v6 virtualGarageRemoveVehicle:vehicleCopy];

  navigationController = [(VehicleListViewController *)self navigationController];
  v7 = [navigationController popToViewController:self animated:1];
}

- (void)vehicleDetailViewController:(id)controller saveVehicleEdit:(id)edit
{
  editCopy = edit;
  v5 = +[VGVirtualGarageService sharedService];
  [v5 virtualGarageSaveVehicle:editCopy];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  section = [pathCopy section];
  if (section == 1)
  {
    v13 = [(NSArray *)self->_unpairedVehicles count];
    v14 = sub_100022C48();
    v15 = v14;
    if (!v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        v33 = "Tried to present onboarding from VG with empty vehicles.";
        goto LABEL_35;
      }

LABEL_36:

      goto LABEL_41;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = self->_unpairedVehicles;
      v17 = v16;
      if (v16)
      {
        if ([(NSArray *)v16 count])
        {
          v37 = v15;
          selfCopy = self;
          v39 = pathCopy;
          v18 = [NSMutableArray arrayWithCapacity:[(NSArray *)v17 count]];
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v36 = v17;
          v19 = v17;
          v20 = [(NSArray *)v19 countByEnumeratingWithState:&v40 objects:buf count:16];
          if (!v20)
          {
            goto LABEL_27;
          }

          v21 = v20;
          v22 = *v41;
          while (1)
          {
            v23 = 0;
            do
            {
              if (*v41 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v40 + 1) + 8 * v23);
              if (v24)
              {
                v25 = objc_opt_class();
                v26 = NSStringFromClass(v25);
                if ((objc_opt_respondsToSelector() & 1) == 0)
                {
                  goto LABEL_20;
                }

                v27 = [v24 performSelector:"accessibilityIdentifier"];
                v28 = v27;
                if (v27 && ![v27 isEqualToString:v26])
                {
                  v29 = [NSString stringWithFormat:@"%@<%p, %@>", v26, v24, v28];
                }

                else
                {

LABEL_20:
                  v29 = [NSString stringWithFormat:@"%@<%p>", v26, v24];
                }

                goto LABEL_23;
              }

              v29 = @"<nil>";
LABEL_23:

              [v18 addObject:v29];
              v23 = v23 + 1;
            }

            while (v21 != v23);
            v30 = [(NSArray *)v19 countByEnumeratingWithState:&v40 objects:buf count:16];
            v21 = v30;
            if (!v30)
            {
LABEL_27:

              v31 = [(NSArray *)v19 componentsJoinedByString:@", "];
              v32 = [NSString stringWithFormat:@"<%p> [%@]", v19, v31];

              self = selfCopy;
              pathCopy = v39;
              v15 = v37;
              v17 = v36;
              goto LABEL_39;
            }
          }
        }

        v32 = [NSString stringWithFormat:@"<%p> (empty)", v17];
      }

      else
      {
        v32 = @"<nil>";
      }

LABEL_39:

      *buf = 138412290;
      v45 = v32;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "User selected vehicle onboarding from VG with vehicles: %@", buf, 0xCu);
    }

    actionCoordinator = [(VehicleListViewController *)self actionCoordinator];
    [actionCoordinator presentVehicleOnboardingWithVehicles:self->_unpairedVehicles completion:0];

    goto LABEL_41;
  }

  if (section)
  {
    v15 = sub_100022C48();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      v33 = "Invalid section count in VehicleListVC";
LABEL_35:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, v33, buf, 2u);
      goto LABEL_36;
    }

    goto LABEL_36;
  }

  if (![(VehicleListViewController *)self _isIndexPathOfAddNewCarCell:pathCopy])
  {
    v8 = -[NSArray objectAtIndexedSubscript:](self->_savedVehicles, "objectAtIndexedSubscript:", [pathCopy row]);
    if (v8)
    {
      actionCoordinator2 = v8;
      v10 = +[MKMapService sharedService];
      [v10 captureUserAction:2126 onTarget:660 eventValue:0];

      v11 = [[VehicleDetailViewController alloc] initWithVehicle:actionCoordinator2 delegate:self];
      [(VehicleDetailViewController *)v11 setVehicleCount:[(NSArray *)self->_savedVehicles count]];
      v12 = [[UINavigationController alloc] initWithRootViewController:v11];
      [(VehicleListViewController *)self presentViewController:v12 animated:1 completion:0];

LABEL_32:
      goto LABEL_41;
    }
  }

  v34 = +[MKMapService sharedService];
  [v34 captureUserAction:2115 onTarget:660 eventValue:0];

  if ([(VehicleListViewController *)self _shouldShowManualAddCell])
  {
    actionCoordinator2 = [(VehicleListViewController *)self actionCoordinator];
    [actionCoordinator2 presentLPRWithVehicle:0 scenario:0 presenter:self completionBlock:0];
    goto LABEL_32;
  }

LABEL_41:
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  viewCopy = view;
  if (section)
  {
    if (section == 1)
    {
      if ([(VehicleListViewController *)self _shouldShowUnpairedVehicles])
      {
        v7 = +[NSBundle mainBundle];
        v8 = [v7 localizedStringForKey:@"[EV Onboarding] Welcome screen privacy text" value:@"localized string not found" table:0];

        goto LABEL_9;
      }
    }

    else
    {
      v9 = sub_100022C48();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "Invalid section count in VehicleListVC", v11, 2u);
      }
    }
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  if (section == 1)
  {
    v9 = [viewCopy dequeueReusableCellWithIdentifier:@"kOnboardingCellIdentifier" forIndexPath:pathCopy];
    [v9 setAccessibilityIdentifier:@"OnboardVehicleCell"];
    v15 = self->_unpairedVehicles;
    if ([(NSArray *)v15 count])
    {
      if ([(NSArray *)v15 count]== 1 || sub_100F353B8(v15))
      {
        v16 = +[NSBundle mainBundle];
        v17 = [v16 localizedStringForKey:@"Onboard vehicles from VG [Title value:VG table:{Onboarding, Single]", @"localized string not found", 0}];

        firstObject = [(NSArray *)v15 firstObject];
        manufacturer = [firstObject manufacturer];
        v20 = manufacturer;
        if (manufacturer)
        {
          v21 = [NSString stringWithFormat:v17, manufacturer];
        }

        else
        {
          firstObject2 = [(NSArray *)v15 firstObject];
          displayName = [firstObject2 displayName];
          v21 = [NSString stringWithFormat:v17, displayName];
        }
      }

      else
      {
        v17 = +[NSBundle mainBundle];
        v21 = [v17 localizedStringForKey:@"Onboard vehicles from VG [Title value:VG table:{Onboarding, Multiple]", @"localized string not found", 0}];
      }
    }

    else
    {
      v21 = 0;
    }

    textLabel = [v9 textLabel];
    [textLabel setText:v21];

    v27 = +[UIColor systemBlueColor];
    textLabel2 = [v9 textLabel];
    [textLabel2 setTextColor:v27];

    textLabel3 = [v9 textLabel];
    [textLabel3 setAccessibilityIdentifier:@"OnboardVehicleCellTitle"];
    goto LABEL_21;
  }

  if (!section)
  {
    if ([(VehicleListViewController *)self _isIndexPathOfAddNewCarCell:pathCopy]&& [(VehicleListViewController *)self _shouldShowManualAddCell])
    {
      v9 = [viewCopy dequeueReusableCellWithIdentifier:@"kAddNewCarCellIdentifier" forIndexPath:pathCopy];
      v10 = +[NSBundle mainBundle];
      v11 = [v10 localizedStringForKey:@"[LPR] Add License Plate car" value:@"localized string not found" table:0];
      textLabel4 = [v9 textLabel];
      [textLabel4 setText:v11];

      [v9 setAccessibilityIdentifier:@"AddLicensePlateCell"];
      textLabel3 = +[UIColor systemBlueColor];
      textLabel5 = [v9 textLabel];
      [textLabel5 setTextColor:textLabel3];
    }

    else
    {
      v23 = +[VehicleCell reuseIdentifier];
      v9 = [viewCopy dequeueReusableCellWithIdentifier:v23 forIndexPath:pathCopy];

      textLabel3 = -[NSArray objectAtIndexedSubscript:](self->_savedVehicles, "objectAtIndexedSubscript:", [pathCopy row]);
      [v9 setupWithVehicle:textLabel3 cellStyle:1 isSelected:0];
    }

LABEL_21:

    goto LABEL_22;
  }

  v22 = sub_100022C48();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, "Invalid section count in VehicleListVC", buf, 2u);
  }

  v9 = objc_opt_new();
LABEL_22:

  return v9;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  if (section == 1)
  {
    _shouldShowUnpairedVehicles = [(VehicleListViewController *)self _shouldShowUnpairedVehicles];
  }

  else if (section)
  {
    v9 = sub_100022C48();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "Invalid section count in VehicleListVC", v11, 2u);
    }

    _shouldShowUnpairedVehicles = 0;
  }

  else
  {
    v7 = [(NSArray *)self->_savedVehicles count];
    _shouldShowUnpairedVehicles = v7 + [(VehicleListViewController *)self _shouldShowManualAddCell];
  }

  return _shouldShowUnpairedVehicles;
}

- (void)headerViewButtonTapped:(id)tapped buttonType:(unint64_t)type
{
  tappedCopy = tapped;
  v5 = +[MKMapService sharedService];
  [v5 captureUserAction:34 onTarget:660 eventValue:0];

  [(ContaineeViewController *)self handleDismissAction:tappedCopy];
}

- (BOOL)_shouldShowManualAddCell
{
  IsEnabled_Alberta = MapsFeature_IsEnabled_Alberta();
  if (IsEnabled_Alberta)
  {
    LOBYTE(IsEnabled_Alberta) = sub_10000FA08(self) != 5;
  }

  return IsEnabled_Alberta;
}

- (BOOL)_shouldShowUnpairedVehicles
{
  if (!MapsFeature_IsEnabled_EVRouting() || ![(NSArray *)self->_unpairedVehicles count])
  {
    return 0;
  }

  return IsEVRoutingSupported();
}

- (void)_updateVehicle:(id)vehicle atIndex:(unint64_t)index
{
  vehicleCopy = vehicle;
  savedVehicles = [(VehicleListViewController *)self savedVehicles];
  v8 = [savedVehicles count];

  if (v8 <= index)
  {
    v9 = sub_100022C48();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      indexCopy = index;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Tried to update a vehicle at index out of bounds: %ld", buf, 0xCu);
    }
  }

  else if (vehicleCopy)
  {
    v9 = [(NSArray *)self->_savedVehicles mutableCopy];
    [v9 replaceObjectAtIndex:index withObject:vehicleCopy];
    v10 = [v9 copy];
    [(VehicleListViewController *)self setSavedVehicles:v10];

    v11 = [NSIndexPath indexPathForRow:index inSection:0];
    tableView = self->_tableView;
    v16 = v11;
    v13 = [NSArray arrayWithObjects:&v16 count:1];
    [(UITableView *)tableView reloadRowsAtIndexPaths:v13 withRowAnimation:100];
  }

  else
  {
    v9 = sub_100022C48();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      savedVehicles2 = [(VehicleListViewController *)self savedVehicles];
      v15 = [savedVehicles2 objectAtIndexedSubscript:index];
      *buf = 138412290;
      indexCopy = v15;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Tried to update a vehicle with a nil vehicle.: %@", buf, 0xCu);
    }
  }
}

- (void)_refreshSavedVehiclesStates
{
  objc_initWeak(&location, self);
  savedVehicles = self->_savedVehicles;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100AE9100;
  v4[3] = &unk_101637998;
  objc_copyWeak(&v5, &location);
  [(NSArray *)savedVehicles enumerateObjectsUsingBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (BOOL)_isIndexPathOfAddNewCarCell:(id)cell
{
  cellCopy = cell;
  if ([cellCopy section])
  {
    v5 = 0;
  }

  else
  {
    v6 = [cellCopy row];
    v5 = v6 == [(NSArray *)self->_savedVehicles count];
  }

  return v5;
}

- (void)_consumeUpdatedUnpairedVehicles:(id)vehicles
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100AE94F0;
  v4[3] = &unk_101661A90;
  v4[4] = self;
  vehiclesCopy = vehicles;
  v3 = vehiclesCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)_consumeUpdatedVirtualGarage:(id)garage
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100AE9808;
  v4[3] = &unk_101661A90;
  v4[4] = self;
  garageCopy = garage;
  v3 = garageCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (id)actionCoordinator
{
  _maps_mapsSceneDelegate = [(VehicleListViewController *)self _maps_mapsSceneDelegate];
  appCoordinator = [_maps_mapsSceneDelegate appCoordinator];
  baseActionCoordinator = [appCoordinator baseActionCoordinator];

  return baseActionCoordinator;
}

- (void)setUnpairedVehicles:(id)vehicles
{
  vehiclesCopy = vehicles;
  vehiclesCopy2 = vehicles;
  v6 = self->_unpairedVehicles;
  v7 = vehiclesCopy2;
  if (v7 | v6)
  {
    v8 = [v6 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      v9 = sub_100022C48();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [(NSArray *)self->_unpairedVehicles count];
        v11 = [v7 count];
        v12 = v7;
        v13 = v12;
        if (v7)
        {
          if ([v12 count])
          {
            v30 = v11;
            v31 = v9;
            v32 = v7;
            selfCopy = self;
            v34 = vehiclesCopy;
            v14 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v13 count]);
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            v38 = 0u;
            v29 = v13;
            v15 = v13;
            v16 = [v15 countByEnumeratingWithState:&v35 objects:buf count:16];
            if (!v16)
            {
              goto LABEL_23;
            }

            v17 = v16;
            v18 = *v36;
            while (1)
            {
              v19 = 0;
              do
              {
                if (*v36 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v35 + 1) + 8 * v19);
                if (v20)
                {
                  v21 = objc_opt_class();
                  v22 = NSStringFromClass(v21);
                  if ((objc_opt_respondsToSelector() & 1) == 0)
                  {
                    goto LABEL_16;
                  }

                  v23 = [v20 performSelector:"accessibilityIdentifier"];
                  v24 = v23;
                  if (v23 && ![v23 isEqualToString:v22])
                  {
                    v25 = [NSString stringWithFormat:@"%@<%p, %@>", v22, v20, v24];
                  }

                  else
                  {

LABEL_16:
                    v25 = [NSString stringWithFormat:@"%@<%p>", v22, v20];
                  }

                  goto LABEL_19;
                }

                v25 = @"<nil>";
LABEL_19:

                [v14 addObject:v25];
                v19 = v19 + 1;
              }

              while (v17 != v19);
              v26 = [v15 countByEnumeratingWithState:&v35 objects:buf count:16];
              v17 = v26;
              if (!v26)
              {
LABEL_23:

                v27 = [v15 componentsJoinedByString:{@", "}];
                v28 = [NSString stringWithFormat:@"<%p> [%@]", v15, v27];

                self = selfCopy;
                vehiclesCopy = v34;
                v7 = v32;
                v9 = v31;
                v13 = v29;
                v11 = v30;
                goto LABEL_26;
              }
            }
          }

          v28 = [NSString stringWithFormat:@"<%p> (empty)", v13];
        }

        else
        {
          v28 = @"<nil>";
        }

LABEL_26:

        *buf = 134218498;
        v40 = v10;
        v41 = 2048;
        v42 = v11;
        v43 = 2112;
        v44 = v28;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "VehicleListVC - unpaired vehicles updated. count from: %lu to: %lu, detail: %@", buf, 0x20u);
      }

      objc_storeStrong(&self->_unpairedVehicles, vehiclesCopy);
    }
  }
}

- (void)setSavedVehicles:(id)vehicles
{
  vehiclesCopy = vehicles;
  vehiclesCopy2 = vehicles;
  v6 = self->_savedVehicles;
  v7 = vehiclesCopy2;
  if (v7 | v6)
  {
    v8 = [v6 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      v9 = sub_100022C48();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [(NSArray *)self->_savedVehicles count];
        v11 = [v7 count];
        v12 = v7;
        v13 = v12;
        if (v7)
        {
          if ([v12 count])
          {
            v30 = v11;
            v31 = v9;
            v32 = v7;
            selfCopy = self;
            v34 = vehiclesCopy;
            v14 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v13 count]);
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            v38 = 0u;
            v29 = v13;
            v15 = v13;
            v16 = [v15 countByEnumeratingWithState:&v35 objects:buf count:16];
            if (!v16)
            {
              goto LABEL_23;
            }

            v17 = v16;
            v18 = *v36;
            while (1)
            {
              v19 = 0;
              do
              {
                if (*v36 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v35 + 1) + 8 * v19);
                if (v20)
                {
                  v21 = objc_opt_class();
                  v22 = NSStringFromClass(v21);
                  if ((objc_opt_respondsToSelector() & 1) == 0)
                  {
                    goto LABEL_16;
                  }

                  v23 = [v20 performSelector:"accessibilityIdentifier"];
                  v24 = v23;
                  if (v23 && ![v23 isEqualToString:v22])
                  {
                    v25 = [NSString stringWithFormat:@"%@<%p, %@>", v22, v20, v24];
                  }

                  else
                  {

LABEL_16:
                    v25 = [NSString stringWithFormat:@"%@<%p>", v22, v20];
                  }

                  goto LABEL_19;
                }

                v25 = @"<nil>";
LABEL_19:

                [v14 addObject:v25];
                v19 = v19 + 1;
              }

              while (v17 != v19);
              v26 = [v15 countByEnumeratingWithState:&v35 objects:buf count:16];
              v17 = v26;
              if (!v26)
              {
LABEL_23:

                v27 = [v15 componentsJoinedByString:{@", "}];
                v28 = [NSString stringWithFormat:@"<%p> [%@]", v15, v27];

                self = selfCopy;
                vehiclesCopy = v34;
                v7 = v32;
                v9 = v31;
                v13 = v29;
                v11 = v30;
                goto LABEL_26;
              }
            }
          }

          v28 = [NSString stringWithFormat:@"<%p> (empty)", v13];
        }

        else
        {
          v28 = @"<nil>";
        }

LABEL_26:

        *buf = 134218498;
        v40 = v10;
        v41 = 2048;
        v42 = v11;
        v43 = 2112;
        v44 = v28;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "VehicleListVC - vehicles updated. count from: %lu to: %lu, detail: %@", buf, 0x20u);
      }

      objc_storeStrong(&self->_savedVehicles, vehiclesCopy);
    }
  }
}

- (void)_setupConstraints
{
  topAnchor = [(ContainerHeaderView *)self->_titleHeaderView topAnchor];
  headerView = [(ContaineeViewController *)self headerView];
  topAnchor2 = [headerView topAnchor];
  v32 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v36[0] = v32;
  leadingAnchor = [(ContainerHeaderView *)self->_titleHeaderView leadingAnchor];
  headerView2 = [(ContaineeViewController *)self headerView];
  leadingAnchor2 = [headerView2 leadingAnchor];
  v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v36[1] = v28;
  trailingAnchor = [(ContainerHeaderView *)self->_titleHeaderView trailingAnchor];
  headerView3 = [(ContaineeViewController *)self headerView];
  trailingAnchor2 = [headerView3 trailingAnchor];
  v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v36[2] = v24;
  bottomAnchor = [(ContainerHeaderView *)self->_titleHeaderView bottomAnchor];
  headerView4 = [(ContaineeViewController *)self headerView];
  bottomAnchor2 = [headerView4 bottomAnchor];
  v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v36[3] = v20;
  topAnchor3 = [(UITableView *)self->_tableView topAnchor];
  contentView = [(ContaineeViewController *)self contentView];
  topAnchor4 = [contentView topAnchor];
  v16 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v36[4] = v16;
  leadingAnchor3 = [(UITableView *)self->_tableView leadingAnchor];
  contentView2 = [(ContaineeViewController *)self contentView];
  leadingAnchor4 = [contentView2 leadingAnchor];
  v3 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v36[5] = v3;
  trailingAnchor3 = [(UITableView *)self->_tableView trailingAnchor];
  contentView3 = [(ContaineeViewController *)self contentView];
  trailingAnchor4 = [contentView3 trailingAnchor];
  v7 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v36[6] = v7;
  bottomAnchor3 = [(UITableView *)self->_tableView bottomAnchor];
  contentView4 = [(ContaineeViewController *)self contentView];
  bottomAnchor4 = [contentView4 bottomAnchor];
  v11 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v36[7] = v11;
  v12 = [NSArray arrayWithObjects:v36 count:8];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = VehicleListViewController;
  [(ContaineeViewController *)&v7 viewWillDisappear:disappear];
  traitCollection = [(VehicleListViewController *)self traitCollection];
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
  v9.super_class = VehicleListViewController;
  [(ContaineeViewController *)&v9 viewWillAppear:?];
  traitCollection = [(VehicleListViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    v7 = +[UIApplication sharedMapsDelegate];
    [v7 setLockedOrientations:2];

    v8 = +[UIDevice currentDevice];
    [v8 setOrientation:1 animated:appearCopy];
  }

  [(VehicleListViewController *)self _refreshSavedVehiclesStates];
}

- (void)viewDidLoad
{
  v29.receiver = self;
  v29.super_class = VehicleListViewController;
  [(ContaineeViewController *)&v29 viewDidLoad];
  view = [(VehicleListViewController *)self view];
  [view setAccessibilityIdentifier:@"VehicleListView"];

  v4 = +[UIColor clearColor];
  view2 = [(VehicleListViewController *)self view];
  [view2 setBackgroundColor:v4];

  headerView = [(ContaineeViewController *)self headerView];
  v7 = sub_10000FA08(self);
  v8 = [ContainerHeaderView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(ContainerHeaderView *)v8 initWithFrame:CGRectZero.origin.x, y, width, height];
  [(ContainerHeaderView *)height setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ContainerHeaderView *)height setDelegate:self];
  if (v7 == 5)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  [(ContainerHeaderView *)height setHeaderSize:v13];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"[VirtualGarage] Vehicles" value:@"localized string not found" table:0];
  [(ContainerHeaderView *)height setTitle:v15];

  [(ContainerHeaderView *)height setHairLineAlpha:0.0];
  v16 = +[UIColor clearColor];
  [(ContainerHeaderView *)height setBackgroundColor:v16];

  [headerView addSubview:height];
  titleHeaderView = self->_titleHeaderView;
  self->_titleHeaderView = height;
  v18 = height;

  v19 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, y, width, height}];
  tableView = self->_tableView;
  self->_tableView = v19;

  [(UITableView *)self->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITableView *)self->_tableView setAccessibilityIdentifier:@"VehicleListTableView"];
  LODWORD(v21) = 1148846080;
  [(UITableView *)self->_tableView setContentCompressionResistancePriority:0 forAxis:v21];
  LODWORD(v22) = 1148846080;
  [(UITableView *)self->_tableView setContentCompressionResistancePriority:1 forAxis:v22];
  v23 = [[UIView alloc] initWithFrame:{0.0, 0.0, 0.0, 2.22507386e-308}];
  [(UITableView *)self->_tableView setTableHeaderView:v23];

  [(UITableView *)self->_tableView setDataSource:self];
  [(UITableView *)self->_tableView setDelegate:self];
  v24 = +[UIColor clearColor];
  [(UITableView *)self->_tableView setBackgroundColor:v24];

  v25 = self->_tableView;
  v26 = objc_opt_class();
  v27 = +[VehicleCell reuseIdentifier];
  [(UITableView *)v25 registerClass:v26 forCellReuseIdentifier:v27];

  [(UITableView *)self->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"kAddNewCarCellIdentifier"];
  [(UITableView *)self->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"kOnboardingCellIdentifier"];
  contentView = [(ContaineeViewController *)self contentView];
  [contentView addSubview:self->_tableView];

  [(VehicleListViewController *)self _setupConstraints];
}

- (void)dealloc
{
  v3 = +[VGVirtualGarageService sharedService];
  [v3 unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = VehicleListViewController;
  [(VehicleListViewController *)&v4 dealloc];
}

- (VehicleListViewController)init
{
  v15.receiver = self;
  v15.super_class = VehicleListViewController;
  v2 = [(VehicleListViewController *)&v15 initWithNibName:0 bundle:0];
  v3 = v2;
  if (v2)
  {
    cardPresentationController = [(ContaineeViewController *)v2 cardPresentationController];
    [cardPresentationController setPresentedModally:1];

    cardPresentationController2 = [(ContaineeViewController *)v3 cardPresentationController];
    [cardPresentationController2 setTakesAvailableHeight:1];

    v6 = +[VGVirtualGarageService sharedService];
    [v6 registerObserver:v3];

    objc_initWeak(&location, v3);
    v7 = +[VGVirtualGarageService sharedService];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100AEB2B0;
    v12[3] = &unk_101655840;
    objc_copyWeak(&v13, &location);
    [v7 virtualGarageGetGarageWithReply:v12];

    v8 = +[VGVirtualGarageService sharedService];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100AEB3A4;
    v10[3] = &unk_10165F290;
    objc_copyWeak(&v11, &location);
    [v8 virtualGarageGetListOfUnpairedVehiclesWithReply:v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v3;
}

@end