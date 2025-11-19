@interface BCSURLAction
- (BCSURLAction)initWithData:(id)a3 codePayload:(id)a4;
- (BOOL)_allowAppClipCodeUniversalLinkFallback;
- (BOOL)_isCodeFromQRScanner;
- (BOOL)_isVisualCode;
- (BOOL)_shouldBlockHandlingURL:(id)a3;
- (BOOL)_shouldOpenInAppForAppLink:(id)a3;
- (BOOL)_tryDetermineActionabilityForSpecialCodesFromQRScannerWithCompletionHandler:(id)a3;
- (BOOL)_willOpenInSafari;
- (BOOL)hasSensitiveURL;
- (BOOL)isAMSAction;
- (BOOL)isAirplayPairingAction;
- (BOOL)isPasskeyAction;
- (BOOL)mustOpenAppLinkInApp;
- (id)_actionDescriptionForAppClip;
- (id)_actionDescriptionForURL:(id)a3 application:(id)a4 shouldShowHostNameForSafariURL:(BOOL)a5;
- (id)_actionDescriptionWithoutTargetApplicationForURL:(id)a3;
- (id)_actionPickerItemsForAppClip;
- (id)_actionPickerItemsForLockScreenVisibleApps;
- (id)_actionPickerItemsForUnlockedAppLinks;
- (id)_additionalActionPickerItems;
- (id)_appclipLaunchReason;
- (id)_commonActionPickerItemsForURL;
- (id)_menuElementForActionPicker:(id)a3;
- (id)_requiresOpenInTargetApplication;
- (id)actionIconSystemImageName;
- (id)actionPickerItems;
- (id)contentPreviewString;
- (id)debugDescriptionExtraInfoDictionary;
- (id)defaultActionTargetApplicationBundleIdentifier;
- (id)localizedDefaultActionDescription;
- (id)localizedDefaultActionTitle;
- (id)menuElements;
- (id)preferredBundleID;
- (id)shortDescription;
- (id)url;
- (unint64_t)menuElementsCount;
- (void)_appclipLaunchReason;
- (void)_didActivateBarcodeWithURLPayload;
- (void)_openActionInTargetApplicationWithOptions:(id)a3;
- (void)_queryApplicationRecordForURL:(id)a3 completionHandler:(id)a4;
- (void)_resolveAppClipForURL:(id)a3 completion:(id)a4;
- (void)_resolveTargetApplicationForURL:(id)a3 completionHandler:(id)a4;
- (void)determineActionabilityWithCompletionHandler:(id)a3;
- (void)performAction;
- (void)performActionWithOptions:(id)a3 completion:(id)a4;
- (void)performDefaultActionWithFBOptions:(id)a3;
- (void)shortDescription;
@end

@implementation BCSURLAction

- (BCSURLAction)initWithData:(id)a3 codePayload:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11.receiver = self;
  v11.super_class = BCSURLAction;
  v8 = [(BCSAction *)&v11 initWithData:v6 codePayload:v7];
  if (!v8)
  {
    self = 0;
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  self = v8;
  v9 = self;
LABEL_6:

  return v9;
}

- (id)url
{
  v2 = [(BCSAction *)self data];
  v3 = [v2 url];

  return v3;
}

- (BOOL)isAirplayPairingAction
{
  v2 = [(BCSURLAction *)self targetApplication];
  v3 = [v2 bundleIdentifier];
  if ([v3 isEqualToString:@"com.apple.APSUIApp"])
  {
    v4 = _bcs_airplayInWifiEnabled();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)localizedDefaultActionTitle
{
  if ([(BCSURLAction *)self _hasCellularPlanAction])
  {
    v3 = [(CTCellularPlanQRCodeAction *)self->_cellularPlanAction title];
  }

  else if ([(BCSURLAction *)self isAirplayPairingAction])
  {
    v3 = _BCSLocalizedString(@"Connect", &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
  }

  else
  {
    v5.receiver = self;
    v5.super_class = BCSURLAction;
    v3 = [(BCSAction *)&v5 localizedDefaultActionTitle];
  }

  return v3;
}

- (id)localizedDefaultActionDescription
{
  if ([(BCSURLAction *)self _hasCellularPlanAction])
  {
    v3 = [(CTCellularPlanQRCodeAction *)self->_cellularPlanAction message];
LABEL_13:
    v4 = v3;
    goto LABEL_14;
  }

  if ([(BCSURLAction *)self isAMSAction])
  {
    v3 = _BCSLocalizedString(@"Tap here to learn more", &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
    goto LABEL_13;
  }

  if ([(BCSURLAction *)self isPasskeyAssertionAction])
  {
    v3 = [(BCSURLAction *)self _passkeyAssertionActionDescription];
    goto LABEL_13;
  }

  if ([(BCSURLAction *)self isPasskeyRegistrationAction])
  {
    v3 = [(BCSURLAction *)self _passkeyRegistrationActionDescription];
    goto LABEL_13;
  }

  if ([(BCSURLAction *)self isApplePayInitiateAction])
  {
    v3 = [(BCSURLAction *)self _applePayActionDescription];
    goto LABEL_13;
  }

  if ([(BCSURLAction *)self isDigitalIdentityCredentialPresentationAction])
  {
    v3 = [(BCSURLAction *)self _digitalIdentityCredentialPresentationDescription];
    goto LABEL_13;
  }

  v6 = [(BCSURLAction *)self targetApplication];
  if (v6)
  {
    v7 = [(BCSURLAction *)self url];
    v8 = [(BCSURLAction *)self _actionDescriptionForURL:v7 application:v6 shouldShowHostNameForSafariURL:1];
  }

  else
  {
    if (!self->_deviceDataIsUnavailable)
    {
      v4 = &stru_2853953A0;
      goto LABEL_22;
    }

    v7 = [(BCSURLAction *)self url];
    v8 = [(BCSURLAction *)self _actionDescriptionWithoutTargetApplicationForURL:v7];
  }

  v4 = v8;

LABEL_22:
LABEL_14:

  return v4;
}

- (id)defaultActionTargetApplicationBundleIdentifier
{
  if ([(BCSURLAction *)self _hasCellularPlanAction])
  {
    v3 = @"com.apple.Preferences.cellularData";
  }

  else
  {
    v4 = [(BCSURLAction *)self targetApplication];
    v3 = [v4 bundleIdentifier];
  }

  return v3;
}

- (id)debugDescriptionExtraInfoDictionary
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = [(BCSURLAction *)self targetApplication];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 bundleIdentifier];
  }

  else
  {
    v5 = &stru_2853953A0;
  }

  v11[0] = @"targetApplication";
  v11[1] = @"url";
  v12[0] = v5;
  v6 = [(BCSURLAction *)self url];
  v7 = [v6 absoluteString];
  v12[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_commonActionPickerItemsForURL
{
  v3 = [MEMORY[0x277CBEB18] array];
  SSReadingListClass = getSSReadingListClass();
  v5 = [(BCSURLAction *)self url];
  LODWORD(SSReadingListClass) = [SSReadingListClass supportsURL:v5];

  if (SSReadingListClass)
  {
    v6 = [BCSActionPickerItem alloc];
    v7 = _BCSLocalizedString(@"Add to Reading List", &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __46__BCSURLAction__commonActionPickerItemsForURL__block_invoke;
    v15[3] = &unk_278CFE7E8;
    v15[4] = self;
    v8 = [(BCSActionPickerItem *)v6 initWithLabel:v7 actionHandler:v15];

    v9 = [getUIImageClass() systemImageNamed:@"eyeglasses"];
    [(BCSActionPickerItem *)v8 setIcon:v9];

    [v3 addObject:v8];
  }

  v10 = [BCSCopyActionPickerItem alloc];
  v11 = [(BCSURLAction *)self url];
  v12 = [(BCSCopyActionPickerItem *)v10 initWithAction:self urlToCopy:v11];

  [v3 addObject:v12];
  v13 = [[BCSShareActionPickerItem alloc] initWithAction:self];
  [v3 addObject:v13];

  return v3;
}

void __46__BCSURLAction__commonActionPickerItemsForURL__block_invoke(uint64_t a1)
{
  v3 = [getSSReadingListClass() defaultReadingList];
  v2 = [*(a1 + 32) url];
  [v3 addReadingListItemWithURL:v2 title:0 previewText:0 error:0];
}

- (id)_additionalActionPickerItems
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(BCSAction *)self detectedCode];

  if (!v4)
  {
    goto LABEL_4;
  }

  if ([(NSArray *)self->_appLinks count])
  {
    v5 = [(BCSURLAction *)self url];
    v6 = [v5 _bcs_isRedirectedSHCURL];

    if (v6)
    {
LABEL_4:
      v7 = 0;
      goto LABEL_10;
    }

    v8 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:@"com.apple.mobilesafari" allowPlaceholder:0 error:0];
    v9 = [BCSURLActionPickerItem alloc];
    v10 = _BCSLocalizedString(@"Open in Safari", &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
    v11 = [(BCSURLAction *)self url];
    v12 = [(BCSURLActionPickerItem *)v9 initWithLabel:v10 action:self url:v11 applicationRecord:v8];

    [v3 addObject:v12];
  }

  if ([(BCSURLAction *)self _willOpenInSafari]|| [(NSArray *)self->_appLinks count])
  {
    v13 = [(BCSURLAction *)self _commonActionPickerItemsForURL];
    [v3 addObjectsFromArray:v13];
  }

  v7 = v3;
LABEL_10:

  return v7;
}

- (id)_actionPickerItemsForAppClip
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(BCSActionPickerItem *)[BCSAppClipActionPickerItem alloc] initWithAction:self];
  [v3 addObject:v4];
  if ([(BCSAction *)self codeType]!= 3)
  {
    v5 = [BCSCopyActionPickerItem alloc];
    v6 = [(BCSURLAction *)self url];
    v7 = [(BCSCopyActionPickerItem *)v5 initWithAction:self urlToCopy:v6];

    [v3 addObject:v7];
    v8 = [[BCSShareActionPickerItem alloc] initWithAction:self];
    [v3 addObject:v8];
  }

  return v3;
}

- (BOOL)_willOpenInSafari
{
  v3 = [(BCSURLAction *)self targetApplication];
  v4 = [v3 bundleIdentifier];
  if ([v4 isEqualToString:@"com.apple.mobilesafari"])
  {
    v5 = [(BCSAction *)self clipMetadataRequest];
    v6 = v5 == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)shortDescription
{
  if ([(BCSURLAction *)self _willOpenInSafari])
  {
    goto LABEL_2;
  }

  if ([(BCSURLAction *)self isPasskeyAssertionAction])
  {
    v6 = [(BCSURLAction *)self _passkeyAssertionActionDescription];
LABEL_13:
    v5 = v6;
    goto LABEL_14;
  }

  if ([(BCSURLAction *)self isPasskeyRegistrationAction])
  {
    v6 = [(BCSURLAction *)self _passkeyRegistrationActionDescription];
    goto LABEL_13;
  }

  if ([(BCSURLAction *)self isAirplayPairingAction])
  {
    v7 = @"Connect";
LABEL_10:
    v6 = _BCSLocalizedString(v7, &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
    goto LABEL_13;
  }

  if ([(BCSURLAction *)self isApplePayInitiateAction])
  {
    v6 = [(BCSURLAction *)self _applePayActionDescription];
    goto LABEL_13;
  }

  if (self->_deviceDataIsUnavailable)
  {
    v9 = [(BCSURLAction *)self targetApplication];
    if (v9)
    {
      v10 = v9;
      v11 = [(BCSURLAction *)self isAMSAction];

      if (!v11)
      {
        v15 = [(BCSURLAction *)self targetApplication];
        v16 = [v15 developerType];

        if (v16 != 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [(BCSURLAction *)self shortDescription];
          }

          goto LABEL_2;
        }

        goto LABEL_28;
      }
    }

    if ([(NSArray *)self->_appLinks count])
    {
LABEL_2:
      v3 = [(BCSURLAction *)self url];
      v4 = [v3 _bcs_displayString];
LABEL_3:
      v5 = v4;

      goto LABEL_14;
    }
  }

  if (![(NSArray *)self->_appLinks count])
  {
    if (![(BCSURLAction *)self _hasCellularPlanAction])
    {
      v6 = [(BCSURLAction *)self localizedDefaultActionDescription];
      goto LABEL_13;
    }

    v7 = @"Cellular Plan";
    goto LABEL_10;
  }

  v12 = [(BCSURLAction *)self url];
  v13 = [v12 _bcs_isRedirectedSHCURL];

  if (!v13 || (-[BCSURLAction url](self, "url"), v14 = objc_claimAutoreleasedReturnValue(), [v14 _bcs_localizedDisplayNameForRedirectedSHCURL], v5 = objc_claimAutoreleasedReturnValue(), v14, !v5))
  {
LABEL_28:
    v3 = [(BCSURLAction *)self targetApplication];
    v4 = [v3 localizedName];
    goto LABEL_3;
  }

LABEL_14:

  return v5;
}

- (id)actionIconSystemImageName
{
  if ([(BCSURLAction *)self _willOpenInSafari])
  {
    return @"safari.fill";
  }

  v4 = [(LSApplicationRecord *)self->_userVisibleAppRecord bundleIdentifier];
  v5 = [v4 isEqualToString:@"com.apple.Home"];

  if (v5)
  {
    return @"homekit";
  }

  v6 = [(BCSAction *)self clipMetadataRequest];

  if (v6)
  {
    return @"arrow.up.forward.appclip";
  }

  if ([(BCSURLAction *)self _hasCellularPlanAction])
  {
    return @"antenna.radiowaves.left.and.right";
  }

  v7 = [(BCSURLAction *)self url];
  v8 = [v7 _bcs_isRedirectedSHCURL];

  if (v8)
  {
    return @"health.fill";
  }

  if ([(BCSURLAction *)self isPasskeyAction])
  {
    return @"person.badge.key.fill";
  }

  if ([(BCSURLAction *)self isAirplayPairingAction])
  {
    return @"tv";
  }

  if ([(BCSURLAction *)self isApplePayInitiateAction])
  {
    return @"creditcard.fill";
  }

  if ([(BCSURLAction *)self isDigitalIdentityCredentialPresentationAction])
  {
    return @"person.text.rectangle.fill";
  }

  return @"arrow.up.forward.app.fill";
}

- (id)_actionPickerItemsForLockScreenVisibleApps
{
  v4 = [(NSArray *)self->_appLinks firstObject];
  userVisibleAppRecord = self->_userVisibleAppRecord;
  if (userVisibleAppRecord)
  {
    v6 = userVisibleAppRecord;
  }

  else
  {
    v6 = [(NSArray *)self->_upiApplicationRecords firstObject];
  }

  v7 = v6;
  v8 = self->_userVisibleAppRecord;
  if (!v8 || (-[LSApplicationRecord bundleIdentifier](self->_userVisibleAppRecord, "bundleIdentifier"), v2 = objc_claimAutoreleasedReturnValue(), ([v2 isEqualToString:@"com.apple.mobilesafari"] & 1) != 0))
  {
    v10 = _BCSLocalizedString(@"Title for the menu to open an application or the browser when a QR code is deteced in lock screen", &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v9 = [(BCSURLAction *)self url];
    v10 = [(BCSURLAction *)self _actionDescriptionForURL:v9 application:self->_userVisibleAppRecord shouldShowHostNameForSafariURL:0];
  }

LABEL_9:
  v11 = [BCSURLActionPickerItem alloc];
  if (v4)
  {
    v12 = [(BCSAction *)self codePayload];
    v13 = [(BCSURLActionPickerItem *)v11 initWithLabel:v10 action:self appLink:v4 codePayload:v12];
  }

  else
  {
    v12 = [(BCSURLAction *)self url];
    v13 = [(BCSURLActionPickerItem *)v11 initWithLabel:v10 action:self url:v12 applicationRecord:v7 preferApplicationIcon:self->_userVisibleAppRecord != 0];
  }

  v14 = v13;

  v15 = [MEMORY[0x277CBEB18] array];
  [v15 addObject:v14];
  v16 = [(BCSURLAction *)self _commonActionPickerItemsForURL];
  [v15 addObjectsFromArray:v16];

  return v15;
}

- (id)_actionPickerItemsForUnlockedAppLinks
{
  v26 = *MEMORY[0x277D85DE8];
  if (![(NSArray *)self->_appLinks count])
  {
    v20 = 0;
    goto LABEL_15;
  }

  v20 = [MEMORY[0x277CBEB18] array];
  v3 = [(BCSURLAction *)self url];
  v4 = [(BCSAction *)self detectedCode];
  if (v4)
  {

LABEL_6:
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = self->_appLinks;
    v5 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v22;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v21 + 1) + 8 * i);
          v10 = [v9 targetApplicationRecord];
          v11 = [(BCSURLAction *)self _actionDescriptionForURL:v3 application:v10 shouldShowHostNameForSafariURL:0];

          v12 = [BCSURLActionPickerItem alloc];
          v13 = [(BCSAction *)self codePayload];
          v14 = [(BCSAction *)self detectedCode];
          v15 = [(BCSURLActionPickerItem *)v12 initWithLabel:v11 action:self appLink:v9 codePayload:v13 preferApplicationIcon:v14 != 0];

          [v20 addObject:v15];
        }

        v6 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v6);
    }

    v16 = [(BCSURLAction *)self _additionalActionPickerItems];
    [v20 addObjectsFromArray:v16];

    goto LABEL_14;
  }

  if ([(NSArray *)self->_appLinks count]>= 2)
  {
    goto LABEL_6;
  }

LABEL_14:

LABEL_15:
  v17 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)actionPickerItems
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(BCSURLAction *)self url];
  v5 = [(BCSURLAction *)self _hasCellularPlanAction];
  v6 = [(BCSURLAction *)self isAMSAction];
  v7 = [(BCSURLAction *)self isPasskeyAction];
  v8 = [(BCSURLAction *)self isApplePayInitiateAction];
  if ([(BCSURLAction *)self isDigitalIdentityCredentialPresentationAction]|| v8 || v7 || v6 || v5)
  {
    v13 = [[BCSActionPickerItem alloc] initWithAction:self];
    [v3 addObject:v13];
    v14 = v3;

    goto LABEL_40;
  }

  v9 = [(BCSAction *)self detectedCode];
  if (v9)
  {
    v10 = v9;
    v11 = [(BCSAction *)self clipMetadataRequest];

    if (v11)
    {
      v12 = [(BCSURLAction *)self _actionPickerItemsForAppClip];
LABEL_13:
      v14 = v12;
      goto LABEL_40;
    }
  }

  v15 = [(BCSAction *)self detectedCode];
  if (v15)
  {
    deviceDataIsUnavailable = self->_deviceDataIsUnavailable;

    if (deviceDataIsUnavailable)
    {
      v12 = [(BCSURLAction *)self _actionPickerItemsForLockScreenVisibleApps];
      goto LABEL_13;
    }
  }

  v17 = [(BCSURLAction *)self _actionPickerItemsForUnlockedAppLinks];
  if (![v17 count])
  {
    if ([(NSArray *)self->_upiApplicationRecords count]>= 2)
    {
      v37 = v17;
      v38 = v4;
      appStoreSearchURLForUnsupportedScheme = self->_appStoreSearchURLForUnsupportedScheme;
      if (!appStoreSearchURLForUnsupportedScheme)
      {
        appStoreSearchURLForUnsupportedScheme = v4;
      }

      v19 = appStoreSearchURLForUnsupportedScheme;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v20 = self->_upiApplicationRecords;
      v21 = [(NSArray *)v20 countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v40;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v40 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v39 + 1) + 8 * i);
            v26 = [v25 localizedName];
            v27 = [[BCSURLActionPickerItem alloc] initWithLabel:v26 action:self url:v19 applicationRecord:v25 preferApplicationIcon:1];
            [v3 addObject:v27];
          }

          v22 = [(NSArray *)v20 countByEnumeratingWithState:&v39 objects:v43 count:16];
        }

        while (v22);
      }

      v14 = v3;
      v17 = v37;
      v4 = v38;
      goto LABEL_39;
    }

    if (v4)
    {
      userVisibleAppRecord = self->_userVisibleAppRecord;
      if (userVisibleAppRecord)
      {
LABEL_29:
        v29 = [(BCSURLAction *)self _actionDescriptionForURL:v4 application:userVisibleAppRecord shouldShowHostNameForSafariURL:0];
LABEL_32:
        v30 = v29;
        v31 = self->_appStoreSearchURLForUnsupportedScheme;
        if (!v31)
        {
          v31 = v4;
        }

        v32 = v31;
        v33 = [[BCSURLActionPickerItem alloc] initWithLabel:v30 action:self url:v32 applicationRecord:self->_userVisibleAppRecord preferApplicationIcon:1];

        [v3 addObject:v33];
        v34 = [(BCSURLAction *)self _additionalActionPickerItems];
        [v3 addObjectsFromArray:v34];

        v14 = v3;
        goto LABEL_39;
      }

      if (self->_deviceDataIsUnavailable)
      {
LABEL_31:
        v29 = [(BCSURLAction *)self _actionDescriptionWithoutTargetApplicationForURL:v4];
        goto LABEL_32;
      }

      if ((_bcs_isHostAppEntitled() & 1) == 0)
      {
        userVisibleAppRecord = self->_userVisibleAppRecord;
        if (userVisibleAppRecord)
        {
          goto LABEL_29;
        }

        goto LABEL_31;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [BCSURLAction actionPickerItems];
    }

    v14 = 0;
    goto LABEL_39;
  }

  v14 = v17;
LABEL_39:

LABEL_40:
  v35 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)_appclipLaunchReason
{
  v2 = [(BCSAction *)self codeType];
  if (v2 == 3)
  {
    v3 = @"AppclipCode";
  }

  else if (v2 == 2)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v4 = getCPSSessionLaunchReasonNFCSymbolLoc_ptr;
    v10 = getCPSSessionLaunchReasonNFCSymbolLoc_ptr;
    if (!getCPSSessionLaunchReasonNFCSymbolLoc_ptr)
    {
      v5 = ClipServicesLibrary_0();
      v8[3] = dlsym(v5, "CPSSessionLaunchReasonNFC");
      getCPSSessionLaunchReasonNFCSymbolLoc_ptr = v8[3];
      v4 = v8[3];
    }

    _Block_object_dispose(&v7, 8);
    if (!v4)
    {
      [BCSURLAction _appclipLaunchReason];
    }

    v3 = *v4;
  }

  else
  {
    v3 = getCPSSessionLaunchReasonQR();
  }

  return v3;
}

- (BOOL)hasSensitiveURL
{
  if (-[BCSURLAction isAirplayPairingAction](self, "isAirplayPairingAction") && (-[BCSURLAction url](self, "url"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 _bcs_hasScheme:@"airplay"], v3, (v4 & 1) != 0))
  {
    v5 = 1;
  }

  else
  {
    v6 = [(LSApplicationRecord *)self->_userVisibleAppRecord bundleIdentifier];
    v7 = [v6 isEqualToString:@"com.apple.Home"];

    if (v7)
    {
      v8 = [(BCSURLAction *)self url];
      if ([v8 _bcs_hasScheme:@"X-HM"])
      {
        v5 = 1;
      }

      else
      {
        v9 = [(BCSURLAction *)self url];
        v5 = [v9 _bcs_hasScheme:@"com.apple.Home-private"];
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5 & 1;
}

- (void)performActionWithOptions:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BCSURLAction *)self hasSensitiveURL])
  {
    v8 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v9 = [(BCSURLAction *)self url];
    v12 = 0;
    v10 = [v8 openSensitiveURL:v9 withOptions:v6 error:&v12];
    v11 = v12;

    if ((v10 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [BCSURLAction performActionWithOptions:? completion:?];
    }

    v7[2](v7, v11);
  }

  else
  {
    [(BCSURLAction *)self performDefaultActionWithFBOptions:v6];
    v7[2](v7, 0);
  }
}

- (void)_didActivateBarcodeWithURLPayload
{
  v3 = +[BCSAWDLogger sharedLogger];
  [v3 logBarcodeActivatedEventForAction:self];

  if (MEMORY[0x28223BE60])
  {
    if (sharedSymptomReporter_onceToken != -1)
    {
      [BCSURLAction _didActivateBarcodeWithURLPayload];
    }

    if (symptom_new())
    {
      if (symptom_send())
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [BCSURLAction _didActivateBarcodeWithURLPayload];
        }
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [BCSURLAction _didActivateBarcodeWithURLPayload];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [BCSURLAction _didActivateBarcodeWithURLPayload];
  }
}

- (void)performDefaultActionWithFBOptions:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(BCSURLAction *)self _hasCellularPlanAction])
  {
    [(CTCellularPlanQRCodeAction *)self->_cellularPlanAction performWithCompletionHandler:&__block_literal_global_10];
    goto LABEL_30;
  }

  if (!_bcs_isHostAppEntitled())
  {
    goto LABEL_7;
  }

  v5 = [(BCSURLAction *)self targetApplication];
  if (v5)
  {

    goto LABEL_7;
  }

  if (self->_deviceDataIsUnavailable)
  {
LABEL_7:
    v6 = [(BCSURLAction *)self _requiresOpenInTargetApplication];

    if (v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v7 = [(BCSURLAction *)self targetApplication];
        v8 = [v7 bundleIdentifier];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v8;
        _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSURLAction: Handling URL with LSApplicationWorkspace operation with target application: %@.", &buf, 0xCu);
      }

      v9 = +[BCSAWDLogger sharedLogger];
      [v9 logBarcodeActivatedEventForAction:self];

      [(BCSURLAction *)self _openActionInTargetApplicationWithOptions:v4];
      [(BCSURLAction *)self _didActivateBarcodeWithURLPayload];
    }

    else
    {
      v10 = [(BCSAction *)self clipMetadataRequest];

      if (v10)
      {
        v38 = 0;
        v39 = &v38;
        v40 = 0x2050000000;
        v11 = getCPSClipRequestClass_softClass_0;
        v41 = getCPSClipRequestClass_softClass_0;
        if (!getCPSClipRequestClass_softClass_0)
        {
          *&buf = MEMORY[0x277D85DD0];
          *(&buf + 1) = 3221225472;
          v43 = __getCPSClipRequestClass_block_invoke_0;
          v44 = &unk_278CFE620;
          v45 = &v38;
          __getCPSClipRequestClass_block_invoke_0(&buf);
          v11 = v39[3];
        }

        v12 = v11;
        _Block_object_dispose(&v38, 8);
        v13 = [v11 alloc];
        v14 = [(BCSURLAction *)self url];
        v15 = [v13 initWithURL:v14];

        v16 = [(BCSURLAction *)self _appclipLaunchReason];
        v17 = [v15 sessionProxy];
        v18 = [v17 configuration];
        [v18 setLaunchReason:v16];

        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __50__BCSURLAction_performDefaultActionWithFBOptions___block_invoke_105;
        v37[3] = &unk_278CFF3C8;
        v37[4] = self;
        [v15 requestClipWithCompletion:v37];
        [(BCSURLAction *)self _didActivateBarcodeWithURLPayload];
      }

      else if ([(NSArray *)self->_appLinks count])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSURLAction: perform action with default app link", &buf, 2u);
        }

        v19 = [(NSArray *)self->_appLinks firstObject];
        v20 = [(BCSAction *)self codePayload];
        _bcs_openAppLinkIgnoringOpenStrategy(v19, v4, v20);

        if ([(NSArray *)self->_appLinks count]>= 2)
        {
          v21 = +[BCSQRCodeParser sharedParser];
          v22 = [v19 targetApplicationProxy];
          v23 = [v22 bundleIdentifier];
          v24 = [v19 URL];
          [v21 setPreferredBundleIdentifier:v23 forURL:v24];
        }

        [(BCSURLAction *)self _didActivateBarcodeWithURLPayload];
      }

      else
      {
        v25 = [(BCSURLAction *)self url];
        v26 = [v25 _bcs_isUPIURL];

        v27 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
        if (v26)
        {
          if (v27)
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSURLAction: Opening top ranked UPI handling app", &buf, 2u);
          }

          v28 = +[BCSQRCodeParser sharedParser];
          v29 = [(BCSURLAction *)self targetApplication];
          v30 = [v29 bundleIdentifier];
          v31 = [(BCSURLAction *)self url];
          [v28 setPreferredBundleIdentifier:v30 forURL:v31];

          [(BCSURLAction *)self _openActionInTargetApplicationWithOptions:0];
          [(BCSURLAction *)self _didActivateBarcodeWithURLPayload];
        }

        else
        {
          if (v27)
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSURLAction: perform default action by opening URL", &buf, 2u);
          }

          v32 = [MEMORY[0x277CC1E80] defaultWorkspace];
          v33 = [(BCSURLAction *)self url];
          v36 = 0;
          [v32 openURL:v33 withOptions:v4 error:&v36];
          v34 = v36;

          [(BCSURLAction *)self _didActivateBarcodeWithURLPayload];
        }
      }
    }

    goto LABEL_30;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [BCSURLAction performDefaultActionWithFBOptions:];
  }

LABEL_30:

  v35 = *MEMORY[0x277D85DE8];
}

void __50__BCSURLAction_performDefaultActionWithFBOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __50__BCSURLAction_performDefaultActionWithFBOptions___block_invoke_cold_1(v2);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSURLAction: CTCellularPlanManagerCameraScanAction performed successfully", v3, 2u);
  }
}

void __50__BCSURLAction_performDefaultActionWithFBOptions___block_invoke_105(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = [v5 domain];
    if ([v7 isEqualToString:*MEMORY[0x277CFA658]])
    {
      v8 = [v6 code];

      if (v8 == 2)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          __50__BCSURLAction_performDefaultActionWithFBOptions___block_invoke_105_cold_2();
        }

        [*(a1 + 32) _openActionInTargetApplicationWithOptions:0];
        goto LABEL_11;
      }
    }

    else
    {
    }

    if (!v6)
    {
      goto LABEL_11;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __50__BCSURLAction_performDefaultActionWithFBOptions___block_invoke_105_cold_1(v6);
  }

LABEL_11:
}

- (void)_openActionInTargetApplicationWithOptions:(id)a3
{
  v4 = MEMORY[0x277CC1E80];
  v5 = a3;
  v6 = [v4 defaultWorkspace];
  v7 = [(BCSURLAction *)self url];
  v8 = [(BCSURLAction *)self targetApplication];
  v9 = [v8 bundleIdentifier];
  v10 = [v6 operationToOpenResource:v7 usingApplication:v9 uniqueDocumentIdentifier:0 isContentManaged:0 sourceAuditToken:0 userInfo:0 options:v5 delegate:0];

  [v10 start];
}

- (void)performAction
{
  if ([(NSArray *)self->_appLinks count]> 1)
  {

    [(BCSAction *)self showActionPicker];
  }

  else
  {

    [(BCSAction *)self performActionWithCompletion:&__block_literal_global_109];
  }
}

void __29__BCSURLAction_performAction__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __29__BCSURLAction_performAction__block_invoke_cold_1(v2);
  }
}

- (void)_resolveAppClipForURL:(id)a3 completion:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(BCSURLAction *)self url];
  if (![v8 _bcs_isHTTPFamilyURL])
  {

    goto LABEL_11;
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v9 = getCPSClipsFeatureEnabledSymbolLoc_ptr_0;
  v34 = getCPSClipsFeatureEnabledSymbolLoc_ptr_0;
  if (!getCPSClipsFeatureEnabledSymbolLoc_ptr_0)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v36 = __getCPSClipsFeatureEnabledSymbolLoc_block_invoke_0;
    v37 = &unk_278CFE620;
    v38 = &v31;
    v10 = ClipServicesLibrary_0();
    v11 = dlsym(v10, "CPSClipsFeatureEnabled");
    *(v38[1] + 24) = v11;
    getCPSClipsFeatureEnabledSymbolLoc_ptr_0 = *(v38[1] + 24);
    v9 = v32[3];
  }

  _Block_object_dispose(&v31, 8);
  if (!v9)
  {
    [BCSURLAction _resolveAppClipForURL:completion:];
  }

  v12 = v9();

  if ((v12 & 1) == 0)
  {
    goto LABEL_11;
  }

  v13 = [(BCSURLAction *)self url];
  v14 = [v13 absoluteString];
  v15 = [v14 hasPrefix:@"https://found.apple.com/airtag?"];

  if (v15)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v16 = [(BCSURLAction *)self url];
      LODWORD(buf) = 138739971;
      *(&buf + 4) = v16;
      _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSURLAction: detected an Find My URL, skip app clips checking. %{sensitive}@", &buf, 0xCu);
    }

    goto LABEL_11;
  }

  if ((_bcs_isHostAppEntitled() & 1) == 0)
  {
LABEL_11:
    v7[2](v7, 0);
    goto LABEL_12;
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x2050000000;
  v18 = getCPSClipMetadataRequestClass_softClass_0;
  v34 = getCPSClipMetadataRequestClass_softClass_0;
  if (!getCPSClipMetadataRequestClass_softClass_0)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v36 = __getCPSClipMetadataRequestClass_block_invoke_0;
    v37 = &unk_278CFE620;
    v38 = &v31;
    __getCPSClipMetadataRequestClass_block_invoke_0(&buf);
    v18 = v32[3];
  }

  v19 = v18;
  _Block_object_dispose(&v31, 8);
  v20 = [v18 alloc];
  v21 = [(BCSURLAction *)self url];
  v22 = [v20 initWithURL:v21];

  if ([v22 isLikelyAvailable])
  {
    v23 = [(BCSURLAction *)self _appclipLaunchReason];
    v24 = [v22 sessionConfiguration];
    [v24 setLaunchReason:v23];

    if (-[BCSURLAction _isVisualCode](self, "_isVisualCode") && ([MEMORY[0x277CCA8D8] mainBundle], v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "bundleIdentifier"), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "isEqualToString:", @"com.apple.BarcodeScanner"), v26, v25, (v27 & 1) == 0))
    {
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __49__BCSURLAction__resolveAppClipForURL_completion___block_invoke;
      v28[3] = &unk_278CFF3F0;
      v28[4] = self;
      v29 = v22;
      v30 = v7;
      [v29 requestMetadataWithCompletion:v28];
    }

    else
    {
      [(BCSAction *)self setClipMetadataRequest:v22];
      v7[2](v7, 1);
    }
  }

  else
  {
    v7[2](v7, 0);
  }

LABEL_12:
  v17 = *MEMORY[0x277D85DE8];
}

void __49__BCSURLAction__resolveAppClipForURL_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    [*(a1 + 32) setClipMetadataRequest:*(a1 + 40)];
  }

  v4 = *(a1 + 48);
  v5 = [*(a1 + 32) clipMetadataRequest];
  (*(v4 + 16))(v4, v5 != 0);
}

- (void)determineActionabilityWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (![(BCSURLAction *)self _tryDetermineActionabilityForSpecialCodesFromQRScannerWithCompletionHandler:v4])
  {
    v5 = [(BCSURLAction *)self url];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __60__BCSURLAction_determineActionabilityWithCompletionHandler___block_invoke;
    v6[3] = &unk_278CFF440;
    v6[4] = self;
    v7 = v4;
    [(BCSURLAction *)self _resolveAppClipForURL:v5 completion:v6];
  }
}

void __60__BCSURLAction_determineActionabilityWithCompletionHandler___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v12 = 0;
    v3 = [objc_alloc(getLSApplicationRecordClass()) initWithBundleIdentifier:@"com.apple.mobilesafari" allowPlaceholder:0 error:&v12];
    v4 = v12;
    v5 = *(a1 + 32);
    v6 = *(v5 + 112);
    *(v5 + 112) = v3;

    (*(*(a1 + 40) + 16))();
  }

  else if ([*(a1 + 32) codeType] == 3 && (objc_msgSend(*(a1 + 32), "_allowAppClipCodeUniversalLinkFallback") & 1) == 0)
  {
    v9 = *(*(a1 + 40) + 16);

    v9();
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = [v7 url];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __60__BCSURLAction_determineActionabilityWithCompletionHandler___block_invoke_2;
    v10[3] = &unk_278CFF418;
    v11 = *(a1 + 40);
    [v7 _resolveTargetApplicationForURL:v8 completionHandler:v10];
  }
}

- (BOOL)_tryDetermineActionabilityForSpecialCodesFromQRScannerWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(BCSURLAction *)self url];
  v6 = [v5 absoluteString];

  v7 = [v6 lowercaseString];
  if (([v7 hasPrefix:@"x-esim://"] & 1) != 0 || objc_msgSend(v7, "hasPrefix:", @"lpa:"))
  {
    v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
    if (v8)
    {
      [(BCSURLAction *)v8 _tryDetermineActionabilityForSpecialCodesFromQRScannerWithCompletionHandler:v9, v10, v11, v12, v13, v14, v15];
    }

    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v16 = getCoreTelephonyClientClass_softClass;
    v29 = getCoreTelephonyClientClass_softClass;
    if (!getCoreTelephonyClientClass_softClass)
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __getCoreTelephonyClientClass_block_invoke;
      v25[3] = &unk_278CFE620;
      v25[4] = &v26;
      __getCoreTelephonyClientClass_block_invoke(v25);
      v16 = v27[3];
    }

    v17 = v16;
    _Block_object_dispose(&v26, 8);
    v18 = [[v16 alloc] initWithQueue:0];
    coreTelephonyClient = self->_coreTelephonyClient;
    self->_coreTelephonyClient = v18;

    v20 = self->_coreTelephonyClient;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __92__BCSURLAction__tryDetermineActionabilityForSpecialCodesFromQRScannerWithCompletionHandler___block_invoke;
    v23[3] = &unk_278CFF468;
    v23[4] = self;
    v24 = v4;
    [(CoreTelephonyClient *)v20 getActionForCardData:v6 completionHandler:v23];

    v21 = 1;
  }

  else
  {
    if ([(BCSURLAction *)self _isCodeFromQRScanner])
    {
      _bcs_isHostAppEntitled();
    }

    v21 = 0;
  }

  return v21;
}

void __92__BCSURLAction__tryDetermineActionabilityForSpecialCodesFromQRScannerWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v8)
  {
    __92__BCSURLAction__tryDetermineActionabilityForSpecialCodesFromQRScannerWithCompletionHandler___block_invoke_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else if (v7)
  {
LABEL_3:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __92__BCSURLAction__tryDetermineActionabilityForSpecialCodesFromQRScannerWithCompletionHandler___block_invoke_cold_2(v7);
    }

    v16 = *(*(a1 + 40) + 16);
    goto LABEL_11;
  }

  v17 = *(a1 + 32);
  if (!v6)
  {
    v18 = [*(a1 + 32) url];
    [v17 _resolveTargetApplicationForURL:v18 completionHandler:*(a1 + 40)];

    goto LABEL_12;
  }

  objc_storeStrong(v17 + 19, a2);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    __92__BCSURLAction__tryDetermineActionabilityForSpecialCodesFromQRScannerWithCompletionHandler___block_invoke_cold_3((a1 + 32), 152);
  }

  v16 = *(*(a1 + 40) + 16);
LABEL_11:
  v16();
LABEL_12:
}

- (BOOL)mustOpenAppLinkInApp
{
  if ([(BCSURLAction *)self _hasCellularPlanAction])
  {
    goto LABEL_5;
  }

  v3 = [(NSArray *)self->_appLinks count];
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = [(NSArray *)self->_appLinks firstObject];
      v5 = [(BCSURLAction *)self _shouldOpenInAppForAppLink:v4];

      LOBYTE(v3) = v5;
      return v3;
    }

LABEL_5:
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (void)_resolveTargetApplicationForURL:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v8)
  {
    [(BCSURLAction *)v8 _resolveTargetApplicationForURL:v9 completionHandler:v10, v11, v12, v13, v14, v15];
  }

  if (_bcs_isDeviceLocked())
  {
    v16 = _bcs_isCurrentProcessBarcodeScanner() ^ 1;
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  self->_deviceDataIsUnavailable = v16;
  if ([(BCSURLAction *)self _shouldBlockHandlingURL:v6])
  {
    v17 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
    if (v17)
    {
      [(BCSURLAction *)v17 _resolveTargetApplicationForURL:v18 completionHandler:v19, v20, v21, v22, v23, v24];
    }

    v7[2](v7, 0);
  }

  else if (_bcs_isHostAppEntitled())
  {
    v25 = [(BCSURLAction *)self _requiresOpenInTargetApplication];
    if (v25)
    {
      objc_storeStrong(&self->_userVisibleAppRecord, v25);
      v7[2](v7, 1);
    }

    else
    {
      LSAppLinkClass = getLSAppLinkClass();
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __66__BCSURLAction__resolveTargetApplicationForURL_completionHandler___block_invoke;
      v27[3] = &unk_278CFF490;
      v27[4] = self;
      v29 = v7;
      v28 = v6;
      [LSAppLinkClass getAppLinksWithURL:v28 completionHandler:v27];
    }
  }

  else
  {
    [(BCSURLAction *)self _queryApplicationRecordForURL:v6 completionHandler:v7];
  }
}

void __66__BCSURLAction__resolveTargetApplicationForURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (![v4 count])
  {
    goto LABEL_18;
  }

  v5 = [v4 copy];
  v6 = *(a1 + 32);
  v7 = *(v6 + 104);
  *(v6 + 104) = v5;

  v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v8)
  {
    __66__BCSURLAction__resolveTargetApplicationForURL_completionHandler___block_invoke_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  v16 = [*(a1 + 32) preferredBundleID];
  *(*(a1 + 32) + 160) = v16 != 0;
  v17 = [BCSAppRanker orderAppLinks:*(*(a1 + 32) + 104) forLastUsedApp:v16];
  v18 = *(a1 + 32);
  v19 = *(v18 + 104);
  *(v18 + 104) = v17;

  v20 = *(a1 + 32);
  v21 = v20[128];
  if ((v21 & 1) == 0)
  {
    if ([v4 count] > 1)
    {
      goto LABEL_20;
    }

    v25 = *(a1 + 32);
    v2 = [v4 firstObject];
    if ([v25 _shouldOpenInAppForAppLink:v2])
    {

      goto LABEL_20;
    }

    v20 = *(a1 + 32);
    if ((v20[128] & 1) == 0)
    {
LABEL_16:

      goto LABEL_17;
    }
  }

  if (![v20 _allowAppClipCodeUniversalLinkFallback] || objc_msgSend(v4, "count") != 1)
  {
    if (v21)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v22 = *(a1 + 32);
  v23 = [v4 firstObject];
  v24 = [v22 _shouldOpenInAppForAppLink:v23];

  if (v21)
  {
    if (v24)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if ((v24 & 1) == 0)
  {
LABEL_17:

LABEL_18:
    [*(a1 + 32) _queryApplicationRecordForURL:*(a1 + 40) completionHandler:*(a1 + 48)];
    goto LABEL_23;
  }

LABEL_20:
  v26 = [*(*(a1 + 32) + 104) firstObject];
  v27 = [v26 targetApplicationRecord];
  v28 = *(a1 + 32);
  v29 = *(v28 + 112);
  *(v28 + 112) = v27;

  v30 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v30)
  {
    __66__BCSURLAction__resolveTargetApplicationForURL_completionHandler___block_invoke_cold_2(v30, v31, v32, v33, v34, v35, v36, v37);
  }

  (*(*(a1 + 48) + 16))();

LABEL_23:
}

- (void)_queryApplicationRecordForURL:(id)a3 completionHandler:(id)a4
{
  v79 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [getLSApplicationWorkspaceClass() defaultWorkspace];
  v9 = [v8 URLOverrideForURL:v6];

  if (_bcs_isHostAppEntitled())
  {
    v68 = self;
    v10 = [getLSApplicationWorkspaceClass() defaultWorkspace];
    v11 = [v10 applicationsAvailableForOpeningURL:v9];
    if ([v9 _bcs_isUPIURL] && objc_msgSend(v11, "count") >= 2)
    {
      v64 = v9;
      v66 = v10;
      v63 = v6;
      v12 = [MEMORY[0x277CBEB18] array];
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v62 = v11;
      v13 = v11;
      v14 = [v13 countByEnumeratingWithState:&v72 objects:v78 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v73;
        v17 = MEMORY[0x277D86220];
        do
        {
          v18 = 0;
          do
          {
            if (*v73 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v19 = *(*(&v72 + 1) + 8 * v18);
            v20 = objc_alloc(getLSApplicationRecordClass());
            v21 = [v19 bundleIdentifier];
            v71 = 0;
            v22 = [v20 initWithBundleIdentifier:v21 allowPlaceholder:1 error:&v71];
            v23 = v71;

            if (v23 || !v22)
            {
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                [(BCSURLAction *)v76 _queryApplicationRecordForURL:v23 completionHandler:&v77];
              }
            }

            else
            {
              [v12 addObject:v22];
            }

            ++v18;
          }

          while (v15 != v18);
          v15 = [v13 countByEnumeratingWithState:&v72 objects:v78 count:16];
        }

        while (v15);
      }

      if ([v12 count] < 2)
      {
        v27 = 0;
      }

      else
      {
        v24 = [(BCSURLAction *)v68 preferredBundleID];
        v25 = [BCSAppRanker orderApplicationRecords:v12 forPreferredBundleID:v24];
        upiApplicationRecords = v68->_upiApplicationRecords;
        v68->_upiApplicationRecords = v25;

        v27 = [(NSArray *)v68->_upiApplicationRecords firstObject];
      }

      v6 = v63;
      v9 = v64;
      v10 = v66;
      v11 = v62;
    }

    else
    {
      v27 = 0;
    }

    v28 = [v11 firstObject];
    v29 = v28;
    if (!v27 && v28)
    {
      v30 = v11;
      v67 = v10;
      v31 = objc_alloc(getLSApplicationRecordClass());
      v32 = [v29 bundleIdentifier];
      v70 = 0;
      v33 = [v31 initWithBundleIdentifier:v32 allowPlaceholder:1 error:&v70];
      v34 = v70;

      if (v34)
      {
        v65 = v9;
        v35 = objc_alloc(getLSApplicationRecordClass());
        v36 = [v29 bundleIdentifier];
        v69 = v34;
        v27 = [v35 initWithBundleIdentifierOfSystemPlaceholder:v36 error:&v69];
        v37 = v69;

        if (v37)
        {
          v9 = v65;
          v11 = v30;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [BCSURLAction _queryApplicationRecordForURL:v37 completionHandler:?];
          }

          v10 = v67;
          goto LABEL_32;
        }

        v9 = v65;
      }

      else
      {
        v27 = v33;
      }

      v10 = v67;
      v11 = v30;
    }

LABEL_32:
    v38 = [(BCSAction *)v68 data];
    v39 = [v38 type];

    if (v39 == 12 || v39 == 9)
    {
      v40 = v27 != 0;
    }

    else
    {
      v40 = v27 != 0;
      if (![v6 _bcs_hasScheme:@"airplay"] && v27)
      {
        if (([v10 isApplicationAvailableToOpenURL:v9 includePrivateURLSchemes:0 error:0] & 1) == 0)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            [BCSURLAction _queryApplicationRecordForURL:v9 completionHandler:?];
          }

          goto LABEL_59;
        }

        v40 = 1;
      }
    }

    if (v68->_deviceDataIsUnavailable)
    {
      if ([v27 developerType] == 1 && (objc_msgSend(v27, "applicationState"), v41 = objc_claimAutoreleasedReturnValue(), v42 = objc_msgSend(v41, "isRemovedSystemApp"), v41, (v42 & 1) == 0))
      {
        v59 = v27;
        userVisibleAppRecord = v68->_userVisibleAppRecord;
        v68->_userVisibleAppRecord = v59;
      }

      else
      {
        v43 = [(NSArray *)v68->_appLinks count];
        if (v43 == 0 && v40)
        {
          v44 = [v27 applicationState];
          v45 = [v44 isInstalled];

          if (v45)
          {
LABEL_54:
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              [BCSURLAction _queryApplicationRecordForURL:v68 completionHandler:v6];
            }

LABEL_56:
            v60 = 1;
LABEL_60:
            v7[2](v7, v60);

            goto LABEL_61;
          }
        }

        else if (v43)
        {
          goto LABEL_54;
        }

        v55 = MEMORY[0x277CBEBC0];
        userVisibleAppRecord = [v9 scheme];
        v57 = [v55 _bcs_appStoreSearchURLWithScheme:userVisibleAppRecord];
        appStoreSearchURLForUnsupportedScheme = v68->_appStoreSearchURLForUnsupportedScheme;
        v68->_appStoreSearchURLForUnsupportedScheme = v57;
      }

      goto LABEL_54;
    }

    objc_storeStrong(&v68->_userVisibleAppRecord, v27);
    v46 = v68->_userVisibleAppRecord;
    v47 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
    if (v46)
    {
      if (v47)
      {
        [(BCSURLAction *)v47 _queryApplicationRecordForURL:v48 completionHandler:v49, v50, v51, v52, v53, v54];
      }

      goto LABEL_56;
    }

    if (v47)
    {
      [(BCSURLAction *)v47 _queryApplicationRecordForURL:v48 completionHandler:v49, v50, v51, v52, v53, v54];
    }

LABEL_59:
    v60 = 0;
    goto LABEL_60;
  }

  v7[2](v7, 1);
LABEL_61:

  v61 = *MEMORY[0x277D85DE8];
}

- (id)preferredBundleID
{
  v2 = [(BCSAction *)self data];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 preferredBundleID];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_allowAppClipCodeUniversalLinkFallback
{
  if ([(BCSAction *)self codeType]!= 3)
  {
    return 0;
  }

  return [(BCSURLAction *)self isApplePayInitiateAction];
}

- (id)_requiresOpenInTargetApplication
{
  if ([(BCSURLAction *)self isApplePayInitiateAction]&& [(BCSAction *)self codeType]!= 3)
  {
    v3 = @"com.apple.mobilesafari";
  }

  else
  {
    if (![(BCSURLAction *)self isDigitalIdentityCredentialPresentationAction])
    {
      v4 = 0;
      goto LABEL_8;
    }

    v3 = @"com.apple.coreidv.CoreIDVUIService";
  }

  v4 = [objc_alloc(getLSApplicationRecordClass()) initWithBundleIdentifier:v3 allowPlaceholder:0 error:0];
LABEL_8:

  return v4;
}

- (id)_actionDescriptionForAppClip
{
  v3 = [(BCSAction *)self clipMetadataRequest];
  v4 = [v3 getClipMetadataSynchronously];

  v5 = [(BCSAction *)self detectedCode];

  if (v5)
  {
    v6 = [v4 clipName];
  }

  else
  {
    if ([v4 isPoweredByThirdParty])
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = _BCSLocalizedString(@"%@\nPowered by %@", &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
      v9 = [v4 clipCaption];
      v10 = [v4 fullAppName];
      v11 = [v7 stringWithFormat:v8, v9, v10];

      goto LABEL_7;
    }

    v6 = [v4 clipCaption];
  }

  v11 = v6;
LABEL_7:

  return v11;
}

- (id)_actionDescriptionForURL:(id)a3 application:(id)a4 shouldShowHostNameForSafariURL:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [v9 bundleIdentifier];
  v11 = [MEMORY[0x277CCA8D8] mainBundle];
  v12 = [v11 bundleIdentifier];

  v13 = [v12 isEqualToString:v10];
  if (v5 && [v10 isEqualToString:@"com.apple.mobilesafari"])
  {
    v14 = [v8 _bcs_displayString];
    if ([v14 length])
    {
      if (v13)
      {
        v15 = MEMORY[0x277CCACA8];
        v16 = _BCSLocalizedString(@"Open “%@”", &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
        [v15 stringWithFormat:v16, v14];
        v19 = LABEL_11:;
LABEL_12:

LABEL_13:
        goto LABEL_14;
      }

      v24 = [(BCSAction *)self clipMetadataRequest];

      if (!v24)
      {
        v16 = [v9 localizedName];
        v26 = MEMORY[0x277CCACA8];
        v27 = _BCSLocalizedString(@"Open “%@” in %@", &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
        v19 = [v26 stringWithFormat:v27, v14, v16];

        goto LABEL_12;
      }

      v22 = [(BCSURLAction *)self _actionDescriptionForAppClip];
LABEL_24:
      v19 = v22;
      goto LABEL_13;
    }
  }

  if (([v10 isEqualToString:@"com.apple.AppStore"] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"com.apple.MobileStore"))
  {
    v17 = MEMORY[0x277CCACA8];
    v18 = @"View in %@";
LABEL_10:
    v14 = _BCSLocalizedString(v18, &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
    v16 = [v9 localizedName];
    [v17 stringWithFormat:v14, v16];
    goto LABEL_11;
  }

  if (v13)
  {
    v21 = MEMORY[0x277CCACA8];
    v14 = _BCSLocalizedString(@"Open", &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
    v22 = [v21 stringWithFormat:v14];
    goto LABEL_24;
  }

  if ([v8 _bcs_isOtpauthURL])
  {
    if (![v10 isEqualToString:@"com.apple.Preferences"])
    {
      v17 = MEMORY[0x277CCACA8];
      v18 = @"Add Verification Code in “%@”";
      goto LABEL_10;
    }

    v23 = @"Add Verification Code in Passwords";
    goto LABEL_28;
  }

  if ([v8 _bcs_isOtpauthMigrationURL])
  {
    if (![v10 isEqualToString:@"com.apple.Preferences"])
    {
      v17 = MEMORY[0x277CCACA8];
      v18 = @"Add Verification Codes in “%@”";
      goto LABEL_10;
    }

    v23 = @"Add Verification Codes in Passwords";
LABEL_28:
    v25 = _BCSLocalizedString(v23, &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
    goto LABEL_33;
  }

  v28 = [(BCSURLAction *)self url];
  v29 = [v28 _bcs_isUPIURL];

  if (!v29)
  {
    v17 = MEMORY[0x277CCACA8];
    v18 = @"Open in %@";
    goto LABEL_10;
  }

  v25 = [v9 localizedName];
LABEL_33:
  v19 = v25;
LABEL_14:

  return v19;
}

- (id)_actionDescriptionWithoutTargetApplicationForURL:(id)a3
{
  v3 = [a3 _bcs_displayString];
  if ([v3 length])
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = _BCSLocalizedString(@"Open “%@” link", &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
    v6 = [v4 stringWithFormat:v5, v3];
  }

  else
  {
    v6 = _BCSLocalizedString(@"Open Link", &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
  }

  return v6;
}

- (BOOL)_shouldOpenInAppForAppLink:(id)a3
{
  v3 = [a3 openStrategy];
  if (v3 == 2)
  {
    return 1;
  }

  if (v3 == 1)
  {
    return _bcs_isCurrentProcessSafari() ^ 1;
  }

  return 0;
}

- (BOOL)_shouldBlockHandlingURL:(id)a3
{
  v3 = [a3 scheme];
  v4 = [v3 lowercaseString];

  LOBYTE(v3) = [v4 isEqualToString:@"data"];
  return v3;
}

- (BOOL)_isCodeFromQRScanner
{
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v3 bundleIdentifier];

  v5 = ([v4 isEqualToString:@"com.apple.BarcodeScanner"] & 1) != 0 || -[BCSURLAction _isVisualCode](self, "_isVisualCode");
  return v5;
}

- (BOOL)_isVisualCode
{
  v2 = [(BCSAction *)self codePayload];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 codeType] == 1 || objc_msgSend(v3, "codeType") == 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isAMSAction
{
  v2 = [(BCSURLAction *)self url];
  v3 = [v2 host];
  v4 = [&unk_28539D448 objectForKeyedSubscript:v3];
  v5 = [v4 BOOLValue];

  return v5;
}

- (id)contentPreviewString
{
  if ([(BCSURLAction *)self _willOpenInSafari])
  {
    v3 = [(BCSURLAction *)self url];
    v4 = [v3 absoluteString];
  }

  else
  {
    v5 = [(BCSAction *)self clipMetadataRequest];

    if (v5)
    {
      v4 = 0;
    }

    else
    {
      v7.receiver = self;
      v7.super_class = BCSURLAction;
      v4 = [(BCSAction *)&v7 contentPreviewString];
    }
  }

  return v4;
}

- (id)_menuElementForActionPicker:(id)a3
{
  v3 = a3;
  UIActionClass = getUIActionClass();
  v5 = [v3 label];
  v6 = [v3 icon];
  v7 = [v3 label];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44__BCSURLAction__menuElementForActionPicker___block_invoke;
  v11[3] = &unk_278CFE810;
  v12 = v3;
  v8 = v3;
  v9 = [UIActionClass actionWithTitle:v5 image:v6 identifier:v7 handler:v11];

  return v9;
}

- (id)menuElements
{
  v21[2] = *MEMORY[0x277D85DE8];
  v3 = [(BCSAction *)self detectedCode];
  if (v3 && (v4 = v3, -[BCSURLAction url](self, "url"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 _bcs_isUPIURL], v5, v4, v6))
  {
    v7 = [BCSCopyActionPickerItem alloc];
    v8 = [(BCSURLAction *)self url];
    v9 = [(BCSCopyActionPickerItem *)v7 initWithAction:self urlToCopy:v8];

    v10 = [[BCSShareActionPickerItem alloc] initWithAction:self];
    v11 = [(BCSURLAction *)self _menuElementForActionPicker:v9];
    v21[0] = v11;
    v12 = [(BCSURLAction *)self _menuElementForActionPicker:v10];
    v21[1] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];

    v14 = [getUIMenuClass() menuWithTitle:&stru_2853953A0 image:0 identifier:0 options:1 children:v13];
    v20.receiver = self;
    v20.super_class = BCSURLAction;
    v15 = [(BCSAction *)&v20 menuElements];
    v16 = [v15 arrayByAddingObject:v14];
  }

  else
  {
    v19.receiver = self;
    v19.super_class = BCSURLAction;
    v16 = [(BCSAction *)&v19 menuElements];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (unint64_t)menuElementsCount
{
  v3 = [(BCSAction *)self detectedCode];
  if (v3 && (v4 = v3, -[BCSURLAction url](self, "url"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 _bcs_isUPIURL], v5, v4, v6))
  {
    v7 = [(BCSURLAction *)self menuElements];
    v8 = [v7 count];

    return v8;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = BCSURLAction;
    return [(BCSAction *)&v10 menuElementsCount];
  }
}

- (BOOL)isPasskeyAction
{
  if ([(BCSURLAction *)self isPasskeyAssertionAction])
  {
    return 1;
  }

  return [(BCSURLAction *)self isPasskeyRegistrationAction];
}

- (void)shortDescription
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 targetApplication];
  v2 = [v1 bundleIdentifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_appclipLaunchReason
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCPSSessionLaunchReasonNFC(void)"];
  [v0 handleFailureInFunction:v1 file:@"BCSURLAction.m" lineNumber:88 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)performActionWithOptions:(void *)a1 completion:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 targetApplication];
  v2 = [v1 bundleIdentifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

void __50__BCSURLAction_performDefaultActionWithFBOptions___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 _bcs_privacyPreservingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __50__BCSURLAction_performDefaultActionWithFBOptions___block_invoke_105_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 _bcs_privacyPreservingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __29__BCSURLAction_performAction__block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 _bcs_privacyPreservingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_resolveAppClipForURL:completion:.cold.1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL _CPSClipsFeatureEnabled(void)"];
  [v0 handleFailureInFunction:v1 file:@"BCSURLAction.m" lineNumber:89 description:{@"%s", dlerror()}];

  __break(1u);
}

void __92__BCSURLAction__tryDetermineActionabilityForSpecialCodesFromQRScannerWithCompletionHandler___block_invoke_cold_2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 _bcs_privacyPreservingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __92__BCSURLAction__tryDetermineActionabilityForSpecialCodesFromQRScannerWithCompletionHandler___block_invoke_cold_3(void *a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + a2);
  v4 = 138477827;
  v5 = v2;
  _os_log_debug_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "BCSURLAction: got CTCellularPlanQRCodeAction %{private}@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_queryApplicationRecordForURL:(void *)a3 completionHandler:.cold.1(uint8_t *a1, void *a2, void *a3)
{
  v5 = [a2 _bcs_privacyPreservingDescription];
  *a1 = 138543362;
  *a3 = v5;
  _os_log_error_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "BCSURLAction: Failed to get application record %{public}@", a1, 0xCu);
}

- (void)_queryApplicationRecordForURL:(void *)a1 completionHandler:.cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 _bcs_privacyPreservingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_queryApplicationRecordForURL:(void *)a1 completionHandler:.cold.3(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = [a1 scheme];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "BCSURLAction: Ignoring resolved URL with private scheme '%{private}@'", v3, 0xCu);

  v2 = *MEMORY[0x277D85DE8];
}

- (void)_queryApplicationRecordForURL:(uint64_t)a1 completionHandler:(uint64_t)a2 .cold.6(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 112) bundleIdentifier];
  OUTLINED_FUNCTION_1();
  v6 = 2113;
  v7 = a2;
  _os_log_debug_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "BCSURLAction: Device is locked when resolving target application with bundleID %{private}@ for URL %{private}@", v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

@end