@interface COSPairedDeviceListDataSource
- (BOOL)_deviceRequiresUpdate:(id)update;
- (COSPairedDeviceListDataSource)init;
- (id)_fakeList;
- (id)_fakeWatchName:(unint64_t)name;
- (id)newDeviceSpecifierForNRDevice:(id)device enableCell:(BOOL)cell deviceState:(id)state;
- (void)_startSpinnerInSpecifier:(id)specifier;
- (void)_stopSpinnerInSpecifier:(id)specifier;
- (void)_updateSelectedWatchInGroupSpecifier:(id)specifier deviceSpecifiers:(id)specifiers;
- (void)dealloc;
- (void)device:(id)device propertyDidChange:(id)change fromValue:(id)value;
- (void)deviceBecameActive;
- (void)loadSpecifiers;
- (void)presentInternalFlow;
- (void)presentNewPairingFlowIfPossible;
- (void)startMigration;
- (void)updateSelectedWatch;
@end

@implementation COSPairedDeviceListDataSource

- (COSPairedDeviceListDataSource)init
{
  v10.receiver = self;
  v10.super_class = COSPairedDeviceListDataSource;
  v2 = [(COSPairedDeviceListDataSource *)&v10 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"_reloadForDeviceStateChange:" name:NRPairedDeviceRegistryDeviceDidBecomeActive object:0];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"_reloadForDeviceStateChange:" name:NRPairedDeviceRegistryDeviceDidBecomeInactive object:0];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v2 selector:"_reloadForDeviceStateChange:" name:NRPairedDeviceRegistryDeviceDidPairNotification object:0];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v2 selector:"_reloadForDeviceStateChange:" name:NRPairedDeviceRegistryDeviceDidUnpairNotification object:0];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v2 selector:"_reloadForDeviceStateChange:" name:NRPairedDeviceRegistryDeviceIsSetupNotification object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_1000D62B4, @"com.apple.NanoRegistry.MagicSwitchSettingsChanged", 0, 1024);
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.NanoRegistry.MagicSwitchSettingsChanged", 0);
  v5.receiver = self;
  v5.super_class = COSPairedDeviceListDataSource;
  [(COSPairedDeviceListDataSource *)&v5 dealloc];
}

- (id)_fakeWatchName:(unint64_t)name
{
  if ((name & 0xFFFFFFFFFFFFFFFELL) == 8)
  {
    v3 = @"Apple Watch Edition";
  }

  else
  {
    v3 = @"Apple Watch";
  }

  v4 = [NSNumber numberWithUnsignedInteger:?];
  v5 = [NSString stringWithFormat:@"Some Userʼs %@ %@", v3, v4];

  return v5;
}

- (id)_fakeList
{
  v2 = objc_opt_new();
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"fakePairedWatches", @"com.apple.Bridge", 0);
  v4 = 0;
  v5 = 0;
  if (AppIntegerValue <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = AppIntegerValue;
  }

  v24 = NRDevicePropertyIsActive;
  v23 = NRDevicePropertyProductType;
  v22 = NRDevicePropertyDmin;
  v21 = NRDevicePropertyName;
  v7 = NRDevicePropertyIsPaired;
  v8 = NRDevicePropertyPairedDate;
  if (AppIntegerValue)
  {
    v9 = v6;
  }

  else
  {
    v9 = 4;
  }

  do
  {
    v10 = [NRDevice alloc];
    v11 = dispatch_get_global_queue(-2, 0);
    v12 = [v10 initWithQueue:v11];

    v13 = [NSNumber numberWithInt:v5 == 0];
    [v12 setValue:v13 forProperty:@"COSIsActiveHack"];

    v14 = [NSNumber numberWithInt:v5 == 0];
    [v12 setValue:v14 forProperty:v24];

    if (v5)
    {
      v15 = @"Watch1,2";
    }

    else
    {
      v15 = @"Watch1,1";
    }

    [v12 setValue:v15 forProperty:{v23, v21}];
    v26 = &off_100281D98;
    v16 = [NSNumber numberWithUnsignedInteger:v5];
    v27 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    [v12 setValue:v17 forProperty:v22];

    v18 = [(COSPairedDeviceListDataSource *)self _fakeWatchName:v5];
    [v12 setValue:v18 forProperty:v21];

    [v12 setValue:&__kCFBooleanTrue forProperty:v7];
    v19 = [NSDate dateWithTimeIntervalSinceReferenceDate:v4];
    [v12 setValue:v19 forProperty:v8];

    [v2 addObject:v12];
    ++v5;
    v4 += 1000;
  }

  while (v9 != v5);

  return v2;
}

- (id)newDeviceSpecifierForNRDevice:(id)device enableCell:(BOOL)cell deviceState:(id)state
{
  cellCopy = cell;
  v8 = NRDevicePropertyName;
  stateCopy = state;
  deviceCopy = device;
  v11 = [deviceCopy valueForProperty:v8];
  v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:objc_opt_class() cell:-1 edit:0];

  [v12 setProperty:deviceCopy forKey:@"COSAssociatedDevice"];
  [v12 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v12 setProperty:self->_migrationManager forKey:@"COSMigrationManager"];
  v13 = objc_retainBlock(self->_displaySoftwareUpdate);
  [v12 setProperty:v13 forKey:@"COSDisplaySoftwareUpdate"];

  integerValue = [stateCopy integerValue];
  v15 = [deviceCopy valueForProperty:NRDevicePropertyIsAltAccount];

  bOOLValue = [v15 BOOLValue];
  if (integerValue == 6)
  {
    v17 = 1;
  }

  else
  {
    v17 = bOOLValue | cellCopy;
  }

  v18 = [NSNumber numberWithBool:v17];
  [v12 setProperty:v18 forKey:@"COSPairedDeviceListTableCellEnabled"];

  v19 = [NSNumber numberWithDouble:UITableViewAutomaticDimension];
  [v12 setProperty:v19 forKey:PSTableCellHeightKey];

  [v12 setProperty:&off_100281DB0 forKey:PSAccessoryKey];
  [v12 setProperty:objc_opt_class() forKey:@"COSCellDetailButtonControllerClass"];
  [v12 setProperty:stateCopy forKey:@"COSDeviceState"];

  return v12;
}

- (void)loadSpecifiers
{
  specifiers = [(COSPairedDeviceListDataSource *)self specifiers];
  selfCopy = self;
  if ([UIApp launchedToTest])
  {
    _fakeList = [(COSPairedDeviceListDataSource *)self _fakeList];
    v5 = 0;
  }

  else
  {
    _fakeList = sub_100009350();
    v5 = sub_1000093AC();
  }

  v6 = +[NSMutableArray array];
  v7 = [_fakeList sortedArrayUsingComparator:&stru_10026B5E0];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"STANDARD_PAIRED_GROUP_TITLE" value:&stru_10026E598 table:@"Localizable-tinker"];
  v10 = [PSSpecifier groupSpecifierWithID:@"DeviceListGroup" name:v9];

  v104 = v10;
  [v10 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
  v11 = sub_10002E4B8();
  v12 = [v7 count];
  v13 = [v5 count];
  v118 = 0u;
  v119 = 0u;
  if (v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = v12 >= 2;
  }

  v15 = !v14;
  v120 = 0uLL;
  v121 = 0uLL;
  v16 = v7;
  v17 = [v16 countByEnumeratingWithState:&v118 objects:v127 count:16];
  obj = v16;
  v107 = v6;
  v102 = v5;
  v103 = specifiers;
  if (!v17)
  {
LABEL_37:

    v34 = selfCopy;
    goto LABEL_38;
  }

  v18 = v17;
  v19 = 0;
  v20 = *v119;
  v105 = NRDevicePropertyMaxPairingCompatibilityVersion;
  if (v13)
  {
    v21 = 1;
  }

  else
  {
    v21 = !v11;
  }

  v22 = NRDevicePropertyIsAltAccount;
  do
  {
    for (i = 0; i != v18; i = i + 1)
    {
      if (*v119 != v20)
      {
        objc_enumerationMutation(obj);
      }

      v24 = *(*(&v118 + 1) + 8 * i);
      if (v15)
      {
        v25 = pbb_bridge_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Single watch", buf, 2u);
        }

        if (![(COSPairedDeviceListDataSource *)selfCopy _deviceRequiresUpdate:v24])
        {
          v28 = 3;
          goto LABEL_32;
        }

        v126 = v105;
        v26 = [NSArray arrayWithObjects:&v126 count:1];
        [v24 addPropertyObserver:selfCopy forPropertyChanges:v26];
      }

      else
      {
        if (![(COSPairedDeviceListDataSource *)selfCopy _deviceRequiresUpdate:*(*(&v118 + 1) + 8 * i)])
        {
          v26 = pbb_bridge_log();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Not single watch - Normal", buf, 2u);
          }

          v28 = 1;
          goto LABEL_31;
        }

        v125 = v105;
        v27 = [NSArray arrayWithObjects:&v125 count:1];
        [v24 addPropertyObserver:selfCopy forPropertyChanges:v27];

        v26 = pbb_bridge_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Not single watch - needs update", buf, 2u);
        }
      }

      v28 = 6;
LABEL_31:

LABEL_32:
      v29 = [NSNumber numberWithInteger:v28];
      v30 = [(COSPairedDeviceListDataSource *)selfCopy newDeviceSpecifierForNRDevice:v24 enableCell:v21 deviceState:v29];

      v31 = [v24 valueForProperty:v22];
      bOOLValue = [v31 BOOLValue];

      v19 += bOOLValue ^ 1;
      [v107 addObject:v30];
    }

    v18 = [obj countByEnumeratingWithState:&v118 objects:v127 count:16];
  }

  while (v18);

  v33 = v19 < 2;
  v5 = v102;
  specifiers = v103;
  v6 = v107;
  v34 = selfCopy;
  if (!v33 && ![(COSPairedDeviceListDataSource *)selfCopy tinkerOnly])
  {
    v16 = +[PSSpecifier emptyGroupSpecifier];
    v35 = +[NSBundle mainBundle];
    v36 = [v35 localizedStringForKey:@"MAGIC_SWITCH_FOOTER" value:&stru_10026E598 table:@"Pairing"];
    [v16 setProperty:v36 forKey:PSFooterTextGroupKey];

    [v103 addObject:v16];
    v37 = +[NSBundle mainBundle];
    v38 = [v37 localizedStringForKey:@"MAGIC_SWITCH" value:&stru_10026E598 table:@"Pairing"];
    v39 = [PSSpecifier preferenceSpecifierNamed:v38 target:selfCopy set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];

    [v39 setIdentifier:@"MagicSwitchSpecifier"];
    [v39 setProperty:@"com.apple.NanoRegistry" forKey:PSDefaultsKey];
    [v39 setProperty:@"EnableMagicSwitch" forKey:PSKeyNameKey];
    v40 = [NSNumber numberWithBool:1];
    [v39 setProperty:v40 forKey:PSDefaultValueKey];

    [v39 setProperty:@"com.apple.NanoRegistry.MagicSwitchSettingsChanged" forKey:PSValueChangedNotificationKey];
    [v103 addObject:v39];

    goto LABEL_37;
  }

LABEL_38:
  if ([v6 count] && (objc_msgSend(v34, "tinkerOnly") & 1) == 0)
  {
    [specifiers addObject:v104];
    [specifiers addObjectsFromArray:v6];
  }

  [v34 setPairedDevicesGroupSpecifier:v104];
  [v34 setPairedDeviceSpecifiers:v6];
  migratableDevices = [v34[7] migratableDevices];
  if ([migratableDevices count] && (objc_msgSend(v34, "tinkerOnly") & 1) == 0)
  {
    v41 = +[NSMutableArray array];
    v42 = +[PSSpecifier emptyGroupSpecifier];
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v43 = migratableDevices;
    v44 = [v43 countByEnumeratingWithState:&v113 objects:v124 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v114;
      do
      {
        for (j = 0; j != v45; j = j + 1)
        {
          if (*v114 != v46)
          {
            objc_enumerationMutation(v43);
          }

          v48 = *(*(&v113 + 1) + 8 * j);
          v49 = [(COSMigrationManager *)selfCopy->_migrationManager currentState]!= 0;
          v50 = [NSNumber numberWithInteger:4];
          v51 = [(COSPairedDeviceListDataSource *)selfCopy newDeviceSpecifierForNRDevice:v48 enableCell:v49 deviceState:v50];

          [v41 addObject:v51];
        }

        v45 = [v43 countByEnumeratingWithState:&v113 objects:v124 count:16];
      }

      while (v45);
    }

    specifiers = v103;
    [v103 addObject:v42];
    [v103 addObjectsFromArray:v41];

    v5 = v102;
    v34 = selfCopy;
  }

  if ([v5 count])
  {
    if (![obj count])
    {
      v52 = [PSSpecifier groupSpecifierWithID:@"ONLY_TINKER_INFO"];
      v53 = +[NSBundle mainBundle];
      v54 = [v53 localizedStringForKey:@"ONLY_TINKER_FOOTER" value:&stru_10026E598 table:@"Localizable-tinker"];
      [v52 setProperty:v54 forKey:PSFooterTextGroupKey];

      [specifiers addObject:v52];
    }

    v55 = +[NSMutableArray array];
    v56 = +[NSBundle mainBundle];
    v57 = [v56 localizedStringForKey:@"SATELLITE_PAIRED_GROUP_TITLE" value:&stru_10026E598 table:@"Localizable-tinker"];
    v100 = [PSSpecifier groupSpecifierWithID:@"SatellitePairedDeviceListGroup" name:v57];

    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v58 = v5;
    v59 = [v58 countByEnumeratingWithState:&v109 objects:v123 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v110;
      v62 = NRDevicePropertyIsArchived;
      v63 = NRDevicePropertyMaxPairingCompatibilityVersion;
      do
      {
        for (k = 0; k != v60; k = k + 1)
        {
          if (*v110 != v61)
          {
            objc_enumerationMutation(v58);
          }

          v65 = *(*(&v109 + 1) + 8 * k);
          v66 = [v65 valueForProperty:v62];
          bOOLValue2 = [v66 BOOLValue];

          if (bOOLValue2)
          {
            v68 = 5;
          }

          else if ([(COSPairedDeviceListDataSource *)selfCopy _deviceRequiresUpdate:v65])
          {
            v122 = v63;
            v69 = [NSArray arrayWithObjects:&v122 count:1];
            [v65 addPropertyObserver:selfCopy forPropertyChanges:v69];

            v68 = 6;
          }

          else
          {
            v68 = 1;
          }

          v70 = [NSNumber numberWithInteger:v68];
          v71 = [(COSPairedDeviceListDataSource *)selfCopy newDeviceSpecifierForNRDevice:v65 enableCell:0 deviceState:v70];

          [v55 addObject:v71];
        }

        v60 = [v58 countByEnumeratingWithState:&v109 objects:v123 count:16];
      }

      while (v60);
    }

    specifiers = v103;
    [v103 addObject:v100];
    [v103 addObjectsFromArray:v55];
    v34 = selfCopy;
    [(COSPairedDeviceListDataSource *)selfCopy setTinkerDevicesGroupSpecifier:v100];
    [(COSPairedDeviceListDataSource *)selfCopy setTinkerDeviceSpecifiers:v55];

    v5 = v102;
  }

  else
  {
    [v34 setTinkerDevicesGroupSpecifier:0];
    [v34 setTinkerDeviceSpecifiers:0];
  }

  [v34 updateSelectedWatch];
  migratableDevices2 = [v34[7] migratableDevices];
  v73 = [migratableDevices2 count];

  if (v73)
  {
    v74 = +[PSSpecifier emptyGroupSpecifier];
    v75 = +[NSBundle mainBundle];
    v76 = [v75 localizedStringForKey:@"FINISH_PAIRING_FOOTER" value:&stru_10026E598 table:@"Localizable-tinker"];
    v77 = PSFooterTextGroupKey;
    [v74 setProperty:v76 forKey:PSFooterTextGroupKey];

    [specifiers addObject:v74];
    v78 = +[NSBundle mainBundle];
    v79 = [v78 localizedStringForKey:@"FINISH_PAIRING" value:&stru_10026E598 table:@"Pairing"];
    v80 = [PSSpecifier preferenceSpecifierNamed:v79 target:selfCopy set:0 get:0 detail:0 cell:13 edit:0];
    finishPairing = selfCopy->_finishPairing;
    selfCopy->_finishPairing = v80;

    v34 = selfCopy;
    [(PSSpecifier *)selfCopy->_finishPairing setButtonAction:"startMigration"];
    [(PSSpecifier *)selfCopy->_finishPairing setIdentifier:@"FinishPairing"];
    v82 = &__kCFBooleanTrue;
    if ([(COSMigrationManager *)selfCopy->_migrationManager currentState]&& [(COSMigrationManager *)selfCopy->_migrationManager currentState]!= 4)
    {
      v82 = &__kCFBooleanFalse;
    }

    [(PSSpecifier *)selfCopy->_finishPairing setProperty:v82 forKey:PSEnabledKey];
    [specifiers addObject:selfCopy->_finishPairing];
  }

  else
  {
    v77 = PSFooterTextGroupKey;
  }

  v83 = +[PSSpecifier emptyGroupSpecifier];
  v84 = +[NSBundle mainBundle];
  v85 = [v84 localizedStringForKey:@"PAIR_NEW_WATCH_FOOTER" value:&stru_10026E598 table:@"Localizable-tinker"];
  [v83 setProperty:v85 forKey:v77];

  [specifiers addObject:v83];
  v86 = sub_10002DF9C();
  v87 = @"PAIR_A_NEW_APPLE_WATCH";
  if (v86)
  {
    v87 = @"PAIR_A_NEW_APPLE_WATCH_GT";
  }

  v88 = v87;
  v89 = +[NSBundle mainBundle];
  v90 = [v89 localizedStringForKey:v88 value:&stru_10026E598 table:@"Pairing"];

  v91 = [PSSpecifier preferenceSpecifierNamed:v90 target:v34 set:0 get:0 detail:objc_opt_class() cell:13 edit:0];
  v92 = v34[8];
  v34[8] = v91;

  [v34[8] setButtonAction:"presentNewPairingFlowIfPossible"];
  [v34[8] setIdentifier:@"PairNewWatchSpecifier"];
  if ([v34[7] currentState])
  {
    currentState = [v34[7] currentState];
    v94 = PSEnabledKey;
    v95 = v107;
    if (currentState != 4)
    {
      v96 = v34[8];
      v97 = &__kCFBooleanFalse;
      goto LABEL_81;
    }
  }

  else
  {
    v94 = PSEnabledKey;
    v95 = v107;
  }

  v96 = v34[8];
  v97 = &__kCFBooleanTrue;
LABEL_81:
  [v96 setProperty:v97 forKey:v94];
  [specifiers addObject:v34[8]];
  if (sub_10002D04C())
  {
    v98 = +[PSSpecifier emptyGroupSpecifier];
    [specifiers addObject:v98];
    v99 = [PSSpecifier preferenceSpecifierNamed:@"Automation" target:v34 set:0 get:0 detail:0 cell:13 edit:0];
    [v99 setButtonAction:"presentInternalFlow"];
    [specifiers addObject:v99];
  }
}

- (BOOL)_deviceRequiresUpdate:(id)update
{
  updateCopy = update;
  v4 = updateCopy;
  if (updateCopy)
  {
    v5 = [updateCopy valueForProperty:_NRDevicePropertyCompatibilityState];
    intValue = [v5 intValue];

    if (intValue == 2)
    {
      v7 = pbb_setupflow_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        pairingID = [v4 pairingID];
        v14 = 138412290;
        v15 = pairingID;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Device: %@ has compatibility state NRCompatibilityStateUpdate, requires update", &v14, 0xCu);
      }

      v9 = 1;
    }

    else
    {
      v10 = [v4 valueForProperty:NRDevicePropertyMaxPairingCompatibilityVersion];
      [v10 integerValue];

      v7 = [v4 valueForProperty:NRDevicePropertyChipID];
      v11 = _BPSIsPairingCompatible();
      if ((v11 & 1) == 0)
      {
        v12 = pbb_setupflow_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_100189CCC(v4, v12);
        }
      }

      v9 = v11 ^ 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)updateSelectedWatch
{
  pairedDevicesGroupSpecifier = [(COSPairedDeviceListDataSource *)self pairedDevicesGroupSpecifier];

  if (pairedDevicesGroupSpecifier)
  {
    pairedDevicesGroupSpecifier2 = [(COSPairedDeviceListDataSource *)self pairedDevicesGroupSpecifier];
    pairedDeviceSpecifiers = [(COSPairedDeviceListDataSource *)self pairedDeviceSpecifiers];
    [(COSPairedDeviceListDataSource *)self _updateSelectedWatchInGroupSpecifier:pairedDevicesGroupSpecifier2 deviceSpecifiers:pairedDeviceSpecifiers];
  }

  tinkerDevicesGroupSpecifier = [(COSPairedDeviceListDataSource *)self tinkerDevicesGroupSpecifier];

  if (tinkerDevicesGroupSpecifier)
  {
    tinkerDevicesGroupSpecifier2 = [(COSPairedDeviceListDataSource *)self tinkerDevicesGroupSpecifier];
    tinkerDeviceSpecifiers = [(COSPairedDeviceListDataSource *)self tinkerDeviceSpecifiers];
    [(COSPairedDeviceListDataSource *)self _updateSelectedWatchInGroupSpecifier:tinkerDevicesGroupSpecifier2 deviceSpecifiers:tinkerDeviceSpecifiers];
  }
}

- (void)_updateSelectedWatchInGroupSpecifier:(id)specifier deviceSpecifiers:(id)specifiers
{
  specifierCopy = specifier;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = specifiers;
  v6 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v27 = 0;
  v8 = *v31;
  v9 = NRDevicePropertyIsActive;
  v25 = PSTableCellKey;
  v26 = PSRadioGroupCheckedSpecifierKey;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v31 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v30 + 1) + 8 * i);
      v12 = [v11 propertyForKey:@"COSAssociatedDevice"];
      loadingDevice = [(COSPairedDeviceListDataSource *)self loadingDevice];
      v14 = [loadingDevice isEqual:v12];

      if (v14)
      {
        v15 = @"LOADING_WATCH_ITEM";
      }

      else
      {
        v16 = [v12 valueForProperty:v9];
        bOOLValue = [v16 BOOLValue];

        v15 = @"INACTIVE_WATCH_ITEM";
        if (bOOLValue)
        {
          [specifierCopy setProperty:v11 forKey:v26];
          v18 = [v11 propertyForKey:v25];
          v27 = 1;
          [v18 setChecked:1];

          v15 = @"ACTIVE_WATCH_ITEM";
        }
      }

      [v11 setIdentifier:v15];
    }

    v7 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  }

  while (v7);
  if ((v27 & 1) == 0)
  {
LABEL_13:
    v19 = pbb_bridge_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [specifierCopy identifier];
      *buf = 138543362;
      v35 = identifier;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "No active watch found in group with ID: %{public}@. Setting no selected watch.", buf, 0xCu);
    }

    v21 = PSRadioGroupCheckedSpecifierKey;
    v22 = [specifierCopy propertyForKey:PSRadioGroupCheckedSpecifierKey];
    v23 = v22;
    if (v22)
    {
      v24 = [v22 propertyForKey:PSTableCellKey];
      [v24 setChecked:0];
    }

    [specifierCopy setProperty:0 forKey:v21];
  }
}

- (void)deviceBecameActive
{
  loadingDevice = self->_loadingDevice;
  if (loadingDevice)
  {
    v4 = [(NRDevice *)loadingDevice valueForProperty:NRDevicePropertyIsAltAccount];
    bOOLValue = [v4 BOOLValue];

    if (bOOLValue)
    {
      return;
    }

    v6 = self->_loadingDevice;
  }

  else
  {
    v6 = 0;
  }

  self->_loadingDevice = 0;

  [(COSPairedDeviceListDataSource *)self updateSelectedWatch];
}

- (void)_startSpinnerInSpecifier:(id)specifier
{
  if (specifier)
  {
    v3 = [specifier propertyForKey:PSTableCellKey];
    if (v3)
    {
      v5 = v3;
      v4 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
      [v5 setAccessoryView:v4];
      [v4 startAnimating];
      [v5 layoutSubviews];

      v3 = v5;
    }
  }
}

- (void)presentNewPairingFlowIfPossible
{
  [PBBridgeCAReporter incrementSuccessType:20];
  [(COSPairedDeviceListDataSource *)self _startSpinnerInSpecifier:self->_pairNew];
  objc_initWeak(&location, self);
  v3 = +[UIApplication sharedApplication];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000D7FB4;
  v4[3] = &unk_100268430;
  objc_copyWeak(&v5, &location);
  [v3 presentNewPairingFlowIfPossibleWithAnimation:1 withCompletion:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_stopSpinnerInSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if (specifierCopy)
  {
    v4 = pbb_bridge_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = specifierCopy;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Stopping spinner in specifier: %@", &v7, 0xCu);
    }

    v5 = [specifierCopy propertyForKey:PSTableCellKey];
    if (v5)
    {
      v6 = [specifierCopy propertyForKey:PSControlKey];
      [v5 setAccessoryView:v6];
    }
  }
}

- (void)presentInternalFlow
{
  v2 = +[UIApplication sharedApplication];
  [v2 tappedStartInternal];
}

- (void)startMigration
{
  [(COSMigrationManager *)self->_migrationManager startMigration];

  [(COSPairedDeviceListDataSource *)self reloadSpecifiers];
}

- (void)device:(id)device propertyDidChange:(id)change fromValue:(id)value
{
  deviceCopy = device;
  changeCopy = change;
  valueCopy = value;
  v11 = pbb_bridge_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218754;
    selfCopy = self;
    v17 = 2112;
    v18 = deviceCopy;
    v19 = 2112;
    v20 = changeCopy;
    v21 = 2112;
    v22 = valueCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "self: (%p); device: (%@); property: (%@); fromValue: (%@)", buf, 0x2Au);
  }

  v12 = NRDevicePropertyMaxPairingCompatibilityVersion;
  if ([changeCopy isEqualToString:NRDevicePropertyMaxPairingCompatibilityVersion])
  {
    v14 = v12;
    v13 = [NSArray arrayWithObjects:&v14 count:1];
    [deviceCopy removePropertyObserver:self forPropertyChanges:v13];

    [(COSPairedDeviceListDataSource *)self reloadSpecifiers];
  }
}

@end