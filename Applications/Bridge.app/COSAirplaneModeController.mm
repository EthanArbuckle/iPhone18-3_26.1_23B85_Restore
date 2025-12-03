@interface COSAirplaneModeController
+ (BOOL)isMirroring;
- (COSAirplaneModeController)init;
- (id)bluetoothOn:(id)on;
- (id)disableAPMSettings:(id)settings;
- (id)specifiers;
- (id)wifiOn:(id)on;
- (void)_recheckAPMSettings;
- (void)changeAirplaneModeSettings;
- (void)dealloc;
- (void)hideSettingsForMirrorOn;
- (void)retrieveAirplaneModeSettings;
- (void)setBluetoothOn:(id)on specifier:(id)specifier;
- (void)setMirror:(id)mirror specifier:(id)specifier;
- (void)setWifiOn:(id)on specifier:(id)specifier;
- (void)updateSettingsSpecifiersForChanges:(id)changes;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation COSAirplaneModeController

- (COSAirplaneModeController)init
{
  v8.receiver = self;
  v8.super_class = COSAirplaneModeController;
  v2 = [(COSAirplaneModeController *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_airplaneModeSettingsLoaded = 0;
    v4 = [[NSSManager alloc] initWithQueue:&_dispatch_main_q];
    nssManager = v3->_nssManager;
    v3->_nssManager = v4;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, sub_1000F0F04, NSSAirplaneModeSettingsChangedNotification, 0, 1028);
  }

  return v3;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, NSSAirplaneModeSettingsChangedNotification, 0);
  v4.receiver = self;
  v4.super_class = COSAirplaneModeController;
  [(COSAirplaneModeController *)&v4 dealloc];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->BPSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(COSAirplaneModeController *)self loadSpecifiersFromPlistName:@"AirplaneMode" target:self];
    airplaneModeSettingsLoaded = [(COSAirplaneModeController *)self airplaneModeSettingsLoaded];
    if (+[COSAirplaneModeController isMirroring])
    {
      v7 = [v5 objectAtIndexedSubscript:0];
      v35[0] = v7;
      v8 = [v5 objectAtIndexedSubscript:1];
      v35[1] = v8;
      v9 = [NSArray arrayWithObjects:v35 count:2];
      v10 = [NSMutableArray arrayWithArray:v9];

      v11 = v10;
    }

    else
    {
      SFLocalizableWAPIStringKeyForKey();
      v12 = v30 = airplaneModeSettingsLoaded;
      v34 = v5;
      v13 = [PSSpecifier groupSpecifierWithID:@"NANO_WIFI_AIRPLANE_MODE_GROUP"];
      v14 = [NSBundle bundleForClass:objc_opt_class()];
      v33 = v12;
      v15 = [v14 localizedStringForKey:v12 value:&stru_10026E598 table:@"AirplaneMode"];
      v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:self set:"setWifiOn:specifier:" get:"wifiOn:" detail:0 cell:6 edit:0];

      v17 = [NSNumber numberWithBool:airplaneModeSettingsLoaded];
      v29 = PSEnabledKey;
      [v16 setProperty:v17 forKey:?];

      [v16 setIdentifier:@"WIFI_ON"];
      v32 = v13;
      [v34 addObject:v13];
      v31 = v16;
      [v34 addObject:v16];
      v18 = [PSSpecifier groupSpecifierWithID:@"NANO_BLUETOOTH_AIRPLANE_MODE_GROUP"];
      v19 = [NSBundle bundleForClass:objc_opt_class()];
      v20 = [v19 localizedStringForKey:@"NANO_BLUETOOTH_AIRPLANE_MODE_FOOTER" value:&stru_10026E598 table:@"AirplaneMode"];
      [v18 setProperty:v20 forKey:PSFooterTextGroupKey];

      v21 = [NSBundle bundleForClass:objc_opt_class()];
      v22 = [v21 localizedStringForKey:@"NANO_BLUETOOTH_AIRPLANE_MODE" value:&stru_10026E598 table:@"AirplaneMode"];
      v23 = [PSSpecifier preferenceSpecifierNamed:v22 target:self set:"setBluetoothOn:specifier:" get:"bluetoothOn:" detail:0 cell:6 edit:0];

      v11 = v34;
      v24 = [NSNumber numberWithBool:v30];
      [v23 setProperty:v24 forKey:v29];

      [v23 setIdentifier:@"BLUETOOTH_ON"];
      [v34 addObject:v18];
      [v34 addObject:v23];
      if (!v30)
      {
        [(COSAirplaneModeController *)self setBluetoothWithAirplaneMode:0];
        [(COSAirplaneModeController *)self setWifiWithAirplaneMode:0];
        v25 = [(COSAirplaneModeController *)self disableAPMSettings:v34];
        v26 = [v25 mutableCopy];

        v11 = v26;
      }
    }

    v27 = *&self->BPSListController_opaque[v3];
    *&self->BPSListController_opaque[v3] = v11;

    v4 = *&self->BPSListController_opaque[v3];
  }

  return v4;
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = COSAirplaneModeController;
  [(COSAirplaneModeController *)&v4 viewDidAppear:appear];
  [(COSAirplaneModeController *)self retrieveAirplaneModeSettings];
}

- (void)setMirror:(id)mirror specifier:(id)specifier
{
  mirrorCopy = mirror;
  sub_10002CA2C(@"com.apple.nano", @"mirror-airplane", mirrorCopy);
  bOOLValue = [mirrorCopy BOOLValue];

  if (bOOLValue)
  {

    [(COSAirplaneModeController *)self hideSettingsForMirrorOn];
  }

  else
  {

    [(COSAirplaneModeController *)self addSettingsForMirrorOff];
  }
}

- (void)hideSettingsForMirrorOn
{
  v3 = [(COSAirplaneModeController *)self specifierForID:@"WIFI_ON"];
  [(COSAirplaneModeController *)self removeSpecifier:v3 animated:1];

  v4 = [(COSAirplaneModeController *)self specifierForID:@"BLUETOOTH_ON"];
  [(COSAirplaneModeController *)self removeSpecifier:v4 animated:1];

  v5 = [(COSAirplaneModeController *)self specifierForID:@"NANO_BLUETOOTH_AIRPLANE_MODE_GROUP"];
  [(COSAirplaneModeController *)self removeSpecifier:v5 animated:1];

  v6 = [(COSAirplaneModeController *)self specifierForID:@"NANO_WIFI_AIRPLANE_MODE_GROUP"];
  [(COSAirplaneModeController *)self removeSpecifier:v6 animated:1];
}

- (id)bluetoothOn:(id)on
{
  bluetoothWithAirplaneMode = [(COSAirplaneModeController *)self bluetoothWithAirplaneMode];

  return [NSNumber numberWithBool:bluetoothWithAirplaneMode];
}

- (void)setBluetoothOn:(id)on specifier:(id)specifier
{
  -[COSAirplaneModeController setBluetoothWithAirplaneMode:](self, "setBluetoothWithAirplaneMode:", [on BOOLValue]);
  v8 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
  v5 = [[NSUUID alloc] initWithUUIDString:@"48DB09AC-404A-4F1D-8952-61DCA0277C32"];
  v6 = [v8 supportsCapability:v5];

  if (v6)
  {
    if ([(COSAirplaneModeController *)self bluetoothWithAirplaneMode])
    {
      v7 = @"on";
    }

    else
    {
      v7 = @"off";
    }

    sub_10002CA2C(@"com.apple.BTServer", @"defaultAirplaneModePowerState", v7);
  }

  else
  {
    [(COSAirplaneModeController *)self changeAirplaneModeSettings];
  }
}

- (id)wifiOn:(id)on
{
  wifiWithAirplaneMode = [(COSAirplaneModeController *)self wifiWithAirplaneMode];

  return [NSNumber numberWithBool:wifiWithAirplaneMode];
}

- (void)setWifiOn:(id)on specifier:(id)specifier
{
  -[COSAirplaneModeController setWifiWithAirplaneMode:](self, "setWifiWithAirplaneMode:", [on BOOLValue]);
  v8 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
  v5 = [[NSUUID alloc] initWithUUIDString:@"48DB09AC-404A-4F1D-8952-61DCA0277C32"];
  v6 = [v8 supportsCapability:v5];

  if (v6)
  {
    v7 = [NSNumber numberWithBool:[(COSAirplaneModeController *)self wifiWithAirplaneMode]];
    sub_10002CA2C(@"com.apple.nanosystemsettings", @"NanoSettingsWifiAirplaneModeKey", v7);
  }

  else
  {
    [(COSAirplaneModeController *)self changeAirplaneModeSettings];
  }
}

- (void)retrieveAirplaneModeSettings
{
  v3 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
  v4 = [[NSUUID alloc] initWithUUIDString:@"48DB09AC-404A-4F1D-8952-61DCA0277C32"];
  v5 = [v3 supportsCapability:v4];

  if (v5)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000F1990;
    v11[3] = &unk_10026A640;
    v11[4] = self;
    sub_10002CD34(@"com.apple.nanosystemsettings", @"NanoSettingsWifiAirplaneModeKey", v11);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000F19C8;
    v10[3] = &unk_10026A640;
    v10[4] = self;
    sub_10002CD34(@"com.apple.BTServer", @"defaultAirplaneModePowerState", v10);
  }

  else
  {
    objc_initWeak(&location, self);
    nssManager = self->_nssManager;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000F1A88;
    v7[3] = &unk_100268980;
    objc_copyWeak(&v8, &location);
    [(NSSManager *)nssManager retrieveAirplaneModeSettingsWithCompletionHandler:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)_recheckAPMSettings
{
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "asked by gizmo to retrieve apm settings for a change", v4, 2u);
  }

  [(COSAirplaneModeController *)self retrieveAirplaneModeSettings];
}

- (void)changeAirplaneModeSettings
{
  v12[0] = kNSSAirplaneModeBluetoothKey;
  v3 = [NSNumber numberWithBool:[(COSAirplaneModeController *)self bluetoothWithAirplaneMode]];
  v13[0] = v3;
  v12[1] = kNSSAirplaneModeWifiKey;
  v4 = [NSNumber numberWithBool:[(COSAirplaneModeController *)self wifiWithAirplaneMode]];
  v13[1] = v4;
  v12[2] = kNSSAirplaneModeCellularKey;
  v13[2] = &__kCFBooleanFalse;
  v5 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];

  objc_initWeak(&location, self);
  v6 = pbb_bridge_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Change apm settings", buf, 2u);
  }

  nssManager = self->_nssManager;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000F1F4C;
  v8[3] = &unk_100268980;
  objc_copyWeak(&v9, &location);
  [(NSSManager *)nssManager setAirplaneModeSettings:v5 withCompletionHandler:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)updateSettingsSpecifiersForChanges:(id)changes
{
  v4 = kNSSAirplaneModeBluetoothKey;
  changesCopy = changes;
  v6 = [changesCopy objectForKey:v4];
  bOOLValue = [v6 BOOLValue];

  v8 = [changesCopy objectForKey:kNSSAirplaneModeWifiKey];

  bOOLValue2 = [v8 BOOLValue];
  if (bOOLValue != [(COSAirplaneModeController *)self bluetoothWithAirplaneMode])
  {
    [(COSAirplaneModeController *)self setBluetoothWithAirplaneMode:bOOLValue];
    v10 = [(COSAirplaneModeController *)self specifierForID:@"BLUETOOTH_ON"];
    if (v10)
    {
      [(COSAirplaneModeController *)self reloadSpecifier:v10];
    }
  }

  if (bOOLValue2 != [(COSAirplaneModeController *)self wifiWithAirplaneMode])
  {
    [(COSAirplaneModeController *)self setWifiWithAirplaneMode:bOOLValue2];
    v11 = [(COSAirplaneModeController *)self specifierForID:@"WIFI_ON"];
    if (v11)
    {
      v12 = v11;
      [(COSAirplaneModeController *)self reloadSpecifier:v11];
      v11 = v12;
    }
  }
}

- (id)disableAPMSettings:(id)settings
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = settings;
  v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    v6 = PSIDKey;
    v7 = PSEnabledKey;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 propertyForKey:v6];
        if ([v10 isEqualToString:@"WIFI_ON"])
        {
        }

        else
        {
          v11 = [v9 propertyForKey:v6];
          v12 = [v11 isEqualToString:@"BLUETOOTH_ON"];

          if (!v12)
          {
            continue;
          }
        }

        [v9 setProperty:&__kCFBooleanFalse forKey:v7];
      }

      v4 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  return obj;
}

+ (BOOL)isMirroring
{
  v7 = 0;
  v2 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.nano"];
  synchronize = [v2 synchronize];
  v4 = [v2 BOOLForKey:@"mirror-airplane" keyExistsAndHasValidFormat:&v7];
  v5 = v7 & v4;

  return v5 & 1;
}

@end