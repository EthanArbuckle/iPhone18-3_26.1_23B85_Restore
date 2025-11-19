@interface GAXProfileManager
- ($DE71691BB3011260155645AE0E7AB3CC)profileAccessibilityFeatureSet;
- (BOOL)_isProfileKeyGlobal:(id)a3;
- (BOOL)appAllowlistActiveAndContainsAdditionalApp:(id)a3;
- (BOOL)isAppPrivilagedToSelfLock:(id)a3;
- (BOOL)shouldAllowAccessibilityShortcut;
- (BOOL)shouldAllowAutolock;
- (BOOL)shouldAllowExit;
- (BOOL)shouldAllowHomeButton;
- (BOOL)shouldAllowKeyboardTextInput;
- (BOOL)shouldAllowLockButton;
- (BOOL)shouldAllowMotion;
- (BOOL)shouldAllowProximity;
- (BOOL)shouldAllowRingerSwitch;
- (BOOL)shouldAllowToggleOfAssistiveTouch;
- (BOOL)shouldAllowToggleOfCommandAndControl;
- (BOOL)shouldAllowToggleOfGrayscale;
- (BOOL)shouldAllowToggleOfInvertColors;
- (BOOL)shouldAllowToggleOfVoiceOver;
- (BOOL)shouldAllowToggleOfZoom;
- (BOOL)shouldAllowTouch;
- (BOOL)shouldAllowVolumeButtons;
- (BOOL)shouldAutolaunchAppsAfterLowBatteryPowerDown;
- (BOOL)shouldAutolaunchAppsAfterSystemCrash;
- (BOOL)shouldAutolaunchCrashedApps;
- (BOOL)shouldDisableAssistiveTouch;
- (BOOL)shouldDisableCommandAndControl;
- (BOOL)shouldDisableGrayscale;
- (BOOL)shouldDisableInvertColors;
- (BOOL)shouldDisableMonoAudio;
- (BOOL)shouldDisableSpeakSelection;
- (BOOL)shouldDisableVoiceOver;
- (BOOL)shouldDisableZoom;
- (BOOL)shouldEnableAssistiveTouch;
- (BOOL)shouldEnableCommandAndControl;
- (BOOL)shouldEnableGrayscale;
- (BOOL)shouldEnableInvertColors;
- (BOOL)shouldEnableMonoAudio;
- (BOOL)shouldEnableSpeakSelection;
- (BOOL)shouldEnableVoiceOver;
- (BOOL)shouldEnableZoom;
- (BOOL)shouldShowUserConfirmationPromptsAndBanners;
- (BOOL)timeRestrictionsEnabled;
- (GAXProfileManager)init;
- (GAXProfileManagerDelegate)delegate;
- (SEL)_retrieveSelectorForProfileKey:(id)a3;
- (id)_appIDForConfiguration:(unsigned int)a3;
- (id)_appPropertyMapForConfiguration:(unsigned int)a3;
- (id)_fallbackValueForProfileKey:(id)a3;
- (id)_fallbackValueForRetrieveSelector:(SEL)a3;
- (id)_globalPropertyMapForConfiguration:(unsigned int)a3;
- (id)_guidedAccessProfileKeyForManagedConfigKey:(id)a3 shouldInvertValue:(BOOL *)a4;
- (id)_profileKeyForRetrieveSelector:(SEL)a3;
- (id)_singleAppModeAppIDs;
- (id)_valueForProfileKey:(id)a3;
- (id)_valueForRetrieveSelector:(SEL)a3;
- (id)description;
- (id)ignoredTouchRegionsForOrientation:(int)a3;
- (id)selfLockAppIDs;
- (id)statesForRestrictionsWithIdentifiers:(id)a3;
- (int)isAvailabilityValid:(unint64_t)a3 forSelfLockAppToEnableGuidedAccess:(BOOL)a4;
- (int64_t)appTimeoutDuration;
- (int64_t)stateForRestrictionWithIdentifier:(id)a3;
- (void)_applyWebTextDefineProperty:(BOOL)a3 properties:(id)a4;
- (void)_handleSingleAppModeStateDidChange:(id)a3;
- (void)_initializeProfileKeyToRetrieveSelectorMap;
- (void)_initializeProfileKeys;
- (void)_updateConfigurationAndNotifyDelegate:(BOOL)a3;
- (void)_updateProperty:(id)a3 withValue:(id)a4 saveChanges:(BOOL)a5;
- (void)_updateSingleAppModeStateFromManagedConfiguration;
- (void)applyUnmanagedSelfLockPropertiesMap:(id)a3 managedConfigurationSettings:(id)a4;
- (void)applyUnmanagedSelfLockRestrictionsForStyle:(int64_t)a3 withUserInterfaceClient:(id)a4;
- (void)dealloc;
- (void)removeUnmanagedSelfLockRestrictionsWithUserInterfaceClient:(id)a3;
- (void)setIgnoredTouchRegions:(id)a3 forOrientation:(int)a4;
- (void)setStatesForRestrictions:(id)a3;
@end

@implementation GAXProfileManager

- (GAXProfileManager)init
{
  v18.receiver = self;
  v18.super_class = GAXProfileManager;
  v2 = [(GAXProfileManager *)&v18 init];
  if (v2)
  {
    v3 = +[GAXSettings sharedInstance];
    v4 = [v3 mutableUserAppProfile];
    userAppPropertiesMap = v2->_userAppPropertiesMap;
    v2->_userAppPropertiesMap = v4;

    v6 = [v3 mutableUserGlobalProfile];
    userGlobalPropertiesMap = v2->_userGlobalPropertiesMap;
    v2->_userGlobalPropertiesMap = v6;

    v2->_configuration = 0;
    v8 = [AXAccessQueueTimer alloc];
    v9 = +[AXAccessQueue mainAccessQueue];
    v10 = [v8 initWithTargetAccessQueue:v9];
    profileFeatureChangedNotificationTimer = v2->_profileFeatureChangedNotificationTimer;
    v2->_profileFeatureChangedNotificationTimer = v10;

    v12 = [AXAccessQueueTimer alloc];
    v13 = +[AXAccessQueue mainAccessQueue];
    v14 = [v12 initWithTargetAccessQueue:v13];
    managedConfigurationNotificationCoalesceTimer = v2->_managedConfigurationNotificationCoalesceTimer;
    v2->_managedConfigurationNotificationCoalesceTimer = v14;

    [(GAXProfileManager *)v2 _initializeProfileKeyToRetrieveSelectorMap];
    [(GAXProfileManager *)v2 _initializeProfileKeys];
    [(GAXProfileManager *)v2 _updateConfigurationAndNotifyDelegate:0];
    v16 = +[NSNotificationCenter defaultCenter];
    [v16 addObserver:v2 selector:"_handleSingleAppModeStateDidChange:" name:MCProfileListChangedNotification object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = GAXProfileManager;
  [(GAXProfileManager *)&v4 dealloc];
}

- (void)_initializeProfileKeyToRetrieveSelectorMap
{
  v39[0] = @"GAXProfileAllowsKeyboardTextInput";
  v38 = NSStringFromSelector("shouldAllowKeyboardTextInput");
  v40[0] = v38;
  v39[1] = @"GAXProfileAllowsTouch";
  v37 = NSStringFromSelector("shouldAllowTouch");
  v40[1] = v37;
  v39[2] = @"GAXProfileAllowsMotion";
  v36 = NSStringFromSelector("shouldAllowMotion");
  v40[2] = v36;
  v39[3] = @"GAXProfileAllowsRingerSwitch";
  v35 = NSStringFromSelector("shouldAllowRingerSwitch");
  v40[3] = v35;
  v39[4] = @"GAXProfileAllowsProximity";
  v34 = NSStringFromSelector("shouldAllowProximity");
  v40[4] = v34;
  v39[5] = @"GAXProfileAllowsLockButton";
  v33 = NSStringFromSelector("shouldAllowLockButton");
  v40[5] = v33;
  v39[6] = @"GAXProfileAllowsVolumeButtons";
  v32 = NSStringFromSelector("shouldAllowVolumeButtons");
  v40[6] = v32;
  v39[7] = @"GAXProfileAllowsAutolock";
  v31 = NSStringFromSelector("shouldAllowAutolock");
  v40[7] = v31;
  v39[8] = @"GAXProfileAppTimeoutDuration";
  v30 = NSStringFromSelector("appTimeoutDuration");
  v40[8] = v30;
  v39[9] = @"GAXProfileAppTimeoutEnabled";
  v28 = NSStringFromSelector("timeRestrictionsEnabled");
  v40[9] = v28;
  v39[10] = @"GAXProfileAllowsAXAutoEnableVoiceOver";
  v27 = NSStringFromSelector("shouldEnableVoiceOver");
  v40[10] = v27;
  v39[11] = @"GAXProfileAllowsAXAutoEnableZoom";
  v26 = NSStringFromSelector("shouldEnableZoom");
  v40[11] = v26;
  v39[12] = @"GAXProfileAllowsAXAutoEnableInvertColors";
  v25 = NSStringFromSelector("shouldEnableInvertColors");
  v40[12] = v25;
  v39[13] = @"GAXProfileAllowsAXAutoEnableGrayscale";
  v24 = NSStringFromSelector("shouldEnableGrayscale");
  v40[13] = v24;
  v39[14] = @"GAXProfileAllowsAXAutoEnableAssistiveTouch";
  v23 = NSStringFromSelector("shouldEnableAssistiveTouch");
  v40[14] = v23;
  v39[15] = @"GAXProfileAllowsAXAutoEnableSpeakSelection";
  v22 = NSStringFromSelector("shouldEnableSpeakSelection");
  v40[15] = v22;
  v39[16] = @"GAXProfileAllowsAXAutoEnableMonoAudio";
  v21 = NSStringFromSelector("shouldEnableMonoAudio");
  v40[16] = v21;
  v39[17] = @"GAXProfileAllowsAXAutoEnableCommandAndControl";
  v20 = NSStringFromSelector("shouldEnableCommandAndControl");
  v40[17] = v20;
  v39[18] = @"GAXProfileAllowsAXToggleVoiceOver";
  v19 = NSStringFromSelector("shouldAllowToggleOfVoiceOver");
  v40[18] = v19;
  v39[19] = @"GAXProfileAllowsAXToggleZoom";
  v18 = NSStringFromSelector("shouldAllowToggleOfZoom");
  v40[19] = v18;
  v39[20] = @"GAXProfileAllowsAXToggleInvertColors";
  v17 = NSStringFromSelector("shouldAllowToggleOfInvertColors");
  v40[20] = v17;
  v39[21] = @"GAXProfileAllowsAXToggleGrayscale";
  v16 = NSStringFromSelector("shouldAllowToggleOfGrayscale");
  v40[21] = v16;
  v39[22] = @"GAXProfileAllowsAXToggleAssistiveTouch";
  v15 = NSStringFromSelector("shouldAllowToggleOfAssistiveTouch");
  v40[22] = v15;
  v39[23] = @"GAXProfileAllowsAXToggleCommandAndControl";
  v14 = NSStringFromSelector("shouldAllowToggleOfCommandAndControl");
  v40[23] = v14;
  v39[24] = @"GAXProfileIgnoredTouchRegionsPortrait";
  v13 = NSStringFromSelector("ignoredTouchRegionsPortrait");
  v40[24] = v13;
  v39[25] = @"GAXProfileIgnoredTouchRegionsLandscape";
  v12 = NSStringFromSelector("ignoredTouchRegionsLandscape");
  v40[25] = v12;
  v39[26] = @"GAXProfileStatesForRestrictions";
  v2 = NSStringFromSelector("restrictionStates");
  v40[26] = v2;
  v39[27] = @"GAXProfileUnappliedChangedStatesForRestrictions";
  v3 = NSStringFromSelector("unappliedRestrictionStates");
  v40[27] = v3;
  v39[28] = @"GAXProfileAllowsHomeButton";
  v4 = NSStringFromSelector("shouldAllowHomeButton");
  v40[28] = v4;
  v39[29] = @"GAXProfileShouldAutolaunchCrashedApps";
  v5 = NSStringFromSelector("shouldAutolaunchCrashedApps");
  v40[29] = v5;
  v39[30] = @"GAXProfileShouldAutolaunchAppsAfterSystemCrash";
  v6 = NSStringFromSelector("shouldAutolaunchAppsAfterSystemCrash");
  v40[30] = v6;
  v39[31] = @"GAXProfileAllowsExit";
  v7 = NSStringFromSelector("shouldAllowExit");
  v40[31] = v7;
  v39[32] = @"GAXProfileAllowsAccessibilityShortcut";
  v8 = NSStringFromSelector("shouldAllowAccessibilityShortcut");
  v40[32] = v8;
  v39[33] = @"GAXProfileShouldAutolaunchAfterLowBatteryShutDown";
  v9 = NSStringFromSelector("shouldAutolaunchAppsAfterLowBatteryPowerDown");
  v40[33] = v9;
  v39[34] = @"GAXProfileShowsUserConfirmationPromptsAndBanners";
  v10 = NSStringFromSelector("shouldShowUserConfirmationPromptsAndBanners");
  v40[34] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:35];
  [(GAXProfileManager *)self setProfileKeyToRetrieveSelectorMap:v11];
}

- (void)_initializeProfileKeys
{
  v6[0] = @"GAXProfileAllowsKeyboardTextInput";
  v6[1] = @"GAXProfileAllowsTouch";
  v6[2] = @"GAXProfileAllowsMotion";
  v6[3] = @"GAXProfileAllowsRingerSwitch";
  v6[4] = @"GAXProfileAllowsProximity";
  v6[5] = @"GAXProfileAllowsLockButton";
  v6[6] = @"GAXProfileAllowsVolumeButtons";
  v6[7] = @"GAXProfileAllowsAutolock";
  v6[8] = @"GAXProfileAppTimeoutDuration";
  v6[9] = @"GAXProfileAppTimeoutEnabled";
  v6[10] = @"GAXProfileAllowsAXAutoEnableVoiceOver";
  v6[11] = @"GAXProfileAllowsAXAutoEnableZoom";
  v6[12] = @"GAXProfileAllowsAXAutoEnableInvertColors";
  v6[13] = @"GAXProfileAllowsAXAutoEnableGrayscale";
  v6[14] = @"GAXProfileAllowsAXAutoEnableAssistiveTouch";
  v6[15] = @"GAXProfileAllowsAXAutoEnableSpeakSelection";
  v6[16] = @"GAXProfileAllowsAXAutoEnableMonoAudio";
  v6[17] = @"GAXProfileAllowsAXAutoEnableCommandAndControl";
  v6[18] = @"GAXProfileAllowsAXToggleVoiceOver";
  v6[19] = @"GAXProfileAllowsAXToggleZoom";
  v6[20] = @"GAXProfileAllowsAXToggleInvertColors";
  v6[21] = @"GAXProfileAllowsAXToggleGrayscale";
  v6[22] = @"GAXProfileAllowsAXToggleAssistiveTouch";
  v6[23] = @"GAXProfileAllowsAXToggleCommandAndControl";
  v6[24] = @"GAXProfileIgnoredTouchRegionsPortrait";
  v6[25] = @"GAXProfileIgnoredTouchRegionsLandscape";
  v6[26] = @"GAXProfileStatesForRestrictions";
  v6[27] = @"GAXProfileUnappliedChangedStatesForRestrictions";
  v3 = [NSArray arrayWithObjects:v6 count:28];
  [(GAXProfileManager *)self setAppSpecificProfileKeys:v3];

  v5[0] = @"GAXProfileAllowsHomeButton";
  v5[1] = @"GAXProfileShouldAutolaunchCrashedApps";
  v5[2] = @"GAXProfileShouldAutolaunchAppsAfterSystemCrash";
  v5[3] = @"GAXProfileAllowsExit";
  v5[4] = @"GAXProfileAllowsAccessibilityShortcut";
  v5[5] = @"GAXProfileShouldAutolaunchAfterLowBatteryShutDown";
  v4 = [NSArray arrayWithObjects:v5 count:6];
  [(GAXProfileManager *)self setGlobalProfileKeys:v4];
}

- (id)description
{
  v3 = [(GAXProfileManager *)self configuration];
  v4 = @"User";
  if (v3 == 2)
  {
    v4 = @"ManagedConfiguration";
  }

  if (v3 == 3)
  {
    v5 = @"AppSelfLock";
  }

  else
  {
    v5 = v4;
  }

  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [NSMutableString stringWithFormat:@"%@<%p>. Mode:%@", v7, self, v5];

  [v8 appendString:@" Global Properties:\n"];
  v9 = [(GAXProfileManager *)self _globalPropertyMapForConfiguration:[(GAXProfileManager *)self configuration]];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_CC70;
  v18[3] = &unk_4D2F8;
  v10 = v8;
  v19 = v10;
  [v9 enumerateKeysAndObjectsUsingBlock:v18];

  [v10 appendString:@" App Properties:\n"];
  v11 = [(GAXProfileManager *)self _appPropertyMapForConfiguration:[(GAXProfileManager *)self configuration]];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_CD0C;
  v16[3] = &unk_4D2F8;
  v12 = v10;
  v17 = v12;
  [v11 enumerateKeysAndObjectsUsingBlock:v16];

  v13 = v17;
  v14 = v12;

  return v12;
}

- (id)_appIDForConfiguration:(unsigned int)a3
{
  if (a3 == 2)
  {
    v4 = [(GAXProfileManager *)self singleAppModeAppID];
  }

  else
  {
    v5 = [(GAXProfileManager *)self delegate];
    v4 = [v5 profileManagerSessionAppID:self];
  }

  return v4;
}

- (BOOL)shouldAllowKeyboardTextInput
{
  v2 = [(GAXProfileManager *)self _valueForRetrieveSelector:a2];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)shouldAllowTouch
{
  v2 = [(GAXProfileManager *)self _valueForRetrieveSelector:a2];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)shouldAllowMotion
{
  v2 = [(GAXProfileManager *)self _valueForRetrieveSelector:a2];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)shouldAllowLockButton
{
  v2 = [(GAXProfileManager *)self _valueForRetrieveSelector:a2];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)shouldAllowVolumeButtons
{
  v2 = [(GAXProfileManager *)self _valueForRetrieveSelector:a2];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)shouldAllowRingerSwitch
{
  v2 = [(GAXProfileManager *)self _valueForRetrieveSelector:a2];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)shouldAllowProximity
{
  v2 = [(GAXProfileManager *)self _valueForRetrieveSelector:a2];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)shouldAllowAutolock
{
  v2 = [(GAXProfileManager *)self _valueForRetrieveSelector:a2];
  v3 = [v2 BOOLValue];

  return v3;
}

- (int64_t)appTimeoutDuration
{
  v2 = [(GAXProfileManager *)self _valueForRetrieveSelector:a2];
  v3 = [v2 integerValue];

  return v3;
}

- (BOOL)timeRestrictionsEnabled
{
  v2 = [(GAXProfileManager *)self _valueForRetrieveSelector:a2];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)shouldEnableVoiceOver
{
  v2 = [(GAXProfileManager *)self _valueForRetrieveSelector:a2];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)shouldEnableZoom
{
  v2 = [(GAXProfileManager *)self _valueForRetrieveSelector:a2];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)shouldEnableInvertColors
{
  v2 = [(GAXProfileManager *)self _valueForRetrieveSelector:a2];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)shouldEnableGrayscale
{
  v2 = [(GAXProfileManager *)self _valueForRetrieveSelector:a2];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)shouldEnableAssistiveTouch
{
  v2 = [(GAXProfileManager *)self _valueForRetrieveSelector:a2];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)shouldEnableSpeakSelection
{
  v2 = [(GAXProfileManager *)self _valueForRetrieveSelector:a2];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)shouldEnableMonoAudio
{
  v2 = [(GAXProfileManager *)self _valueForRetrieveSelector:a2];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)shouldEnableCommandAndControl
{
  v2 = [(GAXProfileManager *)self _valueForRetrieveSelector:a2];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)shouldDisableVoiceOver
{
  v3 = [(GAXProfileManager *)self _valueForRetrieveSelector:"shouldEnableVoiceOver"];
  if (v3)
  {
    v4 = [(GAXProfileManager *)self _valueForRetrieveSelector:"shouldEnableVoiceOver"];
    v5 = [v4 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)shouldDisableZoom
{
  v3 = [(GAXProfileManager *)self _valueForRetrieveSelector:"shouldEnableZoom"];
  if (v3)
  {
    v4 = [(GAXProfileManager *)self _valueForRetrieveSelector:"shouldEnableZoom"];
    v5 = [v4 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)shouldDisableInvertColors
{
  v3 = [(GAXProfileManager *)self _valueForRetrieveSelector:"shouldEnableInvertColors"];
  if (v3)
  {
    v4 = [(GAXProfileManager *)self _valueForRetrieveSelector:"shouldEnableInvertColors"];
    v5 = [v4 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)shouldDisableGrayscale
{
  v3 = [(GAXProfileManager *)self _valueForRetrieveSelector:"shouldEnableGrayscale"];
  if (v3)
  {
    v4 = [(GAXProfileManager *)self _valueForRetrieveSelector:"shouldEnableGrayscale"];
    v5 = [v4 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)shouldDisableAssistiveTouch
{
  v3 = [(GAXProfileManager *)self _valueForRetrieveSelector:"shouldEnableAssistiveTouch"];
  if (v3)
  {
    v4 = [(GAXProfileManager *)self _valueForRetrieveSelector:"shouldEnableAssistiveTouch"];
    v5 = [v4 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)shouldDisableSpeakSelection
{
  v3 = [(GAXProfileManager *)self _valueForRetrieveSelector:"shouldEnableSpeakSelection"];
  if (v3)
  {
    v4 = [(GAXProfileManager *)self _valueForRetrieveSelector:"shouldEnableSpeakSelection"];
    v5 = [v4 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)shouldDisableMonoAudio
{
  v3 = [(GAXProfileManager *)self _valueForRetrieveSelector:"shouldEnableMonoAudio"];
  if (v3)
  {
    v4 = [(GAXProfileManager *)self _valueForRetrieveSelector:"shouldEnableMonoAudio"];
    v5 = [v4 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)shouldDisableCommandAndControl
{
  v3 = [(GAXProfileManager *)self _valueForRetrieveSelector:"shouldEnableCommandAndControl"];
  if (v3)
  {
    v4 = [(GAXProfileManager *)self _valueForRetrieveSelector:"shouldEnableCommandAndControl"];
    v5 = [v4 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)shouldAllowToggleOfVoiceOver
{
  v2 = [(GAXProfileManager *)self _valueForRetrieveSelector:a2];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)shouldAllowToggleOfZoom
{
  v2 = [(GAXProfileManager *)self _valueForRetrieveSelector:a2];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)shouldAllowToggleOfInvertColors
{
  v2 = [(GAXProfileManager *)self _valueForRetrieveSelector:a2];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)shouldAllowToggleOfGrayscale
{
  v2 = [(GAXProfileManager *)self _valueForRetrieveSelector:a2];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)shouldAllowToggleOfAssistiveTouch
{
  v2 = [(GAXProfileManager *)self _valueForRetrieveSelector:a2];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)shouldAllowToggleOfCommandAndControl
{
  v2 = [(GAXProfileManager *)self _valueForRetrieveSelector:a2];
  v3 = [v2 BOOLValue];

  return v3;
}

- (id)ignoredTouchRegionsForOrientation:(int)a3
{
  v4 = &GAXProfileIgnoredTouchRegionsPortrait;
  if ((a3 - 1) >= 2)
  {
    v4 = &GAXProfileIgnoredTouchRegionsLandscape;
  }

  v5 = *v4;
  v6 = [(GAXProfileManager *)self _valueForProfileKey:v5];

  return v6;
}

- (void)setIgnoredTouchRegions:(id)a3 forOrientation:(int)a4
{
  v6 = &GAXProfileIgnoredTouchRegionsPortrait;
  if ((a4 - 1) >= 2)
  {
    v6 = &GAXProfileIgnoredTouchRegionsLandscape;
  }

  v7 = *v6;
  [(GAXProfileManager *)self updateProperty:v7 withValue:a3];
}

- (int64_t)stateForRestrictionWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(GAXProfileManager *)self _valueForProfileKey:@"GAXProfileStatesForRestrictions"];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 integerValue];
  return v7;
}

- (id)statesForRestrictionsWithIdentifiers:(id)a3
{
  v4 = a3;
  +[NSMutableDictionary dictionary];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_DBE8;
  v11 = &unk_4D320;
  v13 = v12 = self;
  v5 = v13;
  [v4 enumerateObjectsUsingBlock:&v8];

  v6 = [v5 copy];

  return v6;
}

- (void)setStatesForRestrictions:(id)a3
{
  v4 = a3;
  v5 = [(GAXProfileManager *)self _valueForProfileKey:@"GAXProfileStatesForRestrictions"];
  v6 = [v5 mutableCopy];
  if (!v6)
  {
    v6 = +[NSMutableDictionary dictionary];
  }

  v7 = [(GAXProfileManager *)self _valueForProfileKey:@"GAXProfileUnappliedChangedStatesForRestrictions"];
  v8 = [v7 mutableCopy];
  if (!v8)
  {
    v8 = +[NSMutableDictionary dictionary];
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_DE18;
  v14[3] = &unk_4D348;
  v15 = v5;
  v16 = v6;
  v17 = v8;
  v9 = v8;
  v10 = v6;
  v11 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v14];
  v12 = [v10 copy];
  [(GAXProfileManager *)self updateProperty:@"GAXProfileStatesForRestrictions" withValue:v12];

  v13 = [v9 copy];
  [(GAXProfileManager *)self updateProperty:@"GAXProfileUnappliedChangedStatesForRestrictions" withValue:v13];
}

- (BOOL)shouldAllowHomeButton
{
  v2 = [(GAXProfileManager *)self _valueForRetrieveSelector:a2];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)shouldAutolaunchCrashedApps
{
  v2 = [(GAXProfileManager *)self _valueForRetrieveSelector:a2];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)shouldShowUserConfirmationPromptsAndBanners
{
  v2 = [(GAXProfileManager *)self _valueForRetrieveSelector:a2];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)shouldAutolaunchAppsAfterSystemCrash
{
  v2 = [(GAXProfileManager *)self _valueForRetrieveSelector:a2];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)shouldAutolaunchAppsAfterLowBatteryPowerDown
{
  v2 = [(GAXProfileManager *)self _valueForRetrieveSelector:a2];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)shouldAllowExit
{
  v2 = [(GAXProfileManager *)self _valueForRetrieveSelector:a2];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)shouldAllowAccessibilityShortcut
{
  v2 = [(GAXProfileManager *)self _valueForRetrieveSelector:a2];
  v3 = [v2 BOOLValue];

  return v3;
}

- (id)_appPropertyMapForConfiguration:(unsigned int)a3
{
  if (a3 == 3 || a3 == 2)
  {
    v3 = [(GAXProfileManager *)self singleAppModeAppPropertiesMap];
  }

  else if (a3 == 1)
  {
    v3 = [(GAXProfileManager *)self userAppPropertiesMap];
  }

  else
  {
    v5 = [NSNumber numberWithUnsignedInt:?];
    _AXAssert();

    v3 = 0;
  }

  return v3;
}

- (id)_globalPropertyMapForConfiguration:(unsigned int)a3
{
  if (a3 == 3 || a3 == 2)
  {
    v3 = [(GAXProfileManager *)self singleAppModeGlobalPropertiesMap];
  }

  else if (a3 == 1)
  {
    v3 = [(GAXProfileManager *)self userGlobalPropertiesMap];
  }

  else
  {
    v5 = [NSNumber numberWithUnsignedInt:?];
    _AXAssert();

    v3 = 0;
  }

  return v3;
}

- (id)_valueForProfileKey:(id)a3
{
  v4 = a3;
  v5 = [(GAXProfileManager *)self _isProfileKeyGlobal:v4];
  v6 = [(GAXProfileManager *)self configuration];
  if (v5)
  {
    if (v6 == 3)
    {
      v7 = +[GAXSettings sharedInstance];
      v8 = [v7 selfLockUnmanaged];

      if (v8)
      {
        v9 = [(GAXProfileManager *)self unmanagedSelfLockPropertiesMap];
        v10 = [v9 objectForKeyedSubscript:v4];

        if (v10)
        {
          goto LABEL_11;
        }
      }
    }

    v11 = [(GAXProfileManager *)self _globalPropertyMapForConfiguration:[(GAXProfileManager *)self configuration]];
    v10 = [v11 objectForKey:v4];
  }

  else
  {
    v11 = [(GAXProfileManager *)self _appIDForConfiguration:v6];
    if (v11)
    {
      objc_opt_class();
      v12 = [(GAXProfileManager *)self _appPropertyMapForConfiguration:[(GAXProfileManager *)self configuration]];
      v13 = [v12 objectForKey:v11];
      v14 = __UIAccessibilityCastAsClass();

      v10 = [v14 objectForKey:v4];
    }

    else
    {
      v10 = 0;
    }
  }

  if (!v10)
  {
    v10 = [(GAXProfileManager *)self _fallbackValueForProfileKey:v4];
  }

LABEL_11:
  v15 = +[NSNull null];
  v16 = [v10 isEqual:v15];

  if (v16)
  {

    v10 = 0;
  }

  return v10;
}

- (id)_valueForRetrieveSelector:(SEL)a3
{
  v4 = [(GAXProfileManager *)self _profileKeyForRetrieveSelector:a3];
  v5 = [(GAXProfileManager *)self _valueForProfileKey:v4];

  return v5;
}

- (SEL)_retrieveSelectorForProfileKey:(id)a3
{
  v4 = a3;
  v5 = [(GAXProfileManager *)self profileKeyToRetrieveSelectorMap];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = NSSelectorFromString(v6);
  }

  else
  {
    v8 = GAXLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_2A948(v4, v8, v9, v10, v11, v12, v13, v14);
    }

    v7 = 0;
  }

  return v7;
}

- (id)_profileKeyForRetrieveSelector:(SEL)a3
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_E66C;
  v24 = sub_E67C;
  v25 = 0;
  v4 = NSStringFromSelector(a3);
  v5 = [(GAXProfileManager *)self profileKeyToRetrieveSelectorMap];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_E684;
  v17[3] = &unk_4D370;
  v6 = v4;
  v18 = v6;
  v19 = &v20;
  [v5 enumerateKeysAndObjectsUsingBlock:v17];

  v7 = v21[5];
  if (!v7)
  {
    v8 = GAXLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_2A9B4(v6, v8, v9, v10, v11, v12, v13, v14);
    }

    v7 = v21[5];
  }

  v15 = v7;

  _Block_object_dispose(&v20, 8);

  return v15;
}

- (id)_fallbackValueForProfileKey:(id)a3
{
  v4 = a3;
  v5 = [(GAXProfileManager *)self _fallbackValueForProfileKey:v4 configuration:[(GAXProfileManager *)self configuration]];

  return v5;
}

- (id)_fallbackValueForRetrieveSelector:(SEL)a3
{
  v4 = [(GAXProfileManager *)self _profileKeyForRetrieveSelector:a3];
  v5 = [(GAXProfileManager *)self _fallbackValueForProfileKey:v4];

  return v5;
}

- (BOOL)_isProfileKeyGlobal:(id)a3
{
  v4 = a3;
  v5 = [(GAXProfileManager *)self globalProfileKeys];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (void)_updateConfigurationAndNotifyDelegate:(BOOL)a3
{
  v3 = a3;
  v5 = [(GAXProfileManager *)self configuration];
  [(GAXProfileManager *)self _updateSingleAppModeStateFromManagedConfiguration];
  [(GAXProfileManager *)self setUnmanagedSelfLockPropertiesMap:0];
  [(GAXProfileManager *)self setUnmanagedSelfLockManagedConfigurationSettings:0];
  v6 = +[MCProfileConnection sharedConnection];
  v7 = [v6 isInSingleAppMode];

  v8 = [(GAXProfileManager *)self _singleAppModeAppIDs];
  v9 = [v8 count];

  v10 = GAXLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [NSNumber numberWithBool:v7];
    v12 = [NSNumber numberWithBool:v9 != 0];
    v13 = [NSNumber numberWithUnsignedInt:v5];
    v30 = 138543874;
    v31 = v11;
    v32 = 2114;
    v33 = v12;
    v34 = 2114;
    v35 = v13;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Guided Access updating configuration. inSingleAppMode:%{public}@ singleAppModeAppIDExists:%{public}@ previousConfiguration: %{public}@", &v30, 0x20u);
  }

  if (v7)
  {
    if (v9)
    {
      v14 = 2;
      goto LABEL_16;
    }

    v15 = GAXLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_2AA20(v15);
    }
  }

  v16 = +[GAXSettings sharedInstance];
  if (([v16 isActiveAppSelfLocked] & 1) == 0)
  {

    goto LABEL_13;
  }

  v17 = [(GAXProfileManager *)self selfLockAppIDs];
  if (![v17 count])
  {
    v18 = +[GAXSettings sharedInstance];
    v19 = [v18 selfLockUnmanaged];

    if (v19)
    {
      goto LABEL_15;
    }

LABEL_13:
    v14 = 1;
    goto LABEL_16;
  }

LABEL_15:
  v14 = 3;
LABEL_16:
  [(GAXProfileManager *)self setConfiguration:v14];
  if (!v3)
  {
    goto LABEL_37;
  }

  v20 = [(GAXProfileManager *)self configuration];
  v21 = v20;
  if (v5 != 2 || v20 == 2)
  {
    if (v5 == 3 && v20 != 3)
    {
      v25 = [(GAXProfileManager *)self delegate];
      [v25 didExitAppSelfLockModeWithProfileManager:self];

      v23 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    v22 = [(GAXProfileManager *)self delegate];
    [v22 didExitSingleAppModeWithProfileManager:self];
  }

  v23 = v21 == 3;
  if (v21 == 3 && v5 != 3)
  {
    v24 = [(GAXProfileManager *)self delegate];
    [v24 didEnterAppSelfLockModeWithProfileManager:self];
LABEL_36:

    goto LABEL_37;
  }

LABEL_26:
  if (v21 != 2 || v5 == 2)
  {
    if (v5 == 2 && v21 == 2)
    {
      v24 = [(GAXProfileManager *)self delegate];
      [v24 appDidChangeForSingleAppModeWithProfileManager:self];
      goto LABEL_36;
    }
  }

  else
  {
    v26 = [(GAXProfileManager *)self delegate];
    [v26 didEnterSingleAppModeWithProfileManager:self];
  }

  v27 = !v23;
  if (v5 != 3)
  {
    v27 = 1;
  }

  if ((v27 & 1) == 0)
  {
    v24 = [(GAXProfileManager *)self delegate];
    [v24 appDidChangeForAppSelfLockModeWithProfileManager:self];
    goto LABEL_36;
  }

LABEL_37:
  v28 = GAXLogCommon();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = [NSNumber numberWithUnsignedInt:[(GAXProfileManager *)self configuration]];
    v30 = 138543362;
    v31 = v29;
    _os_log_impl(&dword_0, v28, OS_LOG_TYPE_INFO, "Resulting Guided Access configuration change: %{public}@", &v30, 0xCu);
  }
}

- (void)_updateProperty:(id)a3 withValue:(id)a4 saveChanges:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    goto LABEL_23;
  }

  if (![(GAXProfileManager *)self _isProfileKeyGlobal:v8])
  {
    v12 = [(GAXProfileManager *)self _appIDForConfiguration:[(GAXProfileManager *)self configuration]];
    if (!v12)
    {
      v17 = GAXLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_2AA64(v17, v18, v19, v20, v21, v22, v23, v24);
      }

      goto LABEL_22;
    }

    v13 = [(GAXProfileManager *)self _appPropertyMapForConfiguration:[(GAXProfileManager *)self configuration]];
    v14 = [v13 objectForKey:v12];
    if (!v14)
    {
      v14 = +[NSMutableDictionary dictionary];
      [v13 setObject:v14 forKey:v12];
    }

    if (v9)
    {
      [v14 setObject:v9 forKey:v8];
      if (!v5)
      {
        goto LABEL_21;
      }
    }

    else
    {
      [v14 removeObjectForKey:v8];
      if (!v5)
      {
LABEL_21:

LABEL_22:
        goto LABEL_23;
      }
    }

    if ([(GAXProfileManager *)self isUserMode])
    {
      v25 = [(GAXProfileManager *)self userAppPropertiesMap];
      v26 = +[GAXSettings sharedInstance];
      [v26 setUserAppProfile:v25];
    }

    goto LABEL_21;
  }

  v10 = [(GAXProfileManager *)self _globalPropertyMapForConfiguration:[(GAXProfileManager *)self configuration]];
  v11 = v10;
  if (v9)
  {
    [v10 setObject:v9 forKey:v8];
  }

  else
  {
    [v10 removeObjectForKey:v8];
  }

  if (v5 && [(GAXProfileManager *)self isUserMode])
  {
    v15 = [(GAXProfileManager *)self userGlobalPropertiesMap];
    v16 = +[GAXSettings sharedInstance];
    [v16 setUserGlobalProfile:v15];
  }

LABEL_23:
}

- (id)_singleAppModeAppIDs
{
  v2 = [(GAXProfileManager *)self singleAppModeAppPropertiesMap];
  v3 = [v2 allKeys];

  return v3;
}

- (id)selfLockAppIDs
{
  v2 = +[MCProfileConnection sharedConnection];
  v3 = [v2 autonomousSingleAppModePermittedBundleIDs];

  if (![v3 count])
  {

    v3 = 0;
  }

  return v3;
}

- (BOOL)isAppPrivilagedToSelfLock:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(GAXProfileManager *)self selfLockAppIDs];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (int)isAvailabilityValid:(unint64_t)a3 forSelfLockAppToEnableGuidedAccess:(BOOL)a4
{
  if (a4)
  {
    if (a3 < 0x10)
    {
      v4 = &unk_35BA0;
      return v4[a3];
    }
  }

  else if (a3 < 0x10)
  {
    v4 = &unk_35BE0;
    return v4[a3];
  }

  _AXAssert();
  return 2;
}

- (BOOL)appAllowlistActiveAndContainsAdditionalApp:(id)a3
{
  v3 = a3;
  v4 = +[MCProfileConnection sharedConnection];
  v5 = [v4 effectiveWhitelistedAppsAndOptions];

  v6 = [v5 count];
  v7 = 0;
  if (v3 && v6)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      v12 = kMCAppWhitelistIdentifierKey;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v14 = [*(*(&v17 + 1) + 8 * i) objectForKey:{v12, v17}];
          v15 = [v14 isEqualToString:v3];

          if (v15)
          {
            v7 = 1;
            goto LABEL_13;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v7 = 0;
LABEL_13:
  }

  return v7;
}

- (void)applyUnmanagedSelfLockPropertiesMap:(id)a3 managedConfigurationSettings:(id)a4
{
  v6 = a4;
  [(GAXProfileManager *)self setUnmanagedSelfLockPropertiesMap:a3];
  [(GAXProfileManager *)self setUnmanagedSelfLockManagedConfigurationSettings:v6];
}

- (void)_applyWebTextDefineProperty:(BOOL)a3 properties:(id)a4
{
  v4 = a3;
  v5 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20[0] = @"GAXProfileStatesForRestrictions";
  v20[1] = @"GAXProfileUnappliedChangedStatesForRestrictions";
  obj = [NSArray arrayWithObjects:v20 count:2];
  v6 = [obj countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v5 objectForKey:v10];
        if (v11)
        {
          v12 = v11;
          v13 = [v11 mutableCopy];
        }

        else
        {
          v13 = +[NSMutableDictionary dictionary];
        }

        v14 = [NSNumber numberWithInt:!v4];
        [v13 setObject:v14 forKey:@"GAXProfileAllowsWebTextDefine"];

        [v5 setObject:v13 forKey:v10];
      }

      v7 = [obj countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v7);
  }
}

- (void)_updateSingleAppModeStateFromManagedConfiguration
{
  v3 = +[MCProfileConnection sharedConnection];
  v29 = [v3 isWebTextDefineAllowed];

  v4 = +[MCProfileConnection sharedConnection];
  v5 = [v4 effectiveWhitelistedAppsAndOptions];

  if ([v5 count])
  {
    v6 = [v5 objectAtIndexedSubscript:0];
    v7 = [v6 objectForKeyedSubscript:kMCAppWhitelistIdentifierKey];
    [(GAXProfileManager *)self setSingleAppModeAppID:v7];

    v8 = GAXLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(GAXProfileManager *)self singleAppModeAppID];
      v10 = [v5 objectAtIndexedSubscript:0];
      *buf = 138543618;
      v41 = v9;
      v42 = 2114;
      v43 = v10;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "set single app mode app ID to %{public}@ from %{public}@", buf, 0x16u);
    }
  }

  else
  {
    [(GAXProfileManager *)self setSingleAppModeAppID:0];
    v8 = GAXLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v41 = v5;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "set single app mode app ID to nil. allowed apps is %{public}@", buf, 0xCu);
    }
  }

  v30 = +[NSMutableDictionary dictionary];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v5;
  v11 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v11)
  {
    v13 = v11;
    v27 = kMCAppWhitelistIdentifierKey;
    v28 = *v36;
    v26 = kMCAppWhitelistOptionsKey;
    v14 = kMCAppWhitelistUserEnabledOptionsKey;
    *&v12 = 138543362;
    v24 = v12;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v36 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v35 + 1) + 8 * i);
        v17 = [v16 objectForKey:{v27, v24}];
        v18 = +[NSMutableDictionary dictionary];
        v19 = [v16 objectForKey:v26];
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_F87C;
        v33[3] = &unk_4D398;
        v33[4] = self;
        v20 = v18;
        v34 = v20;
        [v19 enumerateKeysAndObjectsUsingBlock:v33];

        [(GAXProfileManager *)self _applyWebTextDefineProperty:v29 properties:v20];
        v21 = [v16 objectForKey:v14];
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_F928;
        v31[3] = &unk_4D398;
        v31[4] = self;
        v32 = v20;
        v22 = v20;
        [v21 enumerateKeysAndObjectsUsingBlock:v31];

        v23 = GAXLogCommon();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = v24;
          v41 = v17;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "processed allowed app %{public}@", buf, 0xCu);
        }

        [v30 setObject:v22 forKey:v17];
      }

      v13 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v13);
  }

  [(GAXProfileManager *)self setSingleAppModeAppPropertiesMap:v30];
}

- (void)_handleSingleAppModeStateDidChange:(id)a3
{
  v4 = GAXLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Got MCProfileListChangedNotification. Waiting briefly for others.", buf, 2u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_FA98;
  block[3] = &unk_4C958;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)_guidedAccessProfileKeyForManagedConfigKey:(id)a3 shouldInvertValue:(BOOL *)a4
{
  v5 = a3;
  if ([v5 isEqualToString:kMCAppWhitelistOptionDisableTouchKey])
  {
    v6 = &GAXProfileAllowsTouch;
LABEL_13:
    v7 = *v6;
    *a4 = 1;
    goto LABEL_14;
  }

  if ([v5 isEqualToString:kMCAppWhitelistOptionDisableDeviceRotationKey])
  {
    v6 = &GAXProfileAllowsMotion;
    goto LABEL_13;
  }

  if ([v5 isEqualToString:kMCAppWhitelistOptionDisableVolumeButtonsKey])
  {
    v6 = &GAXProfileAllowsVolumeButtons;
    goto LABEL_13;
  }

  if ([v5 isEqualToString:kMCAppWhitelistOptionDisableRingerSwitchKey])
  {
    v6 = &GAXProfileAllowsRingerSwitch;
    goto LABEL_13;
  }

  if ([v5 isEqualToString:kMCAppWhitelistOptionDisableSleepWakeButtonKey])
  {
    v6 = &GAXProfileAllowsLockButton;
    goto LABEL_13;
  }

  if ([v5 isEqualToString:kMCAppWhitelistOptionDisableAutoLockKey])
  {
    v6 = &GAXProfileAllowsAutolock;
    goto LABEL_13;
  }

  if ([v5 isEqualToString:kMCAppWhitelistOptionEnableVoiceOverKey])
  {
    v9 = &GAXProfileAllowsAXAutoEnableVoiceOver;
LABEL_41:
    v7 = *v9;
    goto LABEL_14;
  }

  if ([v5 isEqualToString:kMCAppWhitelistOptionEnableZoomKey])
  {
    v9 = &GAXProfileAllowsAXAutoEnableZoom;
    goto LABEL_41;
  }

  if ([v5 isEqualToString:kMCAppWhitelistOptionEnableInvertColorsKey])
  {
    v9 = &GAXProfileAllowsAXAutoEnableInvertColors;
    goto LABEL_41;
  }

  if ([v5 isEqualToString:kMCAppWhitelistOptionEnableAssistiveTouchKey])
  {
    v9 = &GAXProfileAllowsAXAutoEnableAssistiveTouch;
    goto LABEL_41;
  }

  if ([v5 isEqualToString:kMCAppWhitelistOptionEnableSpeakSelectionKey])
  {
    v9 = &GAXProfileAllowsAXAutoEnableSpeakSelection;
    goto LABEL_41;
  }

  if ([v5 isEqualToString:kMCAppWhitelistOptionEnableMonoAudioKey])
  {
    v9 = &GAXProfileAllowsAXAutoEnableMonoAudio;
    goto LABEL_41;
  }

  if ([v5 isEqualToString:kMCAppWhitelistOptionEnableCommandAndControlKey])
  {
    v9 = &GAXProfileAllowsAXAutoEnableCommandAndControl;
    goto LABEL_41;
  }

  if ([v5 isEqualToString:kMCAppWhitelistUserEnabledOptionsVoiceOverKey])
  {
    v9 = &GAXProfileAllowsAXToggleVoiceOver;
    goto LABEL_41;
  }

  if ([v5 isEqualToString:kMCAppWhitelistUserEnabledOptionZoomKey])
  {
    v9 = &GAXProfileAllowsAXToggleZoom;
    goto LABEL_41;
  }

  if ([v5 isEqualToString:kMCAppWhitelistUserEnabledOptionInvertColorsKey])
  {
    v9 = &GAXProfileAllowsAXToggleInvertColors;
    goto LABEL_41;
  }

  if ([v5 isEqualToString:kMCAppWhitelistUserEnabledOptionAssistiveTouchKey])
  {
    v9 = &GAXProfileAllowsAXToggleAssistiveTouch;
    goto LABEL_41;
  }

  if ([v5 isEqualToString:kMCAppWhitelistUserEnabledOptionsCommandAndControlKey])
  {
    v9 = &GAXProfileAllowsAXToggleCommandAndControl;
    goto LABEL_41;
  }

  v10 = GAXLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_2AAD4(v5, v10, v11, v12, v13, v14, v15, v16);
  }

  v7 = 0;
LABEL_14:

  return v7;
}

- (void)applyUnmanagedSelfLockRestrictionsForStyle:(int64_t)a3 withUserInterfaceClient:(id)a4
{
  v15[0] = &__kCFBooleanTrue;
  v14[0] = @"restrictions enabled";
  v14[1] = @"autonomous single app mode style";
  v6 = a4;
  v7 = [NSNumber numberWithInteger:a3];
  v15[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];

  v9 = [(GAXProfileManager *)self unmanagedSelfLockManagedConfigurationSettings];

  if (v9)
  {
    v10 = [v8 mutableCopy];
    v11 = [(GAXProfileManager *)self unmanagedSelfLockManagedConfigurationSettings];
    [v10 setObject:v11 forKeyedSubscript:@"autonomous single app MC settings"];

    v8 = v10;
  }

  v12 = +[AXAccessQueue mainAccessQueue];
  [v6 sendAsynchronousMessage:v8 withIdentifier:36 targetAccessQueue:v12 completionRequiresWritingBlock:0 completion:0];

  v13 = [(GAXProfileManager *)self delegate];
  [v13 applyUnmanagedSelfLockStaticRestrictionsWithProfileManager:self];
}

- (void)removeUnmanagedSelfLockRestrictionsWithUserInterfaceClient:(id)a3
{
  v8 = @"restrictions enabled";
  v9 = &__kCFBooleanFalse;
  v4 = a3;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = +[AXAccessQueue mainAccessQueue];
  [v4 sendAsynchronousMessage:v5 withIdentifier:36 targetAccessQueue:v6 completionRequiresWritingBlock:0 completion:0];

  v7 = [(GAXProfileManager *)self delegate];
  [v7 removeUnmanagedSelfLockStaticRestrictionsWithProfileManager:self];
}

- ($DE71691BB3011260155645AE0E7AB3CC)profileAccessibilityFeatureSet
{
  if (_AXSVoiceOverTouchEnabled())
  {
    v3 = ![(GAXProfileManager *)self shouldDisableVoiceOver];
  }

  else
  {
    v3 = [(GAXProfileManager *)self shouldEnableVoiceOver];
  }

  if (_AXSZoomTouchEnabled())
  {
    v4 = ![(GAXProfileManager *)self shouldDisableZoom];
  }

  else
  {
    v4 = [(GAXProfileManager *)self shouldEnableZoom];
  }

  if (_AXSInvertColorsEnabled())
  {
    v5 = ![(GAXProfileManager *)self shouldDisableInvertColors];
  }

  else
  {
    v5 = [(GAXProfileManager *)self shouldEnableInvertColors];
  }

  if (_AXSGrayscaleEnabled())
  {
    v6 = ![(GAXProfileManager *)self shouldDisableGrayscale];
  }

  else
  {
    v6 = [(GAXProfileManager *)self shouldEnableGrayscale];
  }

  if (_AXSAssistiveTouchEnabled())
  {
    v7 = ![(GAXProfileManager *)self shouldDisableAssistiveTouch];
  }

  else
  {
    v7 = [(GAXProfileManager *)self shouldEnableAssistiveTouch];
  }

  if (_AXSQuickSpeakEnabled())
  {
    v8 = ![(GAXProfileManager *)self shouldDisableSpeakSelection];
  }

  else
  {
    v8 = [(GAXProfileManager *)self shouldEnableSpeakSelection];
  }

  if (_AXSMonoAudioEnabled())
  {
    v9 = ![(GAXProfileManager *)self shouldDisableMonoAudio];
  }

  else
  {
    v9 = [(GAXProfileManager *)self shouldEnableMonoAudio];
  }

  if (_AXSCommandAndControlEnabled())
  {
    v10 = ![(GAXProfileManager *)self shouldDisableCommandAndControl];
  }

  else
  {
    v10 = [(GAXProfileManager *)self shouldEnableCommandAndControl];
  }

  if (v9)
  {
    v11 = 128;
  }

  else
  {
    v11 = 0;
  }

  if (v4)
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12 | v3;
  if (v5)
  {
    v14 = 4;
  }

  else
  {
    v14 = 0;
  }

  if (v6)
  {
    v15 = 8;
  }

  else
  {
    v15 = 0;
  }

  v16 = v13 | v14 | v15;
  if (v7)
  {
    v17 = 16;
  }

  else
  {
    v17 = 0;
  }

  if (v8)
  {
    v18 = 64;
  }

  else
  {
    v18 = 0;
  }

  v19 = v17 | v18;
  if (v10)
  {
    v20 = 1024;
  }

  else
  {
    v20 = 0;
  }

  if ([(GAXProfileManager *)self shouldAllowToggleOfVoiceOver])
  {
    v21 = 2048;
  }

  else
  {
    v21 = 0;
  }

  if ([(GAXProfileManager *)self shouldAllowToggleOfInvertColors])
  {
    v22 = 0x2000;
  }

  else
  {
    v22 = 0;
  }

  if ([(GAXProfileManager *)self shouldAllowToggleOfZoom])
  {
    v23 = 4096;
  }

  else
  {
    v23 = 0;
  }

  if ([(GAXProfileManager *)self shouldAllowToggleOfAssistiveTouch])
  {
    v24 = 0x8000;
  }

  else
  {
    v24 = 0;
  }

  if ([(GAXProfileManager *)self shouldAllowToggleOfCommandAndControl])
  {
    v25 = 0x100000;
  }

  else
  {
    v25 = 0;
  }

  if ([(GAXProfileManager *)self shouldAllowToggleOfGrayscale])
  {
    v26 = 0x4000;
  }

  else
  {
    v26 = 0;
  }

  return (v16 | v19 | v11 | v20 | v21 | v22 | v23 | v24 | v25 | v26);
}

- (GAXProfileManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end