@interface PHSettingsSecondaryCloudCallingController
- (BOOL)shouldShowUpgradeToThumperButton;
- (PHSettingsSecondaryCloudCallingController)init;
- (id)getiPhoneCellularSwitchActive:(id)a3;
- (id)mainSwitchFooterText;
- (id)specifiers;
- (id)upgradeToThumperSpecifiers;
- (void)activateThumperForThisDevice:(id)a3;
- (void)applicationDidResume;
- (void)capabilitiesChanged:(id)a3;
- (void)changeEmergencyAddress:(id)a3;
- (void)dealloc;
- (void)emitNavigationEvent;
- (void)setiPhoneCellularSwitchActive:(id)a3 specifier:(id)a4;
- (void)thumperProvisioningURLChanged:(id)a3;
@end

@implementation PHSettingsSecondaryCloudCallingController

- (PHSettingsSecondaryCloudCallingController)init
{
  v7.receiver = self;
  v7.super_class = PHSettingsSecondaryCloudCallingController;
  v2 = [(PHSettingsSecondaryCloudCallingController *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(PHSettingsThumperProvisioningController);
    thumperProvisioningController = v2->_thumperProvisioningController;
    v2->_thumperProvisioningController = v3;

    [(PHSettingsCloudCallingURLController *)v2->_thumperProvisioningController setDelegate:v2];
    +[TUCallCapabilities supportsTelephonyCalls];
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v2 selector:"capabilitiesChanged:" name:TUCallCapabilitiesSupportsTelephonyCallsChangedNotification object:0];
    [v5 addObserver:v2 selector:"capabilitiesChanged:" name:TUCallCapabilitiesThumperCallingChangedNotification object:0];
    [v5 addObserver:v2 selector:"capabilitiesChanged:" name:TUCallCapabilitiesRelayCallingChangedNotification object:0];
    [v5 addObserver:v2 selector:"thumperProvisioningURLChanged:" name:TUCallCapabilitiesThumperCallingProvisioningURLChangedNotification object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PHSettingsSecondaryCloudCallingController;
  [(PHSettingsSecondaryCloudCallingController *)&v4 dealloc];
}

- (void)emitNavigationEvent
{
  v3 = [(PHSettingsSecondaryCloudCallingController *)self specifier];
  v4 = [v3 target];
  v5 = [v4 parentListController];
  v6 = [v5 specifierID];

  if ([v6 isEqualToString:@"com.apple.preferences.facetime"])
  {
    v24 = TUBundleIdentifierFaceTimeApplication;
    v25 = [NSString stringWithFormat:@"settings-navigation://com.apple.Settings.Apps/%@/%@", TUBundleIdentifierFaceTimeApplication, @"SECONDARY_CLOUD_CALLING"];
    v23 = [NSURL URLWithString:v25];
    v7 = [_NSLocalizedStringResource alloc];
    v8 = +[NSLocale currentLocale];
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 bundleURL];
    v11 = [v7 initWithKey:@"Calls on Other Devices" table:0 locale:v8 bundleURL:v10];

    v12 = [_NSLocalizedStringResource alloc];
    v13 = +[NSLocale currentLocale];
    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [v14 bundleURL];
    v16 = [v12 initWithKey:@"Apps" table:0 locale:v13 bundleURL:v15];

    v17 = [_NSLocalizedStringResource alloc];
    v18 = +[NSLocale currentLocale];
    v19 = [NSBundle bundleForClass:objc_opt_class()];
    v20 = [v19 bundleURL];
    v21 = [v17 initWithKey:@"FaceTime" table:0 locale:v18 bundleURL:v20];

    v26[0] = v16;
    v26[1] = v21;
    v22 = [NSArray arrayWithObjects:v26 count:2];
    [(PHSettingsSecondaryCloudCallingController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:v24 title:v11 localizedNavigationComponents:v22 deepLink:v23];
  }
}

- (void)applicationDidResume
{
  v5.receiver = self;
  v5.super_class = PHSettingsSecondaryCloudCallingController;
  [(PHSettingsSecondaryCloudCallingController *)&v5 applicationDidResume];
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "applicationDidResume: reloading specifiers", v4, 2u);
  }

  [(PHSettingsSecondaryCloudCallingController *)self reloadSpecifiers];
}

- (void)changeEmergencyAddress:(id)a3
{
  +[TUCallCapabilities invalidateAndRefreshThumperCallingProvisioningURL];
  v5 = [(PHSettingsSecondaryCloudCallingController *)self thumperProvisioningController];
  v4 = [v5 updateEmergencyAddressController];
  [(PHSettingsCloudCallingListController *)self presentOrUpdateViewController:v4];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(PHSettingsSecondaryCloudCallingController *)self loadSpecifiersFromPlistName:@"SecondaryCloudCallingSettings" target:self];
    v6 = [v5 specifierForID:@"SECONDARY_CLOUD_CALLING_GROUP"];
    v7 = [(PHSettingsSecondaryCloudCallingController *)self mainSwitchFooterText];
    v8 = PSFooterTextGroupKey;
    [v6 setProperty:v7 forKey:PSFooterTextGroupKey];

    v9 = [(PHSettingsThumperProvisioningController *)self->_thumperProvisioningController shouldShowEmergencyAddress];
    v10 = [v5 specifierForID:@"EMERGENCY_ADDRESS_GROUP"];
    if (v9)
    {
      v11 = [NSBundle bundleForClass:objc_opt_class()];
      v12 = TUStringKeyForNetwork();
      v13 = [(PHSettingsSecondaryCloudCallingController *)self bundleDescriptor];
      v14 = [v11 localizedStringForKey:v12 value:&stru_C760 table:v13];
      [v10 setProperty:v14 forKey:v8];

      v15 = [v5 specifierForID:@"EMERGENCY_ADDRESS_GROUP"];
      [v15 setProperty:&off_CCF0 forKey:PSFooterAlignmentGroupKey];
    }

    else
    {
      [v5 removeObject:v10];

      v16 = [v5 specifierForID:@"EMERGENCY_ADDRESS_BUTTON"];
      [v5 removeObject:v16];

      v15 = [v5 specifierForID:@"EMERGENCY_ADDRESS_GROUP"];
      v17 = [NSBundle bundleForClass:objc_opt_class()];
      v18 = TUStringKeyForNetwork();
      v19 = [(PHSettingsSecondaryCloudCallingController *)self bundleDescriptor];
      v20 = [v17 localizedStringForKey:v18 value:&stru_C760 table:v19];
      [v15 setProperty:v20 forKey:v8];
    }

    if ([(PHSettingsThumperProvisioningController *)self->_thumperProvisioningController isThumperProvisioningInProcess])
    {
      v21 = 0;
    }

    else
    {
      v21 = v6;
    }

    v22 = v21;
    if ([(PHSettingsSecondaryCloudCallingController *)self shouldShowUpgradeToThumperButton])
    {
      v23 = [(PHSettingsSecondaryCloudCallingController *)self upgradeToThumperSpecifiers];
      [v5 addObjectsFromArray:v23];
      v24 = [v5 specifierForID:@"SECONDARY_CLOUD_CALLING_THUMPER_UPGRADE_GROUP"];

      v22 = v24;
    }

    if (v22)
    {
      [(PHSettingsCloudCallingListController *)self appendAboutWiFiCallingFooterToGroupSpecifier:v22];
    }

    v25 = [v5 copy];
    v26 = *&self->super.PSListController_opaque[v3];
    *&self->super.PSListController_opaque[v3] = v25;

    v4 = *&self->super.PSListController_opaque[v3];
  }

  return v4;
}

- (id)upgradeToThumperSpecifiers
{
  v3 = [PSSpecifier groupSpecifierWithID:@"SECONDARY_CLOUD_CALLING_THUMPER_UPGRADE_GROUP"];
  +[TUCallCapabilities supportsThumperCallingOverCellularData];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = TUStringKeyForNetworkAndProduct();
  v6 = [(PHSettingsSecondaryCloudCallingController *)self bundleDescriptor];
  v7 = [v4 localizedStringForKey:v5 value:&stru_C760 table:v6];

  [v3 setProperty:v7 forKey:PSFooterTextGroupKey];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = TUStringKeyForNetwork();
  v10 = [(PHSettingsSecondaryCloudCallingController *)self bundleDescriptor];
  v11 = [v8 localizedStringForKey:v9 value:&stru_C760 table:v10];
  v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v12 setButtonAction:"activateThumperForThisDevice:"];
  v15[0] = v3;
  v15[1] = v12;
  v13 = [NSArray arrayWithObjects:v15 count:2];

  return v13;
}

- (id)mainSwitchFooterText
{
  if ([(PHSettingsThumperProvisioningController *)self->_thumperProvisioningController isThumperProvisioningInProcess]|| !+[TUCallCapabilities isThumperCallingEnabled])
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = TUStringKeyForNetwork();
    v7 = [(PHSettingsSecondaryCloudCallingController *)self bundleDescriptor];
    v6 = [v3 localizedStringForKey:v5 value:&stru_C760 table:v7];
  }

  else
  {
    v3 = TUThumperCarrierName();
    v4 = [v3 length];
    +[TUCallCapabilities supportsThumperCallingOverCellularData];
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = TUStringKeyForNetworkAndProduct();
    v8 = [(PHSettingsSecondaryCloudCallingController *)self bundleDescriptor];
    [v5 localizedStringForKey:v7 value:&stru_C760 table:v8];
    if (v4)
      v9 = {;
      [NSString stringWithFormat:v9, v3];
    }

    else
      v9 = {;
      [NSString stringWithFormat:v9, v11];
    }
    v6 = ;
  }

  return v6;
}

- (BOOL)shouldShowUpgradeToThumperButton
{
  v3 = [(PHSettingsThumperProvisioningController *)self->_thumperProvisioningController shouldShowUpgradeToThumperButton];
  if (v3)
  {
    v4 = [(PHSettingsSecondaryCloudCallingController *)self getiPhoneCellularSwitchActive:0];
    v5 = [v4 BOOLValue];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (void)setiPhoneCellularSwitchActive:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = PHDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v29 = [v5 BOOLValue];
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "setiPhoneCellularSwitchActive: value is %d ... ", buf, 8u);
  }

  if (![v5 BOOLValue])
  {
    v10 = PHDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Disabling Thumper and relay", buf, 2u);
    }

    v11 = 0;
    goto LABEL_22;
  }

  if ((+[TUCallCapabilities accountsSupportSecondaryCalling]& 1) != 0)
  {
    v7 = +[TUCallCapabilities isThumperCallingAllowedForCurrentDevice];
    v8 = PHDefaultLog();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        *buf = 0;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "... and thumper calling is allowed for current device", buf, 2u);
      }

      [TUCallCapabilities setThumperCallingEnabled:1];
    }

    else
    {
      if (v9)
      {
        *buf = 0;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "... and thumper calling is not allowed for current device", buf, 2u);
      }
    }

    v11 = 1;
LABEL_22:
    [TUCallCapabilities setRelayCallingEnabled:v11];
    goto LABEL_23;
  }

  v12 = PHDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = +[TUCallCapabilities accountsSupportSecondaryCalling];
    *buf = 67109120;
    v29 = v13;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "... but not allowing Calls from iPhone to be enabled because accountsSupportSecondaryCalling = %d", buf, 8u);
  }

  v14 = [NSBundle bundleForClass:objc_opt_class()];
  v15 = [(PHSettingsSecondaryCloudCallingController *)self bundleDescriptor];
  v16 = [v14 localizedStringForKey:@"SECONDARY_CLOUD_CALLING_ACCOUNT_ALERT_TITLE" value:&stru_C760 table:v15];

  v17 = objc_alloc_init(TUFeatureFlags);
  LODWORD(v15) = [v17 appleAccountRebrandEnabled];
  v18 = [NSBundle bundleForClass:objc_opt_class()];
  v19 = [(PHSettingsSecondaryCloudCallingController *)self bundleDescriptor];
  if (v15)
  {
    v20 = @"SECONDARY_CLOUD_CALLING_ACCOUNT_ALERT_MESSAGE_APPLEACCOUNT";
  }

  else
  {
    v20 = @"SECONDARY_CLOUD_CALLING_ACCOUNT_ALERT_MESSAGE";
  }

  v21 = [v18 localizedStringForKey:v20 value:&stru_C760 table:v19];

  v22 = [UIAlertController alertControllerWithTitle:v16 message:v21 preferredStyle:1];
  v23 = [NSBundle bundleForClass:objc_opt_class()];
  v24 = [(PHSettingsSecondaryCloudCallingController *)self bundleDescriptor];
  v25 = [v23 localizedStringForKey:@"OK" value:&stru_C760 table:v24];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_3F5C;
  v27[3] = &unk_C590;
  v27[4] = self;
  v26 = [UIAlertAction actionWithTitle:v25 style:0 handler:v27];
  [v22 addAction:v26];

  [(PHSettingsSecondaryCloudCallingController *)self presentViewController:v22 animated:1 completion:0];
LABEL_23:
  [(PHSettingsSecondaryCloudCallingController *)self reloadSpecifiers];
}

- (id)getiPhoneCellularSwitchActive:(id)a3
{
  if ((+[TUCallCapabilities isRelayCallingEnabled]& 1) != 0)
  {
    v3 = &dword_0 + 1;
  }

  else
  {
    v3 = +[TUCallCapabilities isThumperCallingEnabled];
  }

  return [NSNumber numberWithInt:v3];
}

- (void)activateThumperForThisDevice:(id)a3
{
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "activateThumperForThisDevice", buf, 2u);
  }

  v4 = +[TUCallCapabilities isThumperCallingAllowedForCurrentDevice];
  v5 = PHDefaultLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *v8 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Thumper calling is already allowed for current device. Enabling Thumper directly", v8, 2u);
    }

    [TUCallCapabilities setThumperCallingEnabled:1];
  }

  else
  {
    if (v6)
    {
      *v7 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Thumper calling is not allowed for current device. Starting PIN pairing", v7, 2u);
    }

    +[TUCallCapabilities requestPinFromPrimaryDevice];
  }
}

- (void)capabilitiesChanged:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Received capabilites changed notification: %@. Reloading specifiers", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_41E0;
  block[3] = &unk_C5B8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)thumperProvisioningURLChanged:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Received Thumper provisioning URL changed notification: %@", &v11, 0xCu);
  }

  v6 = +[TUCallCapabilities thumperCallingCapabilityInfo];
  v7 = [(PHSettingsSecondaryCloudCallingController *)self presentedViewController];

  if (v7 && ![v6 provisioningStatus])
  {
    v8 = PHDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "We have a presented view controller and Thumper provisioning status is not-allowed, so updating our presented controller", &v11, 2u);
    }

    v9 = [(PHSettingsSecondaryCloudCallingController *)self thumperProvisioningController];
    v10 = [v9 provisionCapabilityController];
    [(PHSettingsCloudCallingListController *)self presentOrUpdateViewController:v10];
  }
}

@end