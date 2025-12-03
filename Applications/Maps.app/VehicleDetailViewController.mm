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
- (VehicleDetailViewController)initWithVehicle:(id)vehicle delegate:(id)delegate;
- (VehicleDetailViewControllerDelegate)delegate;
- (VehicleLabelCell)addNetworksCell;
- (VehicleLabelCell)deleteCell;
- (VehicleLabelCell)editLicensePlateCell;
- (VehicleTitleDetailCell)editPlugsCell;
- (VehicleTitleDetailCell)licensePlateCell;
- (VehicleTitleDetailCell)vehicleMakeCell;
- (VehicleTitleDetailCell)vehicleModelCell;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_pressedEdit;
- (void)_pressedOpen;
- (void)_reloadAndSave:(BOOL)save;
- (void)_saveIfAppropriate;
- (void)_updateContent;
- (void)confirmRemoveVehicle;
- (void)dismiss;
- (void)editVehicleViewController:(id)controller didSelectColor:(id)color nickname:(id)nickname removedNetworks:(id)networks;
- (void)editVehicleViewControllerDidSelectDone:(id)done;
- (void)networkPickerControllerDidSelectNetworks:(id)networks;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)virtualGarageDidUpdate:(id)update;
@end

@implementation VehicleDetailViewController

- (VehicleDetailViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)virtualGarageDidUpdate:(id)update
{
  updateCopy = update;
  if (self->_deletingVehicle)
  {
    v5 = +[MKMapService sharedService];
    vehicles = [updateCopy vehicles];
    v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [vehicles count]);
    stringValue = [v7 stringValue];
    [v5 captureUserAction:2112 onTarget:662 eventValue:stringValue];

    v9 = +[MKMapService sharedService];
    vehicles2 = [updateCopy vehicles];
    v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [vehicles2 count]);
    stringValue2 = [v11 stringValue];
    [v9 captureUserAction:2111 onTarget:660 eventValue:stringValue2];

    self->_deletingVehicle = 0;
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100D35FF8;
  v14[3] = &unk_101661A90;
  v14[4] = self;
  v15 = updateCopy;
  v13 = updateCopy;
  dispatch_async(&_dispatch_main_q, v14);
}

- (void)editVehicleViewControllerDidSelectDone:(id)done
{
  navigationController = [(VehicleDetailViewController *)self navigationController];
  v4 = [navigationController popToViewController:self animated:1];
}

- (void)editVehicleViewController:(id)controller didSelectColor:(id)color nickname:(id)nickname removedNetworks:(id)networks
{
  colorCopy = color;
  nicknameCopy = nickname;
  networksCopy = networks;
  v12 = sub_100022C48();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = networksCopy;
    v14 = v13;
    if (v13)
    {
      if ([v13 count])
      {
        v31 = v12;
        v32 = networksCopy;
        v33 = nicknameCopy;
        selfCopy = self;
        v35 = colorCopy;
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

            self = selfCopy;
            colorCopy = v35;
            networksCopy = v32;
            nicknameCopy = v33;
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
    v41 = colorCopy;
    v42 = 2112;
    v43 = nicknameCopy;
    v44 = 2112;
    v45 = v29;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "edit vehicle VC selected color: %@, nickname: %@, removedNetworks: %@", buf, 0x20u);
  }

  [(VehicleDetailViewController *)self _reloadAndSave:1];
}

- (void)networkPickerControllerDidSelectNetworks:(id)networks
{
  networksCopy = networks;
  if ([networksCopy count])
  {
    preferredChargingNetworks = [(VGVehicle *)self->_vehicle preferredChargingNetworks];
    v6 = preferredChargingNetworks;
    if (preferredChargingNetworks)
    {
      v7 = preferredChargingNetworks;
    }

    else
    {
      v7 = +[NSSet set];
    }

    v8 = v7;

    v9 = sub_100022C48();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = networksCopy;
      v11 = v10;
      if (v10)
      {
        if ([v10 count])
        {
          v52 = v9;
          selfCopy = self;
          v56 = networksCopy;
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

              networksCopy = v56;
              self = selfCopy;
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
      displayName = [(VGVehicle *)self->_vehicle displayName];
      allObjects = [v8 allObjects];
      v30 = allObjects;
      if (allObjects)
      {
        if ([allObjects count])
        {
          v49 = displayName;
          v51 = v27;
          v53 = v9;
          v55 = v8;
          v57 = networksCopy;
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
              networksCopy = v57;
              v27 = v51;
              v9 = v53;
              v30 = v48;
              displayName = v49;
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
      v65 = displayName;
      v66 = 2112;
      v67 = v45;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Network Picker VC did select networks: %@, will update vehicle: %@ (current networks: %@)", buf, 0x20u);
    }

    v46 = [v8 setByAddingObjectsFromArray:networksCopy];
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

- (void)_reloadAndSave:(BOOL)save
{
  saveCopy = save;
  [(VehicleDetailViewController *)self _updateContent];
  if (saveCopy)
  {
    [(VehicleDetailViewController *)self _saveIfAppropriate];
  }

  [(VehicleDetailViewController *)self setTableStructure:0];
  tableView = [(VehicleDetailViewController *)self tableView];
  [tableView reloadData];
}

- (void)_pressedOpen
{
  pairedAppIdentifier = [(VGVehicle *)self->_vehicle pairedAppIdentifier];

  if (pairedAppIdentifier)
  {
    v4 = +[MKMapService sharedService];
    [v4 captureUserAction:2110 onTarget:662 eventValue:0];

    v8 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
    pairedAppIdentifier2 = [(VGVehicle *)self->_vehicle pairedAppIdentifier];
    [v8 openApplication:pairedAppIdentifier2 withOptions:0 completion:0];
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
  traitCollection = [(VehicleDetailViewController *)self traitCollection];
  v5 = [EditVehicleViewController alloc];
  v6 = sub_1006D447C(v9, traitCollection);
  v7 = [(EditVehicleViewController *)v5 initWithColors:v6 vehicle:self->_vehicle delegate:self];

  navigationController = [(VehicleDetailViewController *)self navigationController];
  [navigationController pushViewController:v7 animated:1];
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
  combinedDisplayName = [(VGVehicle *)self->_vehicle combinedDisplayName];
  v3 = [combinedDisplayName length] != 0;

  return v3;
}

- (void)confirmRemoveVehicle
{
  title = [(VehicleDetailViewController *)self title];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"[Virtual Garage] Remove Vehicle Alert" value:@"localized string not found" table:0];
  v6 = [UIAlertController alertControllerWithTitle:title message:v5 preferredStyle:0];

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
  colorHex = [(VGVehicle *)self->_vehicle colorHex];
  v4 = [UIColor _maps_colorFromHexRepresentation:colorHex];
  v5 = v4;
  if (!v4)
  {
    v5 = +[UIColor systemBlueColor];
  }

  vehicleColorView = [(VehicleDetailViewController *)self vehicleColorView];
  [vehicleColorView setBackgroundColor:v5];

  if (!v4)
  {
  }

  vehicleColorView2 = [(VehicleDetailViewController *)self vehicleColorView];
  backgroundColor = [vehicleColorView2 backgroundColor];
  v9 = +[UIColor whiteColor];
  [backgroundColor _maps_euclideanDistanceFromColor:v9];
  v11 = v10;

  if (v11 >= 0.1)
  {
    v12 = +[UIColor systemWhiteColor];
    vehicleIconView = [(VehicleDetailViewController *)self vehicleIconView];
    [vehicleIconView setTintColor:v12];
  }

  else
  {
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    vehicleIconView = [(VehicleDetailViewController *)self traitCollection];
    v14 = [UIColor colorNamed:@"TertiaryVehicleTint" inBundle:v12 compatibleWithTraitCollection:vehicleIconView];
    vehicleIconView2 = [(VehicleDetailViewController *)self vehicleIconView];
    [vehicleIconView2 setTintColor:v14];
  }

  displayName = [(VGVehicle *)self->_vehicle displayName];
  v17 = [displayName length];
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

  vehicleNameLabel = [(VehicleDetailViewController *)self vehicleNameLabel];
  [vehicleNameLabel setText:v50];

  LODWORD(vehicleNameLabel) = [(VGVehicle *)self->_vehicle isPureElectricVehicle];
  vehicleBatteryView = [(VehicleDetailViewController *)self vehicleBatteryView];
  [vehicleBatteryView setHidden:vehicleNameLabel ^ 1];

  if ([(VGVehicle *)self->_vehicle isPureElectricVehicle])
  {
    v21 = self->_vehicle;
    vehicleBatteryView2 = [(VehicleDetailViewController *)self vehicleBatteryView];
    [vehicleBatteryView2 setVehicle:v21];
  }

  licensePlate = [(VGVehicle *)self->_vehicle licensePlate];
  licensePlateCell = [(VehicleDetailViewController *)self licensePlateCell];
  detailLabel = [licensePlateCell detailLabel];
  [detailLabel setText:licensePlate];

  manufacturer = [(VGVehicle *)self->_vehicle manufacturer];
  vehicleMakeCell = [(VehicleDetailViewController *)self vehicleMakeCell];
  detailLabel2 = [vehicleMakeCell detailLabel];
  [detailLabel2 setText:manufacturer];

  model = [(VGVehicle *)self->_vehicle model];
  vehicleModelCell = [(VehicleDetailViewController *)self vehicleModelCell];
  detailLabel3 = [vehicleModelCell detailLabel];
  [detailLabel3 setText:model];

  [(VGVehicle *)self->_vehicle supportedConnectors];
  v32 = VGChargingConnectorTypeOptionsUnpacked();
  v33 = sub_100021DB0(v32, &stru_101651C50);
  v34 = [v33 componentsJoinedByString:{@", "}];
  editPlugsCell = [(VehicleDetailViewController *)self editPlugsCell];
  detailLabel4 = [editPlugsCell detailLabel];
  [detailLabel4 setText:v34];

  licensePlate2 = [(VGVehicle *)self->_vehicle licensePlate];
  v38 = [licensePlate2 length];

  v39 = +[NSBundle mainBundle];
  v40 = v39;
  if (v38)
  {
    v41 = [v39 localizedStringForKey:@"[Virtual Garage] Remove License Plate Number" value:@"localized string not found" table:0];
    editLicensePlateCell = [(VehicleDetailViewController *)self editLicensePlateCell];
    label = [editLicensePlateCell label];
    [label setText:v41];

    +[UIColor systemRedColor];
  }

  else
  {
    v44 = [v39 localizedStringForKey:@"[Virtual Garage] Update License Plate Number" value:@"localized string not found" table:0];
    editLicensePlateCell2 = [(VehicleDetailViewController *)self editLicensePlateCell];
    label2 = [editLicensePlateCell2 label];
    [label2 setText:v44];

    +[UIColor labelColor];
  }
  v47 = ;
  editLicensePlateCell3 = [(VehicleDetailViewController *)self editLicensePlateCell];
  label3 = [editLicensePlateCell3 label];
  [label3 setTextColor:v47];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  v41 = [viewCopy cellForRowAtIndexPath:pathCopy];

  editPlugsCell = [(VehicleDetailViewController *)self editPlugsCell];

  if (v41 == editPlugsCell)
  {
    v14 = +[MKMapService sharedService];
    [v14 captureUserAction:438 onTarget:662 eventValue:0];

    v15 = [[VehicleConnectorListViewController alloc] initWithVehicle:self->_vehicle];
    navigationController = [(VehicleDetailViewController *)self navigationController];
    [navigationController pushViewController:v15 animated:1];

LABEL_11:
    goto LABEL_18;
  }

  addNetworksCell = [(VehicleDetailViewController *)self addNetworksCell];

  if (v41 == addNetworksCell)
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
    preferredChargingNetworks = [(VGVehicle *)self->_vehicle preferredChargingNetworks];
    v15 = [v20 initWithExcludedNetworks:preferredChargingNetworks delegate:self];

    v22 = [[UINavigationController alloc] initWithRootViewController:v15];
    topMostPresentedViewController = [(VehicleDetailViewController *)self topMostPresentedViewController];
    [topMostPresentedViewController presentViewController:v22 animated:1 completion:0];

    goto LABEL_11;
  }

  licensePlateCell = [(VehicleDetailViewController *)self licensePlateCell];

  if (v41 == licensePlateCell)
  {
    v24 = +[MKMapService sharedService];
    [v24 captureUserAction:2125 onTarget:662 eventValue:0];

    _maps_mapsSceneDelegate = [(VehicleDetailViewController *)self _maps_mapsSceneDelegate];
    appCoordinator = [_maps_mapsSceneDelegate appCoordinator];
    baseActionCoordinator = [appCoordinator baseActionCoordinator];

    vehicle = self->_vehicle;
LABEL_13:
    [baseActionCoordinator presentLPRWithVehicle:vehicle scenario:1 presenter:self completionBlock:0];

    goto LABEL_18;
  }

  editLicensePlateCell = [(VehicleDetailViewController *)self editLicensePlateCell];

  if (v41 == editLicensePlateCell)
  {
    licensePlate = [(VGVehicle *)self->_vehicle licensePlate];
    v30 = [licensePlate length];

    v31 = +[MKMapService sharedService];
    v32 = v31;
    if (v30)
    {
      v33 = [NSNumber numberWithUnsignedInteger:[(VehicleDetailViewController *)self vehicleCount]];
      stringValue = [v33 stringValue];
      [v32 captureUserAction:2124 onTarget:660 eventValue:stringValue];

      displayName = [(VGVehicle *)self->_vehicle displayName];
      v36 = [displayName length];

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

    _maps_mapsSceneDelegate2 = [(VehicleDetailViewController *)self _maps_mapsSceneDelegate];
    appCoordinator2 = [_maps_mapsSceneDelegate2 appCoordinator];
    baseActionCoordinator = [appCoordinator2 baseActionCoordinator];

    vehicle = self->_vehicle;
    goto LABEL_13;
  }

  deleteCell = [(VehicleDetailViewController *)self deleteCell];

  v13 = v41;
  if (v41 != deleteCell)
  {
    goto LABEL_19;
  }

  [(VehicleDetailViewController *)self confirmRemoveVehicle];
LABEL_18:
  v13 = v41;
LABEL_19:
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  tableStructure = [(VehicleDetailViewController *)self tableStructure];
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
  tableStructure = [(VehicleDetailViewController *)self tableStructure];
  v7 = [tableStructure objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  cells = [v7 cells];
  v9 = [pathCopy row];

  v10 = [cells objectAtIndexedSubscript:v9];

  return v10;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  tableStructure = [(VehicleDetailViewController *)self tableStructure];
  v6 = [tableStructure objectAtIndexedSubscript:section];

  cells = [v6 cells];
  v8 = [cells count];

  return v8;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  tableStructure = [(VehicleDetailViewController *)self tableStructure];
  v4 = [tableStructure count];

  return v4;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  tableStructure = [(VehicleDetailViewController *)self tableStructure];
  v6 = [tableStructure objectAtIndexedSubscript:section];

  footerText = [v6 footerText];

  return footerText;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v7 = objc_alloc_init(UITableViewHeaderFooterView);
  v8 = +[UIListContentConfiguration prominentInsetGroupedHeaderConfiguration];
  v9 = [(VehicleDetailViewController *)self tableView:viewCopy titleForHeaderInSection:section];

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
  tableStructure = [(VehicleDetailViewController *)self tableStructure];
  v6 = [tableStructure objectAtIndexedSubscript:section];

  headerTitle = [v6 headerTitle];

  return headerTitle;
}

- (void)dismiss
{
  v3 = +[MKMapService sharedService];
  [v3 captureUserAction:445 onTarget:662 eventValue:0];

  presentingViewController = [(VehicleDetailViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v6.receiver = self;
  v6.super_class = VehicleDetailViewController;
  [(VehicleDetailViewController *)&v6 viewIsAppearing:appearing];
  [(UIView *)self->_headerView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height];
  [(UIView *)self->_headerView setFrame:CGPointZero.x, CGPointZero.y, v4, v5];
  [(VehicleDetailViewController *)self _reloadAndSave:0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = VehicleDetailViewController;
  [(VehicleDetailViewController *)&v7 viewWillDisappear:disappear];
  traitCollection = [(VehicleDetailViewController *)self traitCollection];
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
  v9.super_class = VehicleDetailViewController;
  [(VehicleDetailViewController *)&v9 viewWillAppear:?];
  traitCollection = [(VehicleDetailViewController *)self traitCollection];
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
  v31.receiver = self;
  v31.super_class = VehicleDetailViewController;
  [(VehicleDetailViewController *)&v31 viewDidLoad];
  view = [(VehicleDetailViewController *)self view];
  [view setAccessibilityIdentifier:@"VehicleDetailView"];

  view2 = [(VehicleDetailViewController *)self view];
  tableView = [(VehicleDetailViewController *)self tableView];
  [view2 addSubview:tableView];

  tableView2 = [(VehicleDetailViewController *)self tableView];
  leadingAnchor = [tableView2 leadingAnchor];
  view3 = [(VehicleDetailViewController *)self view];
  leadingAnchor2 = [view3 leadingAnchor];
  v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v32[0] = v26;
  tableView3 = [(VehicleDetailViewController *)self tableView];
  trailingAnchor = [tableView3 trailingAnchor];
  view4 = [(VehicleDetailViewController *)self view];
  trailingAnchor2 = [view4 trailingAnchor];
  v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v32[1] = v21;
  tableView4 = [(VehicleDetailViewController *)self tableView];
  topAnchor = [tableView4 topAnchor];
  view5 = [(VehicleDetailViewController *)self view];
  topAnchor2 = [view5 topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v32[2] = v8;
  tableView5 = [(VehicleDetailViewController *)self tableView];
  bottomAnchor = [tableView5 bottomAnchor];
  view6 = [(VehicleDetailViewController *)self view];
  bottomAnchor2 = [view6 bottomAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v32[3] = v13;
  v14 = [NSArray arrayWithObjects:v32 count:4];
  [NSLayoutConstraint activateConstraints:v14];

  v15 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"dismiss"];
  navigationItem = [(VehicleDetailViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v15];

  navigationItem2 = [(VehicleDetailViewController *)self navigationItem];
  leftBarButtonItem = [navigationItem2 leftBarButtonItem];
  [leftBarButtonItem setAccessibilityIdentifier:@"DoneButton"];

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
    label = [(VehicleLabelCell *)self->_deleteCell label];
    [label setTextColor:v6];

    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"[Virtual Garage] Remove This Vehicle" value:@"localized string not found" table:0];
    label2 = [(VehicleLabelCell *)self->_deleteCell label];
    [label2 setText:v9];

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
    titleLabel = [(VehicleTitleDetailCell *)self->_vehicleModelCell titleLabel];
    [titleLabel setText:v7];

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
    titleLabel = [(VehicleTitleDetailCell *)self->_vehicleMakeCell titleLabel];
    [titleLabel setText:v7];

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

    applicationRecord = [(VGVehicle *)self->_vehicle applicationRecord];
    [(VehicleAppCell *)self->_appCell setApplicationRecord:applicationRecord];

    [(VehicleAppCell *)self->_appCell setAccessibilityIdentifier:@"AppCell"];
    [(VehicleAppCell *)self->_appCell setSelectionStyle:0];
    openButton = [(VehicleAppCell *)self->_appCell openButton];
    [openButton addTarget:self action:"_pressedOpen" forControlEvents:64];

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
    titleLabel = [(VehicleTitleDetailCell *)self->_licensePlateCell titleLabel];
    [titleLabel setText:v7];

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
    titleLabel = [(VehicleTitleDetailCell *)self->_editPlugsCell titleLabel];
    [titleLabel setText:v7];

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
    label = [(VehicleLabelCell *)self->_addNetworksCell label];
    [label setText:v7];

    v9 = +[UIColor systemBlueColor];
    label2 = [(VehicleLabelCell *)self->_addNetworksCell label];
    [label2 setTextColor:v9];

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
    layer = [(UIView *)self->_vehicleColorView layer];
    [layer setCornerRadius:50.0];

    v7 = self->_vehicleColorView;
    vehicleIconView = [(VehicleDetailViewController *)self vehicleIconView];
    [(UIView *)v7 addSubview:vehicleIconView];

    v20 = self->_vehicleColorView;
    vehicleIconView2 = [(VehicleDetailViewController *)self vehicleIconView];
    centerXAnchor = [vehicleIconView2 centerXAnchor];
    centerXAnchor2 = [(UIView *)self->_vehicleColorView centerXAnchor];
    v24 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v28[0] = v24;
    vehicleIconView3 = [(VehicleDetailViewController *)self vehicleIconView];
    centerYAnchor = [vehicleIconView3 centerYAnchor];
    centerYAnchor2 = [(UIView *)self->_vehicleColorView centerYAnchor];
    v19 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v28[1] = v19;
    vehicleIconView4 = [(VehicleDetailViewController *)self vehicleIconView];
    widthAnchor = [vehicleIconView4 widthAnchor];
    widthAnchor2 = [(UIView *)self->_vehicleColorView widthAnchor];
    v11 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2];
    v28[2] = v11;
    vehicleIconView5 = [(VehicleDetailViewController *)self vehicleIconView];
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

    [(UIView *)self->_headerView setAccessibilityIdentifier:@"VehicleDetailHeader"];
    v6 = self->_headerView;
    vehicleColorView = [(VehicleDetailViewController *)self vehicleColorView];
    [(UIView *)v6 addSubview:vehicleColorView];

    v8 = self->_headerView;
    vehicleNameLabel = [(VehicleDetailViewController *)self vehicleNameLabel];
    [(UIView *)v8 addSubview:vehicleNameLabel];

    v10 = self->_headerView;
    vehicleBatteryView = [(VehicleDetailViewController *)self vehicleBatteryView];
    [(UIView *)v10 addSubview:vehicleBatteryView];

    v43 = self->_headerView;
    vehicleColorView2 = [(VehicleDetailViewController *)self vehicleColorView];
    centerXAnchor = [vehicleColorView2 centerXAnchor];
    centerXAnchor2 = [(UIView *)self->_headerView centerXAnchor];
    v59 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v63[0] = v59;
    vehicleColorView3 = [(VehicleDetailViewController *)self vehicleColorView];
    topAnchor = [vehicleColorView3 topAnchor];
    topAnchor2 = [(UIView *)self->_headerView topAnchor];
    v55 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:32.0];
    v63[1] = v55;
    vehicleColorView4 = [(VehicleDetailViewController *)self vehicleColorView];
    widthAnchor = [vehicleColorView4 widthAnchor];
    v52 = [widthAnchor constraintEqualToConstant:100.0];
    v63[2] = v52;
    vehicleColorView5 = [(VehicleDetailViewController *)self vehicleColorView];
    heightAnchor = [vehicleColorView5 heightAnchor];
    v49 = [heightAnchor constraintEqualToConstant:100.0];
    v63[3] = v49;
    vehicleNameLabel2 = [(VehicleDetailViewController *)self vehicleNameLabel];
    topAnchor3 = [vehicleNameLabel2 topAnchor];
    vehicleColorView6 = [(VehicleDetailViewController *)self vehicleColorView];
    bottomAnchor = [vehicleColorView6 bottomAnchor];
    v44 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:16.0];
    v63[4] = v44;
    vehicleNameLabel3 = [(VehicleDetailViewController *)self vehicleNameLabel];
    leadingAnchor = [vehicleNameLabel3 leadingAnchor];
    leadingAnchor2 = [(UIView *)self->_headerView leadingAnchor];
    v39 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:8.0];
    v63[5] = v39;
    vehicleNameLabel4 = [(VehicleDetailViewController *)self vehicleNameLabel];
    trailingAnchor = [vehicleNameLabel4 trailingAnchor];
    trailingAnchor2 = [(UIView *)self->_headerView trailingAnchor];
    v35 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-8.0];
    v63[6] = v35;
    vehicleBatteryView2 = [(VehicleDetailViewController *)self vehicleBatteryView];
    topAnchor4 = [vehicleBatteryView2 topAnchor];
    vehicleNameLabel5 = [(VehicleDetailViewController *)self vehicleNameLabel];
    bottomAnchor2 = [vehicleNameLabel5 bottomAnchor];
    v30 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:2.0];
    v63[7] = v30;
    vehicleBatteryView3 = [(VehicleDetailViewController *)self vehicleBatteryView];
    centerXAnchor3 = [vehicleBatteryView3 centerXAnchor];
    centerXAnchor4 = [(UIView *)self->_headerView centerXAnchor];
    v26 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v63[8] = v26;
    vehicleBatteryView4 = [(VehicleDetailViewController *)self vehicleBatteryView];
    leadingAnchor3 = [vehicleBatteryView4 leadingAnchor];
    leadingAnchor4 = [(UIView *)self->_headerView leadingAnchor];
    v22 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4 constant:8.0];
    v63[9] = v22;
    vehicleBatteryView5 = [(VehicleDetailViewController *)self vehicleBatteryView];
    trailingAnchor3 = [vehicleBatteryView5 trailingAnchor];
    trailingAnchor4 = [(UIView *)self->_headerView trailingAnchor];
    v14 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4 constant:-8.0];
    v63[10] = v14;
    vehicleBatteryView6 = [(VehicleDetailViewController *)self vehicleBatteryView];
    bottomAnchor3 = [vehicleBatteryView6 bottomAnchor];
    bottomAnchor4 = [(UIView *)self->_headerView bottomAnchor];
    v18 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-24.0];
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
    headerView = [(VehicleDetailViewController *)self headerView];
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
    v4 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
    v5 = objc_opt_new();
    if (MapsFeature_IsEnabled_Alberta())
    {
      v6 = objc_opt_new();
      licensePlate = [(VGVehicle *)self->_vehicle licensePlate];
      v8 = [licensePlate length];

      if (v8)
      {
        licensePlateCell = [(VehicleDetailViewController *)self licensePlateCell];
        [v6 addObject:licensePlateCell];
      }

      editLicensePlateCell = [(VehicleDetailViewController *)self editLicensePlateCell];
      [v6 addObject:editLicensePlateCell];

      v11 = [[VehicleDetailTableSection alloc] initWithCells:v6];
      v12 = +[NSBundle mainBundle];
      v13 = [v12 localizedStringForKey:@"[Virtual Garage] LPR Information" value:@"localized string not found" table:0];
      [(VehicleDetailTableSection *)v11 setHeaderTitle:v13];

      [v5 addObject:v11];
      v4 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
    }

    if ([(VGVehicle *)self->_vehicle isPureElectricVehicle]&& MapsFeature_IsEnabled_EVRoutingEnhancements())
    {
      preferredChargingNetworks = [(VGVehicle *)self->_vehicle preferredChargingNetworks];
      allObjects = [preferredChargingNetworks allObjects];
      v50 = [allObjects sortedArrayUsingComparator:&stru_101651BD0];

      v49 = sub_100021DB0(v50, &stru_101651C10);
      v16 = [VehicleDetailTableSection alloc];
      addNetworksCell = [(VehicleDetailViewController *)self addNetworksCell];
      v18 = [v49 arrayByAddingObject:addNetworksCell];
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
    manufacturer = [(VGVehicle *)self->_vehicle manufacturer];
    v26 = [manufacturer length];

    if (v26)
    {
      vehicleMakeCell = [(VehicleDetailViewController *)self vehicleMakeCell];
      [v24 addObject:vehicleMakeCell];
    }

    model = [(VGVehicle *)self->_vehicle model];
    v29 = [model length];

    if (v29)
    {
      vehicleModelCell = [(VehicleDetailViewController *)self vehicleModelCell];
      [v24 addObject:vehicleModelCell];
    }

    v31 = +[NSUserDefaults standardUserDefaults];
    v32 = ([v31 BOOLForKey:@"VirtualGarageEditConnectorPlugs"] & 1) != 0 || -[VGVehicle supportedConnectors](self->_vehicle, "supportedConnectors") != 0;

    if ([(VGVehicle *)self->_vehicle isPureElectricVehicle]&& v32)
    {
      editPlugsCell = [(VehicleDetailViewController *)self editPlugsCell];
      [v24 addObject:editPlugsCell];
    }

    if ([v24 count])
    {
      v34 = [[VehicleDetailTableSection alloc] initWithCells:v24];
      v35 = +[NSBundle mainBundle];
      v36 = [v35 localizedStringForKey:@"[Virtual Garage] Vehicle Information" value:@"localized string not found" table:0];
      [(VehicleDetailTableSection *)v34 setHeaderTitle:v36];

      [v5 addObject:v34];
    }

    applicationRecord = [(VGVehicle *)self->_vehicle applicationRecord];

    if (applicationRecord)
    {
      v38 = [VehicleDetailTableSection alloc];
      appCell = [(VehicleDetailViewController *)self appCell];
      v52 = appCell;
      v40 = [NSArray arrayWithObjects:&v52 count:1];
      v41 = [(VehicleDetailTableSection *)v38 initWithCells:v40];

      [v5 addObject:v41];
    }

    v42 = [VehicleDetailTableSection alloc];
    deleteCell = [(VehicleDetailViewController *)self deleteCell];
    v51 = deleteCell;
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

- (VehicleDetailViewController)initWithVehicle:(id)vehicle delegate:(id)delegate
{
  vehicleCopy = vehicle;
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = VehicleDetailViewController;
  v8 = [(VehicleDetailViewController *)&v16 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    v10 = [vehicleCopy copy];
    vehicle = v9->_vehicle;
    v9->_vehicle = v10;

    v12 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:2 target:v9 action:"_pressedEdit"];
    navigationItem = [(VehicleDetailViewController *)v9 navigationItem];
    [navigationItem setRightBarButtonItem:v12];

    v14 = +[VGVirtualGarageService sharedService];
    [v14 registerObserver:v9];
  }

  return v9;
}

@end