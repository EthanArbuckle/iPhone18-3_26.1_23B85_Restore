@interface AXCapabilityManager
+ (id)sharedManager;
- (BOOL)isAccessibilityCapability:(id)capability;
- (BOOL)isCapabilityAvailable:(id)available;
- (id)capabilities;
@end

@implementation AXCapabilityManager

+ (id)sharedManager
{
  if (sharedManager_onceToken_0 != -1)
  {
    +[AXCapabilityManager sharedManager];
  }

  v3 = sharedManager_SharedManager_0;

  return v3;
}

uint64_t __36__AXCapabilityManager_sharedManager__block_invoke()
{
  sharedManager_SharedManager_0 = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)isAccessibilityCapability:(id)capability
{
  capabilityCopy = capability;
  capabilities = [(AXCapabilityManager *)self capabilities];
  v6 = [capabilities objectForKey:capabilityCopy];

  return v6 != 0;
}

- (id)capabilities
{
  if (capabilities_onceToken != -1)
  {
    [AXCapabilityManager capabilities];
  }

  v3 = capabilities_Available;

  return v3;
}

void __35__AXCapabilityManager_capabilities__block_invoke()
{
  v3[111] = *MEMORY[0x1E69E9840];
  v2[0] = @"AXHapticMusic";
  v2[1] = @"VoiceOverRecognition";
  v3[0] = &__block_literal_global_288;
  v3[1] = &__block_literal_global_293;
  v2[2] = @"LiveTranscription";
  v2[3] = @"LiveTranscriptionInFaceTime";
  v3[2] = &__block_literal_global_299;
  v3[3] = &__block_literal_global_304;
  v2[4] = @"AXLiveCaptionsLanguageExpansion";
  v2[5] = @"AXMotionCues";
  v3[4] = &__block_literal_global_309;
  v3[5] = &__block_literal_global_314;
  v2[6] = @"TapTouchToWake";
  v2[7] = @"TapToWake";
  v3[6] = &__block_literal_global_319;
  v3[7] = &__block_literal_global_327;
  v2[8] = @"AXSideButton";
  v2[9] = @"AXTopButton";
  v3[8] = &__block_literal_global_335;
  v3[9] = &__block_literal_global_340;
  v2[10] = @"AXHomeButton";
  v2[11] = @"AXTopTouchIDButton";
  v3[10] = &__block_literal_global_345;
  v3[11] = &__block_literal_global_350;
  v2[12] = @"HoverText";
  v2[13] = @"HoverTextOptions";
  v3[12] = &__block_literal_global_355_0;
  v3[13] = &__block_literal_global_360;
  v2[14] = @"HoverTextTyping";
  v2[15] = @"AXReduceTransparency";
  v3[14] = &__block_literal_global_365;
  v3[15] = &__block_literal_global_370;
  v2[16] = @"AXSiri";
  v2[17] = @"AXTypeToSiri";
  v3[16] = &__block_literal_global_375;
  v3[17] = &__block_literal_global_382;
  v2[18] = @"AXWatchRemoteScreen";
  v2[19] = @"AXStartupSound";
  v3[18] = &__block_literal_global_387;
  v3[19] = &__block_literal_global_392;
  v2[20] = @"AXHeadphoneNotifications";
  v2[21] = @"AXTTYRTTCapability";
  v3[20] = &__block_literal_global_397_0;
  v3[21] = &__block_literal_global_402;
  v2[22] = @"AXRTT_TTYTextingTypeCapability";
  v2[23] = @"AXRTTTextingTypeCapability";
  v3[22] = &__block_literal_global_407;
  v3[23] = &__block_literal_global_412;
  v2[24] = @"AXTTYTextingTypeCapability";
  v2[25] = @"NearbyControlCapability";
  v3[24] = &__block_literal_global_417;
  v3[25] = &__block_literal_global_422;
  v2[26] = @"AXCameraFlashCapability";
  v2[27] = @"AXProximitySensor";
  v3[26] = &__block_literal_global_427;
  v3[27] = &__block_literal_global_435;
  v2[28] = @"GuidedAccessEnabled";
  v2[29] = @"KeyRepeatEnabled";
  v3[28] = &__block_literal_global_443;
  v3[29] = &__block_literal_global_448;
  v2[30] = @"LimitFrameRate";
  v2[31] = @"Vibration";
  v3[30] = &__block_literal_global_453;
  v3[31] = &__block_literal_global_461;
  v2[32] = @"Reachability";
  v2[33] = @"SpeakScreenEnabled";
  v3[32] = &__block_literal_global_466;
  v3[33] = &__block_literal_global_471;
  v2[34] = @"SpeakSelectionEnabled";
  v2[35] = @"HighlightContentEnabled";
  v3[34] = &__block_literal_global_476;
  v3[35] = &__block_literal_global_481;
  v2[36] = @"ExtendedVoiceIsolation";
  v2[37] = @"MixToUplink";
  v3[36] = &__block_literal_global_486;
  v3[37] = &__block_literal_global_493;
  v2[38] = @"PSECapability";
  v2[39] = @"AXForceTouch";
  v3[38] = &__block_literal_global_499;
  v3[39] = &__block_literal_global_504;
  v2[40] = @"AXNoForceTouch";
  v2[41] = @"AXAdaptiveVoiceShortcuts";
  v3[40] = &__block_literal_global_509;
  v3[41] = &__block_literal_global_514;
  v2[42] = @"PulseWidthMaximization";
  v2[43] = @"AXOnDeviceEyeTracking";
  v3[42] = &__block_literal_global_519;
  v3[43] = &__block_literal_global_524;
  v2[44] = @"AXNameRecognition";
  v2[45] = @"AXDoesNotSupportNameRecognition";
  v3[44] = &__block_literal_global_529;
  v3[45] = &__block_literal_global_534;
  v2[46] = @"AXLiveSpeech";
  v2[47] = @"BackTap";
  v3[46] = &__block_literal_global_539;
  v3[47] = &__block_literal_global_544;
  v2[48] = @"AXLiveSpeechCategories";
  v2[49] = @"AXLiveSpeechCategory";
  v3[48] = &__block_literal_global_549;
  v3[49] = &__block_literal_global_554;
  v2[50] = @"AXOnboardingVoiceOver";
  v2[51] = @"AXReader";
  v3[50] = &__block_literal_global_559;
  v3[51] = &__block_literal_global_564;
  v2[52] = @"AXTadmor";
  v2[53] = @"ConfirmWith";
  v3[52] = &__block_literal_global_569_0;
  v3[53] = &__block_literal_global_574;
  v2[54] = @"AXHaptics";
  v2[55] = @"AXNoHaptics";
  v3[54] = &__block_literal_global_579;
  v3[55] = &__block_literal_global_584;
  v2[56] = @"AXVoiceBanking";
  v2[57] = @"AXIndependentDwellControl";
  v3[56] = &__block_literal_global_589;
  v3[57] = &__block_literal_global_594;
  v2[58] = @"AXPointerControlIncreaseContrast";
  v2[59] = @"AXPointerControlAutoHide";
  v3[58] = &__block_literal_global_599;
  v3[59] = &__block_literal_global_604;
  v2[60] = @"AXPointerControlColor";
  v2[61] = @"AXPointerControlSize";
  v3[60] = &__block_literal_global_609;
  v3[61] = &__block_literal_global_614;
  v2[62] = @"AXUpwardsHUDControlPosition";
  v2[63] = @"AXUpwardsHUDToggle";
  v3[62] = &__block_literal_global_619;
  v3[63] = &__block_literal_global_624;
  v2[64] = @"AXAutoBrightness";
  v3[64] = &__block_literal_global_629;
  v2[65] = @"AXAssistiveTouchBasedDwellControl";
  v3[65] = &__block_literal_global_634;
  v2[66] = @"AXTouchAccommodations";
  v3[66] = &__block_literal_global_639;
  v2[67] = @"AXHomeButtonIsDigitalCrown";
  v3[67] = &__block_literal_global_644;
  v2[68] = @"AXHomeButtonIsNotDigitalCrown";
  v3[68] = &__block_literal_global_649;
  v2[69] = @"AXAutoEnableSubtitles";
  v3[69] = &__block_literal_global_654;
  v2[70] = @"AXLockScreenNotifications";
  v3[70] = &__block_literal_global_659;
  v2[71] = @"AXRingerSwitch";
  v3[71] = &__block_literal_global_664;
  v2[72] = @"AXHandwriting";
  v3[72] = &__block_literal_global_669;
  v2[73] = @"AXBrailleScreenInput";
  v3[73] = &__block_literal_global_674;
  v2[74] = @"AXDirectTouchApps";
  v3[74] = &__block_literal_global_679;
  v2[75] = @"AXZoomController";
  v3[75] = &__block_literal_global_684;
  v2[76] = @"AXZoomFilter";
  v3[76] = &__block_literal_global_689;
  v2[77] = @"AXZoomShowWhileMirroring";
  v3[77] = &__block_literal_global_694;
  v2[78] = @"AXCallAudioRouting";
  v3[78] = &__block_literal_global_699;
  v2[79] = @"AXTrackpadZoom";
  v3[79] = &__block_literal_global_704;
  v2[80] = @"AXHearingControlCenter";
  v3[80] = &__block_literal_global_709;
  v2[81] = @"AXAppleTVRemote";
  v3[81] = &__block_literal_global_714;
  v2[82] = @"AXVirtualTrackpad";
  v3[82] = &__block_literal_global_719;
  v2[83] = @"AXVoiceOverDelayUntilSpeak";
  v3[83] = &__block_literal_global_724;
  v2[84] = @"AXAirPodPaired";
  v3[84] = &__block_literal_global_729;
  v2[85] = @"AXRealWorldDetection";
  v3[85] = &__block_literal_global_735;
  v2[86] = @"AXSiriAtypicalSpeech";
  v3[86] = &__block_literal_global_740;
  v2[87] = @"AXClarityUI";
  v3[87] = &__block_literal_global_751;
  v2[88] = @"AXResizeZoomWindow";
  v3[88] = &__block_literal_global_756;
  v2[89] = @"AXZoomWithScrollWheel";
  v3[89] = &__block_literal_global_762;
  v2[90] = @"AXZoomVisionOS";
  v3[90] = &__block_literal_global_768;
  v2[91] = @"AXPlatformUsesInteractionTerm";
  v3[91] = &__block_literal_global_773;
  v2[92] = @"AXPlatformUsesTouchTerm";
  v3[92] = &__block_literal_global_778;
  v2[93] = @"AXSoundEffects";
  v3[93] = &__block_literal_global_783;
  v2[94] = @"AXSpatializeSpeech";
  v3[94] = &__block_literal_global_788;
  v2[95] = @"AXPlatformUsesHandTrackingForVoiceOver";
  v3[95] = &__block_literal_global_793;
  v2[96] = @"AXIgnoreEyeMovement";
  v3[96] = &__block_literal_global_798;
  v2[97] = @"AXAlignDisplaysAutomatically";
  v3[97] = &__block_literal_global_803;
  v2[98] = @"AXIncreaseFocusState";
  v3[98] = &__block_literal_global_808;
  v2[99] = @"AXVideoPassthrough";
  v3[99] = &__block_literal_global_813;
  v2[100] = @"AXSystemSoundActions";
  v3[100] = &__block_literal_global_818;
  v2[101] = @"AXASTSoundActions";
  v3[101] = &__block_literal_global_823;
  v2[102] = @"AXPlatformUsesHandTrackingForDwell";
  v3[102] = &__block_literal_global_828;
  v2[103] = @"AXPointerControl";
  v3[103] = &__block_literal_global_833;
  v2[104] = @"AXPlatformUsesHeadMovement";
  v3[104] = &__block_literal_global_838;
  v2[105] = @"AXFaceID";
  v3[105] = &__block_literal_global_843;
  v2[106] = @"AXASTExtendedPredictions";
  v3[106] = &__block_literal_global_848;
  v2[107] = @"AXSiriBargeIn";
  v3[107] = &__block_literal_global_853;
  v2[108] = @"AXLiveListen";
  v3[108] = &__block_literal_global_858;
  v2[109] = @"AXCameraControl";
  v3[109] = &__block_literal_global_863;
  v2[110] = @"AXHeadTracking";
  v3[110] = &__block_literal_global_868;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:111];
  v1 = capabilities_Available;
  capabilities_Available = v0;
}

uint64_t __35__AXCapabilityManager_capabilities__block_invoke_3()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  if ([v0 physicalMemory] > 0x773593FF && (AXRuntimeCheck_HasANE() & 1) != 0)
  {
    v1 = 1;
  }

  else
  {
    v2 = [MEMORY[0x1E696AE30] processInfo];
    if ([v2 physicalMemory] <= 0x773593FF)
    {
      v1 = 0;
    }

    else
    {
      v1 = AXRuntimeCheck_HasANE();
    }
  }

  return v1;
}

uint64_t __35__AXCapabilityManager_capabilities__block_invoke_5()
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v0 = getAVCCaptionsClientClass_softClass;
  v19 = getAVCCaptionsClientClass_softClass;
  if (!getAVCCaptionsClientClass_softClass)
  {
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __getAVCCaptionsClientClass_block_invoke;
    v14 = &unk_1E71E9A80;
    v15 = &v16;
    __getAVCCaptionsClientClass_block_invoke(&v11);
    v0 = v17[3];
  }

  v1 = v0;
  _Block_object_dispose(&v16, 8);
  if (![v0 isCaptioningSupported])
  {
    return 0;
  }

  v2 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1EFE97150];
  v3 = MEMORY[0x1E695DFD8];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v4 = getUITextInputModeClass_softClass;
  v19 = getUITextInputModeClass_softClass;
  if (!getUITextInputModeClass_softClass)
  {
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __getUITextInputModeClass_block_invoke;
    v14 = &unk_1E71E9A80;
    v15 = &v16;
    __getUITextInputModeClass_block_invoke(&v11);
    v4 = v17[3];
  }

  v5 = v4;
  _Block_object_dispose(&v16, 8);
  v6 = [v4 activeInputModes];
  v7 = [v6 ax_flatMappedArrayUsingBlock:&__block_literal_global_884];
  v8 = [v3 setWithArray:v7];

  v9 = [v8 intersectsSet:v2];
  return v9;
}

uint64_t __35__AXCapabilityManager_capabilities__block_invoke_9()
{
  result = MGGetBoolAnswer();
  if (result)
  {
    return MGGetBoolAnswer() ^ 1;
  }

  return result;
}

uint64_t __35__AXCapabilityManager_capabilities__block_invoke_15()
{
  result = AXDeviceSupportsHoverText();
  if (result)
  {
    return AXDeviceIsPhone() ^ 1;
  }

  return result;
}

uint64_t __35__AXCapabilityManager_capabilities__block_invoke_18()
{
  v0 = [MEMORY[0x1E698D1C0] sharedPreferences];
  v1 = [v0 assistantIsEnabled];

  v2 = MEMORY[0x1E698D0F8];
  v3 = [MEMORY[0x1E698D1C0] sharedPreferences];
  v4 = [v3 languageCode];
  LODWORD(v2) = [v2 assistantIsSupportedForLanguageCode:v4 error:0];

  return v1 & v2;
}

uint64_t __35__AXCapabilityManager_capabilities__block_invoke_19()
{
  result = AXHasCapability(@"AXSiri");
  if (result)
  {
    return AXDeviceHasGreyMatterEnabled() ^ 1;
  }

  return result;
}

BOOL __35__AXCapabilityManager_capabilities__block_invoke_86()
{
  v0 = +[AXAirPodSettingsManager sharedInstance];
  v1 = [v0 pairedAirPods];
  v2 = [v1 count] != 0;

  return v2;
}

uint64_t __35__AXCapabilityManager_capabilities__block_invoke_88()
{
  if (!AXHasCapability(@"AXSiri") || !_os_feature_enabled_impl())
  {
    return 0;
  }

  v0 = [MEMORY[0x1E695DF58] _deviceLanguage];
  v1 = [v0 isEqualToString:@"en"];

  return v1;
}

uint64_t __35__AXCapabilityManager_capabilities__block_invoke_90()
{
  v0 = +[AXSettings sharedInstance];
  v1 = [v0 zoomPreferredCurrentLensMode];
  v2 = [v1 isEqualToString:*MEMORY[0x1E69886D8]];

  return v2 ^ 1u;
}

BOOL __35__AXCapabilityManager_capabilities__block_invoke_91()
{
  v0 = +[AXPointerDeviceManager sharedInstance];
  v1 = [v0 connectedDevices];
  v2 = [v1 count] != 0;

  return v2;
}

uint64_t __35__AXCapabilityManager_capabilities__block_invoke_109()
{
  if (!AXHasCapability(@"AXSiri"))
  {
    return 0;
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v0 = getCSPreferencesClass_softClass;
  v9 = getCSPreferencesClass_softClass;
  if (!getCSPreferencesClass_softClass)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getCSPreferencesClass_block_invoke;
    v5[3] = &unk_1E71E9A80;
    v5[4] = &v6;
    __getCSPreferencesClass_block_invoke(v5);
    v0 = v7[3];
  }

  v1 = v0;
  _Block_object_dispose(&v6, 8);
  v2 = [v0 sharedPreferences];
  v3 = [v2 isFlexibleFollowupsSupported];

  return v3;
}

- (BOOL)isCapabilityAvailable:(id)available
{
  availableCopy = available;
  capabilities = [(AXCapabilityManager *)self capabilities];
  v6 = [capabilities objectForKey:availableCopy];

  if (v6)
  {
    v7 = v6[2](v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end