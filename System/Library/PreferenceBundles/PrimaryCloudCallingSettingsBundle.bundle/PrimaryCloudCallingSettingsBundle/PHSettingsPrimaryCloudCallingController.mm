@interface PHSettingsPrimaryCloudCallingController
- (PHSettingsPrimaryCloudCallingController)init;
- (id)cloudDeviceSpecifiers;
- (id)getCallsOnOtherDevices:(id)devices;
- (id)getDeviceActive:(id)active;
- (id)getIncomingCallBannerEnabled:(id)enabled;
- (id)incomingCallDeviceSpecifiers;
- (id)mainSwitchFooterText;
- (id)specifiers;
- (void)dealloc;
- (void)emitNavigationEvent;
- (void)setCallsOnOtherDevices:(id)devices specifier:(id)specifier;
- (void)setDeviceActive:(id)active specifier:(id)specifier;
- (void)setIncomingCallBannerEnabled:(id)enabled specifier:(id)specifier;
- (void)statusChanged:(id)changed;
@end

@implementation PHSettingsPrimaryCloudCallingController

- (PHSettingsPrimaryCloudCallingController)init
{
  v5.receiver = self;
  v5.super_class = PHSettingsPrimaryCloudCallingController;
  v2 = [(PHSettingsPrimaryCloudCallingController *)&v5 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"statusChanged:" name:TUCallCapabilitiesRelayCallingChangedNotification object:0];
    [v3 addObserver:v2 selector:"statusChanged:" name:TUCallCapabilitiesCloudCallingDevicesChangedNotification object:0];
    [v3 addObserver:v2 selector:"statusChanged:" name:@"PHCallNotificationEligibleDevicesChangedNotification" object:0];
  }

  return v2;
}

- (void)emitNavigationEvent
{
  specifier = [(PHSettingsPrimaryCloudCallingController *)self specifier];
  target = [specifier target];
  parentListController = [target parentListController];
  specifierID = [parentListController specifierID];

  if ([specifierID isEqualToString:@"com.apple.preferences.phone"])
  {
    v7 = TUBundleIdentifierPhoneApplication;
    v21 = [NSString stringWithFormat:@"settings-navigation://com.apple.Settings.Apps/%@/%@", TUBundleIdentifierPhoneApplication, @"PRIMARY_CLOUD_CALLING"];
    v20 = [NSURL URLWithString:v21];
    v8 = [_NSLocalizedStringResource alloc];
    v9 = +[NSLocale currentLocale];
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    bundleURL = [v10 bundleURL];
    v12 = [v8 initWithKey:@"Calls on Other Devices" table:0 locale:v9 bundleURL:bundleURL];

    v13 = [_NSLocalizedStringResource alloc];
    v14 = +[NSLocale currentLocale];
    v15 = [NSBundle bundleForClass:objc_opt_class()];
    bundleURL2 = [v15 bundleURL];
    v17 = [v13 initWithKey:@"Apps" table:0 locale:v14 bundleURL:bundleURL2];

    v18 = TUResolvedPhoneResource();
    v22[0] = v17;
    v22[1] = v18;
    v19 = [NSArray arrayWithObjects:v22 count:2];
    [(PHSettingsPrimaryCloudCallingController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:v7 title:v12 localizedNavigationComponents:v19 deepLink:v20];
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PHSettingsPrimaryCloudCallingController;
  [(PHSettingsPrimaryCloudCallingController *)&v4 dealloc];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(PHSettingsPrimaryCloudCallingController *)self loadSpecifiersFromPlistName:@"PrimaryCloudCallingSettings" target:self];
    v6 = [v5 specifierForID:@"PRIMARY_CLOUD_CALLING_GROUP"];
    mainSwitchFooterText = [(PHSettingsPrimaryCloudCallingController *)self mainSwitchFooterText];
    [v6 setProperty:mainSwitchFooterText forKey:PSFooterTextGroupKey];

    v8 = [(PHSettingsPrimaryCloudCallingController *)self getCallsOnOtherDevices:0];
    LODWORD(mainSwitchFooterText) = [v8 BOOLValue];

    if (mainSwitchFooterText)
    {
      cloudDeviceSpecifiers = [(PHSettingsPrimaryCloudCallingController *)self cloudDeviceSpecifiers];
      [v5 addObjectsFromArray:cloudDeviceSpecifiers];

      incomingCallDeviceSpecifiers = [(PHSettingsPrimaryCloudCallingController *)self incomingCallDeviceSpecifiers];
      [v5 addObjectsFromArray:incomingCallDeviceSpecifiers];
    }

    v11 = [[NSArray alloc] initWithArray:v5];
    v12 = *&self->super.PSListController_opaque[v3];
    *&self->super.PSListController_opaque[v3] = v11;

    v4 = *&self->super.PSListController_opaque[v3];
  }

  return v4;
}

- (id)cloudDeviceSpecifiers
{
  v18 = objc_alloc_init(NSMutableArray);
  v20 = objc_alloc_init(NSMutableArray);
  +[TUCallCapabilities cloudCallingDevices];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v25 = 0u;
  v2 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v23;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v23 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v22 + 1) + 8 * i);
        if ([v6 supportsRestrictingSecondaryCalling])
        {
          name = [v6 name];
          modelIdentifier = [v6 modelIdentifier];
          v9 = [IMDeviceSupport marketingNameForModel:modelIdentifier];

          v10 = [NSString stringWithFormat:@"%@ (%@)", name, v9];
          v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:"setDeviceActive:specifier:" get:"getDeviceActive:" detail:0 cell:6 edit:0];
          uniqueID = [v6 uniqueID];
          [v11 setIdentifier:uniqueID];

          [v20 addObject:v11];
        }
      }

      v3 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v3);
  }

  if ([v20 count])
  {
    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"PRIMARY_CLOUD_CALLING_DEVICE_LIST_HEADER" value:&stru_C920 table:@"PrimaryCloudCallingSettings"];

    v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:0 get:0 detail:0 cell:0 edit:0];
    [v18 addObject:v15];
    [v18 addObjectsFromArray:v20];
  }

  v16 = [v18 copy];

  return v16;
}

- (id)incomingCallDeviceSpecifiers
{
  v23 = objc_alloc_init(NSMutableArray);
  v25 = objc_alloc_init(NSMutableArray);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v2 = +[PHCallNotificationDevicesMonitor sharedInstance];
  callNotificationEligibleDevices = [v2 callNotificationEligibleDevices];

  obj = callNotificationEligibleDevices;
  v4 = [callNotificationEligibleDevices countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v28;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v27 + 1) + 8 * i);
        name = [v8 name];
        model = [v8 model];
        v11 = [IMDeviceSupport marketingNameForModel:model];

        if (name)
        {
          v12 = v11 == 0;
        }

        else
        {
          v12 = 1;
        }

        if (!v12)
        {
          v13 = [NSString stringWithFormat:@"%@ (%@)", name, v11];
          v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:"setIncomingCallBannerEnabled:specifier:" get:"getIncomingCallBannerEnabled:" detail:0 cell:6 edit:0];
          serialNumber = [v8 serialNumber];
          [v14 setIdentifier:serialNumber];

          [v25 addObject:v14];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v5);
  }

  if ([v25 count])
  {
    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"NEARBY_INCOMING_CALL_NOTIFICATIONS_HEADER" value:&stru_C920 table:@"PrimaryCloudCallingSettings"];

    v18 = [PSSpecifier preferenceSpecifierNamed:v17 target:self set:0 get:0 detail:0 cell:0 edit:0];
    v19 = [NSBundle bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"NEARBY_INCOMING_CALL_NOTIFICATIONS_FOOTER" value:&stru_C920 table:@"PrimaryCloudCallingSettings"];

    [v18 setProperty:v20 forKey:PSFooterTextGroupKey];
    [v23 addObject:v18];
    [v23 addObjectsFromArray:v25];
  }

  v21 = [v23 copy];

  return v21;
}

- (id)mainSwitchFooterText
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = TUStringKeyForNetwork();
  v4 = [v2 localizedStringForKey:v3 value:&stru_C920 table:@"PrimaryCloudCallingSettings"];

  return v4;
}

- (void)setCallsOnOtherDevices:(id)devices specifier:(id)specifier
{
  devicesCopy = devices;
  v6 = PHDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    bOOLValue = [devicesCopy BOOLValue];
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Asked to set calls on other devices to %d", buf, 8u);
  }

  if ([devicesCopy BOOLValue] && (+[TUCallCapabilities accountsSupportSecondaryCalling](TUCallCapabilities, "accountsSupportSecondaryCalling") & 1) == 0)
  {
    v7 = PHDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = +[TUCallCapabilities accountsSupportSecondaryCalling];
      *buf = 67109120;
      bOOLValue = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Not allowing Calls on Other Devices to be enabled because accountsSupportSecondaryCalling = %d", buf, 8u);
    }

    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"PRIMARY_CLOUD_CALLING_ACCOUNT_ALERT_TITLE" value:&stru_C920 table:@"PrimaryCloudCallingSettings"];

    v11 = objc_alloc_init(TUFeatureFlags);
    appleAccountRebrandEnabled = [v11 appleAccountRebrandEnabled];
    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = v13;
    if (appleAccountRebrandEnabled)
    {
      v15 = @"PRIMARY_CLOUD_CALLING_ACCOUNT_ALERT_MESSAGE_APPLEACCOUNT";
    }

    else
    {
      v15 = @"PRIMARY_CLOUD_CALLING_ACCOUNT_ALERT_MESSAGE";
    }

    v16 = [v13 localizedStringForKey:v15 value:&stru_C920 table:@"PrimaryCloudCallingSettings"];

    v17 = [UIAlertController alertControllerWithTitle:v10 message:v16 preferredStyle:1];
    v18 = [NSBundle bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"OK" value:&stru_C920 table:@"PrimaryCloudCallingSettings"];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_2AA4;
    v21[3] = &unk_C528;
    v21[4] = self;
    v20 = [UIAlertAction actionWithTitle:v19 style:0 handler:v21];
    [v17 addAction:v20];

    [(PHSettingsPrimaryCloudCallingController *)self presentViewController:v17 animated:1 completion:0];
  }

  else
  {
    +[TUCallCapabilities setRelayCallingEnabled:](TUCallCapabilities, "setRelayCallingEnabled:", [devicesCopy BOOLValue]);
  }
}

- (id)getCallsOnOtherDevices:(id)devices
{
  v3 = +[TUCallCapabilities areCallsOnOtherDevicesEnabled];

  return [NSNumber numberWithBool:v3];
}

- (void)setDeviceActive:(id)active specifier:(id)specifier
{
  activeCopy = active;
  identifier = [specifier identifier];
  v7 = PHDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = activeCopy;
    v10 = 2112;
    v11 = identifier;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Asked to set device active=%@ on secondary device with unique ID %@", &v8, 0x16u);
  }

  +[TUCallCapabilities setRelayCallingEnabled:forDeviceWithID:](TUCallCapabilities, "setRelayCallingEnabled:forDeviceWithID:", [activeCopy BOOLValue], identifier);
}

- (id)getDeviceActive:(id)active
{
  identifier = [active identifier];
  v4 = [NSNumber numberWithBool:[TUCallCapabilities isRelayCallingEnabledForDeviceWithID:identifier]];

  return v4;
}

- (void)setIncomingCallBannerEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  identifier = [specifier identifier];
  v7 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.NeighborhoodActivityConduitService"];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 arrayForKey:@"incomingCallBannerEnabledDevices"];
    v10 = [[NSMutableArray alloc] initWithArray:v9];
    if ([enabledCopy BOOLValue])
    {
      v11 = [v10 containsObject:identifier];
      v12 = PHDefaultLog();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        if (v13)
        {
          v15 = 138412546;
          v16 = identifier;
          v17 = 2112;
          v18 = v10;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "deviceID %@ already exists in the enabled devices list %@.", &v15, 0x16u);
        }
      }

      else
      {
        if (v13)
        {
          v15 = 138412290;
          v16 = identifier;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Adding new deviceID %@ to the enabled devices list.", &v15, 0xCu);
        }

        [v10 addObject:identifier];
      }
    }

    else
    {
      v14 = PHDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412546;
        v16 = identifier;
        v17 = 2112;
        v18 = v10;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Removing deviceID %@ from the enabled devices list %@.", &v15, 0x16u);
      }

      [v10 removeObject:identifier];
    }

    [v8 setObject:v10 forKey:@"incomingCallBannerEnabledDevices"];
  }
}

- (id)getIncomingCallBannerEnabled:(id)enabled
{
  enabledCopy = enabled;
  v4 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.NeighborhoodActivityConduitService"];
  v5 = v4;
  if (v4 && ([v4 arrayForKey:@"incomingCallBannerEnabledDevices"], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    identifier = [enabledCopy identifier];
    v9 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 containsObject:identifier]);
  }

  else
  {
    v10 = PHDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_69A8(v10);
    }

    v9 = [NSNumber numberWithBool:0];
  }

  return v9;
}

- (void)statusChanged:(id)changed
{
  changedCopy = changed;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = changedCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Received capability changed notification: %@. Reloading specifiers", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_30B8;
  block[3] = &unk_C550;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

@end