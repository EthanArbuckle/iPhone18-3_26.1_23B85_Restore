@interface ButtonClickController
- (BOOL)hasPasscodeAndBiometric;
- (BOOL)hasPasscodeOrBiometric;
- (BOOL)isPasscodeSet;
- (BOOL)usesTopButtonForMesa;
- (__CFDictionary)_vibrationPattern;
- (float)_buttonClickSpeedFromSpecifierKey:(id)a3;
- (id)_footerTextForHomeButtonAssistantOption:(int)a3;
- (id)passcodeForPurchases:(id)a3;
- (id)restingUnlock:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)voiceControlLanguage:(id)a3;
- (id)voiceControlLanguageSpecifiers;
- (void)_flashSelectedRow;
- (void)_handleAXSettingChanged;
- (void)_resetPinSpecifier;
- (void)_vibrateSelectedRow;
- (void)dealloc;
- (void)didAcceptEnteredPIN:(id)a3;
- (void)jumpToAssistiveTouchSettings:(id)a3;
- (void)jumpToSwitchControlSettings:(id)a3;
- (void)setPasscodeForPurchases:(id)a3 specifier:(id)a4;
- (void)setRestingUnlock:(id)a3 specifier:(id)a4;
- (void)setStoreState:(int64_t)a3;
- (void)showPINSheet:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateStoreState;
- (void)updateVoiceControlLanguageSpecifiers;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation ButtonClickController

- (void)dealloc
{
  v3 = [(ButtonClickController *)self flashTimer];
  [v3 invalidate];

  v4 = [(ButtonClickController *)self vibrationTimer];
  [v4 invalidate];

  v5.receiver = self;
  v5.super_class = ButtonClickController;
  [(ButtonClickController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = ButtonClickController;
  [(ButtonClickController *)&v6 viewDidLoad];
  if (AXDeviceHasTopTouchIDButton())
  {
    v3 = settingsLocStringTopTouchIDButton(@"LockButtonTitle_IPAD_TOUCHID");
    v4 = [(ButtonClickController *)self navigationItem];
    [v4 setTitle:v3];
  }

  else
  {
    if (![(ButtonClickController *)self _hasSideButtonOnly])
    {
      return;
    }

    v3 = AXLocStringKeyForExclusiveModel();
    v4 = settingsLocString(v3, @"Accessibility");
    v5 = [(ButtonClickController *)self navigationItem];
    [v5 setTitle:v4];
  }

  [(ButtonClickController *)self updateStoreState];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = ButtonClickController;
  [(ButtonClickController *)&v5 viewWillAppear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_handleAXSettingChanged" name:UIAccessibilitySwitchControlStatusDidChangeNotification object:0];
  [v4 addObserver:self selector:"_handleAXSettingChanged" name:kAXSAssistiveTouchEnabledNotification object:0];
}

- (void)updateVoiceControlLanguageSpecifiers
{
  if (_AXSHomeButtonAssistant() == 1)
  {
    v3 = [(ButtonClickController *)self specifierForKey:@"VCLanguageGroup"];

    if (v3)
    {
      return;
    }

    v7 = [(ButtonClickController *)self voiceControlLanguageSpecifiers];
    v6 = [(ButtonClickController *)self specifierForKey:@"assistantChoiceOff"];
    [(ButtonClickController *)self insertContiguousSpecifiers:v7 afterSpecifier:v6 animated:1];
  }

  else
  {
    v7 = objc_alloc_init(NSMutableArray);
    v4 = [(ButtonClickController *)self specifierForKey:@"VCLanguageGroup"];
    [v7 axSafelyAddObject:v4];

    v5 = [(ButtonClickController *)self specifierForKey:@"VCLanguageSetting"];
    [v7 axSafelyAddObject:v5];

    [(ButtonClickController *)self removeContiguousSpecifiers:v7 animated:1];
  }
}

- (id)voiceControlLanguageSpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  if (_AXSHomeButtonAssistant() == 1)
  {
    v4 = +[NSMutableArray array];
    v5 = settingsLocString(@"HomeButtonAssistantVCLanguageGroup", @"HomeClickSettings");
    v6 = [PSSpecifier groupSpecifierWithName:v5];

    v7 = PSKeyNameKey;
    [v6 setProperty:@"VCLanguageGroup" forKey:PSKeyNameKey];
    [v4 addObject:v6];
    v8 = settingsLocString(@"HomeButtonAssistantVCLanguageTitle", @"HomeClickSettings");
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:"voiceControlLanguage:" detail:objc_opt_class() cell:2 edit:0];

    [v9 setProperty:@"VCLanguageSetting" forKey:v7];
    [v4 addObject:v9];
    [v3 addObject:v6];
    [v3 addObject:v9];
  }

  return v3;
}

- (id)_footerTextForHomeButtonAssistantOption:(int)a3
{
  v4 = AXLocStringKeyForHomeButtonAndExclusiveModel();
  if (AXDeviceHasTopTouchIDButton())
  {
    v5 = [NSString stringWithFormat:@"%@%@", v4, @"_TOUCHID"];
    v6 = settingsLocStringTopTouchIDButton(v5);
  }

  else
  {
    v6 = settingsLocString(v4, @"HomeClickSettings");
  }

  return v6;
}

- (BOOL)usesTopButtonForMesa
{
  if (!AXSettingsRestFingerToOpenIsAvailable())
  {
    return 0;
  }

  v2 = +[BSPlatform sharedInstance];
  v3 = [v2 homeButtonType] == &dword_0 + 2;

  return v3;
}

- (id)specifiers
{
  v3 = [(ButtonClickController *)self _hasSideButtonOnly];
  v4 = OBJC_IVAR___PSListController__specifiers;
  v5 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v5)
  {
    v6 = [(ButtonClickController *)self loadSpecifiersFromPlistName:@"HomeClickSettings" target:self];
    v59 = v3;
    v57 = v4;
    v58 = self;
    if ((AXSettingsRestFingerToOpenIsAvailable() & 1) == 0)
    {
      v12 = PSFooterTextGroupKey;
LABEL_14:
      v60 = +[NSMutableArray array];
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      obj = v6;
      v17 = [obj countByEnumeratingWithState:&v64 objects:v68 count:16];
      if (!v17)
      {
        goto LABEL_61;
      }

      v18 = v17;
      v19 = *v65;
      v62 = PSKeyNameKey;
      v63 = v12;
      while (1)
      {
        v20 = 0;
        do
        {
          if (*v65 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v64 + 1) + 8 * v20);
          v22 = [v21 propertyForKey:v62];
          v23 = [v22 isEqualToString:@"HOME_SPEED_HEADER"];

          if (v23)
          {
            v24 = @"HOME_CLICK_INSTRUCTIONS";
            if (v3)
            {
              v24 = AXLocStringKeyForHomeButtonAndExclusiveModel();
              v25 = settingsLocString(v24, @"Accessibility");
              [v21 setProperty:v25 forKey:v63];

              if (AXDeviceHasTopTouchIDButton())
              {
                v26 = settingsLocStringTopTouchIDButton(@"HOME_CLICK_INSTRUCTIONS_IPAD_TOUCHID");
                [v21 setProperty:v26 forKey:v63];
              }
            }

            goto LABEL_24;
          }

          v27 = [v21 propertyForKey:v62];
          v28 = [v27 isEqualToString:@"assistantChoiceSiri"];

          if (v28)
          {
            v29 = AFAssistantCapable();
            goto LABEL_29;
          }

          v30 = [v21 propertyForKey:v62];
          v31 = [v30 isEqualToString:@"assistantChoiceVoiceControl"];

          if (v31)
          {
            v29 = MGGetBoolAnswer();
LABEL_29:
            v12 = v63;
            if (v29)
            {
              goto LABEL_31;
            }

LABEL_30:
            [v60 addObject:v21];
            goto LABEL_31;
          }

          v32 = [v21 propertyForKey:v62];
          v33 = [v32 isEqualToString:@"applePayGroup"];

          if (v33)
          {
            if (!AXDeviceHasPearl() || ![(ButtonClickController *)v58 hasPasscodeOrBiometric])
            {
              [v60 addObject:v21];
LABEL_24:
              v12 = v63;
              goto LABEL_31;
            }

            if (AXDeviceHasTopTouchIDButton())
            {
              v34 = settingsLocStringTopTouchIDButton(@"APPLE_PAY_IPAD_TOUCHID");
              [v21 setName:v34];
            }

            else
            {
              if (AXDeviceIsPad())
              {
                v41 = @"APPLE_PAY_HEADING_IPAD";
              }

              else
              {
                v41 = @"APPLE_PAY_HEADING";
              }

              v34 = settingsLocString(v41, @"HomeClickSettings");
              [v21 setProperty:v34 forKey:v62];
            }

            v42 = +[BiometricKit manager];
            v43 = [v42 identities:0];
            v44 = [v43 count];

            IsPad = AXDeviceIsPad();
            if (v44)
            {
              v46 = @"APPLE_PAY_FOOTER_IPAD";
              if (!IsPad)
              {
LABEL_58:
                v3 = v59;
                v12 = v63;
                if (AXDeviceHasTopTouchIDButton())
                {
                  v49 = settingsLocStringTopTouchIDButton(@"APPLE_PAY_FOOTER_PASSCODE_IPAD_TOUCHID");
                  [v21 setProperty:v49 forKey:v63];
                }

                goto LABEL_31;
              }
            }

            else
            {
              v47 = @"APPLE_PAY_FOOTER_PASSCODE";
              if (IsPad)
              {
                v47 = @"APPLE_PAY_FOOTER_PASSCODE_IPAD";
              }

              v46 = v47;
            }

            v48 = settingsLocString(v46, @"HomeClickSettings");
            [v21 setProperty:v48 forKey:v63];

            goto LABEL_58;
          }

          v35 = [v21 propertyForKey:v62];
          v36 = [v35 isEqualToString:@"applePayChoiceSC"];

          v12 = v63;
          if (!v36)
          {
            v37 = [v21 propertyForKey:v62];
            v38 = [v37 isEqualToString:@"applePayChoiceAST"];

            if (!v38)
            {
              v39 = [v21 propertyForKey:v62];
              if (([v39 isEqualToString:@"assistantChoiceOff"] & 1) == 0)
              {
                v40 = [v21 propertyForKey:v62];
                [v40 isEqualToString:@"assistantChoiceGroup"];
              }

              v3 = v59;
              goto LABEL_24;
            }
          }

          v3 = v59;
          if (!AXDeviceHasPearl() || ![(ButtonClickController *)v58 hasPasscodeOrBiometric])
          {
            goto LABEL_30;
          }

LABEL_31:
          v20 = v20 + 1;
        }

        while (v18 != v20);
        v50 = [obj countByEnumeratingWithState:&v64 objects:v68 count:16];
        v18 = v50;
        if (!v50)
        {
LABEL_61:

          [obj removeObjectsInArray:v60];
          v51 = [(ButtonClickController *)v58 voiceControlLanguageSpecifiers];
          [obj addObjectsFromArray:v51];

          v52 = *&v58->AXUISettingsBaseListController_opaque[v4];
          *&v58->AXUISettingsBaseListController_opaque[v57] = obj;
          v53 = obj;

          v54 = [(ButtonClickController *)v58 _footerTextForHomeButtonAssistantOption:_AXSHomeButtonAssistant()];
          v55 = [(ButtonClickController *)v58 specifierForKey:@"assistantChoiceGroup"];
          [v55 setProperty:v54 forKey:v12];

          v5 = *&v58->AXUISettingsBaseListController_opaque[v57];
          goto LABEL_62;
        }
      }
    }

    v7 = [PSSpecifier groupSpecifierWithName:0];
    if (AXDeviceIsPad())
    {
      if (AXDeviceHasTopTouchIDButton())
      {
        v8 = [NSString stringWithFormat:@"RestingUnlockFooterText_IPAD_NHB_%@", @"TOUCHID"];
        v9 = settingsLocStringTopTouchIDButton(v8);

        v3 = v59;
        if (v9)
        {
          goto LABEL_13;
        }
      }

      if ([(ButtonClickController *)self usesTopButtonForMesa])
      {
        v10 = settingsLocString(@"RestingUnlockFooterText_IPAD_NHB", @"HomeClickSettings");
        if (v10)
        {
LABEL_12:
          v9 = v10;
LABEL_13:
          v13 = PSFooterTextGroupKey;
          [v7 setProperty:v9 forKey:PSFooterTextGroupKey];
          [v6 addObject:v7];
          v14 = settingsLocString(@"RestingUnlockSetting", @"HomeClickSettings");
          v15 = self;
          v12 = v13;
          v16 = [PSSpecifier preferenceSpecifierNamed:v14 target:v15 set:"setRestingUnlock:specifier:" get:"restingUnlock:" detail:0 cell:6 edit:0];

          [v6 addObject:v16];
          goto LABEL_14;
        }
      }

      v11 = @"RestingUnlockFooterText_IPAD";
    }

    else
    {
      v11 = @"RestingUnlockFooterText_IPHONE";
    }

    v10 = settingsLocString(v11, @"HomeClickSettings");
    goto LABEL_12;
  }

LABEL_62:

  return v5;
}

- (void)setRestingUnlock:(id)a3 specifier:(id)a4
{
  [a3 BOOLValue];

  _AXSHomeButtonSetRestingUnlock();
}

- (id)restingUnlock:(id)a3
{
  v3 = _AXSHomeButtonRestingUnlock();

  return [NSNumber numberWithUnsignedChar:v3];
}

- (id)voiceControlLanguage:(id)a3
{
  v3 = VSPreferencesCopySpokenLanguageIdentifier();
  v4 = +[NSLocale currentLocale];
  v5 = [v4 localizedStringForLocaleIdentifier:v3];

  if (v3)
  {
    CFRelease(v3);
  }

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v32.receiver = self;
  v32.super_class = ButtonClickController;
  v5 = [(ButtonClickController *)&v32 tableView:a3 cellForRowAtIndexPath:a4];
  v6 = [v5 specifier];
  v7 = [v6 propertyForKey:@"type"];

  v8 = [(ButtonClickController *)self _hasSideButtonOnly];
  if ([v7 isEqualToString:@"HOME_CLICK_SPEED"])
  {
    v9 = [v5 specifier];
    v10 = [v9 propertyForKey:PSKeyNameKey];
    [(ButtonClickController *)self _buttonClickSpeedFromSpecifierKey:v10];
    v12 = v11;

    if (v8 && (_AXSSideButtonClickSpeed(), v12 == v13) || (_AXSHomeClickSpeed(), v12 == v14))
    {
      v15 = v5;
      v16 = 1;
    }

    else
    {
      v15 = v5;
      v16 = 0;
    }

    [v15 setChecked:v16];
  }

  else if ([v7 isEqualToString:@"HomeButtonAssistant"])
  {
    v17 = _AXSHomeButtonAssistant();
    v18 = @"assistantChoiceSiri";
    if (v17 == 2)
    {
      v18 = @"assistantChoiceOff";
    }

    if (v17 == 1)
    {
      v19 = @"assistantChoiceVoiceControl";
    }

    else
    {
      v19 = v18;
    }

    v20 = [v5 specifier];
    v21 = [v20 propertyForKey:PSKeyNameKey];
    [v5 setChecked:{objc_msgSend(v21, "isEqualToString:", v19)}];
  }

  else
  {
    v22 = [v5 specifier];
    v23 = PSKeyNameKey;
    v24 = [v22 propertyForKey:PSKeyNameKey];
    v25 = [v24 isEqualToString:@"applePayChoiceSC"];

    if (v25)
    {
      v26 = _AXSAssistiveTouchEnabled() == 0;
    }

    else
    {
      v27 = [v5 specifier];
      v28 = [v27 propertyForKey:v23];
      v29 = [v28 isEqualToString:@"applePayChoiceAST"];

      if (!v29)
      {
        goto LABEL_20;
      }

      v26 = !UIAccessibilityIsSwitchControlRunning();
    }

    [v5 setCellEnabled:v26];
    v30 = [v5 titleLabel];
    [v30 setNumberOfLines:0];
  }

LABEL_20:

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v60.receiver = self;
  v60.super_class = ButtonClickController;
  [(ButtonClickController *)&v60 tableView:v6 didSelectRowAtIndexPath:v7];
  v59.receiver = self;
  v59.super_class = ButtonClickController;
  v8 = [(ButtonClickController *)&v59 tableView:v6 cellForRowAtIndexPath:v7];
  v9 = [v8 specifier];
  v10 = [v9 propertyForKey:@"type"];

  if ([v10 isEqualToString:@"HOME_CLICK_SPEED"])
  {
    v11 = [(ButtonClickController *)self _hasSideButtonOnly];
    v12 = [v8 specifier];
    v13 = [v12 propertyForKey:PSKeyNameKey];
    [(ButtonClickController *)self _buttonClickSpeedFromSpecifierKey:v13];
    v15 = v14;

    if (v11)
    {
      _AXSSideButtonClickSpeed();
      if (v15 == v16)
      {
        _AXSHomeClickSpeed();
        if (v15 == v17)
        {
          goto LABEL_15;
        }
      }

      _AXSSetSideButtonClickSpeed();
    }

    else
    {
      _AXSHomeClickSpeed();
      if (v15 == v27)
      {
LABEL_15:
        AudioServicesStopSystemSound();
        v28 = [(ButtonClickController *)self vibrationTimer];
        [v28 invalidate];

        v29 = [NSTimer scheduledTimerWithTimeInterval:self target:"_vibrateSelectedRow" selector:0 userInfo:0 repeats:0.649999976];
        [(ButtonClickController *)self setVibrationTimer:v29];

        [(ButtonClickController *)self setFlashCount:0];
        v30 = [(ButtonClickController *)self flashTimer];
        [v30 invalidate];

        v31 = [NSTimer scheduledTimerWithTimeInterval:self target:"_flashSelectedRow" selector:0 userInfo:0 repeats:0.699999988];
        [(ButtonClickController *)self setFlashTimer:v31];
LABEL_34:

        goto LABEL_35;
      }

      _AXSHomeClickSetSpeed();
    }

    [(ButtonClickController *)self updateTableCheckedSelection:v7];
    [(ButtonClickController *)self setSelectedIndexPath:v7];
    goto LABEL_15;
  }

  if ([v10 isEqualToString:@"HomeButtonAssistant"])
  {
    v18 = [v8 specifier];
    v53 = PSKeyNameKey;
    v19 = [v18 propertyForKey:?];

    v51 = v7;
    v49 = v10;
    v54 = v19;
    if ([v19 isEqualToString:@"assistantChoiceSiri"])
    {
      _AXSSetHomeButtonAssistant();
      v20 = [(ButtonClickController *)self _footerTextForHomeButtonAssistantOption:0];
      if (!AFAssistantCapable())
      {
        goto LABEL_24;
      }

      v21 = +[AFPreferences sharedPreferences];
      v22 = [v21 assistantIsEnabled];

      if (v22)
      {
        goto LABEL_24;
      }

      v23 = +[AFPreferences sharedPreferences];
      v24 = v23;
      v25 = 1;
    }

    else
    {
      if ([v19 isEqualToString:@"assistantChoiceVoiceControl"])
      {
        _AXSSetHomeButtonAssistant();
        v20 = [(ButtonClickController *)self _footerTextForHomeButtonAssistantOption:1];
        v32 = +[AFPreferences sharedPreferences];
        [v32 setAssistantIsEnabled:0];

        v33 = +[AFPreferences sharedPreferences];
        [v33 synchronize];

        v26 = +[VTPreferences sharedPreferences];
        [v26 setVoiceTriggerEnabled:0];
        goto LABEL_18;
      }

      if (![v19 isEqualToString:@"assistantChoiceOff"])
      {
        v20 = 0;
        goto LABEL_24;
      }

      v34 = _AXSHomeButtonAssistant();
      _AXSSetHomeButtonAssistant();
      v20 = [(ButtonClickController *)self _footerTextForHomeButtonAssistantOption:2];
      if (v34)
      {
        goto LABEL_24;
      }

      v35 = +[VTPreferences sharedPreferences];
      v36 = [v35 voiceTriggerEnabled];

      if (v36)
      {
        goto LABEL_24;
      }

      v23 = +[AFPreferences sharedPreferences];
      v24 = v23;
      v25 = 0;
    }

    [v23 setAssistantIsEnabled:v25];

    v26 = +[AFPreferences sharedPreferences];
    [v26 synchronize];
LABEL_18:

LABEL_24:
    v37 = [(ButtonClickController *)self specifierForKey:@"assistantChoiceGroup"];
    [v37 setProperty:v20 forKey:PSFooterTextGroupKey];
    v50 = self;
    v48 = v37;
    [(ButtonClickController *)self reloadSpecifier:v37];
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v52 = v6;
    v38 = [v6 visibleCells];
    v39 = [v38 countByEnumeratingWithState:&v55 objects:v61 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v56;
      do
      {
        for (i = 0; i != v40; i = i + 1)
        {
          if (*v56 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = *(*(&v55 + 1) + 8 * i);
          v44 = [v43 specifier];
          v45 = [v44 propertyForKey:@"type"];
          v46 = [v45 isEqualToString:@"HomeButtonAssistant"];

          if (v46)
          {
            v47 = [v44 propertyForKey:v53];
            [v43 setChecked:{objc_msgSend(v47, "isEqualToString:", v54)}];
          }
        }

        v40 = [v38 countByEnumeratingWithState:&v55 objects:v61 count:16];
      }

      while (v40);
    }

    [(ButtonClickController *)v50 updateVoiceControlLanguageSpecifiers];
    v7 = v51;
    v6 = v52;
    v10 = v49;
    v31 = v54;
    goto LABEL_34;
  }

LABEL_35:
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = ButtonClickController;
  [(ButtonClickController *)&v6 viewWillDisappear:a3];
  v4 = [(ButtonClickController *)self flashTimer];
  [v4 invalidate];

  v5 = [(ButtonClickController *)self vibrationTimer];
  [v5 invalidate];

  AudioServicesStopSystemSound();
}

- (void)_flashSelectedRow
{
  v9 = [(ButtonClickController *)self table];
  v3 = [(ButtonClickController *)self selectedIndexPath];
  [v9 selectRowAtIndexPath:v3 animated:0 scrollPosition:0];
  [v9 deselectRowAtIndexPath:v3 animated:0];
  [(ButtonClickController *)self setFlashCount:[(ButtonClickController *)self flashCount]+ 1];
  v4 = [(ButtonClickController *)self flashTimer];
  [v4 invalidate];

  if ([(ButtonClickController *)self flashCount]> 2)
  {
    [(ButtonClickController *)self setFlashTimer:0];
  }

  else
  {
    _AXSHomeClickSpeed();
    v6 = v5;
    if ([(ButtonClickController *)self _hasSideButtonOnly])
    {
      _AXSSideButtonClickSpeed();
      v6 = v7;
    }

    v8 = [NSTimer scheduledTimerWithTimeInterval:self target:"_flashSelectedRow" selector:0 userInfo:0 repeats:v6];
    [(ButtonClickController *)self setFlashTimer:v8];
  }
}

- (void)_vibrateSelectedRow
{
  v2 = kAudioServicesPlaySystemSoundOptionVibrationPatternKey;
  v3 = [(ButtonClickController *)self _vibrationPattern];
  [NSDictionary dictionaryWithObjects:&v3 forKeys:&v2 count:1];
  AudioServicesPlaySystemSoundWithOptions();
}

- (float)_buttonClickSpeedFromSpecifierKey:(id)a3
{
  v4 = a3;
  v5 = [(ButtonClickController *)self _hasSideButtonOnly];
  if ([v4 isEqualToString:@"homeClickSpeedSlowest"])
  {
    v6 = v5 == 0;
    v7 = *"333?fff?";
    v8 = 1.2;
LABEL_10:
    if (v6)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    goto LABEL_13;
  }

  if (![v4 isEqualToString:@"homeClickSpeedSlow"])
  {
    if (![v4 isEqualToString:@"homeClickSpeedDefault"])
    {
      _AXAssert();
    }

    v6 = v5 == 0;
    v7 = 0.35;
    v8 = 0.4;
    goto LABEL_10;
  }

  if (v5)
  {
    v9 = *"333?fff?";
  }

  else
  {
    v9 = 0.5;
  }

LABEL_13:

  return v9;
}

- (__CFDictionary)_vibrationPattern
{
  _AXSHomeClickSpeed();
  *&v4 = (v3 + -0.175) * 1000.0;
  v5 = [NSNumber numberWithFloat:v4];
  LODWORD(v6) = 1127153664;
  v7 = [NSNumber numberWithFloat:v6];
  if ([(ButtonClickController *)self _hasSideButtonOnly])
  {
    _AXSSideButtonClickSpeed();
    *&v9 = (v8 + -0.2) * 1000.0;
    v10 = [NSNumber numberWithFloat:v9];

    v7 = &off_27DD00;
    v5 = v10;
  }

  v15[0] = @"Intensity";
  v15[1] = @"VibePattern";
  v16[0] = &off_27A848;
  v14[0] = &__kCFBooleanTrue;
  v14[1] = v7;
  v14[2] = &__kCFBooleanFalse;
  v14[3] = v5;
  v14[4] = &__kCFBooleanTrue;
  v14[5] = v7;
  v14[6] = &__kCFBooleanFalse;
  v14[7] = v5;
  v14[8] = &__kCFBooleanTrue;
  v14[9] = v7;
  v11 = [NSArray arrayWithObjects:v14 count:10];
  v16[1] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];

  return v12;
}

- (void)showPINSheet:(id)a3
{
  v4 = a3;
  [(ButtonClickController *)self setPinCode:0];
  [(ButtonClickController *)self setCurrentPinSpecifier:v4];
  [v4 setEditPaneClass:objc_opt_class()];
  v5 = [NSNumber numberWithInt:3];
  [v4 setProperty:v5 forKey:@"mode"];

  [v4 setProperty:@"DevicePINController" forKey:PSSetupCustomClassKey];
  v6.receiver = self;
  v6.super_class = ButtonClickController;
  [(ButtonClickController *)&v6 showPINSheet:v4];
}

- (void)didAcceptEnteredPIN:(id)a3
{
  v4 = a3;
  [(ButtonClickController *)self setPinCode:v4];
  v5 = [(ButtonClickController *)self currentPinSpecifier];
  v6 = [v5 identifier];

  if ([v6 isEqualToString:@"PASSCODE_PURCHASES"])
  {
    objc_initWeak(&location, self);
    passcodeForPurchasesEnabled = self->_passcodeForPurchasesEnabled;
    v8 = objc_alloc_init(SSBiometrics);
    LOBYTE(from) = 0;
    objc_opt_class();
    v9 = [(ButtonClickController *)self currentPinSpecifier];
    v10 = [(ButtonClickController *)self cellForSpecifier:v9];
    v11 = __UIAccessibilityCastAsClass();

    v12 = objc_initWeak(&from, v11);
    [v11 setLoading:1];

    v13 = [(ButtonClickController *)self pinCode];
    v14 = PSAuthorizationTokenForPasscode();
    v15 = !passcodeForPurchasesEnabled;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = __45__ButtonClickController_didAcceptEnteredPIN___block_invoke;
    v16[3] = &unk_2580D0;
    v16[4] = self;
    objc_copyWeak(&v17, &location);
    v18[1] = v15;
    objc_copyWeak(v18, &from);
    [v8 setEnabled:v15 withAuthToken:v14 completionBlock:v16];

    objc_destroyWeak(v18);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&from);

    objc_destroyWeak(&location);
  }
}

void __45__ButtonClickController_didAcceptEnteredPIN___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __45__ButtonClickController_didAcceptEnteredPIN___block_invoke_2;
  block[3] = &unk_2580A8;
  v5 = *(a1 + 32);
  v8 = v4;
  v9 = v5;
  v6 = v4;
  objc_copyWeak(&v10, (a1 + 40));
  v11[1] = *(a1 + 56);
  objc_copyWeak(v11, (a1 + 48));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(v11);
  objc_destroyWeak(&v10);
}

void __45__ButtonClickController_didAcceptEnteredPIN___block_invoke_2(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    _AXSSetUserEnabledPasscodeForPurchases();
    v2 = +[MCProfileConnection sharedConnection];
    v3 = *(a1 + 40);
    v4 = v3[153];
    v5 = MCFeatureFingerprintForContactlessPaymentAllowed;
    v6 = [v3 pinCode];
    [v2 setBoolValue:(v4 & 1) == 0 forSetting:v5 passcode:v6];

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained setStoreState:*(a1 + 64)];

    v8 = objc_loadWeakRetained((a1 + 48));
    [v8 updateStoreState];
  }

  v9 = objc_loadWeakRetained((a1 + 56));
  [v9 setLoading:0];

  v10 = objc_loadWeakRetained((a1 + 48));
  [v10 setCurrentPinSpecifier:0];
}

- (void)_resetPinSpecifier
{
  v3 = [(ButtonClickController *)self currentPinSpecifier];
  v4 = [v3 identifier];

  if ([v4 isEqualToString:@"PASSCODE_PURCHASES"])
  {
    [(ButtonClickController *)self reloadSpecifierID:@"PASSCODE_PURCHASES" animated:1];
  }

  [(ButtonClickController *)self setCurrentPinSpecifier:0];
}

- (void)updateStoreState
{
  v3 = objc_alloc_init(SSBiometrics);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __41__ButtonClickController_updateStoreState__block_invoke;
  v4[3] = &unk_2580F8;
  v4[4] = self;
  [v3 getStateWithCompletionBlock:v4];
}

void __41__ButtonClickController_updateStoreState__block_invoke(uint64_t a1, uint64_t a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = __41__ButtonClickController_updateStoreState__block_invoke_2;
  v2[3] = &unk_255B80;
  v2[4] = *(a1 + 32);
  v2[5] = a2;
  dispatch_async(&_dispatch_main_q, v2);
}

- (void)setStoreState:(int64_t)a3
{
  if (self->_storeState != a3)
  {
    self->_storeState = a3;
  }

  [(ButtonClickController *)self reloadSpecifierID:@"PASSCODE_PURCHASES" animated:1];
}

- (BOOL)isPasscodeSet
{
  v2 = +[MCProfileConnection sharedConnection];
  v3 = [v2 isPasscodeSet];

  return v3;
}

- (BOOL)hasPasscodeAndBiometric
{
  if (![(ButtonClickController *)self isPasscodeSet])
  {
    return 0;
  }

  v2 = +[BiometricKit manager];
  v3 = [v2 identities:0];
  v4 = [v3 count] != 0;

  return v4;
}

- (BOOL)hasPasscodeOrBiometric
{
  if ([(ButtonClickController *)self isPasscodeSet])
  {
    return 1;
  }

  v3 = +[BiometricKit manager];
  v4 = [v3 identities:0];
  v2 = [v4 count] != 0;

  return v2;
}

- (void)setPasscodeForPurchases:(id)a3 specifier:(id)a4
{
  v6 = a4;
  self->_passcodeForPurchasesEnabled = [a3 BOOLValue];
  [(ButtonClickController *)self showPINSheet:v6];
}

- (id)passcodeForPurchases:(id)a3
{
  v4 = +[MCProfileConnection sharedConnection];
  v5 = [v4 effectiveBoolValueForSetting:MCFeatureFingerprintForContactlessPaymentAllowed];

  v7 = [(ButtonClickController *)self storeState]!= &dword_0 + 1 && v5 != 1;

  return [NSNumber numberWithInt:v7];
}

- (void)jumpToSwitchControlSettings:(id)a3
{
  v4 = [NSURL URLWithString:@"prefs:root=ACCESSIBILITY&path=ScannerSwitchTitle#APPLE_PAY"];
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  [v3 openSensitiveURL:v4 withOptions:0];
}

- (void)jumpToAssistiveTouchSettings:(id)a3
{
  v4 = [NSURL URLWithString:@"prefs:root=ACCESSIBILITY&path=TOUCH_REACHABILITY_TITLE/AIR_TOUCH_TITLE#APPLE_PAY"];
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  [v3 openSensitiveURL:v4 withOptions:0];
}

- (void)_handleAXSettingChanged
{
  v3 = [(ButtonClickController *)self specifierForKey:@"applePayGroup"];
  [(ButtonClickController *)self reloadSpecifier:v3];
}

@end