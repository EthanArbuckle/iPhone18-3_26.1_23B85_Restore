@interface AVCaptureDevice
+ (AVAuthorizationStatus)authorizationStatusForMediaType:(AVMediaType)mediaType;
+ (AVCaptureCenterStageControlMode)centerStageControlMode;
+ (AVCaptureDevice)defaultDeviceWithDeviceType:(AVCaptureDeviceType)deviceType mediaType:(AVMediaType)mediaType position:(AVCaptureDevicePosition)position;
+ (AVCaptureDevice)defaultDeviceWithMediaType:(AVMediaType)mediaType;
+ (AVCaptureDevice)deviceWithUniqueID:(NSString *)deviceUniqueID;
+ (AVCaptureDevice)systemPreferredCamera;
+ (AVCaptureDevice)userPreferredCamera;
+ (AVCaptureMicrophoneMode)activeMicrophoneMode;
+ (AVCaptureMicrophoneMode)preferredMicrophoneMode;
+ (AudioValueRange)backgroundBlurApertureRange;
+ (BOOL)_checkEligibilityForEffect:(id)effect;
+ (BOOL)_defaultCenterStageEnabled;
+ (BOOL)allowsSuspendedPreferredCameras;
+ (BOOL)defaultCenterStageEnabledForBundleID:(id)d;
+ (BOOL)haveShownGesturesDefaultDisabledNotification;
+ (BOOL)isBackgroundReplacementEnabled;
+ (BOOL)isCenterStageEnabled;
+ (BOOL)isEligibleForBackgroundBlur;
+ (BOOL)isEligibleForBackgroundReplacement;
+ (BOOL)isEligibleForReactionEffects;
+ (BOOL)isEligibleForStudioLighting;
+ (BOOL)isPortraitEffectEnabled;
+ (BOOL)isStudioLightEnabled;
+ (BOOL)reactionEffectGesturesEnabled;
+ (BOOL)reactionEffectGesturesEnabledDefault;
+ (BOOL)reactionEffectsEnabled;
+ (NSData)extrinsicMatrixFromDevice:(AVCaptureDevice *)fromDevice toDevice:(AVCaptureDevice *)toDevice;
+ (__CVBuffer)backgroundReplacementPixelBuffer;
+ (float)backgroundBlurAperture;
+ (float)studioLightingIntensity;
+ (id)_centerStageAllowList;
+ (id)_defaultDeviceWithDeviceType:(id)type mediaType:(id)mediaType position:(int64_t)position prefersUnsuspendedAndAllowsAnyPosition:(BOOL)anyPosition;
+ (id)_devicesWithDeviceTypes:(id)types mediaType:(id)type position:(int64_t)position;
+ (id)_legacyDevicesWithMediaType:(id)type;
+ (id)_listEligibleEffects;
+ (id)backgroundReplacementURL;
+ (id)cameraInfoForCreatorID:(id)d uniqueID:(id)iD specialDeviceType:(unsigned int)type centerStageSupported:(BOOL)supported;
+ (id)continuityCaptureCameraCapabilities;
+ (id)continuityCaptureLastUsedDate;
+ (id)devicesForDefaultDeviceSupport:(BOOL)support includeAudioDevices:(BOOL)devices;
+ (id)proprietaryDefaultsDomainForAuditToken:(id *)token;
+ (id)valueForKey:(id)key;
+ (int64_t)backgroundBlurControlMode;
+ (int64_t)centerStageFramingMode;
+ (int64_t)portraitEffectStudioLightQuality;
+ (int64_t)studioLightingControlMode;
+ (void)_activeMicrophoneModeChanged:(id)changed;
+ (void)_backgroundBlurApertureChanged:(id)changed;
+ (void)_backgroundBlurEnabledChanged:(id)changed;
+ (void)_backgroundReplacementEnabledChanged:(id)changed;
+ (void)_backgroundReplacementURLBookmarkChanged:(id)changed;
+ (void)_cinematicFramingEnabledChanged:(id)changed;
+ (void)_filterConnectedDevices:(id)devices withDeviceTypes:(id)types mediaType:(id)type position:(int64_t)position;
+ (void)_filterConnectedLegacyDevices:(id)devices;
+ (void)_gesturesEnabledChanged:(id)changed;
+ (void)_haveShownGesturesDefaultDisabledNotificationChanged:(id)changed;
+ (void)_preferredMicrophoneModeChanged:(id)changed;
+ (void)_reactionTriggered:(id)triggered;
+ (void)_reactionsEnabledChanged:(id)changed;
+ (void)_reactionsInProgressChangedByControlCenter:(id)center;
+ (void)_reconnectDevices:(id)devices;
+ (void)_releaseStaticResources;
+ (void)_setControlCenterVideoEffectUnavailableReasonsForVideoEffect:(id)effect reasons:(unint64_t)reasons;
+ (void)_studioLightEnabledChanged:(id)changed;
+ (void)_studioLightingIntensityChanged:(id)changed;
+ (void)addObserver:(id)observer forKeyPath:(id)path options:(unint64_t)options context:(void *)context;
+ (void)didChangeValueForKey:(id)key;
+ (void)ensureServerConnection;
+ (void)initialize;
+ (void)removeObserver:(id)observer forKeyPath:(id)path;
+ (void)removeObserver:(id)observer forKeyPath:(id)path context:(void *)context;
+ (void)requestAccessForMediaType:(AVMediaType)mediaType completionHandler:(void *)handler;
+ (void)requestGesturesDefaultDisabledNotification;
+ (void)setAllowsSuspendedPreferredCameras:(BOOL)cameras;
+ (void)setBackgroundBlurAperture:(float)aperture;
+ (void)setBackgroundBlurControlMode:(int64_t)mode;
+ (void)setBackgroundBlurEnabled:(BOOL)enabled;
+ (void)setBackgroundReplacementEnabled:(BOOL)enabled;
+ (void)setBackgroundReplacementPixelBuffer:(__CVBuffer *)buffer;
+ (void)setBackgroundReplacementURL:(id)l;
+ (void)setCenterStageControlMode:(AVCaptureCenterStageControlMode)centerStageControlMode;
+ (void)setCenterStageEnabled:(BOOL)centerStageEnabled;
+ (void)setCenterStageFramingMode:(int64_t)mode;
+ (void)setControlCenterVideoEffectUnavailableReasonsForVideoEffect:(id)effect reasons:(unint64_t)reasons;
+ (void)setPortraitEffectStudioLightQuality:(int64_t)quality;
+ (void)setReactionEffectGesturesEnabled:(BOOL)enabled;
+ (void)setReactionEffectSuppressedGesture:(BOOL)gesture;
+ (void)setReactionEffectSuppressedGesturesEnabled:(BOOL)enabled;
+ (void)setReactionEffectsEnabled:(BOOL)enabled;
+ (void)setStudioLightingControlMode:(int64_t)mode;
+ (void)setStudioLightingEnabled:(BOOL)enabled;
+ (void)setStudioLightingIntensity:(float)intensity;
+ (void)setUpBackgroundBlurStateOnce;
+ (void)setUpBackgroundReplacementStateOnce;
+ (void)setUpCenterStageStateOnce;
+ (void)setUpGesturesDefaultDisabledNotification;
+ (void)setUpMicrophoneModeStateOnce;
+ (void)setUpReactionEffectsStateOnce;
+ (void)setUpStudioLightingStateOnce;
+ (void)setUserPreferredCamera:(AVCaptureDevice *)userPreferredCamera;
+ (void)setUserPreferredCamera:(id)camera forClientPreferenceDomain:(id)domain;
+ (void)setValue:(id)value forKey:(id)key;
+ (void)setupKVOLoggingOnce;
+ (void)showSystemUserInterface:(AVCaptureSystemUserInterface)systemUserInterface;
+ (void)updateUserPreferredCameraOverride:(BOOL)override cameraInfo:(id)info;
+ (void)updateUserPreferredCameraOverrideHistoryWithDevice:(id)device setOverride:(BOOL)override;
+ (void)willChangeValueForKey:(id)key;
- (AVCaptureSystemPressureState)systemPressureState;
- (AVCaptureWhiteBalanceChromaticityValues)chromaticityValuesForDeviceWhiteBalanceGains:(AVCaptureWhiteBalanceGains)whiteBalanceGains;
- (AVCaptureWhiteBalanceGains)deviceWhiteBalanceGains;
- (AVCaptureWhiteBalanceGains)deviceWhiteBalanceGainsForChromaticityValues:(AVCaptureWhiteBalanceChromaticityValues)chromaticityValues;
- (AVCaptureWhiteBalanceGains)deviceWhiteBalanceGainsForTemperatureAndTintValues:(AVCaptureWhiteBalanceTemperatureAndTintValues)tempAndTintValues;
- (AVCaptureWhiteBalanceGains)grayWorldDeviceWhiteBalanceGains;
- (AVCaptureWhiteBalanceTemperatureAndTintValues)temperatureAndTintValuesForDeviceWhiteBalanceGains:(AVCaptureWhiteBalanceGains)whiteBalanceGains;
- (BOOL)_startUsingDevice:(id *)device;
- (BOOL)canPerformReactionEffects;
- (BOOL)isVirtualDevice;
- (BOOL)lockForConfiguration:(NSError *)outError;
- (BOOL)open:(id *)open;
- (BOOL)setTorchModeOnWithLevel:(float)torchLevel error:(NSError *)outError;
- (CGPoint)exposurePointOfInterest;
- (CGPoint)focusPointOfInterest;
- (CGRect)centerStageRectOfInterest;
- (CGRect)defaultRectForExposurePointOfInterest:(CGPoint)interest;
- (CGRect)defaultRectForFocusPointOfInterest:(CGPoint)interest;
- (CGRect)exposureRectOfInterest;
- (CGRect)faceRectangle;
- (CGRect)focusRectOfInterest;
- (CGSize)minExposureRectOfInterestSize;
- (CGSize)minFocusRectOfInterestSize;
- (NSArray)constituentDevices;
- (NSArray)reactionEffectsInProgress;
- (id)debugDescription;
- (id)description;
- (id)initProxyDeviceWithUniqueID:(id)d targetClientAuditToken:(id *)token;
- (id)initSubclass;
- (void)cancelVideoZoomRamp;
- (void)close;
- (void)dealloc;
- (void)panWithTranslation:(CGPoint)translation;
- (void)performEffectForReaction:(AVCaptureReactionType)reactionType;
- (void)performOneShotFraming;
- (void)rampExponentiallyToVideoZoomFactor:(float)factor withDuration:(double)duration;
- (void)rampToVideoZoomFactor:(CGFloat)factor withRate:(float)rate;
- (void)rampToVideoZoomFactor:(float)factor withTuning:(int64_t)tuning;
- (void)resetFraming;
- (void)setActiveColorSpace:(AVCaptureColorSpace)activeColorSpace;
- (void)setActiveDepthDataFormat:(AVCaptureDeviceFormat *)activeDepthDataFormat;
- (void)setActiveDepthDataMinFrameDuration:(CMTime *)activeDepthDataMinFrameDuration;
- (void)setActiveFormat:(AVCaptureDeviceFormat *)activeFormat;
- (void)setActiveMaxExposureDuration:(CMTime *)activeMaxExposureDuration;
- (void)setActiveVideoMaxFrameDuration:(CMTime *)activeVideoMaxFrameDuration;
- (void)setActiveVideoMinFrameDuration:(CMTime *)activeVideoMinFrameDuration;
- (void)setAspectRatioForNonDestructiveCrop:(int64_t)crop;
- (void)setAutoFocusRangeRestriction:(AVCaptureAutoFocusRangeRestriction)autoFocusRangeRestriction;
- (void)setAutoVideoFrameRateEnabled:(BOOL)enabled;
- (void)setAutomaticallyAdjustsFaceDrivenAutoExposureEnabled:(BOOL)automaticallyAdjustsFaceDrivenAutoExposureEnabled;
- (void)setAutomaticallyAdjustsFaceDrivenAutoFocusEnabled:(BOOL)automaticallyAdjustsFaceDrivenAutoFocusEnabled;
- (void)setAutomaticallyAdjustsImageControlMode:(BOOL)mode;
- (void)setAutomaticallyAdjustsVideoHDREnabled:(BOOL)automaticallyAdjustsVideoHDREnabled;
- (void)setAutomaticallyEnablesLowLightBoostWhenAvailable:(BOOL)automaticallyEnablesLowLightBoostWhenAvailable;
- (void)setCameraLensSmudgeDetectionEnabled:(BOOL)enabled detectionInterval:(id *)interval;
- (void)setCenterStageFieldOfViewRestrictedToWide:(BOOL)wide;
- (void)setCinematicVideoFixedFocusAtPoint:(CGPoint)point focusMode:(int64_t)mode;
- (void)setCinematicVideoFocusAtPoint:(CGPoint)point objectID:(int64_t)d isHardFocus:(BOOL)focus isFixedPlaneFocus:(BOOL)planeFocus;
- (void)setCinematicVideoTrackingFocusAtPoint:(CGPoint)point focusMode:(int64_t)mode;
- (void)setCinematicVideoTrackingFocusWithDetectedObjectID:(int64_t)d focusMode:(int64_t)mode;
- (void)setContinuousZoomWithDepthEnabled:(BOOL)enabled;
- (void)setDeskViewCameraMode:(int64_t)mode;
- (void)setDigitalFlashMode:(int64_t)mode;
- (void)setDockedTrackingEnabled:(BOOL)enabled;
- (void)setDynamicAspectRatio:(id)ratio completionHandler:(id)handler;
- (void)setExposureMode:(AVCaptureExposureMode)exposureMode;
- (void)setExposureModeCustomWithDuration:(CMTime *)duration ISO:(float)ISO completionHandler:(void *)handler;
- (void)setExposurePointOfInterest:(CGPoint)exposurePointOfInterest;
- (void)setExposureRectOfInterest:(CGRect)interest;
- (void)setExposureTargetBias:(float)bias completionHandler:(void *)handler;
- (void)setEyeClosedDetectionEnabled:(BOOL)enabled;
- (void)setEyeDetectionEnabled:(BOOL)enabled;
- (void)setFaceDetectionDrivenImageProcessingEnabled:(BOOL)enabled;
- (void)setFaceDrivenAutoExposureEnabled:(BOOL)faceDrivenAutoExposureEnabled;
- (void)setFaceDrivenAutoFocusEnabled:(BOOL)faceDrivenAutoFocusEnabled;
- (void)setFallbackPrimaryConstituentDevices:(NSArray *)fallbackPrimaryConstituentDevices;
- (void)setFlashMode:(AVCaptureFlashMode)flashMode;
- (void)setFocusMode:(AVCaptureFocusMode)focusMode;
- (void)setFocusModeLockedWithLensPosition:(float)lensPosition completionHandler:(void *)handler;
- (void)setFocusPointOfInterest:(CGPoint)focusPointOfInterest;
- (void)setFocusRectOfInterest:(CGRect)interest;
- (void)setGazeSelectionEnabled:(BOOL)enabled;
- (void)setGeometricDistortionCorrectionEnabled:(BOOL)geometricDistortionCorrectionEnabled;
- (void)setGlobalToneMappingEnabled:(BOOL)globalToneMappingEnabled;
- (void)setImageControlMode:(int64_t)mode;
- (void)setLowLightVideoCaptureEnabled:(BOOL)enabled;
- (void)setManualFramingEnabled:(BOOL)enabled;
- (void)setManualFramingPanningAngleX:(float)x;
- (void)setManualFramingPanningAngleY:(float)y;
- (void)setMaxAvailableVideoZoomFactorOverride:(double)override;
- (void)setNonDestructiveCropEnabled:(BOOL)enabled;
- (void)setPrimaryConstituentDeviceSwitchingBehavior:(AVCapturePrimaryConstituentDeviceSwitchingBehavior)switchingBehavior restrictedSwitchingBehaviorConditions:(AVCapturePrimaryConstituentDeviceRestrictedSwitchingBehaviorConditions)restrictedSwitchingBehaviorConditions;
- (void)setProvidesStortorgetMetadata:(BOOL)metadata;
- (void)setSmileDetectionEnabled:(BOOL)enabled;
- (void)setSmoothAutoFocusEnabled:(BOOL)smoothAutoFocusEnabled;
- (void)setSpatialOverCaptureEnabled:(BOOL)enabled;
- (void)setTimeLapseCaptureRate:(float)rate;
- (void)setTimeOfFlightProjectorMode:(int64_t)mode;
- (void)setTorchMode:(AVCaptureTorchMode)torchMode;
- (void)setUltraHighResolutionZeroShutterLagEnabled:(BOOL)enabled;
- (void)setVariableFrameRateVideoCaptureEnabled:(BOOL)enabled;
- (void)setVideoHDREnabled:(BOOL)videoHDREnabled;
- (void)setVideoHDRSuspended:(BOOL)suspended;
- (void)setVideoStabilizationStrength:(int64_t)strength;
- (void)setVideoZoomFactor:(CGFloat)videoZoomFactor;
- (void)setWhiteBalanceMode:(AVCaptureWhiteBalanceMode)whiteBalanceMode;
- (void)setWhiteBalanceModeLockedWithDeviceWhiteBalanceGains:(AVCaptureWhiteBalanceGains)whiteBalanceGains completionHandler:(void *)handler;
- (void)setWhiteBalanceModeLockedWithDeviceWhiteBalanceTemperatureAndTintValues:(id)values completionHandler:(id)handler;
- (void)startPanningAtPoint:(CGPoint)point;
- (void)unlockForConfiguration;
- (void)updateReactionsInProgress:(id)progress;
@end

@implementation AVCaptureDevice

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

+ (void)setUpCenterStageStateOnce
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__AVCaptureDevice_setUpCenterStageStateOnce__block_invoke;
  block[3] = &unk_1E786EC08;
  block[4] = self;
  if (setUpCenterStageStateOnce_onceToken != -1)
  {
    dispatch_once(&setUpCenterStageStateOnce_onceToken, block);
  }
}

uint64_t __44__AVCaptureDevice_setUpCenterStageStateOnce__block_invoke(uint64_t a1)
{
  v2 = AVCaptureClientPreferencesDomain();
  sCenterStageControlModeKey = AVControlCenterVideoEffectsCenterStageControlModePreferenceKey(v2);
  v3 = AVCaptureClientPreferencesDomain();
  sCenterStageEnabledKey = AVControlCenterVideoEffectsCenterStageEnabledPreferenceKey(v3);
  v4 = AVCaptureClientPreferencesDomain();
  sCenterStageUnavailableReasonsKey = AVControlCenterVideoEffectsCenterStageUnavailableReasonsPreferenceKey(v4);
  v5 = AVCaptureClientPreferencesDomain();
  v6 = AVControlCenterVideoEffectsCenterStageMigrationCompletePreferenceKey(v5);
  v13[0] = @"videoeffects-cinematicframing-controlmode";
  v13[1] = @"videoeffects-cinematicframing-enabled";
  v14[0] = sCenterStageControlModeKey;
  v14[1] = sCenterStageEnabledKey;
  v13[2] = @"videoeffects-cinematicframing-unavailablereasons";
  v14[2] = sCenterStageUnavailableReasonsKey;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v8 = AVCaptureClientPreferencesDomain();
  AVControlCenterMigrateDefaultsForKeys(v8, v7, v6);
  v9 = [AVCaptureProprietaryDefaultsSingleton objectForKey:sCenterStageControlModeKey];
  if (v9)
  {
    sCenterStageControlMode = [v9 integerValue];
  }

  v10 = [AVCaptureProprietaryDefaultsSingleton objectForKey:sCenterStageEnabledKey];
  if (v10)
  {
    v11 = [v10 BOOLValue];
  }

  else
  {
    v11 = [*(a1 + 32) _defaultCenterStageEnabled];
  }

  sCenterStageEnabled = v11;
  return [AVCaptureProprietaryDefaultsSingleton addObserver:"addObserver:forKey:callHandlerForInitialValue:defaultChangedHandler:" forKey:? callHandlerForInitialValue:? defaultChangedHandler:?];
}

+ (BOOL)_defaultCenterStageEnabled
{
  v3 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
  if (AVCaptureCurrentClientIsFaceTimeVariant())
  {
    v4 = 0x1F1CBF688;
  }

  else
  {
    v4 = v3;
  }

  return [self defaultCenterStageEnabledForBundleID:v4];
}

+ (void)setUpStudioLightingStateOnce
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__AVCaptureDevice_setUpStudioLightingStateOnce__block_invoke;
  block[3] = &unk_1E786EC08;
  block[4] = self;
  if (setUpStudioLightingStateOnce_onceToken != -1)
  {
    dispatch_once(&setUpStudioLightingStateOnce_onceToken, block);
  }
}

uint64_t __47__AVCaptureDevice_setUpStudioLightingStateOnce__block_invoke(uint64_t a1)
{
  v2 = AVCaptureClientPreferencesDomain();
  sStudioLightingControlModeKey = AVControlCenterVideoEffectsStudioLightingControlModePreferenceKey(v2);
  v3 = AVCaptureClientPreferencesDomain();
  sStudioLightingEnabledKey = AVControlCenterVideoEffectsStudioLightingEnabledPreferenceKey(v3);
  v4 = AVCaptureClientPreferencesDomain();
  sStudioLightingUnavailableReasonsKey = AVControlCenterVideoEffectsStudioLightingUnavailableReasonsPreferenceKey(v4);
  v5 = AVCaptureClientPreferencesDomain();
  sStudioLightingIntensityKey = AVControlCenterVideoEffectsStudioLightingIntensityPreferenceKey(v5);
  if ((AVCaptureIsRunningInXCTest() & 1) != 0 || AVCaptureClientIsInternalTestTool())
  {
    v6 = [AVCaptureProprietaryDefaultsSingleton objectForKey:sStudioLightingControlModeKey];
    if (v6)
    {
      sStudioLightingControlMode = [v6 integerValue];
    }
  }

  v7 = [AVCaptureProprietaryDefaultsSingleton objectForKey:sStudioLightingEnabledKey];
  if (v7)
  {
    sStudioLightingEnabled = [v7 BOOLValue];
  }

  v8 = [AVCaptureProprietaryDefaultsSingleton objectForKey:sStudioLightingIntensityKey];
  if (v8)
  {
    [v8 floatValue];
    sStudioLightingIntensity = v9;
  }

  [AVCaptureProprietaryDefaultsSingleton addObserver:"addObserver:forKey:callHandlerForInitialValue:defaultChangedHandler:" forKey:? callHandlerForInitialValue:? defaultChangedHandler:?];
  return [AVCaptureProprietaryDefaultsSingleton addObserver:MEMORY[0x1E69E9820] forKey:3221225472 callHandlerForInitialValue:__47__AVCaptureDevice_setUpStudioLightingStateOnce__block_invoke_3 defaultChangedHandler:&unk_1E786EAF0, *(a1 + 32)];
}

+ (void)setUpReactionEffectsStateOnce
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__AVCaptureDevice_setUpReactionEffectsStateOnce__block_invoke;
  block[3] = &unk_1E786EC08;
  block[4] = self;
  if (setUpReactionEffectsStateOnce_onceToken != -1)
  {
    dispatch_once(&setUpReactionEffectsStateOnce_onceToken, block);
  }
}

+ (BOOL)isEligibleForReactionEffects
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__AVCaptureDevice_isEligibleForReactionEffects__block_invoke;
  block[3] = &unk_1E786EC08;
  block[4] = self;
  if (isEligibleForReactionEffects_onceToken != -1)
  {
    dispatch_once(&isEligibleForReactionEffects_onceToken, block);
  }

  return isEligibleForReactionEffects_sIsEligibleForReactionEffects;
}

uint64_t __47__AVCaptureDevice_isEligibleForReactionEffects__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _checkEligibilityForEffect:AVCaptureBundleCameraReactionEffectsEnabledKey];
  isEligibleForReactionEffects_sIsEligibleForReactionEffects = result;
  return result;
}

+ (id)_centerStageAllowList
{
  if (GestaltGetDeviceClass() == 1)
  {
    v7[0] = 0x1F1CBF688;
    v7[1] = @"com.cisco.squared";
    v7[2] = @"com.webex.meeting";
    v7[3] = @"us.zoom.videomeetings";
    v7[4] = @"net.whatsapp.WhatsApp";
    v7[5] = @"com.hammerandchisel.discord";
    v7[6] = @"com.google.Tachyon";
    v7[7] = @"com.microsoft.skype.teams";
    v7[8] = @"jp.naver.line";
    v7[9] = @"ph.telegra.Telegraph";
    v7[10] = @"com.viber";
    v7[11] = @"com.alibaba.dingtalklite";
    v7[12] = @"com.iwilab.KakaoTalk";
    v7[13] = @"org.whispersystems.signal";
    v7[14] = @"com.facebook.Messenger";
    v7[15] = @"com.firespotter.UberConference";
    v2 = MEMORY[0x1E695DEC8];
    v3 = v7;
    v4 = 16;
  }

  else
  {
    v6[0] = 0x1F1CBF688;
    v6[1] = @"Cisco-Systems.Spark";
    v6[2] = @"com.cisco.squared";
    v6[3] = @"com.webex.meeting";
    v6[4] = @"com.skype.SkypeForiPad";
    v6[5] = @"com.microsoft.skype.teams";
    v6[6] = @"com.logmein.joinme";
    v6[7] = @"us.zoom.videomeetings";
    v6[8] = @"com.logmein.gotomeeting";
    v6[9] = @"com.herzick.houseparty";
    v6[10] = @"com.google.hangouts";
    v6[11] = @"com.google.meetings";
    v6[12] = @"com.bluejeansnet.Blue-Jeans";
    v2 = MEMORY[0x1E695DEC8];
    v3 = v6;
    v4 = 13;
  }

  return [v2 arrayWithObjects:v3 count:v4];
}

+ (void)setUpBackgroundBlurStateOnce
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__AVCaptureDevice_setUpBackgroundBlurStateOnce__block_invoke;
  block[3] = &unk_1E786EC08;
  block[4] = self;
  if (setUpBackgroundBlurStateOnce_onceToken != -1)
  {
    dispatch_once(&setUpBackgroundBlurStateOnce_onceToken, block);
  }
}

uint64_t __47__AVCaptureDevice_setUpBackgroundBlurStateOnce__block_invoke(uint64_t a1)
{
  v2 = AVCaptureClientPreferencesDomain();
  sBackgroundBlurControlModeKey = AVControlCenterVideoEffectsPortraitEffectControlModePreferenceKey(v2);
  v3 = AVCaptureClientPreferencesDomain();
  sBackgroundBlurEnabledKey = AVControlCenterVideoEffectsPortraitEffectEnabledPreferenceKey(v3);
  v4 = AVCaptureClientPreferencesDomain();
  sBackgroundBlurUnavailableReasonsKey = AVControlCenterVideoEffectsPortraitEffectUnavailableReasonsPreferenceKey(v4);
  v5 = AVCaptureClientPreferencesDomain();
  sBackgroundBlurApertureKey = AVControlCenterVideoEffectsPortraitEffectAperturePreferenceKey(v5);
  v6 = AVCaptureClientPreferencesDomain();
  v7 = AVControlCenterVideoEffectsPortraitEffectMigrationCompletePreferenceKey(v6);
  v15[0] = @"videoeffects-backgroundblur-controlmode";
  v15[1] = @"videoeffects-backgroundblur-enabled";
  v16[0] = sBackgroundBlurControlModeKey;
  v16[1] = sBackgroundBlurEnabledKey;
  v15[2] = @"videoeffects-backgroundblur-unavailablereasons";
  v16[2] = sBackgroundBlurUnavailableReasonsKey;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
  v9 = AVCaptureClientPreferencesDomain();
  AVControlCenterMigrateDefaultsForKeys(v9, v8, v7);
  if ((AVCaptureCurrentClientIsFaceTimeVariant() & 1) != 0 || (AVCaptureIsRunningInXCTest() & 1) != 0 || (AVCaptureClientIsInternalTestTool() & 1) != 0 || AVCaptureTemporaryHackToAllowPortraitBlurSeeRadar78740254())
  {
    v10 = [AVCaptureProprietaryDefaultsSingleton objectForKey:sBackgroundBlurControlModeKey];
    if (v10)
    {
      sBackgroundBlurControlMode = [v10 integerValue];
    }
  }

  v11 = [AVCaptureProprietaryDefaultsSingleton objectForKey:sBackgroundBlurEnabledKey];
  if (v11)
  {
    sBackgroundBlurEnabled = [v11 BOOLValue];
  }

  v12 = [AVCaptureProprietaryDefaultsSingleton objectForKey:sBackgroundBlurApertureKey];
  if (v12)
  {
    [v12 floatValue];
    sBackgroundBlurAperture = v13;
  }

  [AVCaptureProprietaryDefaultsSingleton addObserver:"addObserver:forKey:callHandlerForInitialValue:defaultChangedHandler:" forKey:? callHandlerForInitialValue:? defaultChangedHandler:?];
  return [AVCaptureProprietaryDefaultsSingleton addObserver:MEMORY[0x1E69E9820] forKey:3221225472 callHandlerForInitialValue:__47__AVCaptureDevice_setUpBackgroundBlurStateOnce__block_invoke_3 defaultChangedHandler:&unk_1E786EAF0, *(a1 + 32)];
}

uint64_t __48__AVCaptureDevice_setUpReactionEffectsStateOnce__block_invoke(uint64_t a1)
{
  v17[0] = AVCaptureReactionTypeThumbsUp;
  v17[1] = AVCaptureReactionTypeThumbsDown;
  v17[2] = AVCaptureReactionTypeBalloons;
  v17[3] = AVCaptureReactionTypeHeart;
  v17[4] = AVCaptureReactionTypeFireworks;
  v17[5] = AVCaptureReactionTypeRain;
  v17[6] = AVCaptureReactionTypeConfetti;
  v17[7] = AVCaptureReactionTypeLasers;
  sAvailableReactions = [MEMORY[0x1E695DFD8] setWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v17, 8)}];
  v2 = AVCaptureClientPreferencesDomain();
  sReactionsEnabledKey = AVControlCenterVideoEffectsReactionsEnabledPreferenceKey(v2);
  v3 = AVCaptureClientPreferencesDomain();
  sGesturesEnabledKey = AVControlCenterVideoEffectsGesturesEnabledPreferenceKey(v3);
  v4 = AVCaptureClientPreferencesDomain();
  sReactionsUnavailableReasonsKey = AVControlCenterVideoEffectsReactionsUnavailableReasonsPreferenceKey(v4);
  v5 = AVCaptureClientPreferencesDomain();
  AVControlCenterVideoEffectsReactionsTriggeredPreferenceKey(v5);
  v6 = AVCaptureClientPreferencesDomain();
  AVControlCenterVideoEffectsReactionsInProgressPreferenceKey(v6);
  v7 = +[AVCaptureDevice reactionEffectsEnabledDefault];
  sReactionsEnabled = v7;
  v8 = [MEMORY[0x1E696AD98] numberWithBool:v7];
  [AVCaptureProprietaryDefaultsSingleton setObject:v8 forKey:sReactionsEnabledKey];
  v9 = [AVCaptureProprietaryDefaultsSingleton objectForKey:sGesturesEnabledKey];
  if (v9 && (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (dword_1ED806A00)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    sGesturesEnabled = [v10 BOOLValue];
  }

  else
  {
    sGesturesEnabled = +[AVCaptureDevice reactionEffectGesturesEnabledDefault];
    if ((sGesturesEnabled & 1) == 0 && ([*(a1 + 32) haveShownGesturesDefaultDisabledNotification] & 1) == 0)
    {
      sSuppressedGesturesEnabled = 1;
    }

    if (dword_1ED806A00)
    {
      v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v13 = AVCaptureClientPreferencesDomain();
    +[AVCaptureProprietaryDefaultsSingleton setObject:forKey:](AVCaptureProprietaryDefaultsSingleton, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithBool:sGesturesEnabled], AVControlCenterVideoEffectsGesturesEnabledDefaultPreferenceKey(v13));
  }

  [AVCaptureProprietaryDefaultsSingleton addObserver:"addObserver:forKey:callHandlerForInitialValue:defaultChangedHandler:" forKey:v15 callHandlerForInitialValue:v16 defaultChangedHandler:?];
  [AVCaptureProprietaryDefaultsSingleton addObserver:"addObserver:forKey:callHandlerForInitialValue:defaultChangedHandler:" forKey:? callHandlerForInitialValue:? defaultChangedHandler:?];
  [AVCaptureProprietaryDefaultsSingleton addObserver:"addObserver:forKey:callHandlerForInitialValue:defaultChangedHandler:" forKey:? callHandlerForInitialValue:? defaultChangedHandler:?];
  return [AVCaptureProprietaryDefaultsSingleton addObserver:"addObserver:forKey:callHandlerForInitialValue:defaultChangedHandler:" forKey:? callHandlerForInitialValue:? defaultChangedHandler:?];
}

+ (BOOL)reactionEffectGesturesEnabledDefault
{
  if (reactionEffectGesturesEnabledDefault_onceToken != -1)
  {
    +[AVCaptureDevice reactionEffectGesturesEnabledDefault];
  }

  return reactionEffectGesturesEnabledDefault_gesturesEnabledDefault;
}

+ (BOOL)haveShownGesturesDefaultDisabledNotification
{
  [self setUpGesturesDefaultDisabledNotification];
  os_unfair_lock_lock(&sGesturesDefaultDisabledNotificationLock);
  v2 = sHaveShownGesturesDefaultDisabledNotification;
  os_unfair_lock_unlock(&sGesturesDefaultDisabledNotificationLock);
  return v2;
}

uint64_t __59__AVCaptureDevice_setUpGesturesDefaultDisabledNotification__block_invoke()
{
  sHaveShownGlobalGesturesDefaultDisabledNotificationKey = AVControlCenterVideoEffectsHaveShownGesturesDefaultDisabledNotificationPreferenceKey(@"global");
  v0 = AVCaptureClientPreferencesDomain();
  sHaveShownAppGesturesDefaultDisabledNotificationKey = AVControlCenterVideoEffectsHaveShownGesturesDefaultDisabledNotificationPreferenceKey(v0);
  sRequestGesturesDefaultDisabledNotificationKey = AVControlCenterVideoEffectsRequestGesturesDefaultDisabledNotificationPreferenceKey();
  v1 = [AVCaptureProprietaryDefaultsSingleton objectForKey:sHaveShownGlobalGesturesDefaultDisabledNotificationKey];
  if (v1)
  {
    v2 = v1;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      sHaveShownGesturesDefaultDisabledNotification = [v2 BOOLValue];
    }
  }

  if ((sHaveShownGesturesDefaultDisabledNotification & 1) == 0)
  {
    v3 = [AVCaptureProprietaryDefaultsSingleton objectForKey:sHaveShownAppGesturesDefaultDisabledNotificationKey];
    if (v3)
    {
      v4 = v3;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        sHaveShownGesturesDefaultDisabledNotification = [v4 BOOLValue];
      }
    }
  }

  if (AVCaptureClientIsContinuityCapture())
  {
    sHaveShownGesturesDefaultDisabledNotification = 1;
  }

  return [AVCaptureProprietaryDefaultsSingleton addObserver:"addObserver:forKey:callHandlerForInitialValue:defaultChangedHandler:" forKey:? callHandlerForInitialValue:? defaultChangedHandler:?];
}

+ (id)_listEligibleEffects
{
  if (_listEligibleEffects_onceToken != -1)
  {
    +[AVCaptureDevice _listEligibleEffects];
  }

  return _listEligibleEffects_sEligibleEffectSet;
}

uint64_t __39__AVCaptureDevice__listEligibleEffects__block_invoke()
{
  v0 = AVCaptureClientPreferencesDomain();
  v1 = 0x1E695D000uLL;
  v47[0] = AVCaptureBundleCameraPortraitEffectEnabledKey;
  v47[1] = AVCaptureBundleCameraStudioLightEnabledKey;
  v47[2] = AVCaptureBundleCameraReactionEffectsEnabledKey;
  v47[3] = AVCaptureBundleCameraBackgroundReplacementEnabledKey;
  v2 = [MEMORY[0x1E695DFD8] setWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v47, 4)}];
  p_vtable = AVCaptureConnection.vtable;
  if (!_listEligibleEffects_sEligibleEffectSet)
  {
    v4 = v2;
    if (([(__CFString *)v0 isEqual:0x1F1CBF688]& 1) != 0 || ([(__CFString *)v0 isEqual:0x1F1CC2088]& 1) != 0 || ([(__CFString *)v0 isEqual:0x1F1CC20C8]& 1) != 0 || (AVCaptureClientIsContinuityCapture() & 1) != 0 || (AVCaptureIsRunningInXCTest() & 1) != 0 || (AVCaptureClientIsInternalCommandLineTool() & 1) != 0 || AVCaptureClientIsInternalTestTool())
    {
      if (dword_1ED806A00)
      {
        v46 = 0;
        v45 = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      _listEligibleEffects_sEligibleEffectSet = v4;
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = [MEMORY[0x1E6963620] bundleRecordForCurrentProcess];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [objc_msgSend(v12 "UIBackgroundModes")])
      {
        if (dword_1ED806A00)
        {
          v46 = 0;
          v45 = OS_LOG_TYPE_DEFAULT;
          v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      else
      {
        v14 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v4, "count")}];
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v15 = [v4 countByEnumeratingWithState:&v41 objects:v40 count:16];
        if (v15)
        {
          v16 = v15;
          v27 = v11;
          v28 = v0;
          v29 = *v42;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v42 != v29)
              {
                objc_enumerationMutation(v4);
              }

              v18 = *(*(&v41 + 1) + 8 * i);
              v19 = [objc_msgSend(objc_msgSend(v12 infoDictionary];
              if (v19)
              {
                [v14 addObject:v18];
              }

              if (dword_1ED806A00)
              {
                v46 = 0;
                v45 = OS_LOG_TYPE_DEFAULT;
                v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v21 = v46;
                if (os_log_type_enabled(v20, v45))
                {
                  v22 = v21;
                }

                else
                {
                  v22 = v21 & 0xFFFFFFFE;
                }

                if (v22)
                {
                  v23 = [v12 bundleIdentifier];
                  v30 = 136316162;
                  v24 = "is NOT";
                  if (v19)
                  {
                    v24 = "is";
                  }

                  v31 = "+[AVCaptureDevice _listEligibleEffects]_block_invoke";
                  v32 = 2112;
                  v33 = v28;
                  v34 = 2112;
                  v35 = v23;
                  v36 = 2080;
                  v37 = v24;
                  v38 = 2112;
                  v39 = v18;
                  LODWORD(v26) = 52;
                  v25 = &v30;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }
            }

            v16 = [v4 countByEnumeratingWithState:&v41 objects:v40 count:16];
          }

          while (v16);
          v4 = v14;
          v1 = 0x1E695D000;
          v0 = v28;
          p_vtable = (AVCaptureConnection + 24);
          v11 = v27;
        }

        else
        {
          v4 = v14;
        }
      }

      p_vtable[380] = v4;
      objc_autoreleasePoolPop(v11);
    }
  }

  v6 = AVControlCenterVideoEffectsEligibleEffectListPreferenceKey(v0);
  v7 = *(v1 + 4056);
  v8 = [AVCaptureProprietaryDefaultsSingleton objectForKey:v6];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  result = [objc_msgSend(v7 setWithArray:{v9, v25, v26), "isEqualToSet:", p_vtable[380]}];
  if ((result & 1) == 0)
  {
    return +[AVCaptureProprietaryDefaultsSingleton setObject:forKey:](AVCaptureProprietaryDefaultsSingleton, "setObject:forKey:", [p_vtable[380] allObjects], v6);
  }

  return result;
}

uint64_t __55__AVCaptureDevice_reactionEffectGesturesEnabledDefault__block_invoke()
{
  v0 = [objc_msgSend(MEMORY[0x1E6963620] "bundleRecordForCurrentProcess")];
  v1 = [v0 objectForKey:AVCaptureBundleCameraReactionEffectGesturesEnabledDefaultKey ofClass:objc_opt_class()];
  if (v1)
  {
    result = [v1 BOOLValue];
    reactionEffectGesturesEnabledDefault_gesturesEnabledDefault = result;
    if (!dword_1ED806A00)
    {
      return result;
    }
  }

  else
  {
    result = FigGetCFPreferenceBooleanWithDefault();
    reactionEffectGesturesEnabledDefault_gesturesEnabledDefault = result != 0;
    if (!dword_1ED806A00)
    {
      return result;
    }
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

+ (void)setUpGesturesDefaultDisabledNotification
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__AVCaptureDevice_setUpGesturesDefaultDisabledNotification__block_invoke;
  block[3] = &unk_1E786EC08;
  block[4] = self;
  if (setUpGesturesDefaultDisabledNotification_onceToken != -1)
  {
    dispatch_once(&setUpGesturesDefaultDisabledNotification_onceToken, block);
  }
}

+ (void)setUpBackgroundReplacementStateOnce
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__AVCaptureDevice_setUpBackgroundReplacementStateOnce__block_invoke;
  block[3] = &unk_1E786EC08;
  block[4] = self;
  if (setUpBackgroundReplacementStateOnce_onceToken != -1)
  {
    dispatch_once(&setUpBackgroundReplacementStateOnce_onceToken, block);
  }
}

uint64_t __54__AVCaptureDevice_setUpBackgroundReplacementStateOnce__block_invoke(uint64_t a1)
{
  v2 = AVCaptureClientPreferencesDomain();
  sBackgroundReplacementEnabledKey = AVControlCenterVideoEffectsBackgroundReplacementEnabledPreferenceKey(v2);
  v3 = AVCaptureClientPreferencesDomain();
  sBackgroundReplacementUnavailableReasonsKey = AVControlCenterVideoEffectsBackgroundReplacementUnavailableReasonsPreferenceKey(v3);
  v4 = AVCaptureClientPreferencesDomain();
  sBackgroundReplacementURLBookmarkKey = AVControlCenterVideoEffectsBackgroundReplacementURLBookmarkPreferenceKey(v4);
  v5 = [AVCaptureProprietaryDefaultsSingleton objectForKey:sBackgroundReplacementEnabledKey];
  if (v5)
  {
    sBackgroundReplacementEnabled = [v5 BOOLValue];
  }

  v6 = [AVCaptureProprietaryDefaultsSingleton objectForKey:sBackgroundReplacementURLBookmarkKey];
  if (v6)
  {
    sBackgroundReplacementURLBookmark = v6;
  }

  v7 = *(a1 + 32);
  v12[10] = MEMORY[0x1E69E9820];
  v12[11] = 3221225472;
  v12[12] = __54__AVCaptureDevice_setUpBackgroundReplacementStateOnce__block_invoke_2;
  v12[13] = &unk_1E786EAF0;
  v12[14] = v7;
  [AVCaptureProprietaryDefaultsSingleton addObserver:"addObserver:forKey:callHandlerForInitialValue:defaultChangedHandler:" forKey:? callHandlerForInitialValue:? defaultChangedHandler:?];
  v8 = *(a1 + 32);
  v12[5] = MEMORY[0x1E69E9820];
  v12[6] = 3221225472;
  v12[7] = __54__AVCaptureDevice_setUpBackgroundReplacementStateOnce__block_invoke_3;
  v12[8] = &unk_1E786EAF0;
  v12[9] = v8;
  [AVCaptureProprietaryDefaultsSingleton addObserver:"addObserver:forKey:callHandlerForInitialValue:defaultChangedHandler:" forKey:? callHandlerForInitialValue:? defaultChangedHandler:?];
  v9 = *(a1 + 32);
  v10 = AVControlCenterVideoEffectsBackgroundReplacementURLRemovedSignalKey();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__AVCaptureDevice_setUpBackgroundReplacementStateOnce__block_invoke_4;
  v12[3] = &unk_1E786EAF0;
  v12[4] = *(a1 + 32);
  return [AVCaptureProprietaryDefaultsSingleton addObserver:v9 forKey:v10 callHandlerForInitialValue:0 defaultChangedHandler:v12];
}

- (id)initSubclass
{
  v4.receiver = self;
  v4.super_class = AVCaptureDevice;
  v2 = [(AVCaptureDevice *)&v4 init];
  if (v2)
  {
    v2->_internal = objc_alloc_init(AVCaptureDeviceInternal);
    if ((AVCaptureIsRunningInMediaserverd() & 1) == 0)
    {
      +[AVCaptureDevice _registerOnceForServerConnectionDiedNotification];
    }

    +[AVCaptureDevice setUpReactionEffectsStateOnce];
  }

  return v2;
}

uint64_t __38__AVCaptureDevice_setupKVOLoggingOnce__block_invoke()
{
  result = FigGetCFPreferenceBooleanWithDefault();
  sDetailedKVOOverrideLogging = result != 0;
  return result;
}

+ (BOOL)isPortraitEffectEnabled
{
  [self setUpBackgroundBlurStateOnce];
  os_unfair_lock_lock(&sBackgroundBlurLock);
  v2 = sBackgroundBlurEnabled;
  os_unfair_lock_unlock(&sBackgroundBlurLock);
  return v2;
}

+ (float)backgroundBlurAperture
{
  [self setUpBackgroundBlurStateOnce];
  os_unfair_lock_lock(&sBackgroundBlurLock);
  v2 = *&sBackgroundBlurAperture;
  os_unfair_lock_unlock(&sBackgroundBlurLock);
  return v2;
}

+ (BOOL)isStudioLightEnabled
{
  [self setUpStudioLightingStateOnce];
  os_unfair_lock_lock(&sBackgroundBlurLock);
  v2 = sStudioLightingEnabled;
  os_unfair_lock_unlock(&sBackgroundBlurLock);
  return v2;
}

+ (float)studioLightingIntensity
{
  [self setUpStudioLightingStateOnce];
  os_unfair_lock_lock(&sBackgroundBlurLock);
  v2 = *&sStudioLightingIntensity;
  os_unfair_lock_unlock(&sBackgroundBlurLock);
  return v2;
}

+ (BOOL)reactionEffectsEnabled
{
  [self setUpReactionEffectsStateOnce];
  os_unfair_lock_lock(&sReactionsLock);
  v2 = sReactionsEnabled;
  os_unfair_lock_unlock(&sReactionsLock);
  return v2;
}

+ (BOOL)reactionEffectGesturesEnabled
{
  [self setUpReactionEffectsStateOnce];
  os_unfair_lock_lock(&sReactionsLock);
  v2 = sGesturesEnabled;
  os_unfair_lock_unlock(&sReactionsLock);
  return v2;
}

+ (int64_t)portraitEffectStudioLightQuality
{
  os_unfair_lock_lock(&sBackgroundBlurLock);
  v2 = sPortraitEffectStudioLightQuality;
  os_unfair_lock_unlock(&sBackgroundBlurLock);
  return v2;
}

+ (void)setupKVOLoggingOnce
{
  if (setupKVOLoggingOnce_onceToken != -1)
  {
    +[AVCaptureDevice setupKVOLoggingOnce];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %@>", NSStringFromClass(v4), self, -[AVCaptureDevice debugDescription](self, "debugDescription")];
}

- (id)debugDescription
{
  if ([(AVCaptureDevice *)self isProxyDevice])
  {
    v3 = @"(PROXY)";
  }

  else
  {
    v3 = &stru_1F1CBCFE8;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@[%@][%@]", v3, -[AVCaptureDevice localizedName](self, "localizedName"), -[AVCaptureDevice uniqueID](self, "uniqueID")];
}

- (BOOL)isVirtualDevice
{
  v3 = +[AVCaptureDeviceDiscoverySession allVirtualDeviceTypes];
  deviceType = [(AVCaptureDevice *)self deviceType];

  return [v3 containsObject:deviceType];
}

+ (BOOL)isCenterStageEnabled
{
  [self setUpCenterStageStateOnce];
  os_unfair_lock_lock(&sCenterStageLock);
  v2 = sCenterStageEnabled;
  os_unfair_lock_unlock(&sCenterStageLock);
  return v2;
}

+ (BOOL)isBackgroundReplacementEnabled
{
  [self setUpBackgroundReplacementStateOnce];
  os_unfair_lock_lock(&sBackgroundReplacementLock);
  v2 = sBackgroundReplacementEnabled;
  os_unfair_lock_unlock(&sBackgroundReplacementLock);
  return v2;
}

- (NSArray)constituentDevices
{
  if ([(AVCaptureDevice *)self deviceType]== @"AVCaptureDeviceTypeBuiltInDualCamera")
  {
    v12[0] = @"AVCaptureDeviceTypeBuiltInWideAngleCamera";
    v12[1] = @"AVCaptureDeviceTypeBuiltInTelephotoCamera";
    v4 = MEMORY[0x1E695DEC8];
    v5 = v12;
LABEL_9:
    v6 = 2;
    goto LABEL_10;
  }

  if ([(AVCaptureDevice *)self deviceType]== @"AVCaptureDeviceTypeBuiltInDualWideCamera")
  {
    v11[0] = @"AVCaptureDeviceTypeBuiltInUltraWideCamera";
    v11[1] = @"AVCaptureDeviceTypeBuiltInWideAngleCamera";
    v4 = MEMORY[0x1E695DEC8];
    v5 = v11;
    goto LABEL_9;
  }

  if ([(AVCaptureDevice *)self deviceType]== @"AVCaptureDeviceTypeBuiltInTripleCamera")
  {
    v10[0] = @"AVCaptureDeviceTypeBuiltInUltraWideCamera";
    v10[1] = @"AVCaptureDeviceTypeBuiltInWideAngleCamera";
    v10[2] = @"AVCaptureDeviceTypeBuiltInTelephotoCamera";
    v4 = MEMORY[0x1E695DEC8];
    v5 = v10;
    v6 = 3;
  }

  else
  {
    if ([(AVCaptureDevice *)self deviceType]== @"AVCaptureDeviceTypeBuiltInTrueDepthCamera")
    {
      v9 = @"AVCaptureDeviceTypeBuiltInWideAngleCamera";
      v4 = MEMORY[0x1E695DEC8];
      v5 = &v9;
    }

    else
    {
      if ([(AVCaptureDevice *)self deviceType]!= @"AVCaptureDeviceTypeBuiltInLiDARDepthCamera")
      {
        v3 = MEMORY[0x1E695E0F0];
        goto LABEL_11;
      }

      v8 = @"AVCaptureDeviceTypeBuiltInWideAngleCamera";
      v4 = MEMORY[0x1E695DEC8];
      v5 = &v8;
    }

    v6 = 1;
  }

LABEL_10:
  v3 = [v4 arrayWithObjects:v5 count:v6];
LABEL_11:
  if ([(NSArray *)v3 count])
  {
    return [+[AVCaptureDeviceDiscoverySession discoverySessionWithDeviceTypes:mediaType:position:](AVCaptureDeviceDiscoverySession devices:v3];
  }

  return v3;
}

- (void)unlockForConfiguration
{
  internal = self->_internal;
  objc_sync_enter(internal);
  v4 = getpid();
  v5 = self->_internal;
  if (v5->configLockPid == v4)
  {
    --v5->configLockRefCount;
    v6 = self->_internal;
    if (!v6->configLockRefCount)
    {
      v6->configLockPid = 0;
    }
  }

  objc_sync_exit(internal);
}

+ (void)_filterConnectedLegacyDevices:(id)devices
{
  v3[0] = @"AVCaptureDeviceTypeBuiltInWideAngleCamera";
  v3[1] = @"AVCaptureDeviceTypeMicrophone";
  [self _filterConnectedDevices:devices withDeviceTypes:objc_msgSend(MEMORY[0x1E695DEC8] mediaType:"arrayWithObjects:count:" position:{v3, 2), 0, 0}];
}

+ (void)_filterConnectedDevices:(id)devices withDeviceTypes:(id)types mediaType:(id)type position:(int64_t)position
{
  BoolAnswer = AVGestaltGetBoolAnswer(@"AVGQCaptureDevicesShouldBeSortedByDeviceType");
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__AVCaptureDevice__filterConnectedDevices_withDeviceTypes_mediaType_position___block_invoke;
  v13[3] = &unk_1E786F588;
  v13[5] = types;
  v13[6] = position;
  v13[4] = type;
  [devices filterUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", v13)}];
  if (BoolAnswer)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __78__AVCaptureDevice__filterConnectedDevices_withDeviceTypes_mediaType_position___block_invoke_2;
    v11[3] = &unk_1E786F5B0;
    v12 = 1;
    v11[4] = types;
    [devices sortUsingComparator:v11];
  }
}

uint64_t __78__AVCaptureDevice__filterConnectedDevices_withDeviceTypes_mediaType_position___block_invoke(void *a1, void *a2)
{
  if (![a2 isConnected] || a1[6] && objc_msgSend(a2, "position") != a1[6] || a1[4] && !objc_msgSend(a2, "hasMediaType:"))
  {
    return 0;
  }

  v4 = a1[5];
  v5 = [a2 deviceType];

  return [v4 containsObject:v5];
}

uint64_t __78__AVCaptureDevice__filterConnectedDevices_withDeviceTypes_mediaType_position___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  if (*(a1 + 40) != 1 || (v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "indexOfObject:", objc_msgSend(a2, "deviceType"))}], (result = objc_msgSend(v6, "compare:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", objc_msgSend(*(a1 + 32), "indexOfObject:", objc_msgSend(a3, "deviceType"))))) == 0))
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a2, "position")}];
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a3, "position")}];

    return [v8 compare:v9];
  }

  return result;
}

+ (id)_legacyDevicesWithMediaType:(id)type
{
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    if ([type isEqual:*MEMORY[0x1E6987608]])
    {
      [NSClassFromString(&cfstr_Avcapturefigvi.isa) _setUpCameraHistoryOnce];
      _registerVideoDevicesOnce();
      v7 = &sRegisteredVideoDevices;
      v8 = &sRegisterVideoDevicesLock;
    }

    else
    {
      if (![type isEqual:*MEMORY[0x1E69875A0]])
      {
        v6 = 0;
        goto LABEL_9;
      }

      _registerAudioDevicesOnce();
      v7 = &sRegisteredAudioDevices;
      v8 = &sRegisterAudioDevicesLock;
    }

    os_unfair_lock_lock(v8);
    v6 = [*v7 mutableCopy];
    os_unfair_lock_unlock(v8);
LABEL_9:
    [self _filterConnectedLegacyDevices:v6];
    return v6;
  }

  return MEMORY[0x1E695E0F0];
}

+ (void)addObserver:(id)observer forKeyPath:(id)path options:(unint64_t)options context:(void *)context
{
  [self setupKVOLoggingOnce];
  if (sDetailedKVOOverrideLogging == 1)
  {
    if (dword_1ED806A00)
    {
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    cf = 0;
    if (FigCopyBacktrace() >= 1 && cf != 0 && dword_1ED806A00 != 0)
    {
      *type = 0;
      v16 = OS_LOG_TYPE_DEFAULT;
      v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v15.receiver = self;
  v15.super_class = &OBJC_METACLASS___AVCaptureDevice;
  objc_msgSendSuper2(&v15, sel_addObserver_forKeyPath_options_context_, observer, path, options, context);
}

+ (void)removeObserver:(id)observer forKeyPath:(id)path context:(void *)context
{
  [self setupKVOLoggingOnce];
  if (sDetailedKVOOverrideLogging == 1)
  {
    if (dword_1ED806A00)
    {
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    cf = 0;
    if (FigCopyBacktrace() >= 1 && cf != 0 && dword_1ED806A00 != 0)
    {
      *type = 0;
      v14 = OS_LOG_TYPE_DEFAULT;
      v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v13.receiver = self;
  v13.super_class = &OBJC_METACLASS___AVCaptureDevice;
  objc_msgSendSuper2(&v13, sel_removeObserver_forKeyPath_context_, observer, path, context);
}

+ (void)removeObserver:(id)observer forKeyPath:(id)path
{
  [self setupKVOLoggingOnce];
  if (sDetailedKVOOverrideLogging == 1)
  {
    if (dword_1ED806A00)
    {
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    cf = 0;
    if (FigCopyBacktrace() >= 1 && cf != 0 && dword_1ED806A00 != 0)
    {
      *type = 0;
      v12 = OS_LOG_TYPE_DEFAULT;
      v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS___AVCaptureDevice;
  objc_msgSendSuper2(&v11, sel_removeObserver_forKeyPath_, observer, path);
}

+ (id)valueForKey:(id)key
{
  if ([key isEqualToString:@"backgroundReplacementPixelBuffer"])
  {

    return [self backgroundReplacementPixelBuffer];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___AVCaptureDevice;
    return objc_msgSendSuper2(&v6, sel_valueForKey_, key);
  }
}

+ (void)setValue:(id)value forKey:(id)key
{
  if ([key isEqualToString:@"backgroundReplacementPixelBuffer"])
  {

    [self setBackgroundReplacementPixelBuffer:value];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___AVCaptureDevice;
    objc_msgSendSuper2(&v7, sel_setValue_forKey_, value, key);
  }
}

+ (void)willChangeValueForKey:(id)key
{
  [self setupKVOLoggingOnce];
  if (sDetailedKVOOverrideLogging == 1)
  {
    if (dword_1ED806A00)
    {
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    cf = 0;
    if (FigCopyBacktrace() >= 1 && cf != 0 && dword_1ED806A00 != 0)
    {
      *type = 0;
      v10 = OS_LOG_TYPE_DEFAULT;
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___AVCaptureDevice;
  objc_msgSendSuper2(&v9, sel_willChangeValueForKey_, key);
}

+ (void)didChangeValueForKey:(id)key
{
  [self setupKVOLoggingOnce];
  if (sDetailedKVOOverrideLogging == 1)
  {
    if (dword_1ED806A00)
    {
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    cf = 0;
    if (FigCopyBacktrace() >= 1 && cf != 0 && dword_1ED806A00 != 0)
    {
      *type = 0;
      v10 = OS_LOG_TYPE_DEFAULT;
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___AVCaptureDevice;
  objc_msgSendSuper2(&v9, sel_didChangeValueForKey_, key);
}

+ (id)_devicesWithDeviceTypes:(id)types mediaType:(id)type position:(int64_t)position
{
  v9 = objc_opt_class();
  if (v9 != objc_opt_class())
  {
    return MEMORY[0x1E695E0F0];
  }

  v11 = +[AVCaptureDeviceDiscoverySession allDeviceTypes];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __62__AVCaptureDevice__devicesWithDeviceTypes_mediaType_position___block_invoke;
  v15[3] = &unk_1E786F5D8;
  v15[4] = v11;
  v12 = [types filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", v15)}];
  v13 = [MEMORY[0x1E695DFA8] setWithArray:{+[AVCaptureDeviceDiscoverySession allVideoDeviceTypes](AVCaptureDeviceDiscoverySession, "allVideoDeviceTypes")}];
  [v13 addObject:@"AVCaptureDeviceTypeBuiltInTimeOfFlightCamera"];
  [v13 addObjectsFromArray:{+[AVCaptureDeviceDiscoverySession allMetadataCameraDeviceTypes](AVCaptureDeviceDiscoverySession, "allMetadataCameraDeviceTypes")}];
  if ([v13 intersectsSet:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", v12)}])
  {
    [NSClassFromString(&cfstr_Avcapturefigvi.isa) _setUpCameraHistoryOnce];
    _registerVideoDevicesOnce();
  }

  if ([v12 containsObject:@"AVCaptureDeviceTypeMicrophone"])
  {
    _registerAudioDevicesOnce();
  }

  array = [MEMORY[0x1E695DF70] array];
  os_unfair_lock_lock(&sRegisterVideoDevicesLock);
  [array addObjectsFromArray:sRegisteredVideoDevices];
  os_unfair_lock_unlock(&sRegisterVideoDevicesLock);
  os_unfair_lock_lock(&sRegisterAudioDevicesLock);
  [array addObjectsFromArray:sRegisteredAudioDevices];
  os_unfair_lock_unlock(&sRegisterAudioDevicesLock);
  [self _filterConnectedDevices:array withDeviceTypes:v12 mediaType:type position:position];
  return array;
}

+ (AVCaptureDevice)defaultDeviceWithMediaType:(AVMediaType)mediaType
{
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    return 0;
  }

  v7 = [objc_msgSend(self _legacyDevicesWithMediaType:{mediaType), "firstObject"}];

  return v7;
}

+ (AVCaptureDevice)defaultDeviceWithDeviceType:(AVCaptureDeviceType)deviceType mediaType:(AVMediaType)mediaType position:(AVCaptureDevicePosition)position
{
  if (deviceType)
  {
    BoolAnswer = AVGestaltGetBoolAnswer(@"AVGQCaptureDefaultDevicePrefersUnsuspendedAndAllowsAnyPosition");

    return [self _defaultDeviceWithDeviceType:deviceType mediaType:mediaType position:position prefersUnsuspendedAndAllowsAnyPosition:BoolAnswer];
  }

  else
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v11);
    }

    NSLog(&cfstr_SuppressingExc.isa, v11);
    return 0;
  }
}

+ (id)_defaultDeviceWithDeviceType:(id)type mediaType:(id)mediaType position:(int64_t)position prefersUnsuspendedAndAllowsAnyPosition:(BOOL)anyPosition
{
  anyPositionCopy = anyPosition;
  v11 = objc_opt_class();
  if (v11 != objc_opt_class())
  {
    return 0;
  }

  typeCopy = type;
  v13 = [objc_msgSend(self _devicesWithDeviceTypes:objc_msgSend(MEMORY[0x1E695DEC8] mediaType:"arrayWithObjects:count:" position:{&typeCopy, 1), mediaType, position), "firstObject"}];
  if (!anyPositionCopy)
  {
    goto LABEL_12;
  }

  v14 = [+[AVCaptureDeviceDiscoverySession allVideoDeviceTypes](AVCaptureDeviceDiscoverySession "allVideoDeviceTypes")];
  if (!position || !v14)
  {
    goto LABEL_12;
  }

  isSuspended = [v13 isSuspended];
  if (v13 && !isSuspended)
  {
    goto LABEL_13;
  }

  typeCopy2 = type;
  v16 = [objc_msgSend(self _devicesWithDeviceTypes:objc_msgSend(MEMORY[0x1E695DEC8] mediaType:"arrayWithObjects:count:" position:{&typeCopy2, 1), mediaType, 0), "firstObject"}];
  if (v16)
  {
    v17 = v16;
    if (![v16 isSuspended] || !v13)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_12:
    if (!v13)
    {
      v17 = 0;
LABEL_15:
      v18 = v17;
      return v18;
    }
  }

LABEL_13:
  v18 = v13;
  return v18;
}

+ (AVCaptureDevice)userPreferredCamera
{
  v2 = NSClassFromString(&cfstr_Avcapturefigvi.isa);

  return [(objc_class *)v2 userPreferredCamera];
}

+ (void)setUserPreferredCamera:(AVCaptureDevice *)userPreferredCamera
{
  if (dword_1ED806A00)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (setUserPreferredCamera__onceToken != -1)
  {
    +[AVCaptureDevice setUserPreferredCamera:];
  }

  if (sLogSetUserPreferredCameraBacktrace == 1)
  {
    FigCopyBacktrace();
  }

  if (userPreferredCamera)
  {
    [NSClassFromString(&cfstr_Avcapturefigvi.isa) setUserPreferredCamera:userPreferredCamera];
  }
}

uint64_t __42__AVCaptureDevice_setUserPreferredCamera___block_invoke()
{
  result = FigGetCFPreferenceBooleanWithDefault();
  sLogSetUserPreferredCameraBacktrace = result != 0;
  return result;
}

+ (void)setUserPreferredCamera:(id)camera forClientPreferenceDomain:(id)domain
{
  v6 = AVCaptureClientPreferencesDomain();
  if (dword_1ED806A00)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (setUserPreferredCamera_forClientPreferenceDomain__onceToken != -1)
  {
    +[AVCaptureDevice setUserPreferredCamera:forClientPreferenceDomain:];
  }

  if (sLogSetUserPreferredCameraBacktraceForClientPreferenceDomain == 1)
  {
    FigCopyBacktrace();
  }

  if (camera && domain)
  {
    if ([(__CFString *)v6 isEqualToString:domain]& 1) != 0 || (AVCaptureClientHasEntitlement(AVCaptureEntitlementSetAnyUserPreferredCamera))
    {
      [NSClassFromString(&cfstr_Avcapturefigvi.isa) setUserPreferredCamera:camera forClientPreferenceDomain:domain];
    }

    else
    {
      v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
      if (AVCaptureShouldThrowForAPIViolations())
      {
        objc_exception_throw(v8);
      }

      NSLog(&cfstr_SuppressingExc.isa, v8);
    }
  }
}

uint64_t __68__AVCaptureDevice_setUserPreferredCamera_forClientPreferenceDomain___block_invoke()
{
  result = FigGetCFPreferenceBooleanWithDefault();
  sLogSetUserPreferredCameraBacktraceForClientPreferenceDomain = result != 0;
  return result;
}

+ (AVCaptureDevice)systemPreferredCamera
{
  v2 = NSClassFromString(&cfstr_Avcapturefigvi.isa);

  return [(objc_class *)v2 systemPreferredCamera];
}

+ (void)updateUserPreferredCameraOverrideHistoryWithDevice:(id)device setOverride:(BOOL)override
{
  overrideCopy = override;
  v6 = NSClassFromString(&cfstr_Avcapturefigvi.isa);

  [(objc_class *)v6 updateUserPreferredCameraOverrideHistoryWithDevice:device setOverride:overrideCopy];
}

+ (id)cameraInfoForCreatorID:(id)d uniqueID:(id)iD specialDeviceType:(unsigned int)type centerStageSupported:(BOOL)supported
{
  supportedCopy = supported;
  v7 = *&type;
  v10 = NSClassFromString(&cfstr_Avcapturefigvi.isa);

  return [(objc_class *)v10 cameraInfoForCreatorID:d uniqueID:iD specialDeviceType:v7 centerStageSupported:supportedCopy];
}

+ (void)updateUserPreferredCameraOverride:(BOOL)override cameraInfo:(id)info
{
  overrideCopy = override;
  v6 = NSClassFromString(&cfstr_Avcapturefigvi.isa);

  [(objc_class *)v6 updateUserPreferredCameraOverride:overrideCopy cameraInfo:info];
}

+ (AVCaptureDevice)deviceWithUniqueID:(NSString *)deviceUniqueID
{
  v4 = [self _devicesWithDeviceTypes:+[AVCaptureDeviceDiscoverySession allDeviceTypes](AVCaptureDeviceDiscoverySession mediaType:"allDeviceTypes") position:{0, 0}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  result = [v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if ([objc_msgSend(v9 "uniqueID")])
        {
          return v9;
        }

        v8 = (v8 + 1);
      }

      while (v6 != v8);
      result = [v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
      v6 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

+ (BOOL)allowsSuspendedPreferredCameras
{
  v2 = NSClassFromString(&cfstr_Avcapturefigvi.isa);
  if (!v2)
  {
    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D930];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"This is not supported on the base AVCaptureDevice class."];
    v6 = [v4 exceptionWithName:v5 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    objc_exception_throw(v6);
  }

  return [(objc_class *)v2 allowsSuspendedPreferredCameras];
}

+ (void)setAllowsSuspendedPreferredCameras:(BOOL)cameras
{
  camerasCopy = cameras;
  if (dword_1ED806A00)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = NSClassFromString(&cfstr_Avcapturefigvi.isa);
  if (!v5)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D930];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"This is not supported on the base AVCaptureDevice class."];
    v8 = [v6 exceptionWithName:v7 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    objc_exception_throw(v8);
  }

  [(objc_class *)v5 setAllowsSuspendedPreferredCameras:camerasCopy];
}

+ (void)_reconnectDevices:(id)devices
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  [MEMORY[0x1E696AEC0] stringWithFormat:@"This is not supported on the base AVCaptureDevice class."];
  v5 = [v3 exceptionWithName:v4 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  objc_exception_throw(v5);
}

+ (AVAuthorizationStatus)authorizationStatusForMediaType:(AVMediaType)mediaType
{
  if ([(NSString *)mediaType isEqualToString:*MEMORY[0x1E69875A0]])
  {
    v4 = 0;
    v5 = MEMORY[0x1E69D5588];
LABEL_8:
    v6 = *v5;
    goto LABEL_9;
  }

  if ([(NSString *)mediaType isEqualToString:*MEMORY[0x1E6987608]]|| [(NSString *)mediaType isEqualToString:@"pcld"])
  {
    if (FigCameraUsageProhibited())
    {
      AVCaptureGetCurrentProcessAuditToken(&v10);
      if (!FigCameraUsageAllowedForClient())
      {
        return 1;
      }
    }

    v4 = 0;
    v5 = MEMORY[0x1E69D5520];
    goto LABEL_8;
  }

  if (![(NSString *)mediaType isEqualToString:*MEMORY[0x1E69875D8]])
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:{0, mediaType}];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v9);
    }

    NSLog(&cfstr_SuppressingExc.isa, v9);
    return 2;
  }

  v6 = 0;
  v4 = AVCaptureEntitlementMetadataCameras;
LABEL_9:
  if (!(v6 | v4))
  {
    return 2;
  }

  if (!v6)
  {
    if (!v4 || (AVCaptureClientHasEntitlement(v4) & 1) == 0)
    {
      goto LABEL_20;
    }

    return 3;
  }

  FigCaptureGetTCCServer();
  v7 = FigCaptureTCCAccessPreflight();
  if (!v7)
  {
    return 3;
  }

  if (v7 != 1)
  {
    if (v7 == 2)
    {
      return (TCCAccessRestricted() != 0);
    }

    goto LABEL_20;
  }

  if (TCCAccessRestricted())
  {
    return 1;
  }

LABEL_20:
  if (AVCaptureIsRunningInXCTest())
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

+ (void)requestAccessForMediaType:(AVMediaType)mediaType completionHandler:(void *)handler
{
  if ([(NSString *)mediaType isEqualToString:*MEMORY[0x1E69875A0]])
  {
    mEMORY[0x1E6958460] = [MEMORY[0x1E6958460] sharedInstance];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __63__AVCaptureDevice_requestAccessForMediaType_completionHandler___block_invoke;
    v9[3] = &unk_1E786F600;
    v9[4] = handler;
    [mEMORY[0x1E6958460] requestRecordPermission:v9];
  }

  else if ([(NSString *)mediaType isEqualToString:*MEMORY[0x1E6987608]]|| [(NSString *)mediaType isEqualToString:@"pcld"])
  {
    if (FigCameraUsageProhibited() && (AVCaptureGetCurrentProcessAuditToken(&v8), !FigCameraUsageAllowedForClient()))
    {
      if (handler)
      {
        (*(handler + 2))(handler, 0);
      }
    }

    else
    {
      FigCaptureGetTCCServer();
      FigCaptureTCCAccessRequest();
    }
  }

  else
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:{0, mediaType}];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v7);
    }

    NSLog(&cfstr_SuppressingExc.isa, v7);
  }
}

uint64_t __63__AVCaptureDevice_requestAccessForMediaType_completionHandler___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    AVCaptureIsRunningInXCTest();
  }

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t __63__AVCaptureDevice_requestAccessForMediaType_completionHandler___block_invoke_2(uint64_t a1, int a2)
{
  if (a2 || AVCaptureIsRunningInXCTest())
  {
    os_unfair_lock_lock(&sRegisterVideoDevicesLock);
    v3 = [sRegisteredVideoDevices firstObject];
    os_unfair_lock_unlock(&sRegisterVideoDevicesLock);
    [v3 _checkTCCAccess];
  }

  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (id)initProxyDeviceWithUniqueID:(id)d targetClientAuditToken:(id *)token
{
  if (AVCaptureClientHasEntitlement(AVCaptureEntitlementProxyDevices))
  {
    if (FigCaptureSourceGetMediaTypeForUniqueID() == 1986618469)
    {
      v6 = objc_alloc(NSClassFromString(&cfstr_Avcapturefigvi.isa));
      v7 = *&token->var0[4];
      v10[0] = *token->var0;
      v10[1] = v7;
      return [v6 initProxyDeviceWithUniqueID:d targetClientAuditToken:v10];
    }
  }

  else
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v9);
    }

    NSLog(&cfstr_SuppressingExc.isa, v9);
  }

  return 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCaptureDevice;
  [(AVCaptureDevice *)&v3 dealloc];
}

+ (void)_releaseStaticResources
{
  if (dword_1ED806A00)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  os_unfair_lock_lock(&sRegisterVideoDevicesLock);
  if (sRegisteredVideoDevices)
  {

    sRegisteredVideoDevices = 0;
  }

  os_unfair_lock_unlock(&sRegisterVideoDevicesLock);
}

- (void)setFaceDetectionDrivenImageProcessingEnabled:(BOOL)enabled
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (CGRect)faceRectangle
{
  v2 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 8);
  v4 = *(MEMORY[0x1E695F058] + 16);
  v5 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setProvidesStortorgetMetadata:(BOOL)metadata
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (void)setLowLightVideoCaptureEnabled:(BOOL)enabled
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (void)setVariableFrameRateVideoCaptureEnabled:(BOOL)enabled
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (void)setAutoVideoFrameRateEnabled:(BOOL)enabled
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (void)setVideoStabilizationStrength:(int64_t)strength
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (void)setDigitalFlashMode:(int64_t)mode
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (void)setTimeLapseCaptureRate:(float)rate
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (void)setUltraHighResolutionZeroShutterLagEnabled:(BOOL)enabled
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (void)setActiveFormat:(AVCaptureDeviceFormat *)activeFormat
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (void)setActiveDepthDataFormat:(AVCaptureDeviceFormat *)activeDepthDataFormat
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (void)setActiveDepthDataMinFrameDuration:(CMTime *)activeDepthDataMinFrameDuration
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (void)setActiveVideoMinFrameDuration:(CMTime *)activeVideoMinFrameDuration
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (void)setActiveVideoMaxFrameDuration:(CMTime *)activeVideoMaxFrameDuration
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (BOOL)lockForConfiguration:(NSError *)outError
{
  internal = self->_internal;
  objc_sync_enter(internal);
  v6 = getpid();
  v7 = self->_internal;
  configLockPid = v7->configLockPid;
  if (configLockPid)
  {
    v9 = configLockPid == v6;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  if (v9)
  {
    v7->configLockPid = v6;
    ++self->_internal->configLockRefCount;
  }

  else if (outError)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInt:*MEMORY[0x1E6987400]];
    v13[1] = *MEMORY[0x1E69873D8];
    v14[0] = v11;
    v14[1] = self;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
    *outError = AVLocalizedError();
  }

  objc_sync_exit(internal);
  return v10;
}

- (BOOL)open:(id *)open
{
  if (open)
  {
    *open = 0;
  }

  internal = self->_internal;
  if (!internal->openRefCount)
  {
    [(AVCaptureDevice *)self willChangeValueForKey:@"open"];
    internal = self->_internal;
  }

  v6 = 1;
  if (!atomic_fetch_add_explicit(&internal->openRefCount, 1u, memory_order_relaxed))
  {
    v6 = [(AVCaptureDevice *)self _startUsingDevice:open];
    if (!v6)
    {
      v7 = self->_internal;
      openRefCount = v7->openRefCount;
      atomic_compare_exchange_strong_explicit(&v7->openRefCount, &openRefCount, 0, memory_order_relaxed, memory_order_relaxed);
    }

    [(AVCaptureDevice *)self didChangeValueForKey:@"open"];
  }

  return v6;
}

- (void)close
{
  internal = self->_internal;
  openRefCount = internal->openRefCount;
  if (openRefCount >= 1)
  {
    if (openRefCount == 1)
    {
      [(AVCaptureDevice *)self willChangeValueForKey:@"open"];
      internal = self->_internal;
    }

    if (atomic_fetch_add_explicit(&internal->openRefCount, 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      [(AVCaptureDevice *)self _stopUsingDevice];

      [(AVCaptureDevice *)self didChangeValueForKey:@"open"];
    }
  }
}

- (BOOL)_startUsingDevice:(id *)device
{
  if (device)
  {
    *device = 0;
  }

  if (self->_internal->usingDevice || ![(AVCaptureDevice *)self isOpen])
  {
    return 1;
  }

  if ([(AVCaptureDevice *)self isConnected])
  {
    if ([(AVCaptureDevice *)self startUsingDevice:device])
    {
      result = 1;
      self->_internal->usingDevice = 1;
      return result;
    }

    [AVCaptureDevice _startUsingDevice:];
  }

  else
  {
    if (device)
    {
      v9 = *MEMORY[0x1E69873D8];
      selfCopy = self;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&selfCopy forKeys:&v9 count:1];
      *device = AVLocalizedError();
    }

    v8 = v3;
    LODWORD(v7) = 0;
    FigDebugAssert3();
  }

  [(AVCaptureDevice *)self _stopUsingDevice:v7];
  return 0;
}

- (void)setFlashMode:(AVCaptureFlashMode)flashMode
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (void)setTorchMode:(AVCaptureTorchMode)torchMode
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (BOOL)setTorchModeOnWithLevel:(float)torchLevel error:(NSError *)outError
{
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v4);
  }

  NSLog(&cfstr_SuppressingExc.isa, v4);
  return 0;
}

- (void)setFocusMode:(AVCaptureFocusMode)focusMode
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (CGPoint)focusPointOfInterest
{
  v2 = 0.5;
  v3 = 0.5;
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)setFocusPointOfInterest:(CGPoint)focusPointOfInterest
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (CGSize)minFocusRectOfInterestSize
{
  v2 = 0.0;
  v3 = 0.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGRect)focusRectOfInterest
{
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 8);
  v4 = *(MEMORY[0x1E695F050] + 16);
  v5 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFocusRectOfInterest:(CGRect)interest
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (CGRect)defaultRectForFocusPointOfInterest:(CGPoint)interest
{
  v3 = *MEMORY[0x1E695F050];
  v4 = *(MEMORY[0x1E695F050] + 8);
  v5 = *(MEMORY[0x1E695F050] + 16);
  v6 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setAutoFocusRangeRestriction:(AVCaptureAutoFocusRangeRestriction)autoFocusRangeRestriction
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (void)setSmoothAutoFocusEnabled:(BOOL)smoothAutoFocusEnabled
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (void)setAutomaticallyAdjustsFaceDrivenAutoFocusEnabled:(BOOL)automaticallyAdjustsFaceDrivenAutoFocusEnabled
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (void)setFaceDrivenAutoFocusEnabled:(BOOL)faceDrivenAutoFocusEnabled
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (void)setFocusModeLockedWithLensPosition:(float)lensPosition completionHandler:(void *)handler
{
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v4);
  }

  NSLog(&cfstr_SuppressingExc.isa, v4);
}

- (void)setExposureMode:(AVCaptureExposureMode)exposureMode
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (CGPoint)exposurePointOfInterest
{
  v2 = 0.5;
  v3 = 0.5;
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)setExposurePointOfInterest:(CGPoint)exposurePointOfInterest
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (CGSize)minExposureRectOfInterestSize
{
  v2 = 0.0;
  v3 = 0.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGRect)exposureRectOfInterest
{
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 8);
  v4 = *(MEMORY[0x1E695F050] + 16);
  v5 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setExposureRectOfInterest:(CGRect)interest
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (CGRect)defaultRectForExposurePointOfInterest:(CGPoint)interest
{
  v3 = *MEMORY[0x1E695F050];
  v4 = *(MEMORY[0x1E695F050] + 8);
  v5 = *(MEMORY[0x1E695F050] + 16);
  v6 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setAutomaticallyAdjustsFaceDrivenAutoExposureEnabled:(BOOL)automaticallyAdjustsFaceDrivenAutoExposureEnabled
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (void)setFaceDrivenAutoExposureEnabled:(BOOL)faceDrivenAutoExposureEnabled
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (void)setActiveMaxExposureDuration:(CMTime *)activeMaxExposureDuration
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (void)setExposureModeCustomWithDuration:(CMTime *)duration ISO:(float)ISO completionHandler:(void *)handler
{
  v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v5);
  }

  NSLog(&cfstr_SuppressingExc.isa, v5);
}

- (void)setExposureTargetBias:(float)bias completionHandler:(void *)handler
{
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v4);
  }

  NSLog(&cfstr_SuppressingExc.isa, v4);
}

- (void)setGlobalToneMappingEnabled:(BOOL)globalToneMappingEnabled
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (void)setWhiteBalanceMode:(AVCaptureWhiteBalanceMode)whiteBalanceMode
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (AVCaptureWhiteBalanceGains)deviceWhiteBalanceGains
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  result.blueGain = v4;
  result.greenGain = v3;
  result.redGain = v2;
  return result;
}

- (AVCaptureWhiteBalanceGains)grayWorldDeviceWhiteBalanceGains
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  result.blueGain = v4;
  result.greenGain = v3;
  result.redGain = v2;
  return result;
}

- (void)setWhiteBalanceModeLockedWithDeviceWhiteBalanceTemperatureAndTintValues:(id)values completionHandler:(id)handler
{
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v4);
  }

  NSLog(&cfstr_SuppressingExc.isa, v4);
}

- (void)setWhiteBalanceModeLockedWithDeviceWhiteBalanceGains:(AVCaptureWhiteBalanceGains)whiteBalanceGains completionHandler:(void *)handler
{
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v4);
  }

  NSLog(&cfstr_SuppressingExc.isa, v4);
}

- (AVCaptureWhiteBalanceChromaticityValues)chromaticityValuesForDeviceWhiteBalanceGains:(AVCaptureWhiteBalanceGains)whiteBalanceGains
{
  v3 = 0.0;
  v4 = 0.0;
  result.y = v4;
  result.x = v3;
  return result;
}

- (AVCaptureWhiteBalanceGains)deviceWhiteBalanceGainsForChromaticityValues:(AVCaptureWhiteBalanceChromaticityValues)chromaticityValues
{
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.blueGain = v5;
  result.greenGain = v4;
  result.redGain = v3;
  return result;
}

- (AVCaptureWhiteBalanceTemperatureAndTintValues)temperatureAndTintValuesForDeviceWhiteBalanceGains:(AVCaptureWhiteBalanceGains)whiteBalanceGains
{
  v3 = 0.0;
  v4 = 0.0;
  result.tint = v4;
  result.temperature = v3;
  return result;
}

- (AVCaptureWhiteBalanceGains)deviceWhiteBalanceGainsForTemperatureAndTintValues:(AVCaptureWhiteBalanceTemperatureAndTintValues)tempAndTintValues
{
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.blueGain = v5;
  result.greenGain = v4;
  result.redGain = v3;
  return result;
}

- (void)setAutomaticallyAdjustsImageControlMode:(BOOL)mode
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (void)setImageControlMode:(int64_t)mode
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (void)setAutomaticallyAdjustsVideoHDREnabled:(BOOL)automaticallyAdjustsVideoHDREnabled
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (void)setVideoHDREnabled:(BOOL)videoHDREnabled
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (void)setVideoHDRSuspended:(BOOL)suspended
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (void)setActiveColorSpace:(AVCaptureColorSpace)activeColorSpace
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (void)setVideoZoomFactor:(CGFloat)videoZoomFactor
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (void)rampToVideoZoomFactor:(CGFloat)factor withRate:(float)rate
{
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v4);
  }

  NSLog(&cfstr_SuppressingExc.isa, v4);
}

- (void)rampExponentiallyToVideoZoomFactor:(float)factor withDuration:(double)duration
{
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v4);
  }

  NSLog(&cfstr_SuppressingExc.isa, v4);
}

- (void)rampToVideoZoomFactor:(float)factor withTuning:(int64_t)tuning
{
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v4);
  }

  NSLog(&cfstr_SuppressingExc.isa, v4);
}

- (void)cancelVideoZoomRamp
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v2);
  }

  NSLog(&cfstr_SuppressingExc.isa, v2);
}

- (void)setMaxAvailableVideoZoomFactorOverride:(double)override
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (void)setGeometricDistortionCorrectionEnabled:(BOOL)geometricDistortionCorrectionEnabled
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

+ (NSData)extrinsicMatrixFromDevice:(AVCaptureDevice *)fromDevice toDevice:(AVCaptureDevice *)toDevice
{
  cameraPoseMatrix = [(AVCaptureDevice *)fromDevice cameraPoseMatrix];
  cameraPoseMatrix2 = [(AVCaptureDevice *)toDevice cameraPoseMatrix];
  if (!fromDevice)
  {
    v23 = MEMORY[0x1E695DF30];
    v24 = *MEMORY[0x1E695D940];
LABEL_11:
    v25 = [v23 exceptionWithName:v24 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v25);
    }

    NSLog(&cfstr_SuppressingExc.isa, v25);
    return 0;
  }

  if (!toDevice)
  {
    v23 = MEMORY[0x1E695DF30];
    v24 = *MEMORY[0x1E695D940];
    goto LABEL_11;
  }

  v8 = cameraPoseMatrix2;
  if ([cameraPoseMatrix length] != 64)
  {
    return 0;
  }

  if ([v8 length] != 64)
  {
    return 0;
  }

  position = [(AVCaptureDevice *)fromDevice position];
  if (position != [(AVCaptureDevice *)toDevice position])
  {
    return 0;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  [cameraPoseMatrix getBytes:&v34 length:{objc_msgSend(cameraPoseMatrix, "length")}];
  [v8 getBytes:&v30 length:{objc_msgSend(v8, "length")}];
  v10 = 0;
  v11 = vzip1q_s32(v30, v31);
  v11.i32[2] = v32.i32[0];
  v12 = vzip2q_s32(vzip1q_s32(v30, v32), vdupq_lane_s32(*v31.i8, 1));
  v13 = vzip2q_s32(v30, v31);
  v13.i32[2] = v32.i32[2];
  v38[0] = v34;
  v38[1] = v35;
  v38[2] = v36;
  memset(v39, 0, sizeof(v39));
  do
  {
    v39[v10] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v11, COERCE_FLOAT(v38[v10])), v12, *&v38[v10], 1), v13, v38[v10], 2);
    ++v10;
  }

  while (v10 != 3);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  FigCaptureFirmwareToNVMExtrinsicMatrixTransform();
  FigCaptureTransformExtrinsicMatrix();
  DWORD2(v26) = v14;
  DWORD2(v27) = v15;
  *&v26 = v16;
  *&v27 = v17;
  DWORD2(v28) = v18;
  DWORD2(v29) = v19;
  *&v28 = v20;
  *&v29 = v21;
  return [MEMORY[0x1E695DEF0] dataWithBytes:&v26 length:64];
}

+ (BOOL)defaultCenterStageEnabledForBundleID:(id)d
{
  _centerStageAllowList = [self _centerStageAllowList];

  return [_centerStageAllowList containsObject:d];
}

+ (void)_cinematicFramingEnabledChanged:(id)changed
{
  [self setupKVOLoggingOnce];
  if (sDetailedKVOOverrideLogging == 1)
  {
    v21 = 0;
    FigCopyBacktrace();
    if (dword_1ED806A00)
    {
      v20 = 0;
      v19 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v21)
    {
      CFRelease(v21);
    }
  }

  _defaultCenterStageEnabled = [self _defaultCenterStageEnabled];
  if (changed)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _defaultCenterStageEnabled = [changed BOOLValue];
    }
  }

  os_unfair_lock_lock(&sCenterStageLock);
  v7 = sCenterStageEnabled;
  os_unfair_lock_unlock(&sCenterStageLock);
  if (v7 != _defaultCenterStageEnabled)
  {
    [self willChangeValueForKey:@"cinematicFramingEnabled"];
    [self willChangeValueForKey:@"centerStageEnabled"];
    os_unfair_lock_lock(&sCenterStageLock);
    sCenterStageEnabled = _defaultCenterStageEnabled;
    os_unfair_lock_unlock(&sCenterStageLock);
    if (dword_1ED806A00)
    {
      LODWORD(v21) = 0;
      LOBYTE(v20) = 0;
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v9 = v21;
      if (os_log_type_enabled(v8, v20))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
        v15 = 136315394;
        v16 = "+[AVCaptureDevice _cinematicFramingEnabledChanged:]";
        v17 = 1024;
        LODWORD(v18) = _defaultCenterStageEnabled;
        LODWORD(v14) = 18;
        v12 = &v15;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [self didChangeValueForKey:{@"centerStageEnabled", v12, v14}];
    [self didChangeValueForKey:@"cinematicFramingEnabled"];
  }
}

+ (AVCaptureCenterStageControlMode)centerStageControlMode
{
  [self setUpCenterStageStateOnce];
  os_unfair_lock_lock(&sCenterStageLock);
  v2 = sCenterStageControlMode;
  os_unfair_lock_unlock(&sCenterStageLock);
  return v2;
}

+ (void)setCenterStageControlMode:(AVCaptureCenterStageControlMode)centerStageControlMode
{
  [self setUpCenterStageStateOnce];
  if (centerStageControlMode >= (AVCaptureCenterStageControlModeCooperative|AVCaptureCenterStageControlModeApp))
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v6);
    }

    NSLog(&cfstr_SuppressingExc.isa, v6);
  }

  else
  {
    [self willChangeValueForKey:@"centerStageControlMode"];
    os_unfair_lock_lock(&sCenterStageLock);
    sCenterStageControlMode = centerStageControlMode;
    os_unfair_lock_unlock(&sCenterStageLock);
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:centerStageControlMode];
    [AVCaptureProprietaryDefaultsSingleton setObject:v5 forKey:sCenterStageControlModeKey];

    [self didChangeValueForKey:@"centerStageControlMode"];
  }
}

+ (void)setCenterStageEnabled:(BOOL)centerStageEnabled
{
  v3 = centerStageEnabled;
  [self setUpCenterStageStateOnce];
  if ([self centerStageControlMode])
  {
    if (dword_1ED806A00)
    {
      v20 = 0;
      v19 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v7 = [MEMORY[0x1E696AD98] numberWithBool:{v3, v13, v14}];
    [AVCaptureProprietaryDefaultsSingleton setObject:v7 forKey:sCenterStageEnabledKey];
    os_unfair_lock_lock(&sCenterStageLock);
    v8 = sCenterStageEnabled;
    os_unfair_lock_unlock(&sCenterStageLock);
    if (dword_1ED806A00)
    {
      v20 = 0;
      v19 = OS_LOG_TYPE_DEFAULT;
      v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v10 = v20;
      if (os_log_type_enabled(v9, v19))
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 & 0xFFFFFFFE;
      }

      if (v11)
      {
        v12 = @"NO";
        if (v8 == v3)
        {
          v12 = @"YES";
        }

        v15 = 136315394;
        v16 = "+[AVCaptureDevice setCenterStageEnabled:]";
        v17 = 2112;
        v18 = v12;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v6);
    }

    NSLog(&cfstr_SuppressingExc.isa, v6);
  }
}

- (CGRect)centerStageRectOfInterest
{
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 8);
  v4 = *(MEMORY[0x1E695F050] + 16);
  v5 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

+ (int64_t)centerStageFramingMode
{
  [self setUpCenterStageStateOnce];
  os_unfair_lock_lock(&sCenterStageLock);
  v2 = sCenterStageFramingMode;
  os_unfair_lock_unlock(&sCenterStageLock);
  return v2;
}

+ (void)setCenterStageFramingMode:(int64_t)mode
{
  [self setUpCenterStageStateOnce];
  os_unfair_lock_lock(&sCenterStageLock);
  v5 = sSettingCenterStageFramingModeMyself;
  v6 = sCenterStageFramingMode;
  os_unfair_lock_unlock(&sCenterStageLock);
  if ((v5 & 1) != 0 || v6 == mode)
  {
    if (dword_1ED806A00)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    [self willChangeValueForKey:@"centerStageFramingMode"];
    os_unfair_lock_lock(&sCenterStageLock);
    sCenterStageFramingMode = mode;
    sSettingCenterStageFramingModeMyself = 1;
    os_unfair_lock_unlock(&sCenterStageLock);
    [self didChangeValueForKey:@"centerStageFramingMode"];
    os_unfair_lock_lock(&sCenterStageLock);
    sSettingCenterStageFramingModeMyself = 0;

    os_unfair_lock_unlock(&sCenterStageLock);
  }
}

+ (void)_backgroundBlurEnabledChanged:(id)changed
{
  [self setupKVOLoggingOnce];
  if (sDetailedKVOOverrideLogging == 1)
  {
    v19 = 0;
    FigCopyBacktrace();
    if (dword_1ED806A00)
    {
      v18 = 0;
      v17 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v19)
    {
      CFRelease(v19);
    }
  }

  if (changed && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [changed BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  os_unfair_lock_lock(&sBackgroundBlurLock);
  v7 = sBackgroundBlurEnabled;
  os_unfair_lock_unlock(&sBackgroundBlurLock);
  if (v7 != bOOLValue)
  {
    [self willChangeValueForKey:@"backgroundBlurEnabled"];
    [self willChangeValueForKey:@"portraitEffectEnabled"];
    os_unfair_lock_lock(&sBackgroundBlurLock);
    sBackgroundBlurEnabled = bOOLValue;
    os_unfair_lock_unlock(&sBackgroundBlurLock);
    if (dword_1ED806A00)
    {
      LODWORD(v19) = 0;
      LOBYTE(v18) = 0;
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v9 = v19;
      if (os_log_type_enabled(v8, v18))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
        v13 = 136315394;
        v14 = "+[AVCaptureDevice _backgroundBlurEnabledChanged:]";
        v15 = 1024;
        LODWORD(v16) = bOOLValue;
        LODWORD(v12) = 18;
        v11 = &v13;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [self didChangeValueForKey:{@"portraitEffectEnabled", v11, v12}];
    [self didChangeValueForKey:@"backgroundBlurEnabled"];
  }
}

+ (int64_t)backgroundBlurControlMode
{
  [self setUpBackgroundBlurStateOnce];
  os_unfair_lock_lock(&sBackgroundBlurLock);
  v2 = sBackgroundBlurControlMode;
  os_unfair_lock_unlock(&sBackgroundBlurLock);
  return v2;
}

+ (void)setBackgroundBlurControlMode:(int64_t)mode
{
  [self setUpBackgroundBlurStateOnce];
  if ((AVCaptureCurrentClientIsFaceTimeVariant() & 1) != 0 || (AVCaptureClientIsContinuityCapture() & 1) != 0 || (AVCaptureIsRunningInXCTest() & 1) != 0 || (AVCaptureClientIsInternalTestTool() & 1) != 0 || AVCaptureTemporaryHackToAllowPortraitBlurSeeRadar78740254())
  {
    if (mode < 3)
    {
LABEL_7:
      [self willChangeValueForKey:@"backgroundBlurControlMode"];
      os_unfair_lock_lock(&sBackgroundBlurLock);
      sBackgroundBlurControlMode = mode;
      os_unfair_lock_unlock(&sBackgroundBlurLock);
      v5 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
      [AVCaptureProprietaryDefaultsSingleton setObject:v5 forKey:sBackgroundBlurControlModeKey];

      [self didChangeValueForKey:@"backgroundBlurControlMode"];
      return;
    }
  }

  else if (!mode)
  {
    goto LABEL_7;
  }

  v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v6);
  }

  NSLog(&cfstr_SuppressingExc.isa, v6);
}

+ (void)setBackgroundBlurEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  [self setUpBackgroundBlurStateOnce];
  if ([self backgroundBlurControlMode])
  {
    if (dword_1ED806A00)
    {
      v20 = 0;
      v19 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v7 = [MEMORY[0x1E696AD98] numberWithBool:{enabledCopy, v13, v14}];
    [AVCaptureProprietaryDefaultsSingleton setObject:v7 forKey:sBackgroundBlurEnabledKey];
    os_unfair_lock_lock(&sBackgroundBlurLock);
    v8 = sBackgroundBlurEnabled;
    os_unfair_lock_unlock(&sBackgroundBlurLock);
    if (dword_1ED806A00)
    {
      v20 = 0;
      v19 = OS_LOG_TYPE_DEFAULT;
      v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v10 = v20;
      if (os_log_type_enabled(v9, v19))
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 & 0xFFFFFFFE;
      }

      if (v11)
      {
        v12 = @"NO";
        if (v8 == enabledCopy)
        {
          v12 = @"YES";
        }

        v15 = 136315394;
        v16 = "+[AVCaptureDevice setBackgroundBlurEnabled:]";
        v17 = 2112;
        v18 = v12;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v6);
    }

    NSLog(&cfstr_SuppressingExc.isa, v6);
  }
}

+ (BOOL)isEligibleForBackgroundBlur
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__AVCaptureDevice_isEligibleForBackgroundBlur__block_invoke;
  block[3] = &unk_1E786EC08;
  block[4] = self;
  if (isEligibleForBackgroundBlur_onceToken != -1)
  {
    dispatch_once(&isEligibleForBackgroundBlur_onceToken, block);
  }

  return isEligibleForBackgroundBlur_sIsEligibleForBackgroundBlur;
}

uint64_t __46__AVCaptureDevice_isEligibleForBackgroundBlur__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _checkEligibilityForEffect:AVCaptureBundleCameraPortraitEffectEnabledKey];
  isEligibleForBackgroundBlur_sIsEligibleForBackgroundBlur = result;
  return result;
}

+ (void)_backgroundBlurApertureChanged:(id)changed
{
  v4 = 3.0;
  if (changed)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [changed floatValue];
      v4 = v6;
    }
  }

  os_unfair_lock_lock(&sBackgroundBlurLock);
  v7 = sSettingBackgroundBlurApertureMyself;
  v8 = *&sBackgroundBlurAperture;
  os_unfair_lock_unlock(&sBackgroundBlurLock);
  if ((v7 & 1) == 0 && v8 != v4)
  {
    [self willChangeValueForKey:@"backgroundBlurAperture"];
    os_unfair_lock_lock(&sBackgroundBlurLock);
    sBackgroundBlurAperture = LODWORD(v4);
    os_unfair_lock_unlock(&sBackgroundBlurLock);

    [self didChangeValueForKey:@"backgroundBlurAperture"];
  }
}

+ (void)setBackgroundBlurAperture:(float)aperture
{
  [self setUpBackgroundBlurStateOnce];
  if ([self backgroundBlurControlMode])
  {
    if (aperture >= 2.0 && aperture <= 4.0)
    {
      [self willChangeValueForKey:@"backgroundBlurAperture"];
      os_unfair_lock_lock(&sBackgroundBlurLock);
      sBackgroundBlurAperture = LODWORD(aperture);
      sSettingBackgroundBlurApertureMyself = 1;
      os_unfair_lock_unlock(&sBackgroundBlurLock);
      *&v9 = aperture;
      v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
      [AVCaptureProprietaryDefaultsSingleton setObject:v10 forKey:sBackgroundBlurApertureKey];
      os_unfair_lock_lock(&sBackgroundBlurLock);
      sSettingBackgroundBlurApertureMyself = 0;
      os_unfair_lock_unlock(&sBackgroundBlurLock);

      [self didChangeValueForKey:@"backgroundBlurAperture"];
      return;
    }

    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
  }

  else
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
  }

  v8 = [v6 exceptionWithName:v7 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v8);
  }

  NSLog(&cfstr_SuppressingExc.isa, v8);
}

+ (AudioValueRange)backgroundBlurApertureRange
{
  v2 = 2.0;
  v3 = 4.0;
  result.mMaximum = v3;
  result.mMinimum = v2;
  return result;
}

+ (int64_t)studioLightingControlMode
{
  [self setUpStudioLightingStateOnce];
  os_unfair_lock_lock(&sBackgroundBlurLock);
  v2 = sStudioLightingControlMode;
  os_unfair_lock_unlock(&sBackgroundBlurLock);
  return v2;
}

+ (void)setStudioLightingControlMode:(int64_t)mode
{
  [self setUpStudioLightingStateOnce];
  if ((AVCaptureClientIsContinuityCapture() & 1) != 0 || (AVCaptureIsRunningInXCTest() & 1) != 0 || (AVCaptureClientIsInternalTestTool() & 1) != 0 || (IsFaceTimeVariant = AVCaptureCurrentClientIsFaceTimeVariant(), v6 = mode, IsFaceTimeVariant))
  {
    v6 = mode & 0xFFFFFFFFFFFFFFFDLL;
  }

  if (v6)
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v7);
    }

    NSLog(&cfstr_SuppressingExc.isa, v7);
  }

  else
  {
    [self willChangeValueForKey:@"studioLightingControlMode"];
    os_unfair_lock_lock(&sBackgroundBlurLock);
    sStudioLightingControlMode = mode;
    os_unfair_lock_unlock(&sBackgroundBlurLock);
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
    [AVCaptureProprietaryDefaultsSingleton setObject:v8 forKey:sStudioLightingControlModeKey];

    [self didChangeValueForKey:@"studioLightingControlMode"];
  }
}

+ (void)setStudioLightingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  [self setUpStudioLightingStateOnce];
  if ([self studioLightingControlMode])
  {
    if (dword_1ED806A00)
    {
      v20 = 0;
      v19 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v7 = [MEMORY[0x1E696AD98] numberWithBool:{enabledCopy, v13, v14}];
    [AVCaptureProprietaryDefaultsSingleton setObject:v7 forKey:sStudioLightingEnabledKey];
    os_unfair_lock_lock(&sBackgroundBlurLock);
    v8 = sStudioLightingEnabled;
    os_unfair_lock_unlock(&sBackgroundBlurLock);
    if (dword_1ED806A00)
    {
      v20 = 0;
      v19 = OS_LOG_TYPE_DEFAULT;
      v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v10 = v20;
      if (os_log_type_enabled(v9, v19))
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 & 0xFFFFFFFE;
      }

      if (v11)
      {
        v12 = @"NO";
        if (v8 == enabledCopy)
        {
          v12 = @"YES";
        }

        v15 = 136315394;
        v16 = "+[AVCaptureDevice setStudioLightingEnabled:]";
        v17 = 2112;
        v18 = v12;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v6);
    }

    NSLog(&cfstr_SuppressingExc.isa, v6);
  }
}

+ (BOOL)isEligibleForStudioLighting
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__AVCaptureDevice_isEligibleForStudioLighting__block_invoke;
  block[3] = &unk_1E786EC08;
  block[4] = self;
  if (isEligibleForStudioLighting_onceToken != -1)
  {
    dispatch_once(&isEligibleForStudioLighting_onceToken, block);
  }

  return isEligibleForStudioLighting_sIsEligibleForStudioLighting;
}

uint64_t __46__AVCaptureDevice_isEligibleForStudioLighting__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _checkEligibilityForEffect:AVCaptureBundleCameraStudioLightEnabledKey];
  isEligibleForStudioLighting_sIsEligibleForStudioLighting = result;
  return result;
}

+ (void)_studioLightEnabledChanged:(id)changed
{
  [self setupKVOLoggingOnce];
  if (sDetailedKVOOverrideLogging == 1)
  {
    v18 = 0;
    FigCopyBacktrace();
    if (dword_1ED806A00)
    {
      v17 = 0;
      v16 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v18)
    {
      CFRelease(v18);
    }
  }

  if (changed)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      LODWORD(changed) = [changed BOOLValue];
    }

    else
    {
      LODWORD(changed) = 0;
    }
  }

  os_unfair_lock_lock(&sBackgroundBlurLock);
  v6 = sStudioLightingEnabled;
  os_unfair_lock_unlock(&sBackgroundBlurLock);
  if (v6 != changed)
  {
    [self willChangeValueForKey:@"studioLightingEnabled"];
    [self willChangeValueForKey:@"studioLightEnabled"];
    os_unfair_lock_lock(&sBackgroundBlurLock);
    sStudioLightingEnabled = changed;
    os_unfair_lock_unlock(&sBackgroundBlurLock);
    if (dword_1ED806A00)
    {
      LODWORD(v18) = 0;
      LOBYTE(v17) = 0;
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v8 = v18;
      if (os_log_type_enabled(v7, v17))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
        v12 = 136315394;
        v13 = "+[AVCaptureDevice _studioLightEnabledChanged:]";
        v14 = 1024;
        LODWORD(v15) = sStudioLightingEnabled;
        LODWORD(v11) = 18;
        v10 = &v12;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [self didChangeValueForKey:{@"studioLightEnabled", v10, v11}];
    [self didChangeValueForKey:@"studioLightingEnabled"];
  }
}

+ (void)setPortraitEffectStudioLightQuality:(int64_t)quality
{
  [self willChangeValueForKey:@"portraitEffectStudioLightQuality"];
  os_unfair_lock_lock(&sBackgroundBlurLock);
  sPortraitEffectStudioLightQuality = quality;
  os_unfair_lock_unlock(&sBackgroundBlurLock);

  [self didChangeValueForKey:@"portraitEffectStudioLightQuality"];
}

+ (void)_studioLightingIntensityChanged:(id)changed
{
  v4 = 0.5;
  if (changed)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [changed floatValue];
      v4 = v6;
    }
  }

  os_unfair_lock_lock(&sBackgroundBlurLock);
  v7 = sSettingStudioLightingIntensityMyself;
  v8 = *&sStudioLightingIntensity;
  os_unfair_lock_unlock(&sBackgroundBlurLock);
  if ((v7 & 1) == 0 && v8 != v4)
  {
    [self willChangeValueForKey:@"studioLightingIntensity"];
    os_unfair_lock_lock(&sBackgroundBlurLock);
    sStudioLightingIntensity = LODWORD(v4);
    os_unfair_lock_unlock(&sBackgroundBlurLock);

    [self didChangeValueForKey:@"studioLightingIntensity"];
  }
}

+ (void)setStudioLightingIntensity:(float)intensity
{
  [self setUpStudioLightingStateOnce];
  if ([self studioLightingControlMode])
  {
    if (intensity >= 0.0 && intensity <= 1.0)
    {
      [self willChangeValueForKey:@"studioLightingIntensity"];
      os_unfair_lock_lock(&sBackgroundBlurLock);
      sStudioLightingIntensity = LODWORD(intensity);
      sSettingStudioLightingIntensityMyself = 1;
      os_unfair_lock_unlock(&sBackgroundBlurLock);
      *&v9 = intensity;
      v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
      [AVCaptureProprietaryDefaultsSingleton setObject:v10 forKey:sStudioLightingIntensityKey];
      os_unfair_lock_lock(&sBackgroundBlurLock);
      sSettingStudioLightingIntensityMyself = 0;
      os_unfair_lock_unlock(&sBackgroundBlurLock);

      [self didChangeValueForKey:@"studioLightingIntensity"];
      return;
    }

    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
  }

  else
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
  }

  v8 = [v6 exceptionWithName:v7 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v8);
  }

  NSLog(&cfstr_SuppressingExc.isa, v8);
}

+ (void)_reactionsEnabledChanged:(id)changed
{
  [self setupKVOLoggingOnce];
  if (sDetailedKVOOverrideLogging == 1)
  {
    v21 = 0;
    FigCopyBacktrace();
    if (dword_1ED806A00)
    {
      v20 = 0;
      v19 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v21)
    {
      CFRelease(v21);
    }
  }

  bOOLValue = [AVCaptureDevice reactionEffectsEnabledDefault:v11];
  if (changed)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [changed BOOLValue];
    }
  }

  os_unfair_lock_lock(&sReactionsLock);
  v7 = sReactionsEnabled;
  os_unfair_lock_unlock(&sReactionsLock);
  if (v7 != bOOLValue)
  {
    [self willChangeValueForKey:@"reactionEffectsEnabled"];
    os_unfair_lock_lock(&sReactionsLock);
    sReactionsEnabled = bOOLValue;
    os_unfair_lock_unlock(&sReactionsLock);
    if (dword_1ED806A00)
    {
      LODWORD(v21) = 0;
      LOBYTE(v20) = 0;
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v9 = v21;
      if (os_log_type_enabled(v8, v20))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
        v15 = 136315394;
        v16 = "+[AVCaptureDevice _reactionsEnabledChanged:]";
        v17 = 1024;
        LODWORD(v18) = bOOLValue;
        LODWORD(v14) = 18;
        v12 = &v15;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [self didChangeValueForKey:{@"reactionEffectsEnabled", v12, v14}];
  }
}

+ (void)_gesturesEnabledChanged:(id)changed
{
  selfCopy = self;
  [self setupKVOLoggingOnce];
  if (sDetailedKVOOverrideLogging == 1)
  {
    v23 = 0;
    FigCopyBacktrace();
    if (dword_1ED806A00)
    {
      v22 = 0;
      v21 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v23)
    {
      CFRelease(v23);
    }
  }

  bOOLValue = [AVCaptureDevice reactionEffectGesturesEnabledDefault:v13];
  if (changed)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [changed BOOLValue];
    }
  }

  os_unfair_lock_lock(&sReactionsLock);
  v7 = sGesturesEnabled;
  os_unfair_lock_unlock(&sReactionsLock);
  if (v7 != bOOLValue)
  {
    v8 = sSuppressedGesturesEnabled;
    if (sSuppressedGesturesEnabled == 1)
    {
      [selfCopy willChangeValueForKey:@"reactionEffectSuppressedGesturesEnabled"];
    }

    [selfCopy willChangeValueForKey:@"reactionEffectGesturesEnabled"];
    os_unfair_lock_lock(&sReactionsLock);
    sGesturesEnabled = bOOLValue;
    sSuppressedGesturesEnabled = 0;
    os_unfair_lock_unlock(&sReactionsLock);
    if (dword_1ED806A00)
    {
      v9 = selfCopy;
      LODWORD(v23) = 0;
      LOBYTE(v22) = 0;
      v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v11 = v23;
      if (os_log_type_enabled(v10, v22))
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 & 0xFFFFFFFE;
      }

      if (v12)
      {
        v17 = 136315394;
        v18 = "+[AVCaptureDevice _gesturesEnabledChanged:]";
        v19 = 1024;
        LODWORD(v20) = bOOLValue;
        LODWORD(v16) = 18;
        v14 = &v17;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      selfCopy = v9;
    }

    [selfCopy didChangeValueForKey:{@"reactionEffectGesturesEnabled", v14, v16}];
    if (v8)
    {
      [selfCopy didChangeValueForKey:@"reactionEffectSuppressedGesturesEnabled"];
    }
  }
}

+ (void)_reactionTriggered:(id)triggered
{
  v4 = [triggered objectForKeyedSubscript:@"AVControlCenterModulesNotificationDeviceIdentifierKey"];
  if (v4)
  {
    v5 = [AVCaptureDevice deviceWithUniqueID:v4];
    if (v5)
    {
      v6 = v5;
      v7 = [triggered objectForKeyedSubscript:@"AVControlCenterModulesNotificationReactionTypeKey"];
      +[AVCaptureDevice setUpReactionEffectsStateOnce];
      if ([sAvailableReactions containsObject:v7])
      {

        [(AVCaptureDevice *)v6 _performReaction:v7];
      }

      else
      {
        +[AVCaptureDevice _reactionTriggered:];
      }
    }

    else
    {
      +[AVCaptureDevice _reactionTriggered:];
    }
  }

  else
  {
    +[AVCaptureDevice _reactionTriggered:];
  }
}

+ (void)_reactionsInProgressChangedByControlCenter:(id)center
{
  v4 = [center objectForKeyedSubscript:@"AVControlCenterModulesNotificationDeviceIdentifierKey"];
  if (v4)
  {
    v5 = [AVCaptureDevice deviceWithUniqueID:v4];
    if (v5)
    {
      v6 = v5;
      v7 = [center objectForKeyedSubscript:@"AVControlCenterModulesNotificationReactionEffectsInProgressKey"];
      if (v7)
      {

        [(AVCaptureDevice *)v6 updateReactionsInProgress:v7];
      }

      else
      {
        +[AVCaptureDevice _reactionsInProgressChangedByControlCenter:];
      }
    }

    else
    {
      +[AVCaptureDevice _reactionsInProgressChangedByControlCenter:];
    }
  }

  else
  {
    +[AVCaptureDevice _reactionsInProgressChangedByControlCenter:];
  }
}

- (void)updateReactionsInProgress:(id)progress
{
  os_unfair_lock_lock(&sReactionsLock);
  v5 = self->_internal->activeReactions;
  os_unfair_lock_unlock(&sReactionsLock);
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(progress, "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = [progress countByEnumeratingWithState:&v28 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(progress);
        }

        v11 = [[AVCaptureReactionEffectState alloc] initFromDictionary:*(*(&v28 + 1) + 8 * i)];
        if (v11)
        {
          v12 = v11;
          [v6 addObject:v11];
        }
      }

      v8 = [progress countByEnumeratingWithState:&v28 objects:v27 count:16];
    }

    while (v8);
  }

  v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v14 = 0;
  v15 = 0;
  v16 = MEMORY[0x1E6960C68];
  while (v14 < -[NSMutableArray count](v5, "count") || v15 < [v6 count])
  {
    if (v14 >= [(NSMutableArray *)v5 count])
    {
      v17 = [v6 objectAtIndexedSubscript:v15];
      goto LABEL_23;
    }

    if (v15 >= [v6 count])
    {
      v21 = [(NSMutableArray *)v5 objectAtIndexedSubscript:v14];
      time = *v16;
LABEL_29:
      [v21 setEndTime:&time];
      goto LABEL_33;
    }

    v17 = [v6 objectAtIndexedSubscript:v15];
    v18 = [(NSMutableArray *)v5 objectAtIndexedSubscript:v14];
    v19 = v18;
    if (v17)
    {
      [v17 startTime];
      if (!v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      memset(&lhs, 0, sizeof(lhs));
      if (!v18)
      {
LABEL_20:
        memset(&rhs, 0, sizeof(rhs));
        goto LABEL_21;
      }
    }

    [v19 startTime];
LABEL_21:
    CMTimeSubtract(&time, &lhs, &rhs);
    Seconds = CMTimeGetSeconds(&time);
    if (fabsf(Seconds) < 0.0001)
    {
      if (!v17)
      {
        v23 = 0;
LABEL_31:
        [v13 addObject:v19];
        goto LABEL_32;
      }

      [v17 endTime];
      if ((v23 & 1) == 0)
      {
        goto LABEL_31;
      }

      [v17 endTime];
      time = v22;
      [v19 setEndTime:&time];
LABEL_32:
      ++v15;
LABEL_33:
      ++v14;
    }

    else
    {
      if (Seconds >= 0.0)
      {
        time = *v16;
        v21 = v19;
        goto LABEL_29;
      }

LABEL_23:
      [v13 addObject:v17];
      ++v15;
    }
  }

  [(AVCaptureDevice *)self willChangeValueForKey:@"reactionEffectsInProgress"];
  os_unfair_lock_lock(&sReactionsLock);

  self->_internal->activeReactions = v13;
  os_unfair_lock_unlock(&sReactionsLock);
  [(AVCaptureDevice *)self didChangeValueForKey:@"reactionEffectsInProgress"];
}

+ (void)setReactionEffectsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  [self setUpReactionEffectsStateOnce];
  if (dword_1ED806A00)
  {
    v18 = 0;
    v17 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{enabledCopy, v11, v12}];
  [AVCaptureProprietaryDefaultsSingleton setObject:v5 forKey:sReactionsEnabledKey];
  os_unfair_lock_lock(&sReactionsLock);
  v6 = sReactionsEnabled;
  os_unfair_lock_unlock(&sReactionsLock);
  if (dword_1ED806A00)
  {
    v18 = 0;
    v17 = OS_LOG_TYPE_DEFAULT;
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v8 = v18;
    if (os_log_type_enabled(v7, v17))
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 & 0xFFFFFFFE;
    }

    if (v9)
    {
      v10 = @"NO";
      if (v6 == enabledCopy)
      {
        v10 = @"YES";
      }

      v13 = 136315394;
      v14 = "+[AVCaptureDevice setReactionEffectsEnabled:]";
      v15 = 2112;
      v16 = v10;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

+ (void)setReactionEffectGesturesEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  [self setUpReactionEffectsStateOnce];
  if (dword_1ED806A00)
  {
    v18 = 0;
    v17 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{enabledCopy, v11, v12}];
  [AVCaptureProprietaryDefaultsSingleton setObject:v5 forKey:sGesturesEnabledKey];
  os_unfair_lock_lock(&sReactionsLock);
  v6 = sGesturesEnabled;
  os_unfair_lock_unlock(&sReactionsLock);
  if (dword_1ED806A00)
  {
    v18 = 0;
    v17 = OS_LOG_TYPE_DEFAULT;
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v8 = v18;
    if (os_log_type_enabled(v7, v17))
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 & 0xFFFFFFFE;
    }

    if (v9)
    {
      v10 = @"NO";
      if (v6 == enabledCopy)
      {
        v10 = @"YES";
      }

      v13 = 136315394;
      v14 = "+[AVCaptureDevice setReactionEffectGesturesEnabled:]";
      v15 = 2112;
      v16 = v10;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

+ (void)setReactionEffectSuppressedGesturesEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  [self setUpReactionEffectsStateOnce];
  if (sSuppressedGesturesEnabled != enabledCopy)
  {
    [self willChangeValueForKey:@"reactionEffectSuppressedGesturesEnabled"];
    os_unfair_lock_lock(&sReactionsLock);
    sSuppressedGesturesEnabled = enabledCopy;
    os_unfair_lock_unlock(&sReactionsLock);
    if (enabledCopy)
    {
      [AVCaptureDevice setReactionEffectSuppressedGesture:0];
    }

    [self didChangeValueForKey:@"reactionEffectSuppressedGesturesEnabled"];
  }
}

+ (void)setReactionEffectSuppressedGesture:(BOOL)gesture
{
  gestureCopy = gesture;
  [self setUpReactionEffectsStateOnce];
  if (sSuppressedGesture != gestureCopy)
  {
    [AVCaptureDevice willChangeValueForKey:@"reactionEffectSuppressedGesture"];
    os_unfair_lock_lock(&sReactionsLock);
    sSuppressedGesture = gestureCopy;
    os_unfair_lock_unlock(&sReactionsLock);
    if (gestureCopy)
    {
      [AVCaptureDevice setReactionEffectSuppressedGesturesEnabled:0];
      +[AVCaptureDevice requestGesturesDefaultDisabledNotification];
    }

    [AVCaptureDevice didChangeValueForKey:@"reactionEffectSuppressedGesture"];
  }
}

+ (void)_haveShownGesturesDefaultDisabledNotificationChanged:(id)changed
{
  [self setupKVOLoggingOnce];
  if (sDetailedKVOOverrideLogging == 1)
  {
    v19 = 0;
    FigCopyBacktrace();
    if (dword_1ED806A00)
    {
      v18 = 0;
      v17 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v19)
    {
      CFRelease(v19);
    }
  }

  if (changed && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [changed BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  os_unfair_lock_lock(&sGesturesDefaultDisabledNotificationLock);
  v7 = sHaveShownGesturesDefaultDisabledNotification;
  os_unfair_lock_unlock(&sGesturesDefaultDisabledNotificationLock);
  if (v7 != bOOLValue)
  {
    [self willChangeValueForKey:@"haveShownGesturesDefaultDisabledNotification"];
    os_unfair_lock_lock(&sGesturesDefaultDisabledNotificationLock);
    sHaveShownGesturesDefaultDisabledNotification = bOOLValue;
    os_unfair_lock_unlock(&sGesturesDefaultDisabledNotificationLock);
    if (dword_1ED806A00)
    {
      LODWORD(v19) = 0;
      LOBYTE(v18) = 0;
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v9 = v19;
      if (os_log_type_enabled(v8, v18))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
        v13 = 136315394;
        v14 = "+[AVCaptureDevice _haveShownGesturesDefaultDisabledNotificationChanged:]";
        v15 = 1024;
        LODWORD(v16) = bOOLValue;
        LODWORD(v12) = 18;
        v11 = &v13;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [self didChangeValueForKey:{@"haveShownGesturesDefaultDisabledNotification", v11, v12}];
  }
}

+ (void)requestGesturesDefaultDisabledNotification
{
  haveShownGesturesDefaultDisabledNotification = [self haveShownGesturesDefaultDisabledNotification];
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if ((haveShownGesturesDefaultDisabledNotification & 1) == 0)
  {
    if (AVCaptureIsRunningInMacCatalystEnvironment())
    {
      [AVCaptureProprietaryDefaultsSingleton setObject:AVCaptureClientPreferencesDomain() forKey:sRequestGesturesDefaultDisabledNotificationKey];
    }

    else
    {
      [AVCaptureProprietaryDefaultsSingleton setObject:@"global" forKey:sRequestGesturesDefaultDisabledNotificationKey];
      v5 = [AVCaptureProprietaryDefaultsSingleton objectForKey:sHaveShownGlobalGesturesDefaultDisabledNotificationKey];
      if (v5)
      {
        v6 = v5;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [self _haveShownGesturesDefaultDisabledNotificationChanged:v6];
        }
      }
    }
  }
}

- (BOOL)canPerformReactionEffects
{
  reactionEffectsSupported = [(AVCaptureDeviceFormat *)[(AVCaptureDevice *)self activeFormat] reactionEffectsSupported];
  if (reactionEffectsSupported)
  {

    LOBYTE(reactionEffectsSupported) = +[AVCaptureDevice reactionEffectsEnabled];
  }

  return reactionEffectsSupported;
}

- (void)performEffectForReaction:(AVCaptureReactionType)reactionType
{
  +[AVCaptureDevice setUpReactionEffectsStateOnce];
  if ([sAvailableReactions containsObject:reactionType])
  {
    v5 = AVCaptureClientPreferencesDomain();

    AVControlCenterVideoEffectsModulePerformReactionEffect(reactionType, v5, self);
  }

  else
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v6);
    }

    NSLog(&cfstr_SuppressingExc.isa, v6);
  }
}

- (NSArray)reactionEffectsInProgress
{
  +[AVCaptureDevice setUpReactionEffectsStateOnce];
  os_unfair_lock_lock(&sReactionsLock);
  v3 = [(NSMutableArray *)self->_internal->activeReactions copy];
  os_unfair_lock_unlock(&sReactionsLock);
  return v3;
}

void __54__AVCaptureDevice_setUpBackgroundReplacementStateOnce__block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = [*(a1 + 32) backgroundReplacementURL];
    v11 = +[AVCaptureDevice backgroundReplacementURLDefault];
    [v9 stringWithFormat:@"current URL: %@\ndefault URL: %@\ncall stack:\n%@", v10, v11, objc_msgSend(MEMORY[0x1E696AF00], "callStackSymbols")];
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
    v17 = _os_log_send_and_compose_impl();
    FigCaptureGetFrameworkRadarComponent();
    FigCapturePleaseFileRadar();
    v18 = v17;
LABEL_10:
    free(v18);
    return;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = [*(a1 + 32) backgroundReplacementURL];
    v15 = +[AVCaptureDevice backgroundReplacementURLDefault];
    [v13 stringWithFormat:@"current URL: %@\ndefault URL: %@\ncall stack:\n%@", v14, v15, objc_msgSend(MEMORY[0x1E696AF00], "callStackSymbols")];
    v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    objc_opt_class();
    [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
    v19 = _os_log_send_and_compose_impl();
    FigCaptureGetFrameworkRadarComponent();
    FigCapturePleaseFileRadar();
    v18 = v19;
    goto LABEL_10;
  }

  v5 = [objc_msgSend(objc_msgSend(*(a1 + 32) "backgroundReplacementURL")];
  v6 = [objc_msgSend(a3 "URLByResolvingSymlinksInPath")];
  if (!v5 || [v5 isEqual:v6])
  {
    v7 = +[AVCaptureDevice backgroundReplacementURLDefault];
    v8 = *(a1 + 32);

    [v8 setBackgroundReplacementURL:v7];
  }
}

+ (void)_backgroundReplacementEnabledChanged:(id)changed
{
  changedCopy = changed;
  if (changed)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      LODWORD(changedCopy) = [changedCopy BOOLValue];
    }

    else
    {
      LODWORD(changedCopy) = 0;
    }
  }

  os_unfair_lock_lock(&sBackgroundReplacementLock);
  v5 = sBackgroundReplacementEnabled;
  os_unfair_lock_unlock(&sBackgroundReplacementLock);
  if (v5 != changedCopy)
  {
    [self willChangeValueForKey:@"backgroundReplacementEnabled"];
    os_unfair_lock_lock(&sBackgroundReplacementLock);
    sBackgroundReplacementEnabled = changedCopy;
    os_unfair_lock_unlock(&sBackgroundReplacementLock);

    [self didChangeValueForKey:@"backgroundReplacementEnabled"];
  }
}

+ (void)_backgroundReplacementURLBookmarkChanged:(id)changed
{
  changedCopy = changed;
  if (changed)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      changedCopy = 0;
    }
  }

  os_unfair_lock_lock(&sBackgroundReplacementLock);
  if (sBackgroundReplacementURLBookmark == changedCopy)
  {

    os_unfair_lock_unlock(&sBackgroundReplacementLock);
  }

  else
  {
    v5 = [sBackgroundReplacementURLBookmark isEqual:changedCopy];
    os_unfair_lock_unlock(&sBackgroundReplacementLock);
    if ((v5 & 1) == 0)
    {
      [self willChangeValueForKey:@"backgroundReplacementURL"];
      [self willChangeValueForKey:@"backgroundReplacementPixelBuffer"];
      os_unfair_lock_lock(&sBackgroundReplacementLock);
      if (sBackgroundReplacementPixelBuffer)
      {
        CFRelease(sBackgroundReplacementPixelBuffer);
        sBackgroundReplacementPixelBuffer = 0;
      }

      sBackgroundReplacementURLBookmark = changedCopy;
      os_unfair_lock_unlock(&sBackgroundReplacementLock);
      [self didChangeValueForKey:@"backgroundReplacementURL"];

      [self didChangeValueForKey:@"backgroundReplacementPixelBuffer"];
    }
  }
}

+ (void)setBackgroundReplacementEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  [self setUpBackgroundReplacementStateOnce];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
  v5 = sBackgroundReplacementEnabledKey;

  [AVCaptureProprietaryDefaultsSingleton setObject:v4 forKey:v5];
}

+ (void)setBackgroundReplacementURL:(id)l
{
  [self setUpBackgroundReplacementStateOnce];
  if (!l)
  {
    l = [self backgroundReplacementURLDefault];
  }

  v6 = 0;
  v5 = [l bookmarkDataWithOptions:0 includingResourceValuesForKeys:0 relativeToURL:0 error:&v6];
  if (!v6)
  {
    [AVCaptureProprietaryDefaultsSingleton setObject:v5 forKey:sBackgroundReplacementURLBookmarkKey];
  }
}

+ (id)backgroundReplacementURL
{
  [self setUpBackgroundReplacementStateOnce];
  v5 = 0;
  os_unfair_lock_lock(&sBackgroundReplacementLock);
  if (sBackgroundReplacementURLBookmark)
  {
    backgroundReplacementURLDefault = [MEMORY[0x1E695DFF8] URLByResolvingBookmarkData:sBackgroundReplacementURLBookmark options:256 relativeToURL:0 bookmarkDataIsStale:0 error:&v5];
  }

  else
  {
    backgroundReplacementURLDefault = 0;
  }

  os_unfair_lock_unlock(&sBackgroundReplacementLock);
  if (v5)
  {
    backgroundReplacementURLDefault = [self backgroundReplacementURLDefault];
    [self setBackgroundReplacementURL:backgroundReplacementURLDefault];
  }

  return backgroundReplacementURLDefault;
}

+ (__CVBuffer)backgroundReplacementPixelBuffer
{
  [self setUpBackgroundReplacementStateOnce];
  os_unfair_lock_lock(&sBackgroundReplacementLock);
  if (sBackgroundReplacementPixelBuffer)
  {
    v3 = CFRetain(sBackgroundReplacementPixelBuffer);
    v4 = CFAutorelease(v3);
    os_unfair_lock_unlock(&sBackgroundReplacementLock);
    if (v4)
    {
      return v4;
    }
  }

  else
  {
    os_unfair_lock_unlock(&sBackgroundReplacementLock);
  }

  v5 = [AVCaptureProprietaryDefaultsSingleton imageForKey:sBackgroundReplacementURLBookmarkKey fillWidth:1920 fillHeight:1440];
  if (v5)
  {
    return v5;
  }

  [self setBackgroundReplacementURL:{objc_msgSend(self, "backgroundReplacementURLDefault")}];
  v7 = sBackgroundReplacementURLBookmarkKey;

  return [AVCaptureProprietaryDefaultsSingleton imageForKey:v7 fillWidth:1920 fillHeight:1440];
}

+ (void)setBackgroundReplacementPixelBuffer:(__CVBuffer *)buffer
{
  [self setUpBackgroundReplacementStateOnce];
  if (!buffer)
  {
    return;
  }

  os_unfair_lock_lock(&sBackgroundReplacementLock);
  v5 = sBackgroundReplacementPixelBuffer;
  os_unfair_lock_unlock(&sBackgroundReplacementLock);
  if (v5 == buffer)
  {
    return;
  }

  v6 = CMGetAttachment(buffer, @"preference-image-url", 0);
  if (!v6)
  {
    [self willChangeValueForKey:@"backgroundReplacementPixelBuffer"];
    goto LABEL_7;
  }

  v7 = [objc_msgSend(objc_msgSend(v6 "URLByResolvingSymlinksInPath")];
  [self willChangeValueForKey:@"backgroundReplacementPixelBuffer"];
  if ((v7 & 1) == 0)
  {
LABEL_7:
    [self willChangeValueForKey:@"backgroundReplacementURL"];
    [self setBackgroundReplacementURL:v6];
    v8 = 1;
    goto LABEL_8;
  }

  v8 = 0;
LABEL_8:
  v9 = sBackgroundReplacementPixelBuffer;
  sBackgroundReplacementPixelBuffer = buffer;
  CFRetain(buffer);
  if (v9)
  {
    CFRelease(v9);
  }

  if (v8)
  {
    [self didChangeValueForKey:@"backgroundReplacementURL"];
  }

  [self didChangeValueForKey:@"backgroundReplacementPixelBuffer"];
  if (sBackgroundReplacementPixelBuffer)
  {
    CFRelease(sBackgroundReplacementPixelBuffer);
    sBackgroundReplacementPixelBuffer = 0;
  }
}

+ (BOOL)isEligibleForBackgroundReplacement
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__AVCaptureDevice_isEligibleForBackgroundReplacement__block_invoke;
  block[3] = &unk_1E786EC08;
  block[4] = self;
  if (isEligibleForBackgroundReplacement_onceToken != -1)
  {
    dispatch_once(&isEligibleForBackgroundReplacement_onceToken, block);
  }

  return isEligibleForBackgroundReplacement_sIsEligibleForBackgroundReplacement;
}

uint64_t __53__AVCaptureDevice_isEligibleForBackgroundReplacement__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _checkEligibilityForEffect:AVCaptureBundleCameraBackgroundReplacementEnabledKey];
  isEligibleForBackgroundReplacement_sIsEligibleForBackgroundReplacement = result;
  return result;
}

+ (void)setControlCenterVideoEffectUnavailableReasonsForVideoEffect:(id)effect reasons:(unint64_t)reasons
{
  if (setControlCenterVideoEffectUnavailableReasonsForVideoEffect_reasons__onceToken != -1)
  {
    +[AVCaptureDevice setControlCenterVideoEffectUnavailableReasonsForVideoEffect:reasons:];
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __87__AVCaptureDevice_setControlCenterVideoEffectUnavailableReasonsForVideoEffect_reasons___block_invoke_2;
  v6[3] = &unk_1E786ECD0;
  v6[4] = effect;
  v6[5] = reasons;
  dispatch_async(setControlCenterVideoEffectUnavailableReasonsForVideoEffect_reasons__sVideoEffectUnavailableReasonsUpdateQueue, v6);
}

uint64_t __87__AVCaptureDevice_setControlCenterVideoEffectUnavailableReasonsForVideoEffect_reasons___block_invoke()
{
  result = FigDispatchQueueCreateWithPriority();
  setControlCenterVideoEffectUnavailableReasonsForVideoEffect_reasons__sVideoEffectUnavailableReasonsUpdateQueue = result;
  return result;
}

+ (void)_setControlCenterVideoEffectUnavailableReasonsForVideoEffect:(id)effect reasons:(unint64_t)reasons
{
  if ([effect isEqualToString:@"AVControlCenterVideoEffectCenterStage"])
  {
    [self setUpCenterStageStateOnce];
    v7 = &sCenterStageUnavailableReasonsKey;
  }

  else if ([effect isEqualToString:@"AVControlCenterVideoEffectBackgroundBlur"])
  {
    [self setUpBackgroundBlurStateOnce];
    v7 = &sBackgroundBlurUnavailableReasonsKey;
  }

  else if ([effect isEqualToString:@"AVControlCenterVideoEffectStudioLighting"])
  {
    [self setUpStudioLightingStateOnce];
    v7 = &sStudioLightingUnavailableReasonsKey;
  }

  else if ([effect isEqualToString:@"AVControlCenterVideoEffectReactions"] || objc_msgSend(effect, "isEqualToString:", @"AVControlCenterVideoEffectGestures"))
  {
    [self setUpReactionEffectsStateOnce];
    v7 = &sReactionsUnavailableReasonsKey;
  }

  else
  {
    if (![effect isEqualToString:@"AVControlCenterVideoEffectBackgroundReplacement"])
    {
      return;
    }

    [self setUpBackgroundReplacementStateOnce];
    v7 = &sBackgroundReplacementUnavailableReasonsKey;
  }

  v8 = *v7;
  if (*v7 && [+[AVCaptureProprietaryDefaultsSingleton objectForKey:](AVCaptureProprietaryDefaultsSingleton objectForKey:{*v7), "unsignedIntegerValue"}] != reasons)
  {
    if (reasons)
    {
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:reasons];
    }

    else
    {
      v9 = 0;
    }

    [AVCaptureProprietaryDefaultsSingleton setObject:v9 forKey:v8];
  }
}

+ (BOOL)_checkEligibilityForEffect:(id)effect
{
  _listEligibleEffects = [self _listEligibleEffects];

  return [_listEligibleEffects containsObject:effect];
}

+ (AVCaptureMicrophoneMode)preferredMicrophoneMode
{
  [self setUpMicrophoneModeStateOnce];
  os_unfair_lock_lock(&sMicrophoneModeLock);
  v2 = sPreferredMicrophoneMode;
  os_unfair_lock_unlock(&sMicrophoneModeLock);
  return v2;
}

+ (AVCaptureMicrophoneMode)activeMicrophoneMode
{
  [self setUpMicrophoneModeStateOnce];
  os_unfair_lock_lock(&sMicrophoneModeLock);
  v2 = sActiveMicrophoneMode;
  os_unfair_lock_unlock(&sMicrophoneModeLock);
  return v2;
}

+ (void)setUpMicrophoneModeStateOnce
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__AVCaptureDevice_setUpMicrophoneModeStateOnce__block_invoke;
  block[3] = &unk_1E786EC08;
  block[4] = self;
  if (setUpMicrophoneModeStateOnce_onceToken != -1)
  {
    dispatch_once(&setUpMicrophoneModeStateOnce_onceToken, block);
  }
}

uint64_t __47__AVCaptureDevice_setUpMicrophoneModeStateOnce__block_invoke(uint64_t a1)
{
  v2 = AVCaptureClientPreferencesDomain();
  v3 = AVControlCenterAudioPreferredMicrophoneModePreferenceKey(v2);
  v4 = AVCaptureClientPreferencesDomain();
  active = AVControlCenterAudioActiveMicrophoneModePreferenceKey(v4);
  v6 = [AVCaptureProprietaryDefaultsSingleton objectForKey:v3];
  if (v6)
  {
    sPreferredMicrophoneMode = [v6 integerValue];
  }

  v7 = [AVCaptureProprietaryDefaultsSingleton objectForKey:active];
  if (v7)
  {
    sActiveMicrophoneMode = [v7 integerValue];
  }

  [AVCaptureProprietaryDefaultsSingleton addObserver:"addObserver:forKey:callHandlerForInitialValue:defaultChangedHandler:" forKey:? callHandlerForInitialValue:? defaultChangedHandler:?];
  return [AVCaptureProprietaryDefaultsSingleton addObserver:MEMORY[0x1E69E9820] forKey:3221225472 callHandlerForInitialValue:__47__AVCaptureDevice_setUpMicrophoneModeStateOnce__block_invoke_3 defaultChangedHandler:&unk_1E786EAF0, *(a1 + 32)];
}

+ (void)_preferredMicrophoneModeChanged:(id)changed
{
  changedCopy = changed;
  if (changed)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      changedCopy = [changedCopy integerValue];
    }

    else
    {
      changedCopy = 0;
    }
  }

  os_unfair_lock_lock(&sMicrophoneModeLock);
  v5 = sPreferredMicrophoneMode;
  os_unfair_lock_unlock(&sMicrophoneModeLock);
  if (v5 != changedCopy)
  {
    [self willChangeValueForKey:@"preferredMicrophoneMode"];
    os_unfair_lock_lock(&sMicrophoneModeLock);
    sPreferredMicrophoneMode = changedCopy;
    os_unfair_lock_unlock(&sMicrophoneModeLock);

    [self didChangeValueForKey:@"preferredMicrophoneMode"];
  }
}

+ (void)_activeMicrophoneModeChanged:(id)changed
{
  changedCopy = changed;
  if (changed)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      changedCopy = [changedCopy integerValue];
    }

    else
    {
      changedCopy = 0;
    }
  }

  os_unfair_lock_lock(&sMicrophoneModeLock);
  v5 = sActiveMicrophoneMode;
  os_unfair_lock_unlock(&sMicrophoneModeLock);
  if (v5 != changedCopy)
  {
    [self willChangeValueForKey:@"activeMicrophoneMode"];
    os_unfair_lock_lock(&sMicrophoneModeLock);
    sActiveMicrophoneMode = changedCopy;
    os_unfair_lock_unlock(&sMicrophoneModeLock);

    [self didChangeValueForKey:@"activeMicrophoneMode"];
  }
}

+ (void)showSystemUserInterface:(AVCaptureSystemUserInterface)systemUserInterface
{
  if ((systemUserInterface - 1) >= 2)
  {
    v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v3);
    }

    NSLog(&cfstr_SuppressingExc.isa, v3);
  }

  else
  {

    MEMORY[0x1EEDF0F90](systemUserInterface, a2);
  }
}

- (void)setAutomaticallyEnablesLowLightBoostWhenAvailable:(BOOL)automaticallyEnablesLowLightBoostWhenAvailable
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (AVCaptureSystemPressureState)systemPressureState
{
  v2 = [[AVCaptureSystemPressureState alloc] initWithFigLevel:0 factors:0 recommendedFrameRateRangeForPortrait:0 recommendedFrameRateRangeForPhotoMode:0];

  return v2;
}

- (void)setContinuousZoomWithDepthEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v3);
    }

    NSLog(&cfstr_SuppressingExc.isa, v3);
  }
}

- (void)setEyeDetectionEnabled:(BOOL)enabled
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (void)setEyeClosedDetectionEnabled:(BOOL)enabled
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (void)setSmileDetectionEnabled:(BOOL)enabled
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (void)setPrimaryConstituentDeviceSwitchingBehavior:(AVCapturePrimaryConstituentDeviceSwitchingBehavior)switchingBehavior restrictedSwitchingBehaviorConditions:(AVCapturePrimaryConstituentDeviceRestrictedSwitchingBehaviorConditions)restrictedSwitchingBehaviorConditions
{
  if (restrictedSwitchingBehaviorConditions | switchingBehavior)
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v4);
    }

    NSLog(&cfstr_SuppressingExc.isa, v4);
  }
}

- (void)setFallbackPrimaryConstituentDevices:(NSArray *)fallbackPrimaryConstituentDevices
{
  if ([(NSArray *)fallbackPrimaryConstituentDevices count])
  {
    v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v3);
    }

    NSLog(&cfstr_SuppressingExc.isa, v3);
  }
}

- (void)setTimeOfFlightProjectorMode:(int64_t)mode
{
  if (![(AVCaptureDevice *)self isTimeOfFlightProjectorModeSupported:mode])
  {
    v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v3);
    }

    NSLog(&cfstr_SuppressingExc.isa, v3);
  }
}

- (void)setSpatialOverCaptureEnabled:(BOOL)enabled
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (void)setNonDestructiveCropEnabled:(BOOL)enabled
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (void)setAspectRatioForNonDestructiveCrop:(int64_t)crop
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (void)setCinematicVideoFocusAtPoint:(CGPoint)point objectID:(int64_t)d isHardFocus:(BOOL)focus isFixedPlaneFocus:(BOOL)planeFocus
{
  if (![(AVCaptureDevice *)self isCinematicVideoFocusAtPointSupported:d])
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v6);
    }

    NSLog(&cfstr_SuppressingExc.isa, v6);
  }
}

- (void)setCinematicVideoTrackingFocusWithDetectedObjectID:(int64_t)d focusMode:(int64_t)mode
{
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v4);
  }

  NSLog(&cfstr_SuppressingExc.isa, v4);
}

- (void)setCinematicVideoTrackingFocusAtPoint:(CGPoint)point focusMode:(int64_t)mode
{
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v4);
  }

  NSLog(&cfstr_SuppressingExc.isa, v4);
}

- (void)setCinematicVideoFixedFocusAtPoint:(CGPoint)point focusMode:(int64_t)mode
{
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v4);
  }

  NSLog(&cfstr_SuppressingExc.isa, v4);
}

+ (id)continuityCaptureCameraCapabilities
{
  if (continuityCaptureCameraCapabilities_onceToken != -1)
  {
    +[AVCaptureDevice continuityCaptureCameraCapabilities];
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = __Block_byref_object_copy__5;
  v2 = getCMContinuityCaptureCapabilitiesClass_softClass;
  v16 = __Block_byref_object_dispose__5;
  v17 = getCMContinuityCaptureCapabilitiesClass_softClass;
  if (!getCMContinuityCaptureCapabilitiesClass_softClass)
  {
    *v20 = MEMORY[0x1E69E9820];
    *&v20[8] = 3221225472;
    *&v20[16] = __getCMContinuityCaptureCapabilitiesClass_block_invoke;
    v21 = &unk_1E786EC30;
    v22 = &v12;
    __getCMContinuityCaptureCapabilitiesClass_block_invoke(v20);
    v2 = v13[5];
  }

  _Block_object_dispose(&v12, 8);
  capabilitiesForCurrentDevice = [v2 capabilitiesForCurrentDevice];
  dictionaryRepresentation = [capabilitiesForCurrentDevice dictionaryRepresentation];
  if (AVCaptureClientIsRapport())
  {
    [NSClassFromString(&cfstr_Avcapturefigvi.isa) _releaseStaticResources];
  }

  if (dword_1ED806A00)
  {
    v19 = 0;
    v18 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v6 = v19;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v18))
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFE;
    }

    if (v7)
    {
      *v20 = 136315394;
      *&v20[4] = "+[AVCaptureDevice continuityCaptureCameraCapabilities]";
      *&v20[12] = 2112;
      *&v20[14] = capabilitiesForCurrentDevice;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1ED806A00)
    {
      v19 = 0;
      v18 = OS_LOG_TYPE_DEFAULT;
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v9 = v19;
      if (os_log_type_enabled(v8, v18))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
        *v20 = 136315394;
        *&v20[4] = "+[AVCaptureDevice continuityCaptureCameraCapabilities]";
        *&v20[12] = 2112;
        *&v20[14] = dictionaryRepresentation;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return dictionaryRepresentation;
}

uint64_t __54__AVCaptureDevice_continuityCaptureCameraCapabilities__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695E000]);
  continuityCaptureCameraCapabilities_cameraCaptureUserDefaults = [v0 initWithSuiteName:*MEMORY[0x1E698F708]];
  v1 = objc_alloc(MEMORY[0x1E695E000]);
  continuityCaptureCameraCapabilities_cameraCaptureVolatileUserDefaults = [v1 initWithSuiteName:*MEMORY[0x1E698F718]];
  v2 = [AVCaptureBlockKVOObserver alloc];
  continuityCaptureCameraCapabilities_continuityCaptureDisabledObserver = [(AVCaptureBlockKVOObserver *)v2 initWithObjectToObserve:continuityCaptureCameraCapabilities_cameraCaptureUserDefaults keyPath:*MEMORY[0x1E698F710] options:3 handler:&__block_literal_global_634];
  v3 = [AVCaptureBlockKVOObserver alloc];
  result = [(AVCaptureBlockKVOObserver *)v3 initWithObjectToObserve:continuityCaptureCameraCapabilities_cameraCaptureVolatileUserDefaults keyPath:*MEMORY[0x1E698F720] options:3 handler:&__block_literal_global_637];
  continuityCaptureCameraCapabilities_continuityCaptureInUseObserver = result;
  return result;
}

uint64_t __54__AVCaptureDevice_continuityCaptureCameraCapabilities__block_invoke_2()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];

  return [v0 postNotificationName:@"AVCaptureDeviceContinuityCaptureCameraCapabilitiesChangedNotification" object:0];
}

uint64_t __54__AVCaptureDevice_continuityCaptureCameraCapabilities__block_invoke_3()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];

  return [v0 postNotificationName:@"AVCaptureDeviceContinuityCaptureCameraCapabilitiesChangedNotification" object:0];
}

+ (id)continuityCaptureLastUsedDate
{
  v2 = CFPreferencesCopyValue(*MEMORY[0x1E698F728], *MEMORY[0x1E698F718], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
  if (dword_1ED806A00)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v2;
}

- (void)setDeskViewCameraMode:(int64_t)mode
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (void)setManualFramingEnabled:(BOOL)enabled
{
  if (![(AVCaptureDevice *)self isManualFramingSupported])
  {
    v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v3);
    }

    NSLog(&cfstr_SuppressingExc.isa, v3);
  }
}

- (void)setCenterStageFieldOfViewRestrictedToWide:(BOOL)wide
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (void)setManualFramingPanningAngleX:(float)x
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (void)setManualFramingPanningAngleY:(float)y
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (void)startPanningAtPoint:(CGPoint)point
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (void)panWithTranslation:(CGPoint)translation
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (void)performOneShotFraming
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v2);
  }

  NSLog(&cfstr_SuppressingExc.isa, v2);
}

- (void)resetFraming
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v2);
  }

  NSLog(&cfstr_SuppressingExc.isa, v2);
}

- (void)setGazeSelectionEnabled:(BOOL)enabled
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

+ (id)proprietaryDefaultsDomainForAuditToken:(id *)token
{
  v3 = *&token->var0[4];
  v5[0] = *token->var0;
  v5[1] = v3;
  return [AVCaptureProprietaryDefaultsSingleton proprietaryDefaultsDomainForAuditToken:v5];
}

+ (id)devicesForDefaultDeviceSupport:(BOOL)support includeAudioDevices:(BOOL)devices
{
  devicesCopy = devices;
  supportCopy = support;
  v7 = objc_opt_class();
  if (v7 != objc_opt_class())
  {
    return MEMORY[0x1E695E0F0];
  }

  [NSClassFromString(&cfstr_Avcapturefigvi.isa) _setUpCameraHistoryOnce];
  _registerVideoDevicesOnce();
  os_unfair_lock_lock(&sRegisterVideoDevicesLock);
  v8 = [sRegisteredVideoDevices mutableCopy];
  os_unfair_lock_unlock(&sRegisterVideoDevicesLock);
  if (devicesCopy)
  {
    _registerAudioDevicesOnce();
    os_unfair_lock_lock(&sRegisterAudioDevicesLock);
    [v8 addObjectsFromArray:sRegisteredAudioDevices];
    os_unfair_lock_unlock(&sRegisterAudioDevicesLock);
  }

  if (supportCopy)
  {
    [self _filterConnectedLegacyDevices:v8];
  }

  return v8;
}

+ (void)ensureServerConnection
{
  if (dword_1ED806A00)
  {
    v11 = 0;
    v10 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [AVCaptureProprietaryDefaultsSingleton retryPriorFailedKeyObservationRegistrations:v6];
  if (dword_1ED806A00)
  {
    v11 = 0;
    v10 = OS_LOG_TYPE_DEFAULT;
    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v4 = v11;
    if (os_log_type_enabled(v3, v10))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v8 = 136315138;
      v9 = "+[AVCaptureDevice(ServerConnection) ensureServerConnection]";
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (void)setDockedTrackingEnabled:(BOOL)enabled
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v3);
  }

  NSLog(&cfstr_SuppressingExc.isa, v3);
}

- (void)setDynamicAspectRatio:(id)ratio completionHandler:(id)handler
{
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v4);
  }

  NSLog(&cfstr_SuppressingExc.isa, v4);
}

- (void)setCameraLensSmudgeDetectionEnabled:(BOOL)enabled detectionInterval:(id *)interval
{
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v4);
  }

  NSLog(&cfstr_SuppressingExc.isa, v4);
}

@end