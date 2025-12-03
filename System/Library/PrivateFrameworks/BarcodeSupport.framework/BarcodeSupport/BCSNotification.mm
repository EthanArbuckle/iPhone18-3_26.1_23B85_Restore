@interface BCSNotification
+ (id)_tlAlertConfiguration;
+ (id)notificationForAction:(id)action;
+ (id)tempVCardFileURL;
+ (void)tempVCardFileURL;
- (BOOL)_contentIsPreviewable;
- (BOOL)_shouldHandleActionPickerItemLocally:(id)locally;
- (BOOL)_shouldManuallyRequireAuthenticationForURL:(id)l;
- (BOOL)_shouldRequireUserToPickTargetApp;
- (BOOL)_shouldScheduleBackgroundActionForLaunchBundleID:(id)d;
- (BOOL)canHandleActionLocally;
- (BOOL)shouldHandleBulletinActionWithIdentifier:(id)identifier;
- (BOOL)shouldSkipBanner;
- (NSString)identifier;
- (UNNotificationRequest)request;
- (id)_actionDescriptionString;
- (id)_actionTypeStringForNFC;
- (id)_actionTypeStringForQRCode;
- (id)_attachmentIconURL;
- (id)_content;
- (id)_contentExtensionData;
- (id)_defaultURL;
- (id)_fbOptionsHandlingUnlockIfNecessary;
- (id)_initWithAction:(id)action;
- (id)_notificationActionFromActionPickerItem:(id)item;
- (id)_orderAppLinkActionsByRecency:(id)recency;
- (id)_pickerLabelForURLActionPickerItem:(id)item;
- (id)_supplementActions;
- (id)_title;
- (void)_content;
- (void)_fbOptionsHandlingUnlockIfNecessary;
- (void)_handleCalendarEventWithICSString:(id)string;
- (void)_handleContactInfo:(id)info;
- (void)_performActionAfterUnlock:(id)unlock;
- (void)_showAppPickerAlertWithFBOptions:(id)options;
- (void)didHandleBulletinActionWithIdentifier:(id)identifier;
- (void)handleActionWithIdentifier:(id)identifier notificationResponseOriginID:(id)d;
@end

@implementation BCSNotification

+ (id)notificationForAction:(id)action
{
  actionCopy = action;
  v5 = [[self alloc] _initWithAction:actionCopy];

  return v5;
}

- (id)_initWithAction:(id)action
{
  actionCopy = action;
  v12.receiver = self;
  v12.super_class = BCSNotification;
  v6 = [(BCSNotification *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_action, action);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    localActions = v7->_localActions;
    v7->_localActions = dictionary;

    v10 = v7;
  }

  return v7;
}

- (NSString)identifier
{
  identifier = self->_identifier;
  if (!identifier)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v6 = self->_identifier;
    self->_identifier = uUIDString;

    identifier = self->_identifier;
  }

  return identifier;
}

- (id)_title
{
  localizedDefaultActionTitle = [(BCSAction *)self->_action localizedDefaultActionTitle];
  v4 = [localizedDefaultActionTitle length];

  action = self->_action;
  if (v4)
  {
    localizedDefaultActionTitle = [(BCSAction *)action localizedDefaultActionTitle];
    goto LABEL_15;
  }

  codeType = [(BCSAction *)action codeType];
  switch(codeType)
  {
    case 3:
      _actionTypeStringForQRCode = [(BCSNotification *)self _actionTypeStringForQRCode];
      if (![_actionTypeStringForQRCode length])
      {
        v8 = @"App Clip Code Detected";
        goto LABEL_13;
      }

      break;
    case 2:
      _actionTypeStringForQRCode = [(BCSNotification *)self _actionTypeStringForNFC];
      if (![_actionTypeStringForQRCode length])
      {
        v8 = @"NFC Tag Detected";
        goto LABEL_13;
      }

      break;
    case 1:
      _actionTypeStringForQRCode = [(BCSNotification *)self _actionTypeStringForQRCode];
      if (![_actionTypeStringForQRCode length])
      {
        v8 = @"QR Code Detected";
LABEL_13:
        v9 = _BCSLocalizedString(v8, &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
        goto LABEL_14;
      }

      break;
    default:
      goto LABEL_15;
  }

  v9 = _actionTypeStringForQRCode;
LABEL_14:
  localizedDefaultActionTitle = v9;

LABEL_15:

  return localizedDefaultActionTitle;
}

- (BOOL)shouldSkipBanner
{
  if ([(BCSAction *)self->_action codeType]!= 2)
  {
    return 0;
  }

  clipMetadataRequest = [(BCSAction *)self->_action clipMetadataRequest];
  v4 = clipMetadataRequest != 0;

  return v4;
}

- (id)_actionTypeStringForNFC
{
  defaultActionTargetApplicationBundleIdentifier = [(BCSAction *)self->_action defaultActionTargetApplicationBundleIdentifier];
  v3 = defaultActionTargetApplicationBundleIdentifier;
  if (defaultActionTargetApplicationBundleIdentifier)
  {
    if ([defaultActionTargetApplicationBundleIdentifier isEqualToString:@"com.apple.mobilesafari"])
    {
      v4 = _BCSLocalizedString(@"Website NFC Tag", &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
    }

    else
    {
      v5 = [getLSApplicationProxyClass() applicationProxyForIdentifier:v3];
      v6 = MEMORY[0x277CCACA8];
      v7 = _BCSLocalizedString(@"%@ NFC Tag", &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
      localizedName = [v5 localizedName];
      v4 = [v6 stringWithFormat:v7, localizedName];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_actionTypeStringForQRCode
{
  data = [(BCSAction *)self->_action data];
  type = [data type];

  if (type == 10)
  {
    v5 = @"Text QR Code";
LABEL_18:
    v8 = _BCSLocalizedString(v5, &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
    goto LABEL_19;
  }

  if (type == 8)
  {
    if (MGGetBoolAnswer())
    {
      v5 = @"WLAN QR Code";
    }

    else
    {
      v5 = @"Wi-Fi QR Code";
    }

    goto LABEL_18;
  }

  if ((_bcs_isDeviceLocked() & 1) == 0 && [(BCSNotification *)self _shouldRequireUserToPickTargetApp])
  {
    v5 = @"App QR Code";
    goto LABEL_18;
  }

  clipMetadataRequest = [(BCSAction *)self->_action clipMetadataRequest];

  action = self->_action;
  if (clipMetadataRequest)
  {
    if ([(BCSAction *)action codeType]== 3)
    {
      v5 = @"App Clip Code";
    }

    else
    {
      v5 = @"App Clip QR Code";
    }

    goto LABEL_18;
  }

  if ([(BCSAction *)action isPasskeyAction])
  {
    v5 = @"Passkey QR Code";
    goto LABEL_18;
  }

  if ([(BCSAction *)self->_action isDigitalIdentityCredentialPresentationAction])
  {
    v5 = @"Identity QR Code";
    goto LABEL_18;
  }

  defaultActionTargetApplicationBundleIdentifier = [(BCSAction *)self->_action defaultActionTargetApplicationBundleIdentifier];
  if (defaultActionTargetApplicationBundleIdentifier)
  {
    if ([(BCSAction *)self->_action isAMSAction])
    {
      v11 = @"Apple QR Code";
    }

    else
    {
      if (![defaultActionTargetApplicationBundleIdentifier isEqualToString:@"com.apple.mobilesafari"])
      {
        v12 = [getLSApplicationProxyClass() applicationProxyForIdentifier:defaultActionTargetApplicationBundleIdentifier];
        v13 = MEMORY[0x277CCACA8];
        v14 = _BCSLocalizedString(@"%@ QR Code", &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
        localizedName = [v12 localizedName];
        v8 = [v13 stringWithFormat:v14, localizedName];

        goto LABEL_30;
      }

      v11 = @"Website QR Code";
    }

    v8 = _BCSLocalizedString(v11, &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
  }

  else
  {
    v8 = 0;
  }

LABEL_30:

LABEL_19:

  return v8;
}

- (id)_actionDescriptionString
{
  if ((_bcs_isDeviceLocked() & 1) != 0 || ![(BCSNotification *)self _shouldRequireUserToPickTargetApp])
  {
    localizedDefaultActionDescription = [(BCSAction *)self->_action localizedDefaultActionDescription];
  }

  else
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = _BCSLocalizedString(@"Open “%@” in App", &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
    v5 = [(BCSAction *)self->_action url];
    _bcs_displayString = [v5 _bcs_displayString];
    localizedDefaultActionDescription = [v3 stringWithFormat:v4, _bcs_displayString];
  }

  return localizedDefaultActionDescription;
}

- (id)_supplementActions
{
  v21 = *MEMORY[0x277D85DE8];
  action = self->_action;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = self->_action;
    if ([(BCSAction *)v4 appLinkCount]>= 2 && (_bcs_isDeviceLocked() & 1) != 0 || ([(BCSAction *)self->_action clipMetadataRequest], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
    {

      array = 0;
      goto LABEL_17;
    }
  }

  actionPickerItems = [(BCSAction *)self->_action actionPickerItems];
  array = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = actionPickerItems;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(BCSNotification *)self _notificationActionFromActionPickerItem:*(*(&v16 + 1) + 8 * i), v16];
        if (v13)
        {
          [array addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

LABEL_17:
  v14 = *MEMORY[0x277D85DE8];

  return array;
}

- (BOOL)shouldHandleBulletinActionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy && (-[BCSNotification identifier](self, "identifier"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [identifierCopy isEqualToString:v5], v5, (v6 & 1) == 0))
  {
    v7 = [(NSMutableDictionary *)self->_localActions objectForKeyedSubscript:identifierCopy];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(BCSNotification *)self _shouldHandleActionPickerItemLocally:v7];

  return v8;
}

- (BOOL)_shouldHandleActionPickerItemLocally:(id)locally
{
  locallyCopy = locally;
  v5 = locallyCopy;
  if (locallyCopy)
  {
    actionURL = [locallyCopy actionURL];
    if (actionURL)
    {
      action = self->_action;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v9 = self->_action;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          _bcs_isDataDetectorURL = [actionURL _bcs_isDataDetectorURL];
          goto LABEL_14;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v5;
          appLink = [v10 appLink];
          if (appLink)
          {
            _bcs_isDataDetectorURL = 1;
          }

          else
          {
            actionURL2 = [v10 actionURL];
            _bcs_isDataDetectorURL = [actionURL2 _bcs_isUPIURL];
          }

          goto LABEL_14;
        }
      }

      _bcs_isDataDetectorURL = 0;
    }

    else
    {
      _bcs_isDataDetectorURL = 1;
    }

LABEL_14:

    goto LABEL_15;
  }

  _bcs_isDataDetectorURL = [(BCSNotification *)self canHandleActionLocally];
LABEL_15:

  return _bcs_isDataDetectorURL;
}

- (id)_notificationActionFromActionPickerItem:(id)item
{
  itemCopy = item;
  actionURL = [itemCopy actionURL];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  action = self->_action;
  objc_opt_class();
  v8 = objc_opt_isKindOfClass();
  v9 = v8;
  if (!actionURL && (isKindOfClass & 1) == 0 && (v8 & 1) == 0)
  {
    goto LABEL_4;
  }

  label = [itemCopy label];
  _actionDescriptionString = [(BCSNotification *)self _actionDescriptionString];
  if ([label isEqualToString:_actionDescriptionString])
  {
    _contentIsPreviewable = [(BCSNotification *)self _contentIsPreviewable];

    if (!_contentIsPreviewable)
    {
LABEL_4:
      v10 = 0;
      goto LABEL_21;
    }
  }

  else
  {
  }

  v14 = [(BCSNotification *)self _shouldHandleActionPickerItemLocally:itemCopy];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  if (v14)
  {
    if ((isKindOfClass | v9))
    {
      v17 = 0;
    }

    else
    {
      v17 = 4;
    }

    [(NSMutableDictionary *)self->_localActions setObject:itemCopy forKey:uUIDString];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [(BCSNotification *)actionURL _notificationActionFromActionPickerItem:itemCopy];
    }

    goto LABEL_19;
  }

  label2 = actionURL;
  v17 = [(BCSNotification *)self _shouldManuallyRequireAuthenticationForURL:label2];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [BCSNotification _notificationActionFromActionPickerItem:];
    if (label2)
    {
      goto LABEL_17;
    }

LABEL_19:
    v21 = MEMORY[0x277CE1F80];
    label2 = [itemCopy label];
    v10 = [v21 actionWithIdentifier:uUIDString title:label2 options:v17];
    goto LABEL_20;
  }

  if (!label2)
  {
    goto LABEL_19;
  }

LABEL_17:
  v19 = MEMORY[0x277CE1F80];
  label3 = [itemCopy label];
  v10 = [v19 actionWithIdentifier:uUIDString title:label3 url:label2 options:v17];

LABEL_20:
LABEL_21:

  return v10;
}

- (BOOL)_contentIsPreviewable
{
  extraPreviewText = [(BCSAction *)self->_action extraPreviewText];
  v4 = [extraPreviewText length];

  if (v4)
  {
    return 1;
  }

  if (_bcs_isDeviceLocked())
  {
    return 0;
  }

  clipMetadataRequest = [(BCSAction *)self->_action clipMetadataRequest];

  if (clipMetadataRequest)
  {
    return 0;
  }

  defaultActionTargetApplicationBundleIdentifier = [(BCSAction *)self->_action defaultActionTargetApplicationBundleIdentifier];
  if ([defaultActionTargetApplicationBundleIdentifier isEqualToString:@"com.apple.mobilesafari"])
  {
    v5 = 1;
  }

  else
  {
    v5 = [defaultActionTargetApplicationBundleIdentifier isEqualToString:@"com.apple.Maps"];
  }

  return v5;
}

- (id)_contentExtensionData
{
  _contentIsPreviewable = [(BCSNotification *)self _contentIsPreviewable];
  _supplementActions = [(BCSNotification *)self _supplementActions];
  if ([_supplementActions count] || _contentIsPreviewable)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
    v7 = self->_action;
    v8 = [(BCSAction *)v7 url];
    if (v8)
    {
      [v6 encodeObject:v8 forKey:BCSBarcodeNotificationPayloadURLKey];
    }

    extraPreviewText = [(BCSAction *)v7 extraPreviewText];

    if (extraPreviewText)
    {
      extraPreviewText2 = [(BCSAction *)v7 extraPreviewText];
      [v6 encodeObject:extraPreviewText2 forKey:BCSBarcodeNotificationPayloadExtraPreviewText];
    }

    _actionDescriptionString = [(BCSNotification *)self _actionDescriptionString];
    if ([_actionDescriptionString length])
    {
      [v6 encodeObject:_actionDescriptionString forKey:BCSBarcodeNotificationPayloadPreviewFooterTitleKey];
      if ([v8 _bcs_isHTTPFamilyURL])
      {
        _bcs_fullURLDisplayString = [v8 _bcs_fullURLDisplayString];
        [v6 encodeObject:_bcs_fullURLDisplayString forKey:BCSBarcodeNotificationPayloadPreviewFooterSubtitleKey];
      }
    }

    action = self->_action;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = self->_action;
      contact = [(BCSAction *)v14 contact];

      if (contact)
      {
        contact2 = [(BCSAction *)v14 contact];
        [v6 encodeObject:contact2 forKey:BCSBarcodeNotificationPayloadContactKey];
      }

      icsString = [(BCSAction *)v14 icsString];

      if (icsString)
      {
        icsString2 = [(BCSAction *)v14 icsString];
        [v6 encodeObject:icsString2 forKey:BCSBarcodeNotificationPayloadICSStringKey];
      }

      scannerResult = [(BCSAction *)v14 scannerResult];

      if (scannerResult)
      {
        scannerResult2 = [(BCSAction *)v14 scannerResult];
        [v6 encodeObject:scannerResult2 forKey:BCSBarcodeNotificationPayloadScannerResultKey];
      }
    }

    if ([_supplementActions count])
    {
      [v6 encodeObject:_supplementActions forKey:BCSBarcodeNotificationPayloadActionsKey];
    }

    v21 = [MEMORY[0x277CCABB0] numberWithBool:_contentIsPreviewable];
    [v6 encodeObject:v21 forKey:BCSBarcodeNotificationPayloadContentIsPreviewableKey];

    encodedData = [v6 encodedData];
  }

  else
  {
    encodedData = 0;
  }

  return encodedData;
}

- (id)_defaultURL
{
  actionPickerItems = [(BCSAction *)self->_action actionPickerItems];
  firstObject = [actionPickerItems firstObject];
  actionURL = [firstObject actionURL];

  if (actionURL)
  {
    v6 = actionURL;
  }

  else
  {
    v6 = [(BCSAction *)self->_action url];
  }

  v7 = v6;

  return v7;
}

- (BOOL)canHandleActionLocally
{
  action = self->_action;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    clipMetadataRequest = [(BCSAction *)self->_action clipMetadataRequest];

    if (!clipMetadataRequest)
    {
      v7 = self->_action;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = self->_action;
        if (([(BCSAction *)v8 mustOpenAppLinkInApp]& 1) != 0)
        {
          _bcs_isUPIURL = 1;
LABEL_15:

          return _bcs_isUPIURL;
        }

        icsString = [(BCSAction *)v8 url];
        _bcs_isUPIURL = [icsString _bcs_isUPIURL];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          return 0;
        }

        v8 = self->_action;
        icsString = [(BCSAction *)v8 icsString];
        if (icsString)
        {
          _bcs_isUPIURL = 1;
        }

        else
        {
          contact = [(BCSAction *)v8 contact];
          _bcs_isUPIURL = contact != 0;
        }
      }

      goto LABEL_15;
    }
  }

  return 1;
}

- (void)_handleCalendarEventWithICSString:(id)string
{
  stringCopy = string;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSNotification: Handling event action", buf, 2u);
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v5 = getEKEventStoreClass_softClass;
  v22 = getEKEventStoreClass_softClass;
  if (!getEKEventStoreClass_softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __getEKEventStoreClass_block_invoke;
    v17 = &unk_278CFE620;
    v18 = &v19;
    __getEKEventStoreClass_block_invoke(buf);
    v5 = v20[3];
  }

  v6 = v5;
  _Block_object_dispose(&v19, 8);
  v7 = objc_alloc_init(v5);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__BCSNotification__handleCalendarEventWithICSString___block_invoke;
  v10[3] = &unk_278CFEF20;
  v11 = v7;
  v12 = stringCopy;
  selfCopy = self;
  v8 = stringCopy;
  v9 = v7;
  [v9 requestWriteOnlyAccessToEventsWithCompletion:v10];
}

void __53__BCSNotification__handleCalendarEventWithICSString___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v29 = @"ICS";
  v30[0] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  v8 = v6;
  v9 = v7;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v10 = getDDUIEventForResultsSymbolLoc_ptr;
  v28 = getDDUIEventForResultsSymbolLoc_ptr;
  if (!getDDUIEventForResultsSymbolLoc_ptr)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __getDDUIEventForResultsSymbolLoc_block_invoke;
    v24[3] = &unk_278CFE620;
    v24[4] = &v25;
    __getDDUIEventForResultsSymbolLoc_block_invoke(v24);
    v10 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v10)
  {
    __53__BCSNotification__handleCalendarEventWithICSString___block_invoke_cold_3();
  }

  v11 = v10(v8, 0, v9);

  v12 = *(a1 + 32);
  v23 = 0;
  v13 = [v12 saveEvent:v11 span:0 error:&v23];
  v14 = v23;
  if (v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    [v11 reset];
    v16 = [getLSApplicationWorkspaceClass() defaultWorkspace];
    v17 = [v11 externalURL];
    v18 = [*(a1 + 48) _fbOptionsHandlingUnlockIfNecessary];
    v22 = 0;
    v19 = [v16 openSensitiveURL:v17 withOptions:v18 error:&v22];
    v20 = v22;

    if ((v19 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __53__BCSNotification__handleCalendarEventWithICSString___block_invoke_cold_2();
      }

      [*(a1 + 32) removeEvent:v11 span:0 error:0];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __53__BCSNotification__handleCalendarEventWithICSString___block_invoke_cold_1(v14);
  }

  v21 = *MEMORY[0x277D85DE8];
}

+ (id)tempVCardFileURL
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v10 = 0;
  v3 = [defaultManager URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:&v10];
  v4 = v10;

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[BCSNotification tempVCardFileURL];
    }

    v5 = 0;
  }

  else
  {
    v6 = [v3 URLByAppendingPathComponent:@"com.apple.BarcodeSupport.Notification" isDirectory:1];
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v9 = 0;
    [defaultManager2 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:&v9];
    v4 = v9;

    if (v4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        +[BCSNotification tempVCardFileURL];
      }

      v5 = 0;
    }

    else
    {
      v5 = [v6 URLByAppendingPathComponent:@"Transfer.vcf" isDirectory:0];
    }
  }

  return v5;
}

- (void)_handleContactInfo:(id)info
{
  infoCopy = info;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSNotification: Handling contact action", buf, 2u);
  }

  v5 = objc_alloc_init(getCNContactStoreClass());
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__BCSNotification__handleContactInfo___block_invoke;
  v7[3] = &unk_278CFEF48;
  v8 = infoCopy;
  selfCopy = self;
  v6 = infoCopy;
  [v5 requestAccessForEntityType:0 completionHandler:v7];
}

void __38__BCSNotification__handleContactInfo___block_invoke(uint64_t a1, char a2, void *a3)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    CNContactVCardSerializationClass = getCNContactVCardSerializationClass();
    v17[0] = *(a1 + 32);
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    v8 = [CNContactVCardSerializationClass dataWithContacts:v7 error:0];

    v9 = *(a1 + 40);
    v10 = [objc_opt_class() tempVCardFileURL];
    if (!v10)
    {
LABEL_12:

      goto LABEL_13;
    }

    [v8 writeToURL:v10 atomically:1];
    v11 = [getLSApplicationProxyClass() applicationProxyForIdentifier:@"com.apple.MobileAddressBook"];
    if ([v11 isInstalled] && (objc_msgSend(v11, "isRestricted") & 1) == 0)
    {
      v12 = [getLSApplicationWorkspaceClass() defaultWorkspace];
      v15 = [*(a1 + 40) _fbOptionsHandlingUnlockIfNecessary];
      v13 = [v12 operationToOpenResource:v10 usingApplication:@"com.apple.MobileAddressBook" uniqueDocumentIdentifier:0 sourceIsManaged:0 userInfo:0 options:v15 delegate:0];

      [v13 start];
    }

    else
    {
      v12 = [getLSApplicationProxyClass() applicationProxyForSystemPlaceholder:@"com.apple.MobileAddressBook"];
      if (!v12)
      {
LABEL_11:

        goto LABEL_12;
      }

      v13 = [getLSApplicationWorkspaceClass() defaultWorkspace];
      v14 = [v12 bundleIdentifier];
      [v13 _LSFailedToOpenURL:0 withBundle:v14];
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __38__BCSNotification__handleContactInfo___block_invoke_cold_1(v5);
  }

LABEL_13:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_performActionAfterUnlock:(id)unlock
{
  unlockCopy = unlock;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v5 = getSBSGetScreenLockStatusSymbolLoc_ptr;
  v21 = getSBSGetScreenLockStatusSymbolLoc_ptr;
  if (!getSBSGetScreenLockStatusSymbolLoc_ptr)
  {
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __getSBSGetScreenLockStatusSymbolLoc_block_invoke;
    v16 = &unk_278CFE620;
    v17 = &v18;
    v6 = SpringBoardServicesLibrary();
    v19[3] = dlsym(v6, "SBSGetScreenLockStatus");
    getSBSGetScreenLockStatusSymbolLoc_ptr = *(v17[1] + 24);
    v5 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v5)
  {
    [BCSNotification _performActionAfterUnlock:];
  }

  if (v5(0) && ![(BCSNotification *)self shouldSkipBanner])
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __45__BCSNotification__performActionAfterUnlock___block_invoke;
    v11[3] = &unk_278CFEF70;
    v12 = unlockCopy;
    v7 = v11;
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v8 = getSBSRequestPasscodeUnlockUISymbolLoc_ptr;
    v21 = getSBSRequestPasscodeUnlockUISymbolLoc_ptr;
    if (!getSBSRequestPasscodeUnlockUISymbolLoc_ptr)
    {
      v13 = MEMORY[0x277D85DD0];
      v14 = 3221225472;
      v15 = __getSBSRequestPasscodeUnlockUISymbolLoc_block_invoke;
      v16 = &unk_278CFE620;
      v17 = &v18;
      v9 = SpringBoardServicesLibrary();
      v10 = dlsym(v9, "SBSRequestPasscodeUnlockUI");
      *(v17[1] + 24) = v10;
      getSBSRequestPasscodeUnlockUISymbolLoc_ptr = *(v17[1] + 24);
      v8 = v19[3];
    }

    _Block_object_dispose(&v18, 8);
    if (!v8)
    {
      [BCSNotification _performActionAfterUnlock:];
    }

    v8(v7);
  }

  else
  {
    unlockCopy[2](unlockCopy);
  }
}

uint64_t __45__BCSNotification__performActionAfterUnlock___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)handleActionWithIdentifier:(id)identifier notificationResponseOriginID:(id)d
{
  identifierCopy = identifier;
  dCopy = d;
  if ([(BCSNotification *)self shouldHandleBulletinActionWithIdentifier:identifierCopy])
  {
    identifier = [(BCSNotification *)self identifier];
    v9 = [identifierCopy isEqualToString:identifier];

    v10 = [(NSMutableDictionary *)self->_localActions objectForKey:identifierCopy];
    v11 = v10;
    if ((v9 & 1) == 0 && !v10)
    {
      goto LABEL_14;
    }

    action = self->_action;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = self->_action;
      icsString = [(BCSAction *)v13 icsString];

      if (icsString)
      {
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __75__BCSNotification_handleActionWithIdentifier_notificationResponseOriginID___block_invoke;
        v23[3] = &unk_278CFEE40;
        v23[4] = self;
        v24 = v13;
        v13 = v13;
        [(BCSNotification *)self _performActionAfterUnlock:v23];

LABEL_13:
LABEL_14:

        goto LABEL_15;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v11 contact], (v15 = objc_claimAutoreleasedReturnValue()) != 0) || (-[BCSAction contact](v13, "contact"), (v15 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __75__BCSNotification_handleActionWithIdentifier_notificationResponseOriginID___block_invoke_2;
        v21[3] = &unk_278CFEE40;
        v21[4] = self;
        v22 = v15;
        v16 = v15;
        [(BCSNotification *)self _performActionAfterUnlock:v21];

        goto LABEL_13;
      }
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __75__BCSNotification_handleActionWithIdentifier_notificationResponseOriginID___block_invoke_3;
    v17[3] = &unk_278CFEF98;
    v18 = v11;
    selfCopy = self;
    v20 = dCopy;
    [(BCSNotification *)self _performActionAfterUnlock:v17];

    v13 = v18;
    goto LABEL_13;
  }

LABEL_15:
}

void __75__BCSNotification_handleActionWithIdentifier_notificationResponseOriginID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) icsString];
  [v2 _handleCalendarEventWithICSString:v3];

  v4 = +[BCSAWDLogger sharedLogger];
  [v4 logBarcodeActivatedEventForAction:*(*(a1 + 32) + 8)];
}

void __75__BCSNotification_handleActionWithIdentifier_notificationResponseOriginID___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _handleContactInfo:*(a1 + 40)];
  v2 = +[BCSAWDLogger sharedLogger];
  [v2 logBarcodeActivatedEventForAction:*(*(a1 + 32) + 8)];
}

void __75__BCSNotification_handleActionWithIdentifier_notificationResponseOriginID___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (v3 = *(*(a1 + 40) + 8), objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = [*(a1 + 40) _fbOptionsHandlingUnlockIfNecessary];
    v5 = [v4 mutableCopy];

    if ([*(a1 + 48) length])
    {
      v6 = *(a1 + 48);
      v17 = 0;
      v18 = &v17;
      v19 = 0x2020000000;
      v7 = getFBSOpenApplicationOptionKeyLaunchOriginSymbolLoc_ptr;
      v20 = getFBSOpenApplicationOptionKeyLaunchOriginSymbolLoc_ptr;
      if (!getFBSOpenApplicationOptionKeyLaunchOriginSymbolLoc_ptr)
      {
        v12 = MEMORY[0x277D85DD0];
        v13 = 3221225472;
        v14 = __getFBSOpenApplicationOptionKeyLaunchOriginSymbolLoc_block_invoke;
        v15 = &unk_278CFE620;
        v16 = &v17;
        v8 = FrontBoardServicesLibrary();
        v18[3] = dlsym(v8, "FBSOpenApplicationOptionKeyLaunchOrigin");
        getFBSOpenApplicationOptionKeyLaunchOriginSymbolLoc_ptr = *(v16[1] + 24);
        v7 = v18[3];
      }

      _Block_object_dispose(&v17, 8);
      if (!v7)
      {
        __75__BCSNotification_handleActionWithIdentifier_notificationResponseOriginID___block_invoke_3_cold_1();
      }

      [v5 setObject:v6 forKeyedSubscript:*v7];
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      [v9 performActionWithFBOptions:v5];
    }

    else if ([*(a1 + 40) _shouldRequireUserToPickTargetApp])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSNotification: put up an alert to allow the user to choose app", &v12, 2u);
      }

      [*(a1 + 40) _showAppPickerAlertWithFBOptions:{v5, v12, v13, v14, v15}];
    }

    else
    {
      [*(*(a1 + 40) + 8) performDefaultActionWithFBOptions:v5];
    }
  }

  else
  {
    v10 = *(a1 + 32);
    if (v10)
    {

      [v10 performAction];
    }

    else
    {
      v11 = *(*(a1 + 40) + 8);

      [v11 performDefaultAction];
    }
  }
}

+ (id)_tlAlertConfiguration
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v2 = getTLAlertConfigurationClass_softClass;
  v13 = getTLAlertConfigurationClass_softClass;
  if (!getTLAlertConfigurationClass_softClass)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __getTLAlertConfigurationClass_block_invoke;
    v9[3] = &unk_278CFE620;
    v9[4] = &v10;
    __getTLAlertConfigurationClass_block_invoke(v9);
    v2 = v11[3];
  }

  v3 = v2;
  _Block_object_dispose(&v10, 8);
  v4 = [[v2 alloc] initWithType:20];
  v5 = _tlAlertConfiguration_alertConfiguration;
  _tlAlertConfiguration_alertConfiguration = v4;

  v6 = getTLAlertTopicPassbookNFCScanComplete();
  [_tlAlertConfiguration_alertConfiguration setTopic:v6];

  v7 = _tlAlertConfiguration_alertConfiguration;

  return v7;
}

- (id)_attachmentIconURL
{
  if ([(BCSNotification *)self _shouldRequireUserToPickTargetApp])
  {
    imageURL = 0;
  }

  else
  {
    attachmentIcon = self->_attachmentIcon;
    if (!attachmentIcon)
    {
      v5 = [[BCSNotificationIcon alloc] initWithAction:self->_action];
      v6 = self->_attachmentIcon;
      self->_attachmentIcon = v5;

      attachmentIcon = self->_attachmentIcon;
    }

    imageURL = [(BCSNotificationIcon *)attachmentIcon imageURL];
  }

  return imageURL;
}

- (id)_content
{
  v41[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CE1F60]);
  if ([(BCSNotification *)self _contentIsPreviewable])
  {
    v4 = @"barcodeNotificationCategory";
  }

  else
  {
    v4 = @"barcodeNotificationDefaultViewCategory";
  }

  [v3 setCategoryIdentifier:v4];
  _contentExtensionData = [(BCSNotification *)self _contentExtensionData];
  if ([_contentExtensionData length])
  {
    v40 = BCSBarcodeNotificationPayloadKey;
    v41[0] = _contentExtensionData;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    [v3 setUserInfo:v6];
  }

  _title = [(BCSNotification *)self _title];
  [v3 setTitle:_title];

  p_action = &self->_action;
  clipMetadataRequest = [(BCSAction *)self->_action clipMetadataRequest];

  action = self->_action;
  if (clipMetadataRequest)
  {
    clipMetadataRequest2 = [(BCSAction *)action clipMetadataRequest];
    getClipMetadataSynchronously = [clipMetadataRequest2 getClipMetadataSynchronously];

    clipName = [getClipMetadataSynchronously clipName];
    [v3 setSubtitle:clipName];

    _actionDescriptionString = [(BCSNotification *)self _actionDescriptionString];
    [v3 setBody:_actionDescriptionString];
  }

  else
  {
    extraPreviewText = [(BCSAction *)action extraPreviewText];

    getClipMetadataSynchronously = [(BCSNotification *)self _actionDescriptionString];
    if (extraPreviewText)
    {
      [v3 setSubtitle:getClipMetadataSynchronously];

      v16 = MEMORY[0x277CCACA8];
      getClipMetadataSynchronously = _BCSLocalizedString(@"Contents: “%@”", &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
      extraPreviewText2 = [(BCSAction *)*p_action extraPreviewText];
      v18 = [v16 stringWithFormat:getClipMetadataSynchronously, extraPreviewText2];
      [v3 setBody:v18];
    }

    else
    {
      [v3 setBody:getClipMetadataSynchronously];
    }
  }

  if ([(BCSAction *)*p_action codeType]!= 2)
  {
    if ([(BCSAction *)*p_action codeType]== 3)
    {
      v20 = +[BCSNotificationIcon viewfinderIcon];
    }

    else
    {
      if ([(BCSAction *)*p_action codeType]!= 1)
      {
LABEL_18:
        [v3 setThreadIdentifier:BCSBarcodeQRCodeNotificationSectionID];
        [v3 setShouldHideDate:1];
        goto LABEL_19;
      }

      v20 = +[BCSNotificationIcon qrCodeIcon];
    }

    v21 = v20;
    [v3 setIcon:v20];

    goto LABEL_18;
  }

  v19 = +[BCSNotificationIcon nfcIcon];
  [v3 setIcon:v19];

  [v3 setThreadIdentifier:BCSBarcodeNFCNotificationSectionID];
LABEL_19:
  [v3 setShouldIgnoreDoNotDisturb:1];
  if ([(BCSAction *)*p_action codeType]== 2)
  {
    v22 = [MEMORY[0x277CE1F70] soundWithAlertType:20];
    v23 = getTLAlertTopicPassbookNFCScanComplete();
    [v22 setAlertTopic:v23];

    [v3 setSound:v22];
  }

  _attachmentIconURL = [(BCSNotification *)self _attachmentIconURL];
  if (_attachmentIconURL)
  {
    v25 = MEMORY[0x277CE1F90];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v38 = 0;
    v28 = [v25 attachmentWithIdentifier:uUIDString URL:_attachmentIconURL options:0 error:&v38];
    v29 = v38;

    if (v29)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [(BCSNotification *)_attachmentIconURL _content];
      }
    }

    else if (v28)
    {
      v39 = v28;
      v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
      [v3 setAttachments:v30];
    }
  }

  v31 = *p_action;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32 = v3;
    goto LABEL_39;
  }

  _defaultURL = [(BCSNotification *)self _defaultURL];
  if ([(BCSNotification *)self canHandleActionLocally])
  {
    goto LABEL_31;
  }

  if (!_defaultURL || ([_defaultURL _bcs_isDataDetectorURL] & 1) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [(BCSNotification *)&self->_action _content];
    }

    v32 = 0;
    goto LABEL_38;
  }

  [v3 setDefaultActionURL:_defaultURL];
  if ([(BCSNotification *)self _shouldManuallyRequireAuthenticationForURL:_defaultURL])
  {
    [v3 setShouldAuthenticateDefaultAction:1];
  }

  defaultActionTargetApplicationBundleIdentifier = [(BCSAction *)self->_action defaultActionTargetApplicationBundleIdentifier];
  v37 = [(BCSNotification *)self _shouldScheduleBackgroundActionForLaunchBundleID:defaultActionTargetApplicationBundleIdentifier];

  if (v37)
  {
LABEL_31:
    [v3 setShouldBackgroundDefaultAction:1];
  }

  v32 = v3;
LABEL_38:

LABEL_39:
  v34 = *MEMORY[0x277D85DE8];

  return v32;
}

- (UNNotificationRequest)request
{
  v3 = MEMORY[0x277CE1FC0];
  identifier = [(BCSNotification *)self identifier];
  _content = [(BCSNotification *)self _content];
  v6 = [v3 requestWithIdentifier:identifier content:_content trigger:0];

  return v6;
}

- (void)didHandleBulletinActionWithIdentifier:(id)identifier
{
  if (![(BCSNotification *)self shouldHandleBulletinActionWithIdentifier:identifier])
  {
    v4 = +[BCSAWDLogger sharedLogger];
    [v4 logBarcodeActivatedEventForAction:self->_action];
  }
}

- (BOOL)_shouldScheduleBackgroundActionForLaunchBundleID:(id)d
{
  dCopy = d;
  if ([dCopy isEqualToString:@"com.apple.mobilephone"] & 1) != 0 || (objc_msgSend(dCopy, "isEqualToString:", @"com.apple.InCallService"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [dCopy isEqualToString:@"com.apple.facetime"];
  }

  return v4;
}

- (id)_fbOptionsHandlingUnlockIfNecessary
{
  v19[2] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v2 = getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_ptr;
  v16 = getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_ptr;
  if (!getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_ptr)
  {
    v3 = FrontBoardServicesLibrary();
    v14[3] = dlsym(v3, "FBSOpenApplicationOptionKeyPromptUnlockDevice");
    getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_ptr = v14[3];
    v2 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v2)
  {
    [BCSNotification _fbOptionsHandlingUnlockIfNecessary];
  }

  v4 = *v2;
  v17 = v4;
  v5 = MEMORY[0x277CBEC38];
  v19[0] = MEMORY[0x277CBEC38];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v6 = getFBSOpenApplicationOptionKeyUnlockDeviceSymbolLoc_ptr;
  v16 = getFBSOpenApplicationOptionKeyUnlockDeviceSymbolLoc_ptr;
  if (!getFBSOpenApplicationOptionKeyUnlockDeviceSymbolLoc_ptr)
  {
    v7 = FrontBoardServicesLibrary();
    v14[3] = dlsym(v7, "FBSOpenApplicationOptionKeyUnlockDevice");
    getFBSOpenApplicationOptionKeyUnlockDeviceSymbolLoc_ptr = v14[3];
    v6 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v6)
  {
    [BCSNotification _fbOptionsHandlingUnlockIfNecessary];
  }

  v18 = *v6;
  v19[1] = v5;
  v8 = MEMORY[0x277CBEAC0];
  v9 = v18;
  v10 = [v8 dictionaryWithObjects:v19 forKeys:&v17 count:2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)_shouldManuallyRequireAuthenticationForURL:(id)l
{
  lCopy = l;
  if ([(BCSAction *)self->_action isAMSAction])
  {
    v5 = 1;
  }

  else
  {
    scheme = [lCopy scheme];
    lowercaseString = [scheme lowercaseString];

    if ([lowercaseString isEqualToString:@"tel"] & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"facetime") & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"facetime-audio"))
    {
      v5 = 1;
    }

    else
    {
      v5 = [lowercaseString isEqualToString:@"telemergencycall"];
    }
  }

  return v5;
}

- (BOOL)_shouldRequireUserToPickTargetApp
{
  action = self->_action;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = self->_action;
    if ([(BCSAction *)v4 appLinkCount]< 2)
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v5 = [(BCSAction *)v4 hasPreferredAppLink]^ 1;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)_pickerLabelForURLActionPickerItem:(id)item
{
  appLink = [item appLink];
  targetApplicationProxy = [appLink targetApplicationProxy];
  localizedName = [targetApplicationProxy localizedName];

  return localizedName;
}

- (void)_showAppPickerAlertWithFBOptions:(id)options
{
  v28[7] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  actionPickerItems = [(BCSAction *)self->_action actionPickerItems];
  if ([actionPickerItems count] >= 3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      LOWORD(v25[0]) = 0;
      _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSNotification: User has more than 2 apps to choose from.", v25, 2u);
    }

    v6 = [(BCSNotification *)self _orderAppLinkActionsByRecency:actionPickerItems];

    actionPickerItems = v6;
  }

  v7 = [actionPickerItems objectAtIndexedSubscript:0];
  v8 = [(BCSNotification *)self _pickerLabelForURLActionPickerItem:v7];

  v9 = [actionPickerItems objectAtIndexedSubscript:1];
  v10 = [(BCSNotification *)self _pickerLabelForURLActionPickerItem:v9];

  v27[0] = *MEMORY[0x277CBF188];
  v11 = _BCSLocalizedString(@"Choose App to Open URL", &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
  v28[0] = v11;
  v27[1] = *MEMORY[0x277CBF1E8];
  v12 = _BCSLocalizedString(@"Cancel", &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
  v13 = v12;
  v14 = *MEMORY[0x277CBF1C0];
  if (v8)
  {
    v15 = v8;
  }

  else
  {
    v15 = &stru_2853953A0;
  }

  v28[1] = v12;
  v28[2] = v15;
  v16 = *MEMORY[0x277CBF218];
  v27[2] = v14;
  v27[3] = v16;
  if (v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = &stru_2853953A0;
  }

  v27[4] = *MEMORY[0x277CBF1B0];
  v27[5] = @"SBUserNotificationForcesModalAlertAppearance";
  v28[3] = v17;
  v28[4] = MEMORY[0x277CBEC38];
  v27[6] = @"SBUserNotificationDisplayActionButtonOnLockScreen";
  v28[5] = MEMORY[0x277CBEC38];
  v28[6] = MEMORY[0x277CBEC38];
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:7];

  error = 0;
  v19 = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 0.0, 0x20uLL, &error, v18);
  if (v19)
  {
    v20 = v19;
    v25[0] = 0;
    CFUserNotificationReceiveResponse(v19, 0.0, v25);
    CFRelease(v20);
    if (v25[0] == 1)
    {
      v21 = 0;
    }

    else
    {
      if (v25[0] != 2)
      {
        goto LABEL_20;
      }

      v21 = 1;
    }

    v22 = [actionPickerItems objectAtIndexedSubscript:v21];
    if (v22)
    {
      v23 = v22;
      [v22 performActionWithFBOptions:optionsCopy];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [BCSNotification _showAppPickerAlertWithFBOptions:?];
  }

LABEL_20:

  v24 = *MEMORY[0x277D85DE8];
}

- (id)_orderAppLinkActionsByRecency:(id)recency
{
  v26 = *MEMORY[0x277D85DE8];
  recencyCopy = recency;
  weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = recencyCopy;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        appLink = [v10 appLink];
        targetApplicationProxy = [appLink targetApplicationProxy];
        bundleIdentifier = [targetApplicationProxy bundleIdentifier];

        v14 = _bcs_lastTimeAppWasUsed(bundleIdentifier);
        [weakToStrongObjectsMapTable setObject:v14 forKey:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  v15 = [v5 mutableCopy];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __49__BCSNotification__orderAppLinkActionsByRecency___block_invoke;
  v19[3] = &unk_278CFEFC0;
  v20 = weakToStrongObjectsMapTable;
  v16 = weakToStrongObjectsMapTable;
  [v15 sortUsingComparator:v19];

  v17 = *MEMORY[0x277D85DE8];

  return v15;
}

uint64_t __49__BCSNotification__orderAppLinkActionsByRecency___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKey:a2];
  v8 = [*(a1 + 32) objectForKey:v6];

  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (v7)
    {
      v10 = -1;
    }

    else
    {
      v10 = v8 != 0;
    }
  }

  else
  {
    v10 = [v8 compare:v7];
  }

  return v10;
}

- (void)_notificationActionFromActionPickerItem:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "BCSNotification: Setting up UNNotificationAction with URL %{private}@", v1, 0xCu);
  v0 = *MEMORY[0x277D85DE8];
}

- (void)_notificationActionFromActionPickerItem:(uint64_t)a1 .cold.2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [a2 targetApplicationBundleIdentifier];
  v5 = 138478083;
  v6 = a1;
  v7 = 2113;
  v8 = v3;
  _os_log_debug_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "BCSNotification: Setting up UNNotificationAction that will be handled locally with URL %{private}@ and target application %{private}@", &v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

void __53__BCSNotification__handleCalendarEventWithICSString___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 _bcs_privacyPreservingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __53__BCSNotification__handleCalendarEventWithICSString___block_invoke_cold_3()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"EKEvent *_DDUIEventForResults(EKEventStore *__strong, NSArray *__strong, NSDictionary *__strong)"}];
  [v0 handleFailureInFunction:v1 file:@"DataDetectorsUISoftLink.h" lineNumber:22 description:{@"%s", dlerror()}];

  __break(1u);
}

+ (void)tempVCardFileURL
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __38__BCSNotification__handleContactInfo___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 _bcs_privacyPreservingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_performActionAfterUnlock:.cold.1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void _SBSRequestPasscodeUnlockUI(void (^__strong)(Boolean))"];
  [v0 handleFailureInFunction:v1 file:@"BCSNotification.m" lineNumber:60 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_performActionAfterUnlock:.cold.2()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL _SBSGetScreenLockStatus(Boolean *)"];
  [v0 handleFailureInFunction:v1 file:@"BCSNotification.m" lineNumber:59 description:{@"%s", dlerror()}];

  __break(1u);
}

void __75__BCSNotification_handleActionWithIdentifier_notificationResponseOriginID___block_invoke_3_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getFBSOpenApplicationOptionKeyLaunchOrigin(void)"];
  [v0 handleFailureInFunction:v1 file:@"BCSNotification.m" lineNumber:65 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_content
{
  v8 = *MEMORY[0x277D85DE8];
  data = [*self data];
  [data type];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_fbOptionsHandlingUnlockIfNecessary
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getFBSOpenApplicationOptionKeyPromptUnlockDevice(void)"];
  [currentHandler handleFailureInFunction:v1 file:@"BCSNotification.m" lineNumber:64 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_showAppPickerAlertWithFBOptions:(int *)a1 .cold.1(int *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

@end