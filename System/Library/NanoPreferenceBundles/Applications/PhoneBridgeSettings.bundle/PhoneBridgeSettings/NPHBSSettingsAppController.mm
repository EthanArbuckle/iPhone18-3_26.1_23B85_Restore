@interface NPHBSSettingsAppController
+ (BOOL)_activeWatchHasTelephony;
- (BOOL)suppressAllMirrorSpecifiers;
- (id)_activeWatchIsProvisioned;
- (id)_carrierDirectCallingAllowed:(id)allowed;
- (id)_incomingCallSoundEnabled:(id)enabled;
- (id)_incomingCallVibrationEnabled:(id)enabled;
- (id)applicationGroupSpecifiers;
- (id)localizedMirroringDetailFooter;
- (id)localizedPaneTitle;
- (void)_cellularPlanInfoDidChange:(id)change;
- (void)_removeThumperItems;
- (void)_setCarrierDirectCallingAllowed:(id)allowed specifier:(id)specifier;
- (void)_setIncomingCallSoundEnabled:(id)enabled specifier:(id)specifier;
- (void)_setIncomingCallVibrationEnabled:(id)enabled specifier:(id)specifier;
- (void)_updateWiFiCallingFooter:(id)footer accountsSupported:(BOOL)supported wifiString:(id)string;
- (void)openFaceTimeSettings;
- (void)openPhoneWiFiCallingSettings;
- (void)prepareSpecifiersMetadata;
@end

@implementation NPHBSSettingsAppController

- (id)localizedPaneTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"BRIDGE_APP_TITLE" value:&stru_8AC0 table:0];

  return v3;
}

- (id)localizedMirroringDetailFooter
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"MIRROR_DETAIL_FORMAT" value:&stru_8AC0 table:0];

  LODWORD(v3) = [(NPHBSSettingsAppController *)self showAlerts];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = v5;
  if (v3)
  {
    v7 = @"SHOW_ALERTS";
  }

  else
  {
    v7 = @"DONT_SHOW_ALERTS";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_8AC0 table:0];

  v9 = [NSString stringWithValidatedFormat:v4 validFormatSpecifiers:@"%@" error:0, v8];

  return v9;
}

- (BOOL)suppressAllMirrorSpecifiers
{
  bbSectionInfo = [(NPHBSSettingsAppController *)self bbSectionInfo];
  allowsNotifications = [bbSectionInfo allowsNotifications];

  return allowsNotifications ^ 1;
}

- (void)prepareSpecifiersMetadata
{
  if (!self->_requestedRequiredInfo)
  {
    self->_requestedRequiredInfo = 1;
    v4 = +[NSNotificationCenter defaultCenter];
    v5 = NPHCellularPlanInfoDidChangeNotification;
    v6 = +[NPHCellularBridgeUIManager sharedInstance];
    [v4 addObserver:self selector:"_cellularPlanInfoDidChange:" name:v5 object:v6];

    v7 = +[NPHCellularBridgeUIManager sharedInstance];
    [v7 updateCellularPlansWithFetch:1];
  }
}

- (id)applicationGroupSpecifiers
{
  v3 = NPHBSFrameworkBundle();
  v4 = [(NPHBSSettingsAppController *)self loadSpecifiersFromPlistName:@"PhoneBridgeSettings" target:self bundle:v3];
  appGroupSpecifiers = self->_appGroupSpecifiers;
  self->_appGroupSpecifiers = v4;

  v6 = MGGetBoolAnswer();
  v7 = @"WIFI";
  if (v6)
  {
    v7 = @"WLAN";
  }

  v8 = v7;
  v9 = +[TUCallCapabilities accountsMatchForSecondaryCalling];
  v10 = [(NSArray *)self->_appGroupSpecifiers specifierForID:@"carrier_direct_calling_details_id"];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [NSString stringWithFormat:@"THUMPER_CALLING_ALLOWED_%@", v8];
  v13 = [v11 localizedStringForKey:v12 value:&stru_8AC0 table:0];
  [v10 setName:v13];

  v14 = [NSNumber numberWithBool:v9];
  [v10 setObject:v14 forKeyedSubscript:PSEnabledKey];

  if ((v9 & 1) == 0 && v10)
  {
    *&v10[OBJC_IVAR___PSSpecifier_getter] = 0;
    *&v10[OBJC_IVAR___PSSpecifier_setter] = 0;
  }

  v15 = [(NSArray *)self->_appGroupSpecifiers specifierForID:@"carrier_direct_calling_group_id"];
  [(NPHBSSettingsAppController *)self _updateWiFiCallingFooter:v15 accountsSupported:v9 wifiString:v8];
  if ((+[TUCallCapabilities isThumperCallingEnabled]& 1) != 0)
  {
    if ([objc_opt_class() _activeWatchHasTelephony])
    {
      _activeWatchIsProvisioned = [(NPHBSSettingsAppController *)self _activeWatchIsProvisioned];
      v17 = _activeWatchIsProvisioned;
      if (_activeWatchIsProvisioned)
      {
        if ([_activeWatchIsProvisioned BOOLValue])
        {
          [(NPHBSSettingsAppController *)self _removeThumperItems];
        }
      }

      else
      {
        [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:PSControlIsLoadingKey];
      }
    }
  }

  else
  {
    [(NPHBSSettingsAppController *)self _removeThumperItems];
  }

  if ([(NPHBSSettingsAppController *)self settingsMode])
  {
    v18 = 0;
  }

  else
  {
    v18 = self->_appGroupSpecifiers;
  }

  return v18;
}

- (void)_removeThumperItems
{
  v3 = [(NSArray *)self->_appGroupSpecifiers indexOfSpecifierWithID:@"carrier_direct_calling_group_id"];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSArray *)self->_appGroupSpecifiers removeObjectAtIndex:v3];
  }

  v4 = [(NSArray *)self->_appGroupSpecifiers indexOfSpecifierWithID:@"carrier_direct_calling_details_id"];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    appGroupSpecifiers = self->_appGroupSpecifiers;

    [(NSArray *)appGroupSpecifiers removeObjectAtIndex:v5];
  }
}

- (void)_cellularPlanInfoDidChange:(id)change
{
  changeCopy = change;
  v5 = nph_general_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[NPHBSSettingsAppController _cellularPlanInfoDidChange:]";
    v9 = 2112;
    v10 = changeCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%s - notification: %@", buf, 0x16u);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_2B94;
  v6[3] = &unk_8500;
  v6[4] = self;
  nph_ensure_on_main_queue(v6);
}

- (id)_activeWatchIsProvisioned
{
  v2 = +[NPHCellularBridgeUIManager sharedInstance];
  cellularPlans = [v2 cellularPlans];
  if (cellularPlans)
  {
    v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 cellularPlanIsSetUp]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_updateWiFiCallingFooter:(id)footer accountsSupported:(BOOL)supported wifiString:(id)string
{
  supportedCopy = supported;
  footerCopy = footer;
  stringCopy = string;
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [footerCopy setObject:v10 forKeyedSubscript:PSFooterCellClassGroupKey];

  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = v11;
  if (supportedCopy)
  {
    v13 = [v11 localizedStringForKey:@"THUMPER_CALLING_EMERGENCY_ADDRESS_UPDATE" value:&stru_8AC0 table:0];

    v14 = [NSBundle bundleForClass:objc_opt_class()];
    stringCopy = [NSString stringWithFormat:@"THUMPER_CALLING_PHONE_SETTINGS_%@", stringCopy];

    v16 = [v14 localizedStringForKey:stringCopy value:&stru_8AC0 table:0];

    v17 = @"openPhoneWiFiCallingSettings";
  }

  else
  {
    stringCopy2 = [NSString stringWithFormat:@"THUMPER_CALLING_NEED_ACCOUNTS_SUPPORT_%@", stringCopy];

    v13 = [v12 localizedStringForKey:stringCopy2 value:&stru_8AC0 table:0];

    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v16 = [v14 localizedStringForKey:@"THUMPER_CALLING_FACETIME_SETTINGS" value:&stru_8AC0 table:0];
    v17 = @"openFaceTimeSettings";
  }

  [footerCopy setObject:v17 forKeyedSubscript:PSFooterHyperlinkViewActionKey];
  v19 = [NSString stringWithValidatedFormat:v13 validFormatSpecifiers:@"%@" error:0, v16];

  v20 = [v19 rangeOfString:v16 options:4];
  v22 = v21;
  [footerCopy setObject:v19 forKeyedSubscript:PSFooterHyperlinkViewTitleKey];
  v27.location = v20;
  v27.length = v22;
  v23 = NSStringFromRange(v27);
  [footerCopy setObject:v23 forKeyedSubscript:PSFooterHyperlinkViewLinkRangeKey];

  v24 = [NSValue valueWithNonretainedObject:self];
  [footerCopy setObject:v24 forKeyedSubscript:PSFooterHyperlinkViewTargetKey];
}

- (void)openFaceTimeSettings
{
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  v2 = +[PSFaceTimeSettingsDetail preferencesURL];
  [v3 openSensitiveURL:v2 withOptions:0];
}

- (void)openPhoneWiFiCallingSettings
{
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  v2 = [NSURL URLWithString:@"prefs:root=Phone&path=com.apple.settings.WiFiCallingSettingsBundle"];
  [v3 openSensitiveURL:v2 withOptions:0];
}

+ (BOOL)_activeWatchHasTelephony
{
  v2 = +[PDRDevice activeDevice];
  v3 = [v2 supportsCapability:1252261691];

  return v3;
}

- (void)_setIncomingCallSoundEnabled:(id)enabled specifier:(id)specifier
{
  if ([enabled BOOLValue])
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = +[TLToneManager sharedToneManager];
  [v5 _setCurrentToneWatchAlertPolicy:v4 forAlertType:1];
}

- (id)_incomingCallSoundEnabled:(id)enabled
{
  v3 = +[TLToneManager sharedToneManager];
  v4 = [v3 _currentToneWatchAlertPolicyForAlertType:1];

  if (!v4)
  {
    v5 = +[TLToneManager sharedToneManager];
    [v5 _setCurrentToneWatchAlertPolicy:3 forAlertType:1];

    v6 = +[TLToneManager sharedToneManager];
    v4 = [v6 _currentToneWatchAlertPolicyForAlertType:1];
  }

  return [NSNumber numberWithBool:v4 != &dword_0 + 2];
}

- (void)_setIncomingCallVibrationEnabled:(id)enabled specifier:(id)specifier
{
  if ([enabled BOOLValue])
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = +[TLVibrationManager sharedVibrationManager];
  [v5 _setCurrentVibrationWatchAlertPolicy:v4 forAlertType:1];
}

- (id)_incomingCallVibrationEnabled:(id)enabled
{
  v3 = +[TLVibrationManager sharedVibrationManager];
  v4 = [v3 _currentVibrationWatchAlertPolicyForAlertType:1];

  if (!v4)
  {
    v5 = +[TLVibrationManager sharedVibrationManager];
    [v5 _setCurrentVibrationWatchAlertPolicy:3 forAlertType:1];

    v6 = +[TLVibrationManager sharedVibrationManager];
    v4 = [v6 _currentVibrationWatchAlertPolicyForAlertType:1];
  }

  return [NSNumber numberWithBool:v4 != &dword_0 + 2];
}

- (void)_setCarrierDirectCallingAllowed:(id)allowed specifier:(id)specifier
{
  bOOLValue = [allowed BOOLValue];

  [TUCallCapabilities setThumperCallingAllowedOnDefaultPairedSecondaryDevice:bOOLValue];
}

- (id)_carrierDirectCallingAllowed:(id)allowed
{
  v3 = +[TUCallCapabilities isThumperCallingAllowedOnDefaultPairedSecondaryDevice];

  return [NSNumber numberWithBool:v3];
}

@end