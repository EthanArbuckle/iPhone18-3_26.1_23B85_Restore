@interface AXTripleClickHelpers
+ (BOOL)_isAccessibilityAppIntentsProcess;
+ (BOOL)_localValueForAccessibilityShortcutOption:(int)option;
+ (BOOL)_npsValueForAccessibilityShortcutOption:(int)option;
+ (BOOL)_shouldShowFeatureInShortcutsControlCenterModule:(int)module includeGuidedAccess:(BOOL)access;
+ (BOOL)valueForAccessibilityShortcutOption:(int)option fromSource:(int64_t)source;
+ (id)_availableFeatures;
+ (id)_displayFilterUIClient;
+ (id)_npsKeyForTripleClickOption:(int)option;
+ (id)allTripleClickOptionsForPlatform:(int64_t)platform;
+ (id)domainAccessorForTripleClickOption:(int)option;
+ (id)localizationKeyForAccessibilityShortcutOption:(int)option;
+ (id)localizedTitleForAccessibilityShortcutOption:(int)option;
+ (id)symbolNameForAccessibilityShortcutOption:(int)option;
+ (id)tripleClickOptionsForAccessibilityShortcutControlCenterModuleIncludingGuidedAccess:(BOOL)access;
+ (int64_t)stateForAccessibilityShortcutOption:(int)option;
+ (void)_disableSwitchControlWithHandler:(id)handler;
+ (void)_handleToggleTripleClickTriggeredFromAppIntent:(int)intent;
+ (void)_localToggleAccessibilityShortcutOption:(int)option;
+ (void)_npsSyncTripleClickOption:(int)option;
+ (void)_npsToggleTripleClickOption:(int)option;
+ (void)_promptToDisableBrightnessFilters:(id)filters data:(id)data;
+ (void)_toggleAssistiveTouch;
+ (void)_toggleClassicInvertColors;
+ (void)_toggleLocalizationCaptionPanel;
+ (void)_toggleSmartInvertColorsOffMainThread;
+ (void)_toggleSwitchOverOffMainThread;
+ (void)_toggleVoiceOver;
+ (void)attemptToEnterClarityBoard;
+ (void)attemptToPresentNearbyDeviceControlPicker;
+ (void)attemptToToggleConversationBoost;
+ (void)attemptToToggleTwiceRemoteScreen;
+ (void)registerObserverForAccessibilityShortcutOption:(int)option;
+ (void)toggleAccessibilityShortcutOption:(int)option fromSource:(int64_t)source;
+ (void)toggleColorFilter;
+ (void)toggleFullKeyboardAccess;
+ (void)toggleGuidedAccess;
+ (void)toggleHearingControlCenter;
+ (void)toggleHoverText;
+ (void)toggleHoverTextTyping;
+ (void)toggleLiveSpeech;
+ (void)toggleOnDeviceEyeTracking;
+ (void)toggleReduceWhitePoint;
+ (void)toggleSpeakScreen;
+ (void)toggleZoomOffMainThread;
@end

@implementation AXTripleClickHelpers

+ (id)localizationKeyForAccessibilityShortcutOption:(int)option
{
  v3 = 0;
  switch(option)
  {
    case 1:
      v3 = @"ask.sheet.option.VoiceOver.on";
      break;
    case 2:
      v3 = @"ask.sheet.option.WhiteOnBlack.on";
      break;
    case 4:
      v3 = @"ask.sheet.option.Zoom.on";
      break;
    case 6:
      v3 = @"ask.sheet.option.AssistiveTouch.on";
      break;
    case 7:
      v3 = @"ask.sheet.option.GuidedAccess.on";
      break;
    case 8:
      v3 = @"ask.sheet.option.HearingAidControl.on";
      break;
    case 9:
      v3 = @"ask.sheet.option.SwitchOver.on";
      break;
    case 10:
      v6 = +[AXBackBoardServer server];
      supportsAccessibilityDisplayFilters = [v6 supportsAccessibilityDisplayFilters];

      if (supportsAccessibilityDisplayFilters)
      {
        v3 = @"ask.sheet.option.DisplayFiltersColor.on";
      }

      else
      {
        v3 = @"ask.sheet.option.grayscale.on";
      }

      break;
    case 11:
      v3 = @"ask.sheet.option.touch.accommodations";
      break;
    case 12:
      v3 = @"ask.sheet.option.magnifier.on";
      break;
    case 13:
      v3 = @"Loc Caption Panel";
      break;
    case 14:
      v3 = @"ask.sheet.option.reduce.white.point.on";
      break;
    case 15:
      v3 = @"ask.sheet.option.temporarily.undo.double.invert";
      break;
    case 16:
      v3 = @"AX Development Tools";
      break;
    case 17:
      v3 = @"ask.sheet.option.command.and.control.on";
      break;
    case 18:
      v3 = @"ask.sheet.option.full.keyboard.access.on";
      break;
    case 20:
      v3 = @"ask.sheet.option.reduce.transparency";
      break;
    case 21:
      v3 = @"ask.sheet.option.increase.contrast";
      break;
    case 22:
      v4 = _AXSVoiceOverTouchEnabled();
      v5 = @"ask.sheet.option.live.recognition";
      if (!v4)
      {
        v5 = @"ask.sheet.option.detection.mode";
      }

      v3 = v5;
      break;
    case 23:
      v3 = @"ask.sheet.option.watch.control.on";
      break;
    case 24:
      v3 = @"ask.sheet.option.reduce.motion";
      break;
    case 25:
      v3 = @"ask.sheet.option.background.sounds";
      break;
    case 26:
      v3 = @"ask.sheet.option.left.right.balance";
      break;
    case 27:
      v3 = @"ask.sheet.option.HoverText.on";
      break;
    case 28:
      v3 = @"ask.sheet.option.remote.screen";
      break;
    case 29:
      v3 = @"ask.sheet.option.live.transcription";
      break;
    case 30:
      v3 = @"ask.sheet.option.custom.accessibility.mode";
      break;
    case 31:
      v3 = @"ask.sheet.option.nearby.device.control";
      break;
    case 33:
      v3 = @"ask.sheet.option.live.speech";
      break;
    case 34:
      v3 = @"ask.sheet.option.speak.screen";
      break;
    case 35:
      v3 = @"ask.sheet.option.dim.flashing.lights";
      break;
    case 36:
      v3 = @"ask.sheet.option.motion.cues";
      break;
    case 38:
      v11 = 0;
      v12 = &v11;
      v13 = 0x2020000000;
      v8 = getAXUILocalizedStringForKeyWithTableSymbolLoc_ptr;
      v14 = getAXUILocalizedStringForKeyWithTableSymbolLoc_ptr;
      if (!getAXUILocalizedStringForKeyWithTableSymbolLoc_ptr)
      {
        v9 = AccessibilityUIUtilitiesLibrary();
        v12[3] = dlsym(v9, "AXUILocalizedStringForKeyWithTable");
        getAXUILocalizedStringForKeyWithTableSymbolLoc_ptr = v12[3];
        v8 = v12[3];
      }

      _Block_object_dispose(&v11, 8);
      if (!v8)
      {
        +[AXTripleClickHelpers localizationKeyForAccessibilityShortcutOption:];
      }

      v3 = v8(@"HAPTIC_MUSIC_TITLE", @"Accessibility-HapticMusic");
      break;
    case 39:
      v3 = @"ask.sheet.option.conversation.boost";
      break;
    case 40:
      v3 = @"ask.sheet.option.hovertext.typing";
      break;
    case 41:
      v3 = @"ask.sheet.option.minimum.brightness";
      break;
    case 42:
      v3 = @"ask.sheet.option.EyeTracking.on";
      break;
    case 44:
      v3 = @"ask.sheet.option.Accessibility.Reader";
      break;
    case 45:
      v3 = @"ask.sheet.option.end.guestpass.session";
      break;
    case 46:
      v3 = @"ask.sheet.option.name.recognition";
      break;
    default:
      break;
  }

  return v3;
}

+ (id)symbolNameForAccessibilityShortcutOption:(int)option
{
  if ((option - 1) > 0x2D)
  {
    return 0;
  }

  else
  {
    return off_1E71E9D20[option - 1];
  }
}

+ (id)localizedTitleForAccessibilityShortcutOption:(int)option
{
  v3 = *&option;
  if (!AXProcessIsBackboard())
  {
    v8 = 0;
    switch(v3)
    {
      case 1:
      case 2:
      case 4:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 14:
      case 15:
      case 17:
      case 18:
      case 20:
      case 21:
      case 23:
      case 24:
      case 25:
      case 26:
      case 27:
      case 29:
      case 30:
      case 31:
      case 33:
      case 34:
      case 35:
      case 36:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 44:
      case 45:
        v9 = [self localizationKeyForTripleClickOption:v3];
        goto LABEL_5;
      case 13:
        v8 = @"Loc Caption Panel";
        goto LABEL_7;
      case 16:
        v8 = @"AX Development Tools";
        goto LABEL_7;
      case 22:
        v17 = AXAssistiveTouchIconTypeDetectionMode;
        goto LABEL_15;
      case 28:
        v17 = AXAssistiveTouchIconTypeWatchRemoteScreen;
LABEL_15:
        v8 = soft_AXUIAssistiveTouchStringForName(*v17);
        goto LABEL_7;
      case 46:
        v9 = [self localizationKeyForAccessibilityShortcutOption:46];
LABEL_5:
        v6 = v9;
        v7 = AXParameterizedLocalizedString(1, v9, v10, v11, v12, v13, v14, v15, v18);
        goto LABEL_6;
      default:
        goto LABEL_7;
    }
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  v7 = [v5 stringWithFormat:@"%@", v6];
LABEL_6:
  v8 = v7;

LABEL_7:

  return v8;
}

+ (id)domainAccessorForTripleClickOption:(int)option
{
  v3 = MEMORY[0x1E69E4F30];
  if (option != 11)
  {
    v3 = MEMORY[0x1E69E4BB0];
  }

  v4 = *v3;
  mEMORY[0x1E69B36C0] = [MEMORY[0x1E69B36C0] sharedInstance];
  getActivePairedDevice = [mEMORY[0x1E69B36C0] getActivePairedDevice];

  v7 = [objc_alloc(MEMORY[0x1E69B3588]) initWithDomain:v4 pairedDevice:getActivePairedDevice];

  return v7;
}

+ (BOOL)valueForAccessibilityShortcutOption:(int)option fromSource:(int64_t)source
{
  switch(source)
  {
    case 3:
      return [self _localValueForAccessibilityShortcutOption:*&option];
    case 1:
      return [self _npsValueForAccessibilityShortcutOption:*&option];
    case 0:
      return [self _localValueForAccessibilityShortcutOption:*&option];
  }

  return 0;
}

+ (BOOL)_localValueForAccessibilityShortcutOption:(int)option
{
  comfortSoundsEnabled = 0;
  switch(option)
  {
    case 1:
      CategoryEnabled = _AXSVoiceOverTouchEnabled();
      goto LABEL_57;
    case 2:
      CategoryEnabled = _AXSInvertColorsEnabledGlobalCached();
      goto LABEL_57;
    case 4:

      return [self valueForZoomTripleClickOption];
    case 6:
      CategoryEnabled = _AXSAssistiveTouchEnabled();
      goto LABEL_57;
    case 7:
      if (_AXSGuidedAccessActiveCached_isTokenInitialized)
      {
        goto LABEL_60;
      }

      if (notify_register_check("com.apple.accessibility.guidedaccess.session.active", &_AXSGuidedAccessActiveCached_token))
      {
        if (_AXSGuidedAccessActiveCached_isTokenInitialized != 1)
        {
          goto LABEL_61;
        }
      }

      else
      {
        _AXSGuidedAccessActiveCached_isTokenInitialized = 1;
      }

LABEL_60:
      state64 = 0;
      state = notify_get_state(_AXSGuidedAccessActiveCached_token, &state64);
      comfortSoundsEnabled = state64 != 0;
      if (!state)
      {
        return comfortSoundsEnabled & 1;
      }

LABEL_61:
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - *&_AXSGuidedAccessActiveCached_lastFallbackTime >= 1.0)
      {
        _AXSGuidedAccessActiveCached_lastFallbackTime = *&Current;
        v23 = +[AXBackBoardServer server];
        _AXSGuidedAccessActiveCached_lastFallbackResult = [v23 isGuidedAccessActive];
      }

      comfortSoundsEnabled = _AXSGuidedAccessActiveCached_lastFallbackResult;
      return comfortSoundsEnabled & 1;
    case 9:
      CategoryEnabled = _AXSAssistiveTouchScannerEnabled();
      goto LABEL_57;
    case 10:
      v11 = +[AXBackBoardServer server];
      supportsAccessibilityDisplayFilters = [v11 supportsAccessibilityDisplayFilters];

      if (supportsAccessibilityDisplayFilters)
      {
        CategoryEnabled = MADisplayFilterPrefGetCategoryEnabled();
      }

      else
      {
        CategoryEnabled = _AXSGrayscaleEnabled();
      }

      goto LABEL_57;
    case 11:
      v8 = +[AXSettings sharedInstance];
      touchAccommodationsEnabled = [v8 touchAccommodationsEnabled];
      goto LABEL_38;
    case 13:
      v8 = +[AXSettings sharedInstance];
      touchAccommodationsEnabled = [v8 localizationQACaptionMode];
      goto LABEL_38;
    case 14:
      CategoryEnabled = _AXSReduceWhitePointEnabled();
      goto LABEL_57;
    case 15:
      v8 = +[AXSettings sharedInstance];
      touchAccommodationsEnabled = [v8 classicInvertColors];
      goto LABEL_38;
    case 17:
      CategoryEnabled = _AXSCommandAndControlEnabled();
      goto LABEL_57;
    case 18:
      CategoryEnabled = _AXSFullKeyboardAccessEnabled();
      goto LABEL_57;
    case 20:
      CategoryEnabled = _AXSEnhanceBackgroundContrastEnabledGlobal();
      goto LABEL_57;
    case 21:
      CategoryEnabled = _AXDarkenSystemColorsGlobal();
      goto LABEL_57;
    case 22:
      if (!_AXSVoiceOverTouchEnabled())
      {
        goto LABEL_55;
      }

      v8 = +[AXSettings sharedInstance];
      touchAccommodationsEnabled = [v8 liveRecognitionActive];
LABEL_38:
      v13 = touchAccommodationsEnabled;

      return v13;
    case 23:
      CategoryEnabled = _AXSWatchControlEnabled();
      goto LABEL_57;
    case 24:
      CategoryEnabled = _AXSReduceMotionEnabledGlobal();
      goto LABEL_57;
    case 25:
      v29 = 0;
      v30 = &v29;
      v31 = 0x2050000000;
      v5 = getHUComfortSoundsSettingsClass_softClass;
      v32 = getHUComfortSoundsSettingsClass_softClass;
      if (!getHUComfortSoundsSettingsClass_softClass)
      {
        state64 = MEMORY[0x1E69E9820];
        v25 = 3221225472;
        v26 = __getHUComfortSoundsSettingsClass_block_invoke;
        v27 = &unk_1E71E9A80;
        v28 = &v29;
        __getHUComfortSoundsSettingsClass_block_invoke(&state64);
        v5 = v30[3];
      }

      v6 = v5;
      _Block_object_dispose(&v29, 8);
      sharedInstance = [v5 sharedInstance];
      comfortSoundsEnabled = [sharedInstance comfortSoundsEnabled];
      goto LABEL_54;
    case 26:
      v8 = +[AXSettings sharedInstance];
      touchAccommodationsEnabled = [v8 leftRightBalanceEnabled];
      goto LABEL_38;
    case 27:
      CategoryEnabled = _AXSHoverTextEnabled();
      goto LABEL_57;
    case 28:
      if (_AXSTwiceRemoteScreenEnabled())
      {
        comfortSoundsEnabled = _AXSTwiceRemoteScreenPlatform() == 0;
      }

      else
      {
LABEL_55:
        comfortSoundsEnabled = 0;
      }

      return comfortSoundsEnabled & 1;
    case 29:
      CategoryEnabled = _AXSLiveTranscriptionEnabled();
      goto LABEL_57;
    case 33:
      CategoryEnabled = _AXSLiveSpeechEnabled();
      goto LABEL_57;
    case 35:
      CategoryEnabled = _AXSPhotosensitiveMitigationEnabled();
      goto LABEL_57;
    case 36:
      CategoryEnabled = _AXSMotionCuesActive();
      goto LABEL_57;
    case 38:
      CategoryEnabled = _AXSHapticMusicEnabled();
      goto LABEL_57;
    case 39:
      v29 = 0;
      v30 = &v29;
      v31 = 0x2020000000;
      v14 = getpaCurrentBluetoothDeviceSupportingTransparencyAccommodationsSymbolLoc_ptr;
      v32 = getpaCurrentBluetoothDeviceSupportingTransparencyAccommodationsSymbolLoc_ptr;
      if (!getpaCurrentBluetoothDeviceSupportingTransparencyAccommodationsSymbolLoc_ptr)
      {
        state64 = MEMORY[0x1E69E9820];
        v25 = 3221225472;
        v26 = __getpaCurrentBluetoothDeviceSupportingTransparencyAccommodationsSymbolLoc_block_invoke;
        v27 = &unk_1E71E9A80;
        v28 = &v29;
        v15 = PersonalAudioLibrary();
        v30[3] = dlsym(v15, "paCurrentBluetoothDeviceSupportingTransparencyAccommodations");
        getpaCurrentBluetoothDeviceSupportingTransparencyAccommodationsSymbolLoc_ptr = *(v28[1] + 24);
        v14 = v30[3];
      }

      _Block_object_dispose(&v29, 8);
      if (!v14)
      {
        +[AXTripleClickHelpers _localValueForAccessibilityShortcutOption:];
      }

      sharedInstance = v14();
      address = [sharedInstance address];
      if (![address length] || !soft_paCurrentRouteSupportsTransparencyAccommodations() || !soft_paBluetoothDeviceSupportsSSL(sharedInstance))
      {
        comfortSoundsEnabled = 0;
        goto LABEL_53;
      }

      sharedInstance2 = [getPASettingsClass() sharedInstance];
      if ([sharedInstance2 personalMediaEnabled])
      {
        listeningMode = [sharedInstance listeningMode];

        if (listeningMode == 3)
        {
          sharedInstance3 = [getPASettingsClass() sharedInstance];
          v20 = [sharedInstance3 transparencyCustomizedForAddress:address];
          goto LABEL_66;
        }
      }

      else
      {
      }

      sharedInstance3 = [getPASettingsClass() sharedInstance];
      v20 = [sharedInstance3 sslEnabledForAddress:address];
LABEL_66:
      comfortSoundsEnabled = v20;

LABEL_53:
LABEL_54:

      return comfortSoundsEnabled & 1;
    case 40:
      CategoryEnabled = _AXSHoverTextTypingEnabled();
      goto LABEL_57;
    case 41:
      CategoryEnabled = _AXSIncreaseBrightnessFloorEnabled();
      goto LABEL_57;
    case 42:
      CategoryEnabled = _AXSOnDeviceEyeTrackingEnabled();
LABEL_57:
      comfortSoundsEnabled = CategoryEnabled != 0;
      return comfortSoundsEnabled & 1;
    default:
      return comfortSoundsEnabled & 1;
  }
}

+ (int64_t)stateForAccessibilityShortcutOption:(int)option
{
  if (option <= 0x22 && ((1 << option) & 0x4C0401008) != 0)
  {
    return 0;
  }

  if ([self valueForAccessibilityShortcutOption:{v3, v4}])
  {
    return 1;
  }

  return 2;
}

+ (id)_npsKeyForTripleClickOption:(int)option
{
  v3 = 0;
  if (option > 19)
  {
    if (option > 25)
    {
      if (option == 26)
      {
        v4 = MEMORY[0x1E69E4DE8];
      }

      else
      {
        if (option != 33)
        {
          goto LABEL_21;
        }

        v4 = MEMORY[0x1E69E4E00];
      }
    }

    else if (option == 20)
    {
      v4 = MEMORY[0x1E69E4D08];
    }

    else
    {
      if (option != 24)
      {
        goto LABEL_21;
      }

      v4 = MEMORY[0x1E69E4EC0];
    }
  }

  else if (option > 9)
  {
    if (option == 10)
    {
      v3 = @"ColorFiltersEnabled";
      goto LABEL_21;
    }

    if (option != 11)
    {
      goto LABEL_21;
    }

    v4 = kAXSTouchAccommodationsEnabledPreference;
  }

  else if (option == 1)
  {
    v4 = MEMORY[0x1E69E4F88];
  }

  else
  {
    if (option != 4)
    {
      goto LABEL_21;
    }

    v4 = MEMORY[0x1E69E4FC0];
  }

  v3 = *v4;
LABEL_21:

  return v3;
}

+ (BOOL)_npsValueForAccessibilityShortcutOption:(int)option
{
  if (option == 23)
  {
    if (!WatchControlSettingsLibraryCore())
    {
      return 0;
    }

    sharedInstance = [getWatchControlSettingsClass() sharedInstance];
    featureEnabled = [sharedInstance featureEnabled];
  }

  else
  {
    v5 = *&option;
    sharedInstance = [self domainAccessorForTripleClickOption:?];
    v7 = [self _npsKeyForTripleClickOption:v5];
    domain = [sharedInstance domain];

    featureEnabled = 0;
    if (domain && v7)
    {
      synchronize = [sharedInstance synchronize];
      featureEnabled = [sharedInstance BOOLForKey:v7];
    }
  }

  return featureEnabled;
}

+ (void)_npsSyncTripleClickOption:(int)option
{
  v3 = *&option;
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = [self domainAccessorForTripleClickOption:?];
  v6 = [self _npsKeyForTripleClickOption:v3];
  domain = [v5 domain];

  if (domain && v6)
  {
    v8 = objc_opt_new();
    domain2 = [v5 domain];
    v10 = MEMORY[0x1E695DFD8];
    v13[0] = v6;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v12 = [v10 setWithArray:v11];
    [v8 synchronizeUserDefaultsDomain:domain2 keys:v12];
  }
}

+ (void)_toggleVoiceOver
{
  if (!_AXSVoiceOverTouchUsageConfirmed())
  {
    _AXSVoiceOverTouchSetUsageConfirmed();
  }

  v2 = _AXSVoiceOverTouchEnabled();
  if (!v2 && _AXSCanDisableApplicationAccessibility())
  {
    _AXSApplicationAccessibilitySetEnabled();
  }

  _AXSVoiceOverTouchSetEnabled();

  MEMORY[0x1EEE611A0](v2 == 0, v3);
}

+ (void)_promptToDisableBrightnessFilters:(id)filters data:(id)data
{
  filtersCopy = filters;
  dataCopy = data;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  _isAccessibilityAppIntentsProcess = [self _isAccessibilityAppIntentsProcess];
  v8 = +[AXSpringBoardServer server];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__AXTripleClickHelpers__promptToDisableBrightnessFilters_data___block_invoke;
  v10[3] = &unk_1E71E9AE8;
  v9 = filtersCopy;
  v11 = v9;
  v12 = &v13;
  [v8 showAlert:7 withHandler:v10 withData:dataCopy];

  while (*(v14 + 24) == 1)
  {
    CFRunLoopGetCurrent();
    CFRunLoopRunSpecific();
  }

  _Block_object_dispose(&v13, 8);
}

uint64_t __63__AXTripleClickHelpers__promptToDisableBrightnessFilters_data___block_invoke(uint64_t result, int a2)
{
  v2 = result;
  if (a2 == 1)
  {
    (*(*(result + 32) + 16))();
    result = _AXSScreenFilterSetShowInitialAlert();
  }

  *(*(*(v2 + 40) + 8) + 24) = 0;
  return result;
}

+ (id)_displayFilterUIClient
{
  if (_displayFilterUIClient_onceToken != -1)
  {
    +[AXTripleClickHelpers _displayFilterUIClient];
  }

  v3 = _displayFilterUIClient_DisplayFilterUIClient;

  return v3;
}

uint64_t __46__AXTripleClickHelpers__displayFilterUIClient__block_invoke()
{
  _displayFilterUIClient_DisplayFilterUIClient = [objc_alloc(getAXUIClientClass()) initWithIdentifier:@"HomeClickController" serviceBundleName:@"DisplayFilterUIServer"];

  return MEMORY[0x1EEE66BB8]();
}

+ (void)_toggleSmartInvertColorsOffMainThread
{
  v3 = _AXSInvertColorsEnabledGlobalCached();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__AXTripleClickHelpers__toggleSmartInvertColorsOffMainThread__block_invoke;
  v8[3] = &__block_descriptor_41_e5_v8__0l;
  v8[4] = self;
  v9 = v3 != 0;
  v4 = _Block_copy(v8);
  v4[2](v4, v5, v6, v7);
}

void __61__AXTripleClickHelpers__toggleSmartInvertColorsOffMainThread__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 classicInvertColors];

  if (v3)
  {
    v4 = +[AXSettings sharedInstance];
    [v4 setClassicInvertColors:0];
  }

  v5 = [MEMORY[0x1E69887D0] sharedInstance];
  v6 = [v5 ignoreLogging];

  if ((v6 & 1) == 0)
  {
    v7 = [MEMORY[0x1E69887D0] identifier];
    v8 = AXLoggerForFacility();

    v9 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = AXColorizeFormatLog();
      v11 = _AXStringForArgs();
      if (os_log_type_enabled(v8, v9))
      {
        *buf = 138543362;
        v17 = v11;
        _os_log_impl(&dword_18B15E000, v8, v9, "%{public}@", buf, 0xCu);
      }
    }
  }

  v12 = [*(a1 + 32) _displayFilterUIClient];
  v13 = [MEMORY[0x1E6988748] mainAccessQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__AXTripleClickHelpers__toggleSmartInvertColorsOffMainThread__block_invoke_536;
  v14[3] = &__block_descriptor_33_e34_v24__0__NSDictionary_8__NSError_16l;
  v15 = *(a1 + 40);
  [v12 sendAsynchronousMessage:MEMORY[0x1E695E0F8] withIdentifier:1 targetAccessQueue:v13 completion:v14];
}

uint64_t __61__AXTripleClickHelpers__toggleSmartInvertColorsOffMainThread__block_invoke_536(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [a2 objectForKeyedSubscript:@"animationDuration"];
  [v2 doubleValue];

  v3 = [MEMORY[0x1E69887D0] sharedInstance];
  v4 = [v3 ignoreLogging];

  if ((v4 & 1) == 0)
  {
    v5 = [MEMORY[0x1E69887D0] identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      v9 = _AXStringForArgs();
      if (os_log_type_enabled(v6, v7))
      {
        *buf = 138543362;
        v12 = v9;
        _os_log_impl(&dword_18B15E000, v6, v7, "%{public}@", buf, 0xCu);
      }
    }
  }

  return AXPerformBlockOnMainThreadAfterDelay();
}

void __61__AXTripleClickHelpers__toggleSmartInvertColorsOffMainThread__block_invoke_543(uint64_t a1)
{
  _AXSInvertColorsSetEnabled();
  if ((*(a1 + 32) & 1) == 0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v3 = +[AXSettings sharedInstance];
    [v3 setLastSmartInvertColorsEnablement:Current];
  }
}

+ (void)_toggleClassicInvertColors
{
  v4 = +[AXSettings sharedInstance];
  classicInvertColors = [v4 classicInvertColors];
  v3 = +[AXSettings sharedInstance];
  [v3 setClassicInvertColors:classicInvertColors ^ 1u];
}

+ (void)toggleColorFilter
{
  v2 = MADisplayFilterPrefGetCategoryEnabled() == 0;

  MEMORY[0x1EEDCCE98](1, v2);
}

+ (void)toggleZoomOffMainThread
{
  v4 = +[AXSettings sharedInstance];
  zoomEnabled = [v4 zoomEnabled];
  v3 = +[AXSettings sharedInstance];
  [v3 setZoomEnabled:zoomEnabled ^ 1u];
}

+ (void)toggleLiveSpeech
{
  if (_os_feature_enabled_impl())
  {
    _AXSLiveSpeechEnabled();

    _AXSLiveSpeechSetEnabled();
  }
}

+ (void)toggleHoverText
{
  v4 = +[AXSettings sharedInstance];
  hoverTextEnabled = [v4 hoverTextEnabled];
  v3 = +[AXSettings sharedInstance];
  [v3 setHoverTextEnabled:hoverTextEnabled ^ 1u];
}

+ (void)toggleHoverTextTyping
{
  v2 = _AXSHoverTextTypingEnabled() == 0;

  MEMORY[0x1EEE60C58](v2, v3);
}

+ (void)toggleSpeakScreen
{
  v2 = _AXSSpeakThisEnabled();
  _AXSSetSpeakThisEnabled();
  if (!v2)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2050000000;
    v3 = getSpeakThisServicesClass_softClass;
    v10 = getSpeakThisServicesClass_softClass;
    if (!getSpeakThisServicesClass_softClass)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __getSpeakThisServicesClass_block_invoke;
      v6[3] = &unk_1E71E9A80;
      v6[4] = &v7;
      __getSpeakThisServicesClass_block_invoke(v6);
      v3 = v8[3];
    }

    v4 = v3;
    _Block_object_dispose(&v7, 8);
    sharedInstance = [v3 sharedInstance];
    [sharedInstance speakThisWithOptions:12 errorHandler:0];
  }
}

+ (void)_disableSwitchControlWithHandler:(id)handler
{
  handlerCopy = handler;
  if (_AXSClarityBoardEnabled())
  {
    _AXSAssistiveTouchScannerSetEnabled();
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }

  else if ((_disableSwitchControlWithHandler___isDisableSwitchAlertVisible & 1) == 0)
  {
    _disableSwitchControlWithHandler___isDisableSwitchAlertVisible = 1;
    v4 = +[AXSpringBoardServer server];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __57__AXTripleClickHelpers__disableSwitchControlWithHandler___block_invoke;
    v5[3] = &unk_1E71E9B70;
    v6 = handlerCopy;
    [v4 showAlert:9 withHandler:v5];
  }
}

uint64_t __57__AXTripleClickHelpers__disableSwitchControlWithHandler___block_invoke(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    v2 = result;
    _AXSAssistiveTouchScannerSetEnabled();
    result = *(v2 + 32);
    if (result)
    {
      result = (*(result + 16))();
    }
  }

  _disableSwitchControlWithHandler___isDisableSwitchAlertVisible = 0;
  return result;
}

+ (void)_toggleAssistiveTouch
{
  v3 = _AXSAssistiveTouchScannerEnabled();
  v4 = _AXSAssistiveTouchEnabled();
  v5 = v4;
  if (!v3 || v4)
  {
    _AXSAssistiveTouchSetEnabled();
    if (!v5)
    {

      MEMORY[0x1EEE608B8](1, v6);
    }
  }

  else
  {

    [self _disableSwitchControlWithHandler:&__block_literal_global_550];
  }
}

uint64_t __45__AXTripleClickHelpers__toggleAssistiveTouch__block_invoke()
{
  _AXSAssistiveTouchSetEnabled();

  return MEMORY[0x1EEE608B8](1, v0);
}

+ (void)toggleReduceWhitePoint
{
  _AXSReduceWhitePointEnabled();

  _AXSSetReduceWhitePointEnabled();
}

+ (void)toggleGuidedAccess
{
  IsBackboard = AXProcessIsBackboard();
  v3 = +[AXBackBoardServer server];
  v7 = v3;
  if (IsBackboard)
  {
    [v3 toggleGuidedAccess];
  }

  else
  {
    guidedAccessEffectiveAppBundleIdentifier = [v3 guidedAccessEffectiveAppBundleIdentifier];

    v5 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__AXTripleClickHelpers_toggleGuidedAccess__block_invoke;
    block[3] = &unk_1E71E9B98;
    v9 = guidedAccessEffectiveAppBundleIdentifier;
    v6 = guidedAccessEffectiveAppBundleIdentifier;
    dispatch_async(v5, block);
  }
}

void __42__AXTripleClickHelpers_toggleGuidedAccess__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v2 openApplicationWithBundleID:*(a1 + 32)];

  v3 = dispatch_time(0, 2000000000);
  v4 = MEMORY[0x1E69E96A0];

  dispatch_after(v3, v4, &__block_literal_global_553);
}

void __42__AXTripleClickHelpers_toggleGuidedAccess__block_invoke_2()
{
  v0 = +[AXBackBoardServer server];
  [v0 toggleGuidedAccess];
}

+ (void)toggleFullKeyboardAccess
{
  v3 = _AXSFullKeyboardAccessEnabled();
  v4 = v3 != 0;
  if (v3)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    _isAccessibilityAppIntentsProcess = [self _isAccessibilityAppIntentsProcess];
    v5 = +[AXSpringBoardServer server];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __48__AXTripleClickHelpers_toggleFullKeyboardAccess__block_invoke;
    v6[3] = &unk_1E71E9BC0;
    v7 = v4;
    v6[4] = &v8;
    [v5 showAlert:18 withHandler:v6];

    while (*(v9 + 24) == 1)
    {
      CFRunLoopGetCurrent();
      CFRunLoopRunSpecific();
    }

    _Block_object_dispose(&v8, 8);
  }

  else
  {

    _AXSFullKeyboardAccessSetEnabled();
  }
}

uint64_t __48__AXTripleClickHelpers_toggleFullKeyboardAccess__block_invoke(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (!a2)
  {
    result = _AXSFullKeyboardAccessSetEnabled();
  }

  *(*(*(v2 + 32) + 8) + 24) = 0;
  return result;
}

+ (void)attemptToToggleTwiceRemoteScreen
{
  if (AXDeviceSupportsWatchRemoteScreen())
  {
    if (_AXSTwiceRemoteScreenEnabled())
    {
      v2 = _AXSTwiceRemoteScreenPlatform() != 0;
    }

    else
    {
      v2 = 1;
    }

    _AXSTwiceRemoteScreenSetPlatform();

    MEMORY[0x1EEE61070](v2);
  }

  else
  {
    v3 = AXLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      +[(AXTripleClickHelpers *)v3];
    }
  }
}

+ (void)attemptToEnterClarityBoard
{
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processIdentifier = [processInfo processIdentifier];

  v4 = MEMORY[0x1E696AEC0];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:processIdentifier];
  v9 = [v4 stringWithFormat:@"ClarityUIClientIdentifier-%@", v5];

  v6 = [objc_alloc(getAXUIClientClass()) initWithIdentifier:v9 serviceBundleName:@"ClarityUIServer"];
  v7 = AXTripleClickAttemptToEnterClarityBoardMessageIdentifier;
  mainAccessQueue = [MEMORY[0x1E6988748] mainAccessQueue];
  [v6 sendAsynchronousMessage:0 withIdentifier:v7 targetAccessQueue:mainAccessQueue completion:&__block_literal_global_562];
}

void __50__AXTripleClickHelpers_attemptToEnterClarityBoard__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = CLFLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __50__AXTripleClickHelpers_attemptToEnterClarityBoard__block_invoke_cold_1(v3, v4);
    }
  }
}

+ (void)attemptToPresentNearbyDeviceControlPicker
{
  v2 = +[AXSpringBoardServer server];
  [v2 presentNearbyDeviceControlPicker];
}

+ (void)toggleHearingControlCenter
{
  v2 = +[AXSpringBoardServer server];
  [v2 setHearingAidControlVisible:1];
}

+ (void)toggleOnDeviceEyeTracking
{
  v2 = _AXSOnDeviceEyeTrackingEnabled() == 0;
  v3 = +[AXSettings sharedInstance];
  [v3 setAssistiveTouchMouseOnDeviceEyeTrackingEnabled:v2];
}

+ (void)attemptToToggleConversationBoost
{
  v2 = +[AXSpringBoardServer server];
  [v2 toggleConversationBoost];
}

+ (void)toggleAccessibilityShortcutOption:(int)option fromSource:(int64_t)source
{
  switch(source)
  {
    case 3:
      [self _handleToggleTripleClickTriggeredFromAppIntent:*&option];
      break;
    case 1:
      [self _npsToggleTripleClickOption:*&option];
      break;
    case 0:
      [self _localToggleTripleClickOption:*&option];
      break;
  }
}

+ (void)_handleToggleTripleClickTriggeredFromAppIntent:(int)intent
{
  v3 = *&intent;
  if (intent == 36)
  {
    [self setMotionCuesShowBanner:0];
  }

  [self _localToggleTripleClickOption:v3];
}

+ (void)_localToggleAccessibilityShortcutOption:(int)option
{
  v3 = *&option;
  v35 = *MEMORY[0x1E69E9840];
  v5 = AXLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [self titleForTripleClickOption:v3];
    *buf = 138412290;
    v34 = v6;
    _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_DEFAULT, "Toggling option: %@", buf, 0xCu);
  }

  [self registerObserverForTripleClickOption:v3];
  switch(v3)
  {
    case 1:
      [self _toggleVoiceOver];
      goto LABEL_40;
    case 2:
      [self performSelectorInBackground:sel__toggleSmartInvertColorsOffMainThread withObject:0];
      goto LABEL_40;
    case 4:
      [self toggleZoomOffMainThread];
      goto LABEL_40;
    case 6:
      [self _toggleAssistiveTouch];
      goto LABEL_40;
    case 7:
      if (_AXSGuidedAccessEnabled())
      {
        [self toggleGuidedAccess];
      }

      goto LABEL_40;
    case 8:
      [self toggleHearingControlCenter];
      goto LABEL_40;
    case 9:
      [self _toggleSwitchOver];
      goto LABEL_40;
    case 10:
      v19 = +[AXBackBoardServer server];
      supportsAccessibilityDisplayFilters = [v19 supportsAccessibilityDisplayFilters];

      if (supportsAccessibilityDisplayFilters)
      {
        [self toggleColorFilter];
      }

      else
      {
        _AXSGrayscaleEnabled();
        _AXSGrayscaleSetEnabled();
      }

      goto LABEL_40;
    case 11:
      sharedInstance = +[AXSettings sharedInstance];
      touchAccommodationsEnabled = [sharedInstance touchAccommodationsEnabled];
      v9 = +[AXSettings sharedInstance];
      [v9 setTouchAccommodationsEnabled:touchAccommodationsEnabled ^ 1u];
      goto LABEL_38;
    case 12:
      sharedInstance = [getAXPISystemActionHelperClass() sharedInstance];
      [sharedInstance startMagnifier];
      goto LABEL_39;
    case 13:
      [self _toggleLocalizationCaptionPanel];
      goto LABEL_40;
    case 14:
      [self toggleReduceWhitePoint];
      goto LABEL_40;
    case 15:
      [self _toggleClassicInvertColors];
      goto LABEL_40;
    case 17:
      _AXSCommandAndControlEnabled();
      _AXSCommandAndControlSetEnabled();
      goto LABEL_40;
    case 18:
      [self toggleFullKeyboardAccess];
      goto LABEL_40;
    case 20:
      sharedInstance = +[AXSettings sharedInstance];
      enhanceBackgroundContrastEnabled = [sharedInstance enhanceBackgroundContrastEnabled];
      v9 = +[AXSettings sharedInstance];
      [v9 setEnhanceBackgroundContrastEnabled:enhanceBackgroundContrastEnabled ^ 1u];
      goto LABEL_38;
    case 21:
      _AXDarkenSystemColorsGlobal();
      _AXSSetDarkenSystemColors();
      goto LABEL_40;
    case 22:
      if (_AXSVoiceOverTouchEnabled())
      {
        v25 = +[AXSettings sharedInstance];
        liveRecognitionActive = [v25 liveRecognitionActive];

        v27 = +[AXVoiceOverServer server];
        sharedInstance = v27;
        if (liveRecognitionActive)
        {
          v28 = 51;
        }

        else
        {
          v28 = 50;
        }

        [v27 triggerCommand:v28];
      }

      else
      {
        sharedInstance = [getAXPISystemActionHelperClass() sharedInstance];
        [sharedInstance activateDetectionMode];
      }

      goto LABEL_39;
    case 23:
      [self _toggleWatchControl];
      goto LABEL_40;
    case 24:
      sharedInstance = +[AXSettings sharedInstance];
      reduceMotionEnabled = [sharedInstance reduceMotionEnabled];
      v9 = +[AXSettings sharedInstance];
      [v9 setReduceMotionEnabled:reduceMotionEnabled ^ 1u];
      goto LABEL_38;
    case 25:
      sharedInstance = +[AXSystemAppServer server];
      [sharedInstance toggleBackgroundSounds];
      goto LABEL_39;
    case 26:
      sharedInstance = +[AXSettings sharedInstance];
      leftRightBalanceEnabled = [sharedInstance leftRightBalanceEnabled];
      v9 = +[AXSettings sharedInstance];
      [v9 setLeftRightBalanceEnabled:leftRightBalanceEnabled ^ 1u];
      goto LABEL_38;
    case 27:
      [self toggleHoverText];
      goto LABEL_40;
    case 28:
      [self attemptToToggleTwiceRemoteScreen];
      goto LABEL_40;
    case 29:
      if (!_AXSLiveTranscriptionEnabled())
      {
        v17 = +[AXSettings sharedInstance];
        [v17 clearLiveCaptionsPipState];
      }

      if (_AXSClarityBoardEnabled())
      {
        _AXSLiveTranscriptionSetEnabled();
      }

      else
      {
        sharedInstance = +[AXSpringBoardServer server];
        [sharedInstance toggleLiveTranscription];
LABEL_39:
      }

LABEL_40:
      AXPerformBlockAsynchronouslyOnMainThread();
      return;
    case 30:
      [self attemptToEnterClarityBoard];
      goto LABEL_40;
    case 31:
      [self attemptToPresentNearbyDeviceControlPicker];
      goto LABEL_40;
    case 33:
      [self toggleLiveSpeech];
      goto LABEL_40;
    case 34:
      [self toggleSpeakScreen];
      goto LABEL_40;
    case 35:
      _AXSPhotosensitiveMitigationEnabled();
      _AXSPhotosensitiveMitigationSetEnabled();
      goto LABEL_40;
    case 36:
      v21 = _AXSMotionCuesActive();
      v22 = AXLogMotionCues();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v34) = v21 == 0;
        _os_log_impl(&dword_18B15E000, v22, OS_LOG_TYPE_DEFAULT, "Triple click: active=%{BOOL}d", buf, 8u);
      }

      v31[0] = @"enable";
      v23 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v21 == 0];
      v31[1] = @"reason";
      v32[0] = v23;
      v32[1] = &unk_1EFE95CC8;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];

      AnalyticsSendEvent();
      _AXSSetMotionCuesModeAndShowBanner();
      [self setMotionCuesShowBanner:1];

      goto LABEL_40;
    case 38:
      v13 = AXLogHapticMusic();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [MEMORY[0x1E696AD98] numberWithInt:_AXSHapticMusicEnabled() == 0];
        *buf = 138412290;
        v34 = v14;
        _os_log_impl(&dword_18B15E000, v13, OS_LOG_TYPE_DEFAULT, "Turning on haptic music from TC (new value: %@)", buf, 0xCu);
      }

      _AXSHapticMusicEnabled();
      _AXSSetHapticMusicEnabled();
      if (!_AXSHapticMusicEnabled())
      {
        goto LABEL_40;
      }

      v15 = +[AXSettings sharedInstance];
      hapticMusicActive = [v15 hapticMusicActive];

      if (hapticMusicActive)
      {
        goto LABEL_40;
      }

      sharedInstance = +[AXSettings sharedInstance];
      [sharedInstance setHapticMusicActive:1];
      goto LABEL_39;
    case 39:
      [self attemptToToggleConversationBoost];
      goto LABEL_40;
    case 40:
      [self toggleHoverTextTyping];
      goto LABEL_40;
    case 42:
      [self toggleOnDeviceEyeTracking];
      goto LABEL_40;
    case 45:
      v29 = +[AXSettings sharedInstance];
      guestPassSessionIsActive = [v29 guestPassSessionIsActive];

      if (!guestPassSessionIsActive)
      {
        goto LABEL_40;
      }

      sharedInstance = AXGuestPassManager_Soft();
      [sharedInstance endGuestPassSessionWithCompletionBlock:&__block_literal_global_569];
      goto LABEL_39;
    case 46:
      sharedInstance = +[AXSettings sharedInstance];
      isNameRecognitionEnabled = [sharedInstance isNameRecognitionEnabled];
      v9 = +[AXSettings sharedInstance];
      [v9 setNameRecognitionEnabled:isNameRecognitionEnabled ^ 1u];
LABEL_38:

      goto LABEL_39;
    default:
      goto LABEL_40;
  }
}

void __64__AXTripleClickHelpers__localToggleAccessibilityShortcutOption___block_invoke(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AXLogGuestPass();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 localizedDescription];
    v7[0] = 67109378;
    v7[1] = a2;
    v8 = 2112;
    v9 = v6;
    _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_INFO, "Ended guest pass from triple click menu. Success: %d, error: %@", v7, 0x12u);
  }
}

void __64__AXTripleClickHelpers__localToggleAccessibilityShortcutOption___block_invoke_570(uint64_t a1)
{
  v2 = [*(a1 + 32) tripleClickOptionDidChangeNotification];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 40)];
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, v2, v3, 0, 1u);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v2, 0, 0, 1u);
}

+ (void)_toggleSwitchOverOffMainThread
{
  if (!_AXSAssistiveTouchScannerEnabled() || (SwitchControlRendersDeviceUnusable & 1) != 0 || SwitchControlHasScreenSwitch == 1)
  {

    _AXSAssistiveTouchScannerSetEnabled();
  }

  else
  {

    [self _disableSwitchControlWithHandler:0];
  }
}

+ (void)_toggleLocalizationCaptionPanel
{
  v4 = +[AXSettings sharedInstance];
  localizationQACaptionMode = [v4 localizationQACaptionMode];
  v3 = +[AXSettings sharedInstance];
  [v3 setLocalizationQACaptionMode:localizationQACaptionMode ^ 1u];
}

+ (void)registerObserverForAccessibilityShortcutOption:(int)option
{
  v70[1] = *MEMORY[0x1E69E9840];
  v4 = AXLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18B15E000, v4, OS_LOG_TYPE_DEFAULT, "Should register observer(s) for triple click option", buf, 2u);
  }

  if (!RegisteredTripleClickObservers)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v6 = RegisteredTripleClickObservers;
    RegisteredTripleClickObservers = v5;
  }

  if (!RegisteredTripleClickSelectors)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v8 = RegisteredTripleClickSelectors;
    RegisteredTripleClickSelectors = v7;
  }

  v9 = 0;
  v10 = 0;
  switch(option)
  {
    case 1:
    case 5:
      v70[0] = *MEMORY[0x1E69E4F80];
      v11 = MEMORY[0x1E695DEC8];
      v12 = v70;
      goto LABEL_31;
    case 2:
      v69 = *MEMORY[0x1E69E4DD8];
      v11 = MEMORY[0x1E695DEC8];
      v12 = &v69;
      goto LABEL_31;
    case 4:
      v64 = *MEMORY[0x1E69E4FB8];
      v11 = MEMORY[0x1E695DEC8];
      v12 = &v64;
      goto LABEL_31;
    case 6:
      v63 = *MEMORY[0x1E69E4C60];
      v11 = MEMORY[0x1E695DEC8];
      v12 = &v63;
      goto LABEL_31;
    case 9:
      v62 = *MEMORY[0x1E69E4C60];
      v11 = MEMORY[0x1E695DEC8];
      v12 = &v62;
      goto LABEL_31;
    case 10:
      v14 = *MEMORY[0x1E69E4D58];
      v67[0] = *MEMORY[0x1E69E4EA0];
      v67[1] = v14;
      v15 = *MEMORY[0x1E69E4F28];
      v67[2] = *MEMORY[0x1E69E4CA8];
      v67[3] = v15;
      v67[4] = *MEMORY[0x1E69E4D50];
      v11 = MEMORY[0x1E695DEC8];
      v12 = v67;
      v16 = 5;
      goto LABEL_32;
    case 14:
      v68 = *MEMORY[0x1E69E4ED0];
      v11 = MEMORY[0x1E695DEC8];
      v12 = &v68;
      goto LABEL_31;
    case 15:
      v61 = *MEMORY[0x1E69E4CC0];
      v11 = MEMORY[0x1E695DEC8];
      v12 = &v61;
      goto LABEL_31;
    case 17:
      v57 = *MEMORY[0x1E69E4CD8];
      v11 = MEMORY[0x1E695DEC8];
      v12 = &v57;
      goto LABEL_31;
    case 18:
      v56 = *MEMORY[0x1E69E4D28];
      v11 = MEMORY[0x1E695DEC8];
      v12 = &v56;
      goto LABEL_31;
    case 20:
      v59 = *MEMORY[0x1E69E4D00];
      v11 = MEMORY[0x1E695DEC8];
      v12 = &v59;
      goto LABEL_31;
    case 21:
      v60 = *MEMORY[0x1E69E4CE0];
      v11 = MEMORY[0x1E695DEC8];
      v12 = &v60;
      goto LABEL_31;
    case 24:
      v58 = *MEMORY[0x1E69E4EB8];
      v11 = MEMORY[0x1E695DEC8];
      v12 = &v58;
      goto LABEL_31;
    case 27:
      v66 = *MEMORY[0x1E69E4DB0];
      v11 = MEMORY[0x1E695DEC8];
      v12 = &v66;
      goto LABEL_31;
    case 29:
      v55 = *MEMORY[0x1E69E4E08];
      v11 = MEMORY[0x1E695DEC8];
      v12 = &v55;
      goto LABEL_31;
    case 33:
      v65 = *MEMORY[0x1E69E4DF8];
      v11 = MEMORY[0x1E695DEC8];
      v12 = &v65;
      goto LABEL_31;
    case 34:
      v50 = *MEMORY[0x1E69E4EF8];
      v11 = MEMORY[0x1E695DEC8];
      v12 = &v50;
      goto LABEL_31;
    case 35:
      v51 = *MEMORY[0x1E69E4E40];
      v11 = MEMORY[0x1E695DEC8];
      v12 = &v51;
      goto LABEL_31;
    case 36:
      v54 = *MEMORY[0x1E69E4E28];
      v11 = MEMORY[0x1E695DEC8];
      v12 = &v54;
      goto LABEL_31;
    case 38:
      v53 = *MEMORY[0x1E69E4D80];
      v11 = MEMORY[0x1E695DEC8];
      v12 = &v53;
      goto LABEL_31;
    case 40:
      v52 = *MEMORY[0x1E69E4DC0];
      v11 = MEMORY[0x1E695DEC8];
      v12 = &v52;
      goto LABEL_31;
    case 42:
      v49 = *MEMORY[0x1E69E4E30];
      v11 = MEMORY[0x1E695DEC8];
      v12 = &v49;
LABEL_31:
      v16 = 1;
LABEL_32:
      v10 = [v11 arrayWithObjects:v12 count:v16];
      v9 = 0;
      break;
    case 46:
      v13 = [MEMORY[0x1E696B098] valueWithPointer:sel_isNameRecognitionEnabled];
      v48 = v13;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];

      v10 = 0;
      break;
    default:
      break;
  }

  v33 = v9;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v17 = v10;
  v18 = [v17 countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v41;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v41 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v40 + 1) + 8 * i);
        if (([RegisteredTripleClickObservers containsObject:v22] & 1) == 0)
        {
          v23 = AXLogCommon();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v46 = v22;
            _os_log_impl(&dword_18B15E000, v23, OS_LOG_TYPE_DEFAULT, "Registering triple click notification observer for %@", buf, 0xCu);
          }

          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _handleTripleClickPrefNotificationChanged, v22, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
          [RegisteredTripleClickObservers addObject:v22];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v19);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v25 = v33;
  v26 = [v25 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v37;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v37 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v36 + 1) + 8 * j);
        if (([RegisteredTripleClickSelectors containsObject:v30] & 1) == 0)
        {
          pointerValue = [v30 pointerValue];
          v32 = +[AXSettings sharedInstance];
          v35[0] = MEMORY[0x1E69E9820];
          v35[1] = 3221225472;
          v35[2] = __71__AXTripleClickHelpers_registerObserverForAccessibilityShortcutOption___block_invoke;
          v35[3] = &__block_descriptor_40_e5_v8__0l;
          v35[4] = pointerValue;
          [v32 registerUpdateBlock:v35 forRetrieveSelector:pointerValue withListener:self];

          [RegisteredTripleClickSelectors addObject:v30];
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v27);
  }
}

void __71__AXTripleClickHelpers_registerObserverForAccessibilityShortcutOption___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = AXLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 32));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_18B15E000, v2, OS_LOG_TYPE_DEFAULT, "Handling triple click for selector: %@", &v5, 0xCu);
  }

  v4 = [MEMORY[0x1E6994278] sharedInstance];
  [v4 reloadControlsForExtension:@"com.apple.AccessibilityUIServer.AccessibilityControlsExtension" kind:0 reason:@"AX shortcut preference changed"];
}

+ (void)_npsToggleTripleClickOption:(int)option
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (option == 23)
  {
    if (WatchControlSettingsLibraryCore())
    {
      sharedInstance = [getWatchControlSettingsClass() sharedInstance];
      featureEnabled = [sharedInstance featureEnabled];

      sharedInstance2 = [getWatchControlSettingsClass() sharedInstance];
      [sharedInstance2 setFeatureEnabled:featureEnabled ^ 1u];
    }
  }

  else
  {
    v5 = *&option;
    v7 = [self domainAccessorForTripleClickOption:?];
    v8 = [self _npsKeyForTripleClickOption:v5];
    domain = [v7 domain];

    if (domain && v8)
    {
      v10 = [v7 BOOLForKey:v8];
      if ([v8 isEqualToString:*MEMORY[0x1E69E4DE8]])
      {
        _AXSLeftRightAudioBalance();
        [v7 setFloat:v8 forKey:?];
      }

      else
      {
        [v7 setBool:v10 ^ 1u forKey:v8];
      }

      synchronize = [v7 synchronize];
      v12 = objc_opt_new();
      domain2 = [v7 domain];
      v14 = MEMORY[0x1E695DFD8];
      v18[0] = v8;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      v16 = [v14 setWithArray:v15];
      [v12 synchronizeUserDefaultsDomain:domain2 keys:v16];
    }
  }
}

+ (id)allTripleClickOptionsForPlatform:(int64_t)platform
{
  if (platform == 2)
  {
    [self _allAvailableFeaturesWatchOS];
  }

  else
  {
    [self _allAvailableFeaturesIOS];
  }
  v3 = ;

  return v3;
}

+ (id)_availableFeatures
{
  v2 = _AXSTripleClickCopyOptions();

  return v2;
}

+ (BOOL)_shouldShowFeatureInShortcutsControlCenterModule:(int)module includeGuidedAccess:(BOOL)access
{
  if (module > 32)
  {
    if (module != 44 && module != 34)
    {
      return 1;
    }
  }

  else
  {
    if (module == 7)
    {
      return access;
    }

    if (module == 8)
    {
      return 0;
    }

    if (module != 30)
    {
      return 1;
    }
  }

  return !_AXSClarityBoardEnabled();
}

+ (id)tripleClickOptionsForAccessibilityShortcutControlCenterModuleIncludingGuidedAccess:(BOOL)access
{
  _availableFeatures = [self _availableFeatures];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __107__AXTripleClickHelpers_tripleClickOptionsForAccessibilityShortcutControlCenterModuleIncludingGuidedAccess___block_invoke;
  v8[3] = &__block_descriptor_41_e21_B24__0__NSNumber_8Q16l;
  v8[4] = self;
  accessCopy = access;
  v6 = [_availableFeatures axFilterObjectsUsingBlock:v8];

  return v6;
}

uint64_t __107__AXTripleClickHelpers_tripleClickOptionsForAccessibilityShortcutControlCenterModuleIncludingGuidedAccess___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 intValue];
  v4 = [*(a1 + 32) _shouldShowFeatureInShortcutsControlCenterModule:v3 includeGuidedAccess:*(a1 + 40)];
  v5 = [AXTripleClickHelpers titleForTripleClickOption:v3];
  v6 = [v5 length];

  if (v6)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

+ (BOOL)_isAccessibilityAppIntentsProcess
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v4 = [bundleIdentifier isEqualToString:@"com.apple.AccessibilityUIServer.AccessibilityAppIntents"];

  return v4;
}

+ (void)localizationKeyForAccessibilityShortcutOption:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString *soft_AXUILocalizedStringForKeyWithTable(NSString *__strong, NSString *__strong)"}];
  [v0 handleFailureInFunction:v1 file:@"AXTripleClickHelpers.m" lineNumber:42 description:{@"%s", dlerror()}];

  __break(1u);
}

+ (void)_localValueForAccessibilityShortcutOption:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BluetoothDevice *soft_paCurrentBluetoothDeviceSupportingTransparencyAccommodations(void)"];
  [v0 handleFailureInFunction:v1 file:@"AXTripleClickHelpers.m" lineNumber:86 description:{@"%s", dlerror()}];

  __break(1u);
}

void __50__AXTripleClickHelpers_attemptToEnterClarityBoard__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_18B15E000, a2, OS_LOG_TYPE_ERROR, "Error attempting to enter ClarityBoard: %@", &v2, 0xCu);
}

@end