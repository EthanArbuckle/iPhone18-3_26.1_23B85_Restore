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
- (id)isMainSwitchOn:(id)on;
- (id)isRoamingSwitchOn:(id)on;
- (id)isThumperSwitchOn:(id)on;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)configureCell:(id)cell;
- (void)configureCell:(id)cell forSpecifier:(id)specifier;
- (void)didChangeWiFiCallingProvisionalURLForSenderIdentityWithUUID:(id)d;
- (void)handleTPSWiFiCallingControllerSubscriptionCapabilitiesChangedNotification:(id)notification;
- (void)setMainSwitchOn:(id)on specifier:(id)specifier;
- (void)setRoamingSwitchOn:(id)on specifier:(id)specifier;
- (void)setThumperSwitchOn:(id)on specifier:(id)specifier;
- (void)updateEmergencyAddress:(id)address;
@end

@implementation TPSWiFiCallingListController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->TPSCloudCallingListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    callingController = [(TPSWiFiCallingListController *)self callingController];
    subscriptionCapabilities = [callingController subscriptionCapabilities];

    if (!subscriptionCapabilities)
    {
LABEL_27:

      v4 = *&self->TPSCloudCallingListController_opaque[v3];
      goto LABEL_28;
    }

    v7 = +[NSMutableArray array];
    callingController2 = [(TPSWiFiCallingListController *)self callingController];
    localizedCarrierName = [callingController2 localizedCarrierName];

    if (![subscriptionCapabilities supportsWiFiCalling])
    {
LABEL_24:
      if ([(TPSWiFiCallingListController *)self isThumperSpecifierVisible])
      {
        thumperGroupSpecifier = [(TPSWiFiCallingListController *)self thumperGroupSpecifier];
        [v7 addObject:thumperGroupSpecifier];

        thumperSwitchSpecifier = [(TPSWiFiCallingListController *)self thumperSwitchSpecifier];
        [v7 addObject:thumperSwitchSpecifier];
      }

      v26 = [v7 copy];
      v27 = *&self->TPSCloudCallingListController_opaque[v3];
      *&self->TPSCloudCallingListController_opaque[v3] = v26;

      goto LABEL_27;
    }

    mainGroupSpecifier = [(TPSWiFiCallingListController *)self mainGroupSpecifier];
    [v7 addObject:mainGroupSpecifier];

    mainSwitchSpecifier = [(TPSWiFiCallingListController *)self mainSwitchSpecifier];
    [v7 addObject:mainSwitchSpecifier];

    if ([subscriptionCapabilities supportsWiFiCallingRoaming])
    {
      roamingGroupSpecifier = [(TPSWiFiCallingListController *)self roamingGroupSpecifier];
      [v7 addObject:roamingGroupSpecifier];

      roamingSwitchSpecifier = [(TPSWiFiCallingListController *)self roamingSwitchSpecifier];
      [v7 addObject:roamingSwitchSpecifier];
    }

    if ([subscriptionCapabilities wiFiCallingProvisioningStatus] == 1)
    {
      goto LABEL_7;
    }

    if ([(TPSWiFiCallingListController *)self isEmergencyCallingSpecifierVisible])
    {
      if ([(TPSWiFiCallingListController *)self isEmergencyAddressSpecifierVisible])
      {
        emergencyAddressGroupSpecifier = [(TPSWiFiCallingListController *)self emergencyAddressGroupSpecifier];
        [v7 addObject:emergencyAddressGroupSpecifier];

        emergencyAddressButtonSpecifier = [(TPSWiFiCallingListController *)self emergencyAddressButtonSpecifier];
        [v7 addObject:emergencyAddressButtonSpecifier];

        if ([localizedCarrierName length])
        {
          v18 = TUStringKeyForNetwork();
          v19 = [TPSWiFiCallingStrings localizedStringForKey:v18];
          v15 = [NSString stringWithFormat:v19, localizedCarrierName];
        }

        else
        {
          v18 = TUStringKeyForNetwork();
          v15 = [TPSWiFiCallingStrings localizedStringForKey:v18];
        }

        v21 = TUStringKeyForNetwork();
        v14 = [TPSWiFiCallingStrings localizedStringForKey:v21];

        emergencyAddressGroupSpecifier2 = [(TPSWiFiCallingListController *)self emergencyAddressGroupSpecifier];
        [emergencyAddressGroupSpecifier2 setProperty:v14 forKey:PSFooterTextGroupKey];
        goto LABEL_20;
      }

      if ([localizedCarrierName length])
      {
        v14 = TUStringKeyForNetwork();
        emergencyAddressGroupSpecifier2 = [TPSWiFiCallingStrings localizedStringForKey:v14];
        [NSString stringWithFormat:emergencyAddressGroupSpecifier2, localizedCarrierName, v29];
        goto LABEL_16;
      }
    }

    else if ([localizedCarrierName length])
    {
      v14 = TUStringKeyForNetwork();
      emergencyAddressGroupSpecifier2 = [TPSWiFiCallingStrings localizedStringForKey:v14];
      [NSString stringWithFormat:emergencyAddressGroupSpecifier2, localizedCarrierName, localizedCarrierName];
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
      mainGroupSpecifier2 = [(TPSWiFiCallingListController *)self mainGroupSpecifier];
      [mainGroupSpecifier2 setProperty:v15 forKey:PSFooterTextGroupKey];
    }

    mainGroupSpecifier3 = [(TPSWiFiCallingListController *)self mainGroupSpecifier];
    [(TPSWiFiCallingListController *)self appendAboutWiFiCallingFooterToGroupSpecifier:mainGroupSpecifier3];

    goto LABEL_24;
  }

LABEL_28:

  return v4;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v7.receiver = self;
  v7.super_class = TPSWiFiCallingListController;
  v5 = [(TPSWiFiCallingListController *)&v7 tableView:view cellForRowAtIndexPath:path];
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

- (id)isMainSwitchOn:(id)on
{
  callingController = [(TPSWiFiCallingListController *)self callingController];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [callingController isWiFiCallingEnabled]);

  return v4;
}

- (void)setMainSwitchOn:(id)on specifier:(id)specifier
{
  onCopy = on;
  v7 = [specifier propertyForKey:PSControlKey];
  [v7 setOn:objc_msgSend(onCopy animated:{"BOOLValue"), 1}];
  v8 = TPSWiFiCallingLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if ([onCopy BOOLValue])
    {
      v9 = @"Enabling";
    }

    else
    {
      v9 = @"Disabling";
    }

    subscriptionContext = [(TPSWiFiCallingListController *)self subscriptionContext];
    v12 = 138412546;
    v13 = v9;
    v14 = 2112;
    v15 = subscriptionContext;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%@ WiFi Calling services for subscription context %@.", &v12, 0x16u);
  }

  if ([onCopy BOOLValue])
  {
    privacyAlertController = [(TPSWiFiCallingListController *)self privacyAlertController];
    [(TPSWiFiCallingListController *)self presentViewController:privacyAlertController animated:1 completion:0];
  }

  else
  {
    privacyAlertController = [(TPSWiFiCallingListController *)self callingController];
    [privacyAlertController setWiFiCallingEnabled:0];
  }
}

- (void)updateEmergencyAddress:(id)address
{
  callingController = [(TPSWiFiCallingListController *)self callingController];
  subscriptionCapabilities = [callingController subscriptionCapabilities];
  [subscriptionCapabilities invalidateAndRefreshWiFiCallingProvisioningURL];

  emergencyAddressURLController = [(TPSWiFiCallingListController *)self emergencyAddressURLController];
  updateEmergencyAddressController = [emergencyAddressURLController updateEmergencyAddressController];
  [(TPSWiFiCallingListController *)self presentOrUpdateViewController:updateEmergencyAddressController];
}

- (id)isRoamingSwitchOn:(id)on
{
  callingController = [(TPSWiFiCallingListController *)self callingController];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [callingController isWiFiCallingRoamingEnabled]);

  return v4;
}

- (void)setRoamingSwitchOn:(id)on specifier:(id)specifier
{
  v6 = PSControlKey;
  onCopy = on;
  v8 = [specifier propertyForKey:v6];
  [v8 setOn:objc_msgSend(onCopy animated:{"BOOLValue"), 1}];
  bOOLValue = [onCopy BOOLValue];

  v10 = TPSWiFiCallingLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (bOOLValue)
    {
      v11 = @"Enabling";
    }

    else
    {
      v11 = @"Disabling";
    }

    subscriptionContext = [(TPSWiFiCallingListController *)self subscriptionContext];
    v14 = 138412546;
    v15 = v11;
    v16 = 2112;
    v17 = subscriptionContext;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%@ WiFi Calling services while roaming for subscription context %@.", &v14, 0x16u);
  }

  callingController = [(TPSWiFiCallingListController *)self callingController];
  [callingController setWiFiCallingRoamingEnabled:bOOLValue];
}

- (id)isThumperSwitchOn:(id)on
{
  callingController = [(TPSWiFiCallingListController *)self callingController];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [callingController isThumperCallingEnabled]);

  return v4;
}

- (void)setThumperSwitchOn:(id)on specifier:(id)specifier
{
  onCopy = on;
  v7 = [specifier propertyForKey:PSControlKey];
  [v7 setOn:objc_msgSend(onCopy animated:{"BOOLValue"), 1}];
  v8 = TPSWiFiCallingLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if ([onCopy BOOLValue])
    {
      v9 = @"Enabling";
    }

    else
    {
      v9 = @"Disabling";
    }

    subscriptionContext = [(TPSWiFiCallingListController *)self subscriptionContext];
    v18 = 138412546;
    v19 = v9;
    v20 = 2112;
    v21 = subscriptionContext;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%@ Thumper Calling services for subscription context %@.", &v18, 0x16u);
  }

  if ([onCopy BOOLValue])
  {
    thumperProvisioningURLController = [(TPSWiFiCallingListController *)self thumperProvisioningURLController];
    shouldEnableCapability = [thumperProvisioningURLController shouldEnableCapability];

    if (shouldEnableCapability)
    {
      v13 = TPSWiFiCallingLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Capability should be enabled, so enabling it directly now", &v18, 2u);
      }

      thumperProvisioningURLController2 = [(TPSWiFiCallingListController *)self thumperProvisioningURLController];
      [thumperProvisioningURLController2 enableCapability];
    }

    else
    {
      callingController = [(TPSWiFiCallingListController *)self callingController];
      subscriptionCapabilities = [callingController subscriptionCapabilities];
      [subscriptionCapabilities invalidateAndRefreshThumperCallingProvisioningURL];

      thumperProvisioningURLController2 = [(TPSWiFiCallingListController *)self thumperProvisioningURLController];
      provisionCapabilityController = [thumperProvisioningURLController2 provisionCapabilityController];
      [(TPSWiFiCallingListController *)self presentOrUpdateViewController:provisionCapabilityController];
    }
  }

  else
  {
    thumperProvisioningURLController2 = [(TPSWiFiCallingListController *)self callingController];
    [thumperProvisioningURLController2 setThumperCallingEnabled:0];
  }
}

- (TPSWiFiCallingController)callingController
{
  callingController = self->_callingController;
  if (!callingController)
  {
    specifier = [(TPSWiFiCallingListController *)self specifier];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [specifier propertyForKey:v6];
    v8 = self->_callingController;
    self->_callingController = v7;

    if (self->_callingController)
    {
      goto LABEL_6;
    }

    subscriptionContext = [(TPSWiFiCallingListController *)self subscriptionContext];
    if (subscriptionContext)
    {
      v10 = [[TPSWiFiCallingController alloc] initWithSubscriptionContext:subscriptionContext];
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
  callingController = [(TPSWiFiCallingListController *)self callingController];
  subscriptionCapabilities = [callingController subscriptionCapabilities];

  if ((([subscriptionCapabilities isThumperCallingEnabled] & 1) != 0 || objc_msgSend(subscriptionCapabilities, "isWiFiCallingEnabled")) && objc_msgSend(subscriptionCapabilities, "wiFiCallingProvisioningStatus") == 3)
  {
    wiFiCallingProvisioningURL = [subscriptionCapabilities wiFiCallingProvisioningURL];
    if (wiFiCallingProvisioningURL)
    {
      isWiFiCallingProvisioningURLInvalid = 1;
    }

    else
    {
      isWiFiCallingProvisioningURLInvalid = [subscriptionCapabilities isWiFiCallingProvisioningURLInvalid];
    }
  }

  else
  {
    isWiFiCallingProvisioningURLInvalid = 0;
  }

  return isWiFiCallingProvisioningURLInvalid;
}

- (BOOL)isEmergencyCallingSpecifierVisible
{
  callingController = [(TPSWiFiCallingListController *)self callingController];
  supportsWiFiEmergencyCalling = [callingController supportsWiFiEmergencyCalling];

  return supportsWiFiEmergencyCalling;
}

- (BOOL)isThumperSpecifierVisible
{
  callingController = [(TPSWiFiCallingListController *)self callingController];
  supportsThumperCalling = [callingController supportsThumperCalling];

  return supportsThumperCalling;
}

- (TPSCloudCallingEmergencyAddressURLController)emergencyAddressURLController
{
  emergencyAddressURLController = self->_emergencyAddressURLController;
  if (!emergencyAddressURLController)
  {
    v4 = [TPSCloudCallingEmergencyAddressURLController alloc];
    subscriptionContext = [(TPSWiFiCallingListController *)self subscriptionContext];
    v6 = [v4 initWithSubscriptionContext:subscriptionContext];
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
    subscriptionContext = [(TPSWiFiCallingListController *)self subscriptionContext];
    v6 = [v4 initWithSubscriptionContext:subscriptionContext];
    v7 = self->_thumperProvisioningURLController;
    self->_thumperProvisioningURLController = v6;

    [(TPSCloudCallingThumperProvisioningURLController *)self->_thumperProvisioningURLController setDelegate:self];
    thumperProvisioningURLController = self->_thumperProvisioningURLController;
  }

  return thumperProvisioningURLController;
}

- (void)configureCell:(id)cell
{
  cellCopy = cell;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = cellCopy;
    specifier = [v4 specifier];
    [(TPSWiFiCallingListController *)self configureCell:v4 forSpecifier:specifier];
  }
}

- (void)configureCell:(id)cell forSpecifier:(id)specifier
{
  specifier = [cell specifier];
  [(TPSWiFiCallingListController *)self mainSwitchSpecifier];
}

- (UIAlertController)privacyAlertController
{
  callingController = [(TPSWiFiCallingListController *)self callingController];
  isWiFiCallingCertified = [callingController isWiFiCallingCertified];

  if (isWiFiCallingCertified)
  {
    callingController2 = [(TPSWiFiCallingListController *)self callingController];
    supportsEncryptedIdentity = [callingController2 supportsEncryptedIdentity];
    v7 = @"WIFI_CALLING_CONSENT_ALERT_MESSAGE_WITHOUT_CARRIER_ENCRYPTION";
    if (supportsEncryptedIdentity)
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

- (void)handleTPSWiFiCallingControllerSubscriptionCapabilitiesChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = TPSWiFiCallingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = objc_opt_class();
    v9 = 2112;
    v10 = notificationCopy;
    v6 = v8;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@.", &v7, 0x16u);
  }

  [(TPSWiFiCallingListController *)self reloadSpecifiers];
}

- (void)didChangeWiFiCallingProvisionalURLForSenderIdentityWithUUID:(id)d
{
  dCopy = d;
  subscriptionContext = [(TPSWiFiCallingListController *)self subscriptionContext];
  uuid = [subscriptionContext uuid];
  v7 = [dCopy isEqual:uuid];

  if (v7)
  {
    v8 = TPSWiFiCallingLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      subscriptionContext2 = [(TPSWiFiCallingListController *)self subscriptionContext];
      v17 = 138412290;
      v18 = subscriptionContext2;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "WiFi calling provisioning URL changed for subscription context %@.", &v17, 0xCu);
    }

    presentedViewController = [(TPSWiFiCallingListController *)self presentedViewController];

    if (presentedViewController)
    {
      callingController = [(TPSWiFiCallingListController *)self callingController];
      subscriptionCapabilities = [callingController subscriptionCapabilities];
      wiFiCallingProvisioningStatus = [subscriptionCapabilities wiFiCallingProvisioningStatus];

      if (!wiFiCallingProvisioningStatus)
      {
        v14 = TPSWiFiCallingLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v17) = 0;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "We have presented a view controller and WiFi provisioning status is not-allowed; update the presented controller.", &v17, 2u);
        }

        emergencyAddressURLController = [(TPSWiFiCallingListController *)self emergencyAddressURLController];
        provisionCapabilityController = [emergencyAddressURLController provisionCapabilityController];
        [(TPSWiFiCallingListController *)self presentOrUpdateViewController:provisionCapabilityController];
      }
    }
  }
}

@end