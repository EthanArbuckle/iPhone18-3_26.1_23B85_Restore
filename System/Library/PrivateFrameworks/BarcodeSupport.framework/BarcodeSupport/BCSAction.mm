@interface BCSAction
+ (id)_identityCredentialActionWithData:(id)data codePayload:(id)payload;
+ (void)getActionWithData:(id)data codePayload:(id)payload completionHandler:(id)handler;
- (BCSAction)initWithData:(id)data codePayload:(id)payload;
- (BCSActionDelegate)delegate;
- (BOOL)isLiveCameraOnlyAction;
- (BOOL)preferItemsInSubmenu;
- (NSArray)actionPickerItems;
- (NSArray)menuElements;
- (NSDictionary)debugDescriptionDictionary;
- (NSString)dataTypeDisplayString;
- (NSString)localizedDefaultActionDescription;
- (UIImage)actionIcon;
- (id)_fallbackDataTypeDisplayString;
- (id)menuProvider;
- (id)subMenuWithMenuItems:(id)items;
- (int64_t)codeType;
- (int64_t)payloadDataType;
- (unint64_t)menuElementsCount;
- (void)determineActionabilityWithCompletionHandler:(id)handler;
- (void)performActionWithCompletion:(id)completion;
- (void)performActionWithOptions:(id)options completion:(id)completion;
- (void)performDefaultAction;
- (void)showActionPicker;
@end

@implementation BCSAction

+ (void)getActionWithData:(id)data codePayload:(id)payload completionHandler:(id)handler
{
  dataCopy = data;
  payloadCopy = payload;
  handlerCopy = handler;
  type = [dataCopy type];
  if (type <= 8)
  {
    if (type > 5)
    {
      if (type != 6)
      {
        if (type != 7)
        {
          v12 = BCSWiFiConfigurationAction;
          goto LABEL_12;
        }

        goto LABEL_10;
      }
    }

    else
    {
      if ((type - 2) < 4)
      {
        goto LABEL_10;
      }

      if (!type)
      {
        v12 = BCSInvalidDataAction;
        goto LABEL_12;
      }

      if (type != 1)
      {
        goto LABEL_25;
      }
    }

LABEL_9:
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = BCSURLAction;
      goto LABEL_12;
    }

LABEL_10:
    v12 = BCSDataDetectorsSupportedAction;
LABEL_12:
    v13 = [[v12 alloc] initWithData:dataCopy codePayload:payloadCopy];
    goto LABEL_13;
  }

  if (type <= 14)
  {
    if ((type - 11) >= 4 && type != 9)
    {
      if (type != 10)
      {
        goto LABEL_25;
      }

      v12 = BCSStringAction;
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (type == 15)
  {
    v12 = BCSContinuityCameraAction;
    goto LABEL_12;
  }

  if (type != 17)
  {
    if (type != 16)
    {
      goto LABEL_25;
    }

    goto LABEL_9;
  }

  v13 = [self _identityCredentialActionWithData:dataCopy codePayload:payloadCopy];
LABEL_13:
  v14 = v13;
  if (!v13)
  {
LABEL_25:
    handlerCopy[2](handlerCopy, 0);
    goto LABEL_26;
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __61__BCSAction_getActionWithData_codePayload_completionHandler___block_invoke;
  v16[3] = &unk_278CFE798;
  v20 = handlerCopy;
  v17 = v14;
  v18 = dataCopy;
  v19 = payloadCopy;
  v15 = v14;
  [v15 determineActionabilityWithCompletionHandler:v16];

LABEL_26:
}

void __61__BCSAction_getActionWithData_codePayload_completionHandler___block_invoke(void *a1, int a2)
{
  v2 = a1[7];
  if (a2)
  {
    v3 = a1[4];
    v4 = *(v2 + 16);
    v5 = a1[7];

    v4(v5, v3);
  }

  else
  {
    v6 = [[BCSInvalidDataAction alloc] initWithData:a1[5] codePayload:a1[6]];
    (*(v2 + 16))(v2, v6);
  }
}

+ (id)_identityCredentialActionWithData:(id)data codePayload:(id)payload
{
  dataCopy = data;
  payloadCopy = payload;
  if (_bcs_deviceIsPad())
  {
    v7 = BCSInvalidDataAction;
LABEL_8:
    v11 = [[v7 alloc] initWithData:dataCopy codePayload:payloadCopy];
    goto LABEL_9;
  }

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  if ([bundleIdentifier isEqualToString:@"com.apple.BarcodeScanner"])
  {

LABEL_7:
    v7 = BCSURLAction;
    goto LABEL_8;
  }

  if (payloadCopy)
  {
    codeType = [payloadCopy codeType];

    if (codeType == 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v11 = 0;
LABEL_9:

  return v11;
}

- (BCSAction)initWithData:(id)data codePayload:(id)payload
{
  dataCopy = data;
  payloadCopy = payload;
  v13.receiver = self;
  v13.super_class = BCSAction;
  v9 = [(BCSAction *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_data, data);
    objc_storeStrong(&v10->_codePayload, payload);
    v11 = v10;
  }

  return v10;
}

- (void)showActionPicker
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  OUTLINED_FUNCTION_0(&dword_241993000, MEMORY[0x277D86220], v1, "%@: [BCSAction presentingViewControllerForAction:] must return non-nil view controller to perform action.", v2, v3, v4, v5, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)performDefaultAction
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"BCSAction.m" lineNumber:248 description:@"Subclasses must implement this"];
}

- (NSString)localizedDefaultActionDescription
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"BCSAction.m" lineNumber:253 description:@"Subclasses must implement this"];

  return _BCSLocalizedString(@"Open", &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
}

- (NSArray)actionPickerItems
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [[BCSActionPickerItem alloc] initWithAction:self];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSDictionary)debugDescriptionDictionary
{
  v13[3] = *MEMORY[0x277D85DE8];
  v12[0] = @"actionClass";
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v13[0] = v4;
  v12[1] = @"actionDescription";
  localizedActionDescription = [(BCSAction *)self localizedActionDescription];
  v13[1] = localizedActionDescription;
  v12[2] = @"defaultActionDescription";
  localizedDefaultActionDescription = [(BCSAction *)self localizedDefaultActionDescription];
  v13[2] = localizedDefaultActionDescription;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];

  debugDescriptionExtraInfoDictionary = [(BCSAction *)self debugDescriptionExtraInfoDictionary];
  if (debugDescriptionExtraInfoDictionary)
  {
    v9 = [v7 mutableCopy];
    [v9 setObject:debugDescriptionExtraInfoDictionary forKeyedSubscript:@"actionInfo"];
  }

  else
  {
    v9 = v7;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)determineActionabilityWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  data = [(BCSAction *)self data];
  type = [data type];

  if (type == 8)
  {
    isHostAppEntitled = _bcs_isHostAppEntitled();
  }

  else
  {
    isHostAppEntitled = 1;
  }

  handlerCopy[2](handlerCopy, isHostAppEntitled);
}

- (int64_t)codeType
{
  codePayload = self->_codePayload;
  if (codePayload)
  {
    return [(BCSCodePayload *)codePayload codeType];
  }

  else
  {
    return 1;
  }
}

- (void)performActionWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__BCSAction_performActionWithCompletion___block_invoke;
  v6[3] = &unk_278CFE7C0;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  _bcs_performActionAfterUnlock(v6);
}

void __41__BCSAction_performActionWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = _bcs_frontBoardUnlockOptions();
  [v2 performActionWithOptions:v3 completion:*(a1 + 40)];
}

- (void)performActionWithOptions:(id)options completion:(id)completion
{
  completionCopy = completion;
  [(BCSAction *)self performDefaultAction];
  completionCopy[2](completionCopy, 0);
}

- (BOOL)preferItemsInSubmenu
{
  v14 = *MEMORY[0x277D85DE8];
  detectedCode = [(BCSAction *)self detectedCode];

  if (detectedCode)
  {
    if (_bcs_isCurrentProcessSafari())
    {
      [(BCSAction *)self actionPickerItems];
      v9 = 0u;
      v10 = 0u;
      v11 = 0u;
      v4 = v12 = 0u;
      detectedCode = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (detectedCode)
      {
        v5 = *v10;
        while (2)
        {
          for (i = 0; i != detectedCode; i = i + 1)
          {
            if (*v10 != v5)
            {
              objc_enumerationMutation(v4);
            }

            if ([*(*(&v9 + 1) + 8 * i) canGroupInSubmenu])
            {
              LOBYTE(detectedCode) = 1;
              goto LABEL_14;
            }
          }

          detectedCode = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
          if (detectedCode)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:
    }

    else
    {
      LOBYTE(detectedCode) = 0;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return detectedCode;
}

- (id)subMenuWithMenuItems:(id)items
{
  itemsCopy = items;
  codeType = [(BCSAction *)self codeType];
  UIMenuClass = getUIMenuClass();
  if (codeType == 3)
  {
    v7 = @"appclip";
    v8 = @"App Clip Code MenuItem";
  }

  else
  {
    v7 = @"qrcode.viewfinder";
    v8 = @"QR Code";
  }

  v9 = _BCSLocalizedString(v8, &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
  v10 = [getUIImageClass() systemImageNamed:v7];
  v11 = [UIMenuClass menuWithTitle:v9 image:v10 identifier:0 options:32 children:itemsCopy];

  return v11;
}

- (NSArray)menuElements
{
  v33 = *MEMORY[0x277D85DE8];
  actionPickerItems = [(BCSAction *)self actionPickerItems];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = actionPickerItems;
  v5 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v25 = *v28;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        v8 = array2;
        v9 = array;
        if (*v28 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        UIActionClass = getUIActionClass();
        label = [v10 label];
        icon = [v10 icon];
        label2 = [v10 label];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __25__BCSAction_menuElements__block_invoke;
        v26[3] = &unk_278CFE810;
        v26[4] = v10;
        v15 = [UIActionClass actionWithTitle:label image:icon identifier:label2 handler:v26];

        array = v9;
        array2 = v8;
        if ([v10 useInlineMenu])
        {
          v16 = array;
        }

        else
        {
          v16 = v8;
        }

        [v16 addObject:v15];
      }

      v6 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v6);
  }

  if ([array count])
  {
    v17 = [getUIMenuClass() menuWithTitle:&stru_2853953A0 image:0 identifier:0 options:1 children:array];
    v18 = [MEMORY[0x277CBEA60] arrayWithObject:v17];
    if ([array2 count] && -[BCSAction preferItemsInSubmenu](self, "preferItemsInSubmenu"))
    {
      v19 = [(BCSAction *)self subMenuWithMenuItems:array2];
      v20 = [v18 arrayByAddingObject:v19];
    }

    else
    {
      v20 = [v18 arrayByAddingObjectsFromArray:array2];
    }

    goto LABEL_19;
  }

  if ([(BCSAction *)self preferItemsInSubmenu])
  {
    v17 = [(BCSAction *)self subMenuWithMenuItems:array2];
    v31 = v17;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
LABEL_19:

    goto LABEL_20;
  }

  v20 = array2;
LABEL_20:

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

void __25__BCSAction_menuElements__block_invoke(uint64_t a1)
{
  v1[0] = MEMORY[0x277D85DD0];
  v1[1] = 3221225472;
  v1[2] = __25__BCSAction_menuElements__block_invoke_2;
  v1[3] = &unk_278CFE7E8;
  v1[4] = *(a1 + 32);
  _bcs_performActionAfterUnlock(v1);
}

void __25__BCSAction_menuElements__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = _bcs_frontBoardUnlockOptions();
  [v1 performActionWithFBOptions:v2];
}

- (id)menuProvider
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __25__BCSAction_menuProvider__block_invoke;
  v4[3] = &unk_278CFE838;
  v4[4] = self;
  v2 = MEMORY[0x245CF4600](v4, a2);

  return v2;
}

id __25__BCSAction_menuProvider__block_invoke(uint64_t a1)
{
  UIMenuClass = getUIMenuClass();
  v3 = [*(a1 + 32) contentPreviewString];
  v4 = [*(a1 + 32) menuElements];
  v5 = [UIMenuClass menuWithTitle:v3 image:0 identifier:0 options:0 children:v4];

  return v5;
}

- (unint64_t)menuElementsCount
{
  actionPickerItems = [(BCSAction *)self actionPickerItems];
  v3 = [actionPickerItems count];

  return v3;
}

- (UIImage)actionIcon
{
  UIImageClass = getUIImageClass();
  actionIconSystemImageName = [(BCSAction *)self actionIconSystemImageName];
  v5 = [UIImageClass _systemImageNamed:actionIconSystemImageName];

  return v5;
}

- (id)_fallbackDataTypeDisplayString
{
  codeType = [(BCSAction *)self codeType];
  switch(codeType)
  {
    case 3:
      v4 = @"APP CLIP CODE DETECTED";
      break;
    case 2:
      v4 = @"NFC TAG DETECTED";
      break;
    case 1:
      v4 = @"QR CODE DETECTED";
      break;
    default:
      goto LABEL_8;
  }

  v3 = _BCSLocalizedString(v4, &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
LABEL_8:

  return v3;
}

- (NSString)dataTypeDisplayString
{
  localizedDefaultActionTitle = [(BCSAction *)self localizedDefaultActionTitle];
  v4 = [localizedDefaultActionTitle length];

  if (v4)
  {
    localizedDefaultActionTitle2 = [(BCSAction *)self localizedDefaultActionTitle];
LABEL_20:
    v13 = localizedDefaultActionTitle2;
    goto LABEL_21;
  }

  data = [(BCSAction *)self data];
  type = [data type];

  if (type == 10)
  {
    v8 = @"TEXT QR CODE";
LABEL_19:
    localizedDefaultActionTitle2 = _BCSLocalizedString(v8, &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
    goto LABEL_20;
  }

  if (type == 8)
  {
    if (MGGetBoolAnswer())
    {
      v8 = @"WLAN QR CODE";
    }

    else
    {
      v8 = @"WI-FI QR CODE";
    }

    goto LABEL_19;
  }

  if ((_bcs_isDeviceLocked() & 1) == 0 && [(BCSAction *)self shouldRequireUserToPickTargetApp])
  {
    v8 = @"APP QR CODE";
    goto LABEL_19;
  }

  clipMetadataRequest = [(BCSAction *)self clipMetadataRequest];

  if (clipMetadataRequest)
  {
    if ([(BCSAction *)self codeType]== 3)
    {
      v8 = @"APP CLIP CODE";
    }

    else
    {
      v8 = @"APP CLIP QR CODE";
    }

    goto LABEL_19;
  }

  defaultActionTargetApplicationBundleIdentifier = [(BCSAction *)self defaultActionTargetApplicationBundleIdentifier];
  v11 = defaultActionTargetApplicationBundleIdentifier;
  if (defaultActionTargetApplicationBundleIdentifier)
  {
    if (![defaultActionTargetApplicationBundleIdentifier isEqualToString:@"com.apple.mobilesafari"])
    {
      v15 = [getLSApplicationProxyClass() applicationProxyForIdentifier:v11];
      v16 = MEMORY[0x277CCACA8];
      v17 = _BCSLocalizedString(@"%@ QR CODE", &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
      localizedName = [v15 localizedName];
      v13 = [v16 stringWithFormat:v17, localizedName];

      goto LABEL_27;
    }

    _fallbackDataTypeDisplayString = _BCSLocalizedString(@"WEBSITE QR CODE", &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
  }

  else
  {
    _fallbackDataTypeDisplayString = [(BCSAction *)self _fallbackDataTypeDisplayString];
  }

  v13 = _fallbackDataTypeDisplayString;
LABEL_27:

LABEL_21:

  return v13;
}

- (int64_t)payloadDataType
{
  data = [(BCSAction *)self data];
  type = [data type];

  return type;
}

- (BOOL)isLiveCameraOnlyAction
{
  if ([(BCSAction *)self isPasskeyAction]|| [(BCSAction *)self isApplePayInitiateAction])
  {
    return 1;
  }

  return [(BCSAction *)self isDigitalIdentityCredentialPresentationAction];
}

- (BCSActionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end