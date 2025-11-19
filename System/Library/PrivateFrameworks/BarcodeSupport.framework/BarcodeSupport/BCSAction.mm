@interface BCSAction
+ (id)_identityCredentialActionWithData:(id)a3 codePayload:(id)a4;
+ (void)getActionWithData:(id)a3 codePayload:(id)a4 completionHandler:(id)a5;
- (BCSAction)initWithData:(id)a3 codePayload:(id)a4;
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
- (id)subMenuWithMenuItems:(id)a3;
- (int64_t)codeType;
- (int64_t)payloadDataType;
- (unint64_t)menuElementsCount;
- (void)determineActionabilityWithCompletionHandler:(id)a3;
- (void)performActionWithCompletion:(id)a3;
- (void)performActionWithOptions:(id)a3 completion:(id)a4;
- (void)performDefaultAction;
- (void)showActionPicker;
@end

@implementation BCSAction

+ (void)getActionWithData:(id)a3 codePayload:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 type];
  if (v11 <= 8)
  {
    if (v11 > 5)
    {
      if (v11 != 6)
      {
        if (v11 != 7)
        {
          v12 = BCSWiFiConfigurationAction;
          goto LABEL_12;
        }

        goto LABEL_10;
      }
    }

    else
    {
      if ((v11 - 2) < 4)
      {
        goto LABEL_10;
      }

      if (!v11)
      {
        v12 = BCSInvalidDataAction;
        goto LABEL_12;
      }

      if (v11 != 1)
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
    v13 = [[v12 alloc] initWithData:v8 codePayload:v9];
    goto LABEL_13;
  }

  if (v11 <= 14)
  {
    if ((v11 - 11) >= 4 && v11 != 9)
    {
      if (v11 != 10)
      {
        goto LABEL_25;
      }

      v12 = BCSStringAction;
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (v11 == 15)
  {
    v12 = BCSContinuityCameraAction;
    goto LABEL_12;
  }

  if (v11 != 17)
  {
    if (v11 != 16)
    {
      goto LABEL_25;
    }

    goto LABEL_9;
  }

  v13 = [a1 _identityCredentialActionWithData:v8 codePayload:v9];
LABEL_13:
  v14 = v13;
  if (!v13)
  {
LABEL_25:
    v10[2](v10, 0);
    goto LABEL_26;
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __61__BCSAction_getActionWithData_codePayload_completionHandler___block_invoke;
  v16[3] = &unk_278CFE798;
  v20 = v10;
  v17 = v14;
  v18 = v8;
  v19 = v9;
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

+ (id)_identityCredentialActionWithData:(id)a3 codePayload:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (_bcs_deviceIsPad())
  {
    v7 = BCSInvalidDataAction;
LABEL_8:
    v11 = [[v7 alloc] initWithData:v5 codePayload:v6];
    goto LABEL_9;
  }

  v8 = [MEMORY[0x277CCA8D8] mainBundle];
  v9 = [v8 bundleIdentifier];
  if ([v9 isEqualToString:@"com.apple.BarcodeScanner"])
  {

LABEL_7:
    v7 = BCSURLAction;
    goto LABEL_8;
  }

  if (v6)
  {
    v10 = [v6 codeType];

    if (v10 == 1)
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

- (BCSAction)initWithData:(id)a3 codePayload:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = BCSAction;
  v9 = [(BCSAction *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_data, a3);
    objc_storeStrong(&v10->_codePayload, a4);
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
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"BCSAction.m" lineNumber:248 description:@"Subclasses must implement this"];
}

- (NSString)localizedDefaultActionDescription
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"BCSAction.m" lineNumber:253 description:@"Subclasses must implement this"];

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
  v5 = [(BCSAction *)self localizedActionDescription];
  v13[1] = v5;
  v12[2] = @"defaultActionDescription";
  v6 = [(BCSAction *)self localizedDefaultActionDescription];
  v13[2] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v8 = [(BCSAction *)self debugDescriptionExtraInfoDictionary];
  if (v8)
  {
    v9 = [v7 mutableCopy];
    [v9 setObject:v8 forKeyedSubscript:@"actionInfo"];
  }

  else
  {
    v9 = v7;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)determineActionabilityWithCompletionHandler:(id)a3
{
  v7 = a3;
  v4 = [(BCSAction *)self data];
  v5 = [v4 type];

  if (v5 == 8)
  {
    isHostAppEntitled = _bcs_isHostAppEntitled();
  }

  else
  {
    isHostAppEntitled = 1;
  }

  v7[2](v7, isHostAppEntitled);
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

- (void)performActionWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__BCSAction_performActionWithCompletion___block_invoke;
  v6[3] = &unk_278CFE7C0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  _bcs_performActionAfterUnlock(v6);
}

void __41__BCSAction_performActionWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = _bcs_frontBoardUnlockOptions();
  [v2 performActionWithOptions:v3 completion:*(a1 + 40)];
}

- (void)performActionWithOptions:(id)a3 completion:(id)a4
{
  v5 = a4;
  [(BCSAction *)self performDefaultAction];
  v5[2](v5, 0);
}

- (BOOL)preferItemsInSubmenu
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(BCSAction *)self detectedCode];

  if (v3)
  {
    if (_bcs_isCurrentProcessSafari())
    {
      [(BCSAction *)self actionPickerItems];
      v9 = 0u;
      v10 = 0u;
      v11 = 0u;
      v4 = v12 = 0u;
      v3 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        v5 = *v10;
        while (2)
        {
          for (i = 0; i != v3; i = i + 1)
          {
            if (*v10 != v5)
            {
              objc_enumerationMutation(v4);
            }

            if ([*(*(&v9 + 1) + 8 * i) canGroupInSubmenu])
            {
              LOBYTE(v3) = 1;
              goto LABEL_14;
            }
          }

          v3 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
          if (v3)
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
      LOBYTE(v3) = 0;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

- (id)subMenuWithMenuItems:(id)a3
{
  v4 = a3;
  v5 = [(BCSAction *)self codeType];
  UIMenuClass = getUIMenuClass();
  if (v5 == 3)
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
  v11 = [UIMenuClass menuWithTitle:v9 image:v10 identifier:0 options:32 children:v4];

  return v11;
}

- (NSArray)menuElements
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = [(BCSAction *)self actionPickerItems];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CBEB18] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v2;
  v5 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v25 = *v28;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        v8 = v4;
        v9 = v3;
        if (*v28 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        UIActionClass = getUIActionClass();
        v12 = [v10 label];
        v13 = [v10 icon];
        v14 = [v10 label];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __25__BCSAction_menuElements__block_invoke;
        v26[3] = &unk_278CFE810;
        v26[4] = v10;
        v15 = [UIActionClass actionWithTitle:v12 image:v13 identifier:v14 handler:v26];

        v3 = v9;
        v4 = v8;
        if ([v10 useInlineMenu])
        {
          v16 = v3;
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

  if ([v3 count])
  {
    v17 = [getUIMenuClass() menuWithTitle:&stru_2853953A0 image:0 identifier:0 options:1 children:v3];
    v18 = [MEMORY[0x277CBEA60] arrayWithObject:v17];
    if ([v4 count] && -[BCSAction preferItemsInSubmenu](self, "preferItemsInSubmenu"))
    {
      v19 = [(BCSAction *)self subMenuWithMenuItems:v4];
      v20 = [v18 arrayByAddingObject:v19];
    }

    else
    {
      v20 = [v18 arrayByAddingObjectsFromArray:v4];
    }

    goto LABEL_19;
  }

  if ([(BCSAction *)self preferItemsInSubmenu])
  {
    v17 = [(BCSAction *)self subMenuWithMenuItems:v4];
    v31 = v17;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
LABEL_19:

    goto LABEL_20;
  }

  v20 = v4;
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
  v2 = [(BCSAction *)self actionPickerItems];
  v3 = [v2 count];

  return v3;
}

- (UIImage)actionIcon
{
  UIImageClass = getUIImageClass();
  v4 = [(BCSAction *)self actionIconSystemImageName];
  v5 = [UIImageClass _systemImageNamed:v4];

  return v5;
}

- (id)_fallbackDataTypeDisplayString
{
  v2 = [(BCSAction *)self codeType];
  switch(v2)
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
  v3 = [(BCSAction *)self localizedDefaultActionTitle];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(BCSAction *)self localizedDefaultActionTitle];
LABEL_20:
    v13 = v5;
    goto LABEL_21;
  }

  v6 = [(BCSAction *)self data];
  v7 = [v6 type];

  if (v7 == 10)
  {
    v8 = @"TEXT QR CODE";
LABEL_19:
    v5 = _BCSLocalizedString(v8, &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
    goto LABEL_20;
  }

  if (v7 == 8)
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

  v9 = [(BCSAction *)self clipMetadataRequest];

  if (v9)
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

  v10 = [(BCSAction *)self defaultActionTargetApplicationBundleIdentifier];
  v11 = v10;
  if (v10)
  {
    if (![v10 isEqualToString:@"com.apple.mobilesafari"])
    {
      v15 = [getLSApplicationProxyClass() applicationProxyForIdentifier:v11];
      v16 = MEMORY[0x277CCACA8];
      v17 = _BCSLocalizedString(@"%@ QR CODE", &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
      v18 = [v15 localizedName];
      v13 = [v16 stringWithFormat:v17, v18];

      goto LABEL_27;
    }

    v12 = _BCSLocalizedString(@"WEBSITE QR CODE", &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
  }

  else
  {
    v12 = [(BCSAction *)self _fallbackDataTypeDisplayString];
  }

  v13 = v12;
LABEL_27:

LABEL_21:

  return v13;
}

- (int64_t)payloadDataType
{
  v2 = [(BCSAction *)self data];
  v3 = [v2 type];

  return v3;
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