@interface AXPearlSettingsController
- (id)_pearlDevice;
- (id)attentionAware:(id)aware;
- (id)authenticationHaptics:(id)haptics;
- (id)pearlUnlock:(id)unlock;
- (id)specifiers;
- (void)devicePINControllerDidDismissPINPane:(id)pane;
- (void)didAcceptEnteredPIN:(id)n;
- (void)didCancelEnteringPIN;
- (void)setAttentionAware:(id)aware specifier:(id)specifier;
- (void)setAuthenticationHaptics:(id)haptics specifier:(id)specifier;
- (void)setPearlUnlock:(id)unlock specifier:(id)specifier;
- (void)showPINSheet:(id)sheet;
- (void)updateAttentionSpec;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AXPearlSettingsController

- (void)updateAttentionSpec
{
  v3 = [(AXPearlSettingsController *)self specifierForID:@"AttentionAware"];
  v4 = objc_opt_new();
  v11 = 0;
  v5 = [v4 isDistanceSamplingEnabledWithError:&v11];
  v6 = v11;
  v7 = AXLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [NSNumber numberWithBool:v5];
    *buf = 138412546;
    v13 = v8;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Handling screen distance (enabled: %@) error: %@", buf, 0x16u);
  }

  if (v5)
  {
    v9 = _AXSAttentionAwarenessFeaturesEnabled() == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = [NSNumber numberWithBool:v9];
  [v3 setProperty:v10 forKey:PSEnabledKey];

  [(AXPearlSettingsController *)self reloadSpecifier:v3];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    if (AXDeviceHasPearl())
    {
      v6 = settingsLocString(@"Pearl_Unlock_Attention_Title", @"Accessibility");
      v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:"setPearlUnlock:specifier:" get:"pearlUnlock:" detail:0 cell:6 edit:0];

      v8 = PSKeyNameKey;
      [v7 setProperty:@"PearlUnlockAttention" forKey:PSKeyNameKey];
      v9 = PSIDKey;
      [v7 setProperty:@"PearlUnlockAttention" forKey:PSIDKey];
      v10 = settingsLocString(@"Pearl_Attention_Title", @"Accessibility");
      v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:"setAttentionAware:specifier:" get:"attentionAware:" detail:0 cell:6 edit:0];

      [v11 setProperty:@"AttentionAware" forKey:v8];
      v29 = v9;
      [v11 setProperty:@"AttentionAware" forKey:v9];
      v12 = [PSSpecifier groupSpecifierWithName:0];
      [v5 addObject:v12];
      v13 = +[MCProfileConnection sharedConnection];
      LOBYTE(v10) = [v13 isPasscodeSet];

      if (v10)
      {
        v14 = AXLocStringKeyForModel();
        v15 = settingsLocString(v14, @"Accessibility");
        v16 = PSFooterTextGroupKey;
        [v12 setProperty:v15 forKey:PSFooterTextGroupKey];

        [v5 addObject:v7];
        v17 = [PSSpecifier groupSpecifierWithName:0];

        [v5 addObject:v17];
        v12 = v17;
      }

      else
      {
        v16 = PSFooterTextGroupKey;
      }

      v18 = AXLocStringKeyForModel();
      v19 = settingsLocString(v18, @"Accessibility");
      [v12 setProperty:v19 forKey:v16];

      [v5 addObject:v11];
      if (MGGetBoolAnswer())
      {
        settingsLocString(@"Pearl_Success_Haptic_Group", @"Accessibility");
        v21 = v20 = v7;
        v22 = [PSSpecifier groupSpecifierWithName:v21];

        v23 = AXLocStringKeyForModel();
        v24 = settingsLocString(v23, @"Accessibility");
        [v22 setProperty:v24 forKey:v16];

        v7 = v20;
        [v22 setProperty:@"PearlSuccessHapticGroup" forKey:v29];
        [v5 addObject:v22];
        v25 = settingsLocString(@"Pearl_Success_Haptic", @"Accessibility");
        v26 = [PSSpecifier preferenceSpecifierNamed:v25 target:self set:"setAuthenticationHaptics:specifier:" get:"authenticationHaptics:" detail:0 cell:6 edit:0];

        [v26 setProperty:@"PearlSuccessHaptic" forKey:v29];
        [v5 addObject:v26];

        v12 = v22;
      }
    }

    v27 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (void)setAuthenticationHaptics:(id)haptics specifier:(id)specifier
{
  bOOLValue = [haptics BOOLValue];

  __AXSSetPearlAuthenticationHapticsEnabled(bOOLValue);
}

- (id)authenticationHaptics:(id)haptics
{
  v3 = _AXSPearlAuthenticationHapticsEnabled();

  return [NSNumber numberWithUnsignedChar:v3];
}

- (void)setAttentionAware:(id)aware specifier:(id)specifier
{
  awareCopy = aware;
  specifierCopy = specifier;
  if (+[DevicePINController settingEnabled])
  {
    objc_storeStrong(&self->_currentPinSpecifier, specifier);
    [(AXPearlSettingsController *)self showPINSheet:self->_currentPinSpecifier];
  }

  else
  {
    [awareCopy BOOLValue];
    _AXSSetAttentionAwarenessFeaturesEnabled();
    [(AXPearlSettingsController *)self updateAttentionSpec];
  }
}

- (id)attentionAware:(id)aware
{
  v3 = _AXSAttentionAwarenessFeaturesEnabled();

  return [NSNumber numberWithUnsignedChar:v3];
}

- (void)setPearlUnlock:(id)unlock specifier:(id)specifier
{
  unlockCopy = unlock;
  specifierCopy = specifier;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = __54__AXPearlSettingsController_setPearlUnlock_specifier___block_invoke;
  v25[3] = &unk_2561D8;
  v25[4] = self;
  v8 = unlockCopy;
  v26 = v8;
  v9 = specifierCopy;
  v27 = v9;
  v10 = objc_retainBlock(v25);
  if ([v8 BOOLValue])
  {
    (v10[2])(v10);
  }

  else
  {
    v11 = settingsLocString(@"PEARL_UNLOCK_ALERT_TITLE", @"Accessibility");
    v12 = AXLocStringKeyForModel();
    v13 = settingsLocString(v12, @"Accessibility");
    v14 = [UIAlertController alertControllerWithTitle:v11 message:v13 preferredStyle:1];

    v15 = settingsLocString(@"CANCEL", @"Accessibility");
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = __54__AXPearlSettingsController_setPearlUnlock_specifier___block_invoke_353;
    v24[3] = &unk_2557A8;
    v24[4] = self;
    v16 = [UIAlertAction actionWithTitle:v15 style:1 handler:v24];

    [v14 addAction:v16];
    v17 = settingsLocString(@"OK", @"Accessibility");
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = __54__AXPearlSettingsController_setPearlUnlock_specifier___block_invoke_2;
    v22[3] = &unk_2554C0;
    v23 = v10;
    v18 = [UIAlertAction actionWithTitle:v17 style:0 handler:v22];

    [v14 addAction:v18];
    view = [(AXPearlSettingsController *)self view];
    window = [view window];
    rootViewController = [window rootViewController];
    [rootViewController presentViewController:v14 animated:1 completion:0];
  }
}

void __54__AXPearlSettingsController_setPearlUnlock_specifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _pearlDevice];
  v16 = 0;
  v3 = [v2 protectedConfigurationForUser:getuid() error:&v16];
  v4 = v16;
  v5 = *(a1 + 32);
  v6 = *(v5 + 168);
  *(v5 + 168) = v3;

  if (v4)
  {
    v7 = +[AXSubsystemAXSettings sharedInstance];
    v8 = [v7 ignoreLogging];

    if ((v8 & 1) == 0)
    {
      v9 = +[AXSubsystemAXSettings identifier];
      v10 = AXLoggerForFacility();

      v11 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = AXColorizeFormatLog();
        v13 = _AXStringForArgs();
        if (os_log_type_enabled(v10, v11))
        {
          *buf = 138543362;
          v18 = v13;
          _os_log_impl(&dword_0, v10, v11, "%{public}@", buf, 0xCu);
        }
      }
    }
  }

  v14 = *(a1 + 32);
  v15 = *(v14 + 160);
  *(v14 + 160) = 0;

  [*(*(a1 + 32) + 168) setAttentionDetectionEnabled:*(a1 + 40)];
  objc_storeStrong((*(a1 + 32) + 144), *(a1 + 48));
  [*(a1 + 32) showPINSheet:*(a1 + 48)];
}

void __54__AXPearlSettingsController_setPearlUnlock_specifier___block_invoke_353(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 specifierForID:@"PearlUnlockAttention"];
  [v1 reloadSpecifier:v2 animated:1];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = AXPearlSettingsController;
  [(AXPearlSettingsController *)&v4 viewWillAppear:appear];
  if (AXDeviceHasPearl())
  {
    [(AXPearlSettingsController *)self updateAttentionSpec];
  }
}

- (id)pearlUnlock:(id)unlock
{
  _pearlDevice = [(AXPearlSettingsController *)self _pearlDevice];
  v25 = 0;
  v4 = [_pearlDevice protectedConfigurationForUser:getuid() error:&v25];
  v5 = v25;

  if (v5)
  {
    v6 = +[AXSubsystemAXSettings sharedInstance];
    ignoreLogging = [v6 ignoreLogging];

    if ((ignoreLogging & 1) == 0)
    {
      v8 = +[AXSubsystemAXSettings identifier];
      v9 = AXLoggerForFacility();

      v10 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = AXColorizeFormatLog();
        v22 = v5;
        v12 = _AXStringForArgs();
        if (os_log_type_enabled(v9, v10))
        {
          *buf = 138543362;
          v27 = v12;
          _os_log_impl(&dword_0, v9, v10, "%{public}@", buf, 0xCu);
        }
      }
    }
  }

  v13 = +[AXSubsystemAXSettings sharedInstance];
  ignoreLogging2 = [v13 ignoreLogging];

  if ((ignoreLogging2 & 1) == 0)
  {
    v15 = +[AXSubsystemAXSettings identifier];
    v16 = AXLoggerForFacility();

    v17 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = AXColorizeFormatLog();
      [v4 attentionDetectionEnabled];
      v24 = v23 = v4;
      v19 = _AXStringForArgs();

      if (os_log_type_enabled(v16, v17))
      {
        *buf = 138543362;
        v27 = v19;
        _os_log_impl(&dword_0, v16, v17, "%{public}@", buf, 0xCu);
      }
    }
  }

  attentionDetectionEnabled = [v4 attentionDetectionEnabled];

  return attentionDetectionEnabled;
}

- (void)showPINSheet:(id)sheet
{
  objc_storeStrong(&self->_currentPinSpecifier, sheet);
  sheetCopy = sheet;
  [sheetCopy setEditPaneClass:objc_opt_class()];
  v6 = [NSNumber numberWithInt:3];
  [sheetCopy setProperty:v6 forKey:@"mode"];

  [sheetCopy setProperty:@"DevicePINController" forKey:PSSetupCustomClassKey];
  v7.receiver = self;
  v7.super_class = AXPearlSettingsController;
  [(AXPearlSettingsController *)&v7 showPINSheet:sheetCopy];
}

- (void)didAcceptEnteredPIN:(id)n
{
  nCopy = n;
  objc_storeStrong(&self->_pinCode, n);
  v6 = PSKeyNameKey;
  v7 = [(PSSpecifier *)self->_currentPinSpecifier propertyForKey:PSKeyNameKey];
  v8 = [v7 isEqualToString:@"PearlUnlockAttention"];

  if (v8)
  {
    v9 = self->_pinCode;
    if (!v9)
    {
      v13 = 0;
LABEL_17:

      _pearlDevice = [(AXPearlSettingsController *)self _pearlDevice];
      updatedConfig = self->_updatedConfig;
      v40[0] = 0;
      [_pearlDevice setProtectedConfiguration:updatedConfig forUser:getuid() credentialSet:v13 error:v40];
      v23 = v40[0];

      v24 = +[AXSubsystemAXSettings sharedInstance];
      ignoreLogging = [v24 ignoreLogging];

      if ((ignoreLogging & 1) == 0)
      {
        v26 = +[AXSubsystemAXSettings identifier];
        v27 = AXLoggerForFacility();

        v28 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = AXColorizeFormatLog();
          v39 = self->_updatedConfig;
          v30 = _AXStringForArgs();
          if (os_log_type_enabled(v27, v28))
          {
            LODWORD(v46) = 138543362;
            *(&v46 + 4) = v30;
            _os_log_impl(&dword_0, v27, v28, "%{public}@", &v46, 0xCu);
          }
        }
      }

      if (v23)
      {
        v31 = +[AXSubsystemAXSettings sharedInstance];
        ignoreLogging2 = [v31 ignoreLogging];

        if ((ignoreLogging2 & 1) == 0)
        {
          v33 = +[AXSubsystemAXSettings identifier];
          v34 = AXLoggerForFacility();

          v35 = AXOSLogLevelFromAXLogLevel();
          if (os_log_type_enabled(v34, v35))
          {
            v36 = AXColorizeFormatLog();
            v39 = v23;
            v37 = _AXStringForArgs();
            if (os_log_type_enabled(v34, v35))
            {
              LODWORD(v46) = 138543362;
              *(&v46 + 4) = v37;
              _os_log_impl(&dword_0, v34, v35, "%{public}@", &v46, 0xCu);
            }
          }
        }
      }

      goto LABEL_31;
    }

    *&v46 = 0;
    *(&v46 + 1) = &v46;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy__6;
    v49 = __Block_byref_object_dispose__6;
    v50 = 0;
    v40[1] = 0;
    v10 = ACMContextCreate();
    if (v10)
    {
      v11 = +[AXSubsystemAXSettings sharedInstance];
      ignoreLogging3 = [v11 ignoreLogging];

      if (ignoreLogging3)
      {
        v13 = 0;
LABEL_16:
        _Block_object_dispose(&v46, 8);

        goto LABEL_17;
      }

      v17 = +[AXSubsystemAXSettings identifier];
      v16 = AXLoggerForFacility();

      v18 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v16, v18))
      {
        v19 = AXColorizeFormatLog();
        v39 = v10;
        v20 = _AXStringForArgs();
        if (os_log_type_enabled(v16, v18))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v20;
          _os_log_impl(&dword_0, v16, v18, "%{public}@", &buf, 0xCu);
        }
      }

      v13 = 0;
    }

    else
    {
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v42 = __credentialSetWithPasscodeCredential_block_invoke;
      v43 = &unk_2594F8;
      v45 = &v46;
      v44 = v9;
      ACMContextGetExternalForm();
      v13 = *(*(&v46 + 1) + 40);
      v16 = v44;
    }

    goto LABEL_16;
  }

  v14 = [(PSSpecifier *)self->_currentPinSpecifier propertyForKey:v6];
  v15 = [v14 isEqualToString:@"AttentionAware"];

  if (v15)
  {
    _AXSAttentionAwarenessFeaturesEnabled();
    _AXSSetAttentionAwarenessFeaturesEnabled();
  }

LABEL_31:
  [(AXPearlSettingsController *)self reloadSpecifier:self->_currentPinSpecifier animated:1, v39];
  currentPinSpecifier = self->_currentPinSpecifier;
  self->_currentPinSpecifier = 0;
}

- (void)didCancelEnteringPIN
{
  [(AXPearlSettingsController *)self reloadSpecifier:self->_currentPinSpecifier animated:1];
  currentPinSpecifier = self->_currentPinSpecifier;
  self->_currentPinSpecifier = 0;
}

- (void)devicePINControllerDidDismissPINPane:(id)pane
{
  [(AXPearlSettingsController *)self reloadSpecifier:self->_currentPinSpecifier animated:1];
  currentPinSpecifier = self->_currentPinSpecifier;
  self->_currentPinSpecifier = 0;
}

- (id)_pearlDevice
{
  pearlDevice = self->_pearlDevice;
  if (pearlDevice)
  {
    v3 = pearlDevice;
  }

  else
  {
    +[BKDeviceManager availableDevices];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v47 = 0u;
    v4 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
    v5 = &_s7SwiftUI5ColorV4blueACvgZ_ptr;
    if (v4)
    {
      v6 = v4;
      v7 = *v45;
      v8 = &_s7SwiftUI5ColorV4blueACvgZ_ptr;
      while (2)
      {
        v9 = 0;
        v41 = v6;
        do
        {
          if (*v45 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v44 + 1) + 8 * v9);
          v11 = v8[257];
          v43 = 0;
          v12 = [v11 deviceWithDescriptor:v10 error:&v43];
          v13 = v43;
          if (v13)
          {
            sharedInstance = [v5[508] sharedInstance];
            ignoreLogging = [sharedInstance ignoreLogging];

            if ((ignoreLogging & 1) == 0)
            {
              v16 = v7;
              v17 = v8;
              v18 = v5;
              identifier = [v5[508] identifier];
              v20 = AXLoggerForFacility();

              v21 = AXOSLogLevelFromAXLogLevel();
              if (os_log_type_enabled(v20, v21))
              {
                v22 = AXColorizeFormatLog();
                v39 = v13;
                v23 = _AXStringForArgs();
                if (os_log_type_enabled(v20, v21))
                {
                  *buf = 138543362;
                  v49 = v23;
                  _os_log_impl(&dword_0, v20, v21, "%{public}@", buf, 0xCu);
                }
              }

              v5 = v18;
              v8 = v17;
              v7 = v16;
              v6 = v41;
            }
          }

          descriptor = [v12 descriptor];
          if ([descriptor type] == &dword_0 + 2)
          {
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              objc_storeStrong(&self->_pearlDevice, v12);
              sharedInstance2 = [v5[508] sharedInstance];
              ignoreLogging2 = [sharedInstance2 ignoreLogging];

              if ((ignoreLogging2 & 1) == 0)
              {
                identifier2 = [v5[508] identifier];
                v31 = AXLoggerForFacility();

                v32 = AXOSLogLevelFromAXLogLevel();
                if (os_log_type_enabled(v31, v32))
                {
                  v33 = AXColorizeFormatLog();
                  v34 = _AXStringForArgs();
                  if (os_log_type_enabled(v31, v32))
                  {
                    *buf = 138543362;
                    v49 = v34;
                    _os_log_impl(&dword_0, v31, v32, "%{public}@", buf, 0xCu);
                  }
                }
              }

              v3 = self->_pearlDevice;
              v35 = obj;
              goto LABEL_30;
            }
          }

          else
          {
          }

          v9 = v9 + 1;
        }

        while (v6 != v9);
        v6 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    sharedInstance3 = [v5[508] sharedInstance];
    ignoreLogging3 = [sharedInstance3 ignoreLogging];

    if (ignoreLogging3)
    {
      v3 = 0;
    }

    else
    {
      identifier3 = [v5[508] identifier];
      v35 = AXLoggerForFacility();

      v38 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v35, v38))
      {
        v13 = AXColorizeFormatLog();
        v12 = _AXStringForArgs();
        if (os_log_type_enabled(v35, v38))
        {
          *buf = 138543362;
          v49 = v12;
          _os_log_impl(&dword_0, v35, v38, "%{public}@", buf, 0xCu);
        }

        v3 = 0;
LABEL_30:
      }

      else
      {
        v3 = 0;
      }
    }
  }

  return v3;
}

@end