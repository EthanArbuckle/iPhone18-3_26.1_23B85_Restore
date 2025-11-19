@interface VehicleDetailViewController
- (BOOL)_isMinimumViableVehicle;
- (NSArray)tableStructure;
- (UIImageView)vehicleIconView;
- (UILabel)vehicleNameLabel;
- (UITableView)tableView;
- (UIView)headerView;
- (UIView)vehicleColorView;
- (VehicleAppCell)appCell;
- (VehicleBatteryView)vehicleBatteryView;
- (VehicleDetailViewController)initWithVehicle:(id)a3 delegate:(id)a4;
- (VehicleDetailViewControllerDelegate)delegate;
- (VehicleLabelCell)addNetworksCell;
- (VehicleLabelCell)deleteCell;
- (VehicleLabelCell)editLicensePlateCell;
- (VehicleTitleDetailCell)editPlugsCell;
- (VehicleTitleDetailCell)licensePlateCell;
- (VehicleTitleDetailCell)vehicleMakeCell;
- (VehicleTitleDetailCell)vehicleModelCell;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_pressedEdit;
- (void)_pressedOpen;
- (void)_reloadAndSave:(BOOL)a3;
- (void)_saveIfAppropriate;
- (void)_updateContent;
- (void)confirmRemoveVehicle;
- (void)dismiss;
- (void)editVehicleViewController:(id)a3 didSelectColor:(id)a4 nickname:(id)a5 removedNetworks:(id)a6;
- (void)editVehicleViewControllerDidSelectDone:(id)a3;
- (void)networkPickerControllerDidSelectNetworks:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)virtualGarageDidUpdate:(id)a3;
@end

@implementation VehicleDetailViewController

- (VehicleDetailViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)virtualGarageDidUpdate:(id)a3
{
  v4 = a3;
  if (self->_deletingVehicle)
  {
    v5 = +[MKMapService sharedService];
    v6 = [v4 vehicles];
    v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 count]);
    v8 = [v7 stringValue];
    [v5 captureUserAction:2112 onTarget:662 eventValue:v8];

    v9 = +[MKMapService sharedService];
    v10 = [v4 vehicles];
    v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 count]);
    v12 = [v11 stringValue];
    [v9 captureUserAction:2111 onTarget:660 eventValue:v12];

    self->_deletingVehicle = 0;
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100D35FF8;
  v14[3] = &unk_101661A90;
  v14[4] = self;
  v15 = v4;
  v13 = v4;
  dispatch_async(&_dispatch_main_q, v14);
}

- (void)editVehicleViewControllerDidSelectDone:(id)a3
{
  v5 = [(VehicleDetailViewController *)self navigationController];
  v4 = [v5 popToViewController:self animated:1];
}

- (void)editVehicleViewController:(id)a3 didSelectColor:(id)a4 nickname:(id)a5 removedNetworks:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = sub_100022C48();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = v11;
    v14 = v13;
    if (v13)
    {
      if ([v13 count])
      {
        v31 = v12;
        v32 = v11;
        v33 = v10;
        v34 = self;
        v35 = v9;
        v15 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v14 count]);
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v30 = v14;
        v16 = v14;
        v17 = [v16 countByEnumeratingWithState:&v36 objects:buf count:16];
        if (!v17)
        {
          goto LABEL_21;
        }

        v18 = v17;
        v19 = *v37;
        while (1)
        {
          v20 = 0;
          do
          {
            if (*v37 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v36 + 1) + 8 * v20);
            if (v21)
            {
              v22 = objc_opt_class();
              v23 = NSStringFromClass(v22);
              if ((objc_opt_respondsToSelector() & 1) == 0)
              {
                goto LABEL_14;
              }

              v24 = [v21 performSelector:"accessibilityIdentifier"];
              v25 = v24;
              if (v24 && ![v24 isEqualToString:v23])
              {
                v26 = [NSString stringWithFormat:@"%@<%p, %@>", v23, v21, v25];
              }

              else
              {

LABEL_14:
                v26 = [NSString stringWithFormat:@"%@<%p>", v23, v21];
              }

              goto LABEL_17;
            }

            v26 = @"<nil>";
LABEL_17:

            [v15 addObject:v26];
            v20 = v20 + 1;
          }

          while (v18 != v20);
          v27 = [v16 countByEnumeratingWithState:&v36 objects:buf count:16];
          v18 = v27;
          if (!v27)
          {
LABEL_21:

            v28 = [v16 componentsJoinedByString:{@", "}];
            v29 = [NSString stringWithFormat:@"<%p> [%@]", v16, v28];

            self = v34;
            v9 = v35;
            v11 = v32;
            v10 = v33;
            v14 = v30;
            v12 = v31;
            goto LABEL_24;
          }
        }
      }

      v29 = [NSString stringWithFormat:@"<%p> (empty)", v14];
    }

    else
    {
      v29 = @"<nil>";
    }

LABEL_24:

    *buf = 138412802;
    v41 = v9;
    v42 = 2112;
    v43 = v10;
    v44 = 2112;
    v45 = v29;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "edit vehicle VC selected color: %@, nickname: %@, removedNetworks: %@", buf, 0x20u);
  }

  [(VehicleDetailViewController *)self _reloadAndSave:1];
}

- (void)networkPickerControllerDidSelectNetworks:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(VGVehicle *)self->_vehicle preferredChargingNetworks];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = +[NSSet set];
    }

    v8 = v7;

    v9 = sub_100022C48();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = v4;
      v11 = v10;
      if (v10)
      {
        if ([v10 count])
        {
          v52 = v9;
          v54 = self;
          v56 = v4;
          v12 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v11 count]);
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v50 = v11;
          v13 = v11;
          v14 = [v13 countByEnumeratingWithState:&v58 objects:buf count:16];
          if (!v14)
          {
            goto LABEL_27;
          }

          v15 = v14;
          v16 = *v59;
          while (1)
          {
            v17 = 0;
            do
            {
              if (*v59 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v58 + 1) + 8 * v17);
              if (v18)
              {
                v19 = objc_opt_class();
                v20 = NSStringFromClass(v19);
                if ((objc_opt_respondsToSelector() & 1) == 0)
                {
                  goto LABEL_20;
                }

                v21 = [v18 performSelector:"accessibilityIdentifier"];
                v22 = v21;
                if (v21 && ![v21 isEqualToString:v20])
                {
                  v23 = [NSString stringWithFormat:@"%@<%p, %@>", v20, v18, v22];
                }

                else
                {

LABEL_20:
                  v23 = [NSString stringWithFormat:@"%@<%p>", v20, v18];
                }

                goto LABEL_23;
              }

              v23 = @"<nil>";
LABEL_23:

              [v12 addObject:v23];
              v17 = v17 + 1;
            }

            while (v15 != v17);
            v24 = [v13 countByEnumeratingWithState:&v58 objects:buf count:16];
            v15 = v24;
            if (!v24)
            {
LABEL_27:

              v25 = [v13 componentsJoinedByString:{@", "}];
              v26 = [NSString stringWithFormat:@"<%p> [%@]", v13, v25];

              v4 = v56;
              self = v54;
              v11 = v50;
              v9 = v52;
              goto LABEL_30;
            }
          }
        }

        v26 = [NSString stringWithFormat:@"<%p> (empty)", v11];
      }

      else
      {
        v26 = @"<nil>";
      }

LABEL_30:

      v27 = v26;
      v28 = [(VGVehicle *)self->_vehicle displayName];
      v29 = [v8 allObjects];
      v30 = v29;
      if (v29)
      {
        if ([v29 count])
        {
          v49 = v28;
          v51 = v27;
          v53 = v9;
          v55 = v8;
          v57 = v4;
          v31 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v30 count]);
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v48 = v30;
          v32 = v30;
          v33 = [v32 countByEnumeratingWithState:&v58 objects:buf count:16];
          if (!v33)
          {
            goto LABEL_49;
          }

          v34 = v33;
          v35 = *v59;
          while (1)
          {
            v36 = 0;
            do
            {
              if (*v59 != v35)
              {
                objc_enumerationMutation(v32);
              }

              v37 = *(*(&v58 + 1) + 8 * v36);
              if (v37)
              {
                v38 = objc_opt_class();
                v39 = NSStringFromClass(v38);
                if ((objc_opt_respondsToSelector() & 1) == 0)
                {
                  goto LABEL_42;
                }

                v40 = [v37 performSelector:"accessibilityIdentifier"];
                v41 = v40;
                if (v40 && ![v40 isEqualToString:v39])
                {
                  v42 = [NSString stringWithFormat:@"%@<%p, %@>", v39, v37, v41];
                }

                else
                {

LABEL_42:
                  v42 = [NSString stringWithFormat:@"%@<%p>", v39, v37];
                }

                goto LABEL_45;
              }

              v42 = @"<nil>";
LABEL_45:

              [v31 addObject:v42];
              v36 = v36 + 1;
            }

            while (v34 != v36);
            v43 = [v32 countByEnumeratingWithState:&v58 objects:buf count:16];
            v34 = v43;
            if (!v43)
            {
LABEL_49:

              v44 = [v32 componentsJoinedByString:{@", "}];
              v45 = [NSString stringWithFormat:@"<%p> [%@]", v32, v44];

              v8 = v55;
              v4 = v57;
              v27 = v51;
              v9 = v53;
              v30 = v48;
              v28 = v49;
              goto LABEL_52;
            }
          }
        }

        v45 = [NSString stringWithFormat:@"<%p> (empty)", v30];
      }

      else
      {
        v45 = @"<nil>";
      }

LABEL_52:

      *buf = 138412802;
      v63 = v27;
      v64 = 2112;
      v65 = v28;
      v66 = 2112;
      v67 = v45;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Network Picker VC did select networks: %@, will update vehicle: %@ (current networks: %@)", buf, 0x20u);
    }

    v46 = [v8 setByAddingObjectsFromArray:v4];
    [(VGVehicle *)self->_vehicle setPreferredChargingNetworks:v46];
    v47 = +[VGVirtualGarageService sharedService];
    [v47 virtualGarageSaveVehicle:self->_vehicle];
  }

  else
  {
    v8 = sub_100022C48();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Network Picker VC did not select any network. Ignoring.", buf, 2u);
    }
  }
}

- (void)_reloadAndSave:(BOOL)a3
{
  v3 = a3;
  [(VehicleDetailViewController *)self _updateContent];
  if (v3)
  {
    [(VehicleDetailViewController *)self _saveIfAppropriate];
  }

  [(VehicleDetailViewController *)self setTableStructure:0];
  v5 = [(VehicleDetailViewController *)self tableView];
  [v5 reloadData];
}

- (void)_pressedOpen
{
  v3 = [(VGVehicle *)self->_vehicle pairedAppIdentifier];

  if (v3)
  {
    v4 = +[MKMapService sharedService];
    [v4 captureUserAction:2110 onTarget:662 eventValue:0];

    v8 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
    v5 = [(VGVehicle *)self->_vehicle pairedAppIdentifier];
    [v8 openApplication:v5 withOptions:0 completion:0];
  }

  else
  {
    v6 = sub_100022C48();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      vehicle = self->_vehicle;
      *buf = 138412290;
      v10 = vehicle;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "Tried to open an app for vehicle that doesn't have a pairedAppId: %@", buf, 0xCu);
    }
  }
}

- (void)_pressedEdit
{
  v3 = +[MKMapService sharedService];
  [v3 captureUserAction:2120 onTarget:662 eventValue:0];

  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [(VehicleDetailViewController *)self traitCollection];
  v5 = [EditVehicleViewController alloc];
  v6 = sub_1006D447C(v9, v4);
  v7 = [(EditVehicleViewController *)v5 initWithColors:v6 vehicle:self->_vehicle delegate:self];

  v8 = [(VehicleDetailViewController *)self navigationController];
  [v8 pushViewController:v7 animated:1];
}

- (void)_saveIfAppropriate
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100D36F5C;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (BOOL)_isMinimumViableVehicle
{
  v2 = [(VGVehicle *)self->_vehicle combinedDisplayName];
  v3 = [v2 length] != 0;

  return v3;
}

- (void)confirmRemoveVehicle
{
  v3 = [(VehicleDetailViewController *)self title];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"[Virtual Garage] Remove Vehicle Alert" value:@"localized string not found" table:0];
  v6 = [UIAlertController alertControllerWithTitle:v3 message:v5 preferredStyle:0];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"[Virtual Garage] Remove Vehicle Alert Action" value:@"localized string not found" table:0];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100D37200;
  v13[3] = &unk_10165F220;
  v13[4] = self;
  v9 = [UIAlertAction actionWithTitle:v8 style:2 handler:v13];
  [v6 addAction:v9];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"[Virtual Garage] Remove Vehicle Alert Action Cancel" value:@"localized string not found" table:0];
  v12 = [UIAlertAction actionWithTitle:v11 style:1 handler:0];
  [v6 addAction:v12];

  [(VehicleDetailViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)_updateContent
{
  v3 = [(VGVehicle *)self->_vehicle colorHex];
  v4 = [UIColor _maps_colorFromHexRepresentation:v3];
  v5 = v4;
  if (!v4)
  {
    v5 = +[UIColor systemBlueColor];
  }

  v6 = [(VehicleDetailViewController *)self vehicleColorView];
  [v6 setBackgroundColor:v5];

  if (!v4)
  {
  }

  v7 = [(VehicleDetailViewController *)self vehicleColorView];
  v8 = [v7 backgroundColor];
  v9 = +[UIColor whiteColor];
  [v8 _maps_euclideanDistanceFromColor:v9];
  v11 = v10;

  if (v11 >= 0.1)
  {
    v12 = +[UIColor systemWhiteColor];
    v13 = [(VehicleDetailViewController *)self vehicleIconView];
    [v13 setTintColor:v12];
  }

  else
  {
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [(VehicleDetailViewController *)self traitCollection];
    v14 = [UIColor colorNamed:@"TertiaryVehicleTint" inBundle:v12 compatibleWithTraitCollection:v13];
    v15 = [(VehicleDetailViewController *)self vehicleIconView];
    [v15 setTintColor:v14];
  }

  v16 = [(VGVehicle *)self->_vehicle displayName];
  v17 = [v16 length];
  vehicle = self->_vehicle;
  if (v17)
  {
    [(VGVehicle *)vehicle displayName];
  }

  else
  {
    [(VGVehicle *)vehicle licensePlate];
  }
  v50 = ;

  v19 = [(VehicleDetailViewController *)self vehicleNameLabel];
  [v19 setText:v50];

  LODWORD(v19) = [(VGVehicle *)self->_vehicle isPureElectricVehicle];
  v20 = [(VehicleDetailViewController *)self vehicleBatteryView];
  [v20 setHidden:v19 ^ 1];

  if ([(VGVehicle *)self->_vehicle isPureElectricVehicle])
  {
    v21 = self->_vehicle;
    v22 = [(VehicleDetailViewController *)self vehicleBatteryView];
    [v22 setVehicle:v21];
  }

  v23 = [(VGVehicle *)self->_vehicle licensePlate];
  v24 = [(VehicleDetailViewController *)self licensePlateCell];
  v25 = [v24 detailLabel];
  [v25 setText:v23];

  v26 = [(VGVehicle *)self->_vehicle manufacturer];
  v27 = [(VehicleDetailViewController *)self vehicleMakeCell];
  v28 = [v27 detailLabel];
  [v28 setText:v26];

  v29 = [(VGVehicle *)self->_vehicle model];
  v30 = [(VehicleDetailViewController *)self vehicleModelCell];
  v31 = [v30 detailLabel];
  [v31 setText:v29];

  [(VGVehicle *)self->_vehicle supportedConnectors];
  v32 = VGChargingConnectorTypeOptionsUnpacked();
  v33 = sub_100021DB0(v32, &stru_101651C50);
  v34 = [v33 componentsJoinedByString:{@", "}];
  v35 = [(VehicleDetailViewController *)self editPlugsCell];
  v36 = [v35 detailLabel];
  [v36 setText:v34];

  v37 = [(VGVehicle *)self->_vehicle licensePlate];
  v38 = [v37 length];

  v39 = +[NSBundle mainBundle];
  v40 = v39;
  if (v38)
  {
    v41 = [v39 localizedStringForKey:@"[Virtual Garage] Remove License Plate Number" value:@"localized string not found" table:0];
    v42 = [(VehicleDetailViewController *)self editLicensePlateCell];
    v43 = [v42 label];
    [v43 setText:v41];

    +[UIColor systemRedColor];
  }

  else
  {
    v44 = [v39 localizedStringForKey:@"[Virtual Garage] Update License Plate Number" value:@"localized string not found" table:0];
    v45 = [(VehicleDetailViewController *)self editLicensePlateCell];
    v46 = [v45 label];
    [v46 setText:v44];

    +[UIColor labelColor];
  }
  v47 = ;
  v48 = [(VehicleDetailViewController *)self editLicensePlateCell];
  v49 = [v48 label];
  [v49 setTextColor:v47];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 deselectRowAtIndexPath:v6 animated:1];
  v41 = [v7 cellForRowAtIndexPath:v6];

  v8 = [(VehicleDetailViewController *)self editPlugsCell];

  if (v41 == v8)
  {
    v14 = +[MKMapService sharedService];
    [v14 captureUserAction:438 onTarget:662 eventValue:0];

    v15 = [[VehicleConnectorListViewController alloc] initWithVehicle:self->_vehicle];
    v16 = [(VehicleDetailViewController *)self navigationController];
    [v16 pushViewController:v15 animated:1];

LABEL_11:
    goto LABEL_18;
  }

  v9 = [(VehicleDetailViewController *)self addNetworksCell];

  if (v41 == v9)
  {
    v17 = +[MKMapService sharedService];
    [v17 captureUserAction:453 onTarget:662 eventValue:0];

    v18 = sub_10000FA08(self);
    v19 = off_1015F62A0;
    if (v18 != 5)
    {
      v19 = off_1015F6748;
    }

    v20 = objc_alloc(*v19);
    v21 = [(VGVehicle *)self->_vehicle preferredChargingNetworks];
    v15 = [v20 initWithExcludedNetworks:v21 delegate:self];

    v22 = [[UINavigationController alloc] initWithRootViewController:v15];
    v23 = [(VehicleDetailViewController *)self topMostPresentedViewController];
    [v23 presentViewController:v22 animated:1 completion:0];

    goto LABEL_11;
  }

  v10 = [(VehicleDetailViewController *)self licensePlateCell];

  if (v41 == v10)
  {
    v24 = +[MKMapService sharedService];
    [v24 captureUserAction:2125 onTarget:662 eventValue:0];

    v25 = [(VehicleDetailViewController *)self _maps_mapsSceneDelegate];
    v26 = [v25 appCoordinator];
    v27 = [v26 baseActionCoordinator];

    vehicle = self->_vehicle;
LABEL_13:
    [v27 presentLPRWithVehicle:vehicle scenario:1 presenter:self completionBlock:0];

    goto LABEL_18;
  }

  v11 = [(VehicleDetailViewController *)self editLicensePlateCell];

  if (v41 == v11)
  {
    v29 = [(VGVehicle *)self->_vehicle licensePlate];
    v30 = [v29 length];

    v31 = +[MKMapService sharedService];
    v32 = v31;
    if (v30)
    {
      v33 = [NSNumber numberWithUnsignedInteger:[(VehicleDetailViewController *)self vehicleCount]];
      v34 = [v33 stringValue];
      [v32 captureUserAction:2124 onTarget:660 eventValue:v34];

      v35 = [(VGVehicle *)self->_vehicle displayName];
      v36 = [v35 length];

      if (!v36)
      {
        v37 = +[NSBundle mainBundle];
        v38 = [v37 localizedStringForKey:@"[Vehicle Selection] My Vehicle" value:@"localized string not found" table:0];
        [(VGVehicle *)self->_vehicle setDisplayName:v38];
      }

      [(VGVehicle *)self->_vehicle setLicensePlate:0];
      [(VehicleDetailViewController *)self _reloadAndSave:1];
      goto LABEL_18;
    }

    [v31 captureUserAction:2115 onTarget:660 eventValue:0];

    v39 = [(VehicleDetailViewController *)self _maps_mapsSceneDelegate];
    v40 = [v39 appCoordinator];
    v27 = [v40 baseActionCoordinator];

    vehicle = self->_vehicle;
    goto LABEL_13;
  }

  v12 = [(VehicleDetailViewController *)self deleteCell];

  v13 = v41;
  if (v41 != v12)
  {
    goto LABEL_19;
  }

  [(VehicleDetailViewController *)self confirmRemoveVehicle];
LABEL_18:
  v13 = v41;
LABEL_19:
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(VehicleDetailViewController *)self tableStructure];
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
  v6 = [(VehicleDetailViewController *)self tableStructure];
  v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];

  v8 = [v7 cells];
  v9 = [v5 row];

  v10 = [v8 objectAtIndexedSubscript:v9];

  return v10;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(VehicleDetailViewController *)self tableStructure];
  v6 = [v5 objectAtIndexedSubscript:a4];

  v7 = [v6 cells];
  v8 = [v7 count];

  return v8;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(VehicleDetailViewController *)self tableStructure];
  v4 = [v3 count];

  return v4;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v5 = [(VehicleDetailViewController *)self tableStructure];
  v6 = [v5 objectAtIndexedSubscript:a4];

  v7 = [v6 footerText];

  return v7;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(UITableViewHeaderFooterView);
  v8 = +[UIListContentConfiguration prominentInsetGroupedHeaderConfiguration];
  v9 = [(VehicleDetailViewController *)self tableView:v6 titleForHeaderInSection:a4];

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
  v5 = [(VehicleDetailViewController *)self tableStructure];
  v6 = [v5 objectAtIndexedSubscript:a4];

  v7 = [v6 headerTitle];

  return v7;
}

- (void)dismiss
{
  v3 = +[MKMapService sharedService];
  [v3 captureUserAction:445 onTarget:662 eventValue:0];

  v4 = [(VehicleDetailViewController *)self presentingViewController];
  [v4 dismissViewControllerAnimated:1 completion:0];
}

- (void)viewIsAppearing:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = VehicleDetailViewController;
  [(VehicleDetailViewController *)&v6 viewIsAppearing:a3];
  [(UIView *)self->_headerView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height];
  [(UIView *)self->_headerView setFrame:CGPointZero.x, CGPointZero.y, v4, v5];
  [(VehicleDetailViewController *)self _reloadAndSave:0];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = VehicleDetailViewController;
  [(VehicleDetailViewController *)&v7 viewWillDisappear:a3];
  v4 = [(VehicleDetailViewController *)self traitCollection];
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
  v9.super_class = VehicleDetailViewController;
  [(VehicleDetailViewController *)&v9 viewWillAppear:?];
  v5 = [(VehicleDetailViewController *)self traitCollection];
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
  v31.receiver = self;
  v31.super_class = VehicleDetailViewController;
  [(VehicleDetailViewController *)&v31 viewDidLoad];
  v3 = [(VehicleDetailViewController *)self view];
  [v3 setAccessibilityIdentifier:@"VehicleDetailView"];

  v4 = [(VehicleDetailViewController *)self view];
  v5 = [(VehicleDetailViewController *)self tableView];
  [v4 addSubview:v5];

  v30 = [(VehicleDetailViewController *)self tableView];
  v28 = [v30 leadingAnchor];
  v29 = [(VehicleDetailViewController *)self view];
  v27 = [v29 leadingAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v32[0] = v26;
  v25 = [(VehicleDetailViewController *)self tableView];
  v23 = [v25 trailingAnchor];
  v24 = [(VehicleDetailViewController *)self view];
  v22 = [v24 trailingAnchor];
  v21 = [v23 constraintEqualToAnchor:v22];
  v32[1] = v21;
  v20 = [(VehicleDetailViewController *)self tableView];
  v19 = [v20 topAnchor];
  v6 = [(VehicleDetailViewController *)self view];
  v7 = [v6 topAnchor];
  v8 = [v19 constraintEqualToAnchor:v7];
  v32[2] = v8;
  v9 = [(VehicleDetailViewController *)self tableView];
  v10 = [v9 bottomAnchor];
  v11 = [(VehicleDetailViewController *)self view];
  v12 = [v11 bottomAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  v32[3] = v13;
  v14 = [NSArray arrayWithObjects:v32 count:4];
  [NSLayoutConstraint activateConstraints:v14];

  v15 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"dismiss"];
  v16 = [(VehicleDetailViewController *)self navigationItem];
  [v16 setLeftBarButtonItem:v15];

  v17 = [(VehicleDetailViewController *)self navigationItem];
  v18 = [v17 leftBarButtonItem];
  [v18 setAccessibilityIdentifier:@"DoneButton"];

  [(VehicleDetailViewController *)self _updateContent];
}

- (VehicleLabelCell)deleteCell
{
  deleteCell = self->_deleteCell;
  if (!deleteCell)
  {
    v4 = objc_opt_new();
    v5 = self->_deleteCell;
    self->_deleteCell = v4;

    [(VehicleLabelCell *)self->_deleteCell setAccessibilityIdentifier:@"DeleteCell"];
    v6 = +[UIColor systemRedColor];
    v7 = [(VehicleLabelCell *)self->_deleteCell label];
    [v7 setTextColor:v6];

    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"[Virtual Garage] Remove This Vehicle" value:@"localized string not found" table:0];
    v10 = [(VehicleLabelCell *)self->_deleteCell label];
    [v10 setText:v9];

    deleteCell = self->_deleteCell;
  }

  return deleteCell;
}

- (VehicleTitleDetailCell)vehicleModelCell
{
  vehicleModelCell = self->_vehicleModelCell;
  if (!vehicleModelCell)
  {
    v4 = objc_opt_new();
    v5 = self->_vehicleModelCell;
    self->_vehicleModelCell = v4;

    [(VehicleTitleDetailCell *)self->_vehicleModelCell setAccessibilityIdentifier:@"VehicleModelCell"];
    [(VehicleTitleDetailCell *)self->_vehicleModelCell setSelectionStyle:0];
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"[Virtual Garage] Model" value:@"localized string not found" table:0];
    v8 = [(VehicleTitleDetailCell *)self->_vehicleModelCell titleLabel];
    [v8 setText:v7];

    vehicleModelCell = self->_vehicleModelCell;
  }

  return vehicleModelCell;
}

- (VehicleTitleDetailCell)vehicleMakeCell
{
  vehicleMakeCell = self->_vehicleMakeCell;
  if (!vehicleMakeCell)
  {
    v4 = objc_opt_new();
    v5 = self->_vehicleMakeCell;
    self->_vehicleMakeCell = v4;

    [(VehicleTitleDetailCell *)self->_vehicleMakeCell setAccessibilityIdentifier:@"VehicleMakeCell"];
    [(VehicleTitleDetailCell *)self->_vehicleMakeCell setSelectionStyle:0];
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"[Virtual Garage] Manufacturer" value:@"localized string not found" table:0];
    v8 = [(VehicleTitleDetailCell *)self->_vehicleMakeCell titleLabel];
    [v8 setText:v7];

    vehicleMakeCell = self->_vehicleMakeCell;
  }

  return vehicleMakeCell;
}

- (VehicleAppCell)appCell
{
  appCell = self->_appCell;
  if (!appCell)
  {
    v4 = objc_opt_new();
    v5 = self->_appCell;
    self->_appCell = v4;

    v6 = [(VGVehicle *)self->_vehicle applicationRecord];
    [(VehicleAppCell *)self->_appCell setApplicationRecord:v6];

    [(VehicleAppCell *)self->_appCell setAccessibilityIdentifier:@"AppCell"];
    [(VehicleAppCell *)self->_appCell setSelectionStyle:0];
    v7 = [(VehicleAppCell *)self->_appCell openButton];
    [v7 addTarget:self action:"_pressedOpen" forControlEvents:64];

    appCell = self->_appCell;
  }

  return appCell;
}

- (VehicleLabelCell)editLicensePlateCell
{
  editLicensePlateCell = self->_editLicensePlateCell;
  if (!editLicensePlateCell)
  {
    v4 = objc_opt_new();
    v5 = self->_editLicensePlateCell;
    self->_editLicensePlateCell = v4;

    [(VehicleLabelCell *)self->_editLicensePlateCell setAccessibilityIdentifier:@"EditLicensePlateCell"];
    editLicensePlateCell = self->_editLicensePlateCell;
  }

  return editLicensePlateCell;
}

- (VehicleTitleDetailCell)licensePlateCell
{
  licensePlateCell = self->_licensePlateCell;
  if (!licensePlateCell)
  {
    v4 = objc_opt_new();
    v5 = self->_licensePlateCell;
    self->_licensePlateCell = v4;

    [(VehicleTitleDetailCell *)self->_licensePlateCell setAccessibilityIdentifier:@"LicensePlateCell"];
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"[Virtual Garage] License Plate Number" value:@"localized string not found" table:0];
    v8 = [(VehicleTitleDetailCell *)self->_licensePlateCell titleLabel];
    [v8 setText:v7];

    licensePlateCell = self->_licensePlateCell;
  }

  return licensePlateCell;
}

- (VehicleTitleDetailCell)editPlugsCell
{
  editPlugsCell = self->_editPlugsCell;
  if (!editPlugsCell)
  {
    v4 = objc_opt_new();
    v5 = self->_editPlugsCell;
    self->_editPlugsCell = v4;

    [(VehicleTitleDetailCell *)self->_editPlugsCell setAccessibilityIdentifier:@"EditPlugsCell"];
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"[Virtual Garage][Button] Plug Type" value:@"localized string not found" table:0];
    v8 = [(VehicleTitleDetailCell *)self->_editPlugsCell titleLabel];
    [v8 setText:v7];

    [(VehicleTitleDetailCell *)self->_editPlugsCell setAccessoryType:1];
    editPlugsCell = self->_editPlugsCell;
  }

  return editPlugsCell;
}

- (VehicleLabelCell)addNetworksCell
{
  addNetworksCell = self->_addNetworksCell;
  if (!addNetworksCell)
  {
    v4 = objc_opt_new();
    v5 = self->_addNetworksCell;
    self->_addNetworksCell = v4;

    [(VehicleLabelCell *)self->_addNetworksCell setAccessibilityIdentifier:@"AddNetworksCell"];
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"[Virtual Garage][Button] Add Network" value:@"localized string not found" table:0];
    v8 = [(VehicleLabelCell *)self->_addNetworksCell label];
    [v8 setText:v7];

    v9 = +[UIColor systemBlueColor];
    v10 = [(VehicleLabelCell *)self->_addNetworksCell label];
    [v10 setTextColor:v9];

    [(VehicleLabelCell *)self->_addNetworksCell setAccessoryType:0];
    addNetworksCell = self->_addNetworksCell;
  }

  return addNetworksCell;
}

- (VehicleBatteryView)vehicleBatteryView
{
  vehicleBatteryView = self->_vehicleBatteryView;
  if (!vehicleBatteryView)
  {
    v4 = [[VehicleBatteryView alloc] initWithVehicle:0 configuration:2 batteryChargeTextAtEdge:8];
    v5 = self->_vehicleBatteryView;
    self->_vehicleBatteryView = v4;

    [(VehicleBatteryView *)self->_vehicleBatteryView setAccessibilityIdentifier:@"VehicleBatteryView"];
    [(VehicleBatteryView *)self->_vehicleBatteryView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v6) = 1148846080;
    [(VehicleBatteryView *)self->_vehicleBatteryView setContentCompressionResistancePriority:1 forAxis:v6];
    LODWORD(v7) = 1148846080;
    [(VehicleBatteryView *)self->_vehicleBatteryView setContentHuggingPriority:1 forAxis:v7];
    vehicleBatteryView = self->_vehicleBatteryView;
  }

  return vehicleBatteryView;
}

- (UILabel)vehicleNameLabel
{
  vehicleNameLabel = self->_vehicleNameLabel;
  if (!vehicleNameLabel)
  {
    v4 = objc_opt_new();
    v5 = self->_vehicleNameLabel;
    self->_vehicleNameLabel = v4;

    [(UILabel *)self->_vehicleNameLabel setAccessibilityIdentifier:@"VehicleNameLabel"];
    [(UILabel *)self->_vehicleNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [UIFont _preferredFontForTextStyle:UIFontTextStyleTitle2 weight:UIFontWeightBold];
    [(UILabel *)self->_vehicleNameLabel setFont:v6];

    v7 = +[UIColor labelColor];
    [(UILabel *)self->_vehicleNameLabel setTextColor:v7];

    [(UILabel *)self->_vehicleNameLabel setTextAlignment:1];
    LODWORD(v8) = 1148846080;
    [(UILabel *)self->_vehicleNameLabel setContentCompressionResistancePriority:1 forAxis:v8];
    LODWORD(v9) = 1148846080;
    [(UILabel *)self->_vehicleNameLabel setContentHuggingPriority:1 forAxis:v9];
    vehicleNameLabel = self->_vehicleNameLabel;
  }

  return vehicleNameLabel;
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

    [(UIImageView *)self->_vehicleIconView setAccessibilityIdentifier:@"VehicleIcon"];
    [(UIImageView *)self->_vehicleIconView setContentMode:1];
    [(UIImageView *)self->_vehicleIconView setTranslatesAutoresizingMaskIntoConstraints:0];

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
    v8 = [(VehicleDetailViewController *)self vehicleIconView];
    [(UIView *)v7 addSubview:v8];

    v20 = self->_vehicleColorView;
    v27 = [(VehicleDetailViewController *)self vehicleIconView];
    v26 = [v27 centerXAnchor];
    v25 = [(UIView *)self->_vehicleColorView centerXAnchor];
    v24 = [v26 constraintEqualToAnchor:v25];
    v28[0] = v24;
    v23 = [(VehicleDetailViewController *)self vehicleIconView];
    v22 = [v23 centerYAnchor];
    v21 = [(UIView *)self->_vehicleColorView centerYAnchor];
    v19 = [v22 constraintEqualToAnchor:v21];
    v28[1] = v19;
    v18 = [(VehicleDetailViewController *)self vehicleIconView];
    v9 = [v18 widthAnchor];
    v10 = [(UIView *)self->_vehicleColorView widthAnchor];
    v11 = [v9 constraintLessThanOrEqualToAnchor:v10];
    v28[2] = v11;
    v12 = [(VehicleDetailViewController *)self vehicleIconView];
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

    [(UIView *)self->_headerView setAccessibilityIdentifier:@"VehicleDetailHeader"];
    v6 = self->_headerView;
    v7 = [(VehicleDetailViewController *)self vehicleColorView];
    [(UIView *)v6 addSubview:v7];

    v8 = self->_headerView;
    v9 = [(VehicleDetailViewController *)self vehicleNameLabel];
    [(UIView *)v8 addSubview:v9];

    v10 = self->_headerView;
    v11 = [(VehicleDetailViewController *)self vehicleBatteryView];
    [(UIView *)v10 addSubview:v11];

    v43 = self->_headerView;
    v62 = [(VehicleDetailViewController *)self vehicleColorView];
    v61 = [v62 centerXAnchor];
    v60 = [(UIView *)self->_headerView centerXAnchor];
    v59 = [v61 constraintEqualToAnchor:v60];
    v63[0] = v59;
    v58 = [(VehicleDetailViewController *)self vehicleColorView];
    v57 = [v58 topAnchor];
    v56 = [(UIView *)self->_headerView topAnchor];
    v55 = [v57 constraintEqualToAnchor:v56 constant:32.0];
    v63[1] = v55;
    v54 = [(VehicleDetailViewController *)self vehicleColorView];
    v53 = [v54 widthAnchor];
    v52 = [v53 constraintEqualToConstant:100.0];
    v63[2] = v52;
    v51 = [(VehicleDetailViewController *)self vehicleColorView];
    v50 = [v51 heightAnchor];
    v49 = [v50 constraintEqualToConstant:100.0];
    v63[3] = v49;
    v48 = [(VehicleDetailViewController *)self vehicleNameLabel];
    v46 = [v48 topAnchor];
    v47 = [(VehicleDetailViewController *)self vehicleColorView];
    v45 = [v47 bottomAnchor];
    v44 = [v46 constraintEqualToAnchor:v45 constant:16.0];
    v63[4] = v44;
    v42 = [(VehicleDetailViewController *)self vehicleNameLabel];
    v41 = [v42 leadingAnchor];
    v40 = [(UIView *)self->_headerView leadingAnchor];
    v39 = [v41 constraintEqualToAnchor:v40 constant:8.0];
    v63[5] = v39;
    v38 = [(VehicleDetailViewController *)self vehicleNameLabel];
    v37 = [v38 trailingAnchor];
    v36 = [(UIView *)self->_headerView trailingAnchor];
    v35 = [v37 constraintEqualToAnchor:v36 constant:-8.0];
    v63[6] = v35;
    v34 = [(VehicleDetailViewController *)self vehicleBatteryView];
    v32 = [v34 topAnchor];
    v33 = [(VehicleDetailViewController *)self vehicleNameLabel];
    v31 = [v33 bottomAnchor];
    v30 = [v32 constraintEqualToAnchor:v31 constant:2.0];
    v63[7] = v30;
    v29 = [(VehicleDetailViewController *)self vehicleBatteryView];
    v28 = [v29 centerXAnchor];
    v27 = [(UIView *)self->_headerView centerXAnchor];
    v26 = [v28 constraintEqualToAnchor:v27];
    v63[8] = v26;
    v25 = [(VehicleDetailViewController *)self vehicleBatteryView];
    v24 = [v25 leadingAnchor];
    v23 = [(UIView *)self->_headerView leadingAnchor];
    v22 = [v24 constraintGreaterThanOrEqualToAnchor:v23 constant:8.0];
    v63[9] = v22;
    v21 = [(VehicleDetailViewController *)self vehicleBatteryView];
    v12 = [v21 trailingAnchor];
    v13 = [(UIView *)self->_headerView trailingAnchor];
    v14 = [v12 constraintLessThanOrEqualToAnchor:v13 constant:-8.0];
    v63[10] = v14;
    v15 = [(VehicleDetailViewController *)self vehicleBatteryView];
    v16 = [v15 bottomAnchor];
    v17 = [(UIView *)self->_headerView bottomAnchor];
    v18 = [v16 constraintEqualToAnchor:v17 constant:-24.0];
    v63[11] = v18;
    v19 = [NSArray arrayWithObjects:v63 count:12];
    [(UIView *)v43 addConstraints:v19];

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

    [(UITableView *)self->_tableView setAccessibilityIdentifier:@"VehicleDetailTableView"];
    [(UITableView *)self->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UITableView *)self->_tableView setDataSource:self];
    [(UITableView *)self->_tableView setDelegate:self];
    v6 = [(VehicleDetailViewController *)self headerView];
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
    v4 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
    v5 = objc_opt_new();
    if (MapsFeature_IsEnabled_Alberta())
    {
      v6 = objc_opt_new();
      v7 = [(VGVehicle *)self->_vehicle licensePlate];
      v8 = [v7 length];

      if (v8)
      {
        v9 = [(VehicleDetailViewController *)self licensePlateCell];
        [v6 addObject:v9];
      }

      v10 = [(VehicleDetailViewController *)self editLicensePlateCell];
      [v6 addObject:v10];

      v11 = [[VehicleDetailTableSection alloc] initWithCells:v6];
      v12 = +[NSBundle mainBundle];
      v13 = [v12 localizedStringForKey:@"[Virtual Garage] LPR Information" value:@"localized string not found" table:0];
      [(VehicleDetailTableSection *)v11 setHeaderTitle:v13];

      [v5 addObject:v11];
      v4 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
    }

    if ([(VGVehicle *)self->_vehicle isPureElectricVehicle]&& MapsFeature_IsEnabled_EVRoutingEnhancements())
    {
      v14 = [(VGVehicle *)self->_vehicle preferredChargingNetworks];
      v15 = [v14 allObjects];
      v50 = [v15 sortedArrayUsingComparator:&stru_101651BD0];

      v49 = sub_100021DB0(v50, &stru_101651C10);
      v16 = [VehicleDetailTableSection alloc];
      v17 = [(VehicleDetailViewController *)self addNetworksCell];
      v18 = [v49 arrayByAddingObject:v17];
      v19 = [(VehicleDetailTableSection *)v16 initWithCells:v18];

      v20 = +[NSBundle mainBundle];
      v21 = [v20 localizedStringForKey:@"[Virtual Garage] Preferred Charging Networks header" value:@"localized string not found" table:0];
      [(VehicleDetailTableSection *)v19 setHeaderTitle:v21];

      v22 = +[NSBundle mainBundle];
      v23 = [v22 localizedStringForKey:@"[Virtual Garage] Preferred Charging Networks footer" value:@"localized string not found" table:0];
      [(VehicleDetailTableSection *)v19 setFooterText:v23];

      [v5 addObject:v19];
    }

    v24 = objc_alloc_init(v4[297]);
    v25 = [(VGVehicle *)self->_vehicle manufacturer];
    v26 = [v25 length];

    if (v26)
    {
      v27 = [(VehicleDetailViewController *)self vehicleMakeCell];
      [v24 addObject:v27];
    }

    v28 = [(VGVehicle *)self->_vehicle model];
    v29 = [v28 length];

    if (v29)
    {
      v30 = [(VehicleDetailViewController *)self vehicleModelCell];
      [v24 addObject:v30];
    }

    v31 = +[NSUserDefaults standardUserDefaults];
    v32 = ([v31 BOOLForKey:@"VirtualGarageEditConnectorPlugs"] & 1) != 0 || -[VGVehicle supportedConnectors](self->_vehicle, "supportedConnectors") != 0;

    if ([(VGVehicle *)self->_vehicle isPureElectricVehicle]&& v32)
    {
      v33 = [(VehicleDetailViewController *)self editPlugsCell];
      [v24 addObject:v33];
    }

    if ([v24 count])
    {
      v34 = [[VehicleDetailTableSection alloc] initWithCells:v24];
      v35 = +[NSBundle mainBundle];
      v36 = [v35 localizedStringForKey:@"[Virtual Garage] Vehicle Information" value:@"localized string not found" table:0];
      [(VehicleDetailTableSection *)v34 setHeaderTitle:v36];

      [v5 addObject:v34];
    }

    v37 = [(VGVehicle *)self->_vehicle applicationRecord];

    if (v37)
    {
      v38 = [VehicleDetailTableSection alloc];
      v39 = [(VehicleDetailViewController *)self appCell];
      v52 = v39;
      v40 = [NSArray arrayWithObjects:&v52 count:1];
      v41 = [(VehicleDetailTableSection *)v38 initWithCells:v40];

      [v5 addObject:v41];
    }

    v42 = [VehicleDetailTableSection alloc];
    v43 = [(VehicleDetailViewController *)self deleteCell];
    v51 = v43;
    v44 = [NSArray arrayWithObjects:&v51 count:1];
    v45 = [(VehicleDetailTableSection *)v42 initWithCells:v44];
    [v5 addObject:v45];

    v46 = [v5 copy];
    v47 = self->_tableStructure;
    self->_tableStructure = v46;

    tableStructure = self->_tableStructure;
  }

  return tableStructure;
}

- (VehicleDetailViewController)initWithVehicle:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = VehicleDetailViewController;
  v8 = [(VehicleDetailViewController *)&v16 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v7);
    v10 = [v6 copy];
    vehicle = v9->_vehicle;
    v9->_vehicle = v10;

    v12 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:2 target:v9 action:"_pressedEdit"];
    v13 = [(VehicleDetailViewController *)v9 navigationItem];
    [v13 setRightBarButtonItem:v12];

    v14 = +[VGVirtualGarageService sharedService];
    [v14 registerObserver:v9];
  }

  return v9;
}

@end