@interface VoiceOverController
- (BOOL)_gizmoHasTapticTime;
- (BOOL)_gizmoLocaleIsRTL;
- (BOOL)_gizmoSupportsBraille;
- (BOOL)_gizmoSupportsDetents;
- (VoiceOverController)init;
- (id)areVoiceOverHandGesturesEnabled;
- (id)instructionsText;
- (id)speakingRate:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)voiceOverDelayUntilSpeakInterval:(id)a3;
- (id)voiceOverDigitalCrownNavigationEnabled:(id)a3;
- (id)voiceOverDoubleTapInterval:(id)a3;
- (id)voiceOverGestureDirectionSummary:(id)a3;
- (id)voiceOverTapticTimeSummary:(id)a3;
- (id)voiceOverTouchEnabled:(id)a3;
- (void)dealloc;
- (void)setSpeakingRate:(id)a3 specifier:(id)a4;
- (void)setVoiceOverTouchEnabled:(id)a3 specifier:(id)a4;
@end

@implementation VoiceOverController

- (VoiceOverController)init
{
  v6.receiver = self;
  v6.super_class = VoiceOverController;
  v2 = [(AccessibilityBridgeBaseController *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel_reload name:@"AXVoiceOverReloadNotification" object:0];

    v4 = v2;
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveEveryObserver(LocalCenter, self);
  v5.receiver = self;
  v5.super_class = VoiceOverController;
  [(AccessibilityBridgeBaseController *)&v5 dealloc];
}

- (id)specifiers
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v50 = *MEMORY[0x277D3FC48];
    v52 = [objc_allocWithZone(MEMORY[0x277CBEB18]) init];
    [(VoiceOverController *)self loadSpecifiersFromPlistName:@"VoiceOverSettings" target:self];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = v60 = 0u;
    v4 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
    if (!v4)
    {
      goto LABEL_48;
    }

    v5 = v4;
    v6 = *MEMORY[0x277D3FFF0];
    v51 = *MEMORY[0x277D3FF38];
    v55 = *MEMORY[0x277D400E0];
    v56 = *v58;
    v54 = *MEMORY[0x277D400D0];
    v7 = *MEMORY[0x277D3FFB8];
    while (1)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v58 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v57 + 1) + 8 * i);
        v10 = [v9 propertyForKey:v6];
        v11 = [v10 isEqualToString:@"VoiceOverTouchEnabled"];

        if (v11)
        {
          v12 = [MEMORY[0x277D7A910] sharedInstance];
          if ([v12 featureEnabled])
          {
            v13 = [(VoiceOverController *)self voiceOverTouchEnabled:0];
            v14 = [v13 BOOLValue];
          }

          else
          {
            v14 = 1;
          }

          v15 = [MEMORY[0x277CCABB0] numberWithInt:v14];
          [v9 setProperty:v15 forKey:v51];
        }

        v16 = [v9 propertyForKey:v6];
        v17 = [v16 isEqualToString:@"VoiceOverTouchSpeakingRate"];

        if (v17)
        {
          v18 = AXHareImage();
          [v9 setProperty:v18 forKey:v55];

          v19 = AXTortoiseImage();
          [v9 setProperty:v19 forKey:v54];
        }

        if (AXActivePairedDeviceIsLighthouseOrLater())
        {
          v20 = [v9 propertyForKey:v6];
          v21 = [v20 hasPrefix:@"VoiceOverTouchVolume"];
        }

        else
        {
          v21 = 0;
        }

        v22 = [v9 propertyForKey:v6];
        v23 = [v22 isEqualToString:@"VoiceOverTouchVolume"];

        if (v23)
        {
          v24 = AXVolumeMaxImage();
          [v9 setProperty:v24 forKey:v55];

          v25 = AXVolumeMinImage();
          [v9 setProperty:v25 forKey:v54];
        }

        if (![(VoiceOverController *)self _gizmoHasTapticTime])
        {
          v26 = [v9 propertyForKey:v6];
          v27 = [v26 hasPrefix:@"TapticTime"];

          v21 |= v27;
        }

        if (![(VoiceOverController *)self _gizmoLocaleIsRTL])
        {
          v28 = [v9 propertyForKey:v6];
          v29 = [v28 hasPrefix:@"GestureDirection"];

          v21 |= v29;
        }

        if (![(VoiceOverController *)self _gizmoSupportsBraille])
        {
          v30 = [v9 propertyForKey:v7];
          v31 = [v30 hasPrefix:@"Braille"];

          v21 |= v31;
        }

        if (![(VoiceOverController *)self _gizmoSupportsDetents]|| AXActivePairedDeviceIsLighthouseOrLater())
        {
          v32 = [v9 propertyForKey:v7];
          v33 = [v32 hasPrefix:@"Detents"];

          v21 |= v33;
        }

        if (!AXActivePairedDeviceIsLighthouseOrLater())
        {
          v34 = [v9 propertyForKey:v7];
          if ([v34 hasPrefix:@"Speech"])
          {
            v21 = 1;
          }

          else
          {
            v35 = [v9 propertyForKey:v7];
            v36 = [v35 hasPrefix:@"Audio"];

            v21 |= v36;
          }
        }

        if (!AXActivePairedDeviceIsLighthouseOrLater())
        {
          v37 = [v9 propertyForKey:v7];
          v38 = [v37 hasPrefix:@"SleepOnWristDown"];

          v21 |= v38;
        }

        if (AXActivePairedDeviceIsLighthouseOrLater())
        {
          v39 = [v9 propertyForKey:v7];
          v40 = [v39 hasPrefix:@"RotorLanguages"];

          v21 |= v40;
        }

        if (![(VoiceOverController *)self _gizmoVoiceOverHandGesturesEnabled])
        {
          v41 = [v9 propertyForKey:v7];
          v42 = [v41 hasPrefix:@"HandGestures"];

          v21 |= v42;
        }

        if (!AXActivePairedDeviceIsLighthouseEOrLater())
        {
          v43 = [v9 propertyForKey:v7];
          v44 = [v43 hasPrefix:@"VoiceOverDoubleTapInterval"];

          v21 |= v44;
        }

        if (!AXActivePairedDeviceIsMoonstoneOrLater())
        {
          v45 = [v9 propertyForKey:v7];
          v46 = [v45 hasPrefix:@"VoiceOverDelayUntilSpeak"];

          if ((v46 | v21))
          {
            continue;
          }

LABEL_45:
          [v52 addObject:v9];
          continue;
        }

        if ((v21 & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
      if (!v5)
      {
LABEL_48:
        v47 = *(&self->super.super.super.super.super.super.isa + v50);
        *(&self->super.super.super.super.super.super.isa + v50) = v52;

        v3 = *(&self->super.super.super.super.super.super.isa + v50);
        break;
      }
    }
  }

  v48 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)setSpeakingRate:(id)a3 specifier:(id)a4
{
  [a3 floatValue];

  [_TtC21AccessibilitySettings16VOSettingsHelper setSpeakingRate:?];
}

- (id)speakingRate:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  +[_TtC21AccessibilitySettings16VOSettingsHelper speakingRate];

  return [v3 numberWithFloat:?];
}

- (id)voiceOverTouchEnabled:(id)a3
{
  v4 = *MEMORY[0x277D81E88];
  v5 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v6 = [(AccessibilityBridgeBaseController *)self gizmoValueForKey:v4 domainAccessor:v5];

  return v6;
}

- (void)setVoiceOverTouchEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [v5 BOOLValue];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __58__VoiceOverController_setVoiceOverTouchEnabled_specifier___block_invoke;
  v15 = &unk_278B909B0;
  v16 = self;
  v17 = v5;
  v7 = v5;
  v8 = _Block_copy(&v12);
  v9 = [(VoiceOverController *)self areVoiceOverHandGesturesEnabled:v12];
  v10 = [v9 BOOLValue];

  if (AXActivePairedDeviceSupportsHasEltonEnabled() && v6 && v10)
  {
    v11 = settingsLocString(@"GREY_FEATURE_NAME_VOICEOVER", @"AccessibilitySettings-elton");
    [(AccessibilityBridgeBaseController *)self presentDisableEltonAlert:v11 greyOptional:1 confirmBlock:v8 disableGreyBlock:&__block_literal_global_4];
  }

  else
  {
    v8[2](v8);
  }
}

void __58__VoiceOverController_setVoiceOverTouchEnabled_specifier___block_invoke_2()
{
  v0 = [MEMORY[0x277D7A910] sharedInstance];
  [v0 setVoiceOverHandGestures:0];
}

- (id)voiceOverGestureDirectionSummary:(id)a3
{
  v3 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v4 = [v3 objectForKey:@"VoiceOverNavigationDirectionMode"];

  if (v4 && [v4 integerValue] != 2)
  {
    v5 = @"VOICEOVER_RTL_GESTURE_DIRECTION";
  }

  else
  {
    v5 = @"VOICEOVER_LTR_GESTURE_DIRECTION";
  }

  v6 = settingsLocString(v5, @"VoiceOverSettings");

  return v6;
}

- (id)voiceOverTapticTimeSummary:(id)a3
{
  v3 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v4 = [v3 objectForKey:@"VoiceOverTapticTimeMode"];

  v5 = @"ON";
  if (v4 && ![v4 BOOLValue])
  {
    v5 = @"OFF";
  }

  v6 = settingsLocString(v5, @"AccessibilitySettings");

  return v6;
}

- (id)voiceOverDigitalCrownNavigationEnabled:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "BOOLForKey:", *MEMORY[0x277CE7FB0])}];

  return v5;
}

- (id)voiceOverDelayUntilSpeakInterval:(id)a3
{
  v3 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  [v3 doubleForKey:@"VoiceOverDelayUntilSpeakUnderTouch"];

  return AXLocalizedTimeSummary();
}

- (id)voiceOverDoubleTapInterval:(id)a3
{
  v3 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  [v3 doubleForKey:@"VoiceOverDoubleTapInterval"];

  *MEMORY[0x277CE6A20];

  return AXLocalizedTimeSummary();
}

- (BOOL)_gizmoHasTapticTime
{
  v2 = AXGetActivePairedDevice();
  NRWatchOSVersionForRemoteDevice();
  IsGreaterThanOrEqual = NRVersionIsGreaterThanOrEqual();

  return IsGreaterThanOrEqual;
}

- (BOOL)_gizmoSupportsBraille
{
  v2 = AXGetActivePairedDevice();
  v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"8620D455-7F5A-4871-B19E-88F914C977A7"];
  v4 = [v2 supportsCapability:v3];

  return v4;
}

- (BOOL)_gizmoSupportsDetents
{
  v2 = AXGetActivePairedDevice();
  if (AXActivePairedDeviceIsHunterOrLater())
  {
    v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"1E189BE1-6A71-44AA-B116-0066A83035E8"];
    v4 = [v2 supportsCapability:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_gizmoLocaleIsRTL
{
  v2 = [objc_opt_class() domainAccessorForDomain:@".GlobalPreferences"];
  v3 = [v2 synchronize];
  v4 = [v2 objectForKey:@"AppleLocale"];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"en_US";
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = MEMORY[0x277CBEAF8];
  v8 = [v6 objectForKey:*MEMORY[0x277CBE6C8]];
  LOBYTE(v7) = [v7 characterDirectionForLanguage:v8] == 2;

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v14.receiver = self;
  v14.super_class = VoiceOverController;
  v6 = a4;
  v7 = [(VoiceOverController *)&v14 tableView:a3 cellForRowAtIndexPath:v6];
  v8 = [(VoiceOverController *)self specifierAtIndexPath:v6, v14.receiver, v14.super_class];

  v9 = [v8 identifier];
  LODWORD(v6) = [v9 isEqualToString:@"DigitalCrownNavigation"];

  if (v6)
  {
    v10 = [v7 textLabel];
    [v10 setNumberOfLines:0];

    v11 = [v7 textLabel];
    LODWORD(v12) = 0.5;
    [v11 _setHyphenationFactor:v12];
  }

  return v7;
}

- (id)areVoiceOverHandGesturesEnabled
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [MEMORY[0x277D7A910] sharedInstance];
  v4 = [v2 numberWithBool:{objc_msgSend(v3, "voiceOverHandGesturesEnabled")}];

  return v4;
}

- (id)instructionsText
{
  v3 = MEMORY[0x277CCACA8];
  v4 = settingsLocString(@"VOICEOVER_INTRO", @"VoiceOverSettings");
  v5 = settingsLocString(@"SELECT_ITEM_INSTRUCTION", @"VoiceOverSettings");
  v6 = settingsLocString(@"PRESS_ITEM_INSTRUCTION", @"VoiceOverSettings");
  v7 = settingsLocString(@"SCROLL_ITEM_INSTRUCTION", @"VoiceOverSettings");
  v8 = [v3 stringWithFormat:@"%@\n%@\n%@\n%@", v4, v5, v6, v7];

  v9 = [MEMORY[0x277D7A910] sharedInstance];
  if ([v9 featureEnabled])
  {
    v10 = [(VoiceOverController *)self voiceOverTouchEnabled:0];

    if (v10)
    {
      goto LABEL_5;
    }

    v11 = MEMORY[0x277CCACA8];
    v9 = settingsLocString(@"VOICEOVER_WATCH_CONTROL_INSTRUCTION", @"VoiceOverSettings");
    v12 = [v11 stringWithFormat:@"%@\n\n%@", v9, v8];

    v8 = v12;
  }

LABEL_5:

  return v8;
}

@end