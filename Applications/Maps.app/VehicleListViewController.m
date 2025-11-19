@interface VehicleListViewController
- (BOOL)_isIndexPathOfAddNewCarCell:(id)a3;
- (BOOL)_shouldShowManualAddCell;
- (BOOL)_shouldShowUnpairedVehicles;
- (VehicleListViewController)init;
- (id)actionCoordinator;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_consumeUpdatedUnpairedVehicles:(id)a3;
- (void)_consumeUpdatedVirtualGarage:(id)a3;
- (void)_refreshSavedVehiclesStates;
- (void)_setupConstraints;
- (void)_updateVehicle:(id)a3 atIndex:(unint64_t)a4;
- (void)dealloc;
- (void)headerViewButtonTapped:(id)a3 buttonType:(unint64_t)a4;
- (void)setSavedVehicles:(id)a3;
- (void)setUnpairedVehicles:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)vehicleDetailViewController:(id)a3 deleteVehicle:(id)a4;
- (void)vehicleDetailViewController:(id)a3 saveVehicleEdit:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation VehicleListViewController

- (void)vehicleDetailViewController:(id)a3 deleteVehicle:(id)a4
{
  v5 = a4;
  v6 = +[VGVirtualGarageService sharedService];
  [v6 virtualGarageRemoveVehicle:v5];

  v8 = [(VehicleListViewController *)self navigationController];
  v7 = [v8 popToViewController:self animated:1];
}

- (void)vehicleDetailViewController:(id)a3 saveVehicleEdit:(id)a4
{
  v4 = a4;
  v5 = +[VGVirtualGarageService sharedService];
  [v5 virtualGarageSaveVehicle:v4];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  v7 = [v6 section];
  if (v7 == 1)
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
          v38 = self;
          v39 = v6;
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

              self = v38;
              v6 = v39;
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

    v35 = [(VehicleListViewController *)self actionCoordinator];
    [v35 presentVehicleOnboardingWithVehicles:self->_unpairedVehicles completion:0];

    goto LABEL_41;
  }

  if (v7)
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

  if (![(VehicleListViewController *)self _isIndexPathOfAddNewCarCell:v6])
  {
    v8 = -[NSArray objectAtIndexedSubscript:](self->_savedVehicles, "objectAtIndexedSubscript:", [v6 row]);
    if (v8)
    {
      v9 = v8;
      v10 = +[MKMapService sharedService];
      [v10 captureUserAction:2126 onTarget:660 eventValue:0];

      v11 = [[VehicleDetailViewController alloc] initWithVehicle:v9 delegate:self];
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
    v9 = [(VehicleListViewController *)self actionCoordinator];
    [v9 presentLPRWithVehicle:0 scenario:0 presenter:self completionBlock:0];
    goto LABEL_32;
  }

LABEL_41:
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v6 = a3;
  if (a4)
  {
    if (a4 == 1)
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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 section];
  if (v8 == 1)
  {
    v9 = [v6 dequeueReusableCellWithIdentifier:@"kOnboardingCellIdentifier" forIndexPath:v7];
    [v9 setAccessibilityIdentifier:@"OnboardVehicleCell"];
    v15 = self->_unpairedVehicles;
    if ([(NSArray *)v15 count])
    {
      if ([(NSArray *)v15 count]== 1 || sub_100F353B8(v15))
      {
        v16 = +[NSBundle mainBundle];
        v17 = [v16 localizedStringForKey:@"Onboard vehicles from VG [Title value:VG table:{Onboarding, Single]", @"localized string not found", 0}];

        v18 = [(NSArray *)v15 firstObject];
        v19 = [v18 manufacturer];
        v20 = v19;
        if (v19)
        {
          v21 = [NSString stringWithFormat:v17, v19];
        }

        else
        {
          v24 = [(NSArray *)v15 firstObject];
          v25 = [v24 displayName];
          v21 = [NSString stringWithFormat:v17, v25];
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

    v26 = [v9 textLabel];
    [v26 setText:v21];

    v27 = +[UIColor systemBlueColor];
    v28 = [v9 textLabel];
    [v28 setTextColor:v27];

    v13 = [v9 textLabel];
    [v13 setAccessibilityIdentifier:@"OnboardVehicleCellTitle"];
    goto LABEL_21;
  }

  if (!v8)
  {
    if ([(VehicleListViewController *)self _isIndexPathOfAddNewCarCell:v7]&& [(VehicleListViewController *)self _shouldShowManualAddCell])
    {
      v9 = [v6 dequeueReusableCellWithIdentifier:@"kAddNewCarCellIdentifier" forIndexPath:v7];
      v10 = +[NSBundle mainBundle];
      v11 = [v10 localizedStringForKey:@"[LPR] Add License Plate car" value:@"localized string not found" table:0];
      v12 = [v9 textLabel];
      [v12 setText:v11];

      [v9 setAccessibilityIdentifier:@"AddLicensePlateCell"];
      v13 = +[UIColor systemBlueColor];
      v14 = [v9 textLabel];
      [v14 setTextColor:v13];
    }

    else
    {
      v23 = +[VehicleCell reuseIdentifier];
      v9 = [v6 dequeueReusableCellWithIdentifier:v23 forIndexPath:v7];

      v13 = -[NSArray objectAtIndexedSubscript:](self->_savedVehicles, "objectAtIndexedSubscript:", [v7 row]);
      [v9 setupWithVehicle:v13 cellStyle:1 isSelected:0];
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

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    v8 = [(VehicleListViewController *)self _shouldShowUnpairedVehicles];
  }

  else if (a4)
  {
    v9 = sub_100022C48();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "Invalid section count in VehicleListVC", v11, 2u);
    }

    v8 = 0;
  }

  else
  {
    v7 = [(NSArray *)self->_savedVehicles count];
    v8 = v7 + [(VehicleListViewController *)self _shouldShowManualAddCell];
  }

  return v8;
}

- (void)headerViewButtonTapped:(id)a3 buttonType:(unint64_t)a4
{
  v6 = a3;
  v5 = +[MKMapService sharedService];
  [v5 captureUserAction:34 onTarget:660 eventValue:0];

  [(ContaineeViewController *)self handleDismissAction:v6];
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

- (void)_updateVehicle:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(VehicleListViewController *)self savedVehicles];
  v8 = [v7 count];

  if (v8 <= a4)
  {
    v9 = sub_100022C48();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v18 = a4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Tried to update a vehicle at index out of bounds: %ld", buf, 0xCu);
    }
  }

  else if (v6)
  {
    v9 = [(NSArray *)self->_savedVehicles mutableCopy];
    [v9 replaceObjectAtIndex:a4 withObject:v6];
    v10 = [v9 copy];
    [(VehicleListViewController *)self setSavedVehicles:v10];

    v11 = [NSIndexPath indexPathForRow:a4 inSection:0];
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
      v14 = [(VehicleListViewController *)self savedVehicles];
      v15 = [v14 objectAtIndexedSubscript:a4];
      *buf = 138412290;
      v18 = v15;
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

- (BOOL)_isIndexPathOfAddNewCarCell:(id)a3
{
  v4 = a3;
  if ([v4 section])
  {
    v5 = 0;
  }

  else
  {
    v6 = [v4 row];
    v5 = v6 == [(NSArray *)self->_savedVehicles count];
  }

  return v5;
}

- (void)_consumeUpdatedUnpairedVehicles:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100AE94F0;
  v4[3] = &unk_101661A90;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)_consumeUpdatedVirtualGarage:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100AE9808;
  v4[3] = &unk_101661A90;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

- (id)actionCoordinator
{
  v2 = [(VehicleListViewController *)self _maps_mapsSceneDelegate];
  v3 = [v2 appCoordinator];
  v4 = [v3 baseActionCoordinator];

  return v4;
}

- (void)setUnpairedVehicles:(id)a3
{
  v3 = a3;
  v5 = a3;
  v6 = self->_unpairedVehicles;
  v7 = v5;
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
            v33 = self;
            v34 = v3;
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

                self = v33;
                v3 = v34;
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

      objc_storeStrong(&self->_unpairedVehicles, v3);
    }
  }
}

- (void)setSavedVehicles:(id)a3
{
  v3 = a3;
  v5 = a3;
  v6 = self->_savedVehicles;
  v7 = v5;
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
            v33 = self;
            v34 = v3;
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

                self = v33;
                v3 = v34;
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

      objc_storeStrong(&self->_savedVehicles, v3);
    }
  }
}

- (void)_setupConstraints
{
  v34 = [(ContainerHeaderView *)self->_titleHeaderView topAnchor];
  v35 = [(ContaineeViewController *)self headerView];
  v33 = [v35 topAnchor];
  v32 = [v34 constraintEqualToAnchor:v33];
  v36[0] = v32;
  v30 = [(ContainerHeaderView *)self->_titleHeaderView leadingAnchor];
  v31 = [(ContaineeViewController *)self headerView];
  v29 = [v31 leadingAnchor];
  v28 = [v30 constraintEqualToAnchor:v29];
  v36[1] = v28;
  v26 = [(ContainerHeaderView *)self->_titleHeaderView trailingAnchor];
  v27 = [(ContaineeViewController *)self headerView];
  v25 = [v27 trailingAnchor];
  v24 = [v26 constraintEqualToAnchor:v25];
  v36[2] = v24;
  v22 = [(ContainerHeaderView *)self->_titleHeaderView bottomAnchor];
  v23 = [(ContaineeViewController *)self headerView];
  v21 = [v23 bottomAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v36[3] = v20;
  v18 = [(UITableView *)self->_tableView topAnchor];
  v19 = [(ContaineeViewController *)self contentView];
  v17 = [v19 topAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v36[4] = v16;
  v14 = [(UITableView *)self->_tableView leadingAnchor];
  v15 = [(ContaineeViewController *)self contentView];
  v13 = [v15 leadingAnchor];
  v3 = [v14 constraintEqualToAnchor:v13];
  v36[5] = v3;
  v4 = [(UITableView *)self->_tableView trailingAnchor];
  v5 = [(ContaineeViewController *)self contentView];
  v6 = [v5 trailingAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];
  v36[6] = v7;
  v8 = [(UITableView *)self->_tableView bottomAnchor];
  v9 = [(ContaineeViewController *)self contentView];
  v10 = [v9 bottomAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v36[7] = v11;
  v12 = [NSArray arrayWithObjects:v36 count:8];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = VehicleListViewController;
  [(ContaineeViewController *)&v7 viewWillDisappear:a3];
  v4 = [(VehicleListViewController *)self traitCollection];
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
  v9.super_class = VehicleListViewController;
  [(ContaineeViewController *)&v9 viewWillAppear:?];
  v5 = [(VehicleListViewController *)self traitCollection];
  v6 = [v5 userInterfaceIdiom];

  if (!v6)
  {
    v7 = +[UIApplication sharedMapsDelegate];
    [v7 setLockedOrientations:2];

    v8 = +[UIDevice currentDevice];
    [v8 setOrientation:1 animated:v3];
  }

  [(VehicleListViewController *)self _refreshSavedVehiclesStates];
}

- (void)viewDidLoad
{
  v29.receiver = self;
  v29.super_class = VehicleListViewController;
  [(ContaineeViewController *)&v29 viewDidLoad];
  v3 = [(VehicleListViewController *)self view];
  [v3 setAccessibilityIdentifier:@"VehicleListView"];

  v4 = +[UIColor clearColor];
  v5 = [(VehicleListViewController *)self view];
  [v5 setBackgroundColor:v4];

  v6 = [(ContaineeViewController *)self headerView];
  v7 = sub_10000FA08(self);
  v8 = [ContainerHeaderView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v12 = [(ContainerHeaderView *)v8 initWithFrame:CGRectZero.origin.x, y, width, height];
  [(ContainerHeaderView *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ContainerHeaderView *)v12 setDelegate:self];
  if (v7 == 5)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  [(ContainerHeaderView *)v12 setHeaderSize:v13];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"[VirtualGarage] Vehicles" value:@"localized string not found" table:0];
  [(ContainerHeaderView *)v12 setTitle:v15];

  [(ContainerHeaderView *)v12 setHairLineAlpha:0.0];
  v16 = +[UIColor clearColor];
  [(ContainerHeaderView *)v12 setBackgroundColor:v16];

  [v6 addSubview:v12];
  titleHeaderView = self->_titleHeaderView;
  self->_titleHeaderView = v12;
  v18 = v12;

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
  v28 = [(ContaineeViewController *)self contentView];
  [v28 addSubview:self->_tableView];

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
    v4 = [(ContaineeViewController *)v2 cardPresentationController];
    [v4 setPresentedModally:1];

    v5 = [(ContaineeViewController *)v3 cardPresentationController];
    [v5 setTakesAvailableHeight:1];

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