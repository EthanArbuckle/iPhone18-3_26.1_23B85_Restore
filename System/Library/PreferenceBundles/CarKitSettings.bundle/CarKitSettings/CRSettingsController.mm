@interface CRSettingsController
+ (BOOL)_showsCarPlayInternalSettingsUI;
+ (id)specifierForStoredVehicle:(id)vehicle vehicleManager:(id)manager featureAvailability:(id)availability;
- (BOOL)storedVehicles:(id)vehicles containsMatchForDiscoveredVehicle:(id)vehicle;
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (id)_specifierForIndexPath:(id)path;
- (id)specifierForDiscoveredVehicle:(id)vehicle;
- (id)specifierForStoredVehicle:(id)vehicle;
- (id)specifiers;
- (id)statusForDiscoveredVehicleSpecifier:(id)specifier;
- (id)tableView:(id)view titleForDeleteConfirmationButtonForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)_setSpecifier:(id)specifier shouldShowActivity:(BOOL)activity;
- (void)_showActivityOnOtherCarsGroup:(BOOL)group;
- (void)_updateSpecifierForVehicle:(id)vehicle;
- (void)dealloc;
- (void)handleCarPlayAllowedDidChange;
- (void)handlePairedVehiclesChanged:(id)changed;
- (void)pairAccessorySpecifier:(id)specifier;
- (void)pairVehicle:(id)vehicle;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)unpairVehicle:(id)vehicle;
- (void)vehicleDiscoverer:(id)discoverer didDiscoverVehicle:(id)vehicle;
- (void)vehicleDiscoverer:(id)discoverer didRemoveVehicle:(id)vehicle;
- (void)vehicleDiscoverer:(id)discoverer didUpdateVehicle:(id)vehicle;
- (void)viewDidLoad;
@end

@implementation CRSettingsController

- (void)dealloc
{
  carplayPreferences = [(CRSettingsController *)self carplayPreferences];
  [carplayPreferences setPreferencesDelegate:0];

  v4 = +[NSDistributedNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = CRSettingsController;
  [(CRSettingsController *)&v5 dealloc];
}

- (void)pairVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  [vehicleCopy setPairingStatus:2];
  objc_initWeak(&location, self);
  vehicleManager = [(CRSettingsController *)self vehicleManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_7024;
  v7[3] = &unk_6E430;
  v6 = vehicleCopy;
  v8 = v6;
  [vehicleManager saveVehicle:v6 completion:v7];

  objc_destroyWeak(&location);
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = CRSettingsController;
  [(CRSettingsController *)&v13 viewDidLoad];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"CARPLAY_NAVIGATION_TITLE" value:&stru_6FD90 table:@"Localizable"];
  [(CRSettingsController *)self setTitle:v4];

  table = [(CRSettingsController *)self table];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [table registerClass:v6 forCellReuseIdentifier:v8];

  table2 = [(CRSettingsController *)self table];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  [table2 registerClass:v10 forHeaderFooterViewReuseIdentifier:v12];
}

- (void)unpairVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  objc_initWeak(&location, self);
  vehicleManager = [(CRSettingsController *)self vehicleManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_73C8;
  v7[3] = &unk_6E480;
  v6 = vehicleCopy;
  v8 = v6;
  [vehicleManager removeVehicle:v6 completion:v7];

  objc_destroyWeak(&location);
}

- (void)pairAccessorySpecifier:(id)specifier
{
  userInfo = [specifier userInfo];
  accessory = [userInfo accessory];
  if (accessory)
  {
    accessory2 = [userInfo accessory];
    v7 = [CRVehicle vehicleForMessagingVehicle:accessory2];

    if (v7)
    {
      [(CRSettingsController *)self pairVehicle:v7];
    }
  }

  else
  {
    vehicleDiscoverer = [(CRSettingsController *)self vehicleDiscoverer];
    v9 = [vehicleDiscoverer bluetoothPairVehicle:userInfo];

    if ((v9 & 1) == 0)
    {
      v10 = CarGeneralLogging();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_4A398(v10);
      }
    }

    [(CRSettingsController *)self _updateSpecifierForVehicle:userInfo];
  }
}

- (void)vehicleDiscoverer:(id)discoverer didDiscoverVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  v6 = CarGeneralLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = vehicleCopy;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "vehicle discovered %@", buf, 0xCu);
  }

  v7 = [(CRSettingsController *)self specifierForDiscoveredVehicle:vehicleCopy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  specifiers = [(CRSettingsController *)self specifiers];
  v9 = [specifiers countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(specifiers);
        }

        name = [*(*(&v16 + 1) + 8 * v12) name];
        name2 = [v7 name];
        v15 = [name isEqual:name2];

        if (v15)
        {

          goto LABEL_13;
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [specifiers countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  [(CRSettingsController *)self addSpecifier:v7 animated:1];
LABEL_13:
}

- (void)vehicleDiscoverer:(id)discoverer didUpdateVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  v6 = CarGeneralLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = vehicleCopy;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "vehicle updated %@", &v7, 0xCu);
  }

  [(CRSettingsController *)self _updateSpecifierForVehicle:vehicleCopy];
}

- (void)vehicleDiscoverer:(id)discoverer didRemoveVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  v6 = CarGeneralLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = vehicleCopy;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "vehicle removed %@", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  specifiers = [(CRSettingsController *)self specifiers];
  v8 = [specifiers countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(specifiers);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        userInfo = [v12 userInfo];
        v14 = [userInfo isEqual:vehicleCopy];

        if (v14)
        {
          [(CRSettingsController *)self removeSpecifier:v12 animated:1];
        }
      }

      v9 = [specifiers countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)handlePairedVehiclesChanged:(id)changed
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_7ABC;
  block[3] = &unk_6E2C0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

+ (BOOL)_showsCarPlayInternalSettingsUI
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"CARHideInternalCarPlaySettings", @"com.apple.carplay.internal", &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  return CRIsInternalInstall() & v2;
}

+ (id)specifierForStoredVehicle:(id)vehicle vehicleManager:(id)manager featureAvailability:(id)availability
{
  vehicleCopy = vehicle;
  availabilityCopy = availability;
  managerCopy = manager;
  displayName = [vehicleCopy displayName];
  v12 = [PSSpecifier preferenceSpecifierNamed:displayName target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

  identifier = [vehicleCopy identifier];
  uUIDString = [identifier UUIDString];
  v15 = [NSString stringWithFormat:@"stored-%@", uUIDString];
  [v12 setIdentifier:v15];

  v16 = [[CRVehicleSettingManager alloc] initWithPairedVehicleManager:managerCopy featureAvailability:availabilityCopy vehicle:vehicleCopy];
  [v12 setUserInfo:v16];
  [v12 setProperty:&__kCFBooleanTrue forKey:@"isStoredVehicle"];
  displayName2 = [vehicleCopy displayName];
  [v12 setProperty:displayName2 forKey:PSTitleKey];

  if (+[CRSettingsController _showsCarPlayInternalSettingsUI])
  {
    if (qword_7C548[0] != -1)
    {
      sub_4A3DC();
    }

    v18 = +[NSMutableString string];
    lastConnectedDate = [vehicleCopy lastConnectedDate];

    if (lastConnectedDate)
    {
      v20 = qword_7C540;
      lastConnectedDate2 = [vehicleCopy lastConnectedDate];
      v22 = [v20 stringFromDate:lastConnectedDate2];
      [v18 appendString:v22];
    }

    if ([v18 length])
    {
      vehicleModelName = [vehicleCopy vehicleModelName];
      v24 = [vehicleModelName length];

      if (v24)
      {
        [v18 appendString:@" • "];
        vehicleModelName2 = [vehicleCopy vehicleModelName];
        [v18 appendString:vehicleModelName2];
      }
    }

    if ([v18 length])
    {
      [v12 setProperty:objc_opt_class() forKey:PSCellClassKey];
      v26 = [@"[Internal] " stringByAppendingString:v18];
      [v12 setProperty:v26 forKey:PSTableCellSubtitleTextKey];
    }
  }

  return v12;
}

- (id)specifierForStoredVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  vehicleManager = [(CRSettingsController *)self vehicleManager];
  featureAvailability = [(CRSettingsController *)self featureAvailability];
  v7 = [CRSettingsController specifierForStoredVehicle:vehicleCopy vehicleManager:vehicleManager featureAvailability:featureAvailability];

  return v7;
}

- (id)specifierForDiscoveredVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  displayName = [vehicleCopy displayName];
  v6 = [PSSpecifier preferenceSpecifierNamed:displayName target:self set:0 get:"statusForDiscoveredVehicleSpecifier:" detail:0 cell:4 edit:0];

  identifier = [vehicleCopy identifier];
  v8 = [NSString stringWithFormat:@"connected-%@", identifier];
  [v6 setIdentifier:v8];

  [v6 setUserInfo:vehicleCopy];
  [v6 setButtonAction:"pairAccessorySpecifier:"];

  return v6;
}

- (id)statusForDiscoveredVehicleSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if (CRSettingsDebugUIEnabled())
  {
    userInfo = [specifierCopy userInfo];
    debugConnectionStatusDescription = [userInfo debugConnectionStatusDescription];
  }

  else
  {
    debugConnectionStatusDescription = 0;
  }

  return debugConnectionStatusDescription;
}

- (BOOL)storedVehicles:(id)vehicles containsMatchForDiscoveredVehicle:(id)vehicle
{
  vehiclesCopy = vehicles;
  vehicleCopy = vehicle;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = vehiclesCopy;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = *v20;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        certificateSerialNumber = [v11 certificateSerialNumber];
        accessory = [vehicleCopy accessory];
        certificateSerialNumber2 = [accessory certificateSerialNumber];

        if (certificateSerialNumber && [certificateSerialNumber isEqualToData:certificateSerialNumber2])
        {

LABEL_16:
          LOBYTE(v8) = 1;
          goto LABEL_17;
        }

        bluetoothAddress = [v11 bluetoothAddress];
        if (bluetoothAddress)
        {
          bluetoothAddress2 = [vehicleCopy bluetoothAddress];
          v17 = [bluetoothAddress isEqualToString:bluetoothAddress2];

          if (v17)
          {
            goto LABEL_16;
          }
        }

        else
        {
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  return v8;
}

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v46 = OBJC_IVAR___PSListController__specifiers;
    v48 = +[NSMutableArray array];
    carplayPreferences = [(CRSettingsController *)self carplayPreferences];

    if (!carplayPreferences)
    {
      v5 = objc_alloc_init(CRCarPlayPreferences);
      [(CRSettingsController *)self setCarplayPreferences:v5];
      [v5 setPreferencesDelegate:self];
      [(CRSettingsController *)self handleCarPlayAllowedDidChange];
    }

    featureAvailability = [(CRSettingsController *)self featureAvailability];

    if (!featureAvailability)
    {
      v7 = objc_alloc_init(CRFeatureAvailability);
      [(CRSettingsController *)self setFeatureAvailability:v7];
    }

    carplayPreferences2 = [(CRSettingsController *)self carplayPreferences];
    isWirelessCarPlayEnabled = [carplayPreferences2 isWirelessCarPlayEnabled];

    v45 = isWirelessCarPlayEnabled;
    if (isWirelessCarPlayEnabled)
    {
      radiosPowerPrompt = [(CRSettingsController *)self radiosPowerPrompt];

      if (!radiosPowerPrompt)
      {
        v11 = objc_alloc_init(CARRadiosAvailabilityPrompt);
        [(CRSettingsController *)self setRadiosPowerPrompt:v11];
      }

      v12 = [PSSpecifier groupSpecifierWithID:@"kHeaderGroupId"];
      [v48 addObject:v12];

      v13 = [PSSpecifier preferenceSpecifierNamed:&stru_6FD90 target:self set:0 get:0 detail:0 cell:3 edit:0];
      [v13 setProperty:objc_opt_class() forKey:PSCellClassKey];
      [v48 addObject:v13];
    }

    v14 = +[NSMutableArray array];
    v49 = +[NSMutableArray array];
    vehicleDiscoverer = [(CRSettingsController *)self vehicleDiscoverer];

    if (!vehicleDiscoverer)
    {
      v16 = objc_alloc_init(CARVehicleDiscoverer);
      [(CRSettingsController *)self setVehicleDiscoverer:v16];
      [(CARVehicleDiscoverer *)v16 setDiscoveryDelegate:self];
    }

    vehicleManager = [(CRSettingsController *)self vehicleManager];

    if (!vehicleManager)
    {
      v18 = objc_alloc_init(CRPairedVehicleManager);
      [(CRSettingsController *)self setVehicleManager:v18];
      v19 = +[NSDistributedNotificationCenter defaultCenter];
      [v19 addObserver:self selector:"handlePairedVehiclesChanged:" name:CRPairedVehiclesDidChangeNotification object:0];

      [(CRSettingsController *)self setSuppressNextReloadForPairedVehicleChanged:0];
    }

    v20 = dispatch_semaphore_create(0);
    v61 = 0;
    v62 = &v61;
    v63 = 0x3032000000;
    v64 = sub_8A70;
    v65 = sub_8A80;
    v66 = 0;
    vehicleManager2 = [(CRSettingsController *)self vehicleManager];
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_8A88;
    v58[3] = &unk_6E4C8;
    v60 = &v61;
    dsema = v20;
    v59 = dsema;
    [vehicleManager2 fetchAllVehiclesWithCompletion:v58];

    v22 = dispatch_time(0, 5000000000);
    dispatch_semaphore_wait(dsema, v22);
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v23 = v62[5];
    v24 = [v23 countByEnumeratingWithState:&v54 objects:v70 count:16];
    if (v24)
    {
      v25 = *v55;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v55 != v25)
          {
            objc_enumerationMutation(v23);
          }

          v27 = [(CRSettingsController *)self specifierForStoredVehicle:*(*(&v54 + 1) + 8 * i)];
          [v14 addObject:v27];
        }

        v24 = [v23 countByEnumeratingWithState:&v54 objects:v70 count:16];
      }

      while (v24);
    }

    [(CRSettingsController *)self setStoredCarsSpecifiers:v14];
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    vehicleDiscoverer2 = [(CRSettingsController *)self vehicleDiscoverer];
    discoveredVehicles = [vehicleDiscoverer2 discoveredVehicles];

    v30 = [discoveredVehicles countByEnumeratingWithState:&v50 objects:v69 count:16];
    if (v30)
    {
      v31 = *v51;
      do
      {
        for (j = 0; j != v30; j = j + 1)
        {
          if (*v51 != v31)
          {
            objc_enumerationMutation(discoveredVehicles);
          }

          v33 = *(*(&v50 + 1) + 8 * j);
          v34 = CarGeneralLogging();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v68 = v33;
            _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "Found vehicle : %@", buf, 0xCu);
          }

          if (![(CRSettingsController *)self storedVehicles:v62[5] containsMatchForDiscoveredVehicle:v33])
          {
            v35 = [(CRSettingsController *)self specifierForDiscoveredVehicle:v33];
            [v49 addObject:v35];
          }
        }

        v30 = [discoveredVehicles countByEnumeratingWithState:&v50 objects:v69 count:16];
      }

      while (v30);
    }

    v36 = [v14 count];
    if (v36)
    {
      v37 = [NSBundle bundleForClass:objc_opt_class()];
      if (v36 == &dword_0 + 1)
      {
        [v37 localizedStringForKey:@"MY_CARS_SINGULAR" value:&stru_6FD90 table:@"Localizable"];
      }

      else
      {
        [v37 localizedStringForKey:@"MY_CARS_PLURAL" value:&stru_6FD90 table:@"Localizable"];
      }
      v38 = ;
      v39 = [PSSpecifier groupSpecifierWithID:@"MY_CARS" name:v38];
      [v48 addObject:v39];
    }

    v40 = [v14 sortedArrayUsingComparator:&stru_6E508];
    [v48 addObjectsFromArray:v40];
    if ((v45 & 1) != 0 || [v49 count])
    {
      v41 = [PSSpecifier groupSpecifierWithID:@"OTHER_CARS"];
      [v48 addObject:v41];
      [v48 addObjectsFromArray:v49];
    }

    v42 = *&self->PSListController_opaque[v46];
    *&self->PSListController_opaque[v46] = v48;
    v43 = v48;

    _Block_object_dispose(&v61, 8);
    v3 = *&self->PSListController_opaque[v46];
  }

  return v3;
}

- (void)_showActivityOnOtherCarsGroup:(BOOL)group
{
  if (self->_otherCarsHeaderIsSpinning != group)
  {
    self->_otherCarsHeaderIsSpinning = group;
    [(CRSettingsController *)self reloadSpecifierID:@"OTHER_CARS" animated:1];
  }
}

- (id)_specifierForIndexPath:(id)path
{
  v4 = [(CRSettingsController *)self indexForIndexPath:path];
  v5 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];

  return [v5 objectAtIndex:v4];
}

- (void)_updateSpecifierForVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  specifiers = [(CRSettingsController *)self specifiers];
  v6 = [specifiers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(specifiers);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        userInfo = [v10 userInfo];
        v12 = [userInfo isEqual:vehicleCopy];

        if (v12)
        {
          displayName = [vehicleCopy displayName];
          [v10 setName:displayName];

          -[CRSettingsController _setSpecifier:shouldShowActivity:](self, "_setSpecifier:shouldShowActivity:", v10, [vehicleCopy isConnecting]);
          [(CRSettingsController *)self reloadSpecifier:v10];
        }
      }

      v7 = [specifiers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)_setSpecifier:(id)specifier shouldShowActivity:(BOOL)activity
{
  activityCopy = activity;
  v5 = [specifier propertyForKey:PSTableCellKey];
  if (v5)
  {
    v8 = v5;
    accessoryView = [v5 accessoryView];

    if (activityCopy)
    {
      v5 = v8;
      if (accessoryView)
      {
        goto LABEL_8;
      }

      v7 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
      [v7 startAnimating];
      [v8 setAccessoryView:v7];
    }

    else
    {
      v5 = v8;
      if (!accessoryView)
      {
        goto LABEL_8;
      }

      [v8 setAccessoryView:0];
    }

    v5 = v8;
  }

LABEL_8:
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  v4 = [(CRSettingsController *)self _specifierForIndexPath:path];
  v5 = [v4 propertyForKey:@"isStoredVehicle"];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (id)tableView:(id)view titleForDeleteConfirmationButtonForRowAtIndexPath:(id)path
{
  v4 = [(CRSettingsController *)self _specifierForIndexPath:path];
  v5 = [v4 propertyForKey:@"isStoredVehicle"];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"FORGET" value:&stru_6FD90 table:@"Localizable"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  if (style == 1)
  {
    block[9] = v5;
    block[10] = v6;
    v8 = [(CRSettingsController *)self _specifierForIndexPath:path];
    userInfo = [v8 userInfo];
    vehicle = [userInfo vehicle];

    [(CRSettingsController *)self setSuppressNextReloadForPairedVehicleChanged:1];
    [(CRSettingsController *)self unpairVehicle:vehicle];
    [(CRSettingsController *)self removeSpecifier:v8 animated:1];
    storedCarsSpecifiers = [(CRSettingsController *)self storedCarsSpecifiers];
    [storedCarsSpecifiers removeObject:v8];

    v12 = [(CRSettingsController *)self specifierForID:@"OTHER_CARS"];
    [(CRSettingsController *)self _updateOtherCarsGroupNameForSpecifier:v12];

    v13 = dispatch_time(0, 300000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_92BC;
    block[3] = &unk_6E2C0;
    block[4] = self;
    dispatch_after(v13, &_dispatch_main_q, block);
  }
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(CRSettingsController *)self specifierForID:@"OTHER_CARS"];
  if (v7 && (-[CRSettingsController indexPathForSpecifier:](self, "indexPathForSpecifier:", v7), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 section], v8, v9 == section))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:v11];

    [v12 setIsSpinning:self->_otherCarsHeaderIsSpinning];
    storedCarsSpecifiers = [(CRSettingsController *)self storedCarsSpecifiers];
    v14 = [storedCarsSpecifiers count];
    v15 = [NSBundle bundleForClass:objc_opt_class()];
    v16 = v15;
    if (v14)
    {
      v17 = @"OTHER_CARS";
    }

    else
    {
      v17 = @"AVAILABLE_CARS";
    }

    v18 = [v15 localizedStringForKey:v17 value:&stru_6FD90 table:@"Localizable"];
    [v12 setTitle:v18];
  }

  else
  {
    v20.receiver = self;
    v20.super_class = CRSettingsController;
    v12 = [(CRSettingsController *)&v20 tableView:viewCopy viewForHeaderInSection:section];
  }

  return v12;
}

- (void)handleCarPlayAllowedDidChange
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_94F0;
  block[3] = &unk_6E2C0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

@end