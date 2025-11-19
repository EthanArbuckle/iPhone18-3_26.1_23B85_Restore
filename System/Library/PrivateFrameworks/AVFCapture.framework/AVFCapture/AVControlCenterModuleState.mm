@interface AVControlCenterModuleState
+ (id)moduleStateForBundleID:(id)a3;
- (AudioValueRange)effectIntensityRangeForVideoEffect:(id)a3;
- (BOOL)backgroundBlurSupported;
- (BOOL)backgroundReplacementSupported;
- (BOOL)centerStageFieldOfViewRestrictedToWide;
- (BOOL)centerStageSupported;
- (BOOL)isActive;
- (BOOL)isAutoMicrophoneModeEnabled;
- (BOOL)isEnabledForVideoEffect:(id)a3;
- (BOOL)manualFramingEnabledForDevice:(id)a3;
- (BOOL)manualFramingIsAtDefault;
- (BOOL)reactionEffectsSupported;
- (BOOL)setAutoMicrophoneModeEnabled:(BOOL)a3;
- (BOOL)setEffectIntensityForVideoEffect:(float)a3 forVideoEffect:(id)a4;
- (BOOL)setEnabled:(BOOL)a3 forVideoEffect:(id)a4;
- (BOOL)setMicrophoneMode:(int64_t)a3;
- (BOOL)studioLightingSupported;
- (BOOL)supportsVideoEffect:(id)a3;
- (BOOL)voiceProcessingBypassed;
- (NSURL)backgroundReplacementURL;
- (__CVBuffer)backgroundReplacementPixelBufferFillingWidth:(int)a3 height:(int)a4;
- (double)_defaultOriginalVideoZoomFactor;
- (double)manualFramingOriginalVideoZoomFactor;
- (float)effectIntensityDefaultForVideoEffect:(id)a3;
- (float)effectIntensityForVideoEffect:(id)a3;
- (id)hiddenMicrophoneModes;
- (id)initForBundleID:(id)a3;
- (id)supportedMicrophoneModes;
- (int64_t)activeMicrophoneMode;
- (int64_t)controlModeForVideoEffect:(id)a3;
- (int64_t)microphoneMode;
- (unint64_t)unavailableReasonsForVideoEffect:(id)a3;
- (void)_checkManualFramingDefaultStateWithNewOriginalZoomFactor:(double)a3;
- (void)_handleBackPropagatedVideoZoomFactorUpdate:(id)a3;
- (void)_handlePanningAnglesUpdate:(id)a3;
- (void)_proprietaryDefaultChanged:(id)a3 keyPath:(id)a4 context:(void *)a5;
- (void)_updateEligibleEffects:(id)a3;
- (void)cleanUpOrphanedSupportedMicModes;
- (void)dealloc;
- (void)enableBlackenFrames:(BOOL)a3 forDeviceUID:(id)a4;
- (void)installProprietaryDefaultsHandlers;
- (void)invalidateDeviceBasedModuleStatesIfNeeded;
- (void)panWithTranslation:(CGPoint)a3;
- (void)performReactionEffect:(id)a3 forCaptureDeviceWithID:(id)a4;
- (void)setBackgroundBlurSupported:(BOOL)a3;
- (void)setBackgroundReplacementSupported:(BOOL)a3;
- (void)setBackgroundReplacementURL:(id)a3;
- (void)setCenterStageFieldOfViewRestrictedToWide:(BOOL)a3;
- (void)setCenterStageSupported:(BOOL)a3;
- (void)setManualFramingDeviceType:(int64_t)a3;
- (void)setManualFramingOriginalZoomFactor:(double)a3 convertedZoomFactor:(double)a4;
- (void)setReactionEffectsSupported:(BOOL)a3;
- (void)setStudioLightingSupported:(BOOL)a3;
- (void)startPanningAtPoint:(CGPoint)a3;
- (void)updateActiveReactions:(id)a3 currentRenderPTS:(id *)a4 requestedTriggers:(int)a5 forCaptureDeviceWithID:(id)a6;
- (void)updateCenterStageSupported:(BOOL)a3 backgroundBlurSupported:(BOOL)a4 studioLightingSupported:(BOOL)a5 reactionEffectsSupported:(BOOL)a6 backgroundReplacementSupported:(BOOL)a7;
@end

@implementation AVControlCenterModuleState

+ (id)moduleStateForBundleID:(id)a3
{
  v3 = [objc_alloc(objc_opt_class()) initForBundleID:a3];

  return v3;
}

- (id)initForBundleID:(id)a3
{
  v15.receiver = self;
  v15.super_class = AVControlCenterModuleState;
  v4 = [(AVControlCenterModuleState *)&v15 init];
  if (v4)
  {
    v4->_bundleID = a3;
    v4->_stateLock._os_unfair_lock_opaque = 0;
    [a3 isEqualToString:0x1F1CBF688];
    v5 = AVControlCenterPreferencesDomainForPreferencesDomain(a3);
    v4->_eligibleEffectsKey = AVControlCenterVideoEffectsEligibleEffectListPreferenceKey(v5);
    v4->_centerStageControlModeKey = AVControlCenterVideoEffectsCenterStageControlModePreferenceKey(v5);
    v4->_centerStageEnabledKey = AVControlCenterVideoEffectsCenterStageEnabledPreferenceKey(v5);
    v4->_centerStageUnavailableReasonsKey = AVControlCenterVideoEffectsCenterStageUnavailableReasonsPreferenceKey(v5);
    v6 = AVControlCenterVideoEffectsCenterStageMigrationCompletePreferenceKey(v5);
    v12[0] = @"videoeffects-cinematicframing-controlmode";
    v12[1] = @"videoeffects-cinematicframing-enabled";
    v13 = *&v4->_centerStageControlModeKey;
    v12[2] = 0x1F1CC3EC8;
    centerStageUnavailableReasonsKey = v4->_centerStageUnavailableReasonsKey;
    AVControlCenterMigrateDefaultsForKeys(v5, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:v12 count:3], v6);
    v4->_backgroundBlurControlModeKey = AVControlCenterVideoEffectsPortraitEffectControlModePreferenceKey(v5);
    v4->_backgroundBlurEnabledKey = AVControlCenterVideoEffectsPortraitEffectEnabledPreferenceKey(v5);
    v4->_backgroundBlurUnavailableReasonsKey = AVControlCenterVideoEffectsPortraitEffectUnavailableReasonsPreferenceKey(v5);
    v4->_backgroundBlurApertureKey = AVControlCenterVideoEffectsPortraitEffectAperturePreferenceKey(v5);
    v7 = AVControlCenterVideoEffectsPortraitEffectMigrationCompletePreferenceKey(v5);
    v9[0] = @"videoeffects-backgroundblur-controlmode";
    v9[1] = @"videoeffects-backgroundblur-enabled";
    v10 = *&v4->_backgroundBlurControlModeKey;
    v9[2] = 0x1F1CC3F28;
    backgroundBlurUnavailableReasonsKey = v4->_backgroundBlurUnavailableReasonsKey;
    AVControlCenterMigrateDefaultsForKeys(v5, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:v9 count:3], v7);
    v4->_studioLightingControlModeKey = AVControlCenterVideoEffectsStudioLightingControlModePreferenceKey(v5);
    v4->_studioLightingEnabledKey = AVControlCenterVideoEffectsStudioLightingEnabledPreferenceKey(v5);
    v4->_studioLightingUnavailableReasonsKey = AVControlCenterVideoEffectsStudioLightingUnavailableReasonsPreferenceKey(v5);
    v4->_studioLightingIntensityKey = AVControlCenterVideoEffectsStudioLightingIntensityPreferenceKey(v5);
    v4->_previousReactionStateByDeviceIdentifier = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4->_reactionsEnabledKey = AVControlCenterVideoEffectsReactionsEnabledPreferenceKey(v5);
    v4->_gesturesEnabledKey = AVControlCenterVideoEffectsGesturesEnabledPreferenceKey(v5);
    v4->_gesturesEnabledDefaultKey = AVControlCenterVideoEffectsGesturesEnabledDefaultPreferenceKey(v5);
    v4->_reactionsUnavailableReasonsKey = AVControlCenterVideoEffectsReactionsUnavailableReasonsPreferenceKey(v5);
    v4->_reactionTriggeredKey = AVControlCenterVideoEffectsReactionsTriggeredPreferenceKey(v5);
    v4->_reactionsInProgressKey = AVControlCenterVideoEffectsReactionsInProgressPreferenceKey(v5);
    v4->_backgroundReplacementEnabledKey = AVControlCenterVideoEffectsBackgroundReplacementEnabledPreferenceKey(v5);
    v4->_backgroundReplacementUnavailableReasonsKey = AVControlCenterVideoEffectsBackgroundReplacementUnavailableReasonsPreferenceKey(v5);
    v4->_backgroundReplacementURLBookmarkKey = AVControlCenterVideoEffectsBackgroundReplacementURLBookmarkPreferenceKey(v5);
    v4->_auVoiceIOBypassVoiceProcessingKey = AVControlCenterAudioVoiceProcessingBypassedPreferenceKey(v5);
    v4->_microphoneModeKey = AVControlCenterAudioPreferredMicrophoneModePreferenceKey(v5);
    v4->_activeMicrophoneModeKey = AVControlCenterAudioActiveMicrophoneModePreferenceKey(v5);
    v4->_supportedMicrophoneModesKey = AVControlCenterAudioSupportedMicrophoneModesPreferenceKey(v5);
    v4->_hiddenMicrophoneModesKey = AVControlCenterAudioHiddenMicrophoneModesPreferenceKey(v5);
    v4->_autoMicModeEnabledKey = AVControlCenterAudioIsAutoMicrophoneModeEnabledPreferenceKey(v5);
    [(AVControlCenterModuleState *)v4 cleanUpOrphanedSupportedMicModes];
    [(AVControlCenterModuleState *)v4 setupDeviceBasedModuleStatesIfNeeded];
  }

  return v4;
}

- (void)cleanUpOrphanedSupportedMicModes
{
  if ([objc_msgSend(MEMORY[0x1E695DFD8] setWithObjects:{@"com.cisco.squared", @"com.webex.meeting", 0), "containsObject:", self->_bundleID}])
  {
    v3 = AVControlCenterPreferencesDomainForPreferencesDomain(self->_bundleID);
    v4 = AVControlCenterDidOverwriteOrphanedSupportedMicrophoneModesPreferenceKey(v3);
    if (([+[AVCaptureProprietaryDefaultsSingleton objectForKey:](AVCaptureProprietaryDefaultsSingleton objectForKey:{v4), "BOOLValue"}] & 1) == 0)
    {
      [AVCaptureProprietaryDefaultsSingleton setObject:MEMORY[0x1E695E0F0] forKey:self->_supportedMicrophoneModesKey];
      [AVCaptureProprietaryDefaultsSingleton setObject:MEMORY[0x1E695E118] forKey:v4];
      if (dword_1ED8068A0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }
}

- (void)updateCenterStageSupported:(BOOL)a3 backgroundBlurSupported:(BOOL)a4 studioLightingSupported:(BOOL)a5 reactionEffectsSupported:(BOOL)a6 backgroundReplacementSupported:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v10 = a4;
  [(AVControlCenterModuleState *)self setCenterStageSupported:a3];
  [(AVControlCenterModuleState *)self setBackgroundBlurSupported:v10];
  [(AVControlCenterModuleState *)self setStudioLightingSupported:v9];
  [(AVControlCenterModuleState *)self setReactionEffectsSupported:v8];

  [(AVControlCenterModuleState *)self setBackgroundReplacementSupported:v7];
}

- (void)installProprietaryDefaultsHandlers
{
  os_unfair_lock_lock(&self->_stateLock);
  self->_holdingStateLock = 1;
  eligibleEffectsKey = self->_eligibleEffectsKey;
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke;
  v54[3] = &unk_1E786EAF0;
  v54[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:eligibleEffectsKey callHandlerForInitialValue:1 defaultChangedHandler:v54];
  centerStageControlModeKey = self->_centerStageControlModeKey;
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_2;
  v53[3] = &unk_1E786EAF0;
  v53[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:centerStageControlModeKey callHandlerForInitialValue:1 defaultChangedHandler:v53];
  centerStageEnabledKey = self->_centerStageEnabledKey;
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_3;
  v52[3] = &unk_1E786EAF0;
  v52[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:centerStageEnabledKey callHandlerForInitialValue:1 defaultChangedHandler:v52];
  centerStageUnavailableReasonsKey = self->_centerStageUnavailableReasonsKey;
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_4;
  v51[3] = &unk_1E786EAF0;
  v51[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:centerStageUnavailableReasonsKey callHandlerForInitialValue:1 defaultChangedHandler:v51];
  backgroundBlurControlModeKey = self->_backgroundBlurControlModeKey;
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_5;
  v50[3] = &unk_1E786EAF0;
  v50[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:backgroundBlurControlModeKey callHandlerForInitialValue:1 defaultChangedHandler:v50];
  backgroundBlurEnabledKey = self->_backgroundBlurEnabledKey;
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_6;
  v49[3] = &unk_1E786EAF0;
  v49[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:backgroundBlurEnabledKey callHandlerForInitialValue:1 defaultChangedHandler:v49];
  backgroundBlurUnavailableReasonsKey = self->_backgroundBlurUnavailableReasonsKey;
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_7;
  v48[3] = &unk_1E786EAF0;
  v48[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:backgroundBlurUnavailableReasonsKey callHandlerForInitialValue:1 defaultChangedHandler:v48];
  backgroundBlurApertureKey = self->_backgroundBlurApertureKey;
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_8;
  v47[3] = &unk_1E786EAF0;
  v47[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:backgroundBlurApertureKey callHandlerForInitialValue:1 defaultChangedHandler:v47];
  studioLightingControlModeKey = self->_studioLightingControlModeKey;
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_9;
  v46[3] = &unk_1E786EAF0;
  v46[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:studioLightingControlModeKey callHandlerForInitialValue:1 defaultChangedHandler:v46];
  studioLightingEnabledKey = self->_studioLightingEnabledKey;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_10;
  v45[3] = &unk_1E786EAF0;
  v45[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:studioLightingEnabledKey callHandlerForInitialValue:1 defaultChangedHandler:v45];
  studioLightingUnavailableReasonsKey = self->_studioLightingUnavailableReasonsKey;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_11;
  v44[3] = &unk_1E786EAF0;
  v44[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:studioLightingUnavailableReasonsKey callHandlerForInitialValue:1 defaultChangedHandler:v44];
  studioLightingIntensityKey = self->_studioLightingIntensityKey;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_12;
  v43[3] = &unk_1E786EAF0;
  v43[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:studioLightingIntensityKey callHandlerForInitialValue:1 defaultChangedHandler:v43];
  reactionsEnabledKey = self->_reactionsEnabledKey;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_13;
  v42[3] = &unk_1E786EAF0;
  v42[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:reactionsEnabledKey callHandlerForInitialValue:1 defaultChangedHandler:v42];
  gesturesEnabledKey = self->_gesturesEnabledKey;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_14;
  v41[3] = &unk_1E786EAF0;
  v41[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:gesturesEnabledKey callHandlerForInitialValue:1 defaultChangedHandler:v41];
  gesturesEnabledDefaultKey = self->_gesturesEnabledDefaultKey;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_15;
  v40[3] = &unk_1E786EAF0;
  v40[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:gesturesEnabledDefaultKey callHandlerForInitialValue:0 defaultChangedHandler:v40];
  reactionTriggeredKey = self->_reactionTriggeredKey;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_16;
  v39[3] = &unk_1E786EAF0;
  v39[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:reactionTriggeredKey callHandlerForInitialValue:0 defaultChangedHandler:v39];
  reactionsInProgressKey = self->_reactionsInProgressKey;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_17;
  v38[3] = &unk_1E786EAF0;
  v38[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:reactionsInProgressKey callHandlerForInitialValue:0 defaultChangedHandler:v38];
  backgroundReplacementEnabledKey = self->_backgroundReplacementEnabledKey;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_18;
  v37[3] = &unk_1E786EAF0;
  v37[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:backgroundReplacementEnabledKey callHandlerForInitialValue:1 defaultChangedHandler:v37];
  backgroundReplacementUnavailableReasonsKey = self->_backgroundReplacementUnavailableReasonsKey;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_19;
  v36[3] = &unk_1E786EAF0;
  v36[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:backgroundReplacementUnavailableReasonsKey callHandlerForInitialValue:1 defaultChangedHandler:v36];
  backgroundReplacementURLBookmarkKey = self->_backgroundReplacementURLBookmarkKey;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_20;
  v35[3] = &unk_1E786EAF0;
  v35[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:backgroundReplacementURLBookmarkKey callHandlerForInitialValue:1 defaultChangedHandler:v35];
  auVoiceIOBypassVoiceProcessingKey = self->_auVoiceIOBypassVoiceProcessingKey;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_21;
  v34[3] = &unk_1E786EAF0;
  v34[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:auVoiceIOBypassVoiceProcessingKey callHandlerForInitialValue:1 defaultChangedHandler:v34];
  microphoneModeKey = self->_microphoneModeKey;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_22;
  v33[3] = &unk_1E786EAF0;
  v33[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:microphoneModeKey callHandlerForInitialValue:1 defaultChangedHandler:v33];
  activeMicrophoneModeKey = self->_activeMicrophoneModeKey;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_23;
  v32[3] = &unk_1E786EAF0;
  v32[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:activeMicrophoneModeKey callHandlerForInitialValue:1 defaultChangedHandler:v32];
  supportedMicrophoneModesKey = self->_supportedMicrophoneModesKey;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_24;
  v31[3] = &unk_1E786EAF0;
  v31[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:supportedMicrophoneModesKey callHandlerForInitialValue:1 defaultChangedHandler:v31];
  hiddenMicrophoneModesKey = self->_hiddenMicrophoneModesKey;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_25;
  v30[3] = &unk_1E786EAF0;
  v30[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:hiddenMicrophoneModesKey callHandlerForInitialValue:1 defaultChangedHandler:v30];
  autoMicModeEnabledKey = self->_autoMicModeEnabledKey;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_26;
  v29[3] = &unk_1E786EAF0;
  v29[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:autoMicModeEnabledKey callHandlerForInitialValue:1 defaultChangedHandler:v29];
  os_unfair_lock_unlock(&self->_stateLock);
  self->_holdingStateLock = 0;
}

id __64__AVControlCenterModuleState_installProprietaryDefaultsHandlers__block_invoke_15(uint64_t a1)
{
  result = [AVCaptureProprietaryDefaultsSingleton objectForKey:*(*(a1 + 32) + 232)];
  if (!result)
  {
    v3 = *(a1 + 32);
    v4 = v3[29];
    v5 = AVCCM_GesturesEnabledChangedContext;

    return [v3 _proprietaryDefaultChanged:0 keyPath:v4 context:v5];
  }

  return result;
}

- (void)dealloc
{
  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_centerStageControlModeKey];
  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_centerStageEnabledKey];
  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_centerStageUnavailableReasonsKey];

  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_backgroundBlurControlModeKey];
  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_backgroundBlurEnabledKey];
  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_backgroundBlurUnavailableReasonsKey];
  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_backgroundBlurApertureKey];

  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_studioLightingControlModeKey];
  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_studioLightingEnabledKey];
  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_studioLightingUnavailableReasonsKey];
  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_studioLightingIntensityKey];

  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_reactionsEnabledKey];
  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_gesturesEnabledKey];
  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_reactionsUnavailableReasonsKey];
  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_reactionTriggeredKey];
  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_reactionsInProgressKey];

  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_backgroundReplacementEnabledKey];
  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_backgroundReplacementUnavailableReasonsKey];
  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_backgroundReplacementURLBookmarkKey];

  backgroundReplacementPixelBuffer = self->_backgroundReplacementPixelBuffer;
  if (backgroundReplacementPixelBuffer)
  {
    CFRelease(backgroundReplacementPixelBuffer);
    self->_backgroundReplacementPixelBuffer = 0;
  }

  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_auVoiceIOBypassVoiceProcessingKey];
  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_microphoneModeKey];
  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_activeMicrophoneModeKey];
  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_supportedMicrophoneModesKey];
  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_hiddenMicrophoneModesKey];
  [(AVControlCenterModuleState *)self invalidateDeviceBasedModuleStatesIfNeeded];

  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_eligibleEffectsKey];
  v4.receiver = self;
  v4.super_class = AVControlCenterModuleState;
  [(AVControlCenterModuleState *)&v4 dealloc];
}

- (void)_updateEligibleEffects:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    holdingStateLock = self->_holdingStateLock;
    if (!holdingStateLock)
    {
      os_unfair_lock_lock(&self->_stateLock);
    }

    v6 = [MEMORY[0x1E695DFD8] setWithArray:a3];
    self->_isOptedInForBackgroundBlur = [v6 containsObject:AVCaptureBundleCameraPortraitEffectEnabledKey];
    self->_isOptedInForStudioLight = [v6 containsObject:AVCaptureBundleCameraStudioLightEnabledKey];
    self->_isOptedInForReactionEffects = [v6 containsObject:AVCaptureBundleCameraReactionEffectsEnabledKey];
    self->_isOptedInForBackgroundReplacement = [v6 containsObject:AVCaptureBundleCameraBackgroundReplacementEnabledKey];
    if (!holdingStateLock)
    {
      os_unfair_lock_unlock(&self->_stateLock);
    }

    v7 = [sCaptureDeviceWatcher centerStageSupported];
    v8 = [sCaptureDeviceWatcher backgroundBlurSupported];
    v9 = [sCaptureDeviceWatcher studioLightingSupported];
    v10 = [sCaptureDeviceWatcher reactionEffectsSupported];
    v11 = [sCaptureDeviceWatcher backgroundReplacementSupported];

    [(AVControlCenterModuleState *)self updateCenterStageSupported:v7 backgroundBlurSupported:v8 studioLightingSupported:v9 reactionEffectsSupported:v10 backgroundReplacementSupported:v11];
  }
}

- (BOOL)isActive
{
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
  }

  if ([(NSArray *)self->_supportedMicrophoneModes count])
  {
    v4 = !self->_auVoiceIOBypassVoiceProcessing;
  }

  else
  {
    v4 = 0;
  }

  centerStageSupported = self->_centerStageSupported;
  backgroundBlurSupported = self->_backgroundBlurSupported;
  studioLightingSupported = self->_studioLightingSupported;
  reactionEffectsSupported = self->_reactionEffectsSupported;
  backgroundReplacementSupported = self->_backgroundReplacementSupported;
  if (!holdingStateLock)
  {
    os_unfair_lock_unlock(&self->_stateLock);
  }

  return backgroundReplacementSupported || reactionEffectsSupported || studioLightingSupported || backgroundBlurSupported || centerStageSupported || v4;
}

- (BOOL)centerStageSupported
{
  if (self->_holdingStateLock)
  {
    return self->_centerStageSupported;
  }

  os_unfair_lock_lock(&self->_stateLock);
  centerStageSupported = self->_centerStageSupported;
  os_unfair_lock_unlock(&self->_stateLock);
  return centerStageSupported;
}

- (void)setCenterStageSupported:(BOOL)a3
{
  v3 = a3;
  if (!self->_holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
    centerStageSupported = self->_centerStageSupported;
    self->_centerStageSupported = v3;
    os_unfair_lock_unlock(&self->_stateLock);
    if (centerStageSupported == v3)
    {
      return;
    }

    goto LABEL_5;
  }

  v5 = self->_centerStageSupported;
  self->_centerStageSupported = a3;
  if (v5 != a3)
  {
LABEL_5:
    v9[0] = @"AVControlCenterModulesNotificationVideoEffectKey";
    v9[1] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
    bundleID = self->_bundleID;
    v10[0] = @"AVControlCenterVideoEffectCenterStage";
    v10[1] = bundleID;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }
}

- (BOOL)backgroundBlurSupported
{
  if (self->_holdingStateLock)
  {
    return self->_backgroundBlurSupported;
  }

  os_unfair_lock_lock(&self->_stateLock);
  backgroundBlurSupported = self->_backgroundBlurSupported;
  os_unfair_lock_unlock(&self->_stateLock);
  return backgroundBlurSupported;
}

- (void)setBackgroundBlurSupported:(BOOL)a3
{
  v3 = a3;
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
  }

  v6 = v3 && self->_isOptedInForBackgroundBlur;
  v7 = v6;
  backgroundBlurSupported = self->_backgroundBlurSupported;
  self->_backgroundBlurSupported = v6;
  if (!holdingStateLock)
  {
    os_unfair_lock_unlock(&self->_stateLock);
  }

  if (backgroundBlurSupported != v7)
  {
    v11[0] = @"AVControlCenterModulesNotificationVideoEffectKey";
    v11[1] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
    bundleID = self->_bundleID;
    v12[0] = @"AVControlCenterVideoEffectBackgroundBlur";
    v12[1] = bundleID;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }
}

- (BOOL)studioLightingSupported
{
  if (self->_holdingStateLock)
  {
    return self->_studioLightingSupported;
  }

  os_unfair_lock_lock(&self->_stateLock);
  studioLightingSupported = self->_studioLightingSupported;
  os_unfair_lock_unlock(&self->_stateLock);
  return studioLightingSupported;
}

- (void)setStudioLightingSupported:(BOOL)a3
{
  v3 = a3;
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
  }

  v6 = v3 && self->_isOptedInForStudioLight;
  v7 = v6;
  studioLightingSupported = self->_studioLightingSupported;
  self->_studioLightingSupported = v6;
  if (!holdingStateLock)
  {
    os_unfair_lock_unlock(&self->_stateLock);
  }

  if (studioLightingSupported != v7)
  {
    v11[0] = @"AVControlCenterModulesNotificationVideoEffectKey";
    v11[1] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
    bundleID = self->_bundleID;
    v12[0] = @"AVControlCenterVideoEffectStudioLighting";
    v12[1] = bundleID;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }
}

- (BOOL)reactionEffectsSupported
{
  if (self->_holdingStateLock)
  {
    return self->_reactionEffectsSupported;
  }

  os_unfair_lock_lock(&self->_stateLock);
  reactionEffectsSupported = self->_reactionEffectsSupported;
  os_unfair_lock_unlock(&self->_stateLock);
  return reactionEffectsSupported;
}

- (void)setReactionEffectsSupported:(BOOL)a3
{
  v3 = a3;
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
  }

  v6 = v3 && self->_isOptedInForReactionEffects;
  v7 = v6;
  reactionEffectsSupported = self->_reactionEffectsSupported;
  self->_reactionEffectsSupported = v6;
  if (!holdingStateLock)
  {
    os_unfair_lock_unlock(&self->_stateLock);
  }

  if (reactionEffectsSupported != v7)
  {
    v11[0] = @"AVControlCenterModulesNotificationVideoEffectKey";
    v11[1] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
    bundleID = self->_bundleID;
    v12[0] = @"AVControlCenterVideoEffectReactions";
    v12[1] = bundleID;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }
}

- (BOOL)backgroundReplacementSupported
{
  if (self->_holdingStateLock)
  {
    return self->_backgroundReplacementSupported;
  }

  os_unfair_lock_lock(&self->_stateLock);
  backgroundReplacementSupported = self->_backgroundReplacementSupported;
  os_unfair_lock_unlock(&self->_stateLock);
  return backgroundReplacementSupported;
}

- (void)setBackgroundReplacementSupported:(BOOL)a3
{
  v3 = a3;
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
  }

  v6 = v3 && self->_isOptedInForBackgroundReplacement;
  v7 = v6;
  backgroundReplacementSupported = self->_backgroundReplacementSupported;
  self->_backgroundReplacementSupported = v6;
  if (!holdingStateLock)
  {
    os_unfair_lock_unlock(&self->_stateLock);
  }

  if (backgroundReplacementSupported != v7)
  {
    v11[0] = @"AVControlCenterModulesNotificationVideoEffectKey";
    v11[1] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
    bundleID = self->_bundleID;
    v12[0] = @"AVControlCenterVideoEffectBackgroundReplacement";
    v12[1] = bundleID;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }
}

- (BOOL)supportsVideoEffect:(id)a3
{
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
  }

  if ([a3 isEqualToString:@"AVControlCenterVideoEffectCenterStage"])
  {
    centerStageSupported = self->_centerStageSupported;
  }

  else
  {
    centerStageSupported = 0;
  }

  if ([a3 isEqualToString:@"AVControlCenterVideoEffectBackgroundBlur"])
  {
    centerStageSupported = self->_backgroundBlurSupported;
  }

  if ([a3 isEqualToString:@"AVControlCenterVideoEffectStudioLighting"])
  {
    centerStageSupported = self->_studioLightingSupported;
  }

  if ([a3 isEqualToString:@"AVControlCenterVideoEffectReactions"])
  {
    centerStageSupported = self->_reactionEffectsSupported;
  }

  if ([a3 isEqualToString:@"AVControlCenterVideoEffectBackgroundReplacement"])
  {
    centerStageSupported = self->_backgroundReplacementSupported;
  }

  if ([a3 isEqualToString:@"AVControlCenterVideoEffectGestures"])
  {
    centerStageSupported = self->_reactionEffectsSupported;
  }

  if (!holdingStateLock)
  {
    os_unfair_lock_unlock(&self->_stateLock);
  }

  return centerStageSupported;
}

- (int64_t)controlModeForVideoEffect:(id)a3
{
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
  }

  if ([a3 isEqualToString:@"AVControlCenterVideoEffectCenterStage"])
  {
    centerStageControlMode = self->_centerStageControlMode;
  }

  else
  {
    centerStageControlMode = 0;
  }

  if ([a3 isEqualToString:@"AVControlCenterVideoEffectBackgroundBlur"])
  {
    centerStageControlMode = self->_backgroundBlurControlMode;
  }

  if ([a3 isEqualToString:@"AVControlCenterVideoEffectStudioLighting"])
  {
    centerStageControlMode = self->_studioLightingControlMode;
  }

  v7 = [a3 isEqualToString:@"AVControlCenterVideoEffectReactions"];
  v8 = [a3 isEqualToString:@"AVControlCenterVideoEffectGestures"];
  v9 = [a3 isEqualToString:@"AVControlCenterVideoEffectBackgroundReplacement"];
  if (!holdingStateLock)
  {
    os_unfair_lock_unlock(&self->_stateLock);
  }

  if (((v9 | v8) | v7))
  {
    return 2;
  }

  else
  {
    return centerStageControlMode;
  }
}

- (BOOL)isEnabledForVideoEffect:(id)a3
{
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
  }

  if ([a3 isEqualToString:@"AVControlCenterVideoEffectCenterStage"])
  {
    centerStageEnabled = self->_centerStageEnabled;
  }

  else
  {
    centerStageEnabled = 0;
  }

  if ([a3 isEqualToString:@"AVControlCenterVideoEffectBackgroundBlur"])
  {
    centerStageEnabled = self->_backgroundBlurEnabled;
  }

  if ([a3 isEqualToString:@"AVControlCenterVideoEffectStudioLighting"])
  {
    centerStageEnabled = self->_studioLightingEnabled;
  }

  if ([a3 isEqualToString:@"AVControlCenterVideoEffectReactions"])
  {
    centerStageEnabled = self->_reactionsEnabled;
  }

  if ([a3 isEqualToString:@"AVControlCenterVideoEffectGestures"])
  {
    centerStageEnabled = self->_gesturesEnabled;
  }

  if ([a3 isEqualToString:@"AVControlCenterVideoEffectBackgroundReplacement"])
  {
    centerStageEnabled = self->_backgroundReplacementEnabled;
  }

  if (!holdingStateLock)
  {
    os_unfair_lock_unlock(&self->_stateLock);
  }

  return centerStageEnabled;
}

- (BOOL)setEnabled:(BOOL)a3 forVideoEffect:(id)a4
{
  v5 = a3;
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
    self->_holdingStateLock = 1;
  }

  v8 = [a4 isEqualToString:@"AVControlCenterVideoEffectCenterStage"];
  if (v8)
  {
    +[AVCaptureProprietaryDefaultsSingleton setObject:forKey:](AVCaptureProprietaryDefaultsSingleton, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithBool:v5], self->_centerStageEnabledKey);
  }

  if ([a4 isEqualToString:@"AVControlCenterVideoEffectBackgroundBlur"])
  {
    +[AVCaptureProprietaryDefaultsSingleton setObject:forKey:](AVCaptureProprietaryDefaultsSingleton, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithBool:v5], self->_backgroundBlurEnabledKey);
    LOBYTE(v8) = 1;
  }

  if ([a4 isEqualToString:@"AVControlCenterVideoEffectStudioLighting"])
  {
    +[AVCaptureProprietaryDefaultsSingleton setObject:forKey:](AVCaptureProprietaryDefaultsSingleton, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithBool:v5], self->_studioLightingEnabledKey);
    LOBYTE(v8) = 1;
  }

  if ([a4 isEqualToString:@"AVControlCenterVideoEffectReactions"])
  {
    +[AVCaptureProprietaryDefaultsSingleton setObject:forKey:](AVCaptureProprietaryDefaultsSingleton, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithBool:v5], self->_reactionsEnabledKey);
    LOBYTE(v8) = 1;
  }

  if ([a4 isEqualToString:@"AVControlCenterVideoEffectGestures"])
  {
    +[AVCaptureProprietaryDefaultsSingleton setObject:forKey:](AVCaptureProprietaryDefaultsSingleton, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithBool:v5], self->_gesturesEnabledKey);
    LOBYTE(v8) = 1;
  }

  if ([a4 isEqualToString:@"AVControlCenterVideoEffectBackgroundReplacement"])
  {
    +[AVCaptureProprietaryDefaultsSingleton setObject:forKey:](AVCaptureProprietaryDefaultsSingleton, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithBool:v5], self->_backgroundReplacementEnabledKey);
    LOBYTE(v8) = 1;
  }

  if (!holdingStateLock)
  {
    os_unfair_lock_unlock(&self->_stateLock);
    self->_holdingStateLock = 0;
  }

  return v8;
}

- (unint64_t)unavailableReasonsForVideoEffect:(id)a3
{
  if ([a3 isEqualToString:@"AVControlCenterVideoEffectCenterStage"])
  {
    v5 = [+[AVCaptureProprietaryDefaultsSingleton objectForKey:](AVCaptureProprietaryDefaultsSingleton objectForKey:{self->_centerStageUnavailableReasonsKey), "unsignedIntegerValue"}];
  }

  else
  {
    v5 = 0;
  }

  if ([a3 isEqualToString:@"AVControlCenterVideoEffectBackgroundBlur"])
  {
    v5 = [+[AVCaptureProprietaryDefaultsSingleton objectForKey:](AVCaptureProprietaryDefaultsSingleton objectForKey:{self->_backgroundBlurUnavailableReasonsKey), "unsignedIntegerValue"}];
  }

  if ([a3 isEqualToString:@"AVControlCenterVideoEffectStudioLighting"])
  {
    v5 = [+[AVCaptureProprietaryDefaultsSingleton objectForKey:](AVCaptureProprietaryDefaultsSingleton objectForKey:{self->_studioLightingUnavailableReasonsKey), "unsignedIntegerValue"}];
  }

  if ([a3 isEqualToString:@"AVControlCenterVideoEffectReactions"])
  {
    v5 = [+[AVCaptureProprietaryDefaultsSingleton objectForKey:](AVCaptureProprietaryDefaultsSingleton objectForKey:{self->_reactionsUnavailableReasonsKey), "unsignedIntegerValue"}];
  }

  if ([a3 isEqualToString:@"AVControlCenterVideoEffectGestures"])
  {
    v5 = [+[AVCaptureProprietaryDefaultsSingleton objectForKey:](AVCaptureProprietaryDefaultsSingleton objectForKey:{self->_reactionsUnavailableReasonsKey), "unsignedIntegerValue"}];
  }

  if (![a3 isEqualToString:@"AVControlCenterVideoEffectBackgroundReplacement"])
  {
    return v5;
  }

  v6 = [AVCaptureProprietaryDefaultsSingleton objectForKey:self->_backgroundReplacementUnavailableReasonsKey];

  return [v6 unsignedIntegerValue];
}

- (void)performReactionEffect:(id)a3 forCaptureDeviceWithID:(id)a4
{
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
  }

  v8 = self->_reactionTriggeredKey;
  bundleID = self->_bundleID;
  v11[0] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
  v11[1] = @"AVControlCenterModulesNotificationDeviceIdentifierKey";
  v12[0] = bundleID;
  v12[1] = a4;
  v11[2] = @"AVControlCenterModulesNotificationReactionTypeKey";
  v12[2] = a3;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
  if (!holdingStateLock)
  {
    os_unfair_lock_unlock(&self->_stateLock);
  }

  [AVCaptureProprietaryDefaultsSingleton setObject:v10 forKey:v8];
}

- (void)updateActiveReactions:(id)a3 currentRenderPTS:(id *)a4 requestedTriggers:(int)a5 forCaptureDeviceWithID:(id)a6
{
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
  }

  v12 = self->_bundleID;
  v13 = self->_reactionsInProgressKey;
  v14 = [(NSMutableDictionary *)self->_previousReactionStateByDeviceIdentifier objectForKeyedSubscript:a6];
  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_previousReactionStateByDeviceIdentifier, "setObject:forKeyedSubscript:", [a3 mutableCopy], a6);
  if (!holdingStateLock)
  {
    os_unfair_lock_unlock(&self->_stateLock);
  }

  if (a5 > 0 || (v15 = [a3 count], v15 != objc_msgSend(v14, "count")))
  {
    v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a3, "count") + objc_msgSend(v14, "count")}];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __110__AVControlCenterModuleState_updateActiveReactions_currentRenderPTS_requestedTriggers_forCaptureDeviceWithID___block_invoke;
    v22[3] = &unk_1E7876570;
    v22[4] = v14;
    v22[5] = v16;
    [a3 enumerateKeysAndObjectsUsingBlock:v22];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __110__AVControlCenterModuleState_updateActiveReactions_currentRenderPTS_requestedTriggers_forCaptureDeviceWithID___block_invoke_2;
    v19[3] = &unk_1E7876598;
    v20 = *&a4->var0;
    var3 = a4->var3;
    v19[4] = v16;
    [v14 enumerateKeysAndObjectsUsingBlock:v19];
    [v16 sortUsingComparator:&__block_literal_global_29];
    v17[0] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
    v17[1] = @"AVControlCenterModulesNotificationDeviceIdentifierKey";
    v18[0] = v12;
    v18[1] = a6;
    v17[2] = @"AVControlCenterModulesNotificationReactionEffectsInProgressKey";
    v18[2] = v16;
    +[AVCaptureProprietaryDefaultsSingleton setObject:forKey:](AVCaptureProprietaryDefaultsSingleton, "setObject:forKey:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3], v13);
  }
}

void __110__AVControlCenterModuleState_updateActiveReactions_currentRenderPTS_requestedTriggers_forCaptureDeviceWithID___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  [*(a1 + 32) removeObjectForKey:a2];
  AVCaptureReactionTypeForPTEffectReactionType = _AVControlCenterGetAVCaptureReactionTypeForPTEffectReactionType([a3 effectType]);
  if (AVCaptureReactionTypeForPTEffectReactionType)
  {
    v6 = AVCaptureReactionTypeForPTEffectReactionType;
    memset(&v11, 0, sizeof(v11));
    [a3 startTime];
    CMTimeMakeWithSeconds(&v11, v7, 1000000000);
    v8 = [AVCaptureReactionEffectState alloc];
    v10 = v11;
    v9 = [(AVCaptureReactionEffectState *)v8 initWithReactionType:v6 startTime:&v10];
    [*(a1 + 40) addObject:{-[AVCaptureReactionEffectState dictionaryRepresentation](v9, "dictionaryRepresentation")}];
  }
}

void __110__AVControlCenterModuleState_updateActiveReactions_currentRenderPTS_requestedTriggers_forCaptureDeviceWithID___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  AVCaptureReactionTypeForPTEffectReactionType = _AVControlCenterGetAVCaptureReactionTypeForPTEffectReactionType([a3 effectType]);
  if (AVCaptureReactionTypeForPTEffectReactionType)
  {
    v6 = AVCaptureReactionTypeForPTEffectReactionType;
    memset(&v13, 0, sizeof(v13));
    [a3 startTime];
    CMTimeMakeWithSeconds(&v13, v7, 1000000000);
    v8 = [AVCaptureReactionEffectState alloc];
    v12 = v13;
    v10 = *(a1 + 40);
    v11 = *(a1 + 56);
    v9 = [(AVCaptureReactionEffectState *)v8 initWithReactionType:v6 startTime:&v12 endTime:&v10];
    [*(a1 + 32) addObject:{-[AVCaptureReactionEffectState dictionaryRepresentation](v9, "dictionaryRepresentation")}];
  }
}

uint64_t __110__AVControlCenterModuleState_updateActiveReactions_currentRenderPTS_requestedTriggers_forCaptureDeviceWithID___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 objectForKeyedSubscript:@"StartTime"];
  v5 = [a3 objectForKeyedSubscript:@"StartTime"];

  return [v4 compare:v5];
}

- (NSURL)backgroundReplacementURL
{
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
  }

  v4 = self->_backgroundReplacementURL;
  if (!holdingStateLock)
  {
    os_unfair_lock_unlock(&self->_stateLock);
  }

  return v4;
}

- (void)setBackgroundReplacementURL:(id)a3
{
  if (a3)
  {
    v5 = 0;
    v4 = [a3 bookmarkDataWithOptions:0 includingResourceValuesForKeys:0 relativeToURL:0 error:&v5];
    if (v5)
    {
      return;
    }

    a3 = v4;
  }

  [AVCaptureProprietaryDefaultsSingleton setObject:a3 forKey:self->_backgroundReplacementURLBookmarkKey];
}

- (__CVBuffer)backgroundReplacementPixelBufferFillingWidth:(int)a3 height:(int)a4
{
  v4 = *&a4;
  v5 = *&a3;
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
  }

  backgroundReplacementPixelBuffer = self->_backgroundReplacementPixelBuffer;
  if (backgroundReplacementPixelBuffer)
  {
    if (self->_backgroundReplacementPixelBufferFillWidth == v5 && self->_backgroundReplacementPixelBufferFillHeight == v4)
    {
      v9 = CFRetain(backgroundReplacementPixelBuffer);
      v10 = CFAutorelease(v9);
      if (holdingStateLock)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (!v5 || !v4)
    {
      CFRelease(backgroundReplacementPixelBuffer);
      self->_backgroundReplacementPixelBuffer = 0;
      goto LABEL_15;
    }

LABEL_13:
    v10 = 0;
    if (holdingStateLock)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v5 && v4)
  {
    goto LABEL_13;
  }

LABEL_15:
  v10 = 0;
  *&self->_backgroundReplacementPixelBufferFillWidth = 0;
  if (!holdingStateLock)
  {
LABEL_16:
    os_unfair_lock_unlock(&self->_stateLock);
  }

LABEL_17:
  if (v4 >= 1 && v5 >= 1 && !v10)
  {
    v11 = [AVCaptureProprietaryDefaultsSingleton imageForKey:self->_backgroundReplacementURLBookmarkKey fillWidth:v5 fillHeight:v4];
    if (v11)
    {
      v10 = v11;
    }

    else
    {
      [(AVControlCenterModuleState *)self setBackgroundReplacementURL:+[AVCaptureDevice backgroundReplacementURLDefault]];
      v10 = [AVCaptureProprietaryDefaultsSingleton imageForKey:self->_backgroundReplacementURLBookmarkKey fillWidth:v5 fillHeight:v4];
      if (!v10)
      {
        return v10;
      }
    }

    if (!holdingStateLock)
    {
      os_unfair_lock_lock(&self->_stateLock);
    }

    v12 = self->_backgroundReplacementPixelBuffer;
    self->_backgroundReplacementPixelBuffer = v10;
    CFRetain(v10);
    if (v12)
    {
      CFRelease(v12);
    }

    self->_backgroundReplacementPixelBufferFillWidth = v5;
    self->_backgroundReplacementPixelBufferFillHeight = v4;
    if (!holdingStateLock)
    {
      os_unfair_lock_unlock(&self->_stateLock);
    }
  }

  return v10;
}

- (float)effectIntensityForVideoEffect:(id)a3
{
  if ([a3 isEqualToString:@"AVControlCenterVideoEffectBackgroundBlur"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"AVControlCenterVideoEffectStudioLighting"))
  {
    holdingStateLock = self->_holdingStateLock;
    if (!holdingStateLock)
    {
      os_unfair_lock_lock(&self->_stateLock);
    }

    if ([a3 isEqualToString:@"AVControlCenterVideoEffectBackgroundBlur"])
    {
      v6 = 128;
    }

    else
    {
      v7 = 0.0;
      if (![a3 isEqualToString:@"AVControlCenterVideoEffectStudioLighting"])
      {
        goto LABEL_10;
      }

      v6 = 192;
    }

    v7 = *(&self->super.isa + v6);
LABEL_10:
    if (!holdingStateLock)
    {
      os_unfair_lock_unlock(&self->_stateLock);
    }

    return v7;
  }

  v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v8);
  }

  NSLog(&cfstr_SuppressingExc.isa, v8);
  return 0.0;
}

- (BOOL)setEffectIntensityForVideoEffect:(float)a3 forVideoEffect:(id)a4
{
  if (([a4 isEqualToString:@"AVControlCenterVideoEffectBackgroundBlur"] & 1) == 0 && (objc_msgSend(a4, "isEqualToString:", @"AVControlCenterVideoEffectStudioLighting") & 1) == 0)
  {
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v14);
    }

    NSLog(&cfstr_SuppressingExc.isa, v14);
    return 0;
  }

  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
    self->_holdingStateLock = 1;
  }

  if (![a4 isEqualToString:@"AVControlCenterVideoEffectBackgroundBlur"])
  {
    if (![a4 isEqualToString:@"AVControlCenterVideoEffectStudioLighting"])
    {
      v15 = 0;
      if (holdingStateLock)
      {
        return v15;
      }

      goto LABEL_25;
    }

    if (a3 < 0.0 || a3 > 1.0)
    {
      v11 = MEMORY[0x1E695DF30];
      v12 = *MEMORY[0x1E695D940];
      goto LABEL_18;
    }

    v13 = 200;
LABEL_24:
    *&v9 = a3;
    +[AVCaptureProprietaryDefaultsSingleton setObject:forKey:](AVCaptureProprietaryDefaultsSingleton, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithFloat:v9], *(&self->super.isa + v13));
    v15 = 1;
    if (holdingStateLock)
    {
      return v15;
    }

LABEL_25:
    os_unfair_lock_unlock(&self->_stateLock);
    self->_holdingStateLock = 0;
    return v15;
  }

  +[AVCaptureDevice backgroundBlurApertureRange];
  if (v8 <= a3)
  {
    +[AVCaptureDevice backgroundBlurApertureRange];
    if (v10 >= a3)
    {
      v13 = 136;
      goto LABEL_24;
    }
  }

  v11 = MEMORY[0x1E695DF30];
  v12 = *MEMORY[0x1E695D940];
LABEL_18:
  v16 = [v11 exceptionWithName:v12 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (!holdingStateLock)
  {
    os_unfair_lock_unlock(&self->_stateLock);
    self->_holdingStateLock = 0;
  }

  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v16);
  }

  NSLog(&cfstr_SuppressingExc.isa, v16);
  return 0;
}

- (AudioValueRange)effectIntensityRangeForVideoEffect:(id)a3
{
  if ([a3 isEqualToString:@"AVControlCenterVideoEffectBackgroundBlur"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"AVControlCenterVideoEffectStudioLighting"))
  {
    if ([a3 isEqualToString:@"AVControlCenterVideoEffectBackgroundBlur"])
    {
      +[AVCaptureDevice backgroundBlurApertureRange];
    }

    else
    {
      v6 = [a3 isEqualToString:@"AVControlCenterVideoEffectStudioLighting"];
      v4 = 0.0;
      v5 = 1.0;
      if (!v6)
      {
        v5 = 0.0;
      }
    }
  }

  else
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v7);
    }

    NSLog(&cfstr_SuppressingExc.isa, v7);
    v5 = 0.0;
    v4 = 0.0;
  }

  result.mMaximum = v5;
  result.mMinimum = v4;
  return result;
}

- (float)effectIntensityDefaultForVideoEffect:(id)a3
{
  if (([a3 isEqualToString:@"AVControlCenterVideoEffectBackgroundBlur"] & 1) == 0 && (objc_msgSend(a3, "isEqualToString:", @"AVControlCenterVideoEffectStudioLighting") & 1) == 0)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
    return 0.0;
  }

  if ([a3 isEqualToString:@"AVControlCenterVideoEffectBackgroundBlur"])
  {

    +[AVCaptureDevice backgroundBlurApertureDefault];
    return result;
  }

  if (![a3 isEqualToString:@"AVControlCenterVideoEffectStudioLighting"])
  {
    return 0.0;
  }

  +[AVCaptureDevice studioLightingIntensityDefault];
  return result;
}

- (void)enableBlackenFrames:(BOOL)a3 forDeviceUID:(id)a4
{
  v4 = a3;
  v5 = AVControlCenterBlackenFramesPreferenceKey(self->_bundleID, a4);
  if (v4)
  {
    v6 = MEMORY[0x1E695E118];
  }

  else
  {
    v6 = 0;
  }

  [AVCaptureProprietaryDefaultsSingleton setObject:v6 forKey:v5];
}

- (id)supportedMicrophoneModes
{
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
  }

  if ([(AVControlCenterModuleState *)self micModesSupported])
  {
    v4 = [MEMORY[0x1E695DEC8] arrayWithArray:self->_supportedMicrophoneModes];
    if (holdingStateLock)
    {
      return v4;
    }

    goto LABEL_7;
  }

  v4 = MEMORY[0x1E695E0F0];
  if (!holdingStateLock)
  {
LABEL_7:
    os_unfair_lock_unlock(&self->_stateLock);
  }

  return v4;
}

- (id)hiddenMicrophoneModes
{
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
  }

  if (!self->_hiddenMicrophoneModes)
  {
    v4 = MEMORY[0x1E695E0F0];
    if (holdingStateLock)
    {
      return v4;
    }

    goto LABEL_5;
  }

  v4 = [MEMORY[0x1E695DEC8] arrayWithArray:?];
  if (!holdingStateLock)
  {
LABEL_5:
    os_unfair_lock_unlock(&self->_stateLock);
  }

  return v4;
}

- (int64_t)microphoneMode
{
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
  }

  if ([(AVControlCenterModuleState *)self micModesSupported])
  {
    microphoneMode = self->_microphoneMode;
    if (holdingStateLock)
    {
      return microphoneMode;
    }

    goto LABEL_7;
  }

  microphoneMode = 0;
  if (!holdingStateLock)
  {
LABEL_7:
    os_unfair_lock_unlock(&self->_stateLock);
  }

  return microphoneMode;
}

- (BOOL)setMicrophoneMode:(int64_t)a3
{
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
    self->_holdingStateLock = 1;
  }

  LODWORD(v6) = [(AVControlCenterModuleState *)self micModesSupported];
  if (v6)
  {
    v7 = -[NSArray containsObject:](self->_supportedMicrophoneModes, "containsObject:", [MEMORY[0x1E696AD98] numberWithInteger:a3]);
    if (a3 && !v7)
    {
      v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
      if (!holdingStateLock)
      {
        os_unfair_lock_unlock(&self->_stateLock);
        self->_holdingStateLock = 0;
      }

      if (AVCaptureShouldThrowForAPIViolations())
      {
        objc_exception_throw(v6);
      }

      NSLog(&cfstr_SuppressingExc.isa, v6);
      LOBYTE(v6) = 0;
      return v6;
    }

    +[AVCaptureProprietaryDefaultsSingleton setObject:forKey:](AVCaptureProprietaryDefaultsSingleton, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithInteger:a3], self->_microphoneModeKey);
  }

  if (!holdingStateLock)
  {
    os_unfair_lock_unlock(&self->_stateLock);
    self->_holdingStateLock = 0;
  }

  return v6;
}

- (int64_t)activeMicrophoneMode
{
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
  }

  activeMicrophoneMode = self->_activeMicrophoneMode;
  if (activeMicrophoneMode <= 0)
  {
    if (activeMicrophoneMode == -1)
    {
      activeMicrophoneMode = self->_microphoneMode;
      if (holdingStateLock)
      {
        return activeMicrophoneMode;
      }

      goto LABEL_7;
    }

    activeMicrophoneMode = 0;
  }

  if (!holdingStateLock)
  {
LABEL_7:
    os_unfair_lock_unlock(&self->_stateLock);
  }

  return activeMicrophoneMode;
}

- (BOOL)voiceProcessingBypassed
{
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
  }

  if ([(AVControlCenterModuleState *)self micModesSupported])
  {
    auVoiceIOBypassVoiceProcessing = self->_auVoiceIOBypassVoiceProcessing;
    if (holdingStateLock)
    {
      return auVoiceIOBypassVoiceProcessing;
    }

    goto LABEL_7;
  }

  auVoiceIOBypassVoiceProcessing = 0;
  if (!holdingStateLock)
  {
LABEL_7:
    os_unfair_lock_unlock(&self->_stateLock);
  }

  return auVoiceIOBypassVoiceProcessing;
}

- (BOOL)isAutoMicrophoneModeEnabled
{
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
  }

  if ([(AVControlCenterModuleState *)self isAutoMicrophoneModeSupported])
  {
    autoMicModeEnabled = self->_autoMicModeEnabled;
    if (holdingStateLock)
    {
      return autoMicModeEnabled;
    }

    goto LABEL_7;
  }

  autoMicModeEnabled = 0;
  if (!holdingStateLock)
  {
LABEL_7:
    os_unfair_lock_unlock(&self->_stateLock);
  }

  return autoMicModeEnabled;
}

- (BOOL)setAutoMicrophoneModeEnabled:(BOOL)a3
{
  v3 = a3;
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
    self->_holdingStateLock = 1;
  }

  v6 = [(AVControlCenterModuleState *)self isAutoMicrophoneModeSupported];
  if (v6)
  {
    +[AVCaptureProprietaryDefaultsSingleton setObject:forKey:](AVCaptureProprietaryDefaultsSingleton, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithBool:v3], self->_autoMicModeEnabledKey);
  }

  if (!holdingStateLock)
  {
    os_unfair_lock_unlock(&self->_stateLock);
    self->_holdingStateLock = 0;
  }

  return v6;
}

- (void)startPanningAtPoint:(CGPoint)a3
{
  DictionaryRepresentation = CGPointCreateDictionaryRepresentation(a3);
  [AVCaptureProprietaryDefaultsSingleton setObject:DictionaryRepresentation forKey:self->_startPanningAtPointKey];

  CFRelease(DictionaryRepresentation);
}

- (void)panWithTranslation:(CGPoint)a3
{
  DictionaryRepresentation = CGPointCreateDictionaryRepresentation(a3);
  [AVCaptureProprietaryDefaultsSingleton setObject:DictionaryRepresentation forKey:self->_panWithTranslationKey];

  CFRelease(DictionaryRepresentation);
}

- (void)setManualFramingOriginalZoomFactor:(double)a3 convertedZoomFactor:(double)a4
{
  v14[0] = AVControlCenterManualFramingOriginalVideoZoomFactor;
  v15[0] = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v14[1] = AVControlCenterManualFramingConvertedVideoZoomFactor;
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  v14[2] = AVControlCenterManualFramingUpdateSettingEntity;
  v15[1] = v7;
  v15[2] = @"ControlCenterModules";
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
  if (dword_1ED8068A0)
  {
    v13 = 0;
    v12 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(AVControlCenterModuleState *)self _checkManualFramingDefaultStateWithNewOriginalZoomFactor:a3, v10, v11];
  [AVCaptureProprietaryDefaultsSingleton setObject:v8 forKey:self->_manualFramingVideoZoomFactorKey];
}

- (double)manualFramingOriginalVideoZoomFactor
{
  v3 = [AVCaptureProprietaryDefaultsSingleton objectForKey:self->_manualFramingVideoZoomFactorKey];
  if (v3 && (v4 = v3, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v4 objectForKeyedSubscript:AVControlCenterManualFramingOriginalVideoZoomFactor];
    v6 = [v4 objectForKeyedSubscript:AVControlCenterManualFramingConvertedVideoZoomFactor];
    if (v5)
    {
      [v5 floatValue];
      v8 = v7;
    }

    else
    {
      v13 = v6;
      v14 = [(AVControlCenterModuleState *)self manualFramingDeviceType];
      [v13 floatValue];
      v16 = v15;
      if (v14 == 2)
      {
        v8 = v16 * 0.5;
      }

      else
      {
        v8 = v16;
      }
    }

    [(AVControlCenterModuleState *)self _defaultOriginalVideoZoomFactor];
    v10 = v17;
    if (vabdd_f64(v8, v17) >= 0.00999999978)
    {
      v10 = v8;
    }

    else
    {
      if (!dword_1ED8068A0)
      {
        return v10;
      }

      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    [(AVControlCenterModuleState *)self _defaultOriginalVideoZoomFactor];
    v10 = v9;
  }

  if (dword_1ED8068A0)
  {
    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v10;
}

- (BOOL)manualFramingEnabledForDevice:(id)a3
{
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
  }

  if ([a3 isCenterStageActive])
  {
    centerStageSupported = 0;
    if (holdingStateLock)
    {
      return centerStageSupported;
    }

    goto LABEL_7;
  }

  centerStageSupported = self->_centerStageSupported;
  if (!holdingStateLock)
  {
LABEL_7:
    os_unfair_lock_unlock(&self->_stateLock);
  }

  return centerStageSupported;
}

- (BOOL)manualFramingIsAtDefault
{
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
    self->_holdingStateLock = 1;
  }

  v4 = [AVCaptureProprietaryDefaultsSingleton objectForKey:self->_panningAnglesKey];
  [(AVControlCenterModuleState *)self manualFramingOriginalVideoZoomFactor];
  v6 = v5;
  [(AVControlCenterModuleState *)self _defaultOriginalVideoZoomFactor];
  v8 = v7;
  if (!holdingStateLock)
  {
    os_unfair_lock_unlock(&self->_stateLock);
    self->_holdingStateLock = 0;
  }

  v11.x = 0.0;
  v11.y = 0.0;
  v9 = CGPointMakeWithDictionaryRepresentation(v4, &v11);
  if (v9)
  {
    LOBYTE(v9) = 0;
    if (fabs(v11.x) < 0.00999999978 && fabs(v11.y) < 0.00999999978)
    {
      LOBYTE(v9) = vabdd_f64(v6, v8) < 0.00999999978;
    }
  }

  return v9;
}

- (void)setCenterStageFieldOfViewRestrictedToWide:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{a3, AVControlCenterCenterStageFieldOfViewRestrictedToWide}];
  v5[1] = AVControlCenterManualFramingUpdateSettingEntity;
  v6[0] = v4;
  v6[1] = @"ControlCenterModules";
  +[AVCaptureProprietaryDefaultsSingleton setObject:forKey:](AVCaptureProprietaryDefaultsSingleton, "setObject:forKey:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2], self->_centerStageFieldOfViewRestrictedToWideKey);
}

- (BOOL)centerStageFieldOfViewRestrictedToWide
{
  v2 = [AVCaptureProprietaryDefaultsSingleton objectForKey:self->_centerStageFieldOfViewRestrictedToWideKey];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v4 = [v3 objectForKeyedSubscript:AVControlCenterCenterStageFieldOfViewRestrictedToWide];

  return [v4 BOOLValue];
}

- (void)setManualFramingDeviceType:(int64_t)a3
{
  if (self->_holdingStateLock)
  {
    +[AVCaptureProprietaryDefaultsSingleton setObject:forKey:](AVCaptureProprietaryDefaultsSingleton, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithInteger:a3], self->_manualFramingDeviceTypeKey);
    self->_manualFramingDeviceType = a3;
  }

  else
  {
    os_unfair_lock_lock(&self->_stateLock);
    self->_holdingStateLock = 1;
    +[AVCaptureProprietaryDefaultsSingleton setObject:forKey:](AVCaptureProprietaryDefaultsSingleton, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithInteger:a3], self->_manualFramingDeviceTypeKey);
    self->_manualFramingDeviceType = a3;
    os_unfair_lock_unlock(&self->_stateLock);
    self->_holdingStateLock = 0;
  }
}

- (double)_defaultOriginalVideoZoomFactor
{
  v3 = [(AVControlCenterModuleState *)self manualFramingDeviceType];
  v4 = [(AVControlCenterModuleState *)self zoomFactorConstantsByManualFramingDeviceType];
  v5 = -[NSDictionary objectForKeyedSubscript:](v4, "objectForKeyedSubscript:", [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", v3]);
  [objc_msgSend(v5 objectForKeyedSubscript:{*MEMORY[0x1E698F868]), "floatValue"}];
  result = v6;
  if (v3 == 2)
  {
    return result * 0.5;
  }

  return result;
}

- (void)_proprietaryDefaultChanged:(id)a3 keyPath:(id)a4 context:(void *)a5
{
  v6 = a3;
  if (dword_1ED8068A0)
  {
    v145 = 0;
    v144 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
  }

  if (AVCCM_AUVoiceIOBypassVoiceProcessingChangedContext == a5)
  {
    v13 = [(AVControlCenterModuleState *)self micModesSupported:a3];
    if (v6)
    {
      LODWORD(v6) = [(NSURL *)v6 BOOLValue];
    }

    v11 = 0;
    if (holdingStateLock)
    {
      v12 = 0;
    }

    else
    {
      v14 = !v13;
      v12 = 0;
      if (!v14)
      {
        if (self->_auVoiceIOBypassVoiceProcessing == v6)
        {
          v11 = 0;
          v12 = 0;
        }

        else
        {
          v135 = @"AVControlCenterModulesNotificationBundleIdentifierKey";
          bundleID = self->_bundleID;
          v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&bundleID forKeys:&v135 count:1];
          v12 = @"AVControlCenterMicrophoneModesModuleVoiceProcessingBypassedDidChangeNotification";
        }
      }
    }

    self->_auVoiceIOBypassVoiceProcessing = v6;
    goto LABEL_132;
  }

  if (AVCCM_AUVoiceIOChatFlavorChangedContext == a5)
  {
    v15 = [(AVControlCenterModuleState *)self micModesSupported:a3];
    if (v6)
    {
      v6 = [(NSURL *)v6 integerValue];
    }

    v11 = 0;
    if (holdingStateLock)
    {
      v12 = 0;
    }

    else
    {
      v16 = !v15;
      v12 = 0;
      if (!v16)
      {
        if (v6 == self->_microphoneMode)
        {
          v11 = 0;
          v12 = 0;
        }

        else
        {
          v133 = @"AVControlCenterModulesNotificationBundleIdentifierKey";
          v134 = self->_bundleID;
          v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v134 forKeys:&v133 count:1];
          v12 = @"AVControlCenterMicrophoneModesModuleMicrophoneModeDidChangeNotification";
        }
      }
    }

    self->_microphoneMode = v6;
    goto LABEL_132;
  }

  if (AVCCM_AUVoiceIOActiveChatFlavorChangedContext == a5)
  {
    v17 = [(AVControlCenterModuleState *)self micModesSupported:a3];
    if (v6)
    {
      v18 = [(NSURL *)v6 integerValue];
    }

    else
    {
      v18 = -1;
    }

    v11 = 0;
    if (holdingStateLock)
    {
      v12 = 0;
    }

    else
    {
      v24 = !v17;
      v12 = 0;
      if (!v24)
      {
        if (v18 == self->_activeMicrophoneMode)
        {
          v11 = 0;
          v12 = 0;
        }

        else
        {
          v131 = @"AVControlCenterModulesNotificationBundleIdentifierKey";
          v132 = self->_bundleID;
          v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v132 forKeys:&v131 count:1];
          v12 = @"AVControlCenterMicrophoneModesModuleActiveMicrophoneModeDidChangeNotification";
        }
      }
    }

    self->_activeMicrophoneMode = v18;
    goto LABEL_132;
  }

  if (AVCCM_AUVoiceIOSupportedChatFlavorsChangedContext == a5)
  {
    if (!v6)
    {
      v6 = AVControlCenterAudioDefaultSupportedMicrophoneModesForBundleID(self->_bundleID);
      if (dword_1ED8068A0)
      {
        v145 = 0;
        v144 = OS_LOG_TYPE_DEFAULT;
        v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v20 = v145;
        if (os_log_type_enabled(v19, v144))
        {
          v21 = v20;
        }

        else
        {
          v21 = v20 & 0xFFFFFFFE;
        }

        if (v21)
        {
          v22 = self->_bundleID;
          v137 = 136315650;
          v138 = "[AVControlCenterModuleState _proprietaryDefaultChanged:keyPath:context:]";
          v139 = 2112;
          v140 = v22;
          v141 = 2112;
          *v142 = v6;
          LODWORD(v88) = 32;
          v87 = &v137;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    v34 = [(AVControlCenterModuleState *)self micModesSupported:a3];
    v11 = 0;
    v12 = 0;
    if (!holdingStateLock && v34)
    {
      if (([(NSURL *)v6 isEqual:self->_supportedMicrophoneModes]& 1) != 0)
      {
        v11 = 0;
        v12 = 0;
      }

      else
      {
        v129 = @"AVControlCenterModulesNotificationBundleIdentifierKey";
        v130 = self->_bundleID;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v130 forKeys:&v129 count:1];
        v12 = @"AVControlCenterMicrophoneModesModuleSupportedMicrophoneModesDidChangeNotification";
      }
    }

    self->_supportedMicrophoneModes = v6;
    goto LABEL_132;
  }

  if (AVCCM_AUVoiceIOHiddenChatFlavorsChangedContext == a5)
  {
    if (!v6)
    {
      v6 = MEMORY[0x1E695E0F0];
    }

    if (holdingStateLock || (hiddenMicrophoneModes = self->_hiddenMicrophoneModes) == 0 || ([(NSURL *)v6 isEqual:hiddenMicrophoneModes, a4]& 1) != 0)
    {
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v127 = @"AVControlCenterModulesNotificationBundleIdentifierKey";
      v128 = self->_bundleID;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v128 forKeys:&v127 count:1];
      v12 = @"AVControlCenterMicrophoneModesModuleHiddenMicrophoneModesDidChangeNotification";
    }

    self->_hiddenMicrophoneModes = v6;
    goto LABEL_132;
  }

  if (AVCCM_AUVoiceIOAutoEnabledChangedContext == a5)
  {
    if (v6)
    {
      IsAutoMicrophoneEnabledForBundleIDAndMicMode = [(NSURL *)v6 BOOLValue:a3];
    }

    else
    {
      IsAutoMicrophoneEnabledForBundleIDAndMicMode = AVControlCenterAudioDefaultIsAutoMicrophoneEnabledForBundleIDAndMicMode(self->_bundleID, self->_microphoneMode);
      if (dword_1ED8068A0)
      {
        v145 = 0;
        v144 = OS_LOG_TYPE_DEFAULT;
        v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v28 = v145;
        if (os_log_type_enabled(v27, v144))
        {
          v29 = v28;
        }

        else
        {
          v29 = v28 & 0xFFFFFFFE;
        }

        if (v29)
        {
          v30 = self->_bundleID;
          microphoneMode = self->_microphoneMode;
          v32 = "no";
          if (IsAutoMicrophoneEnabledForBundleIDAndMicMode)
          {
            v32 = "yes";
          }

          v137 = 136315906;
          v138 = "[AVControlCenterModuleState _proprietaryDefaultChanged:keyPath:context:]";
          v139 = 2112;
          v140 = v30;
          v141 = 1024;
          *v142 = microphoneMode;
          *&v142[4] = 2080;
          *&v142[6] = v32;
          LODWORD(v88) = 38;
          v87 = &v137;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    v41 = [(AVControlCenterModuleState *)self isAutoMicrophoneModeSupported:v87];
    if (holdingStateLock || !v41 || self->_autoMicModeEnabled == IsAutoMicrophoneEnabledForBundleIDAndMicMode)
    {
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v125 = @"AVControlCenterModulesNotificationBundleIdentifierKey";
      v126 = self->_bundleID;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v126 forKeys:&v125 count:1];
      v12 = @"AVControlCenterMicrophoneModesModuleAutoEnabledDidChangeNotification";
    }

    self->_autoMicModeEnabled = IsAutoMicrophoneEnabledForBundleIDAndMicMode;
    goto LABEL_132;
  }

  if (AVCCM_CenterStageControlModeChangedContext == a5)
  {
    if (v6)
    {
      v6 = [(NSURL *)v6 integerValue:a3];
    }

    if (holdingStateLock || v6 == self->_centerStageControlMode)
    {
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v123[0] = @"AVControlCenterModulesNotificationVideoEffectKey";
      v123[1] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
      v35 = self->_bundleID;
      v124[0] = @"AVControlCenterVideoEffectCenterStage";
      v124[1] = v35;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v124 forKeys:v123 count:2];
      v12 = @"AVControlCenterVideoEffectsModuleEffectControlModeDidChangeNotification";
    }

    self->_centerStageControlMode = v6;
    goto LABEL_132;
  }

  if (AVCCM_CenterStageEnabledChangedContext == a5)
  {
    if (v6)
    {
      v26 = [(NSURL *)v6 BOOLValue:a3];
    }

    else
    {
      v26 = [AVCaptureDevice defaultCenterStageEnabledForBundleID:self->_bundleID, a4];
    }

    v36 = v26;
    if (holdingStateLock || self->_centerStageEnabled == v26)
    {
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v121[0] = @"AVControlCenterModulesNotificationVideoEffectKey";
      v121[1] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
      v37 = self->_bundleID;
      v122[0] = @"AVControlCenterVideoEffectCenterStage";
      v122[1] = v37;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v122 forKeys:v121 count:2];
      v12 = @"AVControlCenterVideoEffectsModuleEffectEnabledDidChangeNotification";
    }

    self->_centerStageEnabled = v36;
    goto LABEL_132;
  }

  if (AVCCM_CenterStageUnavailableReasonsChangedContext == a5)
  {
    if (v6)
    {
      v33 = [(NSURL *)v6 unsignedIntegerValue:a3];
    }

    else
    {
      v33 = 0;
    }

    v119[0] = @"AVControlCenterModulesNotificationCenterStageUnavailableReasonsKey";
    v119[1] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
    v120[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{v33, v87, v88}];
    v120[1] = self->_bundleID;
    v38 = MEMORY[0x1E695DF20];
    v39 = v120;
    v40 = v119;
    goto LABEL_124;
  }

  if (AVCCM_BackgroundBlurControlModeChangedContext == a5)
  {
    if (v6)
    {
      v6 = [(NSURL *)v6 integerValue:a3];
    }

    if (holdingStateLock || v6 == self->_backgroundBlurControlMode)
    {
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v117[0] = @"AVControlCenterModulesNotificationVideoEffectKey";
      v117[1] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
      v47 = self->_bundleID;
      v118[0] = @"AVControlCenterVideoEffectBackgroundBlur";
      v118[1] = v47;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v118 forKeys:v117 count:2];
      v12 = @"AVControlCenterVideoEffectsModuleEffectControlModeDidChangeNotification";
    }

    self->_backgroundBlurControlMode = v6;
    goto LABEL_132;
  }

  if (AVCCM_BackgroundBlurEnabledChangedContext == a5)
  {
    if (v6)
    {
      LODWORD(v6) = [(NSURL *)v6 BOOLValue:a3];
    }

    if (holdingStateLock || self->_backgroundBlurEnabled == v6)
    {
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v115[0] = @"AVControlCenterModulesNotificationVideoEffectKey";
      v115[1] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
      v49 = self->_bundleID;
      v116[0] = @"AVControlCenterVideoEffectBackgroundBlur";
      v116[1] = v49;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v116 forKeys:v115 count:2];
      v12 = @"AVControlCenterVideoEffectsModuleEffectEnabledDidChangeNotification";
    }

    self->_backgroundBlurEnabled = v6;
    goto LABEL_132;
  }

  if (AVCCM_BackgroundBlurUnavailableReasonsChangedContext == a5)
  {
    if (v6)
    {
      v46 = [(NSURL *)v6 unsignedIntegerValue:a3];
    }

    else
    {
      v46 = 0;
    }

    v113[0] = @"AVControlCenterModulesNotificationBackgroundBlurUnavailableReasonsKey";
    v113[1] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
    v114[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{v46, v87, v88}];
    v114[1] = self->_bundleID;
    v38 = MEMORY[0x1E695DF20];
    v39 = v114;
    v40 = v113;
    goto LABEL_124;
  }

  if (AVCCM_BackgroundBlurApertureChangedContext == a5)
  {
    if (v6)
    {
      [(NSURL *)v6 floatValue:a3];
    }

    else
    {
      [AVCaptureDevice backgroundBlurApertureDefault:a3];
    }

    v50 = v48;
    if (holdingStateLock || v48 == self->_backgroundBlurAperture)
    {
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v111[0] = @"AVControlCenterModulesNotificationVideoEffectKey";
      v111[1] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
      v51 = self->_bundleID;
      v112[0] = @"AVControlCenterVideoEffectBackgroundBlur";
      v112[1] = v51;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v112 forKeys:v111 count:2];
      v12 = @"AVControlCenterVideoEffectsModuleEffectIntensityDidChangeNotification";
    }

    self->_backgroundBlurAperture = v50;
    goto LABEL_132;
  }

  if (AVCCM_StudioLightingControlModeChangedContext == a5)
  {
    if (v6)
    {
      v6 = [(NSURL *)v6 integerValue:a3];
    }

    if (holdingStateLock || v6 == self->_studioLightingControlMode)
    {
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v109[0] = @"AVControlCenterModulesNotificationVideoEffectKey";
      v109[1] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
      v53 = self->_bundleID;
      v110[0] = @"AVControlCenterVideoEffectStudioLighting";
      v110[1] = v53;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v110 forKeys:v109 count:2];
      v12 = @"AVControlCenterVideoEffectsModuleEffectControlModeDidChangeNotification";
    }

    self->_studioLightingControlMode = v6;
    goto LABEL_132;
  }

  if (AVCCM_StudioLightingEnabledChangedContext == a5)
  {
    if (v6)
    {
      LODWORD(v6) = [(NSURL *)v6 BOOLValue:a3];
    }

    if (holdingStateLock || self->_studioLightingEnabled == v6)
    {
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v107[0] = @"AVControlCenterModulesNotificationVideoEffectKey";
      v107[1] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
      v55 = self->_bundleID;
      v108[0] = @"AVControlCenterVideoEffectStudioLighting";
      v108[1] = v55;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v108 forKeys:v107 count:2];
      v12 = @"AVControlCenterVideoEffectsModuleEffectEnabledDidChangeNotification";
    }

    self->_studioLightingEnabled = v6;
    goto LABEL_132;
  }

  if (AVCCM_StudioLightingUnavailableReasonsChangedContext == a5)
  {
    if (v6)
    {
      v52 = [(NSURL *)v6 unsignedIntegerValue:a3];
    }

    else
    {
      v52 = 0;
    }

    v105[0] = @"AVControlCenterModulesNotificationStudioLightingUnavailableReasonsKey";
    v105[1] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
    v106[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{v52, v87, v88}];
    v106[1] = self->_bundleID;
    v38 = MEMORY[0x1E695DF20];
    v39 = v106;
    v40 = v105;
    goto LABEL_124;
  }

  if (AVCCM_StudioLightingIntensityChangedContext == a5)
  {
    if (v6)
    {
      [(NSURL *)v6 floatValue:a3];
    }

    else
    {
      [AVCaptureDevice studioLightingIntensityDefault:a3];
    }

    v56 = v54;
    if (holdingStateLock || v54 == self->_studioLightingIntensity)
    {
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v103[0] = @"AVControlCenterModulesNotificationVideoEffectKey";
      v103[1] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
      v57 = self->_bundleID;
      v104[0] = @"AVControlCenterVideoEffectStudioLighting";
      v104[1] = v57;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v104 forKeys:v103 count:2];
      v12 = @"AVControlCenterVideoEffectsModuleEffectIntensityDidChangeNotification";
    }

    self->_studioLightingIntensity = v56;
    goto LABEL_132;
  }

  if (AVCCM_ManualFramingOneShotFramingCompletedContext == a5)
  {
    v12 = @"AVControlCenterManualFramingOneShotFramingDidCompleteNotification";
LABEL_183:
    v11 = MEMORY[0x1E695E0F8];
    goto LABEL_132;
  }

  if (AVCCM_ManualFramingResetFramingCompletedContext == a5)
  {
    v12 = @"AVControlCenterManualFramingResetFramingDidCompleteNotification";
    goto LABEL_183;
  }

  if (AVCCM_ReactionsEnabledChangedContext == a5)
  {
    if (v6)
    {
      isOptedInForReactionEffects = [(NSURL *)v6 BOOLValue:a3];
    }

    else
    {
      isOptedInForReactionEffects = self->_isOptedInForReactionEffects;
      v145 = 0;
      v144 = OS_LOG_TYPE_DEFAULT;
      v63 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v64 = v145;
      if (os_log_type_enabled(v63, v144))
      {
        v65 = v64;
      }

      else
      {
        v65 = v64 & 0xFFFFFFFE;
      }

      if (v65)
      {
        v66 = self->_bundleID;
        v137 = 136315650;
        v138 = "[AVControlCenterModuleState _proprietaryDefaultChanged:keyPath:context:]";
        v139 = 2112;
        v140 = v66;
        v141 = 1024;
        *v142 = isOptedInForReactionEffects;
        LODWORD(v88) = 28;
        v87 = &v137;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (holdingStateLock || self->_reactionsEnabled == isOptedInForReactionEffects)
    {
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v101[0] = @"AVControlCenterModulesNotificationVideoEffectKey";
      v101[1] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
      v75 = self->_bundleID;
      v102[0] = @"AVControlCenterVideoEffectReactions";
      v102[1] = v75;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v102 forKeys:v101 count:2];
      v12 = @"AVControlCenterVideoEffectsModuleEffectEnabledDidChangeNotification";
    }

    self->_reactionsEnabled = isOptedInForReactionEffects;
    goto LABEL_132;
  }

  if (AVCCM_GesturesEnabledChangedContext == a5)
  {
    if (v6)
    {
      if (dword_1ED8068A0)
      {
        v145 = 0;
        v144 = OS_LOG_TYPE_DEFAULT;
        v59 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v60 = v145;
        if (os_log_type_enabled(v59, v144))
        {
          v61 = v60;
        }

        else
        {
          v61 = v60 & 0xFFFFFFFE;
        }

        if (v61)
        {
          v137 = 136315394;
          v138 = "[AVControlCenterModuleState _proprietaryDefaultChanged:keyPath:context:]";
          v139 = 2112;
          v140 = v6;
          LODWORD(v88) = 22;
          v87 = &v137;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v67 = v6;
LABEL_232:
      v71 = [(NSURL *)v67 BOOLValue:v87];
      if (holdingStateLock)
      {
        goto LABEL_261;
      }

      goto LABEL_233;
    }

    v67 = [AVCaptureProprietaryDefaultsSingleton objectForKey:self->_gesturesEnabledDefaultKey, a4];
    if (v67)
    {
      goto LABEL_232;
    }

    v68 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:self->_bundleID allowPlaceholder:1 error:0];
    v69 = [v68 infoDictionary];
    v70 = [v69 objectForKey:AVCaptureBundleCameraReactionEffectGesturesEnabledDefaultKey ofClass:objc_opt_class()];
    if (v70)
    {
      v71 = [v70 BOOLValue];
      if (!dword_1ED8068A0)
      {
        goto LABEL_260;
      }

      v145 = 0;
      v144 = OS_LOG_TYPE_DEFAULT;
      v72 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v73 = v145;
      if (os_log_type_enabled(v72, v144))
      {
        v74 = v73;
      }

      else
      {
        v74 = v73 & 0xFFFFFFFE;
      }

      if (v74)
      {
        v137 = 136315394;
        v138 = "[AVControlCenterModuleState _proprietaryDefaultChanged:keyPath:context:]";
        v139 = 1024;
        LODWORD(v140) = v71;
        LODWORD(v88) = 18;
        v87 = &v137;
        _os_log_send_and_compose_impl();
      }
    }

    else
    {
      CFPreferenceBooleanWithDefault = FigGetCFPreferenceBooleanWithDefault();
      v71 = CFPreferenceBooleanWithDefault != 0;
      if (!dword_1ED8068A0)
      {
        goto LABEL_260;
      }

      v81 = CFPreferenceBooleanWithDefault;
      v145 = 0;
      v144 = OS_LOG_TYPE_DEFAULT;
      v82 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v83 = v145;
      if (os_log_type_enabled(v82, v144))
      {
        v84 = v83;
      }

      else
      {
        v84 = v83 & 0xFFFFFFFE;
      }

      if (v84)
      {
        v137 = 136315394;
        v138 = "[AVControlCenterModuleState _proprietaryDefaultChanged:keyPath:context:]";
        v139 = 1024;
        LODWORD(v140) = v81 != 0;
        LODWORD(v88) = 18;
        v87 = &v137;
        _os_log_send_and_compose_impl();
      }
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_260:

    if (holdingStateLock)
    {
      goto LABEL_261;
    }

LABEL_233:
    if (self->_gesturesEnabled != v71)
    {
      v99[0] = @"AVControlCenterModulesNotificationVideoEffectKey";
      v99[1] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
      v76 = self->_bundleID;
      v100[0] = @"AVControlCenterVideoEffectGestures";
      v100[1] = v76;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v100 forKeys:v99 count:2];
      v12 = @"AVControlCenterVideoEffectsModuleEffectEnabledDidChangeNotification";
LABEL_262:
      self->_gesturesEnabled = v71;
      goto LABEL_132;
    }

LABEL_261:
    v11 = 0;
    v12 = 0;
    goto LABEL_262;
  }

  if (AVCCM_ReactionsUnavailableReasonsChangedContext == a5)
  {
    if (v6)
    {
      v62 = [(NSURL *)v6 unsignedIntegerValue:a3];
    }

    else
    {
      v62 = 0;
    }

    v97[0] = @"AVControlCenterModulesNotificationReactionsUnavailableReasonsKey";
    v97[1] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
    v98[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{v62, v87, v88}];
    v98[1] = self->_bundleID;
    v38 = MEMORY[0x1E695DF20];
    v39 = v98;
    v40 = v97;
    goto LABEL_124;
  }

  v10 = a5;
  if (AVCCM_ReactionEffectTriggeredContext == a5)
  {
    v12 = @"AVControlCenterVideoEffectsReactionWasRequestedNotification";
LABEL_216:
    v11 = v6;
    goto LABEL_132;
  }

  if (AVCCM_ReactionEffectsInProgressChangedContext == a5)
  {
    v12 = @"AVControlCenterVideoEffectsReactionsInProgressDidChangeNotification";
    goto LABEL_216;
  }

  if (AVCCM_BackgroundReplacementEnabledChangedContext != a5)
  {
    if (AVCCM_BackgroundReplacementUnavailableReasonsChangedContext != a5)
    {
      if (AVCCM_BackgroundReplacementURLChangedContext == a5)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (v6 && (isKindOfClass & 1) == 0)
        {
          [AVControlCenterModuleState _proprietaryDefaultChanged:keyPath:context:];
        }

        if (v6)
        {
          v143[0] = 0;
          v6 = [MEMORY[0x1E695DFF8] URLByResolvingBookmarkData:v6 options:256 relativeToURL:0 bookmarkDataIsStale:0 error:v143];
        }

        if (holdingStateLock || v6 == self->_backgroundReplacementURL || ([(NSURL *)v6 isEqual:?]& 1) != 0)
        {
          v11 = 0;
          v12 = 0;
        }

        else
        {
          v91[0] = @"AVControlCenterModulesNotificationVideoEffectKey";
          v91[1] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
          v86 = self->_bundleID;
          v92[0] = @"AVControlCenterVideoEffectBackgroundReplacement";
          v92[1] = v86;
          v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v92 forKeys:v91 count:2];
          v12 = @"AVControlCenterVideoEffectsBackgroundReplacementURLDidChangeNotification";
        }

        self->_backgroundReplacementURL = v6;
        backgroundReplacementPixelBuffer = self->_backgroundReplacementPixelBuffer;
        if (backgroundReplacementPixelBuffer)
        {
          CFRelease(backgroundReplacementPixelBuffer);
          self->_backgroundReplacementPixelBuffer = 0;
        }

        *&self->_backgroundReplacementPixelBufferFillWidth = 0;
      }

      else
      {
        v11 = 0;
        if (v6)
        {
          v12 = 0;
          if (AVCCM_DockedTrackingActiveChangedContext == v10)
          {
            v89 = @"dockedTrackingActive";
            v90 = v6;
            v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
            v12 = @"AVControlCenterDockedTrackingActiveDidChangeNotification";
          }
        }

        else
        {
          v12 = 0;
        }
      }

      goto LABEL_132;
    }

    if (v6)
    {
      v77 = [(NSURL *)v6 unsignedIntegerValue:a3];
    }

    else
    {
      v77 = 0;
    }

    v93[0] = @"AVControlCenterModulesNotificationBackgroundReplacementUnavailableReasonsKey";
    v93[1] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
    v94[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{v77, v87, v88}];
    v94[1] = self->_bundleID;
    v38 = MEMORY[0x1E695DF20];
    v39 = v94;
    v40 = v93;
LABEL_124:
    v11 = [v38 dictionaryWithObjects:v39 forKeys:v40 count:2];
    v12 = @"AVControlCenterVideoEffectsUnavailableReasonsDidChangeNotification";
    goto LABEL_132;
  }

  if (v6)
  {
    LODWORD(v6) = [(NSURL *)v6 BOOLValue:a3];
  }

  if (holdingStateLock || self->_backgroundReplacementEnabled == v6)
  {
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v95[0] = @"AVControlCenterModulesNotificationVideoEffectKey";
    v95[1] = @"AVControlCenterModulesNotificationBundleIdentifierKey";
    v85 = self->_bundleID;
    v96[0] = @"AVControlCenterVideoEffectBackgroundReplacement";
    v96[1] = v85;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v96 forKeys:v95 count:2];
    v12 = @"AVControlCenterVideoEffectsModuleEffectEnabledDidChangeNotification";
  }

  self->_backgroundReplacementEnabled = v6;
LABEL_132:
  if (!holdingStateLock)
  {
    os_unfair_lock_unlock(&self->_stateLock);
  }

  if (v12 && v11)
  {
    if (dword_1ED8068A0)
    {
      v145 = 0;
      v144 = OS_LOG_TYPE_DEFAULT;
      v42 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v43 = v145;
      if (os_log_type_enabled(v42, v144))
      {
        v44 = v43;
      }

      else
      {
        v44 = v43 & 0xFFFFFFFE;
      }

      if (v44)
      {
        v45 = self->_bundleID;
        v137 = 136315907;
        v138 = "[AVControlCenterModuleState _proprietaryDefaultChanged:keyPath:context:]";
        v139 = 2113;
        v140 = v45;
        v141 = 2112;
        *v142 = v12;
        *&v142[8] = 2112;
        *&v142[10] = v11;
        LODWORD(v88) = 42;
        v87 = &v137;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
  }
}

- (void)_handlePanningAnglesUpdate:(id)a3
{
  point.x = 0.0;
  point.y = 0.0;
  CGPointMakeWithDictionaryRepresentation(a3, &point);
  if (dword_1ED8068A0)
  {
    v43 = 0;
    v42 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
  }

  [(AVControlCenterModuleState *)self _defaultOriginalVideoZoomFactor:v24];
  v7 = v6;
  currentOriginalZoomFactor = self->_currentOriginalZoomFactor;
  currentPanningAngleX = self->_currentPanningAngleX;
  currentPanningAngleY = self->_currentPanningAngleY;
  *&self->_currentPanningAngleX = point;
  if (!holdingStateLock)
  {
    os_unfair_lock_unlock(&self->_stateLock);
  }

  v11 = 0;
  v12 = currentOriginalZoomFactor;
  if (fabs(currentPanningAngleX) < 0.00999999978 && fabs(currentPanningAngleY) < 0.00999999978)
  {
    v11 = vabdd_f64(v12, v7) < 0.00999999978;
  }

  v13 = fabs(point.x) >= 0.00999999978;
  if (fabs(point.y) >= 0.00999999978)
  {
    v13 = 1;
  }

  if (v11 && v13)
  {
    if (dword_1ED8068A0)
    {
      v43 = 0;
      v42 = OS_LOG_TYPE_DEFAULT;
      v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v15 = v43;
      if (os_log_type_enabled(v14, v42))
      {
        v16 = v15;
      }

      else
      {
        v16 = v15 & 0xFFFFFFFE;
      }

      if (v16)
      {
        v32 = 136316162;
        v33 = "[AVControlCenterModuleState _handlePanningAnglesUpdate:]";
        v34 = 2048;
        v35 = currentPanningAngleX;
        v36 = 2048;
        v37 = currentPanningAngleY;
        v38 = 2048;
        x = point.x;
        v40 = 2048;
        y = point.y;
        LODWORD(v27) = 52;
        v25 = &v32;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v30 = @"isAtDefault";
    v31 = MEMORY[0x1E695E110];
    v20 = MEMORY[0x1E695DF20];
    v21 = &v31;
    v22 = &v30;
LABEL_33:
    v23 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:{1, v12, v25, v27, v28, v29, v30, v31}];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    return;
  }

  v12 = vabdd_f64(v12, v7);
  if (v12 >= 0.00999999978)
  {
    v11 = 1;
  }

  if (!v11 && !v13)
  {
    if (dword_1ED8068A0)
    {
      v43 = 0;
      v42 = OS_LOG_TYPE_DEFAULT;
      v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v18 = v43;
      if (os_log_type_enabled(v17, v42))
      {
        v19 = v18;
      }

      else
      {
        v19 = v18 & 0xFFFFFFFE;
      }

      if (v19)
      {
        v32 = 136316162;
        v33 = "[AVControlCenterModuleState _handlePanningAnglesUpdate:]";
        v34 = 2048;
        v35 = currentPanningAngleX;
        v36 = 2048;
        v37 = currentPanningAngleY;
        v38 = 2048;
        x = point.x;
        v40 = 2048;
        y = point.y;
        LODWORD(v27) = 52;
        v25 = &v32;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v28 = @"isAtDefault";
    v29 = MEMORY[0x1E695E118];
    v20 = MEMORY[0x1E695DF20];
    v21 = &v29;
    v22 = &v28;
    goto LABEL_33;
  }
}

- (void)_handleBackPropagatedVideoZoomFactorUpdate:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:AVControlCenterManualFramingConvertedVideoZoomFactor];
  v5 = [(AVControlCenterModuleState *)self manualFramingDeviceType];
  [v4 floatValue];
  v7 = v6;
  if (v5 == 2)
  {
    v8 = v7 * 0.5;
  }

  else
  {
    v8 = v7;
  }

  [(AVControlCenterModuleState *)self _defaultOriginalVideoZoomFactor];
  *&v9 = v9;
  v10 = *&v9;
  if (vabdd_f64(v8, *&v9) >= 0.00999999978)
  {
    v10 = v8;
  }

  else
  {
    if (!dword_1ED8068A0)
    {
      goto LABEL_17;
    }

    v31 = 0;
    v30 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (dword_1ED8068A0)
  {
    v31 = 0;
    v30 = OS_LOG_TYPE_DEFAULT;
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v13 = v31;
    if (os_log_type_enabled(v12, v30))
    {
      v14 = v13;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFE;
    }

    if (v14)
    {
      [v4 floatValue];
      v15 = @"NO";
      v23 = "[AVControlCenterModuleState _handleBackPropagatedVideoZoomFactorUpdate:]";
      v22 = 136315906;
      v26 = 2112;
      v24 = 2048;
      v25 = v16;
      if (v5 == 2)
      {
        v15 = @"YES";
      }

      v27 = v15;
      v28 = 2048;
      v29 = v10;
      LODWORD(v19) = 42;
      v18 = &v22;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_17:
  v17 = [MEMORY[0x1E696AD88] defaultCenter];
  v20 = @"videoZoomFactor";
  v21 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
  [v17 postNotificationName:@"AVControlCenterManualFramingVideoZoomFactorDidChangeNotification" object:0 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v21, &v20, 1)}];
  [(AVControlCenterModuleState *)self _checkManualFramingDefaultStateWithNewOriginalZoomFactor:v10];
}

- (void)_checkManualFramingDefaultStateWithNewOriginalZoomFactor:(double)a3
{
  holdingStateLock = self->_holdingStateLock;
  if (!holdingStateLock)
  {
    os_unfair_lock_lock(&self->_stateLock);
  }

  [(AVControlCenterModuleState *)self _defaultOriginalVideoZoomFactor];
  v7 = v6;
  currentPanningAngleX = self->_currentPanningAngleX;
  currentPanningAngleY = self->_currentPanningAngleY;
  currentOriginalZoomFactor = self->_currentOriginalZoomFactor;
  self->_currentOriginalZoomFactor = a3;
  if (!holdingStateLock)
  {
    os_unfair_lock_unlock(&self->_stateLock);
  }

  if (fabs(currentPanningAngleX) < 0.00999999978 && fabs(currentPanningAngleY) < 0.00999999978)
  {
    v11 = vabdd_f64(currentOriginalZoomFactor, v7);
    v12 = vabdd_f64(a3, v7);
    if (v11 < 0.00999999978 && v12 >= 0.00999999978)
    {
      if (dword_1ED8068A0)
      {
        v26 = 0;
        v25 = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v23 = @"isAtDefault";
      v24 = MEMORY[0x1E695E110];
      v15 = MEMORY[0x1E695DF20];
      v16 = &v24;
      v17 = &v23;
LABEL_17:
      v18 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:{1, v19, v20, v21, v22, v23, v24}];
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
      return;
    }

    if (v11 >= 0.00999999978 && v12 < 0.00999999978)
    {
      if (dword_1ED8068A0)
      {
        v26 = 0;
        v25 = 0;
        v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v21 = @"isAtDefault";
      v22 = MEMORY[0x1E695E118];
      v15 = MEMORY[0x1E695DF20];
      v16 = &v22;
      v17 = &v21;
      goto LABEL_17;
    }
  }
}

- (void)invalidateDeviceBasedModuleStatesIfNeeded
{
  if ([(AVControlCenterModuleState *)self isDeviceBasedModuleState])
  {
    if (self->_deviceSupportsManualFraming)
    {
      if (self->_observingManualFramingProprietaryDefaultKeys)
      {
        [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_centerStageFieldOfViewRestrictedToWideKey];
        [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_dockedTrackingActiveKey];
        [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_oneShotFramingCompletedKey];
        [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_resetFramingCompletedKey];
        [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_panningAnglesKey];
        [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_manualFramingVideoZoomFactorKey];
        self->_observingManualFramingProprietaryDefaultKeys = 0;
      }

      self->_startPanningAtPointKey = 0;
      self->_panWithTranslationKey = 0;

      self->_manualFramingVideoZoomFactorKey = 0;
      self->_performOneShotFramingKey = 0;

      self->_resetFramingKey = 0;
      self->_oneShotFramingCompletedKey = 0;

      self->_resetFramingCompletedKey = 0;
      self->_panningAnglesKey = 0;

      self->_manualFramingDeviceTypeKey = 0;
      self->_zoomFactorConstantsByManualFramingDeviceType = 0;

      self->_centerStageFieldOfViewRestrictedToWideKey = 0;
    }

    if (self->_observingDockedTrackingProprietaryDefaultKey)
    {
      [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_dockedTrackingActiveKey];

      self->_dockedTrackingActiveKey = 0;
      self->_observingDockedTrackingProprietaryDefaultKey = 0;
    }
  }
}

@end