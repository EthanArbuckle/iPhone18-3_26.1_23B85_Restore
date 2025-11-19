@interface TPSWiFiCallingListController
- (BOOL)isEmergencyAddressSpecifierVisible;
- (BOOL)isEmergencyCallingSpecifierVisible;
- (BOOL)isThumperSpecifierVisible;
- (PSSpecifier)emergencyAddressButtonSpecifier;
- (PSSpecifier)emergencyAddressGroupSpecifier;
- (PSSpecifier)mainGroupSpecifier;
- (PSSpecifier)mainSwitchSpecifier;
- (PSSpecifier)roamingGroupSpecifier;
- (PSSpecifier)roamingSwitchSpecifier;
- (PSSpecifier)thumperGroupSpecifier;
- (PSSpecifier)thumperSwitchSpecifier;
- (TPSCloudCallingEmergencyAddressURLController)emergencyAddressURLController;
- (TPSCloudCallingThumperProvisioningURLController)thumperProvisioningURLController;
- (TPSWiFiCallingController)callingController;
- (UIAlertController)privacyAlertController;
- (id)isMainSwitchOn:(id)a3;
- (id)isRoamingSwitchOn:(id)a3;
- (id)isThumperSwitchOn:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)configureCell:(id)a3;
- (void)configureCell:(id)a3 forSpecifier:(id)a4;
- (void)didChangeWiFiCallingProvisionalURLForSenderIdentityWithUUID:(id)a3;
- (void)handleTPSWiFiCallingControllerSubscriptionCapabilitiesChangedNotification:(id)a3;
- (void)setMainSwitchOn:(id)a3 specifier:(id)a4;
- (void)setRoamingSwitchOn:(id)a3 specifier:(id)a4;
- (void)setThumperSwitchOn:(id)a3 specifier:(id)a4;
- (void)updateEmergencyAddress:(id)a3;
@end

@implementation TPSWiFiCallingListController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->TPSCloudCallingListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(TPSWiFiCallingListController *)self callingController];
    v6 = [v5 subscriptionCapabilities];

    if (!v6)
    {
LABEL_27:

      v4 = *&self->TPSCloudCallingListController_opaque[v3];
      goto LABEL_28;
    }

    v7 = +[NSMutableArray array];
    v8 = [(TPSWiFiCallingListController *)self callingController];
    v9 = [v8 localizedCarrierName];

    if (![v6 supportsWiFiCalling])
    {
LABEL_24:
      if ([(TPSWiFiCallingListController *)self isThumperSpecifierVisible])
      {
        v24 = [(TPSWiFiCallingListController *)self thumperGroupSpecifier];
        [v7 addObject:v24];

        v25 = [(TPSWiFiCallingListController *)self thumperSwitchSpecifier];
        [v7 addObject:v25];
      }

      v26 = [v7 copy];
      v27 = *&self->TPSCloudCallingListController_opaque[v3];
      *&self->TPSCloudCallingListController_opaque[v3] = v26;

      goto LABEL_27;
    }

    v10 = [(TPSWiFiCallingListController *)self mainGroupSpecifier];
    [v7 addObject:v10];

    v11 = [(TPSWiFiCallingListController *)self mainSwitchSpecifier];
    [v7 addObject:v11];

    if ([v6 supportsWiFiCallingRoaming])
    {
      v12 = [(TPSWiFiCallingListController *)self roamingGroupSpecifier];
      [v7 addObject:v12];

      v13 = [(TPSWiFiCallingListController *)self roamingSwitchSpecifier];
      [v7 addObject:v13];
    }

    if ([v6 wiFiCallingProvisioningStatus] == 1)
    {
      goto LABEL_7;
    }

    if ([(TPSWiFiCallingListController *)self isEmergencyCallingSpecifierVisible])
    {
      if ([(TPSWiFiCallingListController *)self isEmergencyAddressSpecifierVisible])
      {
        v16 = [(TPSWiFiCallingListController *)self emergencyAddressGroupSpecifier];
        [v7 addObject:v16];

        v17 = [(TPSWiFiCallingListController *)self emergencyAddressButtonSpecifier];
        [v7 addObject:v17];

        if ([v9 length])
        {
          v18 = TUStringKeyForNetwork();
          v19 = [TPSWiFiCallingStrings localizedStringForKey:v18];
          v15 = [NSString stringWithFormat:v19, v9];
        }

        else
        {
          v18 = TUStringKeyForNetwork();
          v15 = [TPSWiFiCallingStrings localizedStringForKey:v18];
        }

        v21 = TUStringKeyForNetwork();
        v14 = [TPSWiFiCallingStrings localizedStringForKey:v21];

        v20 = [(TPSWiFiCallingListController *)self emergencyAddressGroupSpecifier];
        [v20 setProperty:v14 forKey:PSFooterTextGroupKey];
        goto LABEL_20;
      }

      if ([v9 length])
      {
        v14 = TUStringKeyForNetwork();
        v20 = [TPSWiFiCallingStrings localizedStringForKey:v14];
        [NSString stringWithFormat:v20, v9, v29];
        goto LABEL_16;
      }
    }

    else if ([v9 length])
    {
      v14 = TUStringKeyForNetwork();
      v20 = [TPSWiFiCallingStrings localizedStringForKey:v14];
      [NSString stringWithFormat:v20, v9, v9];
      v15 = LABEL_16:;
LABEL_20:

      goto LABEL_21;
    }

LABEL_7:
    v14 = TUStringKeyForNetwork();
    v15 = [TPSWiFiCallingStrings localizedStringForKey:v14];
LABEL_21:

    if ([v15 length])
    {
      v22 = [(TPSWiFiCallingListController *)self mainGroupSpecifier];
      [v22 setProperty:v15 forKey:PSFooterTextGroupKey];
    }

    v23 = [(TPSWiFiCallingListController *)self mainGroupSpecifier];
    [(TPSWiFiCallingListController *)self appendAboutWiFiCallingFooterToGroupSpecifier:v23];

    goto LABEL_24;
  }

LABEL_28:

  return v4;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v7.receiver = self;
  v7.super_class = TPSWiFiCallingListController;
  v5 = [(TPSWiFiCallingListController *)&v7 tableView:a3 cellForRowAtIndexPath:a4];
  [(TPSWiFiCallingListController *)self configureCell:v5];

  return v5;
}

- (PSSpecifier)emergencyAddressButtonSpecifier
{
  emergencyAddressButtonSpecifier = self->_emergencyAddressButtonSpecifier;
  if (!emergencyAddressButtonSpecifier)
  {
    v4 = [TPSWiFiCallingStrings localizedStringForKey:@"WIFI_CALLING_EMERGENCY_ADDRESS"];
    v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:0 cell:13 edit:0];
    v6 = self->_emergencyAddressButtonSpecifier;
    self->_emergencyAddressButtonSpecifier = v5;

    [(PSSpecifier *)self->_emergencyAddressButtonSpecifier setButtonAction:"updateEmergencyAddress:"];
    [(PSSpecifier *)self->_emergencyAddressButtonSpecifier setIdentifier:@"EMERGENCY_ADDRESS_BUTTON"];
    emergencyAddressButtonSpecifier = self->_emergencyAddressButtonSpecifier;
  }

  return emergencyAddressButtonSpecifier;
}

- (PSSpecifier)emergencyAddressGroupSpecifier
{
  emergencyAddressGroupSpecifier = self->_emergencyAddressGroupSpecifier;
  if (!emergencyAddressGroupSpecifier)
  {
    v4 = [PSSpecifier groupSpecifierWithID:@"EMERGENCY_ADDRESS_GROUP"];
    v5 = self->_emergencyAddressGroupSpecifier;
    self->_emergencyAddressGroupSpecifier = v4;

    emergencyAddressGroupSpecifier = self->_emergencyAddressGroupSpecifier;
  }

  return emergencyAddressGroupSpecifier;
}

- (PSSpecifier)mainGroupSpecifier
{
  mainGroupSpecifier = self->_mainGroupSpecifier;
  if (!mainGroupSpecifier)
  {
    v4 = [PSSpecifier groupSpecifierWithID:@"WIFI_CALLING_GROUP"];
    v5 = self->_mainGroupSpecifier;
    self->_mainGroupSpecifier = v4;

    mainGroupSpecifier = self->_mainGroupSpecifier;
  }

  return mainGroupSpecifier;
}

- (PSSpecifier)mainSwitchSpecifier
{
  mainSwitchSpecifier = self->_mainSwitchSpecifier;
  if (!mainSwitchSpecifier)
  {
    v4 = TUStringKeyForNetwork();
    v5 = [TPSWiFiCallingStrings localizedStringForKey:v4];
    v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:"setMainSwitchOn:specifier:" get:"isMainSwitchOn:" detail:0 cell:6 edit:0];
    v7 = self->_mainSwitchSpecifier;
    self->_mainSwitchSpecifier = v6;

    [(PSSpecifier *)self->_mainSwitchSpecifier setIdentifier:@"WIFI_CALLING_MAIN_SWITCH"];
    mainSwitchSpecifier = self->_mainSwitchSpecifier;
  }

  return mainSwitchSpecifier;
}

- (PSSpecifier)roamingGroupSpecifier
{
  roamingGroupSpecifier = self->_roamingGroupSpecifier;
  if (!roamingGroupSpecifier)
  {
    v4 = [PSSpecifier groupSpecifierWithID:@"WIFI_CALLING_ROAMING_GROUP"];
    v5 = self->_roamingGroupSpecifier;
    self->_roamingGroupSpecifier = v4;

    roamingGroupSpecifier = self->_roamingGroupSpecifier;
  }

  return roamingGroupSpecifier;
}

- (PSSpecifier)roamingSwitchSpecifier
{
  roamingSwitchSpecifier = self->_roamingSwitchSpecifier;
  if (!roamingSwitchSpecifier)
  {
    v4 = TUStringKeyForNetwork();
    v5 = [TPSWiFiCallingStrings localizedStringForKey:v4];
    v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:"setRoamingSwitchOn:specifier:" get:"isRoamingSwitchOn:" detail:0 cell:6 edit:0];
    v7 = self->_roamingSwitchSpecifier;
    self->_roamingSwitchSpecifier = v6;

    [(PSSpecifier *)self->_roamingSwitchSpecifier setIdentifier:@"WIFI_CALLING_ROAMING_SWITCH"];
    roamingSwitchSpecifier = self->_roamingSwitchSpecifier;
  }

  return roamingSwitchSpecifier;
}

- (PSSpecifier)thumperGroupSpecifier
{
  thumperGroupSpecifier = self->_thumperGroupSpecifier;
  if (!thumperGroupSpecifier)
  {
    v4 = [PSSpecifier groupSpecifierWithID:@"THUMPER_CALLING_GROUP"];
    v5 = self->_thumperGroupSpecifier;
    self->_thumperGroupSpecifier = v4;

    v6 = self->_thumperGroupSpecifier;
    v7 = TUStringKeyForNetwork();
    v8 = [TPSWiFiCallingStrings localizedStringForKey:v7];
    [(PSSpecifier *)v6 setProperty:v8 forKey:PSFooterTextGroupKey];

    thumperGroupSpecifier = self->_thumperGroupSpecifier;
  }

  return thumperGroupSpecifier;
}

- (PSSpecifier)thumperSwitchSpecifier
{
  thumperSwitchSpecifier = self->_thumperSwitchSpecifier;
  if (!thumperSwitchSpecifier)
  {
    v4 = TUStringKeyForNetwork();
    v5 = [TPSWiFiCallingStrings localizedStringForKey:v4];

    v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:"setThumperSwitchOn:specifier:" get:"isThumperSwitchOn:" detail:0 cell:6 edit:0];
    v7 = self->_thumperSwitchSpecifier;
    self->_thumperSwitchSpecifier = v6;

    [(PSSpecifier *)self->_thumperSwitchSpecifier setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    thumperSwitchSpecifier = self->_thumperSwitchSpecifier;
  }

  return thumperSwitchSpecifier;
}

- (id)isMainSwitchOn:(id)a3
{
  v3 = [(TPSWiFiCallingListController *)self callingController];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isWiFiCallingEnabled]);

  return v4;
}

- (void)setMainSwitchOn:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = [a4 propertyForKey:PSControlKey];
  [v7 setOn:objc_msgSend(v6 animated:{"BOOLValue"), 1}];
  v8 = TPSWiFiCallingLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if ([v6 BOOLValue])
    {
      v9 = @"Enabling";
    }

    else
    {
      v9 = @"Disabling";
    }

    v10 = [(TPSWiFiCallingListController *)self subscriptionContext];
    v12 = 138412546;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%@ WiFi Calling services for subscription context %@.", &v12, 0x16u);
  }

  if ([v6 BOOLValue])
  {
    v11 = [(TPSWiFiCallingListController *)self privacyAlertController];
    [(TPSWiFiCallingListController *)self presentViewController:v11 animated:1 completion:0];
  }

  else
  {
    v11 = [(TPSWiFiCallingListController *)self callingController];
    [v11 setWiFiCallingEnabled:0];
  }
}

- (void)updateEmergencyAddress:(id)a3
{
  v4 = [(TPSWiFiCallingListController *)self callingController];
  v5 = [v4 subscriptionCapabilities];
  [v5 invalidateAndRefreshWiFiCallingProvisioningURL];

  v7 = [(TPSWiFiCallingListController *)self emergencyAddressURLController];
  v6 = [v7 updateEmergencyAddressController];
  [(TPSWiFiCallingListController *)self presentOrUpdateViewController:v6];
}

- (id)isRoamingSwitchOn:(id)a3
{
  v3 = [(TPSWiFiCallingListController *)self callingController];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isWiFiCallingRoamingEnabled]);

  return v4;
}

- (void)setRoamingSwitchOn:(id)a3 specifier:(id)a4
{
  v6 = PSControlKey;
  v7 = a3;
  v8 = [a4 propertyForKey:v6];
  [v8 setOn:objc_msgSend(v7 animated:{"BOOLValue"), 1}];
  v9 = [v7 BOOLValue];

  v10 = TPSWiFiCallingLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (v9)
    {
      v11 = @"Enabling";
    }

    else
    {
      v11 = @"Disabling";
    }

    v12 = [(TPSWiFiCallingListController *)self subscriptionContext];
    v14 = 138412546;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%@ WiFi Calling services while roaming for subscription context %@.", &v14, 0x16u);
  }

  v13 = [(TPSWiFiCallingListController *)self callingController];
  [v13 setWiFiCallingRoamingEnabled:v9];
}

- (id)isThumperSwitchOn:(id)a3
{
  v3 = [(TPSWiFiCallingListController *)self callingController];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isThumperCallingEnabled]);

  return v4;
}

- (void)setThumperSwitchOn:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = [a4 propertyForKey:PSControlKey];
  [v7 setOn:objc_msgSend(v6 animated:{"BOOLValue"), 1}];
  v8 = TPSWiFiCallingLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if ([v6 BOOLValue])
    {
      v9 = @"Enabling";
    }

    else
    {
      v9 = @"Disabling";
    }

    v10 = [(TPSWiFiCallingListController *)self subscriptionContext];
    v18 = 138412546;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%@ Thumper Calling services for subscription context %@.", &v18, 0x16u);
  }

  if ([v6 BOOLValue])
  {
    v11 = [(TPSWiFiCallingListController *)self thumperProvisioningURLController];
    v12 = [v11 shouldEnableCapability];

    if (v12)
    {
      v13 = TPSWiFiCallingLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Capability should be enabled, so enabling it directly now", &v18, 2u);
      }

      v14 = [(TPSWiFiCallingListController *)self thumperProvisioningURLController];
      [v14 enableCapability];
    }

    else
    {
      v15 = [(TPSWiFiCallingListController *)self callingController];
      v16 = [v15 subscriptionCapabilities];
      [v16 invalidateAndRefreshThumperCallingProvisioningURL];

      v14 = [(TPSWiFiCallingListController *)self thumperProvisioningURLController];
      v17 = [v14 provisionCapabilityController];
      [(TPSWiFiCallingListController *)self presentOrUpdateViewController:v17];
    }
  }

  else
  {
    v14 = [(TPSWiFiCallingListController *)self callingController];
    [v14 setThumperCallingEnabled:0];
  }
}

- (TPSWiFiCallingController)callingController
{
  callingController = self->_callingController;
  if (!callingController)
  {
    v4 = [(TPSWiFiCallingListController *)self specifier];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v4 propertyForKey:v6];
    v8 = self->_callingController;
    self->_callingController = v7;

    if (self->_callingController)
    {
      goto LABEL_6;
    }

    v9 = [(TPSWiFiCallingListController *)self subscriptionContext];
    if (v9)
    {
      v10 = [[TPSWiFiCallingController alloc] initWithSubscriptionContext:v9];
      v11 = self->_callingController;
      self->_callingController = v10;
    }

    if (self->_callingController)
    {
LABEL_6:
      v12 = +[NSNotificationCenter defaultCenter];
      [v12 addObserver:self selector:"handleTPSWiFiCallingControllerSubscriptionCapabilitiesChangedNotification:" name:@"TPSWiFiCallingControllerSubscriptionCapabilitiesChangedNotification" object:self->_callingController];

      callingController = self->_callingController;
    }

    else
    {
      callingController = 0;
    }
  }

  return callingController;
}

- (BOOL)isEmergencyAddressSpecifierVisible
{
  v2 = [(TPSWiFiCallingListController *)self callingController];
  v3 = [v2 subscriptionCapabilities];

  if ((([v3 isThumperCallingEnabled] & 1) != 0 || objc_msgSend(v3, "isWiFiCallingEnabled")) && objc_msgSend(v3, "wiFiCallingProvisioningStatus") == 3)
  {
    v4 = [v3 wiFiCallingProvisioningURL];
    if (v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = [v3 isWiFiCallingProvisioningURLInvalid];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEmergencyCallingSpecifierVisible
{
  v2 = [(TPSWiFiCallingListController *)self callingController];
  v3 = [v2 supportsWiFiEmergencyCalling];

  return v3;
}

- (BOOL)isThumperSpecifierVisible
{
  v2 = [(TPSWiFiCallingListController *)self callingController];
  v3 = [v2 supportsThumperCalling];

  return v3;
}

- (TPSCloudCallingEmergencyAddressURLController)emergencyAddressURLController
{
  emergencyAddressURLController = self->_emergencyAddressURLController;
  if (!emergencyAddressURLController)
  {
    v4 = [TPSCloudCallingEmergencyAddressURLController alloc];
    v5 = [(TPSWiFiCallingListController *)self subscriptionContext];
    v6 = [v4 initWithSubscriptionContext:v5];
    v7 = self->_emergencyAddressURLController;
    self->_emergencyAddressURLController = v6;

    [(TPSCloudCallingEmergencyAddressURLController *)self->_emergencyAddressURLController setDelegate:self];
    emergencyAddressURLController = self->_emergencyAddressURLController;
  }

  return emergencyAddressURLController;
}

- (TPSCloudCallingThumperProvisioningURLController)thumperProvisioningURLController
{
  thumperProvisioningURLController = self->_thumperProvisioningURLController;
  if (!thumperProvisioningURLController)
  {
    v4 = [TPSCloudCallingThumperProvisioningURLController alloc];
    v5 = [(TPSWiFiCallingListController *)self subscriptionContext];
    v6 = [v4 initWithSubscriptionContext:v5];
    v7 = self->_thumperProvisioningURLController;
    self->_thumperProvisioningURLController = v6;

    [(TPSCloudCallingThumperProvisioningURLController *)self->_thumperProvisioningURLController setDelegate:self];
    thumperProvisioningURLController = self->_thumperProvisioningURLController;
  }

  return thumperProvisioningURLController;
}

- (void)configureCell:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v6;
    v5 = [v4 specifier];
    [(TPSWiFiCallingListController *)self configureCell:v4 forSpecifier:v5];
  }
}

- (void)configureCell:(id)a3 forSpecifier:(id)a4
{
  v5 = [a3 specifier];
  [(TPSWiFiCallingListController *)self mainSwitchSpecifier];
}

- (UIAlertController)privacyAlertController
{
  v3 = [(TPSWiFiCallingListController *)self callingController];
  v4 = [v3 isWiFiCallingCertified];

  if (v4)
  {
    v5 = [(TPSWiFiCallingListController *)self callingController];
    v6 = [v5 supportsEncryptedIdentity];
    v7 = @"WIFI_CALLING_CONSENT_ALERT_MESSAGE_WITHOUT_CARRIER_ENCRYPTION";
    if (v6)
    {
      v7 = @"WIFI_CALLING_CONSENT_ALERT_MESSAGE_WITH_CARRIER_ENCRYPTION";
    }

    v8 = v7;
  }

  else
  {
    v8 = @"WIFI_CALLING_CONSENT_ALERT_MESSAGE_UNCERTIFIED_CARRIER";
  }

  v9 = TUStringKeyForNetwork();
  v10 = [TPSWiFiCallingStrings localizedStringForKey:v9];

  v11 = TUStringKeyForNetwork();
  v12 = [TPSWiFiCallingStrings localizedStringForKey:v11];

  v13 = [UIAlertController alertControllerWithTitle:v12 message:v10 preferredStyle:1];
  v14 = [TPSWiFiCallingStrings localizedStringForKey:@"WIFI_CALLING_CONSENT_ALERT_CANCEL"];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_393C;
  v20[3] = &unk_8228;
  v20[4] = self;
  v15 = [UIAlertAction actionWithTitle:v14 style:1 handler:v20];
  [v13 addAction:v15];
  v16 = [TPSWiFiCallingStrings localizedStringForKey:@"WIFI_CALLING_CONSENT_ALERT_ENABLE"];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_39D0;
  v19[3] = &unk_8228;
  v19[4] = self;
  v17 = [UIAlertAction actionWithTitle:v16 style:0 handler:v19];

  [v13 addAction:v17];

  return v13;
}

- (void)handleTPSWiFiCallingControllerSubscriptionCapabilitiesChangedNotification:(id)a3
{
  v4 = a3;
  v5 = TPSWiFiCallingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = objc_opt_class();
    v9 = 2112;
    v10 = v4;
    v6 = v8;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@.", &v7, 0x16u);
  }

  [(TPSWiFiCallingListController *)self reloadSpecifiers];
}

- (void)didChangeWiFiCallingProvisionalURLForSenderIdentityWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(TPSWiFiCallingListController *)self subscriptionContext];
  v6 = [v5 uuid];
  v7 = [v4 isEqual:v6];

  if (v7)
  {
    v8 = TPSWiFiCallingLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(TPSWiFiCallingListController *)self subscriptionContext];
      v17 = 138412290;
      v18 = v9;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "WiFi calling provisioning URL changed for subscription context %@.", &v17, 0xCu);
    }

    v10 = [(TPSWiFiCallingListController *)self presentedViewController];

    if (v10)
    {
      v11 = [(TPSWiFiCallingListController *)self callingController];
      v12 = [v11 subscriptionCapabilities];
      v13 = [v12 wiFiCallingProvisioningStatus];

      if (!v13)
      {
        v14 = TPSWiFiCallingLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v17) = 0;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "We have presented a view controller and WiFi provisioning status is not-allowed; update the presented controller.", &v17, 2u);
        }

        v15 = [(TPSWiFiCallingListController *)self emergencyAddressURLController];
        v16 = [v15 provisionCapabilityController];
        [(TPSWiFiCallingListController *)self presentOrUpdateViewController:v16];
      }
    }
  }
}

@end