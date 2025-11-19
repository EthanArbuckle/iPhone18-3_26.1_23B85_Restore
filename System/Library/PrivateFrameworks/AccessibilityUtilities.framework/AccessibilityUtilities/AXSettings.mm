@interface AXSettings
+ (AXSettings)sharedInstance;
- (AXCVoiceSelection)assisitveTouchScannerSpeechVoiceSelection;
- (AXSCATProfile)switchControlSelectedProfile;
- (AXVOLiveRecognitionActivity)liveRecognitionActivity;
- (BOOL)_defaultHapticValueForEvent:(id)a3;
- (BOOL)_hasSwitchWithUUID:(id)a3;
- (BOOL)_switchControlHasEmptyTopLevelMenuItems:(id)a3;
- (BOOL)_updateWithoutSavingExistingRecipe:(id)a3 allRecipes:(id)a4;
- (BOOL)_voiceOverRotorItemEnabled:(id)a3;
- (BOOL)alwaysListenForSiri;
- (BOOL)anyUserPreferredLangaugeIsRTL;
- (BOOL)assistiveTouchCustomizationEnabled;
- (BOOL)assistiveTouchGroupElementsEnabled;
- (BOOL)assistiveTouchHeadTrackingWasPreviouslyEnabled;
- (BOOL)assistiveTouchMouseAllowAppleBluetoothDevicesPairing;
- (BOOL)assistiveTouchScannerPrefersCompact:(id)a3;
- (BOOL)backTapFalsePositiveAlertsEnabled;
- (BOOL)backTapRNNModelEnabled;
- (BOOL)didTriggerSOSToday;
- (BOOL)didTriggerSOSValueSet;
- (BOOL)gizmoGetAutoSpeakEnabledForComplication:(id)a3 slot:(id)a4 face:(id)a5;
- (BOOL)isDeviceSameTypeAsGuestPassTransfer:(id)a3;
- (BOOL)isNameRecognitionEnabled;
- (BOOL)isNewRecipe:(id)a3;
- (BOOL)liveRegionStatusEverSet;
- (BOOL)onDeviceEyeTrackingEnabled;
- (BOOL)reachabilityEnabled;
- (BOOL)siriAutoUpdateListInitialized;
- (BOOL)startupSoundEnabled;
- (BOOL)switchControlHasEmptyTopLevelMenu;
- (BOOL)switchControlShouldUseShortFirstPage;
- (BOOL)switchControlUseCameraForPointMode;
- (BOOL)touchAccommodationsHoldDurationAllowsSwipeGesturesToBypass;
- (BOOL)updateRecipe:(id)a3;
- (BOOL)updateWithManagedAssetsRepresentation:(id)a3 forGuest:(BOOL)a4;
- (BOOL)userDidSelectVoiceForLanguage:(id)a3 sourceKey:(id)a4;
- (BOOL)validateAndUpdateRecipeIfNeeded:(id)a3;
- (BOOL)voiceOverAlwaysUseNemethCodeForMathEnabled;
- (BOOL)voiceOverBrailleGesturesEnabled;
- (BOOL)voiceOverFlashlightNotificationsEnabled;
- (BOOL)voiceOverHandGesturesEnabled;
- (BOOL)voiceOverTapticTimeMode;
- (BOOL)zoomHandGesturesEnabled;
- (CGPoint)quickSpeakNubbitNormalizedPosition;
- (CGPoint)zoomPanOffset;
- (CGPoint)zoomSlugNormalizedPosition;
- (CGRect)zoomWindowFrame;
- (NSArray)assistiveTouchMouseCustomizedClickActions;
- (NSArray)assistiveTouchMouseOnDeviceEyeTrackingCalibratedValues;
- (NSArray)customPronunciationSubstitutions;
- (NSArray)deviceKeys;
- (NSArray)enabledLiveRecognitionModes;
- (NSArray)gestureKeys;
- (NSArray)hapticMusicAlgorithmSelections;
- (NSArray)imageCaptioningDisabledApps;
- (NSArray)mediaControlsKeys;
- (NSArray)perAppSettingsCustomizedAppIDs;
- (NSArray)settingsKeys;
- (NSArray)switchControlDeviceMenuItems;
- (NSArray)switchControlDeviceTopLevelMenuItems;
- (NSArray)switchControlGesturesMenuItems;
- (NSArray)switchControlGesturesTopLevelMenuItems;
- (NSArray)switchControlMediaControlsMenuItems;
- (NSArray)switchControlMediaControlsTopLevelMenuItems;
- (NSArray)switchControlProfiles;
- (NSArray)switchControlRecipes;
- (NSArray)switchControlSettingsMenuItems;
- (NSArray)switchControlSettingsTopLevelMenuItems;
- (NSArray)switchControlTopLevelMenuItems;
- (NSArray)tripleClickOptions;
- (NSArray)tripleClickOrderedOptions;
- (NSArray)voiceOverBrailleDisplays;
- (NSArray)voiceOverBrailleLanguageRotorItems;
- (NSArray)voiceOverDetectionModeItems;
- (NSArray)voiceOverLanguageRotorItems;
- (NSArray)voiceOverQuickSettingsItems;
- (NSArray)voiceOverRotorItems;
- (NSArray)voiceOverTouchBrailleUIMainMenuItems;
- (NSData)fullKeyboardAccessCommandMapData;
- (NSData)hoverTextBackgroundColorData;
- (NSData)hoverTextBorderColorData;
- (NSData)hoverTextInsertionPointColorData;
- (NSData)hoverTextTextColorData;
- (NSData)hoverTextTypingAutocorrectedTextColorData;
- (NSData)hoverTextTypingBackgroundColorData;
- (NSData)hoverTextTypingBorderColorData;
- (NSData)hoverTextTypingInsertionPointColorData;
- (NSData)hoverTextTypingMisspelledTextColorData;
- (NSData)hoverTextTypingTextColorData;
- (NSDate)hapticMusicUsageStartDate;
- (NSDate)voiceOverTapticChimesScheduleDateEnd;
- (NSDate)voiceOverTapticChimesScheduleDateStart;
- (NSDateFormatter)voiceOverTapticChimesScheduleDateFormatter;
- (NSDictionary)assistiveTouchActionsBySoundAction;
- (NSDictionary)assistiveTouchHeadTrackingExpressionToActionMapping;
- (NSDictionary)assistiveTouchMainScreenCustomization;
- (NSDictionary)assistiveTouchMainScreenDefaultCustomization;
- (NSDictionary)assistiveTouchMouseDwellControlCornerCustomization;
- (NSDictionary)assistiveTouchMouseOnDeviceEyeTrackingEnrollmentPointToGazePointMap;
- (NSDictionary)assistiveTouchUsageCount;
- (NSDictionary)liveRecognitionActivities;
- (NSDictionary)managedAssetsRepresentation;
- (NSDictionary)perAppSettingsStats;
- (NSDictionary)remoteHandGestureCustomizedActions;
- (NSDictionary)teachableMomentsNotificationsSeen;
- (NSDictionary)voiceOverBrailleBluetoothDisplay;
- (NSDictionary)voiceOverBrailleDisconnectOnSleep;
- (NSDictionary)voiceOverDirectTouchEnabledApps;
- (NSDictionary)voiceOverHandGesturesActionCustomizations;
- (NSDictionary)zoomHandGesturesActionCustomizations;
- (NSMutableSet)migratedSwitchControlMenuItemsPreferenceKeys;
- (NSOrderedSet)zoomPreferredDockPositions;
- (NSOrderedSet)zoomPreferredLensModes;
- (NSSet)assistiveTouchCameraPointPickerSwitches;
- (NSSet)assistiveTouchSwitches;
- (NSSet)liveRecognitionDoorsFeedbacks;
- (NSSet)liveRecognitionFurnitureFeedbacks;
- (NSSet)liveRecognitionPeopleFeedbacks;
- (NSSet)liveRecognitionPointAndSpeakFeedbacks;
- (NSSet)liveRecognitionSceneFeedbacks;
- (NSSet)liveRecognitionTextFeedbacks;
- (NSString)assisitveTouchScannerSpeechVoiceIdentifier;
- (NSString)assistiveTouchDoubleTapAction;
- (NSString)assistiveTouchLongPressAction;
- (NSString)assistiveTouchMouseDwellControlAutorevertAction;
- (NSString)assistiveTouchOrbAction;
- (NSString)assistiveTouchSingleTapAction;
- (NSString)backTapDoubleTapAction;
- (NSString)backTapTripleTapAction;
- (NSString)guidedAccessDefaultToneIdentifierForTimeRestrictionEvents;
- (NSString)guidedAccessToneIdentifierForTimeRestrictionEvents;
- (NSString)hapticMusicAlgorithmSelection;
- (NSString)hoverTextContentSize;
- (NSString)hoverTextFontName;
- (NSString)hoverTextTypingFontName;
- (NSString)hoverTextTypingTextStyle;
- (NSString)voiceOverBrailleTableIdentifier;
- (NSString)voiceOverTouchBrailleTableIdentifier;
- (NSString)zoomCurrentLensEffect;
- (NSString)zoomCurrentLensMode;
- (NSString)zoomPreferredCurrentDockPosition;
- (NSString)zoomPreferredCurrentLensMode;
- (NSURL)alexLocalAssetURL;
- (NSURL)cameraSceneDescriberImageURL;
- (NSUUID)switchControlLaunchRecipeUUID;
- (NSUUID)voiceOverPunctuationGroup;
- (__CFString)_domainNameForDomain:(unint64_t)a3;
- (double)assistiveTouchMouseDwellControlKeyboardKeyActivationTimeout;
- (double)assistiveTouchVirtualTrackpadBorderWidth;
- (double)callAudioRoutingAutoAnswerDelay;
- (double)leftRightBalanceValue;
- (double)voiceOverBrailleAutoAdvanceDuration;
- (float)quickSpeakVolume;
- (float)voiceOverSpeakingRateForLanguage:(id)a3;
- (id)_allAccessibilityDomains;
- (id)_allSubmenuKeys;
- (id)_allVoiceOverDomains;
- (id)_allVoiceOverKeysInAccessibilityPreferences;
- (id)_createRecipeForInterfaceOrientedPoint:(CGPoint)a3 forHold:(BOOL)a4 saveToSettings:(BOOL)a5;
- (id)_customizedAppIDs;
- (id)_gesturesForPreferenceKeyMigratingIfNecessary:(id)a3;
- (id)_keysToIgnore;
- (id)_keysToIgnoreForFiringGuestPassCloudKitSync;
- (id)_mediaAccessibilityNotificationsToFireAfterApplyingBatchSettings;
- (id)_migratePreferenceIfNecessary:(id)a3;
- (id)_quickSpeakAltVoices;
- (id)_switchControlMenuItemPreferences;
- (id)_switchControlMenuItemsForPreferenceKey:(id)a3 allTypes:(id)a4 enabledByDefault:(BOOL)a5 topLevel:(BOOL)a6;
- (id)_switchControlMigratePreMonarchIncludedMenuItemsForNewTypes:(id)a3;
- (id)_switchWithAction:(int64_t)a3 excludedUUIDs:(id)a4 needsToSupportLongPress:(BOOL)a5;
- (id)_voiceOverSoundOrHapticValueForPreference:(id)a3 outputEvent:(id)a4;
- (id)allDomainNamesForPreferenceKey:(id)a3;
- (id)automaticAccessibilityModes;
- (id)customSettingsForVoice:(id)a3 sourceKey:(id)a4;
- (id)domainNameForPreferenceKey:(id)a3;
- (id)filterManagedAssetsRepresentationForGuestPassTransfer:(id)a3;
- (id)gizmoGetWatchFaceAutoSpeakPreferences;
- (id)guestPassPayloadForCrossPlatformTransfer:(id)a3;
- (id)headsetUpdatedDictionaryForPreference:(id)a3 forDeviceAddress:(id)a4 value:(id)a5;
- (id)headsetsValueForPreference:(id)a3 forDeviceAddress:(id)a4 expectedType:(Class)a5;
- (id)latestAdaptiveVoiceShortcutsSettingsEventDictionaries;
- (id)latestAdaptiveVoiceShortcutsSettingsEvents;
- (id)liveRegionStatusForWebOrApp:(id)a3;
- (id)payWithSwitchControl;
- (id)preferenceKeyForSelector:(SEL)a3;
- (id)preferredBrailleTableIdentifierForKeyboardLanguage:(id)a3 keyboardLayout:(id)a4;
- (id)selectedSpeechVoiceIdentifiers;
- (id)selectedSpeechVoiceIdentifiersForSourceKey:(id)a3;
- (id)smoothingBufferSizeForEyeTracker:(id)a3;
- (id)speechVoiceIdentifierForLanguage:(id)a3 source:(int64_t)a4 exists:(BOOL *)a5;
- (id)speechVoiceIdentifierForLanguage:(id)a3 sourceKey:(id)a4 exists:(BOOL *)a5;
- (id)speechVoiceIdentifierForLanguageWithoutFallback:(id)a3 sourceKey:(id)a4;
- (id)spokenContentVoiceSelectionForLanguage:(id)a3;
- (id)switchControlLocStringForFirstLaunchScanningMode:(int64_t)a3;
- (id)switchControlProfileWhitelistedKeys;
- (id)switchForUUID:(id)a3;
- (id)topLevelKeys;
- (id)valueForPreferenceKey:(id)a3;
- (id)voiceOverAlternativeVoiceIdentifier:(id)a3;
- (id)voiceOverHapticEnabledForEvent:(id)a3;
- (id)voiceOverRotorItemWithVoiceID:(id)a3 rate:(id)a4 volume:(id)a5 pitch:(id)a6;
- (id)voiceOverSelectedActivity;
- (id)voiceOverTouchPreferredBrailleTableIdentifiers;
- (int64_t)assistiveTouchPreferredPointPicker;
- (int64_t)assistiveTouchScanningMode;
- (int64_t)automaticAccessibilityModeForBundleIdentifier:(id)a3;
- (int64_t)backTapUsageCount;
- (int64_t)guidedAccessUsageCount;
- (int64_t)hoverTextTypingDisplayMode;
- (int64_t)internalLoggingColorTheme;
- (int64_t)switchControlFirstLaunchScanningMode;
- (int64_t)switchControlPointPickerSelectionStyle;
- (int64_t)switchControlScanningStyle;
- (int64_t)switchControlTapBehavior;
- (int64_t)touchAccommodationsTapActivationMethod;
- (int64_t)voiceOverActivationWorkaround;
- (int64_t)voiceOverBrailleStatusCellPreference;
- (int64_t)voiceOverHardwareTypingFeedback;
- (int64_t)voiceOverHelpMode;
- (int64_t)voiceOverInlineTextCompletionAppearanceFeedback;
- (int64_t)voiceOverInlineTextCompletionInsertionFeedback;
- (int64_t)voiceOverLinkFeedback;
- (int64_t)voiceOverNavigateImagesOption;
- (int64_t)voiceOverNavigationDirectionMode;
- (int64_t)voiceOverPhoneticsFeedback;
- (int64_t)voiceOverSoftwareTypingFeedback;
- (unint64_t)_domainForPreferenceKey:(id)a3;
- (unint64_t)appleTVAppGridItemsPerLine;
- (unint64_t)quickSpeakHighlightOption;
- (unint64_t)quickSpeakSentenceHighlightOption;
- (unsigned)headsetCaseTonesVolumeForDeviceAddress:(id)a3;
- (void)_assignActionToUnsetHotCorner:(id)a3;
- (void)_assignDefaultTitleIfNeededToRecipe:(id)a3;
- (void)_clearLiveCaptionsState:(int64_t)a3;
- (void)_clearWhitetailMigrationSettings;
- (void)_listenForAccessibilitySupportPassthroughs;
- (void)_localeChange:(id)a3;
- (void)_setAdaptiveVoiceShortcutsEnabled:(BOOL)a3;
- (void)_setAssistiveTouchBubbleModeEnabledPreferenceOnly:(BOOL)a3;
- (void)_setAssistiveTouchMouseDwellControlEnabledPreferenceOnly:(BOOL)a3;
- (void)_setGestures:(id)a3 forPreferenceKey:(id)a4;
- (void)_switchControlClearMenuItemMigrationTracking;
- (void)_switchControlClearMenuItemPreferences;
- (void)_updateSwitchControlSelectedProfile:(id)a3;
- (void)_updateTouchAccommodationsTripleClickSetting;
- (void)_updateVoiceOverTouchBrailleUIMainMenuItems;
- (void)_voiceOverSetSoundOrHapticValue:(id)a3 forPreference:(id)a4 outputEvent:(id)a5;
- (void)addCustomizedAppID:(id)a3;
- (void)addRotorOptionsForLoginSession;
- (void)aggregatePerAppSettingsStatistics;
- (void)applySwitchControlProfile:(id)a3;
- (void)assistiveTouchMotionTrackerShouldOffsetBufferPoints:(BOOL)a3;
- (void)configureZoomForLoginSession;
- (void)enableAssistiveTechnologies:(BOOL)a3 usingDefaults:(id)a4;
- (void)gizmoSetAutoSpeakEnabledForComplication:(id)a3 slot:(id)a4 face:(id)a5 toggle:(BOOL)a6;
- (void)nukeAll;
- (void)nukePrefsForDomains:(unint64_t *)a3 numDomains:(unint64_t)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)postInit;
- (void)registerVocalShortcutsSettingsEvent:(id)a3;
- (void)removeAllSwitchControlProfiles;
- (void)removeCustomizedAppID:(id)a3;
- (void)resetAllGuestModeDefaults;
- (void)resetAllVoiceOverSettings;
- (void)saveRecipe:(id)a3;
- (void)setAccessibilityReaderIsActive:(BOOL)a3;
- (void)setAdaptiveVoiceShortcutsEnabled:(BOOL)a3;
- (void)setAdaptiveVoiceShortcutsEnabled:(BOOL)a3 source:(id)a4;
- (void)setAlexLocalAssetURL:(id)a3;
- (void)setAllowHearingAidControlOnLockScreen:(BOOL)a3;
- (void)setAlwaysListenForSiri:(BOOL)a3;
- (void)setAppValidationTestingMode:(BOOL)a3;
- (void)setAssisitveTouchScannerSpeechVoiceSelection:(id)a3;
- (void)setAssistiveTouchActionRepeatEnabled:(BOOL)a3;
- (void)setAssistiveTouchActionRepeatInterval:(double)a3;
- (void)setAssistiveTouchAlwaysShowMenuEnabled:(BOOL)a3;
- (void)setAssistiveTouchAxisSweepSpeed:(double)a3;
- (void)setAssistiveTouchBubbleModeChangedDuringHeadTracking:(BOOL)a3;
- (void)setAssistiveTouchBubbleModeEnabled:(BOOL)a3;
- (void)setAssistiveTouchCameraPointPickerSwitches:(id)a3;
- (void)setAssistiveTouchCameraSwitchPreviewEnabled:(BOOL)a3;
- (void)setAssistiveTouchCursorColor:(int64_t)a3;
- (void)setAssistiveTouchDelayAfterInput:(double)a3;
- (void)setAssistiveTouchDelayAfterInputEnabled:(BOOL)a3;
- (void)setAssistiveTouchDoubleTapActionTimeout:(double)a3;
- (void)setAssistiveTouchDwellKeyboardContinuousPathEnabled:(BOOL)a3;
- (void)setAssistiveTouchEnabled:(BOOL)a3;
- (void)setAssistiveTouchEnabledByHeadTracking:(BOOL)a3;
- (void)setAssistiveTouchEnabledByOnDeviceEyeTracking:(BOOL)a3;
- (void)setAssistiveTouchEyeTrackingAutoHideEnabled:(BOOL)a3;
- (void)setAssistiveTouchEyeTrackingAutoHideOpacity:(double)a3;
- (void)setAssistiveTouchEyeTrackingAutoHideTimeout:(double)a3;
- (void)setAssistiveTouchForceEyeTrackerExperience:(BOOL)a3;
- (void)setAssistiveTouchForceOnDeviceEyeTrackingExperience:(BOOL)a3;
- (void)setAssistiveTouchGameControllerEnabled:(BOOL)a3;
- (void)setAssistiveTouchGroupElementsEnabled:(BOOL)a3;
- (void)setAssistiveTouchHeadMovementSensitivity:(int64_t)a3;
- (void)setAssistiveTouchHeadTrackingEnabled:(BOOL)a3;
- (void)setAssistiveTouchHeadTrackingExpressionToActionMappingDidMigrateToLuckB:(BOOL)a3;
- (void)setAssistiveTouchHeadTrackingMode:(unint64_t)a3;
- (void)setAssistiveTouchHeadTrackingMovementToleranceInJoystickMode:(double)a3;
- (void)setAssistiveTouchHeadTrackingSensitivity:(double)a3;
- (void)setAssistiveTouchIdleOpacity:(double)a3;
- (void)setAssistiveTouchInputCoalescingDuration:(double)a3;
- (void)setAssistiveTouchInputCoalescingEnabled:(BOOL)a3;
- (void)setAssistiveTouchInputHoldDuration:(double)a3;
- (void)setAssistiveTouchInputHoldEnabled:(BOOL)a3;
- (void)setAssistiveTouchInternalOnlyHiddenNubbitModeEnabled:(BOOL)a3;
- (void)setAssistiveTouchInternalOnlyPearlTrackingEnabled:(BOOL)a3;
- (void)setAssistiveTouchLongPressActionDuration:(double)a3;
- (void)setAssistiveTouchLongPressDuration:(double)a3;
- (void)setAssistiveTouchLongPressEnabled:(BOOL)a3;
- (void)setAssistiveTouchLongPressPauseScanningEnabled:(BOOL)a3;
- (void)setAssistiveTouchMotionTrackerConfigurable:(BOOL)a3;
- (void)setAssistiveTouchMotionTrackerSmoothingBufferSize:(unint64_t)a3;
- (void)setAssistiveTouchMotionTrackerSmoothingMaxDelta:(double)a3;
- (void)setAssistiveTouchMotionTrackerXNormalizationOffset:(double)a3;
- (void)setAssistiveTouchMotionTrackerXNormalizationOrder:(double)a3;
- (void)setAssistiveTouchMotionTrackerYNormalizationOffset:(double)a3;
- (void)setAssistiveTouchMotionTrackerYNormalizationOrder:(double)a3;
- (void)setAssistiveTouchMouseAllowAppleBluetoothDevicesPairing:(BOOL)a3;
- (void)setAssistiveTouchMouseAlwaysShowSoftwareKeyboardEnabled:(BOOL)a3;
- (void)setAssistiveTouchMouseBehavesLikeFinger:(BOOL)a3;
- (void)setAssistiveTouchMouseClickSoundsEnabled:(BOOL)a3;
- (void)setAssistiveTouchMouseDwellControlActivationTimeout:(double)a3;
- (void)setAssistiveTouchMouseDwellControlAutorevertEnabled:(BOOL)a3;
- (void)setAssistiveTouchMouseDwellControlChangedDuringHeadTracking:(BOOL)a3;
- (void)setAssistiveTouchMouseDwellControlEnabled:(BOOL)a3;
- (void)setAssistiveTouchMouseDwellControlKeyboardKeyActivationTimeout:(double)a3;
- (void)setAssistiveTouchMouseDwellControlMovementToleranceRadius:(double)a3;
- (void)setAssistiveTouchMouseDwellControlMutatedMenu:(BOOL)a3;
- (void)setAssistiveTouchMouseDwellControlShowPrompt:(BOOL)a3;
- (void)setAssistiveTouchMouseKeysDelay:(int64_t)a3;
- (void)setAssistiveTouchMouseKeysEnabled:(BOOL)a3;
- (void)setAssistiveTouchMouseKeysMaxSpeed:(int64_t)a3;
- (void)setAssistiveTouchMouseKeysOptionToggleEnabled:(BOOL)a3;
- (void)setAssistiveTouchMouseKeysUseMainKeyboardKeys:(BOOL)a3;
- (void)setAssistiveTouchMouseOnDeviceEyeTrackingCalibrationStrategy:(int64_t)a3;
- (void)setAssistiveTouchMouseOnDeviceEyeTrackingEnabled:(BOOL)a3;
- (void)setAssistiveTouchMouseOnDeviceEyeTrackingEnrollmentCompleted:(BOOL)a3;
- (void)setAssistiveTouchMouseOnDeviceEyeTrackingOnboardingCompleted:(BOOL)a3;
- (void)setAssistiveTouchMouseOnDeviceEyeTrackingShouldShowUncalibratedPoints:(BOOL)a3;
- (void)setAssistiveTouchMousePointerColor:(int64_t)a3;
- (void)setAssistiveTouchMousePointerSizeMultiplier:(double)a3;
- (void)setAssistiveTouchMousePointerTimeout:(double)a3;
- (void)setAssistiveTouchMousePointerTimeoutEnabled:(BOOL)a3;
- (void)setAssistiveTouchMouseZoomPanningStyle:(unint64_t)a3;
- (void)setAssistiveTouchOnDeviceEyeTrackingAutoHideEnabled:(BOOL)a3;
- (void)setAssistiveTouchOnDeviceEyeTrackingAutoHideOpacity:(double)a3;
- (void)setAssistiveTouchOnDeviceEyeTrackingAutoHideTimeout:(double)a3;
- (void)setAssistiveTouchOnDeviceEyeTrackingShouldUseGaussianBlur:(BOOL)a3;
- (void)setAssistiveTouchOnDeviceEyeTrackingShouldUseMotionFilter:(BOOL)a3;
- (void)setAssistiveTouchOnDeviceEyeTrackingShouldUseWeightedAverages:(BOOL)a3;
- (void)setAssistiveTouchOnDeviceEyeTrackingSmoothingBufferSize:(unint64_t)a3;
- (void)setAssistiveTouchOpenMenuSwaggleEnabled:(BOOL)a3;
- (void)setAssistiveTouchPreferredPointPicker:(int64_t)a3;
- (void)setAssistiveTouchScanCycles:(int64_t)a3;
- (void)setAssistiveTouchScanTimeout:(double)a3;
- (void)setAssistiveTouchScanTimeoutEnabled:(BOOL)a3;
- (void)setAssistiveTouchScannerAddedTripleClickAutomatically:(BOOL)a3;
- (void)setAssistiveTouchScannerCompactMenuEnabled:(BOOL)a3;
- (void)setAssistiveTouchScannerCursorHighVisibilityEnabled:(BOOL)a3;
- (void)setAssistiveTouchScannerMenuLabelsEnabled:(BOOL)a3;
- (void)setAssistiveTouchScannerPrefersCompact:(BOOL)a3 forLanguage:(id)a4;
- (void)setAssistiveTouchScannerSoundEnabled:(BOOL)a3;
- (void)setAssistiveTouchScannerSpeechRate:(double)a3;
- (void)setAssistiveTouchScanningMode:(int64_t)a3;
- (void)setAssistiveTouchSleepOnWristDownPreference:(BOOL)a3;
- (void)setAssistiveTouchSpeed:(double)a3;
- (void)setAssistiveTouchStepInterval:(double)a3;
- (void)setAssistiveTouchSwitchUsageConfirmed:(BOOL)a3;
- (void)setAssistiveTouchSwitches:(id)a3;
- (void)setAssistiveTouchVirtualTrackpadBorderColor:(int64_t)a3;
- (void)setAssistiveTouchVirtualTrackpadBorderOpacity:(double)a3;
- (void)setAssistiveTouchVirtualTrackpadBorderWidth:(double)a3;
- (void)setAssistiveTouchVirtualTrackpadEnabled:(BOOL)a3;
- (void)setAssistiveTouchVirtualTrackpadFadeDelay:(double)a3;
- (void)setAssistiveTouchVirtualTrackpadFullScreenToggleEnabled:(BOOL)a3;
- (void)setAssistiveTouchVirtualTrackpadHoldDuration:(double)a3;
- (void)setAssistiveTouchVirtualTrackpadInnerColor:(int64_t)a3;
- (void)setAssistiveTouchVirtualTrackpadInnerOpacity:(double)a3;
- (void)setAssistiveTouchVirtualTrackpadScrollSpeed:(double)a3;
- (void)setAssistiveTouchVirtualTrackpadScrollToggleEnabled:(BOOL)a3;
- (void)setAssistiveTouchVirtualTrackpadSpeed:(double)a3;
- (void)setAudiogramIngestionLastModelAccess:(double)a3;
- (void)setAutomaticAccessibilityEnabled:(BOOL)a3;
- (void)setAutomaticAccessibilityIgnoreAppAccessibilityPreferred:(BOOL)a3;
- (void)setAutomaticAccessibilityMode:(int64_t)a3 forBundleIdentifier:(id)a4;
- (void)setAutomaticAccessibilityVisualizationsEnabled:(BOOL)a3;
- (void)setAutomationTrueTouch:(BOOL)a3;
- (void)setBackTapConfirmationBannerEnabled:(BOOL)a3;
- (void)setBackTapFalsePositiveAlertsEnabled:(BOOL)a3;
- (void)setBackTapRNNModelEnabled:(BOOL)a3;
- (void)setBackTapUsageCount:(int64_t)a3;
- (void)setBrokenHomeButtonCount:(int64_t)a3;
- (void)setCallAudioRoutingAutoAnswerDelay:(double)a3;
- (void)setCallAudioRoutingAutoAnswerEnabled:(BOOL)a3;
- (void)setCameraButtonSensitivity:(double)a3;
- (void)setCameraSceneDescriberImageURL:(id)a3;
- (void)setCharacterFeedbackDelayDuration:(double)a3;
- (void)setCharacterVoicesUsageCount:(int64_t)a3;
- (void)setClassicInvertColors:(BOOL)a3;
- (void)setCustomPronunciationSubstitutions:(id)a3;
- (void)setCustomSettingsForVoice:(id)a3 sourceKey:(id)a4 settings:(id)a5;
- (void)setDefaultVoiceSelection:(id)a3 forLanguage:(id)a4 sourceKey:(id)a5;
- (void)setDefaultVoiceSelection:(id)a3 languageID:(id)a4 rate:(id)a5 pitch:(id)a6 volume:(id)a7;
- (void)setDidResetD22Preferences:(BOOL)a3;
- (void)setDidTriggerSOSToday:(BOOL)a3;
- (void)setDockSize:(double)a3;
- (void)setEnableHearingAidReporter:(BOOL)a3;
- (void)setEnableVoiceOverCaptions:(BOOL)a3;
- (void)setFullKeyboardAccessFocusRingColor:(int64_t)a3;
- (void)setFullKeyboardAccessFocusRingHighContrastEnabled:(BOOL)a3;
- (void)setFullKeyboardAccessFocusRingTimeout:(double)a3;
- (void)setFullKeyboardAccessFocusRingTimeoutEnabled:(BOOL)a3;
- (void)setFullKeyboardAccessLargeFocusRingEnabled:(BOOL)a3;
- (void)setFullKeyboardAccessShouldShowDebugKeyCommandsView:(BOOL)a3;
- (void)setFullKeyboardAccessShouldShowTextEditingModeInstructions:(BOOL)a3;
- (void)setGaxInternalSettingsIsActiveAppSelfLocked:(BOOL)a3;
- (void)setGaxInternalSettingsSystemDidRestartDueToLowBattery:(BOOL)a3;
- (void)setGaxInternalSettingsTimeRestrictionHasExpired:(BOOL)a3;
- (void)setGizmoApplicationAccessibilityEnabled:(BOOL)a3;
- (void)setGuestPassSessionCCWidgetIsActive:(BOOL)a3;
- (void)setGuestPassSessionIsActive:(BOOL)a3;
- (void)setGuidedAccessAXFeaturesEnabled:(BOOL)a3;
- (void)setGuidedAccessAllowsUnlockWithTouchID:(BOOL)a3;
- (void)setGuidedAccessAutoLockTimeInSeconds:(int64_t)a3;
- (void)setGuidedAccessDisallowDirectInactiveToActiveTransition:(BOOL)a3;
- (void)setGuidedAccessEnableExperimentalUI:(BOOL)a3;
- (void)setGuidedAccessShouldSpeakForTimeRestrictionEvents:(BOOL)a3;
- (void)setGuidedAccessTimeLimitsUsageCount:(int64_t)a3;
- (void)setGuidedAccessUsageCount:(int64_t)a3;
- (void)setGuidedAccessUserPrefersMirroringForExternalDisplays:(BOOL)a3;
- (void)setHapticMusicActive:(BOOL)a3;
- (void)setHapticMusicEnhancedPercussion:(BOOL)a3;
- (void)setHapticMusicEnhancedVocals:(BOOL)a3;
- (void)setHapticMusicIntensity:(double)a3;
- (void)setHapticMusicToggledInPreferences:(BOOL)a3;
- (void)setHapticMusicTrackAvailable:(BOOL)a3;
- (void)setHapticMusicUsagePerDay:(double)a3;
- (void)setHeadsetCaseTonesVolume:(unsigned int)a3 forDeviceAddress:(id)a4;
- (void)setHeadsetPreference:(id)a3 forDeviceAddress:(id)a4 value:(id)a5;
- (void)setHearingAidControlPanelCount:(int64_t)a3;
- (void)setHearingAidHandOffCount:(int64_t)a3;
- (void)setHoverTextActivationLockEnabled:(BOOL)a3;
- (void)setHoverTextContentSize:(id)a3;
- (void)setHoverTextContentType:(int64_t)a3;
- (void)setHoverTextPreferredActivatorKey:(int64_t)a3;
- (void)setHoverTextScrollingSpeed:(int64_t)a3;
- (void)setHoverTextShowedBanner:(BOOL)a3;
- (void)setHoverTextTypingShowedBanner:(BOOL)a3;
- (void)setIgnoreAXAsserts:(BOOL)a3;
- (void)setIgnoreAXServerEntitlements:(BOOL)a3;
- (void)setIgnoreTrackpad:(BOOL)a3;
- (void)setImageCaptionGenderStrategy:(unint64_t)a3;
- (void)setIncludeBacktraceInLogs:(BOOL)a3;
- (void)setIndependentHearingAidSettings:(BOOL)a3;
- (void)setInternalLoggingColorTheme:(int64_t)a3;
- (void)setIsAXValidationRunnerCollectingValidations:(BOOL)a3;
- (void)setLaserZoomPanningStyle:(unint64_t)a3;
- (void)setLastAssistiveTouchTimeResetCount:(double)a3;
- (void)setLastBrailleScreenInputTimeResetCount:(double)a3;
- (void)setLastCharacterVoiceTimeResetCount:(double)a3;
- (void)setLastMagnifierResetCount:(double)a3;
- (void)setLastSmartInvertColorsEnablement:(double)a3;
- (void)setLastTapticTimeResetCount:(double)a3;
- (void)setLatestAdaptiveVoiceShortcutsSettingsEvents:(id)a3;
- (void)setLeftRightBalanceEnabled:(BOOL)a3;
- (void)setLeftRightBalanceValue:(double)a3;
- (void)setLiveCaptionsSelectedLocaleIdentifier:(id)a3;
- (void)setLiveRecognitionActive:(BOOL)a3;
- (void)setLiveRecognitionActivities:(id)a3;
- (void)setLiveRecognitionActivity:(id)a3;
- (void)setLiveRecognitionAutomaticFlashlightEnabled:(BOOL)a3;
- (void)setLiveRecognitionChatGPTEnabled:(BOOL)a3;
- (void)setLiveRecognitionDoorsFeedbacks:(id)a3;
- (void)setLiveRecognitionFurnitureFeedbacks:(id)a3;
- (void)setLiveRecognitionOverlayOpen:(BOOL)a3;
- (void)setLiveRecognitionPeopleFeedbacks:(id)a3;
- (void)setLiveRecognitionPointAndSpeakFeedbacks:(id)a3;
- (void)setLiveRecognitionSceneFeedbacks:(id)a3;
- (void)setLiveRecognitionTextFeedbacks:(id)a3;
- (void)setLiveRegionStatusForWebOrApp:(id)a3 status:(id)a4;
- (void)setLocalizationQACaptionShowFilePath:(BOOL)a3;
- (void)setLocalizationQACaptionShowLocalizedString:(BOOL)a3;
- (void)setLocalizationQACaptionShowUSString:(BOOL)a3;
- (void)setLogAXNotificationPosting:(BOOL)a3;
- (void)setMagnifierEnabled:(BOOL)a3 changeTripleClickMenu:(BOOL)a4;
- (void)setMagnifierUsageCount:(int64_t)a3;
- (void)setMigratedSwitchControlMenuItemsPreferenceKeys:(id)a3;
- (void)setMonitorNotificationForPreboardFeature:(unint64_t)a3;
- (void)setNameRecognitionEnabled:(BOOL)a3;
- (void)setPreferredBrailleTableIdentifier:(id)a3 forKeyboardLanguage:(id)a4 keyboardLayout:(id)a5;
- (void)setPulseWidthMaximization:(BOOL)a3;
- (void)setQuickSpeakHighlightOption:(unint64_t)a3;
- (void)setQuickSpeakNubbitNormalizedPosition:(CGPoint)a3;
- (void)setQuickSpeakSentenceHighlightColor:(int64_t)a3;
- (void)setQuickSpeakSentenceHighlightOption:(unint64_t)a3;
- (void)setQuickSpeakUnderlineSentence:(BOOL)a3;
- (void)setQuickSpeakVolume:(float)a3;
- (void)setQuickSpeakWordHighlightColor:(int64_t)a3;
- (void)setReachabilityEnabled:(BOOL)a3;
- (void)setSecurePayAssertionActive:(BOOL)a3;
- (void)setShouldCaptureVisionEngineDiagnosticsToDisk:(BOOL)a3;
- (void)setShouldFlashForAlertInSilentMode:(BOOL)a3;
- (void)setShouldFlashWhileUnlocked:(BOOL)a3;
- (void)setShouldLimitDisplayRefreshRate:(BOOL)a3;
- (void)setShouldPerformValidationsAtRuntime:(BOOL)a3;
- (void)setShouldSpeakMedicalPreamble:(BOOL)a3;
- (void)setShouldStreamToLeftAid:(BOOL)a3;
- (void)setShouldStreamToRightAid:(BOOL)a3;
- (void)setShouldTTYMedicalPreamble:(BOOL)a3;
- (void)setShowMotionCuesInScreenshots:(BOOL)a3;
- (void)setShowSpeechController:(BOOL)a3;
- (void)setSiriAutoUpdateListInitialized:(BOOL)a3;
- (void)setSkipHearingAidMFiAuth:(BOOL)a3;
- (void)setSoundActionsLastModelAccess:(double)a3;
- (void)setSoundDetectionLastModelAccess:(double)a3;
- (void)setSpeakCorrectionsEnabled:(BOOL)a3;
- (void)setSpeechControllerDoubleTapAction:(int64_t)a3;
- (void)setSpeechControllerIdleOpacity:(double)a3;
- (void)setSpeechControllerLongPressAction:(int64_t)a3;
- (void)setSpeechVoiceIdentifier:(id)a3 forLanguage:(id)a4 source:(int64_t)a5;
- (void)setSpeechVoiceIdentifier:(id)a3 forLanguage:(id)a4 sourceKey:(id)a5;
- (void)setSpokenContentShouldUseLanguageDetection:(BOOL)a3;
- (void)setSpokenContentVoiceSelectionForLanguage:(id)a3 selection:(id)a4;
- (void)setStartupSoundEnabled:(BOOL)a3;
- (void)setStickyKeysBeepEnabled:(BOOL)a3;
- (void)setStickyKeysEnabled:(BOOL)a3;
- (void)setStickyKeysShiftToggleEnabled:(BOOL)a3;
- (void)setSupportsAdvancedDisplayFilters:(BOOL)a3;
- (void)setSwitchControlAutoTapTimeout:(double)a3;
- (void)setSwitchControlCameraPointPickerDwellActivationTimeout:(double)a3;
- (void)setSwitchControlCameraPointPickerDwellMovementToleranceRadius:(double)a3;
- (void)setSwitchControlCameraPointPickerMode:(unint64_t)a3;
- (void)setSwitchControlCameraPointPickerMovementToleranceInJoystickMode:(double)a3;
- (void)setSwitchControlCameraPointPickerSensitivity:(double)a3;
- (void)setSwitchControlDebugLoggingEnabled:(BOOL)a3;
- (void)setSwitchControlDwellTime:(double)a3;
- (void)setSwitchControlEnabled:(BOOL)a3;
- (void)setSwitchControlEnabledByOnDeviceEyeTracking:(BOOL)a3;
- (void)setSwitchControlFirstLaunchScanningMode:(int64_t)a3;
- (void)setSwitchControlIgnoreInvalidSwitchConfiguration:(BOOL)a3;
- (void)setSwitchControlIsEnabledAsReceiver:(BOOL)a3;
- (void)setSwitchControlLaunchRecipeUUID:(id)a3;
- (void)setSwitchControlOnDeviceEyeTrackingEnabled:(BOOL)a3;
- (void)setSwitchControlPlatformSwitchedCount:(int64_t)a3;
- (void)setSwitchControlPointPickerSelectionStyle:(int64_t)a3;
- (void)setSwitchControlProfiles:(id)a3;
- (void)setSwitchControlRecipes:(id)a3;
- (void)setSwitchControlRestartScanningAtCurrentKey:(BOOL)a3;
- (void)setSwitchControlScanAfterTapLocation:(int64_t)a3;
- (void)setSwitchControlScanningStyle:(int64_t)a3;
- (void)setSwitchControlSelectedProfile:(id)a3;
- (void)setSwitchControlShouldAlwaysActivateKeyboardKeys:(BOOL)a3;
- (void)setSwitchControlShouldDisallowUSBRestrictedMode:(BOOL)a3;
- (void)setSwitchControlShouldUseShortFirstPage:(BOOL)a3;
- (void)setSwitchControlTapBehavior:(int64_t)a3;
- (void)setSwitchControlUseCameraForPointMode:(BOOL)a3;
- (void)setSwitchControlUserDidReadUSBRestrictedModeAlert:(BOOL)a3;
- (void)setSyncPronunciationsWithCloudKit:(BOOL)a3;
- (void)setTapToSpeakTimeAvailability:(int64_t)a3;
- (void)setTapToSpeakTimeEnabled:(BOOL)a3;
- (void)setTapticTimeInternalFlashScreenEnabled:(BOOL)a3;
- (void)setTapticTimeUsageCount:(int64_t)a3;
- (void)setTeachableMomentsDelayBeforeSending:(double)a3;
- (void)setTouchAccommodationsAllowsSwipeGesturesToBypass:(BOOL)a3;
- (void)setTouchAccommodationsEnabled:(BOOL)a3;
- (void)setTouchAccommodationsHoldDuration:(double)a3;
- (void)setTouchAccommodationsHoldDurationEnabled:(BOOL)a3;
- (void)setTouchAccommodationsIgnoreRepeatDuration:(double)a3;
- (void)setTouchAccommodationsIgnoreRepeatEnabled:(BOOL)a3;
- (void)setTouchAccommodationsSwipeGestureMinimumDistance:(double)a3;
- (void)setTouchAccommodationsTapActivationMethod:(int64_t)a3;
- (void)setTouchAccommodationsTapActivationTimeout:(double)a3;
- (void)setTouchAccommodationsTripleClickConfirmed:(BOOL)a3;
- (void)setTouchAccommodationsUsageConfirmed:(BOOL)a3;
- (void)setUseNewAXBundleLoader:(BOOL)a3;
- (void)setUserDidSelectVoiceForLanguage:(id)a3 sourceKey:(id)a4;
- (void)setValidateSecondPartyApps:(BOOL)a3;
- (void)setValue:(id)a3 forPreferenceKey:(id)a4;
- (void)setVoiceOverActionFeedbackFirstInListOnly:(BOOL)a3;
- (void)setVoiceOverActionsFeedback:(int64_t)a3;
- (void)setVoiceOverActivationWorkaround:(int64_t)a3;
- (void)setVoiceOverAdjustSoundVolumeIndependently:(BOOL)a3;
- (void)setVoiceOverAlternativeVoiceIdentifier:(id)a3 forLanguage:(id)a4;
- (void)setVoiceOverAlwaysTurnOnBluetooth:(BOOL)a3;
- (void)setVoiceOverAlwaysUseNemethCodeForMathEnabled:(BOOL)a3;
- (void)setVoiceOverAudioDuckingEnabled:(BOOL)a3;
- (void)setVoiceOverAudioFollowsHDMIAudio:(BOOL)a3;
- (void)setVoiceOverAutomaticButtonLabels:(BOOL)a3;
- (void)setVoiceOverBSIUsageCount:(int64_t)a3;
- (void)setVoiceOverBannerNotificationOutput:(int64_t)a3;
- (void)setVoiceOverBrailleAlertDisplayDuration:(double)a3;
- (void)setVoiceOverBrailleAlertShowUntilDismissed:(BOOL)a3;
- (void)setVoiceOverBrailleAlertsEnabled:(BOOL)a3;
- (void)setVoiceOverBrailleAutoAdvanceDuration:(double)a3;
- (void)setVoiceOverBrailleFormattingEnabled:(BOOL)a3;
- (void)setVoiceOverBrailleGesturesTypingFeedback:(int64_t)a3;
- (void)setVoiceOverBrailleGradeTwoAutoTranslateEnabled:(BOOL)a3;
- (void)setVoiceOverBrailleKeyDebounceTimeout:(double)a3;
- (void)setVoiceOverBrailleStatusCellPreference:(int64_t)a3;
- (void)setVoiceOverBrailleWordWrapEnabled:(BOOL)a3;
- (void)setVoiceOverCapitalLetterFeedback:(int64_t)a3;
- (void)setVoiceOverContainerOutputFeedback:(int64_t)a3;
- (void)setVoiceOverDelayUntilSpeakUnderTouch:(double)a3;
- (void)setVoiceOverDeletionFeedback:(int64_t)a3;
- (void)setVoiceOverDescribedMedia:(int64_t)a3;
- (void)setVoiceOverDiscoveredSensitiveContentFeedback:(int64_t)a3;
- (void)setVoiceOverDoubleTapInterval:(double)a3;
- (void)setVoiceOverEditAppsActionEnabled:(BOOL)a3;
- (void)setVoiceOverExploreFocusAffectsNativeFocus:(BOOL)a3;
- (void)setVoiceOverFlashlightNotificationsEnabled:(BOOL)a3;
- (void)setVoiceOverHandGesturesActionCustomizations:(id)a3;
- (void)setVoiceOverHandGesturesEnabled:(BOOL)a3;
- (void)setVoiceOverHapticIntensity:(double)a3;
- (void)setVoiceOverHapticsEnabled:(BOOL)a3;
- (void)setVoiceOverHardwareTypingFeedback:(int64_t)a3;
- (void)setVoiceOverHelpMode:(int64_t)a3;
- (void)setVoiceOverHintsEnabled:(BOOL)a3;
- (void)setVoiceOverIgnoreTrackpad:(BOOL)a3;
- (void)setVoiceOverInlineTextCompletionAppearanceFeedback:(int64_t)a3;
- (void)setVoiceOverInlineTextCompletionInsertionFeedback:(int64_t)a3;
- (void)setVoiceOverKeyboardModifierChoice:(int64_t)a3;
- (void)setVoiceOverLinkFeedback:(int64_t)a3;
- (void)setVoiceOverLockedScreenNotificationOutput:(int64_t)a3;
- (void)setVoiceOverMediaDuckingAmount:(double)a3;
- (void)setVoiceOverMediaDuckingMode:(int64_t)a3;
- (void)setVoiceOverMoreContentOutputFeedback:(int64_t)a3;
- (void)setVoiceOverNavigateImagesOption:(int64_t)a3;
- (void)setVoiceOverNavigationDirectionMode:(int64_t)a3;
- (void)setVoiceOverNavigationStyle:(int64_t)a3;
- (void)setVoiceOverNeuralElementFeedback:(int64_t)a3;
- (void)setVoiceOverNumberFeedback:(int64_t)a3;
- (void)setVoiceOverPhoneticsFeedback:(int64_t)a3;
- (void)setVoiceOverPitch:(double)a3;
- (void)setVoiceOverPreferredTVInteractionMode:(int64_t)a3;
- (void)setVoiceOverPrefersFollowFocusNavigationStyle:(BOOL)a3;
- (void)setVoiceOverPunctuationGroup:(id)a3;
- (void)setVoiceOverPunctuationLevel:(int64_t)a3;
- (void)setVoiceOverQuickNavAnnouncementFeedback:(int64_t)a3;
- (void)setVoiceOverRotorSummaryFeedback:(int64_t)a3;
- (void)setVoiceOverRotorUpdatesWithElement:(BOOL)a3;
- (void)setVoiceOverSceneDescriptionsEnabled:(BOOL)a3;
- (void)setVoiceOverSelectedActivity:(id)a3;
- (void)setVoiceOverShouldDisallowUSBRestrictedMode:(BOOL)a3;
- (void)setVoiceOverShouldFocusEverywhere:(BOOL)a3;
- (void)setVoiceOverShouldOutputToHearingAid:(BOOL)a3;
- (void)setVoiceOverShouldSpeakDiscoveredText:(BOOL)a3;
- (void)setVoiceOverShowSoftwareKeyboardWithBraille:(BOOL)a3;
- (void)setVoiceOverSilenceAnnouncements:(BOOL)a3;
- (void)setVoiceOverSleepOnWristDownPreference:(BOOL)a3;
- (void)setVoiceOverSmartScreenCurtainEnabled:(BOOL)a3;
- (void)setVoiceOverSoftwareTypingFeedback:(int64_t)a3;
- (void)setVoiceOverSoundCurtain:(BOOL)a3;
- (void)setVoiceOverSoundEffectsEnabled:(BOOL)a3;
- (void)setVoiceOverSoundVolume:(double)a3;
- (void)setVoiceOverSpeakActionConfirmation:(BOOL)a3;
- (void)setVoiceOverSpeakNonfocusableElementsAfterDelay:(BOOL)a3;
- (void)setVoiceOverSpeakNotificationsEnabled:(BOOL)a3;
- (void)setVoiceOverSpeakSecondsEncoding:(int64_t)a3;
- (void)setVoiceOverSpeakTableColumnRowInformation:(BOOL)a3;
- (void)setVoiceOverSpeakTableHeaders:(BOOL)a3;
- (void)setVoiceOverSpeakingRate:(float)a3 forLanguage:(id)a4;
- (void)setVoiceOverSpeakingRateInRotorEnabled:(BOOL)a3;
- (void)setVoiceOverSpeaksOverTelephoneCalls:(BOOL)a3;
- (void)setVoiceOverTapticChimesAvailability:(int64_t)a3;
- (void)setVoiceOverTapticChimesEnabled:(BOOL)a3;
- (void)setVoiceOverTapticChimesFrequencyEncoding:(int64_t)a3;
- (void)setVoiceOverTapticChimesScheduleEnabled:(BOOL)a3;
- (void)setVoiceOverTapticChimesSoundType:(int64_t)a3;
- (void)setVoiceOverTapticChimesUnity25Active:(BOOL)a3;
- (void)setVoiceOverTapticChimesUnity25SoundType:(int64_t)a3;
- (void)setVoiceOverTapticTimeEncoding:(int64_t)a3;
- (void)setVoiceOverTapticTimeMode:(BOOL)a3;
- (void)setVoiceOverTapticTimeSpeed:(float)a3;
- (void)setVoiceOverTouchBrailleGestureControl:(BOOL)a3;
- (void)setVoiceOverTouchBrailleGesturesDidPlayCalibrationHint:(BOOL)a3;
- (void)setVoiceOverTouchBrailleGesturesLockedOrientation:(int64_t)a3;
- (void)setVoiceOverTouchBrailleGesturesLockedTypingMode:(int64_t)a3;
- (void)setVoiceOverTouchBrailleGesturesShouldUseLockedConfiguration:(BOOL)a3;
- (void)setVoiceOverTouchBrailleShouldReverseDots:(BOOL)a3;
- (void)setVoiceOverTouchBrailleShowGeneralStatus:(BOOL)a3;
- (void)setVoiceOverTouchBrailleShowTextStyleStatus:(BOOL)a3;
- (void)setVoiceOverTouchSingleLetterQuickNavEnabled:(BOOL)a3;
- (void)setVoiceOverTouchUpdateBrailleWithoutConnectedDisplay:(BOOL)a3;
- (void)setVoiceOverTraitFeedback:(int64_t)a3;
- (void)setVoiceOverUseRingerSwitchToControlNotificationOutput:(BOOL)a3;
- (void)setVoiceOverUserDidReadUSBRestrictedModeAlert:(BOOL)a3;
- (void)setVoiceOverVerbosityEmojiFeedback:(int64_t)a3;
- (void)setVoiceOverVerbosityEmojiSuffixEnabled:(BOOL)a3;
- (void)setZoomAdjustZoomLevelKbShortcutEnabled:(BOOL)a3;
- (void)setZoomAlwaysUseWindowedZoomForTyping:(BOOL)a3;
- (void)setZoomAutopannerShouldPanWithAcceleration:(BOOL)a3;
- (void)setZoomControllerColor:(int64_t)a3;
- (void)setZoomDebugDisableZoomLensScaleTransform:(BOOL)a3;
- (void)setZoomDebugShowExternalFocusRect:(BOOL)a3;
- (void)setZoomHandGesturesActionCustomizations:(id)a3;
- (void)setZoomHandGesturesEnabled:(BOOL)a3;
- (void)setZoomIdleSlugOpacity:(double)a3;
- (void)setZoomInStandby:(BOOL)a3;
- (void)setZoomKeyboardShortcutsEnabled:(BOOL)a3;
- (void)setZoomPanOffset:(CGPoint)a3;
- (void)setZoomPanZoomKbShortcutEnabled:(BOOL)a3;
- (void)setZoomPeekZoomEnabled:(BOOL)a3;
- (void)setZoomPeekZoomEverEnabled:(BOOL)a3;
- (void)setZoomPreferencesWereInitialized:(BOOL)a3;
- (void)setZoomPreferredDockPositions:(id)a3;
- (void)setZoomPreferredLensModes:(id)a3;
- (void)setZoomPreferredMaximumZoomScale:(double)a3;
- (void)setZoomResizeZoomWindowKbShortcutEnabled:(BOOL)a3;
- (void)setZoomScale:(double)a3;
- (void)setZoomScrollWheelKbShortcutEnabled:(BOOL)a3;
- (void)setZoomShouldAllowFullscreenAutopanning:(BOOL)a3;
- (void)setZoomShouldFollowFocus:(BOOL)a3;
- (void)setZoomShouldShowSlug:(BOOL)a3;
- (void)setZoomShowWhileMirroring:(BOOL)a3;
- (void)setZoomShowedBanner:(BOOL)a3;
- (void)setZoomSlugDoubleTapAction:(int64_t)a3;
- (void)setZoomSlugNormalizedPosition:(CGPoint)a3;
- (void)setZoomSlugSingleTapAction:(int64_t)a3;
- (void)setZoomSlugTapAndSlideToAdjustZoomLevelEnabled:(BOOL)a3;
- (void)setZoomSlugTripleTapAction:(int64_t)a3;
- (void)setZoomSwitchZoomModeKbShortcutEnabled:(BOOL)a3;
- (void)setZoomTempToggleZoomKbShortcutEnabled:(BOOL)a3;
- (void)setZoomToggleZoomKbShortcutEnabled:(BOOL)a3;
- (void)setZoomTrackpadGestureEnabled:(BOOL)a3;
- (void)setZoomWindowFrame:(CGRect)a3;
- (void)setlastGuidedAccessTimeLimitResetCount:(double)a3;
- (void)setlastGuidedAccessTimeResetCount:(double)a3;
- (void)setlastHearingAidControlPanelTimeResetCount:(double)a3;
- (void)setlastHearingAidHandoffTimeResetCount:(double)a3;
- (void)setlastPlatformSwitchTimeResetCount:(double)a3;
- (void)setliveSpeechMaxRecentsCount:(int64_t)a3;
- (void)updateCustomizableMouse:(id)a3;
- (void)updateSmoothingBufferSize:(id)a3 forEyeTracker:(id)a4;
- (void)voiceOverSetHapticEnabled:(BOOL)a3 forEvent:(id)a4;
- (void)voiceOverSetSoundEnabled:(BOOL)a3 forEvent:(id)a4;
- (void)zoomUserHadLegacyZoomEnabled:(BOOL *)a3 wasZoomedIn:(BOOL *)a4 withScale:(double *)a5;
@end

@implementation AXSettings

+ (AXSettings)sharedInstance
{
  if (qword_1ED653E68 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return qword_1ED653E70;
}

- (void)setValue:(id)a3 forPreferenceKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CFPreferencesCopyAppValue(v7, [(AXSettings *)self _domainNameForDomain:[(AXSettings *)self _domainForPreferenceKey:v7]]);
  v13.receiver = self;
  v13.super_class = AXSettings;
  [(AXBaseSettings *)&v13 setValue:v6 forPreferenceKey:v7];
  if ([PreferenceKeysSupportedByGuestMode containsObject:v7])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v9 = [v8 isEqualToString:v6];
    }

    else
    {
      v9 = 0;
    }

    if (([v8 isEqual:v6] & 1) == 0 && (v9 & 1) == 0)
    {
      v10 = [(AXSettings *)self _keysToIgnoreForFiringGuestPassCloudKitSync];
      v11 = [v10 containsObject:v7];

      if ((v11 & 1) == 0)
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x1E69E4B90], 0, 0, 1u);
      }
    }
  }
}

- (id)domainNameForPreferenceKey:(id)a3
{
  v4 = [(AXSettings *)self _domainForPreferenceKey:a3];

  return [(AXSettings *)self _domainNameForDomain:v4];
}

- (id)allDomainNamesForPreferenceKey:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = [v4 array];
  v7 = [(AXSettings *)self _domainForPreferenceKey:v5];

  v8 = [(AXSettings *)self _domainNameForDomain:v7];
  [v6 axSafelyAddObject:v8];

  return v6;
}

- (unint64_t)_domainForPreferenceKey:(id)a3
{
  v3 = a3;
  v4 = [PreferenceKeyToDomainMap objectForKey:v3];
  v9 = MEMORY[0x1E69E9820];
  v10 = v4;
  v11 = v3;
  v5 = v3;
  v6 = v4;
  AXPerformBlockAsynchronouslyOnMainThread();
  v7 = [v6 intValue];

  return v7;
}

uint64_t __60__AXSettings_LegacyImplementation___domainForPreferenceKey___block_invoke(uint64_t result)
{
  if (!*(result + 32))
  {
    return _AXAssert();
  }

  return result;
}

- (id)preferenceKeyForSelector:(SEL)a3
{
  v3 = SelectorToPreferenceKeyMap;
  v4 = NSStringFromSelector(a3);
  v5 = [v3 objectForKey:v4];

  return v5;
}

- (__CFString)_domainNameForDomain:(unint64_t)a3
{
  switch(a3)
  {
    case 1uLL:
    case 6uLL:
      v5 = AXCPCopySharedResourcesPreferencesDomainForDomain();

      return CFAutorelease(v5);
    case 2uLL:
      v3 = MEMORY[0x1E69E4F78];
      goto LABEL_19;
    case 3uLL:
      v3 = MEMORY[0x1E69E4FA8];
      goto LABEL_19;
    case 4uLL:
      v3 = MEMORY[0x1E69E4C70];
      goto LABEL_19;
    case 5uLL:
      v3 = MEMORY[0x1E69E4D78];
      goto LABEL_19;
    case 7uLL:
      v3 = MEMORY[0x1E69E4D90];
      goto LABEL_19;
    case 8uLL:
      v3 = MEMORY[0x1E69E4EE8];
      goto LABEL_19;
    case 9uLL:
      v3 = MEMORY[0x1E69E4F30];
      goto LABEL_19;
    case 0xAuLL:
      v3 = MEMORY[0x1E69E4F10];
      goto LABEL_19;
    case 0xBuLL:
      v3 = MEMORY[0x1E69E4E18];
      goto LABEL_19;
    case 0xCuLL:
      v3 = MEMORY[0x1E69E4F00];
      goto LABEL_19;
    case 0xDuLL:
      v3 = MEMORY[0x1E69E4F60];
      goto LABEL_19;
    case 0xEuLL:
      v3 = MEMORY[0x1E69E4D48];
      goto LABEL_19;
    case 0xFuLL:
      v3 = MEMORY[0x1E69E4BB8];
LABEL_19:
      result = *v3;
      break;
    default:
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
      _AXAssert();

      result = 0;
      break;
  }

  return result;
}

- (id)_migratePreferenceIfNecessary:(id)a3
{
  v4 = a3;
  v5 = [(AXSettings *)self _domainNameForDomain:1];
  v6 = CFPreferencesCopyAppValue(v4, v5);
  if (v6)
  {
    [(AXSettings *)self setValue:v6 forPreferenceKey:v4];
    CFPreferencesSetAppValue(v4, 0, v5);
  }

  return v6;
}

- (id)valueForPreferenceKey:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AXSettings;
  v5 = [(AXBaseSettings *)&v9 valueForPreferenceKey:v4];
  v6 = [(AXSettings *)self _domainForPreferenceKey:v4];
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 == 1;
  }

  if (!v7)
  {
    v5 = [(AXSettings *)self _migratePreferenceIfNecessary:v4];
  }

  return v5;
}

- (void)postInit
{
  if (postInit_onceToken != -1)
  {
    [AXSettings(LegacyImplementation) postInit];
  }

  [(AXSettings *)self _listenForAccessibilitySupportPassthroughs];
}

- (void)nukeAll
{
  v7 = *MEMORY[0x1E69E9840];
  v5[2] = xmmword_18B2F8680;
  v5[3] = unk_18B2F8690;
  v5[4] = xmmword_18B2F86A0;
  v5[5] = unk_18B2F86B0;
  v5[0] = xmmword_18B2F8660;
  v5[1] = unk_18B2F8670;
  v6 = 12;
  v3 = AXLogSettings();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_18B15E000, v3, OS_LOG_TYPE_INFO, "nuking all AX settings!", v4, 2u);
  }

  [(AXSettings *)self nukePrefsForDomains:v5 numDomains:13];
}

- (void)nukePrefsForDomains:(unint64_t *)a3 numDomains:(unint64_t)a4
{
  if (a4)
  {
    v7 = 0;
    v8 = *MEMORY[0x1E695E8B8];
    v9 = *MEMORY[0x1E695E8B0];
    v10 = *MEMORY[0x1E695E8A8];
    do
    {
      v11 = [(AXSettings *)self _domainNameForDomain:a3[v7]];
      v12 = CFPreferencesCopyKeyList(v11, v8, v9);
      if (v12)
      {
        v13 = v12;
        CFPreferencesSetMultiple(0, v12, v11, v8, v10);
        Count = CFArrayGetCount(v13);
        if (Count >= 1)
        {
          v15 = Count;
          for (i = 0; i != v15; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v13, i);
            if (ValueAtIndex)
            {
              [(AXBaseSettings *)self postNotificationForPreferenceKey:ValueAtIndex];
            }
          }
        }

        CFRelease(v13);
      }

      ++v7;
    }

    while (v7 != a4);
  }
}

- (void)_listenForAccessibilitySupportPassthroughs
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = *MEMORY[0x1E69E4DD8];

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _accessibilitySupportSettingDidChange, v4, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)setLaserZoomPanningStyle:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"LaserZoomPanningStyle"];
}

- (void)setAssistiveTouchAlwaysShowMenuEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchAlwaysShowMenu"];
}

- (void)setSupportsAdvancedDisplayFilters:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"kAXSupportsAdvancedDisplayFiltersPreference"];
}

- (void)setAssistiveTouchOpenMenuSwaggleEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchOpenMenuSwaggle"];
}

- (void)setAssistiveTouchMouseBehavesLikeFinger:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchMouseBehavesLikeFinger"];
}

- (void)setAssistiveTouchMouseKeysEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchMouseKeys"];
}

- (void)setAssistiveTouchMouseKeysOptionToggleEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchMouseKeysOptionToggle"];
}

- (void)setAssistiveTouchMouseKeysUseMainKeyboardKeys:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchMouseKeysUseMainKeyboardKeys"];
}

- (void)setAssistiveTouchMouseKeysDelay:(int64_t)a3
{
  if ((a3 & ~(a3 >> 63)) >= 4)
  {
    v4 = 4;
  }

  else
  {
    v4 = a3 & ~(a3 >> 63);
  }

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
  [(AXSettings *)self setValue:v5 forPreferenceKey:@"AssistiveTouchMouseKeysDelay"];
}

- (void)setAssistiveTouchMouseAlwaysShowSoftwareKeyboardEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchMouseAlwaysShowSoftwareKeyboard"];
}

- (BOOL)assistiveTouchMouseAllowAppleBluetoothDevicesPairing
{
  v2 = AXIsInternalInstall();
  if (v2)
  {

    LOBYTE(v2) = AXSettingsReturnBoolValue(@"AssistiveTouchMouseAllowAppleBluetoothDevicesPairing", 0);
  }

  return v2;
}

- (void)setAssistiveTouchMouseAllowAppleBluetoothDevicesPairing:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchMouseAllowAppleBluetoothDevicesPairing"];
}

- (void)setAssistiveTouchMouseKeysMaxSpeed:(int64_t)a3
{
  if ((a3 & ~(a3 >> 63)) >= 10)
  {
    v4 = 10;
  }

  else
  {
    v4 = a3 & ~(a3 >> 63);
  }

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
  [(AXSettings *)self setValue:v5 forPreferenceKey:@"AssistiveTouchMouseKeysMaxSpeed"];
}

- (void)setAssistiveTouchSpeed:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchSpeed"];
}

- (void)setAssistiveTouchVirtualTrackpadEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchVirtualTrackpadEnabled"];
}

- (void)setAssistiveTouchVirtualTrackpadSpeed:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchVirtualTrackpadSpeed"];
}

- (void)setAssistiveTouchVirtualTrackpadScrollSpeed:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchVirtualTrackpadScrollSpeed"];
}

- (void)setAssistiveTouchVirtualTrackpadHoldDuration:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchVirtualTrackpadHoldDuration"];
}

- (void)setAssistiveTouchVirtualTrackpadFadeDelay:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchVirtualTrackpadFadeDelay"];
}

- (void)setAssistiveTouchVirtualTrackpadBorderColor:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchVirtualTrackpadBorderColor"];
}

- (void)setAssistiveTouchVirtualTrackpadInnerColor:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchVirtualTrackpadInnerColor"];
}

- (void)setAssistiveTouchVirtualTrackpadBorderOpacity:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchVirtualTrackpadBorderOpacity"];
}

- (void)setAssistiveTouchVirtualTrackpadInnerOpacity:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchVirtualTrackpadInnerOpacity"];
}

- (double)assistiveTouchVirtualTrackpadBorderWidth
{
  IsPad = AXDeviceIsPad();
  v3 = 40.0;
  if (!IsPad)
  {
    v3 = 25.0;
  }

  return AXSettingsReturnDoubleValue(@"AssistiveTouchVirtualTrackpadBorderWidth", v3);
}

- (void)setAssistiveTouchVirtualTrackpadBorderWidth:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchVirtualTrackpadBorderWidth"];
}

- (void)setAssistiveTouchVirtualTrackpadScrollToggleEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchVirtualTrackpadScrollToggle"];
}

- (void)setAssistiveTouchVirtualTrackpadFullScreenToggleEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchVirtualTrackpadFullScreenToggle"];
}

- (id)_gesturesForPreferenceKeyMigratingIfNecessary:(id)a3
{
  v31[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(AXSettings *)self valueForPreferenceKey:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = MEMORY[0x1E696ACD0];
    v7 = MEMORY[0x1E695DFD8];
    v31[0] = objc_opt_class();
    v31[1] = objc_opt_class();
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
    v9 = [v7 setWithArray:v8];
    v29 = 0;
    v10 = [v6 unarchivedObjectOfClasses:v9 fromData:v5 error:&v29];
    v11 = v29;

    if (v11)
    {
      v12 = AXLogSettings();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [AXSettings(LegacyImplementation) _gesturesForPreferenceKeyMigratingIfNecessary:];
      }
    }

    goto LABEL_24;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (v5)
    {
      _AXAssert();
    }

    goto LABEL_22;
  }

  if (![v5 count])
  {
    v10 = v5;
    goto LABEL_24;
  }

  v13 = [v5 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v24 = [v5 firstObject];
    _AXAssert();
  }

  v15 = [v5 firstObject];
  objc_opt_class();
  v16 = objc_opt_isKindOfClass();

  if ((v16 & 1) == 0)
  {
LABEL_22:
    v10 = 0;
    goto LABEL_24;
  }

  v10 = [MEMORY[0x1E695DF70] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v17 = v5;
  v18 = [v17 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v26;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [AXNamedReplayableGesture gestureWithLegacyFormatDictionary:*(*(&v25 + 1) + 8 * i)];
        [v10 addObject:v22];
      }

      v19 = [v17 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v19);
  }

  [(AXSettings *)self _setGestures:v10 forPreferenceKey:v4];
LABEL_24:

  return v10;
}

- (void)_setGestures:(id)a3 forPreferenceKey:(id)a4
{
  v6 = MEMORY[0x1E696ACC8];
  v11 = 0;
  v7 = a4;
  v8 = [v6 archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v11];
  v9 = v11;
  [(AXSettings *)self setValue:v8 forPreferenceKey:v7];

  if (v9)
  {
    v10 = AXLogSettings();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [AXSettings(LegacyImplementation) _gesturesForPreferenceKeyMigratingIfNecessary:];
    }
  }
}

- (void)setAssistiveTouchPreferredPointPicker:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchPreferredPointPickerPreference"];
}

- (int64_t)assistiveTouchPreferredPointPicker
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"AssistiveTouchPreferredPointPickerPreference"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (void)setAssistiveTouchScannerCursorHighVisibilityEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchCursorHighVisibilityPreference"];
}

- (void)setAssistiveTouchScanningMode:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchScanningModePreference"];
}

- (int64_t)assistiveTouchScanningMode
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"AssistiveTouchScanningModePreference"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAssistiveTouchGroupElementsEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchScanShouldGroupElements"];
}

- (BOOL)assistiveTouchGroupElementsEnabled
{
  v2 = [(AXSettings *)self assistiveTouchScannerSpeechEnabled]^ 1;

  return AXSettingsReturnBoolValue(@"AssistiveTouchScanShouldGroupElements", v2);
}

- (void)setAssistiveTouchScannerCompactMenuEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchScanShouldUseCompactMenu"];
}

- (void)setAssistiveTouchScannerMenuLabelsEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchScannerMenuLabelsEnabled"];
}

- (void)setAssistiveTouchAxisSweepSpeed:(double)a3
{
  if (*MEMORY[0x1E6988838] >= a3)
  {
    a3 = *MEMORY[0x1E6988838];
  }

  if (*MEMORY[0x1E6988838] + (*MEMORY[0x1E6988830] - *MEMORY[0x1E6988840]) * *MEMORY[0x1E6988828] < a3)
  {
    a3 = *MEMORY[0x1E6988838] + (*MEMORY[0x1E6988830] - *MEMORY[0x1E6988840]) * *MEMORY[0x1E6988828];
  }

  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchAxisSweepSpeed"];
}

- (void)setAssistiveTouchActionRepeatInterval:(double)a3
{
  if (*MEMORY[0x1E6988820] >= a3)
  {
    a3 = *MEMORY[0x1E6988820];
  }

  if (*MEMORY[0x1E6988818] < a3)
  {
    a3 = *MEMORY[0x1E6988818];
  }

  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchActionRepeatIntervalPreference"];
}

- (void)setAssistiveTouchActionRepeatEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchActionRepeatEnabledPreference"];
}

- (void)setAssistiveTouchDelayAfterInput:(double)a3
{
  if (*MEMORY[0x1E6988848] < a3)
  {
    a3 = *MEMORY[0x1E6988848];
  }

  if (*MEMORY[0x1E6988850] >= a3)
  {
    a3 = *MEMORY[0x1E6988850];
  }

  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchDelayAfterInputPreference"];
}

- (void)setAssistiveTouchDelayAfterInputEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchDelayAfterInputEnabledPreference"];
}

- (void)setAssistiveTouchInputHoldDuration:(double)a3
{
  if (*MEMORY[0x1E6988878] < a3)
  {
    a3 = *MEMORY[0x1E6988878];
  }

  if (*MEMORY[0x1E6988880] >= a3)
  {
    a3 = *MEMORY[0x1E6988880];
  }

  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchInputHoldDurationPreference"];
}

- (void)setAssistiveTouchInputHoldEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchInputHoldEnabledPreference"];
}

- (void)setAssistiveTouchLongPressDuration:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchLongPressDurationPreference"];
}

- (void)setAssistiveTouchLongPressEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchLongPressDurationEnabledPreference"];
}

- (void)setAssistiveTouchLongPressPauseScanningEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchLongPressPauseScanningEnabledPreference"];
}

- (void)setAssistiveTouchInputCoalescingDuration:(double)a3
{
  if (*MEMORY[0x1E6988868] < a3)
  {
    a3 = *MEMORY[0x1E6988868];
  }

  if (*MEMORY[0x1E6988870] >= a3)
  {
    a3 = *MEMORY[0x1E6988870];
  }

  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchInputCoalescingDurationPreference"];
}

- (void)setAssistiveTouchInputCoalescingEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchInputCoalescingEnabledPreference"];
}

- (void)setAssistiveTouchStepInterval:(double)a3
{
  if (*MEMORY[0x1E6988920] >= a3)
  {
    a3 = *MEMORY[0x1E6988920];
  }

  if (*MEMORY[0x1E6988918] < a3)
  {
    a3 = *MEMORY[0x1E6988918];
  }

  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchStepInterval"];
}

- (void)setAssistiveTouchScanTimeoutEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchScannerScanTimeoutEnabled"];
}

- (void)setAssistiveTouchScanTimeout:(double)a3
{
  if (*MEMORY[0x1E6988908] > a3)
  {
    a3 = *MEMORY[0x1E6988908];
  }

  if (a3 >= *MEMORY[0x1E6988900])
  {
    a3 = *MEMORY[0x1E6988900];
  }

  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchScannerScanTimeout"];
}

- (void)setAssistiveTouchScanCycles:(int64_t)a3
{
  v4 = *MEMORY[0x1E6988898];
  if (*MEMORY[0x1E6988898] <= a3)
  {
    v4 = a3;
  }

  if (v4 >= *MEMORY[0x1E6988890])
  {
    v5 = *MEMORY[0x1E6988890];
  }

  else
  {
    v5 = v4;
  }

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
  [(AXSettings *)self setValue:v6 forPreferenceKey:@"AssistiveTouchScanCyclesPreference"];
}

- (void)setAssistiveTouchScannerSoundEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchScannerSoundEnabled"];
}

- (void)setAssistiveTouchScannerSpeechRate:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:kAXSAssistiveTouchScannerSpeechRatePreference];
}

- (void)setIgnoreTrackpad:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x1E69E9840];
  v5 = AXLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_DEFAULT, "Setting ignore trackpad value: %@", &v8, 0xCu);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [(AXSettings *)self setValue:v7 forPreferenceKey:@"AXSIgnoreTrackpad"];
}

- (void)setAssistiveTouchSwitches:(id)a3
{
  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchSwitchesPreference"];
}

- (NSSet)assistiveTouchSwitches
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"AssistiveTouchSwitchesPreference"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v3 = MEMORY[0x1E696ACD0], v4 = objc_opt_class(), [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "secureUnarchiveData:withExpectedClass:otherAllowedClasses:", v2, v4, v5), v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    v6 = [MEMORY[0x1E695DFD8] set];
  }

  return v6;
}

- (void)setSwitchControlProfiles:(id)a3
{
  if (a3)
  {
    v7 = 0;
    v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v7];
    v5 = v7;
    if (v5)
    {
      v6 = SWCHLogSettings();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [AXSettings(LegacyImplementation) setSwitchControlProfiles:];
      }
    }

    [(AXSettings *)self setValue:v4 forPreferenceKey:@"SwitchControlProfilesPreference"];
  }

  else
  {
    v5 = SWCHLogSettings();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [AXSettings(LegacyImplementation) setSwitchControlProfiles:];
    }
  }
}

- (NSArray)switchControlProfiles
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"SwitchControlProfilesPreference"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v3 = MEMORY[0x1E696ACD0], v4 = objc_opt_class(), [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "secureUnarchiveData:withExpectedClass:otherAllowedClasses:", v2, v4, v5), v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    v6 = [MEMORY[0x1E695DEC8] array];
  }

  return v6;
}

- (void)removeAllSwitchControlProfiles
{
  v3 = SWCHLogSettings();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_18B15E000, v3, OS_LOG_TYPE_INFO, "Removing all Switch Control profiles.", v4, 2u);
  }

  [(AXSettings *)self setValue:0 forPreferenceKey:@"SwitchControlProfilesPreference"];
}

- (void)setSwitchControlSelectedProfile:(id)a3
{
  v11 = a3;
  v4 = [(AXSettings *)self assistiveTouchSwitches];
  v5 = [v4 mutableCopy];
  v6 = [v4 objectsPassingTest:&__block_literal_global_2073];
  [v5 minusSet:v6];
  [(AXSettings *)self setAssistiveTouchSwitches:v5];
  v7 = [(AXSettings *)self switchControlSelectedProfile];
  v8 = v7;
  if (v7 && ([v7 isEqual:v11] & 1) == 0)
  {
    [v8 updatePreferences];
    SCATUpdateProfileToSettings(v8);
  }

  if (v11)
  {
    v9 = [v11 uuid];
    v10 = [v9 UUIDString];
    [(AXSettings *)self setValue:v10 forPreferenceKey:@"AXSSwitchControlSelectedProfilePreference"];

    [(AXSettings *)self applySwitchControlProfile:v11];
    [(AXSettings *)self _updateSwitchControlSelectedProfile:v11];
  }

  else
  {
    [(AXSettings *)self setValue:0 forPreferenceKey:@"AXSSwitchControlSelectedProfilePreference"];
  }
}

uint64_t __68__AXSettings_LegacyImplementation__setSwitchControlSelectedProfile___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 source];
  v4 = [v3 isEqualToString:@"SwitchSourceRemote"];

  v5 = [v2 remoteSwitchIdentifier];

  v6 = [v2 remoteDeviceIdentifier];

  if (v5)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

- (AXSCATProfile)switchControlSelectedProfile
{
  v3 = [(AXSettings *)self valueForPreferenceKey:@"AXSSwitchControlSelectedProfilePreference"];
  if (v3)
  {
    v4 = [(AXSettings *)self switchControlProfiles];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __64__AXSettings_LegacyImplementation__switchControlSelectedProfile__block_invoke;
    v8[3] = &unk_1E71EC368;
    v9 = v3;
    v5 = [v4 ax_filteredArrayUsingBlock:v8];
    v6 = [v5 firstObject];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __64__AXSettings_LegacyImplementation__switchControlSelectedProfile__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:*(a1 + 32)];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (id)switchControlProfileWhitelistedKeys
{
  v19[2] = *MEMORY[0x1E69E9840];
  v19[0] = @"AssistiveTouchSwitchesPreference";
  v19[1] = @"SCIgnoreInvalidSwitchConfiguration";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v18[0] = @"SCRecipes";
  v18[1] = @"SCLaunchRecipeUUID";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v17[0] = v2;
  v17[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v5 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 addObjectsFromArray:{*(*(&v12 + 1) + 8 * i), v12}];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)applySwitchControlProfile:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SWCHLogSettings();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = [v4 uuid];
      *buf = 138412290;
      v23 = v7;
      _os_log_impl(&dword_18B15E000, v6, OS_LOG_TYPE_INFO, "Applying Switch Control profile uuid: %@.", buf, 0xCu);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [(AXSettings *)self switchControlProfileWhitelistedKeys];
    v8 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v8)
    {
      v10 = v8;
      v11 = *v19;
      *&v9 = 138412546;
      v17 = v9;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = [v4 preferences];
          v15 = [v14 objectForKey:v13];

          v16 = SWCHLogSettings();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = v17;
            v23 = v13;
            v24 = 2112;
            v25 = v15;
            _os_log_impl(&dword_18B15E000, v16, OS_LOG_TYPE_INFO, "\tKey: %@\n\tValue:%@", buf, 0x16u);
          }

          [(AXSettings *)self setValue:v15 forPreferenceKey:v13];
        }

        v10 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v10);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [AXSettings(LegacyImplementation) applySwitchControlProfile:];
  }
}

- (void)_updateSwitchControlSelectedProfile:(id)a3
{
  v4 = [a3 preferences];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__AXSettings_LegacyImplementation___updateSwitchControlSelectedProfile___block_invoke;
  v5[3] = &unk_1E71EC390;
  v5[4] = self;
  [v4 enumerateKeysAndObjectsUsingBlock:v5];
}

void __72__AXSettings_LegacyImplementation___updateSwitchControlSelectedProfile___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if ([v11 isEqualToString:kAXSSwitchControlUseExtendedKeyboardPredictionsEnabledPreference])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_14;
    }

    v6 = [v5 BOOLValue];
    v7 = +[AXSettings sharedInstance];
    [v7 setSwitchControlShouldUseExtendedKeyboardPredictions:v6];
LABEL_13:

    goto LABEL_14;
  }

  if ([v11 isEqualToString:kAXSAssistiveTouchScannerSpeechEnabledPreference])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_14;
    }

    v8 = [v5 BOOLValue];
    v7 = +[AXSettings sharedInstance];
    [v7 setAssistiveTouchScannerSpeechEnabled:v8];
    goto LABEL_13;
  }

  if ([v11 isEqualToString:kAXSAssistiveTouchScannerSpeechShouldSpeakTraitsEnabledPreference])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_14;
    }

    v9 = [v5 BOOLValue];
    v7 = +[AXSettings sharedInstance];
    [v7 setAssistiveTouchScannerSpeechShouldSpeakTraits:v9];
    goto LABEL_13;
  }

  if ([v11 isEqualToString:kAXSAssistiveTouchScannerSpeechIsInterruptedByScanningEnabledPreference])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_14;
    }

    v10 = [v5 BOOLValue];
    v7 = +[AXSettings sharedInstance];
    [v7 setAssistiveTouchScannerSpeechIsInterruptedByScanning:v10 ^ 1u];
    goto LABEL_13;
  }

  if ([v11 isEqualToString:kAXSAssistiveTouchScannerSpeechVoiceSelection])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) setAssisitveTouchScannerSpeechVoiceSelection:v5];
    }
  }

  else
  {
    [*(a1 + 32) setValue:v5 forPreferenceKey:v11];
  }

LABEL_14:
}

- (NSString)assisitveTouchScannerSpeechVoiceIdentifier
{
  v3 = +[AXLanguageManager sharedInstance];
  v4 = [v3 systemLanguageID];

  v5 = [(AXSettings *)self speechVoiceIdentifierForLanguage:v4 sourceKey:*MEMORY[0x1E6988650] exists:0];

  return v5;
}

- (void)setAssisitveTouchScannerSpeechVoiceSelection:(id)a3
{
  v4 = a3;
  v5 = +[AXLanguageManager sharedInstance];
  v6 = [v5 systemLanguageID];

  [(AXSettings *)self setDefaultVoiceSelection:v4 forLanguage:v6 sourceKey:*MEMORY[0x1E6988650]];
}

- (AXCVoiceSelection)assisitveTouchScannerSpeechVoiceSelection
{
  v2 = +[AXLanguageManager sharedInstance];
  v3 = [v2 systemLanguageID];

  v4 = +[AXSettings sharedInstance];
  v5 = [v4 assistiveTouchDefaultVoiceSelections];
  v6 = [v5 objectForKeyedSubscript:v3];

  return v6;
}

- (void)setAssistiveTouchCameraPointPickerSwitches:(id)a3
{
  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchCameraPointPickerSwitchesPreference"];
}

- (NSSet)assistiveTouchCameraPointPickerSwitches
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"AssistiveTouchCameraPointPickerSwitchesPreference"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v3 = MEMORY[0x1E696ACD0], v4 = objc_opt_class(), [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "secureUnarchiveData:withExpectedClass:otherAllowedClasses:", v2, v4, v5), v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    v6 = [MEMORY[0x1E695DFD8] set];
  }

  return v6;
}

- (void)setAssistiveTouchCursorColor:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchCursorColorPreference"];
}

- (void)setAssistiveTouchMousePointerColor:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchMousePointerColorPreference"];
}

- (void)setAssistiveTouchMousePointerSizeMultiplier:(double)a3
{
  if (*MEMORY[0x1E69888E8] > a3)
  {
    a3 = *MEMORY[0x1E69888E8];
  }

  if (a3 >= *MEMORY[0x1E69888E0])
  {
    a3 = *MEMORY[0x1E69888E0];
  }

  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchMousePointerSizeMultiplierPreference"];
}

- (void)setAssistiveTouchMousePointerTimeoutEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchMousePointerTimeoutEnabledPreference"];
}

- (void)setAssistiveTouchMousePointerTimeout:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchMousePointerTimeoutPreference"];
}

- (void)setAssistiveTouchMouseDwellControlEnabled:(BOOL)a3
{
  [(AXSettings *)self _setAssistiveTouchMouseDwellControlEnabledPreferenceOnly:a3];
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 assistiveTouchHeadTrackingEnabled];

  if (v4)
  {
    v5 = +[AXSettings sharedInstance];
    [v5 setAssistiveTouchMouseDwellControlChangedDuringHeadTracking:1];
  }
}

- (void)_setAssistiveTouchMouseDwellControlEnabledPreferenceOnly:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchMouseDwellControlEnabledPreference"];
}

- (void)setAssistiveTouchMouseDwellControlChangedDuringHeadTracking:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSAssistiveTouchMouseDwellControlChangedDuringHeadTracking"];
}

- (void)_assignActionToUnsetHotCorner:(id)a3
{
  v28 = a3;
  v4 = [(AXSettings *)self assistiveTouchMouseDwellControlCornerCustomization];
  v5 = [v4 mutableCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v8 = v7;

  v9 = *MEMORY[0x1E6988370];
  v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E6988370]];
  if (!v10 || (v11 = v10, [v8 objectForKeyedSubscript:v9], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", @"__NONE__"), v12, v11, (v13 & 1) != 0) || (v9 = *MEMORY[0x1E6988378], objc_msgSend(v8, "objectForKeyedSubscript:", *MEMORY[0x1E6988378]), (v14 = objc_claimAutoreleasedReturnValue()) == 0) || (v15 = v14, objc_msgSend(v8, "objectForKeyedSubscript:", v9), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToString:", @"__NONE__"), v16, v15, (v17 & 1) != 0) || (v9 = *MEMORY[0x1E6988360], objc_msgSend(v8, "objectForKeyedSubscript:", *MEMORY[0x1E6988360]), (v18 = objc_claimAutoreleasedReturnValue()) == 0) || (v19 = v18, objc_msgSend(v8, "objectForKeyedSubscript:", v9), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isEqualToString:", @"__NONE__"), v20, v19, (v21 & 1) != 0) || (v9 = *MEMORY[0x1E6988368], objc_msgSend(v8, "objectForKeyedSubscript:", *MEMORY[0x1E6988368]), (v22 = objc_claimAutoreleasedReturnValue()) == 0) || (v23 = v22, objc_msgSend(v8, "objectForKeyedSubscript:", v9), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "isEqualToString:", @"__NONE__"), v24, v23, v25))
  {
    v26 = v9;
    if (v26)
    {
      v27 = v26;
      [v8 setObject:v28 forKeyedSubscript:v26];
      [(AXSettings *)self setAssistiveTouchMouseDwellControlCornerCustomization:v8];
    }
  }
}

- (void)setAssistiveTouchMouseOnDeviceEyeTrackingEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = +[AXSettings sharedInstance];
  v6 = [v5 assistiveTouchHeadTrackingEnabled];

  if (v6)
  {
    v7 = !v3;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = +[AXSettings sharedInstance];
    [v8 setAssistiveTouchHeadTrackingEnabled:0];
  }

  v9 = +[AXSettings sharedInstance];
  v10 = [v9 assistiveTouchEnabled];

  v11 = +[AXSettings sharedInstance];
  v12 = [v11 assistiveTouchEnabledByOnDeviceEyeTracking];

  if ((v10 & 1) == 0 && v3)
  {
    v13 = +[AXSettings sharedInstance];
    [v13 setAssistiveTouchEnabled:1];

    v14 = +[AXSettings sharedInstance];
    [v14 setAssistiveTouchEnabledByOnDeviceEyeTracking:1];

    v15 = +[AXSettings sharedInstance];
    [v15 setSwitchControlEnabled:0];

    v16 = +[AXSettings sharedInstance];
    [v16 setSwitchControlEnabledByOnDeviceEyeTracking:0];

    v17 = +[AXSettings sharedInstance];
    [v17 setSwitchControlOnDeviceEyeTrackingEnabled:0];
LABEL_12:

    goto LABEL_13;
  }

  if ((v10 & v12) == 1 && !v3)
  {
    v18 = +[AXSettings sharedInstance];
    [v18 setAssistiveTouchEnabled:0];

    v17 = +[AXSettings sharedInstance];
    [v17 setAssistiveTouchMouseDwellControlEnabled:0];
    goto LABEL_12;
  }

LABEL_13:
  v19 = +[AXSettings sharedInstance];
  v20 = v19;
  if (v3)
  {
    [v19 setAssistiveTouchMouseDwellControlEnabled:1];

    v21 = +[AXSettings sharedInstance];
    [v21 setAssistiveTouchVirtualTrackpadEnabled:0];

    v22 = [(AXSettings *)self valueForPreferenceKey:@"AssistiveTouchMouseOnDeviceEyeTrackingEnabledPreference"];

    if (!v22)
    {
      [(AXSettings *)self _assignActionToUnsetHotCorner:@"AXAssistiveTouchIconTypeCalibrateOnDeviceEyeTracking"];
      [(AXSettings *)self _assignActionToUnsetHotCorner:@"AXAssistiveTouchIconTypeHome"];
    }
  }

  else
  {
    v23 = [v19 assistiveTouchBubbleModeEnabled];

    if (v23)
    {
      v24 = +[AXSettings sharedInstance];
      [v24 setAssistiveTouchBubbleModeEnabled:0];
    }
  }

  v25 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [(AXSettings *)self setValue:v25 forPreferenceKey:@"AssistiveTouchMouseOnDeviceEyeTrackingEnabledPreference"];

  [AXTripleClickHelpers registerObserverForTripleClickOption:42];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v27 = *MEMORY[0x1E69E4E30];

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v27, 0, 0, 1u);
}

- (void)setAssistiveTouchMouseOnDeviceEyeTrackingOnboardingCompleted:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchMouseOnDeviceEyeTrackingOnboardingCompletedPreference"];
}

- (void)setAssistiveTouchMouseOnDeviceEyeTrackingEnrollmentCompleted:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchMouseOnDeviceEyeTrackingEnrollmentCompletedPreference"];
}

- (NSArray)assistiveTouchMouseOnDeviceEyeTrackingCalibratedValues
{
  v2 = [MEMORY[0x1E695DEC8] array];
  v3 = objc_opt_class();
  v4 = AXSettingsReturnObjectValueWithClass(@"AssistiveTouchMouseOnDeviceEyeTrackingCalibratedValuesPreference", v2, v3);

  return v4;
}

- (NSDictionary)assistiveTouchMouseOnDeviceEyeTrackingEnrollmentPointToGazePointMap
{
  v2 = [MEMORY[0x1E695DF20] dictionary];
  v3 = objc_opt_class();
  v4 = AXSettingsReturnObjectValueWithClass(@"AssistiveTouchMouseOnDeviceEyeTrackingEnrollmentPointToGazePointMapPreference", v2, v3);

  return v4;
}

- (void)setAssistiveTouchForceOnDeviceEyeTrackingExperience:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchForceOnDeviceEyeTrackingExperiencePreference"];
}

- (void)setAssistiveTouchOnDeviceEyeTrackingSmoothingBufferSize:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchOnDeviceEyeTrackingSmoothingBufferSizePreference"];
}

- (void)setAssistiveTouchOnDeviceEyeTrackingAutoHideEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSAssistiveTouchOnDeviceEyeTrackingAutoHideEnabled"];
}

- (void)setAssistiveTouchOnDeviceEyeTrackingAutoHideTimeout:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSAssistiveTouchOnDeviceEyeTrackingAutoHideTimeout"];
}

- (void)setAssistiveTouchOnDeviceEyeTrackingAutoHideOpacity:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSAssistiveTouchOnDeviceEyeTrackingAutoHideOpacity"];
}

- (void)setAssistiveTouchEnabledByOnDeviceEyeTracking:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSAssistiveTouchEnabledByOnDeviceEyeTracking"];
}

- (void)setAssistiveTouchMouseOnDeviceEyeTrackingShouldShowUncalibratedPoints:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchMouseOnDeviceEyeTrackingShouldShowUncalibratedPoints"];
}

- (void)setAssistiveTouchOnDeviceEyeTrackingShouldUseWeightedAverages:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchOnDeviceEyeTrackingShouldUseWeightedAverages"];
}

- (void)setAssistiveTouchOnDeviceEyeTrackingShouldUseMotionFilter:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchOnDeviceEyeTrackingShouldUseMotionFilte"];
}

- (void)setAssistiveTouchOnDeviceEyeTrackingShouldUseGaussianBlur:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchOnDeviceEyeTrackingShouldUseGaussianBlur"];
}

- (void)setAssistiveTouchMouseOnDeviceEyeTrackingCalibrationStrategy:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchMouseOnDeviceEyeTrackingCalibrationStrategyPreference"];
}

- (BOOL)assistiveTouchHeadTrackingWasPreviouslyEnabled
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"AXSAssistiveTouchHeadTrackingEnabled"];
  v3 = v2 != 0;

  return v3;
}

- (void)setAssistiveTouchHeadTrackingEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = +[AXSettings sharedInstance];
  v6 = [v5 switchControlOnDeviceEyeTrackingEnabled];

  if (v6)
  {
    v7 = !v3;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = +[AXSettings sharedInstance];
    [v8 setSwitchControlOnDeviceEyeTrackingEnabled:0];
  }

  v9 = +[AXSettings sharedInstance];
  v10 = [v9 assistiveTouchMouseOnDeviceEyeTrackingEnabled];

  if (v10)
  {
    v11 = !v3;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = +[AXSettings sharedInstance];
    [v12 setAssistiveTouchMouseOnDeviceEyeTrackingEnabled:0];
  }

  v13 = +[AXSettings sharedInstance];
  v14 = [v13 switchControlEnabled];

  if (v14)
  {
    v15 = +[AXSettings sharedInstance];
    [v15 setSwitchControlEnabled:0];
  }

  v16 = +[AXSettings sharedInstance];
  v17 = [v16 assistiveTouchEnabled];

  v18 = +[AXSettings sharedInstance];
  v19 = v18;
  if ((v17 & 1) != 0 || !v3)
  {
    v21 = [v18 assistiveTouchEnabledByHeadTracking] & v17;

    if (v21 == 1)
    {
      if (v3)
      {
        goto LABEL_20;
      }

      v22 = +[AXSettings sharedInstance];
      [v22 setAssistiveTouchEnabled:0];

      goto LABEL_22;
    }
  }

  else
  {
    [v18 setAssistiveTouchEnabled:1];

    v20 = +[AXSettings sharedInstance];
    [v20 setAssistiveTouchEnabledByHeadTracking:1];
  }

  if (v3)
  {
LABEL_20:
    v23 = +[AXSettings sharedInstance];
    if ([v23 assistiveTouchBubbleModeChangedDuringHeadTracking])
    {
    }

    else
    {
      v25 = +[AXSettings sharedInstance];
      v26 = [v25 assistiveTouchBubbleModeEnabled];

      if ((v26 & 1) == 0)
      {
        [(AXSettings *)self _setAssistiveTouchBubbleModeEnabledPreferenceOnly:1];
      }
    }

    v27 = +[AXSettings sharedInstance];
    if (![v27 assistiveTouchMouseDwellControlChangedDuringHeadTracking])
    {
      v28 = +[AXSettings sharedInstance];
      v29 = [v28 assistiveTouchMouseDwellControlEnabled];

      if (v29)
      {
        goto LABEL_36;
      }

      v30 = self;
      v31 = 1;
      goto LABEL_35;
    }

LABEL_32:

    goto LABEL_36;
  }

LABEL_22:
  v24 = +[AXSettings sharedInstance];
  if ([v24 assistiveTouchBubbleModeChangedDuringHeadTracking])
  {
  }

  else
  {
    v32 = +[AXSettings sharedInstance];
    v33 = [v32 assistiveTouchBubbleModeEnabled];

    if (v33)
    {
      [(AXSettings *)self _setAssistiveTouchBubbleModeEnabledPreferenceOnly:0];
    }
  }

  v27 = +[AXSettings sharedInstance];
  if ([v27 assistiveTouchMouseDwellControlChangedDuringHeadTracking])
  {
    goto LABEL_32;
  }

  v34 = +[AXSettings sharedInstance];
  v35 = [v34 assistiveTouchMouseDwellControlEnabled];

  if (!v35)
  {
    goto LABEL_36;
  }

  v30 = self;
  v31 = 0;
LABEL_35:
  [(AXSettings *)v30 _setAssistiveTouchMouseDwellControlEnabledPreferenceOnly:v31];
LABEL_36:
  v36 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [(AXSettings *)self setValue:v36 forPreferenceKey:@"AXSAssistiveTouchHeadTrackingEnabled"];
}

- (void)setAssistiveTouchEnabledByHeadTracking:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSAssistiveTouchEnabledByHeadTracking"];
}

- (void)setAssistiveTouchHeadTrackingSensitivity:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSAssistiveTouchHeadTrackingSensitivity"];
}

- (void)setAssistiveTouchHeadTrackingMovementToleranceInJoystickMode:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSAssistiveTouchHeadTrackingMovementToleranceInJoystickMode"];
}

- (void)setAssistiveTouchHeadTrackingMode:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSAssistiveTouchHeadTrackingMode"];
}

- (void)setAssistiveTouchHeadTrackingExpressionToActionMappingDidMigrateToLuckB:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSAssistiveTouchHeadTrackingExpressionToActionMappingDidMigrateToLuckB"];
}

- (NSDictionary)assistiveTouchHeadTrackingExpressionToActionMapping
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 assistiveTouchHeadTrackingExpressionToActionMappingDidMigrateToLuckB];

  if ((v4 & 1) == 0)
  {
    v5 = [MEMORY[0x1E695DF20] dictionary];
    v6 = objc_opt_class();
    v7 = AXSettingsReturnObjectValueWithClass(@"AXSAssistiveTouchHeadTrackingExpressionToActionMapping", v5, v6);

    v8 = [MEMORY[0x1E695DF90] dictionary];
    v9 = AXAssistiveTouchDisallowedBaseActions();
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __87__AXSettings_LegacyImplementation__assistiveTouchHeadTrackingExpressionToActionMapping__block_invoke;
    v21 = &unk_1E71EC3B8;
    v22 = v9;
    v23 = v8;
    v10 = v8;
    v11 = v9;
    [v7 enumerateKeysAndObjectsUsingBlock:&v18];
    v12 = [v10 copy];
    [(AXSettings *)self setValue:v12 forPreferenceKey:@"AXSAssistiveTouchHeadTrackingExpressionToActionMapping"];

    v13 = +[AXSettings sharedInstance];
    [v13 setAssistiveTouchHeadTrackingExpressionToActionMappingDidMigrateToLuckB:1];
  }

  v14 = [MEMORY[0x1E695DF20] dictionary];
  v15 = objc_opt_class();
  v16 = AXSettingsReturnObjectValueWithClass(@"AXSAssistiveTouchHeadTrackingExpressionToActionMapping", v14, v15);

  return v16;
}

void __87__AXSettings_LegacyImplementation__assistiveTouchHeadTrackingExpressionToActionMapping__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (([*(a1 + 32) containsObject:v5] & 1) == 0)
  {
    [*(a1 + 40) setObject:v5 forKey:v6];
  }
}

- (void)setAssistiveTouchMouseDwellControlAutorevertEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchMouseDwellControlAutorevertEnabledPreference"];
}

- (NSString)assistiveTouchMouseDwellControlAutorevertAction
{
  v2 = objc_opt_class();

  return AXSettingsReturnObjectValueWithClass(@"AssistiveTouchMouseDwellControlAutorevertActionPreference", @"AXAssistiveTouchIconTypeDwellClick", v2);
}

- (void)setAssistiveTouchMouseDwellControlActivationTimeout:(double)a3
{
  if (*MEMORY[0x1E69888C0] < a3)
  {
    a3 = *MEMORY[0x1E69888C0];
  }

  if (*MEMORY[0x1E69888C8] >= a3)
  {
    a3 = *MEMORY[0x1E69888C8];
  }

  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchMouseDwellControlActivationTimeoutPreference"];
}

- (double)assistiveTouchMouseDwellControlKeyboardKeyActivationTimeout
{
  [(AXSettings *)self assistiveTouchMouseDwellControlActivationTimeout];

  return AXSettingsReturnDoubleValue(@"AssistiveTouchMouseDwellControlKeyboardKeyActivationTimeoutPreference", v2);
}

- (void)setAssistiveTouchMouseDwellControlKeyboardKeyActivationTimeout:(double)a3
{
  if (*MEMORY[0x1E69888C0] < a3)
  {
    a3 = *MEMORY[0x1E69888C0];
  }

  if (*MEMORY[0x1E69888C8] >= a3)
  {
    a3 = *MEMORY[0x1E69888C8];
  }

  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchMouseDwellControlKeyboardKeyActivationTimeoutPreference"];
}

- (void)setAssistiveTouchMouseDwellControlMovementToleranceRadius:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchMouseDwellControlMovementToleranceRadiusPreference"];
}

- (NSDictionary)assistiveTouchMouseDwellControlCornerCustomization
{
  v2 = [MEMORY[0x1E695DF20] dictionary];
  v3 = objc_opt_class();
  v4 = AXSettingsReturnObjectValueWithClass(@"kAXSAssistiveTouchMouseDwellControlCornerCustomizationPreference", v2, v3);

  return v4;
}

- (void)setAssistiveTouchMouseDwellControlMutatedMenu:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSAssistiveTouchMouseDwellControlMutatedMenuPreference"];
}

- (void)setAssistiveTouchMouseDwellControlShowPrompt:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchMouseDwellControlShowPromptPreference"];
}

- (void)setAssistiveTouchDwellKeyboardContinuousPathEnabled:(BOOL)a3
{
  v3 = a3;
  if (a3 && !_AXSDidSetDwellKeyboardContinuousPathEnabled())
  {
    [(AXSettings *)self _assignActionToUnsetHotCorner:@"AXAssistiveTouchIconTypeDwellToggleKeyboardContinuousPath"];
  }

  MEMORY[0x1EEE60F08](v3, a2);
}

- (void)setAssistiveTouchMouseZoomPanningStyle:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchMouseZoomPanningStylePreference"];
}

- (void)setAssistiveTouchMotionTrackerConfigurable:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchMotionTrackerConfigurablePreference"];
}

- (void)setAssistiveTouchForceEyeTrackerExperience:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchForceEyeTrackerExperiencePreference"];
}

- (void)setAssistiveTouchMotionTrackerSmoothingBufferSize:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchMotionTrackerSmoothingBufferSizePreference"];
}

- (void)setAssistiveTouchMotionTrackerSmoothingMaxDelta:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchMotionTrackerSmoothingMaxDeltaPreference"];
}

- (void)setAssistiveTouchMotionTrackerXNormalizationOrder:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchMotionTrackerXNormalizationOrderPreference"];
}

- (void)setAssistiveTouchMotionTrackerYNormalizationOrder:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchMotionTrackerYNormalizationOrderPreference"];
}

- (void)setAssistiveTouchMotionTrackerXNormalizationOffset:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchMotionTrackerXNormalizationOffsetPreference"];
}

- (void)setAssistiveTouchMotionTrackerYNormalizationOffset:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchMotionTrackerYNormalizationOffsetPreference"];
}

- (void)assistiveTouchMotionTrackerShouldOffsetBufferPoints:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSAssistiveTouchMotionTrackerShouldOffsetBufferPointsPreference"];
}

- (void)setAssistiveTouchBubbleModeEnabled:(BOOL)a3
{
  [(AXSettings *)self _setAssistiveTouchBubbleModeEnabledPreferenceOnly:a3];
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 assistiveTouchHeadTrackingEnabled];

  if (v4)
  {
    v5 = +[AXSettings sharedInstance];
    [v5 setAssistiveTouchBubbleModeChangedDuringHeadTracking:1];
  }
}

- (void)_setAssistiveTouchBubbleModeEnabledPreferenceOnly:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSAssistiveTouchBubbleModeEnabled"];
}

- (void)setAssistiveTouchBubbleModeChangedDuringHeadTracking:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSAssistiveTouchBubbleModeChangedDuringHeadTracking"];
}

- (void)setAssistiveTouchEyeTrackingAutoHideEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSAssistiveTouchEyeTrackingAutoHideEnabled"];
}

- (void)setAssistiveTouchEyeTrackingAutoHideTimeout:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSAssistiveTouchEyeTrackingAutoHideTimeout"];
}

- (void)setAssistiveTouchEyeTrackingAutoHideOpacity:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSAssistiveTouchEyeTrackingAutoHideOpacity"];
}

- (void)setAssistiveTouchMouseClickSoundsEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSAssistiveTouchMouseClickSounds"];
}

- (void)setAssistiveTouchHeadMovementSensitivity:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchHeadMovementSensitivityPreference"];
}

- (void)setAssistiveTouchSwitchUsageConfirmed:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSAssistiveTouchSwitchUsageConfirmedPreference"];
}

- (void)setAssistiveTouchScannerAddedTripleClickAutomatically:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchAutoAddedTCItem"];
}

- (void)setAssistiveTouchScannerPrefersCompact:(BOOL)a3 forLanguage:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = v6;
    v11 = AXLanguageCanonicalFormToGeneralLanguage(v6);

    v8 = [(AXSettings *)self valueForPreferenceKey:@"AssistiveTouchScannerPrefersCompactForLanguagePreference"];
    v9 = [v8 mutableCopy];

    if (!v9)
    {
      v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    }

    v10 = [MEMORY[0x1E696AD98] numberWithBool:v4];
    [v9 setObject:v10 forKey:v11];

    [(AXSettings *)self setValue:v9 forPreferenceKey:@"AssistiveTouchScannerPrefersCompactForLanguagePreference"];
  }
}

- (BOOL)assistiveTouchScannerPrefersCompact:(id)a3
{
  v4 = AXLanguageCanonicalFormToGeneralLanguage(a3);
  v5 = [(AXSettings *)self valueForPreferenceKey:@"AssistiveTouchScannerPrefersCompactForLanguagePreference"];
  v6 = [v5 objectForKey:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)assistiveTouchSingleTapAction
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"AXSAssistiveTouchSingleTapAction"];
  v3 = v2;
  if (v2)
  {
    v4 = [(__CFString *)v2 isEqualToString:@"__NONE__"];
    v5 = v3;
    if (v4)
    {
      v6 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v5 = @"AXAssistiveTouchIconTypeOpenMenu";
  }

  v6 = v5;
LABEL_6:

  return v6;
}

- (NSString)assistiveTouchDoubleTapAction
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"AXSAssistiveTouchDoubleTapAction"];
  v3 = v2;
  if (v2 && ([v2 isEqualToString:@"__NONE__"] & 1) == 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAssistiveTouchDoubleTapActionTimeout:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSAssistiveTouchDoubleTapActionTimeout"];
}

- (void)setAssistiveTouchLongPressActionDuration:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSAssistiveTouchLongPressActionDuration"];
}

- (NSString)assistiveTouchLongPressAction
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"AXSAssistiveTouchLongPressAction"];
  v3 = v2;
  if (v2 && ([v2 isEqualToString:@"__NONE__"] & 1) == 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)assistiveTouchOrbAction
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"AXSAssistiveTouchOrbPreference"];
  v3 = v2;
  if (v2)
  {
    v4 = [(__CFString *)v2 isEqualToString:@"__NONE__"];
    v5 = v3;
    if (v4)
    {
      v6 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v5 = @"AXAssistiveTouchIconTypeHome";
  }

  v6 = v5;
LABEL_6:

  return v6;
}

- (NSArray)assistiveTouchMouseCustomizedClickActions
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"AXSAssistiveTouchMouseCustomizedClickActionsPreference"];
  v3 = [AXCustomizableMouse deserialize:v2];

  return v3;
}

- (void)updateCustomizableMouse:(id)a3
{
  v4 = a3;
  v5 = [(AXSettings *)self assistiveTouchMouseCustomizedClickActions];
  v6 = [v5 mutableCopy];

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0x7FFFFFFFFFFFFFFFLL;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __60__AXSettings_LegacyImplementation__updateCustomizableMouse___block_invoke;
  v12 = &unk_1E71EC3E0;
  v7 = v4;
  v13 = v7;
  v14 = &v15;
  [v6 enumerateObjectsUsingBlock:&v9];
  if (v16[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v7 hasCustomActions])
    {
      [v6 addObject:v7];
    }
  }

  else if ([v7 hasCustomActions])
  {
    [v6 setObject:v7 atIndexedSubscript:v16[3]];
  }

  else
  {
    [v6 removeObjectAtIndex:v16[3]];
  }

  v8 = [AXCustomizableMouse serialize:v6];
  [(AXSettings *)self setValue:v8 forPreferenceKey:@"AXSAssistiveTouchMouseCustomizedClickActionsPreference"];

  _Block_object_dispose(&v15, 8);
}

uint64_t __60__AXSettings_LegacyImplementation__updateCustomizableMouse___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) isEqualToMouse:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

- (id)smoothingBufferSizeForEyeTracker:(id)a3
{
  v4 = a3;
  v5 = [(AXSettings *)self _legacyIdentifierForEyeTracker:v4];
  v6 = [v4 uniqueIdentifier];
  if ([v6 length])
  {

LABEL_4:
    v8 = [(AXSettings *)self assistiveTouchEyeTrackerCustomizedSettings];
    v9 = [v4 uniqueIdentifier];
    v10 = [v8 objectForKeyedSubscript:v9];

    if (!v10)
    {
      v10 = [v8 objectForKeyedSubscript:v5];
    }

    v11 = [v10 objectForKeyedSubscript:@"AssistiveTouchMotionTrackerSmoothingBufferSizePreference"];

    goto LABEL_7;
  }

  v7 = [v5 length];

  if (v7)
  {
    goto LABEL_4;
  }

  v13 = AXLogSettings();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [AXSettings(LegacyImplementation) smoothingBufferSizeForEyeTracker:];
  }

  v11 = 0;
LABEL_7:

  return v11;
}

- (void)updateSmoothingBufferSize:(id)a3 forEyeTracker:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AXSettings *)self _legacyIdentifierForEyeTracker:v7];
  v9 = [v7 uniqueIdentifier];
  v10 = [v9 length];

  if (v10)
  {
    v11 = MEMORY[0x1E695DF90];
    v12 = [(AXSettings *)self assistiveTouchEyeTrackerCustomizedSettings];
    v13 = [v11 dictionaryWithDictionary:v12];

    v14 = [v7 uniqueIdentifier];
    v15 = [v13 objectForKeyedSubscript:v14];

    if (!v15)
    {
      v16 = [v13 objectForKeyedSubscript:v8];
      if (!v16)
      {
        v17 = [MEMORY[0x1E695DF90] dictionary];
        goto LABEL_6;
      }

      v15 = v16;
    }

    v17 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v15];

LABEL_6:
    [v17 setObject:v6 forKey:@"AssistiveTouchMotionTrackerSmoothingBufferSizePreference"];
    v18 = [v7 uniqueIdentifier];
    [v13 setObject:v17 forKey:v18];

    [(AXSettings *)self setAssistiveTouchEyeTrackerCustomizedSettings:v13];
    goto LABEL_10;
  }

  v19 = AXLogSettings();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [AXSettings(LegacyImplementation) updateSmoothingBufferSize:forEyeTracker:];
  }

LABEL_10:
}

- (BOOL)assistiveTouchCustomizationEnabled
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"AXSAssistiveTouchMainScreenCustomizationPreference"];
  v3 = v2 != 0;

  return v3;
}

- (void)setAssistiveTouchIdleOpacity:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSAssistiveTouchIdleOpacityPreference"];
}

- (NSDictionary)assistiveTouchMainScreenDefaultCustomization
{
  v9[6] = *MEMORY[0x1E69E9840];
  IsSiriAvailable = AXDeviceIsSiriAvailable();
  IsVoiceControlAvailable = AXDeviceIsVoiceControlAvailable();
  v8[0] = @"AXAssistiveTouchIconLocationTopLeft";
  v8[1] = @"AXAssistiveTouchIconLocationTopMiddle";
  v9[0] = @"AXAssistiveTouchIconTypeCustom";
  v9[1] = @"AXAssistiveTouchIconTypeNotificationCenter";
  v8[2] = @"AXAssistiveTouchIconLocationTopRight";
  v8[3] = @"AXAssistiveTouchIconLocationMidLeft";
  v4 = AXAssistiveTouchIconTypeVoiceControl;
  if (!IsVoiceControlAvailable)
  {
    v4 = AXAssistiveTouchIconTypeGestures;
  }

  if (IsSiriAvailable)
  {
    v4 = AXAssistiveTouchIconTypeSiri;
  }

  v5 = *v4;
  v9[2] = @"AXAssistiveTouchIconTypeDevice";
  v9[3] = v5;
  v8[4] = @"AXAssistiveTouchIconLocationBottomMiddle";
  v8[5] = @"AXAssistiveTouchIconLocationMidRight";
  v9[4] = @"AXAssistiveTouchIconTypeHome";
  v9[5] = @"AXAssistiveTouchIconTypeControlCenter";
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:6];

  return v6;
}

- (NSDictionary)assistiveTouchMainScreenCustomization
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = [(AXSettings *)self valueForPreferenceKey:@"AXSAssistiveTouchMainScreenCustomizationPreference"];
  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v4 = [(AXSettings *)self assistiveTouchMainScreenDefaultCustomization];

    [(AXSettings *)self setAssistiveTouchMainScreenCustomization:v4];
    v3 = v4;
  }

  IsSiriAvailable = AXDeviceIsSiriAvailable();
  IsVoiceControlAvailable = AXDeviceIsVoiceControlAvailable();
  v7 = IsVoiceControlAvailable;
  v27 = IsSiriAvailable;
  if (!IsSiriAvailable || (IsVoiceControlAvailable & 1) == 0)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = [v3 allKeys];
    v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v29;
      v11 = @"AXAssistiveTouchIconTypeGestures";
      if (v7)
      {
        v11 = @"AXAssistiveTouchIconTypeVoiceControl";
      }

      v25 = v11;
      v24 = @"AXAssistiveTouchIconTypeActionButton";
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v28 + 1) + 8 * i);
          v14 = [v3 objectForKeyedSubscript:{v13, v24}];
          v15 = [v14 isEqualToString:@"AXAssistiveTouchIconTypeSiri"];

          if (!(v27 & 1 | ((v15 & 1) == 0)))
          {
            v16 = [v3 mutableCopy];
            [v16 setObject:v25 forKeyedSubscript:v13];

            v3 = v16;
          }

          v17 = [v3 objectForKeyedSubscript:v13];
          v18 = [v17 isEqualToString:@"AXAssistiveTouchIconTypeVoiceControl"];

          if (!(v7 & 1 | ((v18 & 1) == 0)))
          {
            v19 = [v3 mutableCopy];
            [v19 setObject:@"AXAssistiveTouchIconTypeGestures" forKeyedSubscript:v13];

            v3 = v19;
          }

          if (AXDeviceHasStaccato())
          {
            v20 = [v3 objectForKeyedSubscript:v13];
            v21 = [v20 isEqualToString:@"AXAssistiveTouchIconTypeMute"];

            if (v21)
            {
              v22 = [v3 mutableCopy];
              [v22 setObject:v24 forKeyedSubscript:v13];

              v3 = v22;
            }
          }
        }

        v9 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v9);
    }
  }

  return v3;
}

- (void)setAssistiveTouchGameControllerEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSAssitiveTouchGameControllerPreference"];
}

- (NSArray)switchControlRecipes
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(AXSettings *)self valueForPreferenceKey:@"SCRecipes"];
  v4 = v3;
  if (!v3)
  {
    v5 = MEMORY[0x1E695DEC8];
    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v7 = [v6 pathForResource:@"SwitchControlDefaultRecipes" ofType:@"plist"];
    v4 = [v5 arrayWithContentsOfFile:v7];
  }

  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v4;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [AXSwitchRecipe recipeWithDictionaryRepresentation:*(*(&v16 + 1) + 8 * i), v16];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  if (!v3)
  {
    [(AXSettings *)self setSwitchControlRecipes:v8];
  }

  return v8;
}

- (void)setSwitchControlRecipes:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v13 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = 0;
  }

  [(AXSettings *)self setValue:v6 forPreferenceKey:@"SCRecipes", v13];
}

- (NSUUID)switchControlLaunchRecipeUUID
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"SCLaunchRecipeUUID"];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSwitchControlLaunchRecipeUUID:(id)a3
{
  v4 = [a3 UUIDString];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"SCLaunchRecipeUUID"];
}

- (id)_switchControlMenuItemsForPreferenceKey:(id)a3 allTypes:(id)a4 enabledByDefault:(BOOL)a5 topLevel:(BOOL)a6
{
  v6 = a6;
  v55 = a5;
  v72 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = [(AXSettings *)self valueForPreferenceKey:v9];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v11 = 0;
  }

  v12 = [(AXSettings *)self migratedSwitchControlMenuItemsPreferenceKeys];
  v13 = [v12 containsObject:v9];

  if (v13)
  {
    v14 = v11;
    goto LABEL_39;
  }

  if (v11)
  {
    v51 = v9;
    v56 = [(AXSettings *)self _switchControlHasEmptyTopLevelMenuItems:v11];
    v48 = v11;
    v14 = [v11 mutableCopy];
    v15 = [v14 count];
    v16 = MEMORY[0x1E69885D0];
    if (v15 - 1 >= 0)
    {
      v17 = v15;
      v18 = *MEMORY[0x1E69885D0];
      do
      {
        v19 = [v14 objectAtIndexedSubscript:--v17];
        v20 = [v19 objectForKey:v18];

        v21 = [(AXSettings *)self _allSubmenuKeys];
        v22 = [v21 containsObject:v20];

        if (([v10 containsObject:v20] & 1) == 0 && (v6 & v22 & 1) == 0)
        {
          [v14 removeObjectAtIndex:v17];
        }
      }

      while (v17 > 0);
    }

    v49 = self;
    v50 = v10;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v23 = v10;
    v24 = [v23 countByEnumeratingWithState:&v58 objects:v68 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v59;
      obj = *v16;
      v52 = *MEMORY[0x1E6988488];
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v59 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v58 + 1) + 8 * i);
          v57[0] = MEMORY[0x1E69E9820];
          v57[1] = 3221225472;
          v57[2] = __111__AXSettings_LegacyImplementation___switchControlMenuItemsForPreferenceKey_allTypes_enabledByDefault_topLevel___block_invoke;
          v57[3] = &unk_1E71EC408;
          v57[4] = v28;
          v29 = [v14 indexOfObjectPassingTest:v57];
          v30 = [v23 indexOfObject:v28];
          if (v29 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v31 = v30;
            v66[0] = obj;
            v66[1] = v52;
            v67[0] = v28;
            v32 = [MEMORY[0x1E696AD98] numberWithBool:!v56];
            v67[1] = v32;
            v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:v66 count:2];

            if (v31 <= [v14 count])
            {
              [v14 insertObject:v33 atIndex:v31];
            }

            else
            {
              [v14 addObject:v33];
            }
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v58 objects:v68 count:16];
      }

      while (v25);
    }

    v34 = v48;
LABEL_35:

    v10 = v50;
    v9 = v51;
    self = v49;
    goto LABEL_36;
  }

  if (![v9 isEqualToString:@"SCTopLevelMenuItems"])
  {
    v49 = self;
    v51 = v9;
    v14 = [MEMORY[0x1E695DF70] array];
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v50 = v10;
    obja = v10;
    v35 = [obja countByEnumeratingWithState:&v62 objects:v71 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v63;
      v38 = *MEMORY[0x1E69885D0];
      v39 = *MEMORY[0x1E6988488];
      do
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v63 != v37)
          {
            objc_enumerationMutation(obja);
          }

          v41 = *(*(&v62 + 1) + 8 * j);
          v69[1] = v39;
          v70[0] = v41;
          v69[0] = v38;
          v42 = [MEMORY[0x1E696AD98] numberWithBool:v55];
          v70[1] = v42;
          v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:v69 count:2];
          [v14 addObject:v43];
        }

        v36 = [obja countByEnumeratingWithState:&v62 objects:v71 count:16];
      }

      while (v36);
    }

    v34 = obja;
    goto LABEL_35;
  }

  v14 = [(AXSettings *)self _switchControlMigratePreMonarchIncludedMenuItemsForNewTypes:v10];
LABEL_36:
  [(AXSettings *)self setValue:v14 forPreferenceKey:v9];
  v44 = [(AXSettings *)self migratedSwitchControlMenuItemsPreferenceKeys];

  if (!v44)
  {
    v45 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [(AXSettings *)self setMigratedSwitchControlMenuItemsPreferenceKeys:v45];
  }

  v46 = [(AXSettings *)self migratedSwitchControlMenuItemsPreferenceKeys];
  [v46 addObject:v9];

LABEL_39:

  return v14;
}

uint64_t __111__AXSettings_LegacyImplementation___switchControlMenuItemsForPreferenceKey_allTypes_enabledByDefault_topLevel___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*MEMORY[0x1E69885D0]];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)_switchControlMigratePreMonarchIncludedMenuItemsForNewTypes:(id)a3
{
  v63 = *MEMORY[0x1E69E9840];
  v3 = a3;
  keyExistsAndHasValidFormat = 0;
  v4 = MEMORY[0x1E69E4C70];
  if (CFPreferencesGetAppBooleanValue(@"AXSAssistiveTouchScannerMenuIncludeHomeItem", *MEMORY[0x1E69E4C70], &keyExistsAndHasValidFormat))
  {
    v5 = 1;
  }

  else
  {
    v5 = keyExistsAndHasValidFormat == 0;
  }

  v6 = v5;
  if (CFPreferencesGetAppBooleanValue(@"AXSAssistiveTouchScannerMenuIncludeGesturesItem", *v4, &keyExistsAndHasValidFormat))
  {
    v7 = 1;
  }

  else
  {
    v7 = keyExistsAndHasValidFormat == 0;
  }

  v8 = v7;
  v44 = v8;
  if (CFPreferencesGetAppBooleanValue(@"AXSAssistiveTouchScannerMenuIncludeScrollItem", *v4, &keyExistsAndHasValidFormat))
  {
    v9 = 1;
  }

  else
  {
    v9 = keyExistsAndHasValidFormat == 0;
  }

  v10 = v9;
  v46 = v10;
  if (CFPreferencesGetAppBooleanValue(@"AXSAssistiveTouchScannerMenuIncludeDeviceItem", *v4, &keyExistsAndHasValidFormat))
  {
    v11 = 1;
  }

  else
  {
    v11 = keyExistsAndHasValidFormat == 0;
  }

  v12 = v11;
  v42 = v12;
  if (CFPreferencesGetAppBooleanValue(@"AXSAssistiveTouchScannerMenuIncludeSettingsItem", *v4, &keyExistsAndHasValidFormat))
  {
    v13 = 1;
  }

  else
  {
    v13 = keyExistsAndHasValidFormat == 0;
  }

  v14 = v13;
  v39 = v14;
  v48 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v3;
  v15 = [obj countByEnumeratingWithState:&v53 objects:v62 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v54;
    v18 = *MEMORY[0x1E6988508];
    v45 = *MEMORY[0x1E6988588];
    v43 = *MEMORY[0x1E6988498];
    v41 = *MEMORY[0x1E69883B0];
    v40 = *MEMORY[0x1E6988568];
    v38 = *MEMORY[0x1E6988590];
    v19 = *MEMORY[0x1E69885D0];
    v20 = *MEMORY[0x1E6988488];
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v54 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v53 + 1) + 8 * i);
        v23 = [v22 isEqualToString:v18];
        v24 = v6;
        if ((v23 & 1) == 0)
        {
          v25 = [v22 isEqualToString:v45];
          v24 = v46;
          if ((v25 & 1) == 0)
          {
            v26 = [v22 isEqualToString:v43];
            v24 = v44;
            if ((v26 & 1) == 0)
            {
              v27 = [v22 isEqualToString:v41];
              v24 = v42;
              if ((v27 & 1) == 0)
              {
                if (([v22 isEqualToString:v40] & 1) != 0 || (v28 = objc_msgSend(v22, "isEqualToString:", v38), v24 = v6 | v44 | v46 | v42 | v39, v28))
                {
                  v24 = v39;
                }
              }
            }
          }
        }

        v60[1] = v20;
        v61[0] = v22;
        v60[0] = v19;
        v29 = [MEMORY[0x1E696AD98] numberWithBool:v24 & 1];
        v61[1] = v29;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:2];
        [v48 addObject:v30];
      }

      v16 = [obj countByEnumeratingWithState:&v53 objects:v62 count:16];
    }

    while (v16);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v58[0] = @"AXSAssistiveTouchScannerMenuIncludeHomeItem";
  v58[1] = @"AXSAssistiveTouchScannerMenuIncludeGesturesItem";
  v58[2] = @"AXSAssistiveTouchScannerMenuIncludeScrollItem";
  v58[3] = @"AXSAssistiveTouchScannerMenuIncludeDeviceItem";
  v58[4] = @"AXSAssistiveTouchScannerMenuIncludeSettingsItem";
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:5];
  v32 = [v31 countByEnumeratingWithState:&v49 objects:v59 count:16];
  v33 = MEMORY[0x1E69E4C70];
  if (v32)
  {
    v34 = v32;
    v35 = *v50;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v50 != v35)
        {
          objc_enumerationMutation(v31);
        }

        CFPreferencesSetAppValue(*(*(&v49 + 1) + 8 * j), 0, *v33);
      }

      v34 = [v31 countByEnumeratingWithState:&v49 objects:v59 count:16];
    }

    while (v34);
  }

  CFPreferencesAppSynchronize(*v33);

  return v48;
}

- (id)topLevelKeys
{
  v14[20] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E6988480];
  v14[0] = *MEMORY[0x1E6988510];
  v14[1] = v2;
  v3 = *MEMORY[0x1E6988508];
  v14[2] = *MEMORY[0x1E6988588];
  v14[3] = v3;
  v4 = *MEMORY[0x1E6988478];
  v14[4] = *MEMORY[0x1E6988498];
  v14[5] = v4;
  v5 = *MEMORY[0x1E6988568];
  v14[6] = *MEMORY[0x1E6988580];
  v14[7] = v5;
  v6 = *MEMORY[0x1E6988490];
  v14[8] = *MEMORY[0x1E69883B0];
  v14[9] = v6;
  v7 = *MEMORY[0x1E6988528];
  v14[10] = *MEMORY[0x1E6988390];
  v14[11] = v7;
  v8 = *MEMORY[0x1E69885C0];
  v14[12] = *MEMORY[0x1E6988590];
  v14[13] = v8;
  v9 = *MEMORY[0x1E6988518];
  v14[14] = *MEMORY[0x1E6988578];
  v14[15] = v9;
  v10 = *MEMORY[0x1E69885C8];
  v14[16] = *MEMORY[0x1E6988520];
  v14[17] = v10;
  v11 = *MEMORY[0x1E6988388];
  v14[18] = *MEMORY[0x1E6988570];
  v14[19] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:20];

  return v12;
}

- (NSArray)switchControlTopLevelMenuItems
{
  v3 = [(AXSettings *)self topLevelKeys];
  v4 = [(AXSettings *)self _switchControlMenuItemsForPreferenceKey:@"SCTopLevelMenuItems" allTypes:v3 enabledByDefault:1 topLevel:1];

  return v4;
}

- (BOOL)switchControlHasEmptyTopLevelMenu
{
  v2 = self;
  v3 = [(AXSettings *)self switchControlTopLevelMenuItems];
  LOBYTE(v2) = [(AXSettings *)v2 _switchControlHasEmptyTopLevelMenuItems:v3];

  return v2;
}

- (BOOL)_switchControlHasEmptyTopLevelMenuItems:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    v7 = *MEMORY[0x1E6988488];
    v8 = *MEMORY[0x1E69885D0];
    v9 = *MEMORY[0x1E6988518];
    v18 = *MEMORY[0x1E6988520];
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v11 objectForKeyedSubscript:{v7, v18}];
        v13 = [v12 BOOLValue];

        if (v13)
        {
          v14 = [v11 objectForKeyedSubscript:v8];
          if (([v14 isEqualToString:v9] & 1) == 0 && (objc_msgSend(v14, "isEqualToString:", v18) & 1) == 0)
          {

LABEL_14:
            v16 = 0;
            goto LABEL_15;
          }

          v15 = [(AXSettings *)self switchControlTapBehavior];

          if (v15 == 2)
          {
            goto LABEL_14;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v16 = 1;
LABEL_15:

  return v16;
}

- (void)setSwitchControlShouldUseShortFirstPage:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"SCShouldUseShortFirstPage"];
}

- (BOOL)switchControlShouldUseShortFirstPage
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"SCShouldUseShortFirstPage"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (NSArray)gestureKeys
{
  v11[12] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69884C0];
  v11[0] = *MEMORY[0x1E69884F8];
  v11[1] = v2;
  v3 = *MEMORY[0x1E69884E8];
  v11[2] = *MEMORY[0x1E69884E0];
  v11[3] = v3;
  v4 = *MEMORY[0x1E69884B0];
  v11[4] = *MEMORY[0x1E6988500];
  v11[5] = v4;
  v5 = *MEMORY[0x1E69884A0];
  v11[6] = *MEMORY[0x1E69884D8];
  v11[7] = v5;
  v6 = *MEMORY[0x1E69884D0];
  v11[8] = *MEMORY[0x1E69884A8];
  v11[9] = v6;
  v7 = *MEMORY[0x1E69884F0];
  v11[10] = *MEMORY[0x1E69884B8];
  v11[11] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:12];
  if (AXForceTouchAvailableAndEnabled())
  {
    v9 = [v8 arrayByAddingObject:*MEMORY[0x1E69884C8]];

    v8 = v9;
  }

  return v8;
}

- (NSArray)switchControlGesturesMenuItems
{
  v3 = [(AXSettings *)self gestureKeys];
  v4 = [(AXSettings *)self _switchControlMenuItemsForPreferenceKey:@"SCGesturesMenuItems" allTypes:v3 enabledByDefault:1 topLevel:0];

  return v4;
}

- (NSArray)switchControlGesturesTopLevelMenuItems
{
  v3 = [(AXSettings *)self gestureKeys];
  v4 = [(AXSettings *)self _switchControlMenuItemsForPreferenceKey:@"SCGesturesTopLevelMenuItems" allTypes:v3 enabledByDefault:0 topLevel:0];

  return v4;
}

- (NSArray)deviceKeys
{
  v24[22] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v3 = *MEMORY[0x1E6988458];
  v24[0] = *MEMORY[0x1E69883B8];
  v24[1] = v3;
  v4 = *MEMORY[0x1E69883D0];
  v24[2] = *MEMORY[0x1E6988400];
  v24[3] = v4;
  v5 = *MEMORY[0x1E6988410];
  v24[4] = *MEMORY[0x1E69883E8];
  v24[5] = v5;
  v6 = *MEMORY[0x1E6988470];
  v24[6] = *MEMORY[0x1E69883F8];
  v24[7] = v6;
  v7 = *MEMORY[0x1E6988430];
  v24[8] = *MEMORY[0x1E6988440];
  v24[9] = v7;
  v8 = *MEMORY[0x1E6988428];
  v24[10] = *MEMORY[0x1E6988460];
  v24[11] = v8;
  v9 = *MEMORY[0x1E69883D8];
  v24[12] = *MEMORY[0x1E6988420];
  v24[13] = v9;
  v10 = *MEMORY[0x1E6988418];
  v24[14] = *MEMORY[0x1E6988438];
  v24[15] = v10;
  v11 = *MEMORY[0x1E69883E0];
  v24[16] = *MEMORY[0x1E69883C0];
  v24[17] = v11;
  v12 = *MEMORY[0x1E6988450];
  v24[18] = *MEMORY[0x1E69883C8];
  v24[19] = v12;
  v13 = *MEMORY[0x1E6988408];
  v24[20] = *MEMORY[0x1E6988448];
  v24[21] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:22];
  [v2 addObjectsFromArray:v14];

  if (AXDeviceIsSiriAvailable())
  {
    v23 = *MEMORY[0x1E6988468];
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
    [v2 addObjectsFromArray:v15];
  }

  if (AXDeviceSupportsCameraButton())
  {
    v16 = *MEMORY[0x1E69883A8];
    v22[0] = *MEMORY[0x1E6988398];
    v22[1] = v16;
    v17 = *MEMORY[0x1E69885D8];
    v22[2] = *MEMORY[0x1E69883A0];
    v22[3] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];
    [v2 addObjectsFromArray:v18];
  }

  if (AXDeviceSupportsMultitasking())
  {
    v21 = *MEMORY[0x1E69883F0];
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    [v2 addObjectsFromArray:v19];
  }

  return v2;
}

- (NSArray)switchControlDeviceMenuItems
{
  v3 = [(AXSettings *)self deviceKeys];
  v4 = [(AXSettings *)self _switchControlMenuItemsForPreferenceKey:@"SCDeviceMenuItems" allTypes:v3 enabledByDefault:1 topLevel:0];

  return v4;
}

- (NSArray)switchControlDeviceTopLevelMenuItems
{
  v3 = [(AXSettings *)self deviceKeys];
  v4 = [(AXSettings *)self _switchControlMenuItemsForPreferenceKey:@"SCDeviceTopLevelMenuItems" allTypes:v3 enabledByDefault:0 topLevel:0];

  return v4;
}

- (NSArray)settingsKeys
{
  v6[5] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69885A0];
  v6[0] = *MEMORY[0x1E69885B8];
  v6[1] = v2;
  v3 = *MEMORY[0x1E69885A8];
  v6[2] = *MEMORY[0x1E69885B0];
  v6[3] = v3;
  v6[4] = *MEMORY[0x1E6988598];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:5];

  return v4;
}

- (NSArray)switchControlSettingsMenuItems
{
  v3 = [(AXSettings *)self settingsKeys];
  v4 = [(AXSettings *)self _switchControlMenuItemsForPreferenceKey:@"SCSettingsMenuItems" allTypes:v3 enabledByDefault:1 topLevel:0];

  return v4;
}

- (NSArray)switchControlSettingsTopLevelMenuItems
{
  v3 = [(AXSettings *)self settingsKeys];
  v4 = [(AXSettings *)self _switchControlMenuItemsForPreferenceKey:@"SCSettingsTopLevelMenuItems" allTypes:v3 enabledByDefault:0 topLevel:0];

  return v4;
}

- (NSArray)mediaControlsKeys
{
  v7[7] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E6988540];
  v7[0] = *MEMORY[0x1E6988548];
  v7[1] = v2;
  v3 = *MEMORY[0x1E6988558];
  v7[2] = *MEMORY[0x1E6988538];
  v7[3] = v3;
  v4 = *MEMORY[0x1E6988550];
  v7[4] = *MEMORY[0x1E6988560];
  v7[5] = v4;
  v7[6] = *MEMORY[0x1E6988530];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:7];

  return v5;
}

- (NSArray)switchControlMediaControlsMenuItems
{
  v3 = [(AXSettings *)self mediaControlsKeys];
  v4 = [(AXSettings *)self _switchControlMenuItemsForPreferenceKey:@"SCMediaControlsMenuItems" allTypes:v3 enabledByDefault:1 topLevel:0];

  return v4;
}

- (NSArray)switchControlMediaControlsTopLevelMenuItems
{
  v3 = [(AXSettings *)self mediaControlsKeys];
  v4 = [(AXSettings *)self _switchControlMenuItemsForPreferenceKey:@"SCMediaControlsTopLevelMenuItems" allTypes:v3 enabledByDefault:0 topLevel:0];

  return v4;
}

- (id)_allSubmenuKeys
{
  v3 = MEMORY[0x1E695DEC8];
  v4 = [(AXSettings *)self gestureKeys];
  v5 = [(AXSettings *)self deviceKeys];
  v6 = [(AXSettings *)self settingsKeys];
  v7 = [(AXSettings *)self mediaControlsKeys];
  v8 = [v3 axArrayWithPossiblyNilArrays:{4, v4, v5, v6, v7}];

  return v8;
}

- (void)setSwitchControlIgnoreInvalidSwitchConfiguration:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"SCIgnoreInvalidSwitchConfiguration"];
}

- (void)setSwitchControlRestartScanningAtCurrentKey:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"SCRestartScanningAtCurrentKey"];
}

- (int64_t)switchControlPointPickerSelectionStyle
{
  v3 = AXSettingsReturnIntegerValue(@"SCSwitchControlPointPickerSelectionStyle", 0);
  v4 = [(AXSettings *)self valueForPreferenceKey:@"SCSwitchControlPointPickerSelectionStyle"];

  if (!v4)
  {
    v5 = [(AXSettings *)self valueForPreferenceKey:@"SCSwitchControlPointPickerHighPrecisionEnabled"];
    v6 = v5;
    if (v5)
    {
      if ([v5 BOOLValue])
      {
        v3 = 2;
      }

      v7 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
      [(AXSettings *)self setValue:v7 forPreferenceKey:@"SCSwitchControlPointPickerSelectionStyle"];

      [(AXSettings *)self setValue:0 forPreferenceKey:@"SCSwitchControlPointPickerHighPrecisionEnabled"];
    }
  }

  return v3;
}

- (void)setSwitchControlPointPickerSelectionStyle:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"SCSwitchControlPointPickerSelectionStyle"];
}

- (BOOL)switchControlUseCameraForPointMode
{
  v2 = AXDeviceSupportsHeadTracking();
  if (v2)
  {

    LOBYTE(v2) = AXSettingsReturnBoolValue(@"SCUseCameraForPointPicker", 0);
  }

  return v2;
}

- (void)setSwitchControlUseCameraForPointMode:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"SCUseCameraForPointPicker"];
}

- (void)setSwitchControlCameraPointPickerSensitivity:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"SCCameraPointPickerSensitivity"];
}

- (void)setSwitchControlCameraPointPickerMovementToleranceInJoystickMode:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"SCCameraPointPickerMovementToleranceInJoystickMode"];
}

- (void)setSwitchControlCameraPointPickerMode:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"SCCameraPointPickerMode"];
}

- (void)setSwitchControlCameraPointPickerDwellActivationTimeout:(double)a3
{
  if (*MEMORY[0x1E6988980] < a3)
  {
    a3 = *MEMORY[0x1E6988980];
  }

  if (*MEMORY[0x1E6988988] >= a3)
  {
    a3 = *MEMORY[0x1E6988988];
  }

  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"SCCameraPointPickerDwellActivationTimeoutPreference"];
}

- (void)setSwitchControlCameraPointPickerDwellMovementToleranceRadius:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"SCCameraPointPickerDwellMovementToleranceRadiusPreference"];
}

- (int64_t)switchControlScanningStyle
{
  v3 = [(AXSettings *)self valueForPreferenceKey:@"SCScanningStyle"];
  if (!v3)
  {
    result = [(AXSettings *)self valueForPreferenceKey:@"AssistiveTouchAutoScanningEnabled"];
    if (!result)
    {
      return result;
    }

    v5 = result;
    if ([result BOOLValue])
    {
      v3 = &unk_1EFE96970;
    }

    else
    {
      v3 = &unk_1EFE96988;
    }

    [(AXSettings *)self setValue:v3 forPreferenceKey:@"SCScanningStyle"];
    [(AXSettings *)self setValue:0 forPreferenceKey:@"AssistiveTouchAutoScanningEnabled"];
  }

  v6 = [v3 integerValue];

  return v6;
}

- (void)setSwitchControlScanningStyle:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"SCScanningStyle"];
}

- (int64_t)switchControlFirstLaunchScanningMode
{
  v3 = [(AXSettings *)self valueForPreferenceKey:@"SCFirstLaunchScanningMode"];
  if (v3)
  {
    v4 = AXSettingsReturnIntegerValue(@"SCFirstLaunchScanningMode", 0);
  }

  else
  {
    v4 = [(AXSettings *)self assistiveTouchScanningMode];
  }

  v5 = v4;

  return v5;
}

- (void)setSwitchControlFirstLaunchScanningMode:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"SCFirstLaunchScanningMode"];
}

- (id)switchControlLocStringForFirstLaunchScanningMode:(int64_t)a3
{
  if (a3 <= 5 && ((0x2Fu >> a3) & 1) != 0)
  {
    v10 = AXParameterizedLocalizedString(2, off_1E71EC688[a3], a3, v3, v4, v5, v6, v7, v8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setSwitchControlDwellTime:(double)a3
{
  if (*MEMORY[0x1E6988970] > a3)
  {
    a3 = *MEMORY[0x1E6988970];
  }

  if (a3 >= *MEMORY[0x1E6988968])
  {
    a3 = *MEMORY[0x1E6988968];
  }

  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"SCDwellTime"];
}

- (void)setSwitchControlDebugLoggingEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"SCDebugLoggingEnabled"];
}

- (int64_t)switchControlTapBehavior
{
  v3 = AXSettingsReturnIntegerValue(@"SCTapBehaviorPreference", 0);
  v4 = [(AXSettings *)self valueForPreferenceKey:@"SCTapBehaviorPreference"];

  if (!v4)
  {
    v5 = [(AXSettings *)self valueForPreferenceKey:@"AssistiveTouchScannerSelectTimeoutEnabled"];
    v6 = v5;
    if (v5)
    {
      if ([v5 BOOLValue])
      {
        v3 = 1;
      }

      v7 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
      [(AXSettings *)self setValue:v7 forPreferenceKey:@"SCTapBehaviorPreference"];

      [(AXSettings *)self setValue:0 forPreferenceKey:@"AssistiveTouchScannerSelectTimeoutEnabled"];
    }
  }

  v8 = [(AXSettings *)self switchControlScanningStyle];
  if (v3 == 1 && v8 == 2)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

- (void)setSwitchControlTapBehavior:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"SCTapBehaviorPreference"];
}

- (void)setSwitchControlAutoTapTimeout:(double)a3
{
  if (*MEMORY[0x1E6988C10] > a3)
  {
    a3 = *MEMORY[0x1E6988C10];
  }

  if (a3 >= *MEMORY[0x1E6988C08])
  {
    a3 = *MEMORY[0x1E6988C08];
  }

  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchScannerSelectTimeout"];
}

- (void)setSwitchControlShouldAlwaysActivateKeyboardKeys:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"SCShouldAlwaysActivateKeyboardKeys"];
}

- (void)setSwitchControlIsEnabledAsReceiver:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"SCIsEnabledAsReceiver"];
}

- (void)setSwitchControlScanAfterTapLocation:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"SCScanAfterTapLocation"];
}

- (void)setSwitchControlOnDeviceEyeTrackingEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = +[AXSettings sharedInstance];
  v6 = [v5 switchControlEnabled];

  v7 = +[AXSettings sharedInstance];
  v8 = v7;
  if ((v6 & 1) == 0 && v3)
  {
    [v7 setSwitchControlEnabled:1];

    v9 = +[AXSettings sharedInstance];
    [v9 setSwitchControlEnabledByOnDeviceEyeTracking:1];

    v10 = +[AXSettings sharedInstance];
    [v10 setAssistiveTouchEnabled:0];

    v11 = +[AXSettings sharedInstance];
    [v11 setAssistiveTouchEnabledByOnDeviceEyeTracking:0];

    v12 = +[AXSettings sharedInstance];
    [v12 setAssistiveTouchMouseOnDeviceEyeTrackingEnabled:0];

    v13 = +[AXSettings sharedInstance];
    [v13 setAssistiveTouchMouseDwellControlEnabled:0];
LABEL_7:

    goto LABEL_8;
  }

  v14 = [v7 switchControlEnabledByOnDeviceEyeTracking] & v6;

  if (v14 == 1 && !v3)
  {
    v13 = +[AXSettings sharedInstance];
    [v13 setSwitchControlEnabled:0];
    goto LABEL_7;
  }

LABEL_8:
  v15 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [(AXSettings *)self setValue:v15 forPreferenceKey:@"SCOnDeviceEyeTrackingEnabledPreference"];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v17 = *MEMORY[0x1E69E4E30];

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v17, 0, 0, 1u);
}

- (void)setSwitchControlEnabledByOnDeviceEyeTracking:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"SCEnabledByOnDeviceEyeTracking"];
}

- (id)payWithSwitchControl
{
  v2 = [objc_alloc(MEMORY[0x1E696EE80]) initWithDomain:0 authenticationContext:0];
  v9 = 0;
  v3 = [v2 BOOLForKey:1 error:&v9];
  v4 = v9;
  if (v4)
  {
    v5 = AXLogSettings();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [AXSettings(LegacyImplementation) payWithSwitchControl];
    }
  }

  v6 = AXLogSettings();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(AXSettings(LegacyImplementation) *)v3 payWithSwitchControl];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithBool:v3];

  return v7;
}

- (void)_switchControlClearMenuItemPreferences
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(AXSettings *)self migratedSwitchControlMenuItemsPreferenceKeys];
  [v3 removeAllObjects];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [(AXSettings *)self _switchControlMenuItemPreferences];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        [(AXSettings *)self setValue:0 forPreferenceKey:v9];
        CFPreferencesSetAppValue(v9, 0, [(AXSettings *)self _domainNameForDomain:1]);
        CFPreferencesAppSynchronize([(AXSettings *)self _domainNameForDomain:1]);
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (id)_switchControlMenuItemPreferences
{
  v4[9] = *MEMORY[0x1E69E9840];
  v4[0] = @"SCTopLevelMenuItems";
  v4[1] = @"SCGesturesTopLevelMenuItems";
  v4[2] = @"SCDeviceTopLevelMenuItems";
  v4[3] = @"SCSettingsTopLevelMenuItems";
  v4[4] = @"SCMediaControlsTopLevelMenuItems";
  v4[5] = @"SCGesturesMenuItems";
  v4[6] = @"SCDeviceMenuItems";
  v4[7] = @"SCSettingsMenuItems";
  v4[8] = @"SCMediaControlsMenuItems";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:9];

  return v2;
}

- (void)_switchControlClearMenuItemMigrationTracking
{
  v2 = [(AXSettings *)self migratedSwitchControlMenuItemsPreferenceKeys];
  [v2 removeAllObjects];
}

- (NSDictionary)teachableMomentsNotificationsSeen
{
  v2 = objc_opt_class();

  return AXSettingsReturnObjectValueWithClass(@"AXSTeachableMomentsNotificationSeen", 0, v2);
}

- (void)setTeachableMomentsDelayBeforeSending:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSTeachableMomentsDelayBeforeSending"];
}

- (void)setZoomPreferencesWereInitialized:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"ZoomPreferencesWereInitialized"];
}

- (CGRect)zoomWindowFrame
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"ZoomWindowFrame"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 bytes];
    v5 = *v4;
    v6 = v4[1];
    v7 = v4[2];
    v8 = v4[3];
  }

  else
  {
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
  }

  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (void)setZoomWindowFrame:(CGRect)a3
{
  v5 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v5 length:32];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"ZoomWindowFrame", *&v5.origin.x, *&v5.origin.y, *&v5.size.width, *&v5.size.height];
}

- (void)setDockSize:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"DockSize"];
}

- (void)setZoomScale:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"ZoomScale"];
}

- (CGPoint)zoomPanOffset
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"ZoomPanOffset"];
  v3 = v2;
  if (v2)
  {
    v4 = NSPointFromString(v2);
    x = v4.x;
    y = v4.y;
  }

  else
  {
    x = *MEMORY[0x1E695EFF8];
    y = *(MEMORY[0x1E695EFF8] + 8);
  }

  v7 = x;
  v8 = y;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setZoomPanOffset:(CGPoint)a3
{
  v4 = NSStringFromPoint(a3);
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"ZoomPanOffset"];
}

- (CGPoint)zoomSlugNormalizedPosition
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"ZoomSlugPosition"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 bytes];
    v5 = *v4;
    v6 = v4[1];
  }

  else
  {
    v5 = *MEMORY[0x1E695EFF8];
    v6 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v7 = v5;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setZoomSlugNormalizedPosition:(CGPoint)a3
{
  v5 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v5 length:16];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"ZoomSlugPosition", *&v5.x, *&v5.y];
}

- (NSString)zoomCurrentLensEffect
{
  v2 = *MEMORY[0x1E69886D0];
  v3 = objc_opt_class();

  return AXSettingsReturnObjectValueWithClass(@"ZoomCurrentLensEffect", v2, v3);
}

- (void)setZoomShowedBanner:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"ZoomShowedBanner"];
}

- (void)setZoomInStandby:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"ZoomInStandby"];
}

- (NSString)zoomCurrentLensMode
{
  v3 = AXZoomLensDefault();
  v4 = objc_opt_class();
  v5 = AXSettingsReturnObjectValueWithClass(@"ZoomCurrentLensMode", v3, v4);

  v6 = [(AXSettings *)self zoomPreferredLensModes];
  LODWORD(v3) = [v6 containsObject:v5];

  if (v3)
  {
    v7 = v5;
  }

  else
  {
    v7 = AXZoomLensDefault();
  }

  v8 = v7;

  return v8;
}

- (void)setZoomShouldFollowFocus:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"ZoomShouldFollowFocus"];
}

- (void)setZoomShouldShowSlug:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"ZoomShouldShowSlug"];
}

- (void)setZoomPeekZoomEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"ZoomPeekZoomEnabled"];
}

- (void)setZoomPeekZoomEverEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"ZoomPeekZoomEverEnabled"];
}

- (void)setZoomSlugSingleTapAction:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"ZoomSlugSingleTapAction"];
}

- (void)setZoomSlugDoubleTapAction:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"ZoomSlugDoubleTapAction"];
}

- (void)setZoomSlugTripleTapAction:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"ZoomSlugTripleTapAction"];
}

- (void)setZoomSlugTapAndSlideToAdjustZoomLevelEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"ZoomSlugTapAndSlideToAdjustZoomLevel"];
}

- (void)setZoomAlwaysUseWindowedZoomForTyping:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"ZoomAlwaysUseWindowZoomForTyping"];
}

- (NSString)zoomPreferredCurrentLensMode
{
  v3 = AXZoomLensDefault();
  v4 = objc_opt_class();
  v5 = AXSettingsReturnObjectValueWithClass(@"ZoomPreferredLensMode", v3, v4);

  v6 = [(AXSettings *)self zoomPreferredLensModes];
  LODWORD(v3) = [v6 containsObject:v5];

  if (v3)
  {
    v7 = v5;
  }

  else
  {
    v7 = AXZoomLensDefault();
  }

  v8 = v7;

  return v8;
}

- (NSString)zoomPreferredCurrentDockPosition
{
  v2 = *MEMORY[0x1E69886A0];
  v3 = objc_opt_class();

  return AXSettingsReturnObjectValueWithClass(@"ZoomPreferredDockPosition", v2, v3);
}

- (void)setZoomPreferredMaximumZoomScale:(double)a3
{
  if (*MEMORY[0x1E6988700] > a3)
  {
    a3 = *MEMORY[0x1E6988700];
  }

  if (a3 >= *MEMORY[0x1E69886F0])
  {
    a3 = *MEMORY[0x1E69886F0];
  }

  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"ZoomPreferredMaximumZoomScale"];
}

- (NSOrderedSet)zoomPreferredLensModes
{
  v2 = AXZoomUserSelectableLensModes();
  v3 = objc_opt_class();
  v4 = AXSettingsReturnObjectValueWithClass(@"ZoomPreferredLensModes", v2, v3);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v4];

    v4 = v5;
  }

  return v4;
}

- (NSOrderedSet)zoomPreferredDockPositions
{
  v2 = AXZoomDockPositions();
  v3 = objc_opt_class();
  v4 = AXSettingsReturnObjectValueWithClass(@"ZoomPreferredDockPositions", v2, v3);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v4];

    v4 = v5;
  }

  return v4;
}

- (void)setZoomPreferredLensModes:(id)a3
{
  v4 = [a3 array];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"ZoomPreferredLensModes"];
}

- (void)setZoomPreferredDockPositions:(id)a3
{
  v4 = [a3 array];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"ZoomPreferredDockPositions"];
}

- (void)setZoomIdleSlugOpacity:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"ZoomIdleSlugOpacity"];
}

- (void)setZoomControllerColor:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"ZoomControllerColorPreference"];
}

- (void)setZoomShouldAllowFullscreenAutopanning:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"ZoomShouldAllowFullscreenAutopanning"];
}

- (void)setZoomKeyboardShortcutsEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"ZoomShouldUseKeyboardShortcutsPreference"];
}

- (void)setZoomAdjustZoomLevelKbShortcutEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"ZoomAdjustZoomLevelKeyboardShortcutEnabledPreference"];
}

- (void)setZoomToggleZoomKbShortcutEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"ZoomToggleZoomKeyboardShortcutEnabledPreference"];
}

- (void)setZoomPanZoomKbShortcutEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"ZoomPanZoomKeyboardShortcutEnabledPreference"];
}

- (void)setZoomResizeZoomWindowKbShortcutEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"ZoomResizeZoomWindowKeyboardShortcutEnabledPreference"];
}

- (void)setZoomSwitchZoomModeKbShortcutEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"ZoomSwitchZoomModeKeyboardShortcutEnabledPreference"];
}

- (void)setZoomTempToggleZoomKbShortcutEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"ZoomTempToggleZoomKeyboardShortcutEnabledPreference"];
}

- (void)setZoomScrollWheelKbShortcutEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"ZoomScrollWheelKeyboardShortcutEnabledPreference"];
}

- (void)setZoomTrackpadGestureEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"kAXZoomTrackpadGestureEnabledPreference"];
}

- (void)setZoomAutopannerShouldPanWithAcceleration:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"ZoomAutopannerShouldPanWithAccelerationPreference"];
}

- (void)setZoomShowWhileMirroring:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"ZoomShowZoomWhileMirroringPreference"];
}

- (void)zoomUserHadLegacyZoomEnabled:(BOOL *)a3 wasZoomedIn:(BOOL *)a4 withScale:(double *)a5
{
  v8 = MEMORY[0x1E69E4FA8];
  v9 = CFPreferencesCopyAppValue(@"Zoomed", *MEMORY[0x1E69E4FA8]);
  v10 = [v9 BOOLValue];
  v13 = CFPreferencesCopyAppValue(@"ZoomLevel", *v8);

  [v13 floatValue];
  v12 = v11;
  if (*MEMORY[0x1E6988700] > v12)
  {
    v12 = *MEMORY[0x1E6988700];
  }

  if (a3)
  {
    *a3 = v9 != 0;
  }

  if (a4)
  {
    *a4 = v10;
  }

  if (a5)
  {
    *a5 = v12;
  }
}

- (void)setZoomDebugDisableZoomLensScaleTransform:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"ZoomDebugDisableZoomLensScaleTransform"];
}

- (void)setZoomDebugShowExternalFocusRect:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"ZoomDebugShowExternalFocusRectPreference"];
}

- (void)setGuidedAccessAXFeaturesEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"kAXSGuidedAccessAXFeaturesEnabled"];
}

- (void)setGuidedAccessAllowsUnlockWithTouchID:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"GuidedAccessAllowsUnlockWithTouchID"];
}

- (NSString)guidedAccessToneIdentifierForTimeRestrictionEvents
{
  v3 = [(AXSettings *)self valueForPreferenceKey:@"GuidedAccessToneIdentifierForTimeRestrictionEvent"];
  if (!v3)
  {
    goto LABEL_5;
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v4 = getTLToneManagerClass_softClass;
  v14 = getTLToneManagerClass_softClass;
  if (!getTLToneManagerClass_softClass)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __getTLToneManagerClass_block_invoke;
    v10[3] = &unk_1E71E9A80;
    v10[4] = &v11;
    __getTLToneManagerClass_block_invoke(v10);
    v4 = v12[3];
  }

  v5 = v4;
  _Block_object_dispose(&v11, 8);
  v6 = [v4 sharedToneManager];
  v7 = [v6 toneWithIdentifierIsValid:v3];

  if ((v7 & 1) == 0)
  {
LABEL_5:
    v8 = [(AXSettings *)self guidedAccessDefaultToneIdentifierForTimeRestrictionEvents];

    v3 = v8;
  }

  return v3;
}

- (NSString)guidedAccessDefaultToneIdentifierForTimeRestrictionEvents
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getTLToneIdentifierNoneSymbolLoc_ptr;
  v9 = getTLToneIdentifierNoneSymbolLoc_ptr;
  if (!getTLToneIdentifierNoneSymbolLoc_ptr)
  {
    v3 = ToneLibraryLibrary();
    v7[3] = dlsym(v3, "TLToneIdentifierNone");
    getTLToneIdentifierNoneSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    [AXSettings(LegacyImplementation) guidedAccessDefaultToneIdentifierForTimeRestrictionEvents];
  }

  v4 = *v2;

  return v4;
}

- (void)setGuidedAccessShouldSpeakForTimeRestrictionEvents:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"GuidedAccessSpeakForTimeRestrictionEvent"];
}

- (void)setGuidedAccessAutoLockTimeInSeconds:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"GuidedAccessAutoLockTimeInSeconds"];
}

- (void)setGuidedAccessUserPrefersMirroringForExternalDisplays:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"GuidedAccessUserPrefersMirroringForExternalDisplays"];
}

- (void)setGaxInternalSettingsTimeRestrictionHasExpired:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"GAXInternalSettingTimeRestrictionHasExpired"];
}

- (void)setGaxInternalSettingsIsActiveAppSelfLocked:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXGAXInternalSettingIsActiveAppSelfLocked"];
}

- (void)setGaxInternalSettingsSystemDidRestartDueToLowBattery:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"GAXGlobalProfileSystemDidRestartDueToLowBattery"];
}

- (void)setAssistiveTouchCameraSwitchPreviewEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchCameraSwitchPreviewEnabledPreference"];
}

- (void)setAssistiveTouchInternalOnlyHiddenNubbitModeEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchInternalOnlyHiddenNubbitModeEnabledPreference"];
}

- (void)setAssistiveTouchInternalOnlyPearlTrackingEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchInternalOnlyPearlTrackingEnabledPreference"];
}

- (void)setValidateSecondPartyApps:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"ValidateSecondPartyApps"];
}

- (void)setIncludeBacktraceInLogs:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"IncludeBacktraceInLogs"];
}

- (void)setIgnoreAXAsserts:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"IgnoreAXAsserts"];
}

- (void)setIgnoreAXServerEntitlements:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"IgnoreAXServerEntitlements"];
}

- (void)setLogAXNotificationPosting:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"LogAXNotificationPosting"];
}

- (void)setUseNewAXBundleLoader:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"UseNewAXBundleLoader"];
}

- (void)setShouldPerformValidationsAtRuntime:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"shouldPerformValidationsAtRuntime"];
}

- (void)setInternalLoggingColorTheme:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"InternalLoggingColorThemePreference"];
}

- (int64_t)internalLoggingColorTheme
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"InternalLoggingColorThemePreference"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setEnableVoiceOverCaptions:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverCaptionPanelEnabled"];
}

- (void)setSyncPronunciationsWithCloudKit:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverPronunciationCloudKitSyncingEnabled"];
}

- (void)setDidTriggerSOSToday:(BOOL)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x1E695DF00] date];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSDidTriggerSOSToday"];
}

- (BOOL)didTriggerSOSValueSet
{
  v2 = objc_opt_class();
  v3 = AXSettingsReturnObjectValueWithClass(@"AXSDidTriggerSOSToday", 0, v2);
  v4 = v3 != 0;

  return v4;
}

- (BOOL)didTriggerSOSToday
{
  v2 = objc_opt_class();
  v3 = AXSettingsReturnObjectValueWithClass(@"AXSDidTriggerSOSToday", 0, v2);
  if (v3)
  {
    v4 = [MEMORY[0x1E695DEE8] currentCalendar];
    v5 = [MEMORY[0x1E695DF00] date];
    v6 = [v4 components:16 fromDate:v3 toDate:v5 options:0];

    v7 = [v6 day] < 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)voiceOverFlashlightNotificationsEnabled
{
  v2 = MGGetBoolAnswer();
  if (v2)
  {

    LOBYTE(v2) = AXSettingsReturnBoolValue(@"AXSVoiceOverFlashlightNotificationsEnabled", 1);
  }

  return v2;
}

- (void)setVoiceOverFlashlightNotificationsEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSVoiceOverFlashlightNotificationsEnabled"];
}

- (void)setVoiceOverDelayUntilSpeakUnderTouch:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:kAXSVoiceOverDelayUntilSpeakUnderTouch];
}

- (void)setShouldCaptureVisionEngineDiagnosticsToDisk:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VisionEngineCaptureDiagnosticsToDisk"];
}

- (void)setAutomaticAccessibilityEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AutomaticAccessibilityEnabled"];
}

- (void)setAutomaticAccessibilityIgnoreAppAccessibilityPreferred:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AutomaticAccessibilityIgnoreAppAccessibilityPreferred"];
}

- (void)setAutomaticAccessibilityVisualizationsEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AutomaticAccessibilityVisualizationsEnabled"];
}

- (id)automaticAccessibilityModes
{
  v2 = objc_opt_class();

  return AXSettingsReturnObjectValueWithClass(@"AutomaticAccessibilityModes", 0, v2);
}

- (int64_t)automaticAccessibilityModeForBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(AXSettings *)self automaticAccessibilityModes];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = [v6 unsignedIntegerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setAutomaticAccessibilityMode:(int64_t)a3 forBundleIdentifier:(id)a4
{
  v6 = a4;
  v7 = [(AXSettings *)self automaticAccessibilityModes];
  v8 = [v7 mutableCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [MEMORY[0x1E695DF90] dictionary];
  }

  v12 = v10;

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v12 setObject:v11 forKey:v6];

  [(AXSettings *)self setValue:v12 forPreferenceKey:@"AutomaticAccessibilityModes"];
}

- (id)voiceOverSelectedActivity
{
  v3 = [(AXSettings *)self valueForPreferenceKey:@"AXSVoiceOverSelectedActivityPreference"];
  if (v3)
  {
    v4 = [(AXSettings *)self voiceOverActivities];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __61__AXSettings_LegacyImplementation__voiceOverSelectedActivity__block_invoke;
    v8[3] = &unk_1E71EC430;
    v9 = v3;
    v5 = [v4 ax_filteredArrayUsingBlock:v8];
    v6 = [v5 firstObject];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __61__AXSettings_LegacyImplementation__voiceOverSelectedActivity__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:*(a1 + 32)];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (void)setVoiceOverSelectedActivity:(id)a3
{
  v5 = [a3 uuid];
  v4 = [v5 UUIDString];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSVoiceOverSelectedActivityPreference"];
}

- (void)setSecurePayAssertionActive:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSSecurePayAssertionActive"];
}

- (void)setLiveRegionStatusForWebOrApp:(id)a3 status:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(AXSettings *)self valueForPreferenceKey:@"AXSVoiceOverLiveRegionAppStatus"];
  v8 = [v7 mutableCopy];

  if (!v8)
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
  }

  [v8 setObject:v6 forKeyedSubscript:v9];
  [(AXSettings *)self setValue:v8 forPreferenceKey:@"AXSVoiceOverLiveRegionAppStatus"];
}

- (BOOL)liveRegionStatusEverSet
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"AXSVoiceOverLiveRegionAppStatus"];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)liveRegionStatusForWebOrApp:(id)a3
{
  v4 = a3;
  v5 = [(AXSettings *)self valueForPreferenceKey:@"AXSVoiceOverLiveRegionAppStatus"];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (void)setVoiceOverKeyboardModifierChoice:(int64_t)a3
{
  if ((a3 & 3) == 0)
  {
    _AXAssert();
  }

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v5 forPreferenceKey:@"AXSVoiceOverKeyboardModifierChoicePreference"];
}

- (void)setSkipHearingAidMFiAuth:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"InternalSkipHearingAidMFiAuth"];
}

- (void)setEnableHearingAidReporter:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"InternalEnableHearingAidReporter"];
}

- (void)setGuidedAccessDisallowDirectInactiveToActiveTransition:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSInternalGuidedAccessDisallowDirectInactiveToActiveTransition"];
}

- (void)setGuidedAccessEnableExperimentalUI:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSInternalGuidedAccessEnableExperimentalUI"];
}

- (void)setClassicInvertColors:(BOOL)a3
{
  v3 = a3;
  _AXSClassicInvertColorsSetEnabled();
  v5 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [(AXSettings *)self setValue:v5 forPreferenceKey:*MEMORY[0x1E69E4CC8]];
}

- (NSArray)tripleClickOrderedOptions
{
  v2 = objc_opt_class();

  return AXSettingsReturnObjectValueWithClass(@"AXSTripleClickUserOrderedPreference", 0, v2);
}

- (void)setSpeakCorrectionsEnabled:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [(AXSettings *)self setValue:v5 forPreferenceKey:@"SpeakCorrectionsEnabled"];

  if (a3)
  {

    MEMORY[0x1EEE60E90]();
  }

  else
  {
    v6 = 0;
    if (MEMORY[0x18CFF2DB0](*MEMORY[0x1E69E4EF0], &v6))
    {
      [MEMORY[0x1E696AD98] numberWithBool:0];
      _AXSAccessibilitySetiTunesPreference();
    }
  }
}

- (void)setCharacterFeedbackDelayDuration:(double)a3
{
  if (*MEMORY[0x1E6988938] < a3)
  {
    a3 = *MEMORY[0x1E6988938];
  }

  if (*MEMORY[0x1E6988940] >= a3)
  {
    a3 = *MEMORY[0x1E6988940];
  }

  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"CharacterFeedbackDelayPreference"];
}

- (void)setShowSpeechController:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"ShowSpeechController"];
}

- (void)setSpeechControllerIdleOpacity:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"SpeechControllerIdleOpacity"];
}

- (void)setSpeechControllerLongPressAction:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"SpeechControllerLongPressAction"];
}

- (void)setSpeechControllerDoubleTapAction:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"SpeechControllerDoubleTapAction"];
}

- (void)setGuestPassSessionIsActive:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [(AXSettings *)self setValue:v5 forPreferenceKey:*MEMORY[0x1E69E4D60]];

  [(AXSettings *)self setGuestPassSessionCCWidgetIsActive:v3];
}

- (void)setGuestPassSessionCCWidgetIsActive:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXGuestPassSessionCCWidgetActive"];
}

- (void)setAccessibilityReaderIsActive:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXAccessibilityReaderUIIsActive"];
}

- (float)quickSpeakVolume
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"QuickSpeakVolume"];
  objc_opt_class();
  v3 = 1.0;
  if (objc_opt_isKindOfClass())
  {
    [v2 floatValue];
    v3 = v4;
  }

  return v3;
}

- (void)setQuickSpeakVolume:(float)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"QuickSpeakVolume"];
}

- (void)setQuickSpeakUnderlineSentence:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"QuickSpeakUnderlineSentence"];
}

- (void)setQuickSpeakSentenceHighlightOption:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"QuickSpeakSentenceHighlight"];
}

- (unint64_t)quickSpeakSentenceHighlightOption
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"QuickSpeakSentenceHighlight"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (void)setQuickSpeakWordHighlightColor:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSQuickSpeakWordHighlightColorPreference"];
}

- (void)setQuickSpeakSentenceHighlightColor:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSQuickSpeakSentenceHighlightColorPreference"];
}

- (void)setQuickSpeakHighlightOption:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"QuickSpeakHighlightChoice"];
}

- (unint64_t)quickSpeakHighlightOption
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"QuickSpeakHighlightChoice"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 3;
  }

  return v3;
}

- (id)speechVoiceIdentifierForLanguageWithoutFallback:(id)a3 sourceKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AXSettings *)self valueForPreferenceKey:@"SpeechVoiceIdentifierForLanguage"];
  v9 = [v8 objectForKey:v6];

  v10 = [v9 objectForKey:v7];

  return v10;
}

- (void)setliveSpeechMaxRecentsCount:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSliveSpeechMaxRecentsCountPreference"];
}

- (id)speechVoiceIdentifierForLanguage:(id)a3 source:(int64_t)a4 exists:(BOOL *)a5
{
  v8 = MEMORY[0x1E696AEC0];
  v9 = a3;
  v10 = [v8 stringWithFormat:@"%d", a4];
  v11 = [(AXSettings *)self speechVoiceIdentifierForLanguage:v9 sourceKey:v10 exists:a5];

  return v11;
}

- (BOOL)userDidSelectVoiceForLanguage:(id)a3 sourceKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v6 = [MEMORY[0x1E6958500] currentLanguageCode];
  }

  v8 = AXCRemapLanguageCodeToFallbackIfNeccessary();

  v9 = [(AXSettings *)self valueForPreferenceKey:@"UserDidSelectVoiceForLanguage"];
  v10 = [v9 objectForKey:v7];
  v11 = [v10 objectForKey:v8];
  v12 = [v11 BOOLValue];

  return v12;
}

- (id)customSettingsForVoice:(id)a3 sourceKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AXSettings *)self valueForPreferenceKey:@"SpeechCustomVoiceSettings"];
  v9 = [v8 objectForKey:v7];

  v10 = [v9 objectForKey:v6];

  return v10;
}

- (void)setCustomSettingsForVoice:(id)a3 sourceKey:(id)a4 settings:(id)a5
{
  v19 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [(AXSettings *)self valueForPreferenceKey:@"SpeechCustomVoiceSettings"];
  v11 = v10;
  if (!v10)
  {
    v10 = MEMORY[0x1E695E0F8];
  }

  v12 = [v10 mutableCopy];

  v13 = [v12 objectForKeyedSubscript:v19];

  if (!v13)
  {
    v14 = [MEMORY[0x1E695E0F8] mutableCopy];
    [v12 setObject:v14 forKeyedSubscript:v19];
  }

  v15 = [v12 objectForKeyedSubscript:v19];
  v16 = [v15 mutableCopy];
  [v12 setObject:v16 forKeyedSubscript:v19];

  v17 = [v8 mutableCopy];
  v18 = [v12 objectForKeyedSubscript:v19];
  [v18 setObject:v17 forKeyedSubscript:v9];

  [(AXSettings *)self setValue:v12 forPreferenceKey:@"SpeechCustomVoiceSettings"];
}

- (void)setSpeechVoiceIdentifier:(id)a3 forLanguage:(id)a4 source:(int64_t)a5
{
  v8 = MEMORY[0x1E696AEC0];
  v9 = a4;
  v10 = a3;
  v11 = [v8 stringWithFormat:@"%d", a5];
  [(AXSettings *)self setSpeechVoiceIdentifier:v10 forLanguage:v9 sourceKey:v11];
}

- (void)setDefaultVoiceSelection:(id)a3 forLanguage:(id)a4 sourceKey:(id)a5
{
  v15 = a3;
  v6 = a5;
  v7 = [v15 rate];
  if (v7)
  {
    v8 = [v15 rate];
    [v8 floatValue];
  }

  v9 = [v15 pitch];
  if (v9)
  {
    v10 = [v15 pitch];
    [v10 floatValue];
  }

  v11 = [v15 volume];
  if (v11)
  {
    v12 = [v15 volume];
    [v12 floatValue];
  }

  v13 = [v6 isEqualToString:*MEMORY[0x1E6988650]];
  if (v13)
  {
    v14 = dispatch_semaphore_create(0);
    dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
  }
}

- (void)setUserDidSelectVoiceForLanguage:(id)a3 sourceKey:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (v11 && ([v6 isEqualToString:*MEMORY[0x1E6988658]] & 1) == 0)
  {
    v7 = [(AXSettings *)self valueForPreferenceKey:@"UserDidSelectVoiceForLanguage"];
    v8 = [v7 mutableCopy];

    if (!v8)
    {
      v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    }

    v9 = [v8 objectForKey:v6];
    v10 = [v9 mutableCopy];

    if (!v10)
    {
      v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
      [v8 setObject:v10 forKey:v6];
    }

    [v10 setObject:MEMORY[0x1E695E118] forKey:v11];
    [v8 setObject:v10 forKey:v6];
    [(AXSettings *)self setValue:v8 forPreferenceKey:@"UserDidSelectVoiceForLanguage"];
  }
}

- (id)selectedSpeechVoiceIdentifiers
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v4 = [(AXSettings *)self valueForPreferenceKey:@"SpeechVoiceIdentifierForLanguage"];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [v4 allValues];
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v11 = [v10 allValues];
        v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v19;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v19 != v14)
              {
                objc_enumerationMutation(v11);
              }

              [v3 addObject:*(*(&v18 + 1) + 8 * j)];
            }

            v13 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v13);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  v16 = [v3 allObjects];

  return v16;
}

- (id)selectedSpeechVoiceIdentifiersForSourceKey:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  [(AXSettings *)self valueForPreferenceKey:@"SpeechVoiceIdentifierForLanguage"];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = v27 = 0u;
  obj = [v18 allKeys];
  v6 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(obj);
        }

        if ([*(*(&v24 + 1) + 8 * i) isEqualToString:v4])
        {
          v10 = [v18 objectForKeyedSubscript:v4];
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v11 = [v10 allValues];
          v12 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v21;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v21 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                [v5 addObject:*(*(&v20 + 1) + 8 * j)];
              }

              v13 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
            }

            while (v13);
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  v16 = [v5 allObjects];

  return v16;
}

- (void)setSpokenContentShouldUseLanguageDetection:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"SpokenContentShouldUseLanguageDetection"];
}

- (void)_clearWhitetailMigrationSettings
{
  [(AXSettings *)self setValue:0 forPreferenceKey:@"AssistiveTouchScannerPrefersCompactForLanguagePreference"];
  [(AXSettings *)self setValue:0 forPreferenceKey:@"AssistiveTouchScannerAlternativeVoiceForLanguagePreference"];
  [(AXSettings *)self setValue:0 forPreferenceKey:@"AXSAssistiveTouchDefaultDialectPreference"];
  [(AXSettings *)self setValue:0 forPreferenceKey:@"QuickSpeakPrefersCompactForLanguage"];
  [(AXSettings *)self setValue:0 forPreferenceKey:@"QuickSpeakAlternativeVoiceForLanguage"];
  [(AXSettings *)self setValue:0 forPreferenceKey:@"AXSVoiceOverCompactVoicePreference"];
  [(AXSettings *)self setValue:0 forPreferenceKey:@"VoiceOverTouchPitchCompactVoice"];
  [(AXSettings *)self setValue:0 forPreferenceKey:@"AXSVoiceOverAlternativeVoicesPreference"];

  [(AXSettings *)self setValue:0 forPreferenceKey:@"com.apple.voiceovertouch.default.dialect"];
}

- (id)_quickSpeakAltVoices
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 valueForPreferenceKey:@"QuickSpeakAlternativeVoiceForLanguage"];

  return v3;
}

- (BOOL)siriAutoUpdateListInitialized
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"SiriAutoUpdateListInitializedPreference"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setSiriAutoUpdateListInitialized:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"SiriAutoUpdateListInitializedPreference"];
}

- (void)setQuickSpeakNubbitNormalizedPosition:(CGPoint)a3
{
  v4 = NSStringFromPoint(a3);
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"QuickSpeakNubbitNormalizedPosition"];
}

- (CGPoint)quickSpeakNubbitNormalizedPosition
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"QuickSpeakNubbitNormalizedPosition"];
  v3 = v2;
  if (v2)
  {
    v4 = NSPointFromString(v2);
    x = v4.x;
    y = v4.y;
  }

  else
  {
    x = 0.0;
    y = 0.2;
  }

  v7 = x;
  v8 = y;
  result.y = v8;
  result.x = v7;
  return result;
}

- (NSArray)customPronunciationSubstitutions
{
  v2 = [(AXSettings *)self valueForPreferenceKey:kAXSCustomPronunciationSubstitutionsPreference];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v3 = MEMORY[0x1E696ACD0], v4 = objc_opt_class(), [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "secureUnarchiveData:withExpectedClass:otherAllowedClasses:", v2, v4, v5), v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    v6 = [MEMORY[0x1E695DEC8] array];
  }

  return v6;
}

- (void)setCustomPronunciationSubstitutions:(id)a3
{
  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
  [(AXSettings *)self setValue:v4 forPreferenceKey:kAXSCustomPronunciationSubstitutionsPreference];
}

- (void)setVoiceOverPunctuationGroup:(id)a3
{
  v4 = [a3 UUIDString];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSVoiceOverPunctuationGroupPreference"];
}

- (NSUUID)voiceOverPunctuationGroup
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"AXSVoiceOverPunctuationGroupPreference"];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setVoiceOverPunctuationLevel:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSVoiceOverPunctuationLevelPreference"];
}

- (void)setVoiceOverLinkFeedback:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSVoiceOverLinkFeedbackPreference"];
}

- (int64_t)voiceOverLinkFeedback
{
  result = AXSettingsReturnIntegerValue(@"AXSVoiceOverLinkFeedbackPreference", 18);
  if (!result)
  {
    return 18;
  }

  return result;
}

- (void)setVoiceOverTraitFeedback:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSVoiceOverTraitFeedbackPreference"];
}

- (void)setVoiceOverInlineTextCompletionAppearanceFeedback:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"kAXSVoiceOverInlineTextCompletionAppearanceFeedbackPreference"];
}

- (int64_t)voiceOverInlineTextCompletionAppearanceFeedback
{
  result = AXSettingsReturnIntegerValue(@"kAXSVoiceOverInlineTextCompletionAppearanceFeedbackPreference", 6);
  if (!result)
  {
    return 6;
  }

  return result;
}

- (void)setVoiceOverInlineTextCompletionInsertionFeedback:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"kAXSVoiceOverInlineTextCompletionInsertionFeedbackPreference"];
}

- (int64_t)voiceOverInlineTextCompletionInsertionFeedback
{
  result = AXSettingsReturnIntegerValue(@"kAXSVoiceOverInlineTextCompletionInsertionFeedbackPreference", 10);
  if (!result)
  {
    return 10;
  }

  return result;
}

- (void)setVoiceOverDeletionFeedback:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSVoiceOverDeletionFeedbackPreference"];
}

- (void)setVoiceOverCapitalLetterFeedback:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSVoiceOverCapitalLetterFeedbackPreference"];
}

- (void)setVoiceOverRotorSummaryFeedback:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSVoiceOverRotorSummaryFeedbackPreference"];
}

- (void)setVoiceOverMoreContentOutputFeedback:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSVoiceOverMoreContentOutputFeedbackPreference"];
}

- (void)setVoiceOverContainerOutputFeedback:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSVoiceOverContainerOutputFeedbackPreference"];
}

- (void)setVoiceOverActionsFeedback:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSVoiceOverActionsFeedbackPreference"];
}

- (void)setVoiceOverActionFeedbackFirstInListOnly:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSVoiceOverFirstInListOnlyActionsFeedback"];
}

- (void)setVoiceOverDiscoveredSensitiveContentFeedback:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverDiscoveredSensitiveContentFeedback"];
}

- (void)setVoiceOverTouchSingleLetterQuickNavEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSVoiceOverTouchSingleLetterQuickNavPreference"];
}

- (void)setVoiceOverQuickNavAnnouncementFeedback:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverQuickNavAnnouncementFeedback"];
}

- (void)setVoiceOverSpeaksOverTelephoneCalls:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSVoiceOverSpeaksOverTelephoneCalls"];
}

- (void)setVoiceOverSpeakTableHeaders:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSVoiceOverSpeakTableHeadersPreference"];
}

- (void)setVoiceOverSpeakTableColumnRowInformation:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSVoiceOverSpeakTableColumnRowInformationPreference"];
}

- (void)setVoiceOverHelpMode:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverTouchHelpModePreference"];
}

- (int64_t)voiceOverHelpMode
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"VoiceOverTouchHelpModePreference"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setVoiceOverNavigateImagesOption:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"NavigateImagesPreference"];
}

- (int64_t)voiceOverNavigateImagesOption
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"NavigateImagesPreference"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (void)setVoiceOverPhoneticsFeedback:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverTouchPhoneticsEnabledPreference"];
}

- (int64_t)voiceOverPhoneticsFeedback
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"VoiceOverTouchPhoneticsEnabledPreference"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (void)setVoiceOverHardwareTypingFeedback:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverTouchTypingHardwareFeedback"];
}

- (int64_t)voiceOverHardwareTypingFeedback
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"VoiceOverTouchTypingHardwareFeedback"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

- (void)setVoiceOverSoftwareTypingFeedback:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverTouchTypingFeedback"];
}

- (int64_t)voiceOverSoftwareTypingFeedback
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"VoiceOverTouchTypingFeedback"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

- (void)setVoiceOverBrailleGesturesTypingFeedback:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverTouchTypingBrailleGesturesFeedback"];
}

- (void)setVoiceOverActivationWorkaround:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VOActivationWorkaround"];
}

- (int64_t)voiceOverActivationWorkaround
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"VOActivationWorkaround"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_voiceOverRotorItemEnabled:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = [(AXSettings *)self voiceOverRotorItems];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__AXSettings_LegacyImplementation___voiceOverRotorItemEnabled___block_invoke;
  v9[3] = &unk_1E71EC458;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateObjectsUsingBlock:v9];
  v7 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __63__AXSettings_LegacyImplementation___voiceOverRotorItemEnabled___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v6 = [v9 objectForKey:@"RotorItem"];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    v8 = [v9 objectForKey:@"Enabled"];
    *(*(*(a1 + 40) + 8) + 24) = [v8 BOOLValue];

    *a4 = 1;
  }
}

- (id)voiceOverRotorItemWithVoiceID:(id)a3 rate:(id)a4 volume:(id)a5 pitch:(id)a6
{
  v9 = MEMORY[0x1E696AFB0];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v9 UUID];
  v15 = [v14 UUIDString];

  v16 = [objc_alloc(MEMORY[0x1E6988768]) initWithVoiceId:v13 rate:v12 pitch:v10 volume:v11 voiceSettings:0 effects:0 boundLanguage:0];
  v17 = [[AXVoiceOverVoiceRotorItem alloc] initWithIdentifier:v15 selection:v16 userDefinedName:0];

  return v17;
}

- (BOOL)voiceOverBrailleGesturesEnabled
{
  if ([(AXSettings *)self _voiceOverRotorItemEnabled:*MEMORY[0x1E6988AB8]])
  {
    return 1;
  }

  return [(AXSettings *)self voiceOverTouchBrailleGesturesActivationGestureEnabled];
}

- (void)setVoiceOverBrailleWordWrapEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverBrailleWordWrapEnabled"];
}

- (NSDictionary)voiceOverBrailleDisconnectOnSleep
{
  v2 = objc_opt_class();

  return AXSettingsReturnObjectValueWithClass(@"VoiceOverBrailleDisplayDisconnectOnSleepPreference", 0, v2);
}

- (NSArray)voiceOverBrailleDisplays
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = AXSettingsReturnObjectValueWithClass(@"VoiceOverBrailleDisplays", 0, v3);
  if (![v4 count])
  {
    v5 = [(AXSettings *)self voiceOverBrailleBluetoothDisplay];
    v6 = v5;
    if (v5)
    {
      v10[0] = v5;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

      [(AXSettings *)self setVoiceOverBrailleDisplays:v7];
      [(AXSettings *)self setVoiceOverBrailleBluetoothDisplay:0];
      v4 = v7;
    }
  }

  v8 = [v4 ax_filteredArrayUsingBlock:&__block_literal_global_2149];

  return v8;
}

BOOL __60__AXSettings_LegacyImplementation__voiceOverBrailleDisplays__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v3 = getkSCROBrailleDisplayDriverIdentifierSymbolLoc_ptr;
  v15 = getkSCROBrailleDisplayDriverIdentifierSymbolLoc_ptr;
  if (!getkSCROBrailleDisplayDriverIdentifierSymbolLoc_ptr)
  {
    v4 = ScreenReaderOutputLibrary();
    v13[3] = dlsym(v4, "kSCROBrailleDisplayDriverIdentifier");
    getkSCROBrailleDisplayDriverIdentifierSymbolLoc_ptr = v13[3];
    v3 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v3)
  {
    __60__AXSettings_LegacyImplementation__voiceOverBrailleDisplays__block_invoke_cold_2();
  }

  v5 = *v3;
  v6 = [v2 objectForKey:v5];
  if ([v6 isEqualToString:@"com.apple.scrod.braille.driver.generic.hid"])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v7 = getkSCROBrailleDisplayMainSizeSymbolLoc_ptr;
    v15 = getkSCROBrailleDisplayMainSizeSymbolLoc_ptr;
    if (!getkSCROBrailleDisplayMainSizeSymbolLoc_ptr)
    {
      v8 = ScreenReaderOutputLibrary();
      v13[3] = dlsym(v8, "kSCROBrailleDisplayMainSize");
      getkSCROBrailleDisplayMainSizeSymbolLoc_ptr = v13[3];
      v7 = v13[3];
    }

    _Block_object_dispose(&v12, 8);
    if (!v7)
    {
      __60__AXSettings_LegacyImplementation__voiceOverBrailleDisplays__block_invoke_cold_1();
    }

    v9 = [v2 objectForKey:*v7];
    v10 = v9 != 0;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)setVoiceOverUseRingerSwitchToControlNotificationOutput:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSVoiceOverRingerSwitchForNotificationsEnabled"];
}

- (void)setVoiceOverBannerNotificationOutput:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSVoiceOverBannerNotificationOutput"];
}

- (void)setVoiceOverLockedScreenNotificationOutput:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSVoiceOverLockScreenNotificationOutput"];
}

- (void)setVoiceOverBrailleFormattingEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"kAXSVoiceOverBrailleFormatting"];
}

- (void)setVoiceOverBrailleAutoAdvanceDuration:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverBrailleAutoAdvanceDuration"];
}

- (double)voiceOverBrailleAutoAdvanceDuration
{
  v2 = *MEMORY[0x1E69889E0];
  result = AXSettingsReturnDoubleValue(@"VoiceOverBrailleAutoAdvanceDuration", *MEMORY[0x1E69889E0]);
  if (result > *MEMORY[0x1E69889E8] || result < *MEMORY[0x1E69889F0])
  {
    return v2;
  }

  return result;
}

- (void)setVoiceOverHintsEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverTouchHintsEnabled"];
}

- (void)setVoiceOverAudioDuckingEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverTouchAudioDuckingEnabled"];
}

- (void)setVoiceOverIgnoreTrackpad:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverIgnoreTrackpad"];
}

- (void)setVoiceOverAudioFollowsHDMIAudio:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverAudioFollowsHDMIAudio"];
}

- (void)setAutomationTrueTouch:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AutomationTrueTouch"];
}

- (void)setShowMotionCuesInScreenshots:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"ShowMotionCuesInScreenshots"];
}

- (void)setVoiceOverPitch:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:kAXSVoiceOverPitchPreference];
}

- (void)setVoiceOverSoundEffectsEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverUseSoundEffects"];
}

- (void)setVoiceOverVerbosityEmojiFeedback:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverVerbosityEmojiFeedbackPreference"];
}

- (void)setVoiceOverVerbosityEmojiSuffixEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverVerbosityEmojiSuffixEnabledPreference"];
}

- (void)setVoiceOverSoundVolume:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverSoundVolume"];
}

- (void)setVoiceOverAdjustSoundVolumeIndependently:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInt:!a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverAdjustSoundVolumeIndependently"];
}

- (void)setVoiceOverAlwaysTurnOnBluetooth:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSVoiceOverTurnOnBluetoothEnabled"];
}

- (void)setVoiceOverHapticsEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverHapticsEnabled"];
}

- (void)setVoiceOverHapticIntensity:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverHapticIntensity"];
}

- (void)setVoiceOverSpeakingRateInRotorEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"SpeakingRateInRotorEnabled"];
}

- (void)setVoiceOverSpeakNotificationsEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"SpeakNotificationInLockScreen"];
}

- (void)setVoiceOverMediaDuckingAmount:(double)a3
{
  v4 = fmax(a3, 0.01);
  if (v4 > 0.99)
  {
    v4 = 0.99;
  }

  v5 = [MEMORY[0x1E696AD98] numberWithDouble:v4];
  [(AXSettings *)self setValue:v5 forPreferenceKey:@"VoiceOverTouchMediaDuckingAmount"];
}

- (void)setVoiceOverMediaDuckingMode:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithLong:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverTouchMediaDuckingMode"];
}

- (NSArray)voiceOverRotorItems
{
  v60[55] = *MEMORY[0x1E69E9840];
  v60[0] = *MEMORY[0x1E6988AD8];
  v60[1] = *MEMORY[0x1E6988BE0];
  v60[2] = *MEMORY[0x1E6988B30];
  v60[3] = *MEMORY[0x1E6988BA8];
  v60[4] = *MEMORY[0x1E6988B88];
  v60[5] = *MEMORY[0x1E6988BD8];
  v60[6] = *MEMORY[0x1E6988AA0];
  v60[7] = *MEMORY[0x1E6988AA8];
  v60[8] = *MEMORY[0x1E6988B60];
  v60[9] = *MEMORY[0x1E6988B80];
  v60[10] = *MEMORY[0x1E6988B18];
  v60[11] = *MEMORY[0x1E6988BD0];
  v60[12] = *MEMORY[0x1E6988AC8];
  v60[13] = *MEMORY[0x1E6988AB0];
  v60[14] = *MEMORY[0x1E6988A88];
  v60[15] = *MEMORY[0x1E6988A60];
  v60[16] = *MEMORY[0x1E6988A70];
  v60[17] = *MEMORY[0x1E6988A78];
  v60[18] = *MEMORY[0x1E6988A68];
  v60[19] = *MEMORY[0x1E6988A80];
  v60[20] = *MEMORY[0x1E6988A38];
  v60[21] = *MEMORY[0x1E6988AB8];
  v60[22] = *MEMORY[0x1E6988B08];
  v60[23] = *MEMORY[0x1E6988BE8];
  v60[24] = *MEMORY[0x1E6988BF8];
  v3 = MEMORY[0x1E6988AE8];
  v60[25] = *MEMORY[0x1E6988AE8];
  v4 = MEMORY[0x1E6988B10];
  v60[26] = *MEMORY[0x1E6988B10];
  v5 = MEMORY[0x1E6988B38];
  v60[27] = *MEMORY[0x1E6988B38];
  v6 = MEMORY[0x1E6988B00];
  v60[28] = *MEMORY[0x1E6988B00];
  v60[29] = *MEMORY[0x1E6988B68];
  v60[30] = *MEMORY[0x1E6988B98];
  v60[31] = *MEMORY[0x1E6988B40];
  v60[32] = *MEMORY[0x1E6988B28];
  v60[33] = *MEMORY[0x1E6988A98];
  v60[34] = *MEMORY[0x1E6988BC8];
  v60[35] = *MEMORY[0x1E6988B58];
  v60[36] = *MEMORY[0x1E6988AD0];
  v60[37] = *MEMORY[0x1E6988BA0];
  v60[38] = *MEMORY[0x1E6988B78];
  v60[39] = *MEMORY[0x1E6988AE0];
  v60[40] = *MEMORY[0x1E6988B20];
  v60[41] = *MEMORY[0x1E6988B90];
  v60[42] = *MEMORY[0x1E6988BB0];
  v60[43] = *MEMORY[0x1E6988B70];
  v60[44] = *MEMORY[0x1E6988BC0];
  v7 = MEMORY[0x1E6988BB8];
  v60[45] = *MEMORY[0x1E6988BB8];
  v60[46] = *MEMORY[0x1E6988AF0];
  v60[47] = *MEMORY[0x1E6988B50];
  v8 = MEMORY[0x1E6988A40];
  v60[48] = *MEMORY[0x1E6988A40];
  v60[49] = *MEMORY[0x1E6988A58];
  v9 = MEMORY[0x1E6988A50];
  v60[50] = *MEMORY[0x1E6988A50];
  v60[51] = *MEMORY[0x1E6988BF0];
  v10 = MEMORY[0x1E6988B48];
  v60[52] = *MEMORY[0x1E6988B48];
  v60[53] = *MEMORY[0x1E6988A48];
  v11 = MEMORY[0x1E6988AF8];
  v60[54] = *MEMORY[0x1E6988AF8];
  v59[0] = *MEMORY[0x1E6988AD8];
  v59[1] = *MEMORY[0x1E6988BE0];
  v59[2] = *MEMORY[0x1E6988B30];
  v59[3] = *v3;
  v59[4] = *v4;
  v59[5] = *v5;
  v59[6] = *v6;
  v59[7] = *v7;
  v59[8] = *v8;
  v59[9] = *v9;
  v59[10] = *v10;
  v59[11] = *v11;
  v39 = self;
  v12 = MEMORY[0x1E6988BE8];
  v13 = [(AXSettings *)self valueForPreferenceKey:@"VoiceOverTouchRotorItemsPreference"];
  v38 = v13;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__12;
  v56 = __Block_byref_object_dispose__12;
  if (v13)
  {
    v14 = [v13 mutableCopy];
  }

  else
  {
    v14 = objc_opt_new();
  }

  v57 = v14;
  v15 = [v53[5] count];
  v16 = [MEMORY[0x1E695DFA8] setWithCapacity:v15];
  v17 = v53[5];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __55__AXSettings_LegacyImplementation__voiceOverRotorItems__block_invoke;
  v50[3] = &unk_1E71EC4A0;
  v40 = v16;
  v51 = v40;
  [v17 enumerateObjectsUsingBlock:v50];
  v18 = _AXSVoiceOverTouchCopyTactileGraphicsDisplay();

  v19 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  do
  {
    if ([v40 containsObject:v60[v19]])
    {
      goto LABEL_17;
    }

    if ([v60[v19] isEqualToString:*v12])
    {
      v20 = [MEMORY[0x1E696AE30] processInfo];
      if ([v20 physicalMemory] < 0x77359400)
      {
        goto LABEL_16;
      }

      v21 = AXRuntimeCheck_HasANE();

      if (!v21)
      {
        goto LABEL_17;
      }
    }

    if (v18 || ([v60[v19] isEqualToString:*MEMORY[0x1E6988A88]] & 1) == 0 && (objc_msgSend(v60[v19], "isEqualToString:", *MEMORY[0x1E6988A60]) & 1) == 0 && (objc_msgSend(v60[v19], "isEqualToString:", *MEMORY[0x1E6988A70]) & 1) == 0 && (objc_msgSend(v60[v19], "isEqualToString:", *MEMORY[0x1E6988A78]) & 1) == 0 && (objc_msgSend(v60[v19], "isEqualToString:", *MEMORY[0x1E6988A68]) & 1) == 0 && (objc_msgSend(v60[v19], "isEqualToString:", *MEMORY[0x1E6988A80]) & 1) == 0)
    {
      *(v47 + 24) = 1;
      v20 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
      [v20 setObject:v60[v19] forKey:@"RotorItem"];
      v22 = 0;
      v23 = 1;
      do
      {
        if (AXSafeEqual())
        {
          break;
        }

        v23 = v22++ < 0xB;
      }

      while (v22 != 12);
      if ([(AXSettings *)v39 voiceOverSpeakingRateInRotorEnabled])
      {
        v23 |= AXSafeEqual() != 0;
      }

      v24 = [MEMORY[0x1E696AD98] numberWithBool:v23 & 1];
      [v20 setObject:v24 forKey:@"Enabled"];

      [v53[5] addObject:v20];
LABEL_16:
    }

LABEL_17:
    ++v19;
  }

  while (v19 != 55);
  v25 = [v53[5] copy];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v26 = v25;
  v27 = [v26 countByEnumeratingWithState:&v42 objects:v58 count:16];
  v28 = v27;
  if (v27)
  {
    v29 = *v43;
    do
    {
      v30 = 0;
      do
      {
        if (*v43 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v42 + 1) + 8 * v30);
        v32 = [v31 objectForKeyedSubscript:@"RotorItem"];
        v33 = 0;
        while (([v60[v33] isEqualToString:v32] & 1) == 0)
        {
          if (++v33 == 55)
          {
            *(v47 + 24) = 1;
            [v53[5] removeObject:v31];
            break;
          }
        }

        ++v30;
      }

      while (v30 != v28);
      v28 = [v26 countByEnumeratingWithState:&v42 objects:v58 count:16];
    }

    while (v28);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__AXSettings_LegacyImplementation__voiceOverRotorItems__block_invoke_2;
  block[3] = &unk_1E71EC4F0;
  block[4] = &v52;
  block[5] = &v46;
  if (voiceOverRotorItems_onceToken != -1)
  {
    dispatch_once(&voiceOverRotorItems_onceToken, block);
  }

  v34 = [v53[5] copy];

  if (*(v47 + 24) == 1)
  {
    [(AXSettings *)v39 setValue:v34 forPreferenceKey:@"VoiceOverTouchRotorItemsPreference"];
  }

  _Block_object_dispose(&v46, 8);

  _Block_object_dispose(&v52, 8);
  for (i = 11; i != -1; --i)
  {
  }

  for (j = 54; j != -1; --j)
  {
  }

  return v34;
}

void __55__AXSettings_LegacyImplementation__voiceOverRotorItems__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectForKey:@"RotorItem"];
  [v2 addObject:v3];
}

void __55__AXSettings_LegacyImplementation__voiceOverRotorItems__block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(*(*(*(a1 + 32) + 8) + 40), "count")}];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(*(*(a1 + 32) + 8) + 40), "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = a1;
  obj = *(*(*(a1 + 32) + 8) + 40);
  v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = [v8 objectForKeyedSubscript:{@"RotorItem", v13}];
        v10 = [v8 objectForKeyedSubscript:@"Enabled"];
        if ([v2 containsObject:v9])
        {
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __55__AXSettings_LegacyImplementation__voiceOverRotorItems__block_invoke_3;
          v15[3] = &unk_1E71EC4C8;
          v16 = v9;
          v17 = v10;
          v11 = [v3 indexOfObjectPassingTest:v15];
          if (v11 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v3 replaceObjectAtIndex:v11 withObject:v8];
          }
        }

        else
        {
          [v3 addObject:v8];
          [v2 addObject:v9];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  v12 = [v3 count];
  if (v12 != [*(*(*(v13 + 32) + 8) + 40) count])
  {
    *(*(*(v13 + 40) + 8) + 24) = 1;
    objc_storeStrong((*(*(v13 + 32) + 8) + 40), v3);
  }
}

uint64_t __55__AXSettings_LegacyImplementation__voiceOverRotorItems__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"RotorItem"];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = [v3 objectForKeyedSubscript:@"Enabled"];
    v6 = [v5 isEqualToNumber:*(a1 + 40)] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setVoiceOverSpeakActionConfirmation:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverSpeakActionConfirmationPreference"];
}

- (void)setVoiceOverRotorUpdatesWithElement:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSVoiceOverRotorUpdatesWithElementPreference"];
}

- (void)setVoiceOverEditAppsActionEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverEditAppsActionEnabledPreference"];
}

- (void)_localeChange:(id)a3
{
  v3 = [MEMORY[0x1E695DF58] preferredLanguages];
  [v3 enumerateObjectsUsingBlock:&__block_literal_global_2157];
}

uint64_t __50__AXSettings_LegacyImplementation___localeChange___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [MEMORY[0x1E695DF58] characterDirectionForLanguage:a2];
  AnyUserPreferredLanguageIsRTL |= result == 2;
  return result;
}

- (BOOL)anyUserPreferredLangaugeIsRTL
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__AXSettings_LegacyImplementation__anyUserPreferredLangaugeIsRTL__block_invoke;
  block[3] = &unk_1E71E9B98;
  block[4] = self;
  if (anyUserPreferredLangaugeIsRTL_onceToken != -1)
  {
    dispatch_once(&anyUserPreferredLangaugeIsRTL_onceToken, block);
  }

  return AnyUserPreferredLanguageIsRTL;
}

void __65__AXSettings_LegacyImplementation__anyUserPreferredLangaugeIsRTL__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _localeChange:0];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:sel__localeChange_ name:*MEMORY[0x1E695D8F0] object:0];
}

- (NSString)voiceOverBrailleTableIdentifier
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"voiceOverBrailleTableIdentifier"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v2 = 0;
  }

  return v2;
}

- (NSArray)voiceOverBrailleLanguageRotorItems
{
  v24[3] = *MEMORY[0x1E69E9840];
  v2 = _AXSVoiceOverTouchCopyBrailleLanguageRotorItems();
  if ([v2 count])
  {
    v3 = v2;
  }

  else
  {
    v4 = objc_opt_new();
    v5 = +[AXLanguageManager sharedInstance];
    v6 = [v5 userLocale];

    v7 = [MEMORY[0x1E698F560] defaultTablesArrayForLocale:v6];
    if ([v7 count])
    {
      v8 = [v7 firstObject];
      v9 = MEMORY[0x1E695E118];
      v23[0] = @"Default";
      v23[1] = @"Enabled";
      v24[0] = MEMORY[0x1E695E118];
      v24[1] = MEMORY[0x1E695E118];
      v23[2] = @"LanguageDefaults";
      v10 = [v6 localeIdentifier];
      v21 = v10;
      v11 = [v8 identifier];
      v22 = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v24[2] = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];
      [v4 addObject:v13];

      if ([v7 count] >= 2)
      {
        v14 = 1;
        do
        {
          v15 = [v7 objectAtIndex:v14];
          v19[1] = @"RotorItem";
          v20[0] = v9;
          v19[0] = @"Enabled";
          v16 = [v15 identifier];
          v20[1] = v16;
          v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
          [v4 addObject:v17];

          ++v14;
        }

        while (v14 < [v7 count]);
      }
    }

    v3 = [v4 copy];
  }

  return v3;
}

- (NSArray)voiceOverTouchBrailleUIMainMenuItems
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__AXSettings_LegacyImplementation__voiceOverTouchBrailleUIMainMenuItems__block_invoke;
  block[3] = &unk_1E71E9B98;
  block[4] = self;
  if (voiceOverTouchBrailleUIMainMenuItems_onceToken != -1)
  {
    dispatch_once(&voiceOverTouchBrailleUIMainMenuItems_onceToken, block);
  }

  v2 = _AXSVoiceOverTouchCopyBrailleUIMainMenuItems();

  return v2;
}

- (void)_updateVoiceOverTouchBrailleUIMainMenuItems
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = _AXSVoiceOverTouchCopyBrailleUIMainMenuItems();
  v3 = objc_opt_new();
  v4 = [&unk_1EFE97270 mutableCopy];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = v2;
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"ID"];
        if (v11 && [&unk_1EFE97270 containsObject:v11])
        {
          [v3 addObject:v10];
          [v4 removeObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v25 objects:v32 count:16];
    }

    while (v7);
  }

  v20 = v5;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = v4;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    v16 = MEMORY[0x1E695E118];
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v21 + 1) + 8 * j);
        v29[0] = @"ID";
        v29[1] = @"enabled";
        v30[0] = v18;
        v30[1] = v16;
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
        [v3 addObject:v19];
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v14);
  }

  _AXSVoiceOverTouchSetBrailleUIMainMenuItems();
}

- (void)setVoiceOverAlwaysUseNemethCodeForMathEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"voiceOverAlwaysUseNemethCodeForMathEnabled"];
}

- (BOOL)voiceOverAlwaysUseNemethCodeForMathEnabled
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"voiceOverAlwaysUseNemethCodeForMathEnabled"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v4 = [MEMORY[0x1E695DF58] currentLocale];
    v5 = [v4 localeIdentifier];
    if ([v5 isEqualToString:@"en_US"])
    {
      v3 = 1;
    }

    else
    {
      v3 = [v5 isEqualToString:@"en_CA"];
    }
  }

  return v3;
}

- (void)setVoiceOverBrailleGradeTwoAutoTranslateEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverShowGrade2AutoTranslate"];
}

- (void)setVoiceOverShowSoftwareKeyboardWithBraille:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverShowSWKeyboardWithBraille"];
}

- (void)setVoiceOverSpeakNonfocusableElementsAfterDelay:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverSpeakNonfocusableElementsAfterDelay"];
}

- (void)setVoiceOverSilenceAnnouncements:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverSilenceAnnouncements"];
}

- (void)setVoiceOverPreferredTVInteractionMode:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverTouchTVInteractionMode"];
}

- (void)setVoiceOverPrefersFollowFocusNavigationStyle:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverTouchTVPrefersFollowFocusNavigationStyle"];
}

- (void)setVoiceOverExploreFocusAffectsNativeFocus:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverExploreFocusAffectsNativeFocus"];
}

- (void)setVoiceOverDescribedMedia:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverTouchDescribedMedia"];
}

- (void)setVoiceOverShouldDisallowUSBRestrictedMode:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverShouldDisallowUSBRestrictedMode"];
}

- (NSArray)voiceOverDetectionModeItems
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = 0;
  v4 = MEMORY[0x1E695E118];
  do
  {
    if ((AXDeviceSupportsDetectionMode() & 1) != 0 || v3 > 5 || ((1 << v3) & 0x23) == 0)
    {
      v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
      v6 = AXNameForDetectionMode(v3);
      [v5 setObject:v6 forKey:@"Detector"];

      [v5 setObject:v4 forKey:@"Enabled"];
      [(NSArray *)v2 axSafelyAddObject:v5];
    }

    ++v3;
  }

  while (v3 != 7);
  v7 = objc_opt_class();
  v8 = AXSettingsReturnObjectValueWithClass(@"VoiceOverDetectionModeItems", v2, v7);
  v9 = [(NSArray *)v2 count];
  v10 = v8;
  if (v9 != [(NSArray *)v8 count])
  {
    [(AXSettings *)self setVoiceOverDetectionModeItems:v2];
    v10 = v2;
  }

  v11 = v10;

  return v10;
}

- (void)setLiveRecognitionActive:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSLiveRecognitionActive"];
}

- (void)setLiveRecognitionOverlayOpen:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSLiveRecognitionOverlayOpen"];
}

- (NSArray)enabledLiveRecognitionModes
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"AXSEnabledLiveRecognitionModes"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = v4;

  return v4;
}

- (void)setLiveRecognitionChatGPTEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSLiveRecognitionChatGPTEnabled"];
}

- (void)setLiveRecognitionAutomaticFlashlightEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSLiveRecognitionAutomaticFlashlightEnabled"];
}

- (NSSet)liveRecognitionSceneFeedbacks
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:0];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:1];
  v6 = [v3 setWithObjects:{v4, v5, 0}];

  v7 = [(AXSettings *)self valueForPreferenceKey:@"AXSLiveRecognitionSceneFeedbacks"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v8 = MEMORY[0x1E696ACD0], v9 = objc_opt_class(), [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "secureUnarchiveData:withExpectedClass:otherAllowedClasses:", v7, v9, v10), v11 = objc_claimAutoreleasedReturnValue(), v10, !v11))
  {
    v11 = v6;
  }

  return v11;
}

- (void)setLiveRecognitionSceneFeedbacks:(id)a3
{
  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSLiveRecognitionSceneFeedbacks"];
}

- (NSSet)liveRecognitionPeopleFeedbacks
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:0];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:1];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:2];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:3];
  v8 = [v3 setWithObjects:{v4, v5, v6, v7, 0}];

  v9 = [(AXSettings *)self valueForPreferenceKey:@"AXSLiveRecognitionPeopleFeedbacks"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v10 = MEMORY[0x1E696ACD0], v11 = objc_opt_class(), [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "secureUnarchiveData:withExpectedClass:otherAllowedClasses:", v9, v11, v12), v13 = objc_claimAutoreleasedReturnValue(), v12, !v13))
  {
    v13 = v8;
  }

  return v13;
}

- (void)setLiveRecognitionPeopleFeedbacks:(id)a3
{
  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSLiveRecognitionPeopleFeedbacks"];
}

- (NSSet)liveRecognitionDoorsFeedbacks
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:0];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:1];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:2];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:3];
  v8 = [v3 setWithObjects:{v4, v5, v6, v7, 0}];

  v9 = [(AXSettings *)self valueForPreferenceKey:@"AXSLiveRecognitionDoorsFeedbacks"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v10 = MEMORY[0x1E696ACD0], v11 = objc_opt_class(), [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "secureUnarchiveData:withExpectedClass:otherAllowedClasses:", v9, v11, v12), v13 = objc_claimAutoreleasedReturnValue(), v12, !v13))
  {
    v13 = v8;
  }

  return v13;
}

- (void)setLiveRecognitionDoorsFeedbacks:(id)a3
{
  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSLiveRecognitionDoorsFeedbacks"];
}

- (NSSet)liveRecognitionFurnitureFeedbacks
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:0];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:1];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:2];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:3];
  v8 = [v3 setWithObjects:{v4, v5, v6, v7, 0}];

  v9 = [(AXSettings *)self valueForPreferenceKey:@"AXSLiveRecognitionFurnitureFeedbacks"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v10 = MEMORY[0x1E696ACD0], v11 = objc_opt_class(), [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "secureUnarchiveData:withExpectedClass:otherAllowedClasses:", v9, v11, v12), v13 = objc_claimAutoreleasedReturnValue(), v12, !v13))
  {
    v13 = v8;
  }

  return v13;
}

- (void)setLiveRecognitionFurnitureFeedbacks:(id)a3
{
  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSLiveRecognitionFurnitureFeedbacks"];
}

- (NSSet)liveRecognitionTextFeedbacks
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:0];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:1];
  v6 = [v3 setWithObjects:{v4, v5, 0}];

  v7 = [(AXSettings *)self valueForPreferenceKey:@"AXSLiveRecognitionTextFeedbacks"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v8 = MEMORY[0x1E696ACD0], v9 = objc_opt_class(), [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "secureUnarchiveData:withExpectedClass:otherAllowedClasses:", v7, v9, v10), v11 = objc_claimAutoreleasedReturnValue(), v10, !v11))
  {
    v11 = v6;
  }

  return v11;
}

- (void)setLiveRecognitionTextFeedbacks:(id)a3
{
  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSLiveRecognitionTextFeedbacks"];
}

- (NSSet)liveRecognitionPointAndSpeakFeedbacks
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:0];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:1];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:2];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:3];
  v8 = [v3 setWithObjects:{v4, v5, v6, v7, 0}];

  v9 = [(AXSettings *)self valueForPreferenceKey:@"AXSLiveRecognitionPointAndSpeakFeedbacks"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v10 = MEMORY[0x1E696ACD0], v11 = objc_opt_class(), [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "secureUnarchiveData:withExpectedClass:otherAllowedClasses:", v9, v11, v12), v13 = objc_claimAutoreleasedReturnValue(), v12, !v13))
  {
    v13 = v8;
  }

  return v13;
}

- (void)setLiveRecognitionPointAndSpeakFeedbacks:(id)a3
{
  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSLiveRecognitionPointAndSpeakFeedbacks"];
}

- (NSDictionary)liveRecognitionActivities
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"AXSLiveRecognitionActivities"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  v3 = MEMORY[0x1E696ACD0];
  v4 = objc_opt_class();
  v9 = 0;
  v5 = [v3 unarchivedDictionaryWithKeysOfClass:v4 objectsOfClass:objc_opt_class() fromData:v2 error:&v9];
  v6 = v9;
  if (v6)
  {
    v7 = AXLogSettings();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [AXSettings(LegacyImplementation) liveRecognitionActivities];
    }
  }

  if (!v5)
  {
LABEL_7:
    v5 = [MEMORY[0x1E695DF20] dictionary];
  }

  return v5;
}

- (void)setLiveRecognitionActivities:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v7];
  v5 = v7;
  if (v5)
  {
    v6 = AXLogSettings();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [AXSettings(LegacyImplementation) setLiveRecognitionActivities:];
    }
  }

  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSLiveRecognitionActivities"];
}

- (AXVOLiveRecognitionActivity)liveRecognitionActivity
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"AXSLiveRecognitionActivity"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v5 = 0, [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:&v5], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v3 = objc_alloc_init(AXVOLiveRecognitionActivity);
  }

  return v3;
}

- (void)setLiveRecognitionActivity:(id)a3
{
  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSLiveRecognitionActivity"];
}

- (void)setSwitchControlShouldDisallowUSBRestrictedMode:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"SCShouldDisallowUSBRestrictedMode"];
}

- (void)setVoiceOverUserDidReadUSBRestrictedModeAlert:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverUserDidReadUSBRestrictedModeAlert"];
}

- (void)setSwitchControlUserDidReadUSBRestrictedModeAlert:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"SCUserDidReadUSBRestrictedModeAlert"];
}

- (void)addRotorOptionsForLoginSession
{
  v24[2] = *MEMORY[0x1E69E9840];
  v2 = [(AXSettings *)self voiceOverRotorItems];
  v3 = [v2 mutableCopy];

  v4 = *MEMORY[0x1E6988B08];
  v24[0] = *MEMORY[0x1E6988AB8];
  v24[1] = v4;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v20 = 0u;
  v5 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v16 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        v21[0] = @"RotorItem";
        v21[1] = @"Enabled";
        v22[0] = v8;
        v22[1] = MEMORY[0x1E695E118];
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
        if ([v3 count])
        {
          v10 = 0;
          while (1)
          {
            v11 = [v3 objectAtIndex:v10];
            v12 = [v11 objectForKey:@"RotorItem"];
            v13 = [v12 isEqualToString:v8];

            if (v13)
            {
              break;
            }

            if (++v10 >= [v3 count])
            {
              goto LABEL_10;
            }
          }

          [v3 replaceObjectAtIndex:v10 withObject:v9];
        }

        else
        {
LABEL_10:
          [v3 addObject:v9];
        }

        ++v7;
      }

      while (v7 != v6);
      v6 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v6);
  }

  [(AXSettings *)self setVoiceOverRotorItems:v3];
}

- (void)configureZoomForLoginSession
{
  [(AXSettings *)self setZoomShouldShowSlug:1];
  [(AXSettings *)self setZoomScale:2.0];

  [(AXSettings *)self setZoomInStandby:0];
}

- (void)setVoiceOverAlternativeVoiceIdentifier:(id)a3 forLanguage:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(AXSettings *)self valueForPreferenceKey:@"AXSVoiceOverAlternativeVoicesPreference"];
  v8 = [v7 mutableCopy];

  if (!v8)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
  }

  if (v9)
  {
    [v8 setObject:v9 forKey:v6];
  }

  else
  {
    [v8 removeObjectForKey:v6];
  }

  [(AXSettings *)self setValue:v8 forPreferenceKey:@"AXSVoiceOverAlternativeVoicesPreference"];
}

- (id)voiceOverAlternativeVoiceIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(AXSettings *)self valueForPreferenceKey:@"AXSVoiceOverAlternativeVoicesPreference"];
  v6 = [v5 objectForKey:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setVoiceOverSpeakingRate:(float)a3 forLanguage:(id)a4
{
  v4 = AXLogSettings();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [AXSettings(LegacyImplementation) setVoiceOverSpeakingRate:forLanguage:];
  }
}

- (float)voiceOverSpeakingRateForLanguage:(id)a3
{
  v4 = a3;
  v5 = [(AXSettings *)self valueForPreferenceKey:@"VoiceOverLanguageSpeakingRate"];
  v6 = [v5 objectForKey:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 floatValue];
    v8 = v7;
  }

  else
  {
    v8 = 3.4028e38;
  }

  return v8;
}

- (void)setVoiceOverShouldOutputToHearingAid:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverOutputToHearingAid"];
}

- (void)setVoiceOverTouchBrailleGesturesShouldUseLockedConfiguration:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverBrailleGesturesShouldUseLockedConfiguration"];
}

- (void)setVoiceOverTouchBrailleGesturesLockedOrientation:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithLong:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverBrailleGesturesLockedOrientation"];
}

- (void)setVoiceOverTouchBrailleGesturesLockedTypingMode:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverBrailleGesturesLockedTypingMode"];
}

- (void)setVoiceOverTouchBrailleGesturesDidPlayCalibrationHint:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverBrailleGesturesDidPlayCalibrationHint"];
}

- (void)setVoiceOverBrailleAlertsEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSVoiceOverBrailleAlertsEnabled"];
}

- (void)setVoiceOverBrailleAlertShowUntilDismissed:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSVoiceOverBrailleAlertShowUntilDismissed"];
}

- (void)setVoiceOverBrailleAlertDisplayDuration:(double)a3
{
  if (*MEMORY[0x1E69889F8] <= a3)
  {
    a3 = *MEMORY[0x1E69889F8];
  }

  if (a3 < *MEMORY[0x1E6988A00])
  {
    a3 = *MEMORY[0x1E6988A00];
  }

  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverBrailleDisplayAlertDuration"];
}

- (void)setVoiceOverBrailleKeyDebounceTimeout:(double)a3
{
  if (*MEMORY[0x1E6988A08] <= a3)
  {
    a3 = *MEMORY[0x1E6988A08];
  }

  if (a3 < *MEMORY[0x1E6988A10])
  {
    a3 = *MEMORY[0x1E6988A10];
  }

  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverBrailleKeyDebounceTimeout"];
}

- (void)setVoiceOverDoubleTapInterval:(double)a3
{
  if (*MEMORY[0x1E6988A28] <= a3)
  {
    a3 = *MEMORY[0x1E6988A28];
  }

  if (a3 < *MEMORY[0x1E6988A30])
  {
    a3 = *MEMORY[0x1E6988A30];
  }

  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:kAXSVoiceOverDoubleTapInterval];
}

- (int64_t)voiceOverNavigationDirectionMode
{
  if (![(AXSettings *)self anyUserPreferredLangaugeIsRTL])
  {
    return 0;
  }

  return AXSettingsReturnIntegerValue(@"VoiceOverNavigationDirectionMode", 0);
}

- (void)setVoiceOverNavigationDirectionMode:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverNavigationDirectionMode"];
}

- (void)setTapToSpeakTimeEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"TapToSpeakTimeEnabled"];
}

- (void)setTapToSpeakTimeAvailability:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"TapToSpeakTimeAvailability"];
}

- (BOOL)voiceOverTapticTimeMode
{
  if ([(AXSettings *)self voiceOverEnabled])
  {
    v3 = MEMORY[0x1E6988600];
  }

  else
  {
    v4 = [(AXSettings *)self tapticTimeIsAvailable];
    if (!v4)
    {
      return v4;
    }

    v3 = MEMORY[0x1E69885F8];
  }

  v5 = *v3;

  LOBYTE(v4) = AXSettingsReturnBoolValue(@"VoiceOverTapticTimeMode", v5);
  return v4;
}

- (void)setVoiceOverTapticTimeMode:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverTapticTimeMode"];
}

- (void)setVoiceOverTapticTimeEncoding:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverTapticTimeEncoding"];
}

- (void)setVoiceOverTapticTimeSpeed:(float)a3
{
  if (*MEMORY[0x1E6988638] >= a3)
  {
    a3 = *MEMORY[0x1E6988638];
  }

  if (*MEMORY[0x1E6988630] < a3)
  {
    a3 = *MEMORY[0x1E6988630];
  }

  v4 = [MEMORY[0x1E696AD98] numberWithFloat:*&a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverTapticTimeSpeed"];
}

- (void)setVoiceOverTapticChimesEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverTapticChimesEnabled"];
}

- (void)setTapticTimeInternalFlashScreenEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"TapticTimeInternalFlashScreenEnabled"];
}

- (void)setVoiceOverTapticChimesAvailability:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverTapticChimesAvailability"];
}

- (void)setVoiceOverTapticChimesFrequencyEncoding:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverTapticChimesFrequencyEncoding"];
}

- (void)setVoiceOverTapticChimesSoundType:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverTapticChimesSoundType"];
}

- (void)setVoiceOverTapticChimesScheduleEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverTapticChimesScheduleEnabled"];
}

- (NSDateFormatter)voiceOverTapticChimesScheduleDateFormatter
{
  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v2 setDateStyle:0];
  [v2 setTimeStyle:1];
  v3 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v2 setTimeZone:v3];

  return v2;
}

- (NSDate)voiceOverTapticChimesScheduleDateStart
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"VoiceOverTapticChimesScheduleDateStart"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v4 setHour:7];
    [v4 setMinute:0];
    v5 = objc_alloc(MEMORY[0x1E695DEE8]);
    v6 = [v5 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
    v7 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
    [v6 setTimeZone:v7];

    v3 = [v6 dateFromComponents:v4];
  }

  return v3;
}

- (NSDate)voiceOverTapticChimesScheduleDateEnd
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"VoiceOverTapticChimesScheduleDateEnd"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v4 setHour:22];
    [v4 setMinute:0];
    v5 = objc_alloc(MEMORY[0x1E695DEE8]);
    v6 = [v5 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
    v7 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
    [v6 setTimeZone:v7];

    v3 = [v6 dateFromComponents:v4];
  }

  return v3;
}

- (void)setVoiceOverTapticChimesUnity25Active:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverTapticChimesUnity25Active"];
}

- (void)setVoiceOverTapticChimesUnity25SoundType:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverTapticChimesUnity25SoundType"];
}

- (void)setVoiceOverTouchBrailleShouldReverseDots:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSVoiceOverTouchShouldReverseDots"];
}

- (void)setVoiceOverTouchBrailleGestureControl:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSVoiceOverTouchBrailleGestureControl"];
}

- (void)setVoiceOverTouchBrailleShowTextStyleStatus:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSVoiceOverTouchBrailleShowTextStyleStatus"];
}

- (void)setVoiceOverTouchUpdateBrailleWithoutConnectedDisplay:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSVoiceOverTouchUpdateBrailleWithoutConnectedDisplay"];
}

- (id)voiceOverTouchPreferredBrailleTableIdentifiers
{
  v2 = objc_opt_class();
  v3 = MEMORY[0x1E695E0F8];

  return AXSettingsReturnObjectValueWithClass(@"AXSVoiceOverTouchBraillePreferredTableIdentifiers", v3, v2);
}

- (id)preferredBrailleTableIdentifierForKeyboardLanguage:(id)a3 keyboardLayout:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AXSettings *)self voiceOverTouchPreferredBrailleTableIdentifiers];
  v9 = [v8 objectForKey:v7];

  if (v9)
  {
    if (v6)
    {
      v10 = v6;
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
    }

    v12 = v10;
    v11 = [v9 objectForKey:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)setPreferredBrailleTableIdentifier:(id)a3 forKeyboardLanguage:(id)a4 keyboardLayout:(id)a5
{
  v19 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(AXSettings *)self voiceOverTouchPreferredBrailleTableIdentifiers];
  v11 = [v10 mutableCopy];

  v12 = [v11 objectForKey:v8];
  v13 = [v12 mutableCopy];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = objc_opt_new();
  }

  v16 = v15;

  if (v9)
  {
    v17 = v9;
  }

  else
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = v17;
  [v16 setObject:v19 forKeyedSubscript:v17];
  [v11 setObject:v16 forKeyedSubscript:v8];
  [(AXSettings *)self setVoiceOverTouchPreferredBrailleTableIdentifiers:v11];
}

- (void)setVoiceOverShouldFocusEverywhere:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSSVoiceOverShouldFocusEverywhere"];
}

- (void)setVoiceOverTouchBrailleShowGeneralStatus:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSVoiceOverTouchBrailleShowGeneralStatus"];
}

- (void)setVoiceOverShouldSpeakDiscoveredText:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSVoiceOverShouldSpeakDiscoveredTextPreference"];
}

- (void)setVoiceOverNeuralElementFeedback:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSVoiceOverSpeakDiscoveredTextFeedbackPreference"];
}

- (void)setVoiceOverNumberFeedback:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSVoiceOverNumberFeedback"];
}

- (void)setVoiceOverAutomaticButtonLabels:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSVoiceOverAutomaticButtonLabelsPreference"];
}

- (id)_voiceOverSoundOrHapticValueForPreference:(id)a3 outputEvent:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = a3;
    v8 = [(AXSettings *)self valueForPreferenceKey:@"VoiceOverSoundsAndHaptics"];
    v9 = [v8 objectForKey:v6];

    v10 = [v9 objectForKey:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_voiceOverSetSoundOrHapticValue:(id)a3 forPreference:(id)a4 outputEvent:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(AXSettings *)self valueForPreferenceKey:@"VoiceOverSoundsAndHaptics"];
  v11 = [v10 mutableCopy];

  if (!v11)
  {
    v11 = [MEMORY[0x1E695DF90] dictionary];
  }

  v12 = [v11 objectForKey:v9];
  v13 = [v12 mutableCopy];

  if (!v13)
  {
    v13 = [MEMORY[0x1E695DF90] dictionary];
  }

  [v13 setObject:v14 forKeyedSubscript:v8];
  [v11 setObject:v13 forKeyedSubscript:v9];
  [(AXSettings *)self setValue:v11 forPreferenceKey:@"VoiceOverSoundsAndHaptics"];
}

- (void)voiceOverSetSoundEnabled:(BOOL)a3 forEvent:(id)a4
{
  v4 = a3;
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithBool:v4];
  [(AXSettings *)self _voiceOverSetSoundOrHapticValue:v8 forPreference:@"soundEnabled" outputEvent:v7];
}

- (BOOL)_defaultHapticValueForEvent:(id)a3
{
  v3 = a3;
  if (_defaultHapticValueForEvent__onceToken != -1)
  {
    [AXSettings(LegacyImplementation) _defaultHapticValueForEvent:];
  }

  v4 = [_defaultHapticValueForEvent__DefaultOverrides objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 BOOLValue];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

void __64__AXSettings_LegacyImplementation___defaultHapticValueForEvent___block_invoke()
{
  v0 = _defaultHapticValueForEvent__DefaultOverrides;
  _defaultHapticValueForEvent__DefaultOverrides = &unk_1EFE97560;
}

- (id)voiceOverHapticEnabledForEvent:(id)a3
{
  v4 = a3;
  v5 = [(AXSettings *)self _voiceOverSoundOrHapticValueForPreference:@"hapticEnabled" outputEvent:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXSettings _defaultHapticValueForEvent:](self, "_defaultHapticValueForEvent:", v4)}];
  }

  v8 = v7;

  return v8;
}

- (void)voiceOverSetHapticEnabled:(BOOL)a3 forEvent:(id)a4
{
  v4 = a3;
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithBool:v4];
  [(AXSettings *)self _voiceOverSetSoundOrHapticValue:v8 forPreference:@"hapticEnabled" outputEvent:v7];
}

- (NSArray)voiceOverQuickSettingsItems
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"QuickSettings"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = v4;

  return v4;
}

- (void)setIndependentHearingAidSettings:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"HearingAidEarIndependencePreference"];
}

- (void)setAllowHearingAidControlOnLockScreen:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"HearingAidControlAvailableOnLockScreen"];
}

- (void)setShouldStreamToLeftAid:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"HearingAidStreamToLeft"];
}

- (void)setLeftRightBalanceEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [(AXSettings *)self setValue:v5 forPreferenceKey:@"LeftRightBalanceEnabled"];

  if (v3)
  {
    [(AXSettings *)self leftRightBalanceValue];
    v7 = v6;
    _AXSLeftRightAudioBalance();
    if (v7 == v8)
    {
      return;
    }

    [(AXSettings *)self leftRightBalanceValue];
  }

  _AXSSetLeftRightAudioBalance();
}

- (double)leftRightBalanceValue
{
  v2 = objc_opt_class();
  v3 = AXSettingsReturnObjectValueWithClass(@"LeftRightBalanceValue", &unk_1EFE96A30, v2);
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setLeftRightBalanceValue:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"LeftRightBalanceValue"];
}

- (void)setShouldStreamToRightAid:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"HearingAidStreamToRight"];
}

- (void)_updateTouchAccommodationsTripleClickSetting
{
  if (-[AXSettings touchAccommodationsEnabled](self, "touchAccommodationsEnabled") || (+[AXSettings sharedInstance](AXSettings, "sharedInstance"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 touchAccommodationsTripleClickConfirmed], v3, v4))
  {

    _AXSTripleClickAddOption();
  }

  else if (!-[AXSettings touchAccommodationsAreConfigured](self, "touchAccommodationsAreConfigured") || (+[AXSettings sharedInstance](AXSettings, "sharedInstance"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 touchAccommodationsTripleClickConfirmed], v5, (v6 & 1) == 0))
  {

    _AXSTripleClickRemoveOption();
  }
}

- (void)setTouchAccommodationsEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"TouchAccommodationsEnabledPreference"];

  [(AXSettings *)self _updateTouchAccommodationsTripleClickSetting];
}

- (void)setTouchAccommodationsTripleClickConfirmed:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSTouchAccommodationsTripleClickConfirmedPreference"];
}

- (void)setTouchAccommodationsUsageConfirmed:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"TouchAccommodationsUsageConfirmedPreference"];
}

- (void)setTouchAccommodationsHoldDurationEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"TouchAccommodationsHoldDurationEnabledPreference"];

  [(AXSettings *)self _updateTouchAccommodationsTripleClickSetting];
}

- (void)setTouchAccommodationsHoldDuration:(double)a3
{
  if (*MEMORY[0x1E6988998] < a3)
  {
    a3 = *MEMORY[0x1E6988998];
  }

  if (*MEMORY[0x1E69889A0] >= a3)
  {
    a3 = *MEMORY[0x1E69889A0];
  }

  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"TouchAccommodationsHoldDurationPreference"];
}

- (void)setTouchAccommodationsAllowsSwipeGesturesToBypass:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"TouchAccommodationsAllowsSwipeGesturesToBypassPreference"];
}

- (void)setTouchAccommodationsSwipeGestureMinimumDistance:(double)a3
{
  if (*MEMORY[0x1E69889B8] < a3)
  {
    a3 = *MEMORY[0x1E69889B8];
  }

  if (*MEMORY[0x1E69889C0] >= a3)
  {
    a3 = *MEMORY[0x1E69889C0];
  }

  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"TouchAccommodationsHoldDurationSwipeGestureMinimumDistancePreference"];
}

- (BOOL)touchAccommodationsHoldDurationAllowsSwipeGesturesToBypass
{
  v3 = AXSettingsReturnBoolValue(@"TouchAccommodationsHoldDurationAllowsSwipeGesturesToBypassPreference", 0);
  result = 0;
  if (v3)
  {
    return [(AXSettings *)self touchAccommodationsTapActivationMethod]== 0;
  }

  return result;
}

- (void)setTouchAccommodationsIgnoreRepeatEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"TouchAccommodationsIgnoreRepeatEnabledPreference"];

  [(AXSettings *)self _updateTouchAccommodationsTripleClickSetting];
}

- (void)setTouchAccommodationsIgnoreRepeatDuration:(double)a3
{
  if (*MEMORY[0x1E69889A8] < a3)
  {
    a3 = *MEMORY[0x1E69889A8];
  }

  if (*MEMORY[0x1E69889B0] >= a3)
  {
    a3 = *MEMORY[0x1E69889B0];
  }

  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"TouchAccommodationsIgnoreRepeatDurationPreference"];
}

- (int64_t)touchAccommodationsTapActivationMethod
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"TouchAccommodationsTapActivationMethodPreference"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTouchAccommodationsTapActivationMethod:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"TouchAccommodationsTapActivationMethodPreference"];

  [(AXSettings *)self _updateTouchAccommodationsTripleClickSetting];
}

- (void)setTouchAccommodationsTapActivationTimeout:(double)a3
{
  if (*MEMORY[0x1E69889C8] < a3)
  {
    a3 = *MEMORY[0x1E69889C8];
  }

  if (*MEMORY[0x1E69889D0] >= a3)
  {
    a3 = *MEMORY[0x1E69889D0];
  }

  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"TouchAccommodationsTapActivationTimeOutPreference"];
}

- (void)setStickyKeysEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"StickyKeysEnabled"];
}

- (void)setStickyKeysShiftToggleEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"StickyKeysShiftToggleEnabled"];
}

- (void)setStickyKeysBeepEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"StickyKeysBeepEnabled"];
}

- (void)setMagnifierEnabled:(BOOL)a3 changeTripleClickMenu:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [(AXSettings *)self setMagnifierEnabled:?];
  if (v4)
  {
    if (v5)
    {
      _AXSTripleClickAddOption();
    }

    else
    {
      _AXSTripleClickRemoveOption();
    }
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:v5];
  v7 = MEMORY[0x1E69E4B98];
  v8 = *MEMORY[0x1E695E8B8];
  v9 = *MEMORY[0x1E695E898];
  CFPreferencesSetValue(@"SBIconVisibility", v6, *MEMORY[0x1E69E4B98], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  CFPreferencesSynchronize(*v7, v8, v9);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.springboard.appIconVisibilityPreferencesChanged", 0, 0, 1u);
}

- (NSData)fullKeyboardAccessCommandMapData
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"CommandMapData"];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
      goto LABEL_8;
    }

    v4 = FKALogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(AXSettings(LegacyImplementation) *)v4 fullKeyboardAccessCommandMapData:v5];
    }
  }

  v3 = 0;
LABEL_8:

  return v3;
}

- (void)setFullKeyboardAccessFocusRingTimeout:(double)a3
{
  if (*MEMORY[0x1E6988960] >= a3)
  {
    a3 = *MEMORY[0x1E6988960];
  }

  if (*MEMORY[0x1E6988958] < a3)
  {
    a3 = *MEMORY[0x1E6988958];
  }

  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"FocusRingTimeout"];
}

- (void)setFullKeyboardAccessFocusRingTimeoutEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"FocusRingTimeoutEnabled"];
}

- (void)setFullKeyboardAccessLargeFocusRingEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"FullKeyboardAccessLargeFocusRingEnabled"];
}

- (void)setFullKeyboardAccessFocusRingHighContrastEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"FullKeyboardAccessFocusRingHighContrastEnabled"];
}

- (void)setFullKeyboardAccessFocusRingColor:(int64_t)a3
{
  if (a3 > 7)
  {
    a3 = 0;
  }

  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"FullKeyboardAccessFocusRingColor"];
}

- (void)setFullKeyboardAccessShouldShowTextEditingModeInstructions:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"ShouldShowTextEditingModeInstructions"];
}

- (void)setFullKeyboardAccessShouldShowDebugKeyCommandsView:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"FullKeyboardAccessShouldShowDebugKeyCommandsViewPreference"];
}

- (void)setAppValidationTestingMode:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSAppValidatingTestingPreference"];
}

- (void)setIsAXValidationRunnerCollectingValidations:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"IsAXValidationRunnerCollectingValidations"];
}

- (void)setGizmoApplicationAccessibilityEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"GizmoApplicationAccessibilityEnabled"];
}

- (void)gizmoSetAutoSpeakEnabledForComplication:(id)a3 slot:(id)a4 face:(id)a5 toggle:(BOOL)a6
{
  v6 = a6;
  v32 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = *MEMORY[0x1E695E480];
  v14 = [(AXSettings *)self gizmoGetWatchFaceAutoSpeakPreferences];
  DeepCopy = CFPropertyListCreateDeepCopy(v13, v14, 1uLL);

  v16 = [DeepCopy objectForKeyedSubscript:v10];

  if (!v16)
  {
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [DeepCopy setObject:v17 forKeyedSubscript:v10];
  }

  v18 = [DeepCopy objectForKeyedSubscript:v10];
  v19 = [v18 objectForKeyedSubscript:v11];

  if (!v19)
  {
    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v21 = [DeepCopy objectForKeyedSubscript:v10];
    [v21 setObject:v20 forKeyedSubscript:v11];
  }

  v22 = [DeepCopy objectForKeyedSubscript:v10];
  v23 = [v22 objectForKeyedSubscript:v11];

  if (v6)
  {
    [v23 addObject:v12];
  }

  else
  {
    [v23 removeObject:v12];
  }

  v24 = AXLogCommon();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [MEMORY[0x1E696AD98] numberWithBool:v6];
    v26 = 138412802;
    v27 = v25;
    v28 = 2112;
    v29 = v11;
    v30 = 2112;
    v31 = v12;
    _os_log_impl(&dword_18B15E000, v24, OS_LOG_TYPE_DEFAULT, "set auto speak value: %@, slot: %@, face: %@", &v26, 0x20u);
  }

  [(AXSettings *)self setValue:DeepCopy forPreferenceKey:@"GizmoAutoSpeakComplicationsPreference"];
}

- (BOOL)gizmoGetAutoSpeakEnabledForComplication:(id)a3 slot:(id)a4 face:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(AXSettings *)self gizmoGetWatchFaceAutoSpeakPreferences];
  v12 = [v11 objectForKeyedSubscript:v10];

  v13 = [v12 objectForKeyedSubscript:v9];

  LOBYTE(v9) = [v13 containsObject:v8];
  return v9;
}

- (id)gizmoGetWatchFaceAutoSpeakPreferences
{
  v2 = objc_opt_class();
  v3 = MEMORY[0x1E695E0F8];

  return AXSettingsReturnObjectValueWithClass(@"GizmoAutoSpeakComplicationsPreference", v3, v2);
}

- (void)setVoiceOverSpeakSecondsEncoding:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverSpeakSecondsEncoding"];
}

- (NSDictionary)voiceOverDirectTouchEnabledApps
{
  v2 = objc_opt_class();

  return AXSettingsReturnObjectValueWithClass(@"AXSVoiceOverDirectTouchEnabledApps", 0, v2);
}

- (NSArray)imageCaptioningDisabledApps
{
  v2 = objc_opt_class();

  return AXSettingsReturnObjectValueWithClass(@"AXSImageCaptioningDisabledApps", 0, v2);
}

- (NSDictionary)remoteHandGestureCustomizedActions
{
  v2 = [MEMORY[0x1E695DF20] dictionary];
  v3 = objc_opt_class();
  v4 = AXSettingsReturnObjectValueWithClass(@"RemoteHandGestureCustomizedActions", v2, v3);

  return v4;
}

- (void)setImageCaptionGenderStrategy:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSImageCaptionGenderStrategy"];
}

- (void)setVoiceOverNavigationStyle:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSVoiceOverNavigationStyle"];
}

- (BOOL)voiceOverHandGesturesEnabled
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {

    LOBYTE(v2) = AXSettingsReturnBoolValue(@"VoiceOverWatchHandGestures", 0);
  }

  return v2;
}

- (void)setVoiceOverHandGesturesEnabled:(BOOL)a3
{
  v3 = a3;
  if (_os_feature_enabled_impl())
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    [(AXSettings *)self setValue:v5 forPreferenceKey:@"VoiceOverWatchHandGestures"];
  }
}

- (NSDictionary)voiceOverHandGesturesActionCustomizations
{
  if (_os_feature_enabled_impl() && VoiceOverServicesLibraryCore())
  {
    v3 = [(AXSettings *)self valueForPreferenceKey:@"VoiceOverWatchHandGesturesActionCustomizations"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v4 = MEMORY[0x1E696ACD0], v5 = objc_opt_class(), [v4 unarchivedDictionaryWithKeysOfClass:v5 objectsOfClass:objc_opt_class() fromData:v3 error:0], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v11 = 0;
      v12 = &v11;
      v13 = 0x2050000000;
      v7 = getVOSVoiceOverGreyCommandInfoClass_softClass;
      v14 = getVOSVoiceOverGreyCommandInfoClass_softClass;
      if (!getVOSVoiceOverGreyCommandInfoClass_softClass)
      {
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __getVOSVoiceOverGreyCommandInfoClass_block_invoke;
        v10[3] = &unk_1E71E9A80;
        v10[4] = &v11;
        __getVOSVoiceOverGreyCommandInfoClass_block_invoke(v10);
        v7 = v12[3];
      }

      v8 = v7;
      _Block_object_dispose(&v11, 8);
      v6 = [v7 defaultCustomizeGestures];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setVoiceOverHandGesturesActionCustomizations:(id)a3
{
  v5 = a3;
  if (_os_feature_enabled_impl())
  {
    v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:0];
    [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverWatchHandGesturesActionCustomizations"];
  }
}

- (BOOL)zoomHandGesturesEnabled
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {

    LOBYTE(v2) = AXSettingsReturnBoolValue(@"ZoomWatchHandGestures", 0);
  }

  return v2;
}

- (void)setZoomHandGesturesEnabled:(BOOL)a3
{
  v3 = a3;
  if (_os_feature_enabled_impl())
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    [(AXSettings *)self setValue:v5 forPreferenceKey:@"ZoomWatchHandGestures"];
  }
}

- (NSDictionary)zoomHandGesturesActionCustomizations
{
  if (_os_feature_enabled_impl() && operator||())
  {
    v3 = [(AXSettings *)self valueForPreferenceKey:@"ZoomWatchHandGesturesActionCustomizations"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v4 = MEMORY[0x1E696ACD0], v5 = objc_opt_class(), [v4 unarchivedDictionaryWithKeysOfClass:v5 objectsOfClass:objc_opt_class() fromData:v3 error:0], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v11 = 0;
      v12 = &v11;
      v13 = 0x2050000000;
      v7 = getZoomServicesGreyCommandInfoClass_softClass;
      v14 = getZoomServicesGreyCommandInfoClass_softClass;
      if (!getZoomServicesGreyCommandInfoClass_softClass)
      {
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __getZoomServicesGreyCommandInfoClass_block_invoke;
        v10[3] = &unk_1E71E9A80;
        v10[4] = &v11;
        __getZoomServicesGreyCommandInfoClass_block_invoke(v10);
        v7 = v12[3];
      }

      v8 = v7;
      _Block_object_dispose(&v11, 8);
      v6 = [v7 defaultCustomizeGestures];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setZoomHandGesturesActionCustomizations:(id)a3
{
  v5 = a3;
  if (_os_feature_enabled_impl())
  {
    v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:0];
    [(AXSettings *)self setValue:v4 forPreferenceKey:@"ZoomWatchHandGesturesActionCustomizations"];
  }
}

- (void)setVoiceOverSoundCurtain:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSVoiceOverSoundCurtain"];
}

- (void)setVoiceOverSceneDescriptionsEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSSceneDescriptions"];
}

- (NSURL)cameraSceneDescriberImageURL
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"kAXSCameraSceneDescriberImageURL"];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCameraSceneDescriberImageURL:(id)a3
{
  v4 = [a3 path];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"kAXSCameraSceneDescriberImageURL"];
}

- (NSURL)alexLocalAssetURL
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"AXSAlexLocalAssetURL"];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAlexLocalAssetURL:(id)a3
{
  v4 = [a3 path];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSAlexLocalAssetURL"];
}

- (void)setLocalizationQACaptionShowFilePath:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"LocCaptionShowFilePath"];
}

- (void)setLocalizationQACaptionShowUSString:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"LocCaptionShowUSString"];
}

- (void)setLocalizationQACaptionShowLocalizedString:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"LocCaptionShowLocalizedString"];
}

- (void)setShouldFlashWhileUnlocked:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"LEDFlashWhileUnlocked"];
}

- (void)setShouldFlashForAlertInSilentMode:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"LEDFlashOnRingerSwitchSilent"];
}

- (void)setShouldSpeakMedicalPreamble:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"SpeakMedicalPreamble"];
}

- (void)setShouldTTYMedicalPreamble:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"TTYMedicalPreamble"];
}

- (void)setShouldLimitDisplayRefreshRate:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"LimitDisplayRefreshRate"];
}

- (void)setLastMagnifierResetCount:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"lastMagnifierResetCount"];
}

- (void)setLastSmartInvertColorsEnablement:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSLastSmartInvertColorsEnablement"];
}

- (void)setlastHearingAidHandoffTimeResetCount:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"lastHearingAidHandoffTimeResetCount"];
}

- (void)setlastHearingAidControlPanelTimeResetCount:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"lastHearingAidControlPanelTimeResetCount"];
}

- (void)setLastBrailleScreenInputTimeResetCount:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"lastBrailleScreenInputTimeResetCount"];
}

- (void)setLastTapticTimeResetCount:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"lastTapticTimeResetCount"];
}

- (void)setlastGuidedAccessTimeResetCount:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"lastGuidedAccessTimeResetCount"];
}

- (void)setlastGuidedAccessTimeLimitResetCount:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"lastGuidedAccessTimeLimitResetCount"];
}

- (void)setlastPlatformSwitchTimeResetCount:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"lastPlatformSwitchTimeResetCount"];
}

- (void)setLastCharacterVoiceTimeResetCount:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"lastCharacterVoiceTimeResetCount"];
}

- (void)setLastAssistiveTouchTimeResetCount:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"lastAssistiveTouchTimeResetCount"];
}

- (NSDictionary)assistiveTouchUsageCount
{
  v2 = objc_opt_class();

  return AXSettingsReturnObjectValueWithClass(@"assistiveTouchUsageCount", 0, v2);
}

- (void)setMagnifierUsageCount:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"magnifierUsageCount"];
}

- (void)setTapticTimeUsageCount:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"tapticTimeUsageCount"];
}

- (void)setSwitchControlPlatformSwitchedCount:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"switchControlPlatformSwitchedCount"];
}

- (void)setHearingAidHandOffCount:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"hearingAidHandOffCount"];
}

- (void)setHearingAidControlPanelCount:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"hearingAidControlPanelCount"];
}

- (void)setCharacterVoicesUsageCount:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"characterVoicesUsageCount"];
}

- (void)setGuidedAccessTimeLimitsUsageCount:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"guidedAccessTimeLimitsUsageCount"];
}

- (void)setBrokenHomeButtonCount:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"brokenHomeButtonCount"];
}

- (void)setVoiceOverBSIUsageCount:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"voiceOverBSIUsageCount"];
}

- (void)setGuidedAccessUsageCount:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"GuidedAccessUsageCount"];
}

- (int64_t)guidedAccessUsageCount
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"GuidedAccessUsageCount"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setDidResetD22Preferences:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSDidResetD22Preferences"];
}

- (BOOL)reachabilityEnabled
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v2 = getSBSIsReachabilityEnabledSymbolLoc_ptr;
  v8 = getSBSIsReachabilityEnabledSymbolLoc_ptr;
  if (!getSBSIsReachabilityEnabledSymbolLoc_ptr)
  {
    v3 = SpringBoardServicesLibrary();
    v6[3] = dlsym(v3, "SBSIsReachabilityEnabled");
    getSBSIsReachabilityEnabledSymbolLoc_ptr = v6[3];
    v2 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v2)
  {
    [AXSettings(LegacyImplementation) reachabilityEnabled];
  }

  return v2();
}

- (void)setReachabilityEnabled:(BOOL)a3
{
  v3 = a3;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v4 = getSBSSetReachabilityEnabledSymbolLoc_ptr;
  v9 = getSBSSetReachabilityEnabledSymbolLoc_ptr;
  if (!getSBSSetReachabilityEnabledSymbolLoc_ptr)
  {
    v5 = SpringBoardServicesLibrary();
    v7[3] = dlsym(v5, "SBSSetReachabilityEnabled");
    getSBSSetReachabilityEnabledSymbolLoc_ptr = v7[3];
    v4 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v4)
  {
    [AXSettings(LegacyImplementation) setReachabilityEnabled:];
  }

  v4(v3);
}

- (NSArray)perAppSettingsCustomizedAppIDs
{
  v2 = objc_opt_class();

  return AXSettingsReturnObjectValueWithClass(@"AXSPerAppSettingsCustomizedAppIDs", 0, v2);
}

- (NSDictionary)perAppSettingsStats
{
  v2 = objc_opt_class();

  return AXSettingsReturnObjectValueWithClass(@"AXSPerAppSettingsStats", 0, v2);
}

- (id)_customizedAppIDs
{
  v2 = CFPreferencesCopyAppValue(@"AXSettingsPerAppIDsArray", *MEMORY[0x1E6988730]);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v3 = [v2 mutableCopy]) == 0)
  {
    v3 = objc_opt_new();
  }

  return v3;
}

- (void)addCustomizedAppID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    v5 = [(AXSettings *)self _customizedAppIDs];
    if (([v5 containsObject:v6] & 1) == 0)
    {
      [v5 addObject:v6];
    }

    CFPreferencesSetValue(@"AXSettingsPerAppIDsArray", v5, *MEMORY[0x1E6988730], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);

    v4 = v6;
  }
}

- (void)removeCustomizedAppID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    v5 = _AXSEnhanceTextLegibilityEnabledApp() == -1;
    v4 = v8;
    if (v5)
    {
      v5 = _AXSButtonShapesEnabledApp() == -1;
      v4 = v8;
      if (v5)
      {
        v5 = _AXSIncreaseButtonLegibilityApp() == -1;
        v4 = v8;
        if (v5)
        {
          v5 = _AXSEnhanceBackgroundContrastEnabledApp() == -1;
          v4 = v8;
          if (v5)
          {
            v5 = _AXDarkenSystemColorsApp() == -1;
            v4 = v8;
            if (v5)
            {
              v5 = _AXSDifferentiateWithoutColorEnabledApp() == -1;
              v4 = v8;
              if (v5)
              {
                v5 = _AXSInvertColorsEnabledApp() == -1;
                v4 = v8;
                if (v5)
                {
                  v5 = _AXSReduceMotionEnabledApp() == -1;
                  v4 = v8;
                  if (v5)
                  {
                    v5 = _AXSReduceMotionReduceSlideTransitionsEnabledApp() == -1;
                    v4 = v8;
                    if (v5)
                    {
                      v6 = _AXSCopyPreferredContentSizeCategoryNameApp();
                      if (v6)
                      {
                        CFRelease(v6);
                      }

                      else
                      {
                        v7 = [(AXSettings *)self _customizedAppIDs];
                        [v7 removeObject:v8];
                        CFPreferencesSetValue(@"AXSettingsPerAppIDsArray", v7, *MEMORY[0x1E6988730], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
                      }

                      v4 = v8;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

- (void)aggregatePerAppSettingsStatistics
{
  v2 = PerAppSettingsQueue;
  if (!PerAppSettingsQueue)
  {
    v3 = dispatch_queue_create("com.apple.accessibility.axsharedsettings.perappsettings", 0);
    v4 = PerAppSettingsQueue;
    PerAppSettingsQueue = v3;

    v2 = PerAppSettingsQueue;
  }

  dispatch_async(v2, &__block_literal_global_2230);
}

void __69__AXSettings_LegacyImplementation__aggregatePerAppSettingsStatistics__block_invoke()
{
  v30 = *MEMORY[0x1E69E9840];
  v0 = AXInstalledAppIDs();
  v1 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v2 = v0;
  v3 = [v2 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v25;
    do
    {
      v6 = 0;
      do
      {
        if (*v25 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = _AXSEnhanceTextLegibilityEnabledApp();
        v8 = v7 != -1;
        if (v7 != -1)
        {
          [v1 addObject:@"com.apple.accessibility.perappsettings.bold.text"];
        }

        if (_AXSButtonShapesEnabledApp() != -1)
        {
          [v1 addObject:@"com.apple.accessibility.perappsettings.button.shapes"];
          v8 = 1;
        }

        if (_AXSIncreaseButtonLegibilityApp() != -1)
        {
          [v1 addObject:@"com.apple.accessibility.perappsettings.onoff.labels"];
          v8 = 1;
        }

        if (_AXSEnhanceBackgroundContrastEnabledApp() != -1)
        {
          [v1 addObject:@"com.apple.accessibility.perappsettings.reduce.transparency"];
          v8 = 1;
        }

        if (_AXDarkenSystemColorsApp() != -1)
        {
          [v1 addObject:@"com.apple.accessibility.perappsettings.increase.contrast"];
          v8 = 1;
        }

        if (_AXSDifferentiateWithoutColorEnabledApp() != -1)
        {
          [v1 addObject:@"com.apple.accessibility.perappsettings.differentiate.without.color"];
          v8 = 1;
        }

        if (_AXSInvertColorsEnabledApp() != -1)
        {
          [v1 addObject:@"com.apple.accessibility.perappsettings.smart.invert"];
          v8 = 1;
        }

        if (_AXSReduceMotionEnabledApp() != -1)
        {
          [v1 addObject:@"com.apple.accessibility.perappsettings.reduce.motion"];
          v8 = 1;
        }

        if (_AXSReduceMotionReduceSlideTransitionsEnabledApp() != -1)
        {
          [v1 addObject:@"com.apple.accessibility.perappsettings.prefer.crossfade.transitions"];
          v9 = _AXSCopyPreferredContentSizeCategoryNameApp();
          if (v9)
          {
LABEL_26:
            CFRelease(v9);
            [v1 addObject:@"com.apple.accessibility.perappsettings.textsize"];
          }

LABEL_27:
          [v1 addObject:@"com.apple.accessibility.perappsettings.customized"];
          goto LABEL_28;
        }

        v9 = _AXSCopyPreferredContentSizeCategoryNameApp();
        if (v9)
        {
          goto LABEL_26;
        }

        if (v8)
        {
          goto LABEL_27;
        }

LABEL_28:
        ++v6;
      }

      while (v4 != v6);
      v10 = [v2 countByEnumeratingWithState:&v24 objects:v29 count:16];
      v4 = v10;
    }

    while (v10);
  }

  v11 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = v1;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v20 + 1) + 8 * i);
        v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v12, "countForObject:", v17, v20)}];
        [v11 setObject:v18 forKey:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v14);
  }

  v19 = +[AXSettings sharedInstance];
  [v19 setPerAppSettingsStats:v11];
}

- (void)setCallAudioRoutingAutoAnswerDelay:(double)a3
{
  if (*MEMORY[0x1E6988928] < a3)
  {
    a3 = *MEMORY[0x1E6988928];
  }

  if (*MEMORY[0x1E6988930] >= a3)
  {
    a3 = *MEMORY[0x1E6988930];
  }

  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"CallAudioRoutingAutoAnswerPreference"];
}

- (double)callAudioRoutingAutoAnswerDelay
{
  result = AXSettingsReturnDoubleValue(@"CallAudioRoutingAutoAnswerPreference", 3.0);
  if (*MEMORY[0x1E6988928] < result)
  {
    result = *MEMORY[0x1E6988928];
  }

  if (*MEMORY[0x1E6988930] >= result)
  {
    return *MEMORY[0x1E6988930];
  }

  return result;
}

- (void)setCallAudioRoutingAutoAnswerEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"CallAudioRoutingAutoAnswerEnabledPreference"];
}

- (void)setVoiceOverSleepOnWristDownPreference:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"VoiceOverSleepOnWristDownPreference"];
}

- (void)setAssistiveTouchSleepOnWristDownPreference:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AssistiveTouchSleepOnWristDownPreference"];
}

- (void)setBackTapUsageCount:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSBackTapUsageCount"];
}

- (int64_t)backTapUsageCount
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"AXSBackTapUsageCount"];
  v3 = [v2 integerValue];

  return v3;
}

- (NSString)backTapDoubleTapAction
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"AXSBackTapDoubleTapAction"];
  if ([v2 isEqualToString:@"__NONE__"])
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  return v3;
}

- (NSString)backTapTripleTapAction
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"AXSBackTapTripleTapAction"];
  if ([v2 isEqualToString:@"__NONE__"])
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  return v3;
}

- (void)setBackTapConfirmationBannerEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSBackTapConfirmationBannerEnabled"];
}

- (BOOL)backTapFalsePositiveAlertsEnabled
{
  v3 = AXIsInternalInstall();
  if (v3)
  {
    v4 = [(AXSettings *)self valueForPreferenceKey:@"AXSBackTapFalsePositiveAlertsEnabled"];
    v5 = [v4 BOOLValue];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (void)setBackTapFalsePositiveAlertsEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSBackTapFalsePositiveAlertsEnabled"];
}

- (BOOL)backTapRNNModelEnabled
{
  if (!AXIsInternalInstall() || !_os_feature_enabled_impl())
  {
    return 0;
  }

  v3 = [(AXSettings *)self valueForPreferenceKey:@"AXSBackTapRNNModelEnabled"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)setBackTapRNNModelEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSBackTapRNNModelEnabled"];
}

- (NSDictionary)assistiveTouchActionsBySoundAction
{
  v2 = [(AXSettings *)self valueForPreferenceKey:@"AXSAssistiveTouchActionBySoundActionsPreference"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  v5 = v4;

  return v4;
}

- (void)_setAdaptiveVoiceShortcutsEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AdaptiveVoiceShortcuts"];
}

- (id)latestAdaptiveVoiceShortcutsSettingsEventDictionaries
{
  v2 = objc_opt_class();

  return AXSettingsReturnObjectValueWithClass(@"AdaptiveVoiceShortcutsSettingsEvents", 0, v2);
}

- (id)latestAdaptiveVoiceShortcutsSettingsEvents
{
  v2 = [(AXSettings *)self latestAdaptiveVoiceShortcutsSettingsEventDictionaries];
  v3 = [v2 ax_mappedArrayUsingBlock:&__block_literal_global_2268];

  return v3;
}

AXVocalShortcutsSettingsEvent *__78__AXSettings_LegacyImplementation__latestAdaptiveVoiceShortcutsSettingsEvents__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[AXVocalShortcutsSettingsEvent alloc] initWithDictionaryRepresentation:v2];

  return v3;
}

- (void)setLatestAdaptiveVoiceShortcutsSettingsEvents:(id)a3
{
  v4 = [a3 ax_mappedArrayUsingBlock:&__block_literal_global_2272];
  [(AXSettings *)self setLatestAdaptiveVoiceShortcutsSettingsEventDictionaries:v4];
}

- (void)registerVocalShortcutsSettingsEvent:(id)a3
{
  v4 = a3;
  v5 = [(AXSettings *)self latestAdaptiveVoiceShortcutsSettingsEvents];
  v7 = [v5 mutableCopy];

  [v7 addObject:v4];
  v6 = [v7 count];
  if (v6 >= 0x15)
  {
    [v7 removeObjectsInRange:{0, v6 - 20}];
  }

  [(AXSettings *)self setLatestAdaptiveVoiceShortcutsSettingsEvents:v7];
}

- (void)setAdaptiveVoiceShortcutsEnabled:(BOOL)a3 source:(id)a4
{
  v4 = a3;
  v6 = a4;
  [(AXSettings *)self _setAdaptiveVoiceShortcutsEnabled:v4];
  v7 = [[AXVocalShortcutsSettingsEvent alloc] initWithState:v4 source:v6];

  [(AXSettings *)self registerVocalShortcutsSettingsEvent:v7];
}

- (void)setAdaptiveVoiceShortcutsEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = AXLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [AXSettings(LegacyImplementation) setAdaptiveVoiceShortcutsEnabled:];
  }

  [(AXSettings *)self setAdaptiveVoiceShortcutsEnabled:v3 source:@"Unknown"];
}

- (BOOL)isNameRecognitionEnabled
{
  if (_AXSClarityBoardEnabled())
  {
    return 0;
  }

  return AXSettingsReturnBoolValue(@"NameRecognition", 0);
}

- (void)setNameRecognitionEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"NameRecognition"];

  [AXTripleClickHelpers registerObserverForAccessibilityShortcutOption:46];
}

- (void)setPulseWidthMaximization:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    _AXSSetReduceWhitePointEnabled();
  }

  v5 = AXLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_DEFAULT, "Set pulse width maximization (MPW) to %@", &v8, 0xCu);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [(AXSettings *)self setValue:v7 forPreferenceKey:@"AXSPulseWidthMaximization"];
}

- (void)setAudiogramIngestionLastModelAccess:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSAudiogramIngestionLastModelAccess"];
}

- (void)setSoundActionsLastModelAccess:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSSoundActionsLastModelAccess"];
}

- (void)setSoundDetectionLastModelAccess:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSoundDetectionLastModelAccess"];
}

- (void)setCameraButtonSensitivity:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"CameraButtonSensitivity"];
}

- (BOOL)startupSoundEnabled
{
  v12 = *MEMORY[0x1E69E9840];
  if (AXDeviceSupportsBootSound())
  {
    v2 = _AXSVoiceOverTouchEnabled();
    v3 = AXSettingsReturnBoolValue(@"StartupSoundEnabled", v2 != 0);
    v4 = AXLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [MEMORY[0x1E696AD98] numberWithBool:v3];
      v6 = [MEMORY[0x1E696AD98] numberWithBool:v2 != 0];
      v8 = 138543618;
      v9 = v5;
      v10 = 2114;
      v11 = v6;
      _os_log_impl(&dword_18B15E000, v4, OS_LOG_TYPE_INFO, "Boot chime: value: %{public}@ (%{public}@)", &v8, 0x16u);
    }
  }

  else
  {
    v4 = AXLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_18B15E000, v4, OS_LOG_TYPE_INFO, "Boot chime: Device does not support bootup sound", &v8, 2u);
    }

    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)setStartupSoundEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"StartupSoundEnabled"];
}

- (void)setHapticMusicEnhancedPercussion:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSHapticMusicEnhancedPercussion"];
}

- (NSString)hapticMusicAlgorithmSelection
{
  v2 = objc_opt_class();

  return AXSettingsReturnObjectValueWithClass(@"AXSHapticMusicAlgorithmSelection", 0, v2);
}

- (NSArray)hapticMusicAlgorithmSelections
{
  v2 = objc_opt_class();

  return AXSettingsReturnObjectValueWithClass(@"AXSHapticMusicAlgorithmSelections", 0, v2);
}

- (void)setHapticMusicActive:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x1E69E9840];
  v5 = AXLogHapticMusic();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    v7 = [MEMORY[0x1E696AF00] callStackSymbols];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_DEFAULT, "Activating haptic music: %@: %@", &v9, 0x16u);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [(AXSettings *)self setValue:v8 forPreferenceKey:@"AXSHapticMusicActive"];
}

- (void)setHapticMusicTrackAvailable:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSHapticMusicTrackAvailable"];
}

- (void)setHapticMusicIntensity:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSHapticMusicIntensity"];
}

- (void)setHapticMusicToggledInPreferences:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSHapticMusicToggledInPreferences"];
}

- (void)setHapticMusicUsagePerDay:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSHapticMusicUsagePerDay"];
}

- (NSDate)hapticMusicUsageStartDate
{
  v2 = objc_opt_class();

  return AXSettingsReturnObjectValueWithClass(@"AXSHapticMusicUsageStartDate", 0, v2);
}

- (void)setHapticMusicEnhancedVocals:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"AXSHapticMusicEnhancedVocals"];
}

- (void)enableAssistiveTechnologies:(BOOL)a3 usingDefaults:(id)a4
{
  v4 = a3;
  v5 = a4;
  v10 = v5;
  if (v4)
  {
    [v5 BOOLForKey:@"VoiceOverTouchEnabled"];
    _AXSVoiceOverTouchSetEnabled();
    [v10 BOOLForKey:@"SpeakThisEnabled"];
    _AXSSetSpeakThisEnabled();
    [v10 BOOLForKey:@"AssistiveTouchEnabled"];
    _AXSAssistiveTouchSetEnabled();
    [v10 BOOLForKey:@"AssistiveTouchScannerEnabled"];
    _AXSAssistiveTouchScannerSetEnabled();
    [v10 BOOLForKey:@"FullKeyboardAccessEnabled"];
    _AXSFullKeyboardAccessSetEnabled();
    [v10 BOOLForKey:@"CommandAndControlEnabled"];
  }

  else
  {
    _AXSVoiceOverTouchSetEnabled();
    _AXSSetSpeakThisEnabled();
    _AXSAssistiveTouchSetEnabled();
    _AXSAssistiveTouchScannerSetEnabled();
    _AXSFullKeyboardAccessSetEnabled();
  }

  _AXSCommandAndControlSetEnabled();
  v6 = +[AXSettings sharedInstance];
  v7 = v6;
  if (v4)
  {
    [v6 setAdaptiveVoiceShortcutsEnabled:objc_msgSend(v10 source:{"BOOLForKey:", @"AdaptiveVoiceShortcuts", @"ProfileSwitching"}];

    [v10 BOOLForKey:@"PhotosensitiveMitigation"];
    _AXSPhotosensitiveMitigationSetEnabled();
    [v10 BOOLForKey:@"ZoomTouchEnabled"];
    _AXSZoomTouchSetEnabled();
    [v10 BOOLForKey:@"InvertColorsEnabled"];
    _AXSInvertColorsSetEnabled();
    [v10 BOOLForKey:@"AXSClassicInvertColorsPreference"];
    _AXSClassicInvertColorsSetEnabled();
    [v10 BOOLForKey:@"LiveSpeechEnabled"];
  }

  else
  {
    [v6 setAdaptiveVoiceShortcutsEnabled:0 source:@"ProfileSwitching"];

    _AXSPhotosensitiveMitigationSetEnabled();
    _AXSZoomTouchSetEnabled();
    _AXSInvertColorsSetEnabled();
    _AXSClassicInvertColorsSetEnabled();
  }

  _AXSLiveSpeechSetEnabled();
  v8 = +[AXSettings sharedInstance];
  if (v4)
  {
    v9 = [v10 BOOLForKey:@"AccessibilityReader"];
  }

  else
  {
    v9 = 0;
  }

  [v8 setAccessibilityReaderEnabled:v9];
}

- (id)_keysToIgnore
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 keysToIgnoreDuringBuddyTransfer];
  v4 = [v3 mutableCopy];

  v5 = +[AXSettings sharedInstance];
  v6 = [v5 keysToIgnoreInManagedAssetsRepresentation];
  [v4 addObjectsFromArray:v6];

  [v4 addObject:*MEMORY[0x1E69E4D60]];

  return v4;
}

- (id)_keysToIgnoreForFiringGuestPassCloudKitSync
{
  v4[7] = *MEMORY[0x1E69E9840];
  v4[0] = @"AssistiveTouchRecentGestures";
  v4[1] = @"ZoomScale";
  v4[2] = @"ZoomPanOffset";
  v4[3] = @"ZoomSlugPosition";
  v4[4] = @"ZoomInStandby";
  v4[5] = @"QuickSpeakNubbitNormalizedPosition";
  v4[6] = @"HoverTextActivationLock";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:7];

  return v2;
}

- (id)_mediaAccessibilityNotificationsToFireAfterApplyingBatchSettings
{
  if (_mediaAccessibilityNotificationsToFireAfterApplyingBatchSettings_onceToken != -1)
  {
    [AXSettings(LegacyImplementation) _mediaAccessibilityNotificationsToFireAfterApplyingBatchSettings];
  }

  v3 = _mediaAccessibilityNotificationsToFireAfterApplyingBatchSettings_MediaAccessibilityPrefNotifications;

  return v3;
}

void __100__AXSettings_LegacyImplementation___mediaAccessibilityNotificationsToFireAfterApplyingBatchSettings__block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E4ED0];
  v3[0] = *MEMORY[0x1E69E4C88];
  v3[1] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:2];
  v2 = _mediaAccessibilityNotificationsToFireAfterApplyingBatchSettings_MediaAccessibilityPrefNotifications;
  _mediaAccessibilityNotificationsToFireAfterApplyingBatchSettings_MediaAccessibilityPrefNotifications = v1;
}

- (id)_allAccessibilityDomains
{
  v2 = objc_alloc(MEMORY[0x1E695DEC8]);
  v3 = [v2 initWithObjects:{*MEMORY[0x1E69E4BB0], *MEMORY[0x1E69E4F30], *MEMORY[0x1E69E4C70], *MEMORY[0x1E69E4D78], *MEMORY[0x1E69E4F78], *MEMORY[0x1E69E4F60], *MEMORY[0x1E69E4FA8], *MEMORY[0x1E69E4E90], *MEMORY[0x1E69E4F20], *MEMORY[0x1E69E4F10], *MEMORY[0x1E69E4E18], *MEMORY[0x1E69E4D90], *MEMORY[0x1E69E4E38], *MEMORY[0x1E69E4EE8], *MEMORY[0x1E69E4D48], @"com.apple.mediaaccessibility", @"com.apple.ComfortSounds", 0}];

  return v3;
}

- (id)_allVoiceOverDomains
{
  v2 = objc_alloc(MEMORY[0x1E695DEC8]);
  v3 = [v2 initWithObjects:{*MEMORY[0x1E69E4F78], *MEMORY[0x1E69E4F60], 0}];

  return v3;
}

- (id)_allVoiceOverKeysInAccessibilityPreferences
{
  v4[10] = *MEMORY[0x1E69E9840];
  v4[0] = @"VoiceOverSpeakActionConfirmationPreference";
  v4[1] = @"VoiceOverNavigationDirectionMode";
  v4[2] = @"VoiceOverTapticTimeEncoding";
  v4[3] = @"kAXSVoiceOverInlineTextCompletionAppearanceFeedbackPreference";
  v4[4] = @"kAXSVoiceOverInlineTextCompletionInsertionFeedbackPreference";
  v4[5] = @"VoiceOverWatchHandGestures";
  v4[6] = @"VoiceOverWatchHandGesturesActionCustomizations";
  v4[7] = @"VoiceOverSpeakSecondsEncoding";
  v4[8] = @"VoiceOverSleepOnWristDownPreference";
  v4[9] = @"VoiceOverTouchMediaDuckingMode";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:10];

  return v2;
}

- (NSDictionary)managedAssetsRepresentation
{
  v31 = *MEMORY[0x1E69E9840];
  v25 = [(AXSettings *)self _keysToIgnore];
  v3 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = [(AXSettings *)self _allAccessibilityDomains];
  v5 = [v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v27;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        v10 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:v9];
        v11 = [v10 dictionaryRepresentation];
        v12 = [v11 mutableCopy];

        [v12 removeObjectsForKeys:v25];
        if (v12)
        {
          [v3 setObject:v12 forKeyedSubscript:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v6);
  }

  v13 = objc_opt_new();
  v14 = _AXSCopyPreferredContentSizeCategoryNameGlobal();
  [v13 setObject:v14 forKeyedSubscript:@"AXMRContentSizeCategory"];

  [v3 setObject:v13 forKeyedSubscript:@"com.apple.UIKit"];
  v15 = objc_opt_new();
  v16 = _AXSLargeTextUsesExtendedRange() != 0;
  v17 = *MEMORY[0x1E69E4FD0];
  v18 = MEMORY[0x1E696AD98];
  v19 = *MEMORY[0x1E69E4FD8];
  v20 = v17;
  v21 = [v18 numberWithBool:v16];
  [v15 setObject:v21 forKeyedSubscript:v20];

  [v3 setObject:v15 forKeyedSubscript:v19];
  v22 = +[AXBuddyDataPackage deviceClassForBuddy];
  [v3 setObject:v22 forKeyedSubscript:@"GENERATED_ON_PLATFORM"];

  v23 = +[AXBuddyDataPackage productVersionForBuddy];
  [v3 setObject:v23 forKeyedSubscript:@"GENERATED_ON_VERSION"];

  return v3;
}

- (void)resetAllGuestModeDefaults
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [(AXSettings *)self _allAccessibilityDomains];
  v15 = self;
  v4 = [(AXSettings *)self _keysToIgnore];
  v5 = AXLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v26 = v4;
    _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_INFO, "Ignored keys: %@", buf, 0xCu);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v3;
  v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:v10];
        v12 = [v11 dictionaryRepresentation];
        v13 = AXLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v26 = v10;
          _os_log_impl(&dword_18B15E000, v13, OS_LOG_TYPE_INFO, "Removing defaults for domain %@", buf, 0xCu);
        }

        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __61__AXSettings_LegacyImplementation__resetAllGuestModeDefaults__block_invoke;
        v17[3] = &unk_1E71EC578;
        v18 = v4;
        v19 = v11;
        v14 = v11;
        [v12 enumerateKeysAndObjectsUsingBlock:v17];
      }

      v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  [(AXSettings *)v15 enableAssistiveTechnologies:0 usingDefaults:0];
  AXCatchUserDefaultsInconsistencies();
}

void __61__AXSettings_LegacyImplementation__resetAllGuestModeDefaults__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 40) removeObjectForKey:v3];
  }
}

- (void)resetAllVoiceOverSettings
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = [(AXSettings *)self _allVoiceOverDomains];
  v4 = [(AXSettings *)self _keysToIgnore];
  v5 = self;
  v31 = [(AXSettings *)self _allVoiceOverKeysInAccessibilityPreferences];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v3;
  v6 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v45;
    do
    {
      v9 = 0;
      do
      {
        if (*v45 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v44 + 1) + 8 * v9);
        v11 = [MEMORY[0x1E695DFA8] set];
        v12 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:v10];
        v13 = [v12 dictionaryRepresentation];
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __61__AXSettings_LegacyImplementation__resetAllVoiceOverSettings__block_invoke;
        v39[3] = &unk_1E71EC5A0;
        v40 = v4;
        v41 = v11;
        v42 = v12;
        v43 = v5;
        v14 = v12;
        v15 = v11;
        [v13 enumerateKeysAndObjectsUsingBlock:v39];

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v7);
  }

  v16 = [MEMORY[0x1E695DFA8] set];
  v17 = objc_alloc(MEMORY[0x1E695E000]);
  v18 = [v17 initWithSuiteName:*MEMORY[0x1E69E4BB0]];
  v19 = [v18 dictionaryRepresentation];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __61__AXSettings_LegacyImplementation__resetAllVoiceOverSettings__block_invoke_2;
  v33[3] = &unk_1E71EC5C8;
  v34 = v31;
  v35 = v4;
  v36 = v16;
  v37 = v18;
  v38 = v5;
  v20 = v18;
  v21 = v16;
  v22 = v4;
  v23 = v31;
  [v19 enumerateKeysAndObjectsUsingBlock:v33];

  v24 = +[AXSettings sharedInstance];
  [v24 setVoiceOverCurrentRotorVoiceIdentifier:&stru_1EFE6D570];

  v25 = +[AXSettings sharedInstance];
  [v25 setVoiceOverVoiceRotors:MEMORY[0x1E695E0F0]];

  v26 = +[AXSettings sharedInstance];
  v27 = MEMORY[0x1E695E0F8];
  [v26 setVoiceOverDefaultVoiceSelections:MEMORY[0x1E695E0F8]];

  v28 = +[AXSettings sharedInstance];
  [v28 setVoiceOverCustomLabels:v27];

  v29 = objc_alloc(MEMORY[0x1E695E000]);
  v30 = [v29 initWithSuiteName:*MEMORY[0x1E69E4BB0]];
  [(AXSettings *)v5 enableAssistiveTechnologies:1 usingDefaults:v30];
}

void __61__AXSettings_LegacyImplementation__resetAllVoiceOverSettings__block_invoke(id *a1, void *a2)
{
  v3 = a2;
  if (([a1[4] containsObject:?] & 1) == 0 && (objc_msgSend(a1[5], "containsObject:", v3) & 1) == 0)
  {
    [a1[6] removeObjectForKey:v3];
    [a1[7] postNotificationForPreferenceKey:v3];
    [a1[5] addObject:v3];
  }
}

void __61__AXSettings_LegacyImplementation__resetAllVoiceOverSettings__block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  if ([a1[4] containsObject:?] && (objc_msgSend(a1[5], "containsObject:", v3) & 1) == 0 && (objc_msgSend(a1[6], "containsObject:", v3) & 1) == 0)
  {
    [a1[7] removeObjectForKey:v3];
    [a1[8] postNotificationForPreferenceKey:v3];
    [a1[6] addObject:v3];
  }
}

- (BOOL)updateWithManagedAssetsRepresentation:(id)a3 forGuest:(BOOL)a4
{
  v73 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"GENERATED_ON_PLATFORM"];
  if (!v6 || [(AXSettings *)self isDeviceSameTypeAsGuestPassTransfer:v6]|| ([(AXSettings *)self guestPassPayloadForCrossPlatformTransfer:v5], v7 = objc_claimAutoreleasedReturnValue(), v5, (v5 = v7) != 0))
  {
    v43 = v6;
    v8 = [(AXSettings *)self _allAccessibilityDomains];
    v9 = [(AXSettings *)self _keysToIgnore];
    v51 = self;
    v10 = [(AXSettings *)self swiftKeysToIncludeInGuestPass];
    v49 = [v10 arrayByAddingObjectsFromArray:PreferenceKeysSupportedByGuestMode];

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    obj = v8;
    v50 = [obj countByEnumeratingWithState:&v67 objects:v72 count:16];
    v45 = v9;
    if (v50)
    {
      v47 = *v68;
      name = *MEMORY[0x1E696F788];
      do
      {
        for (i = 0; i != v50; ++i)
        {
          if (*v68 != v47)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v67 + 1) + 8 * i);
          v13 = [MEMORY[0x1E695DFA8] set];
          v14 = [v5 objectForKey:v12];
          v15 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:v12];
          v61[0] = MEMORY[0x1E69E9820];
          v61[1] = 3221225472;
          v61[2] = __83__AXSettings_LegacyImplementation__updateWithManagedAssetsRepresentation_forGuest___block_invoke;
          v61[3] = &unk_1E71EC5F0;
          v66 = a4;
          v62 = v49;
          v16 = v15;
          v63 = v16;
          v64 = v51;
          v17 = v13;
          v65 = v17;
          [v14 enumerateKeysAndObjectsUsingBlock:v61];
          v18 = [v16 dictionaryRepresentation];
          v56[0] = MEMORY[0x1E69E9820];
          v56[1] = 3221225472;
          v56[2] = __83__AXSettings_LegacyImplementation__updateWithManagedAssetsRepresentation_forGuest___block_invoke_2;
          v56[3] = &unk_1E71EC5A0;
          v57 = v9;
          v19 = v17;
          v58 = v19;
          v20 = v16;
          v59 = v20;
          v60 = v51;
          [v18 enumerateKeysAndObjectsUsingBlock:v56];

          if ([v12 isEqualToString:@"com.apple.mediaaccessibility"])
          {
            v21 = [v20 dictionaryRepresentation];
            v22 = [v21 count];

            if (v22)
            {
              v23 = v5;
              v54 = 0u;
              v55 = 0u;
              v52 = 0u;
              v53 = 0u;
              v24 = [(AXSettings *)v51 _mediaAccessibilityNotificationsToFireAfterApplyingBatchSettings];
              v25 = [v24 countByEnumeratingWithState:&v52 objects:v71 count:16];
              if (v25)
              {
                v26 = v25;
                v27 = *v53;
                do
                {
                  for (j = 0; j != v26; ++j)
                  {
                    if (*v53 != v27)
                    {
                      objc_enumerationMutation(v24);
                    }

                    v29 = *(*(&v52 + 1) + 8 * j);
                    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
                    CFNotificationCenterPostNotification(DarwinNotifyCenter, v29, 0, 0, 1u);
                  }

                  v26 = [v24 countByEnumeratingWithState:&v52 objects:v71 count:16];
                }

                while (v26);
              }

              v31 = CFNotificationCenterGetDarwinNotifyCenter();
              CFNotificationCenterPostNotification(v31, name, 0, 0, 1u);
              v5 = v23;
              v9 = v45;
            }
          }
        }

        v50 = [obj countByEnumeratingWithState:&v67 objects:v72 count:16];
      }

      while (v50);
    }

    v32 = objc_alloc(MEMORY[0x1E695E000]);
    v33 = [v32 initWithSuiteName:*MEMORY[0x1E69E4BB0]];
    v34 = 1;
    [(AXSettings *)v51 enableAssistiveTechnologies:1 usingDefaults:v33];
    v35 = [v5 objectForKeyedSubscript:@"com.apple.UIKit"];
    v36 = [v35 objectForKeyedSubscript:@"AXMRContentSizeCategory"];
    _AXSSetPreferredContentSizeCategoryName();
    v37 = *MEMORY[0x1E69E4FD8];
    v38 = *MEMORY[0x1E69E4FD0];
    v39 = v37;
    v40 = [v5 objectForKeyedSubscript:v39];
    v41 = [v40 objectForKeyedSubscript:v38];

    [v41 BOOLValue];
    _AXSSetLargeTextUsesExtendedRange();

    v6 = v43;
  }

  else
  {
    v5 = AXLogGuestPass();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [AXSettings(LegacyImplementation) updateWithManagedAssetsRepresentation:v6 forGuest:v5];
    }

    v34 = 0;
  }

  return v34;
}

void __83__AXSettings_LegacyImplementation__updateWithManagedAssetsRepresentation_forGuest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (*(a1 + 64) != 1 || [*(a1 + 32) containsObject:v6])
  {
    [*(a1 + 40) setObject:v5 forKey:v6];
    [*(a1 + 48) postNotificationForPreferenceKey:v6];
    [*(a1 + 56) addObject:v6];
  }
}

void __83__AXSettings_LegacyImplementation__updateWithManagedAssetsRepresentation_forGuest___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  if (([a1[4] containsObject:?] & 1) == 0 && (objc_msgSend(a1[5], "containsObject:", v3) & 1) == 0)
  {
    [a1[6] removeObjectForKey:v3];
    [a1[7] postNotificationForPreferenceKey:v3];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v6.receiver = self;
  v6.super_class = AXSettings;
  [(AXBaseSettings_Legacy *)&v6 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:a6];
}

- (NSArray)tripleClickOptions
{
  v2 = _AXSTripleClickCopyOptions();

  return v2;
}

- (unint64_t)appleTVAppGridItemsPerLine
{
  if (_AXSAppleTVScaledUIEnabled())
  {
    return 5;
  }

  else
  {
    return 6;
  }
}

- (void)setAssistiveTouchEnabled:(BOOL)a3
{
  _AXSAssistiveTouchSetEnabled();
  if (!a3)
  {
    v4 = +[AXSettings sharedInstance];
    v5 = [v4 assistiveTouchEnabledByOnDeviceEyeTracking];

    if (v5)
    {
      v6 = +[AXSettings sharedInstance];
      [v6 setAssistiveTouchEnabledByOnDeviceEyeTracking:0];
    }

    v7 = +[AXSettings sharedInstance];
    v8 = [v7 assistiveTouchEnabledByHeadTracking];

    if (v8)
    {
      v9 = +[AXSettings sharedInstance];
      [v9 setAssistiveTouchEnabledByHeadTracking:0];
    }
  }
}

- (void)setSwitchControlEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = +[AXSettings sharedInstance];
  v5 = [v4 assistiveTouchHeadTrackingEnabled];

  if (v5)
  {
    v6 = !v3;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = +[AXSettings sharedInstance];
    [v7 setAssistiveTouchHeadTrackingEnabled:0];
  }

  v8 = +[AXSettings sharedInstance];
  v9 = [v8 assistiveTouchMouseOnDeviceEyeTrackingEnabled];

  if (v9)
  {
    v10 = !v3;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = +[AXSettings sharedInstance];
    [v11 setAssistiveTouchMouseOnDeviceEyeTrackingEnabled:0];
  }

  _AXSAssistiveTouchScannerSetEnabled();
  if (!v3)
  {
    v12 = +[AXSettings sharedInstance];
    v13 = [v12 switchControlEnabledByOnDeviceEyeTracking];

    if (v13)
    {
      v14 = +[AXSettings sharedInstance];
      [v14 setSwitchControlEnabledByOnDeviceEyeTracking:0];
    }
  }
}

- (BOOL)onDeviceEyeTrackingEnabled
{
  if ([(AXSettings *)self assistiveTouchMouseOnDeviceEyeTrackingEnabled])
  {
    return 1;
  }

  return [(AXSettings *)self switchControlOnDeviceEyeTrackingEnabled];
}

- (void)setVoiceOverSmartScreenCurtainEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"kAXSVoiceOverSmartScreenCurtainPreference"];
}

- (NSArray)voiceOverLanguageRotorItems
{
  v2 = _AXSVoiceOverTouchCopyLanguageRotorItems();

  return v2;
}

- (NSDictionary)voiceOverBrailleBluetoothDisplay
{
  v2 = _AXSVoiceOverTouchCopyBrailleBluetoothDisplay();

  return v2;
}

- (NSString)voiceOverTouchBrailleTableIdentifier
{
  v2 = _AXSVoiceOverTouchCopyBrailleTableIdentifier();

  return v2;
}

- (int64_t)voiceOverBrailleStatusCellPreference
{
  if (_AXSVoiceOverTouchBrailleMasterStatusCellIndex() < 0)
  {
    return 0;
  }

  if (_AXSVoiceOverTouchBrailleVirtualStatusAlignment() == 1)
  {
    return 2;
  }

  return 1;
}

- (void)setVoiceOverBrailleStatusCellPreference:(int64_t)a3
{
  if (!a3)
  {
    v4 = -1;

    goto __AXSVoiceOverTouchSetBrailleMasterStatusCellIndex;
  }

  if (a3 == 1 || a3 == 2)
  {
    _AXSVoiceOverTouchSetBrailleVirtualStatusAlignment();
    v4 = 0;

- (NSString)hoverTextFontName
{
  v2 = _AXSHoverTextCopyFontName();

  return v2;
}

- (NSData)hoverTextTextColorData
{
  v2 = _AXSHoverTextCopyTextColorData();

  return v2;
}

- (NSData)hoverTextInsertionPointColorData
{
  v2 = _AXSHoverTextCopyInsertionPointColorData();

  return v2;
}

- (NSData)hoverTextBackgroundColorData
{
  v2 = _AXSHoverTextCopyBackgroundColorData();

  return v2;
}

- (NSData)hoverTextBorderColorData
{
  v2 = _AXSHoverTextCopyBorderColorData();

  return v2;
}

- (void)setHoverTextActivationLockEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"HoverTextActivationLock"];
}

- (void)setHoverTextPreferredActivatorKey:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"HoverTextActivatorKey"];
}

- (void)setHoverTextScrollingSpeed:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"HoverTextScrollingSpeed"];
}

- (void)setHoverTextContentType:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"HoverTextContentType"];
}

- (void)setHoverTextContentSize:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = HTLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_18B15E000, v4, OS_LOG_TYPE_INFO, "User is setting HoverText size to %@", &v5, 0xCu);
  }

  _AXSHoverTextSetContentSize();
}

- (NSString)hoverTextContentSize
{
  v2 = _AXSHoverTextCopyContentSize();
  v3 = v2;
  if (v2 && ![v2 isEqualToString:@"_UICTContentSizeCategoryUnspecified"])
  {
    v4 = v3;
  }

  else
  {
    v4 = _AXSCopyPreferredContentSizeCategoryNameGlobal();
  }

  v5 = v4;

  return v5;
}

- (void)setHoverTextShowedBanner:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"HoverTextShowedBanner"];
}

- (int64_t)hoverTextTypingDisplayMode
{
  v2 = _AXSHoverTextTypingDisplayMode();
  IsHardwareKeyboardAttached = GSEventIsHardwareKeyboardAttached();
  if (v2 == 1 && IsHardwareKeyboardAttached == 0)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

- (void)setHoverTextTypingShowedBanner:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"HoverTextTypingShowedBanner"];
}

- (NSString)hoverTextTypingFontName
{
  v2 = _AXSHoverTextTypingCopyFontName();

  return v2;
}

- (NSData)hoverTextTypingTextColorData
{
  v2 = _AXSHoverTextTypingCopyTextColorData();

  return v2;
}

- (NSData)hoverTextTypingInsertionPointColorData
{
  v2 = _AXSHoverTextTypingCopyInsertionPointColorData();

  return v2;
}

- (NSData)hoverTextTypingBackgroundColorData
{
  v2 = _AXSHoverTextTypingCopyBackgroundColorData();

  return v2;
}

- (NSData)hoverTextTypingBorderColorData
{
  v2 = _AXSHoverTextTypingCopyBorderColorData();

  return v2;
}

- (NSString)hoverTextTypingTextStyle
{
  v2 = _AXSHoverTextTypingCopyTextStyle();

  return v2;
}

- (NSData)hoverTextTypingMisspelledTextColorData
{
  v2 = _AXSHoverTextTypingCopyMisspelledTextColorData();

  return v2;
}

- (NSData)hoverTextTypingAutocorrectedTextColorData
{
  v2 = _AXSHoverTextTypingCopyAutocorrectedTextColorData();

  return v2;
}

- (BOOL)alwaysListenForSiri
{
  v2 = [MEMORY[0x1E698D1C0] sharedPreferences];
  v3 = [v2 alwaysAllowVoiceActivation];

  return v3;
}

- (void)setAlwaysListenForSiri:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E698D1C0] sharedPreferences];
  [v4 setAlwaysAllowVoiceActivation:v3];
}

- (void)setMonitorNotificationForPreboardFeature:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(AXSettings *)self setValue:v4 forPreferenceKey:@"MonitorPreboardFeature"];
}

- (unsigned)headsetCaseTonesVolumeForDeviceAddress:(id)a3
{
  v4 = a3;
  v5 = [(AXSettings *)self headsetsValueForPreference:@"kAXSHeadsetCaseTonesVolumePreference" forDeviceAddress:v4 expectedType:objc_opt_class()];

  if (v5)
  {
    v6 = [v5 unsignedIntegerValue];
  }

  else
  {
    v6 = 80;
  }

  return v6;
}

- (void)setHeadsetCaseTonesVolume:(unsigned int)a3 forDeviceAddress:(id)a4
{
  if (a3 >= 0x64)
  {
    v5 = 100;
  }

  else
  {
    v5 = a3;
  }

  if (v5 <= 0xF)
  {
    v6 = 15;
  }

  else
  {
    v6 = v5;
  }

  v7 = MEMORY[0x1E696AD98];
  v8 = a4;
  v9 = [v7 numberWithUnsignedInt:v6];
  [(AXSettings *)self setHeadsetPreference:@"kAXSHeadsetCaseTonesVolumePreference" forDeviceAddress:v8 value:v9];

  [(AXBaseSettings *)self postNotificationForPreferenceKey:@"kAXSHeadsetCaseTonesVolumePreference"];
}

- (void)setHeadsetPreference:(id)a3 forDeviceAddress:(id)a4 value:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v11 = [(AXSettings *)self headsetUpdatedDictionaryForPreference:v8 forDeviceAddress:v9 value:v10];
    [(AXSettings *)self setValue:v11 forPreferenceKey:v8];
    v12 = AXLogAirPodSettings();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = 138412802;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_18B15E000, v12, OS_LOG_TYPE_INFO, "Setting AirPods %@:%@ %@", &v13, 0x20u);
    }
  }

  else
  {
    v11 = AXLogAirPodSettings();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [AXSettings(AccessibilitySupportFacade) setHeadsetPreference:forDeviceAddress:value:];
    }
  }
}

- (id)headsetUpdatedDictionaryForPreference:(id)a3 forDeviceAddress:(id)a4 value:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(AXSettings *)self valueForPreferenceKey:a3];
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = [v10 mutableCopy];
  }

  else
  {
    v11 = [MEMORY[0x1E695DF90] dictionary];
  }

  v12 = v11;
  [v11 setObject:v8 forKeyedSubscript:v9];

  return v12;
}

- (id)headsetsValueForPreference:(id)a3 forDeviceAddress:(id)a4 expectedType:(Class)a5
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = [(AXSettings *)self valueForPreferenceKey:v7];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 objectForKeyedSubscript:v8];
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v13 = AXLogAirPodSettings();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [AXSettings(AccessibilitySupportFacade) headsetsValueForPreference:forDeviceAddress:expectedType:];
    }

    v12 = 0;
  }

  return v12;
}

- (void)setLiveCaptionsSelectedLocaleIdentifier:(id)a3
{
  [(AXSettings *)self setValue:a3 forPreferenceKey:@"kAXSLiveCaptionsSelectedLocationPreference"];

  [(AXBaseSettings *)self postNotificationForPreferenceKey:@"kAXSLiveCaptionsSelectedLocationPreference"];
}

- (void)_clearLiveCaptionsState:(int64_t)a3
{
  v4 = *MEMORY[0x1E695E8B8];
  v5 = *MEMORY[0x1E695E898];
  v6 = CFPreferencesCopyValue(@"windowStateKey", @"com.apple.AccessibilityUIServer", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (v6)
  {
    v7 = v6;
    valuePtr = 0;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v7))
    {
      CFNumberGetValue(v7, kCFNumberIntType, &valuePtr);
    }

    CFRelease(v7);
    if (valuePtr == a3)
    {
      CFPreferencesSetValue(@"windowStateKey", 0, @"com.apple.AccessibilityUIServer", v4, v5);
    }
  }
}

- (BOOL)_hasSwitchWithUUID:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(AXSettings *)self assistiveTouchSwitches];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) uuid];
        v10 = [v9 isEqual:v4];

        if (v10)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)_switchWithAction:(int64_t)a3 excludedUUIDs:(id)a4 needsToSupportLongPress:(BOOL)a5
{
  v5 = a5;
  v24 = *MEMORY[0x1E69E9840];
  v8 = a4;
  [(AXSettings *)self assistiveTouchSwitches];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v22 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v20 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v19 + 1) + 8 * v13);
      v15 = [v14 uuid];
      if ([v8 containsObject:v15])
      {
      }

      else
      {
        if (!a3)
        {

          if (!v5)
          {
            goto LABEL_17;
          }

LABEL_13:
          if ([v14 supportsLongPress])
          {
LABEL_17:
            v17 = v14;
            goto LABEL_18;
          }

          goto LABEL_14;
        }

        v16 = [v14 action];

        if (v16 == a3)
        {
          if (!v5)
          {
            goto LABEL_17;
          }

          goto LABEL_13;
        }
      }

LABEL_14:
      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v17 = 0;
LABEL_18:

  return v17;
}

- (BOOL)validateAndUpdateRecipeIfNeeded:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AXSwitchRecipeMappingSwitchUUIDs(v4);
  v6 = [v5 mutableCopy];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = v4;
  obj = [v4 mappings];
  v7 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  v25 = v7 == 0;
  if (!v7)
  {
LABEL_16:

    v22 = v26;
    v23 = v25;
    goto LABEL_17;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v29;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v29 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v28 + 1) + 8 * i);
      v13 = [v12 switchUUID];
      if (v13)
      {
        v14 = v13;
        v15 = [v12 switchUUID];
        v16 = [(AXSettings *)self _hasSwitchWithUUID:v15];

        if (v16)
        {
          continue;
        }
      }

      v17 = [v12 longPressAction];

      v18 = -[AXSettings _switchWithAction:excludedUUIDs:needsToSupportLongPress:](self, "_switchWithAction:excludedUUIDs:needsToSupportLongPress:", [v12 switchOriginalAction], v6, v17 != 0);
      if (!v18)
      {
        if ([v12 isOptional])
        {
          continue;
        }

        v18 = [(AXSettings *)self _switchWithAnyActionExcludingUUIDs:v6 needsToSupportLongPress:v17 != 0];
        if (!v18)
        {
          goto LABEL_16;
        }
      }

      v19 = v18;
      v20 = [v18 uuid];
      [v6 addObject:v20];

      v21 = [v19 uuid];
      [v12 setSwitchUUID:v21];

      v9 = 1;
    }

    v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  }

  while (v8);

  if (v9)
  {
    v22 = v26;
    [(AXSettings *)self updateRecipe:v26];
    v23 = 1;
  }

  else
  {
    v23 = 1;
    v22 = v26;
  }

LABEL_17:

  return v23;
}

- (BOOL)_updateWithoutSavingExistingRecipe:(id)a3 allRecipes:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 count];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 1;
    while (1)
    {
      v11 = [v6 objectAtIndexedSubscript:v9];
      v12 = [v11 uuid];
      v13 = [v5 uuid];
      v14 = [v12 isEqual:v13];

      if (v14)
      {
        break;
      }

      v10 = ++v9 < v8;
      if (v8 == v9)
      {
        goto LABEL_5;
      }
    }

    [v6 replaceObjectAtIndex:v9 withObject:v5];
  }

  else
  {
LABEL_5:
    v10 = 0;
  }

  return v10;
}

- (void)_assignDefaultTitleIfNeededToRecipe:(id)a3
{
  v8 = a3;
  v3 = [v8 name];
  v4 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];
  v6 = [v5 length];

  if (!v6)
  {
    v7 = AXLocalizedString(@"UNTITLED_RECIPE");
    [v8 setName:v7];
  }
}

- (BOOL)updateRecipe:(id)a3
{
  v4 = a3;
  v5 = [(AXSettings *)self switchControlRecipes];
  v6 = [v5 mutableCopy];

  v7 = [(AXSettings *)self _updateWithoutSavingExistingRecipe:v4 allRecipes:v6];
  if (v7)
  {
    [(AXSettings *)self _assignDefaultTitleIfNeededToRecipe:v4];
    [(AXSettings *)self setSwitchControlRecipes:v6];
  }

  return v7;
}

- (void)saveRecipe:(id)a3
{
  v6 = a3;
  v4 = [(AXSettings *)self switchControlRecipes];
  v5 = [v4 mutableCopy];

  if (![(AXSettings *)self _updateWithoutSavingExistingRecipe:v6 allRecipes:v5])
  {
    [v5 addObject:v6];
  }

  [(AXSettings *)self _assignDefaultTitleIfNeededToRecipe:v6];
  [(AXSettings *)self setSwitchControlRecipes:v5];
}

- (BOOL)isNewRecipe:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(AXSettings *)self switchControlRecipes];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v15 + 1) + 8 * i) uuid];
        v11 = [v4 uuid];
        v12 = [v10 isEqual:v11];

        if (v12)
        {
          v13 = 0;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_11:

  return v13;
}

- (id)_createRecipeForInterfaceOrientedPoint:(CGPoint)a3 forHold:(BOOL)a4 saveToSettings:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  y = a3.y;
  x = a3.x;
  v19[2] = *MEMORY[0x1E69E9840];
  v10 = objc_alloc_init(AXSwitchRecipe);
  v11 = v10;
  if (v6)
  {
    [(AXSwitchRecipe *)v10 setUnlocalizedName:@"RECIPE_CREATED_FROM_HOLD_POINT"];
    [(AXSwitchRecipe *)v11 setMenuIconIdentifier:@"HoldPoint"];
    v12 = objc_alloc_init(AXSwitchRecipeMapping);
    [(AXSwitchRecipeMapping *)v12 setAction:@"HoldAtPoint"];
    [(AXSwitchRecipeMapping *)v12 setHoldPoint:x, y];
  }

  else
  {
    [(AXSwitchRecipe *)v10 setUnlocalizedName:@"RECIPE_CREATED_FROM_POINT"];
    [(AXSwitchRecipe *)v11 setMenuIconIdentifier:@"TapPoint"];
    v12 = objc_alloc_init(AXSwitchRecipeMapping);
    [(AXSwitchRecipeMapping *)v12 setAction:@"Gesture"];
    v13 = [AXReplayableGesture tapGestureForInterfaceOrientedPoint:x, y];
    [(AXSwitchRecipeMapping *)v12 setGesture:v13];
  }

  if ([(AXSettings *)self switchControlScanningStyle]== 2)
  {
    v14 = 104;
  }

  else
  {
    v14 = 103;
  }

  [(AXSwitchRecipeMapping *)v12 setSwitchOriginalAction:v14];
  v15 = objc_alloc_init(AXSwitchRecipeMapping);
  [(AXSwitchRecipeMapping *)v15 setAction:@"Exit"];
  [(AXSwitchRecipeMapping *)v15 setSwitchOriginalAction:0];
  [(AXSwitchRecipeMapping *)v15 setOptional:1];
  v19[0] = v12;
  v19[1] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  [(AXSwitchRecipe *)v11 setMappings:v16];

  [(AXSwitchRecipe *)v11 setTimeout:60.0];
  if (v5)
  {
    v17 = +[AXSettings sharedInstance];
    [v17 saveRecipe:v11];
  }

  return v11;
}

- (id)switchForUUID:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(AXSettings *)self assistiveTouchSwitches];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 uuid];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (NSMutableSet)migratedSwitchControlMenuItemsPreferenceKeys
{
  v3 = OBJC_IVAR___AXSettings_migratedSwitchControlMenuItemsPreferenceKeys;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setMigratedSwitchControlMenuItemsPreferenceKeys:(id)a3
{
  v5 = OBJC_IVAR___AXSettings_migratedSwitchControlMenuItemsPreferenceKeys;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = a3;
  v7 = a3;
}

- (BOOL)isDeviceSameTypeAsGuestPassTransfer:(id)a3
{
  v4 = sub_18B2C9894();
  v6 = v5;
  v7 = self;
  LOBYTE(v4) = _sSo10AXSettingsC22AccessibilityUtilitiesE35isDeviceSameTypeAsGuestPassTransferySbSSF_0(v4, v6);

  return v4 & 1;
}

- (id)guestPassPayloadForCrossPlatformTransfer:(id)a3
{
  v4 = sub_18B2C9814();
  v5 = self;
  _sSo10AXSettingsC22AccessibilityUtilitiesE40guestPassPayloadForCrossPlatformTransferySDys11AnyHashableVypGSgAGF_0(v4);
  v7 = v6;

  if (v7)
  {
    v8 = sub_18B2C9804();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)filterManagedAssetsRepresentationForGuestPassTransfer:(id)a3
{
  sub_18B2C9814();
  v3 = sub_18B2C9804();

  return v3;
}

- (id)spokenContentVoiceSelectionForLanguage:(id)a3
{
  if (a3)
  {
    v4 = sub_18B2C9894();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = swift_allocObject();
  v7[2] = self;
  v7[3] = v4;
  v7[4] = v6;
  v8 = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B70D8);
  sub_18B2C95A4();

  return v10;
}

- (void)setSpokenContentVoiceSelectionForLanguage:(id)a3 selection:(id)a4
{
  if (a3)
  {
    v6 = sub_18B2C9894();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = swift_allocObject();
  v9[2] = self;
  v9[3] = v6;
  v9[4] = v8;
  v9[5] = a4;
  v10 = a4;
  v12 = self;
  v11 = v10;
  sub_18B2C95A4();
}

- (id)speechVoiceIdentifierForLanguage:(id)a3 sourceKey:(id)a4 exists:(BOOL *)a5
{
  if (a3)
  {
    v7 = sub_18B2C9894();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = sub_18B2C9894();
  v12 = v11;
  v13 = swift_allocObject();
  v13[2] = v10;
  v13[3] = v12;
  v13[4] = self;
  v13[5] = v7;
  v13[6] = v9;
  v13[7] = a5;
  v14 = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6868);
  sub_18B2C95A4();

  if (v17)
  {
    v15 = sub_18B2C9864();
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)setSpeechVoiceIdentifier:(id)a3 forLanguage:(id)a4 sourceKey:(id)a5
{
  if (a3)
  {
    v7 = sub_18B2C9894();
    v9 = v8;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_18B2C9894();
    goto LABEL_9;
  }

  v7 = 0;
  v9 = 0;
  if (!a4)
  {
    goto LABEL_8;
  }

LABEL_3:
  v10 = sub_18B2C9894();
  v12 = v11;
  v13 = sub_18B2C9894();
  v15 = v14;
  if (v12)
  {
    v16 = v13;
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = v15;
    v17[4] = self;
    v17[5] = v7;
    v17[6] = v9;
    v17[7] = v10;
    v17[8] = v12;
    v18 = self;
    sub_18B2C95A4();

    return;
  }

LABEL_9:
}

- (void)setDefaultVoiceSelection:(id)a3 languageID:(id)a4 rate:(id)a5 pitch:(id)a6 volume:(id)a7
{
  v11 = sub_18B2C9894();
  v13 = v12;
  v14 = sub_18B2C9894();
  v16 = v15;
  v17 = OBJC_IVAR___AXSettings_voiceover;
  swift_beginAccess();
  v18 = *(&self->super.super.super.isa + v17);
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = self;
  v23 = v18;
  [v19 floatValue];
  v25 = v24;
  [v21 floatValue];
  v27 = v26;
  [v20 floatValue];
  v28.value._countAndFlagsBits = v11;
  v28.value._object = v13;
  v29._countAndFlagsBits = v14;
  v29._object = v16;
  AXSettings.VoiceOver.set(voiceId:forLanguage:rate:volume:pitch:)(v28, v29, v25, v27, v30);
}

void __60__AXSettings_LegacyImplementation__voiceOverBrailleDisplays__block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkSCROBrailleDisplayMainSize(void)"];
  [v0 handleFailureInFunction:v1 file:@"AXSettings.m" lineNumber:61 description:{@"%s", dlerror()}];

  __break(1u);
}

void __60__AXSettings_LegacyImplementation__voiceOverBrailleDisplays__block_invoke_cold_2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkSCROBrailleDisplayDriverIdentifier(void)"];
  [v0 handleFailureInFunction:v1 file:@"AXSettings.m" lineNumber:60 description:{@"%s", dlerror()}];

  __break(1u);
}

@end