@interface AVCaptureFigVideoDevice
+ (BOOL)allowsSuspendedPreferredCameras;
+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3;
+ (id)_cameraHistoryDispatchQueue;
+ (id)_defaultDeviceWithDeviceType:(id)a3 mediaTypes:(id)a4 position:(int64_t)a5 cameraOverrideHistoryAllowed:(BOOL)a6 cameraOverrideHistorySuspendedAllowed:(BOOL)a7 wombatsMustBeMagic:(BOOL)a8 userPreferredCameraHistorySuspendedAllowed:(BOOL)a9 invalidSpecialDeviceTypes:(id)a10;
+ (id)_devicesWithPriorRegisteredDevices:(id)a3;
+ (id)_newFigCaptureSources;
+ (id)_prioritizedDeviceList:(id)a3;
+ (id)_userPreferredCameraOverrideHistoryKey;
+ (id)cameraInfoForCreatorID:(id)a3 uniqueID:(id)a4 specialDeviceType:(unsigned int)a5 centerStageSupported:(BOOL)a6;
+ (id)systemPreferredCamera;
+ (id)userPreferredCamera;
+ (void)_initiateRefreshPreferredCameraProperties:(BOOL)a3;
+ (void)_insurePreferredCameraGlobal:(id *)a3 globalName:(id)a4 preferredCamera:(id)a5;
+ (void)_reconnectDevices:(id)a3;
+ (void)_refreshPreferredCameraProperties:(BOOL)a3;
+ (void)_releaseStaticResources;
+ (void)_setUpCameraHistoryOnce;
+ (void)initialize;
+ (void)setAllowsSuspendedPreferredCameras:(BOOL)a3;
+ (void)setUserPreferredCamera:(id)a3;
+ (void)setUserPreferredCamera:(id)a3 forClientPreferenceDomain:(id)a4;
+ (void)updateUserPreferredCameraOverride:(BOOL)a3 cameraInfo:(id)a4;
+ (void)updateUserPreferredCameraOverrideHistoryWithDevice:(id)a3 setOverride:(BOOL)a4;
- ($2825F4736939C4A6D3AD43837233062D)dynamicDimensions;
- ($2825F4736939C4A6D3AD43837233062D)maxH264PhotoDimensions;
- ($2825F4736939C4A6D3AD43837233062D)maxH264VideoDimensions;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)activeDepthDataMinFrameDuration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)activeExternalSyncVideoFrameDuration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)activeLockedVideoFrameDuration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)activeMaxExposureDuration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)activeMaxExposureDurationClientOverride;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)activeVideoMaxFrameDuration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)activeVideoMaxFrameDurationSetByClient;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)activeVideoMinFrameDuration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)activeVideoMinFrameDurationSetByClient;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)cameraLensSmudgeDetectionInterval;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)exposureDuration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)minSupportedExternalSyncFrameDuration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)minSupportedLockedVideoFrameDuration;
- ($94F468A8D4C62B317260615823C2B210)_chromaticityValuesForDeviceWhiteBalanceGains:(id)a3 atMix:(double)a4;
- ($94F468A8D4C62B317260615823C2B210)chromaticityValuesForDeviceWhiteBalanceGains:(id)a3;
- ($94F468A8D4C62B317260615823C2B210)temperatureAndTintValuesForDeviceWhiteBalanceGains:(id)a3;
- ($E2C29196C7A5C696474C6955C5A9CE06)_deviceWhiteBalanceGainsForChromaticityValues:(id)a3 temperature:(double)a4;
- ($E2C29196C7A5C696474C6955C5A9CE06)deviceWhiteBalanceGains;
- ($E2C29196C7A5C696474C6955C5A9CE06)deviceWhiteBalanceGainsForChromaticityValues:(id)a3;
- ($E2C29196C7A5C696474C6955C5A9CE06)deviceWhiteBalanceGainsForTemperatureAndTintValues:(id)a3;
- ($E2C29196C7A5C696474C6955C5A9CE06)grayWorldDeviceWhiteBalanceGains;
- (AVCaptureFigVideoDevice)init;
- (BOOL)_cameraAccessIsEnabled;
- (BOOL)_centerStageRectOfInterestSupportedOnDevice;
- (BOOL)_ensureWhiteBalanceCalibrationUnpacked;
- (BOOL)_hasKeyValueObserversForHighFrequencyProperty:(id)a3;
- (BOOL)_isBackgroundBlurActiveForEnabled:(BOOL)a3;
- (BOOL)_isBackgroundReplacementActiveForEnabled:(BOOL)a3;
- (BOOL)_isCenterStageActiveForEnabled:(BOOL)a3;
- (BOOL)_isDepthDataDeliveryEnabled;
- (BOOL)_isFlashScene;
- (BOOL)_isHighDynamicRangeScene;
- (BOOL)_isStillImageStabilizationScene;
- (BOOL)_isStudioLightingActiveForEnabled:(BOOL)a3;
- (BOOL)_reactionEffectsActiveForEnabled:(BOOL)a3;
- (BOOL)_setContinuousZoomWithDepthActiveWithEnabled:(BOOL)a3 disallowed:(BOOL)a4 isActiveDepthDataFormatChangingOut:(BOOL *)a5;
- (BOOL)_updateContinuousZoomWithDepthActiveWithEnabled:(BOOL)a3 disallowed:(BOOL)a4 isActiveDepthDataFormatChangingOut:(BOOL *)a5;
- (BOOL)addCMIOExtensionPropertyValueChangeHandler:(id)a3;
- (BOOL)appliesSessionPresetMaxIntegrationTimeOverrideToActiveFormat;
- (BOOL)automaticallyAdjustsFaceDrivenAutoExposureEnabled;
- (BOOL)automaticallyAdjustsFaceDrivenAutoFocusEnabled;
- (BOOL)automaticallyAdjustsVideoHDREnabled;
- (BOOL)canPerformReactionEffects;
- (BOOL)hasFlash;
- (BOOL)hasMediaType:(id)a3;
- (BOOL)hasTorch;
- (BOOL)hevcAllowBFramesForHighCTUCount;
- (BOOL)isActiveVideoMaxFrameDurationSet;
- (BOOL)isActiveVideoMinFrameDurationSet;
- (BOOL)isAdjustingExposure;
- (BOOL)isAdjustingFocus;
- (BOOL)isAdjustingWhiteBalance;
- (BOOL)isAttentionDetectionSupported;
- (BOOL)isAutoFocusRangeRestrictionSupported;
- (BOOL)isAutoRedEyeReductionSupported;
- (BOOL)isAutoVideoFrameRateEnabled;
- (BOOL)isBackgroundReplacementActive;
- (BOOL)isCameraIntrinsicMatrixDeliverySupported;
- (BOOL)isCameraLensSmudgeDetectionEnabled;
- (BOOL)isCenterStageActive;
- (BOOL)isCenterStageFieldOfViewRestrictedToWide;
- (BOOL)isCenterStageMetadataDeliveryEnabled;
- (BOOL)isConnected;
- (BOOL)isConstituentPhotoCalibrationDataSupported;
- (BOOL)isContinuousZoomWithDepthEnabled;
- (BOOL)isContinuousZoomWithDepthSupported;
- (BOOL)isDICOMSupported;
- (BOOL)isDeskViewCameraModeSupported:(int64_t)a3;
- (BOOL)isDiagnosticsTestSupported:(id)a3;
- (BOOL)isDockedTrackingActive;
- (BOOL)isDockedTrackingEnabled;
- (BOOL)isDockedTrackingSupported;
- (BOOL)isExposureModeSupported:(int64_t)a3;
- (BOOL)isExposurePointOfInterestSupported;
- (BOOL)isExposureRectOfInterestSupported;
- (BOOL)isEyeClosedDetectionSupported;
- (BOOL)isEyeDetectionSupported;
- (BOOL)isFaceDrivenAutoExposureEnabled;
- (BOOL)isFaceDrivenAutoFocusEnabled;
- (BOOL)isFaceOcclusionDetectionSupported;
- (BOOL)isFlashActive;
- (BOOL)isFlashAvailable;
- (BOOL)isFlashSceneDetectedForPhotoOutput;
- (BOOL)isFocusModeSupported:(int64_t)a3;
- (BOOL)isFocusPointOfInterestSupported;
- (BOOL)isFocusRectOfInterestSupported;
- (BOOL)isFocusedAtMacro;
- (BOOL)isFollowingExternalSyncDevice;
- (BOOL)isGazeSelectionEnabled;
- (BOOL)isGeometricDistortionCorrectionEnabled;
- (BOOL)isGeometricDistortionCorrectionSupported;
- (BOOL)isGlobalToneMappingEnabled;
- (BOOL)isHDRSceneDetectedForPhotoOutput;
- (BOOL)isHEIFSupported;
- (BOOL)isHEVCPreferred;
- (BOOL)isHEVCRelaxedAverageBitRateTargetSupported;
- (BOOL)isHEVCSupported;
- (BOOL)isHidden;
- (BOOL)isImageControlModeSupported:(int64_t)a3;
- (BOOL)isLensStabilizationSupported;
- (BOOL)isLockedForConfiguration;
- (BOOL)isLockingFocusWithCustomLensPositionSupported;
- (BOOL)isLockingWhiteBalanceWithCustomDeviceGainsSupported;
- (BOOL)isLowLightVideoCaptureEnabled;
- (BOOL)isManualFramingEnabled;
- (BOOL)isMotionCompensatedTemporalFilteringSupported;
- (BOOL)isNonDestructiveCropEnabled;
- (BOOL)isObjectDetectionSupported;
- (BOOL)isPortraitEffectActive;
- (BOOL)isPreviewQualityAdjustedPhotoFilterRenderingSupported;
- (BOOL)isProResSupported;
- (BOOL)isRampingVideoZoom;
- (BOOL)isReadyToUnhide;
- (BOOL)isResponsiveCaptureWithDepthSupported;
- (BOOL)isSISSupported;
- (BOOL)isSceneClassificationActive;
- (BOOL)isSmileDetectionSupported;
- (BOOL)isSmoothAutoFocusSupported;
- (BOOL)isSpatialOverCaptureEnabled;
- (BOOL)isStillImageStabilizationScene;
- (BOOL)isStudioLightActive;
- (BOOL)isSuspended;
- (BOOL)isTimeOfFlightProjectorModeSupported:(int64_t)a3;
- (BOOL)isTorchActive;
- (BOOL)isTorchAvailable;
- (BOOL)isVariableFrameRateVideoCaptureEnabled;
- (BOOL)isVideoFrameDurationLocked;
- (BOOL)isVideoHDREnabled;
- (BOOL)isVideoHDRSuspended;
- (BOOL)isVideoStabilizationSupported;
- (BOOL)isVideoZoomSmoothingSupported;
- (BOOL)isWhiteBalanceModeSupported:(int64_t)a3;
- (BOOL)isWideColorSupported;
- (BOOL)lockForConfiguration:(id *)a3;
- (BOOL)setTorchModeOnWithLevel:(float)a3 error:(id *)a4;
- (BOOL)setValue:(id)a3 forCMIOExtensionProperty:(id)a4 error:(id *)a5;
- (BOOL)supportsAVCaptureSessionPreset:(id)a3;
- (BOOL)supportsMultiCamCaptureWithDevice:(id)a3;
- (BOOL)ultraHighResolutionZeroShutterLagEnabled;
- (BOOL)usesQuantizationScalingMatrix_H264_Steep_16_48;
- (CGPoint)exposurePointOfInterest;
- (CGPoint)focusPointOfInterest;
- (CGRect)_defaultRectForExposurePointOfInterest:(CGPoint)a3;
- (CGRect)_defaultRectForFocusPointOfInterest:(CGPoint)a3 focusMode:(int64_t)a4;
- (CGRect)centerStageRectOfInterest;
- (CGRect)defaultRectForExposurePointOfInterest:(CGPoint)a3;
- (CGRect)defaultRectForFocusPointOfInterest:(CGPoint)a3;
- (CGRect)exposureRectOfInterest;
- (CGRect)faceRectangle;
- (CGRect)focusRectOfInterest;
- (CGSize)_minExposureRectOfInterestSizeForFormat:(id)a3;
- (CGSize)_minFocusRectOfInterestSizeForFormat:(id)a3;
- (CGSize)_updateRectOfInterestSizeForSensorOrientationAndDynamicAspectRatio:(CGSize)a3;
- (CGSize)minExposureRectOfInterestSize;
- (CGSize)minFocusRectOfInterestSize;
- (CGSize)normalizedNonDestructiveCropSize;
- (OpaqueCMClock)deviceClock;
- (double)_predictedTempForGains:(id)a3;
- (double)displayVideoZoomFactorMultiplier;
- (double)dualCameraSwitchOverVideoZoomFactor;
- (double)manualFramingDefaultZoomFactor;
- (double)manualFramingMaxZoomFactor;
- (double)manualFramingMinZoomFactor;
- (double)maxAvailableVideoZoomFactor;
- (double)maxAvailableVideoZoomFactorOverride;
- (double)minAvailableVideoZoomFactor;
- (float)ISO;
- (float)documentSceneConfidence;
- (float)exposureTargetBias;
- (float)exposureTargetOffset;
- (float)focalLength;
- (float)lensAperture;
- (float)lensPosition;
- (float)manualFramingPanningAngleX;
- (float)manualFramingPanningAngleY;
- (float)nominalFocalLengthIn35mmFilm;
- (float)timeLapseCaptureRate;
- (float)torchLevel;
- (id)AVVideoSettingsForSessionPreset:(id)a3;
- (id)_cameraInfo;
- (id)_copyFigCaptureSourceProperty:(__CFString *)a3;
- (id)_copyFormatsArray;
- (id)_digitalFlashExposureTimes;
- (id)_faceDetectionConfigurationDictionary;
- (id)_getFigCaptureSourceProperty:(__CFString *)a3;
- (id)_initWithFigCaptureSource:(OpaqueFigCaptureSource *)a3 isProxy:(BOOL)a4;
- (id)_recommendedFrameRateRangeForVideoFormat:(id)a3 depthFormat:(id)a4 figSystemPressureLevel:(int)a5;
- (id)activeDepthDataFormat;
- (id)activeFormat;
- (id)activePrimaryConstituentDevice;
- (id)availableBoxedMetadataFormatDescriptions;
- (id)bravoCameraSelectionBehavior;
- (id)cameraPoseMatrix;
- (id)cinematicVideoCaptureSceneMonitoringStatuses;
- (id)constituentDeviceWithDeviceType:(id)a3;
- (id)copyValueForCMIOExtensionProperty:(id)a3 error:(id *)a4;
- (id)deviceFormatForSessionPreset:(id)a3 sourceVideoFormat:(unsigned int)a4;
- (id)deviceType;
- (id)digitalFlashSceneForPhotoOutput;
- (id)dynamicAspectRatio;
- (id)dynamicAspectRatioAndDynamicAspectRatioRequestID;
- (id)fallbackPrimaryConstituentDevices;
- (id)fallbackPrimaryConstituentDevicesAsDeviceTypes;
- (id)hardwareUniformType;
- (id)initProxyDeviceWithUniqueID:(id)a3 targetClientAuditToken:(id *)a4;
- (id)localizedName;
- (id)preferredPrimaryConstituentDevice;
- (id)runDiagnosticsWithTestType:(id)a3;
- (id)serializedProcessingSettings;
- (id)smartFramingMonitor;
- (id)spatialCaptureDiscomfortReasons;
- (id)supportedFallbackPrimaryConstituentDevices;
- (id)supportedMetadataIdentifiersForFrameRateControl;
- (id)supportedMetadataObjectIdentifiers;
- (id)supportedMetadataObjectIdentifiersForZeroFrameDelaySynchronization;
- (id)systemPressureState;
- (id)virtualDeviceSwitchOverVideoZoomFactors;
- (int)_orderInDevicesArray;
- (int)_setActiveVideoMaxFrameDurationInternal:(id *)a3 isSettingExposureModeCustom:(BOOL)a4;
- (int)_setActiveVideoMinFrameDurationInternal:(id *)a3;
- (int)_setExposureWithMode:(int64_t)a3 duration:(id *)a4 ISO:(float)a5 requestID:(int)a6 newMaxFrameDuration:(id *)a7;
- (int)_setFaceDetectionFeatureEnabled:(BOOL)a3 enabledState:(BOOL *)a4;
- (int)_setFallbackPrimaryConstituentDevices:(id)a3;
- (int)_setFigCaptureSourcePixelBufferProperty:(__CFString *)a3 withValue:(__CVBuffer *)a4;
- (int)_setFigCaptureSourceProperty:(__CFString *)a3 withValue:(id)a4 cacheOnly:(BOOL)a5;
- (int)_setFocusWithMode:(int64_t)a3 lensPosition:(float)a4 requestID:(int)a5;
- (int)_setTorchMode:(int64_t)a3 withLevel:(float)a4;
- (int)_setWhiteBalanceWithMode:(int64_t)a3 gains:(id)a4 requestID:(int)a5;
- (int)dynamicAspectRatioRequestID;
- (int)faceDrivenAEAFMode;
- (int)faceRectangleAngle;
- (int)figCaptureSourceDeviceType;
- (int)figCaptureSourcePosition;
- (int)hevcTurboModeVersion;
- (int)minMacroblocksForHighProfileAbove30fps;
- (int)minMacroblocksForHighProfileUpTo30fps;
- (int)powerConsumptionAt30FPSForOISMode:(int)a3;
- (int64_t)_digitalFlashStatus;
- (int64_t)activeColorSpace;
- (int64_t)activePrimaryConstituentDeviceSwitchingBehavior;
- (int64_t)aspectRatioForNonDestructiveCrop;
- (int64_t)cameraLensSmudgeDetectionStatus;
- (int64_t)deskViewCameraMode;
- (int64_t)digitalFlashMode;
- (int64_t)exposureMode;
- (int64_t)flashMode;
- (int64_t)focusMode;
- (int64_t)imageControlMode;
- (int64_t)minimumFocusDistance;
- (int64_t)primaryConstituentDeviceSwitchingBehavior;
- (int64_t)shallowDepthOfFieldEffectStatus;
- (int64_t)torchMode;
- (int64_t)videoStabilizationStrength;
- (int64_t)whiteBalanceMode;
- (uint64_t)_initDegradedCaptureQualityFactors;
- (uint64_t)_updateActiveDepthDataFormatForContinuousZoomWithDepth;
- (uint64_t)_updateFigCaptureSourceObserverCounts;
- (unint64_t)activePrimaryConstituentDeviceRestrictedSwitchingBehaviorConditions;
- (unint64_t)degradedCaptureQualityFactors;
- (unint64_t)primaryConstituentDeviceRestrictedSwitchingBehaviorConditions;
- (unint64_t)stereoVideoCaptureStatus;
- (void)_cameraUsageRestrictionsChanged;
- (void)_checkTCCAccess;
- (void)_computeMinVideoZoomFactorOut:(double *)a3 maxVideoZoomFactorOut:(double *)a4 defaultVideoZoomFactorOut:(double *)a5 centerStageActiveOverride:(BOOL)a6 resetZoomFactor:(BOOL)a7;
- (void)_decrementObserverCountForHighFrequencyProperty:(id)a3;
- (void)_drainDynamicAspectRatioRequestQueue;
- (void)_drainManualControlRequestQueue:(id)a3;
- (void)_drainManualControlRequestQueues;
- (void)_handleCMIOExtensionPropertyChangeNotification:(id)a3;
- (void)_handleLiveReconfigurationCompletionWithPayload:(id)a3;
- (void)_handleManualControlCompletionForRequestQueue:(id)a3 withPayload:(id)a4;
- (void)_handleNotification:(__CFString *)a3 payload:(id)a4;
- (void)_incrementObserverCountForHighFrequencyProperty:(id)a3;
- (void)_initDegradedCaptureQualityFactors;
- (void)_performBlockOnMainThread:(id)a3;
- (void)_performReaction:(id)a3;
- (void)_populateSupportedFallbackPrimaryConstituentDevices;
- (void)_rampToVideoZoomFactor:(double)a3 withRate:(float)a4 duration:(double)a5 rampType:(int)a6 rampTuning:(int)a7;
- (void)_reconnectToFigCaptureSource:(OpaqueFigCaptureSource *)a3;
- (void)_resetDefaultVideoZoomFactor;
- (void)_resetVideoHDRSuspended;
- (void)_restoreFigCaptureSourceProperties;
- (void)_setActiveFormat:(id)a3 resetVideoZoomFactorAndMinMaxFrameDurations:(BOOL)a4 sessionPreset:(id)a5;
- (void)_setActivePrimaryConstituentDeviceSwitchingBehavior:(int64_t)a3 restrictedSwitchingBehaviorConditions:(unint64_t)a4;
- (void)_setActiveVideoMaxFrameDuration:(id *)a3;
- (void)_setActiveVideoMinFrameDuration:(id *)a3;
- (void)_setAdjustingExposure:(BOOL)a3;
- (void)_setAdjustingFocus:(BOOL)a3;
- (void)_setAdjustingWhiteBalance:(BOOL)a3;
- (void)_setBackgroundBlurAllowed:(BOOL)a3;
- (void)_setBackgroundReplacementAllowed:(BOOL)a3;
- (void)_setCameraCalibrationDataDeliveryEnabled:(BOOL)a3;
- (void)_setCenterStageAllowed:(BOOL)a3;
- (void)_setCenterStageFramingMode:(int64_t)a3;
- (void)_setCinematicVideoEnabled:(BOOL)a3;
- (void)_setConnected:(BOOL)a3;
- (void)_setConstantColorEnabled:(BOOL)a3;
- (void)_setContinuousZoomWithDepthDisallowed:(BOOL)a3;
- (void)_setDepthDataDeliveryEnabled:(BOOL)a3;
- (void)_setDigitalFlashModeInternal:(int64_t)a3;
- (void)_setDigitalFlashSceneForPhotoOutput:(id)a3;
- (void)_setFigCaptureSource:(OpaqueFigCaptureSource *)a3 allowSendingWorkToMainThread:(BOOL)a4;
- (void)_setFlashActive:(BOOL)a3;
- (void)_setFlashAvailable:(BOOL)a3;
- (void)_setFlashSceneDetectedForPhotoOutput:(BOOL)a3;
- (void)_setGlobalToneMappingEnabledInternal:(BOOL)a3;
- (void)_setHDRSceneDetectedForPhotoOutput:(BOOL)a3;
- (void)_setImageControlMode:(int64_t)a3;
- (void)_setIsStillImageStabilizationScene:(BOOL)a3;
- (void)_setMaxAvailableVideoZoomFactor:(double)a3;
- (void)_setMinAvailableVideoZoomFactor:(double)a3;
- (void)_setPhotoSettingsForSceneMonitoring:(id)a3;
- (void)_setReactionEffectsAllowed:(BOOL)a3;
- (void)_setShallowDepthOfFieldEffectStatus:(int64_t)a3;
- (void)_setSimulatedAperture:(float)a3;
- (void)_setSmartFramingMonitorRunning:(BOOL)a3;
- (void)_setStillImageStabilizationAutomaticallyEnabled:(BOOL)a3;
- (void)_setStudioLightingAllowed:(BOOL)a3;
- (void)_setTorchActive:(BOOL)a3;
- (void)_setTorchAvailable:(BOOL)a3;
- (void)_setTorchLevel:(float)a3;
- (void)_setVideoHDREnabled:(BOOL)a3 forceResetVideoHDRSuspended:(BOOL)a4;
- (void)_setVideoZoomFactor:(double)a3;
- (void)_updateActiveDepthDataFormatForContinuousZoomWithDepth;
- (void)_updateBackgroundBlurActiveForEnabled:(BOOL)a3;
- (void)_updateBackgroundBlurAperture:(float)a3;
- (void)_updateBackgroundReplacementActiveForEnabled:(BOOL)a3;
- (void)_updateBackgroundReplacementPixelBuffer:(__CVBuffer *)a3;
- (void)_updateCenterStageActiveForEnabled:(BOOL)a3 updateDependentProperties:(BOOL)a4;
- (void)_updateCinematicVideoCaptureSceneMonitoringStatus:(int64_t)a3;
- (void)_updateFallbackPrimaryConstituentDevicesForDepthDataDeliveryEnabled:(BOOL)a3;
- (void)_updateFigCaptureSourceObserverCounts;
- (void)_updateGesturesEnabled:(BOOL)a3;
- (void)_updateMinMaxDefaultVideoZoomFactors;
- (void)_updateMinMaxVideoZoomFactorsWithMinZoomFactorFromCameraSelection:(double)a3;
- (void)_updatePortraitEffectStudioLightQuality:(int64_t)a3;
- (void)_updateReactionEffectsActiveForEnabled:(BOOL)a3;
- (void)_updateSpatialCaptureStatus:(unint64_t)a3;
- (void)_updateStudioLightingActiveForEnabled:(BOOL)a3;
- (void)_updateStudioLightingIntensity:(float)a3;
- (void)_updateSuppressedGesturesEnabled:(BOOL)a3;
- (void)addObserver:(id)a3 forKeyPath:(id)a4 options:(unint64_t)a5 context:(void *)a6;
- (void)cancelVideoZoomRamp;
- (void)dealloc;
- (void)drainDynamicAspectRatioCompletionHandlers;
- (void)enumerateCMIOExtensionPropertiesWithBlock:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)panWithTranslation:(CGPoint)a3;
- (void)performOneShotFraming;
- (void)rampExponentiallyToVideoZoomFactor:(float)a3 withDuration:(double)a4;
- (void)rampToVideoZoomFactor:(float)a3 withTuning:(int64_t)a4;
- (void)removeCMIOExtensionPropertyValueChangeHandler:(id)a3;
- (void)removeObserver:(id)a3 forKeyPath:(id)a4;
- (void)removeObserver:(id)a3 forKeyPath:(id)a4 context:(void *)a5;
- (void)resetActiveLockedVideoFrameDurationForOwner:(id)a3;
- (void)resetDeviceClockAndInputPortsToHostClock;
- (void)resetFraming;
- (void)resetVideoMinFrameDurationOverrideForOwner:(id)a3;
- (void)setActiveColorSpace:(int64_t)a3;
- (void)setActiveDepthDataFormat:(id)a3;
- (void)setActiveDepthDataMinFrameDuration:(id *)a3;
- (void)setActiveExternalSyncVideoFrameDuration:(id *)a3 withExternalSyncDevice:(id)a4 forOwner:(id)a5;
- (void)setActiveLockedVideoFrameDuration:(id *)a3 forOwner:(id)a4;
- (void)setActiveMaxExposureDuration:(id *)a3;
- (void)setActiveSyncDevice:(id)a3;
- (void)setActiveVideoMaxFrameDuration:(id *)a3;
- (void)setActiveVideoMinFrameDuration:(id *)a3;
- (void)setActiveVideoMinFrameDuration:(id *)a3 activeVideoMaxFrameDuration:(id *)a4;
- (void)setAspectRatioForNonDestructiveCrop:(int64_t)a3;
- (void)setAutoFocusRangeRestriction:(int64_t)a3;
- (void)setAutoVideoFrameRateEnabled:(BOOL)a3;
- (void)setAutomaticallyAdjustsFaceDrivenAutoExposureEnabled:(BOOL)a3;
- (void)setAutomaticallyAdjustsFaceDrivenAutoFocusEnabled:(BOOL)a3;
- (void)setAutomaticallyAdjustsImageControlMode:(BOOL)a3;
- (void)setAutomaticallyAdjustsVideoHDREnabled:(BOOL)a3;
- (void)setCachesFigCaptureSourceConfigurationChanges:(BOOL)a3;
- (void)setCameraLensSmudgeDetectionEnabled:(BOOL)a3 detectionInterval:(id *)a4;
- (void)setCenterStageFieldOfViewRestrictedToWide:(BOOL)a3;
- (void)setCenterStageMetadataDeliveryEnabled:(BOOL)a3;
- (void)setCenterStageRectOfInterest:(CGRect)a3;
- (void)setCinematicVideoFixedFocusAtPoint:(CGPoint)a3 focusMode:(int64_t)a4;
- (void)setCinematicVideoFocusAtPoint:(CGPoint)a3 objectID:(int64_t)a4 isHardFocus:(BOOL)a5 isFixedPlaneFocus:(BOOL)a6;
- (void)setCinematicVideoTrackingFocusAtPoint:(CGPoint)a3 focusMode:(int64_t)a4;
- (void)setCinematicVideoTrackingFocusWithDetectedObjectID:(int64_t)a3 focusMode:(int64_t)a4;
- (void)setContinuousZoomWithDepthEnabled:(BOOL)a3;
- (void)setDeskViewCameraMode:(int64_t)a3;
- (void)setDigitalFlashMode:(int64_t)a3;
- (void)setDockedTrackingEnabled:(BOOL)a3;
- (void)setDynamicAspectRatio:(id)a3 completionHandler:(id)a4;
- (void)setExposureMode:(int64_t)a3;
- (void)setExposureModeCustomWithDuration:(id *)a3 ISO:(float)a4 completionHandler:(id)a5;
- (void)setExposurePointOfInterest:(CGPoint)a3;
- (void)setExposureRectOfInterest:(CGRect)a3;
- (void)setExposureTargetBias:(float)a3 completionHandler:(id)a4;
- (void)setEyeClosedDetectionEnabled:(BOOL)a3;
- (void)setEyeDetectionEnabled:(BOOL)a3;
- (void)setFaceDetectionDrivenImageProcessingEnabled:(BOOL)a3;
- (void)setFaceDrivenAutoExposureEnabled:(BOOL)a3;
- (void)setFaceDrivenAutoFocusEnabled:(BOOL)a3;
- (void)setFallbackPrimaryConstituentDevices:(id)a3;
- (void)setFlashMode:(int64_t)a3;
- (void)setFocusMode:(int64_t)a3;
- (void)setFocusModeLockedWithLensPosition:(float)a3 completionHandler:(id)a4;
- (void)setFocusPointOfInterest:(CGPoint)a3;
- (void)setFocusRectOfInterest:(CGRect)a3;
- (void)setGazeSelectionEnabled:(BOOL)a3;
- (void)setGeometricDistortionCorrectionEnabled:(BOOL)a3;
- (void)setGlobalToneMappingEnabled:(BOOL)a3;
- (void)setImageControlMode:(int64_t)a3;
- (void)setLowLightVideoCaptureEnabled:(BOOL)a3;
- (void)setManualFramingEnabled:(BOOL)a3;
- (void)setManualFramingPanningAngleX:(float)a3;
- (void)setManualFramingPanningAngleY:(float)a3;
- (void)setMaxAvailableVideoZoomFactorOverride:(double)a3;
- (void)setNonDestructiveCropEnabled:(BOOL)a3;
- (void)setPrimaryConstituentDeviceSwitchingBehavior:(int64_t)a3 restrictedSwitchingBehaviorConditions:(unint64_t)a4;
- (void)setProvidesStortorgetMetadata:(BOOL)a3;
- (void)setSmileDetectionEnabled:(BOOL)a3;
- (void)setSmoothAutoFocusEnabled:(BOOL)a3;
- (void)setSpatialOverCaptureEnabled:(BOOL)a3;
- (void)setSubjectAreaChangeMonitoringEnabled:(BOOL)a3;
- (void)setTimeLapseCaptureRate:(float)a3;
- (void)setTimeOfFlightProjectorMode:(int64_t)a3;
- (void)setTorchMode:(int64_t)a3;
- (void)setUltraHighResolutionZeroShutterLagEnabled:(BOOL)a3;
- (void)setVariableFrameRateVideoCaptureEnabled:(BOOL)a3;
- (void)setVideoHDREnabled:(BOOL)a3;
- (void)setVideoHDRSuspended:(BOOL)a3;
- (void)setVideoMinFrameDurationOverride:(id *)a3 forOwner:(id)a4;
- (void)setVideoStabilizationStrength:(int64_t)a3;
- (void)setVideoZoomFactor:(double)a3;
- (void)setVideoZoomRampAcceleration:(float)a3;
- (void)setWhiteBalanceMode:(int64_t)a3;
- (void)setWhiteBalanceModeLockedWithDeviceWhiteBalanceGains:(id)a3 completionHandler:(id)a4;
- (void)setWhiteBalanceModeLockedWithDeviceWhiteBalanceTemperatureAndTintValues:(id)a3 completionHandler:(id)a4;
- (void)startPanningAtPoint:(CGPoint)a3;
- (void)unhide;
- (void)unlockForConfiguration;
- (void)updateStreamingDeviceHistory;
- (void)updateUserPreferredCameraHistoryForKey:(id)a3;
- (void)updateUserPreferredCameraOverride:(BOOL)a3;
- (void)updateVideoZoomFactorForSpatialVideoEnabled:(BOOL)a3;
@end

@implementation AVCaptureFigVideoDevice

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

+ (void)_setUpCameraHistoryOnce
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__AVCaptureFigVideoDevice__setUpCameraHistoryOnce__block_invoke;
  block[3] = &unk_1E786EC08;
  block[4] = a1;
  if (_setUpCameraHistoryOnce_onceToken != -1)
  {
    dispatch_once(&_setUpCameraHistoryOnce_onceToken, block);
  }
}

void __50__AVCaptureFigVideoDevice__setUpCameraHistoryOnce__block_invoke(uint64_t a1)
{
  sUserPreferredCameraHistoryKey = [AVCaptureFigVideoDevice _userPreferredCameraHistoryKeyForClientPreferencesDomain:AVCaptureClientPreferencesDomain()];
  v2 = *(a1 + 32);
  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = __50__AVCaptureFigVideoDevice__setUpCameraHistoryOnce__block_invoke_2;
  v30 = &unk_1E786EAF0;
  v31 = v2;
  [AVCaptureProprietaryDefaultsSingleton addObserver:"addObserver:forKey:callHandlerForInitialValue:defaultChangedHandler:" forKey:? callHandlerForInitialValue:? defaultChangedHandler:?];
  sUserPreferredCameraOverrideHistoryKey = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@/override/%@", @"camera-history", @"preferred-camera-history"];
  v3 = *(a1 + 32);
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __50__AVCaptureFigVideoDevice__setUpCameraHistoryOnce__block_invoke_35;
  v25 = &unk_1E786EAF0;
  v26 = v3;
  [AVCaptureProprietaryDefaultsSingleton addObserver:"addObserver:forKey:callHandlerForInitialValue:defaultChangedHandler:" forKey:? callHandlerForInitialValue:? defaultChangedHandler:?];
  sStreamingCameraHistoryKey = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@/system-wide/%@", @"camera-history", @"streaming-camera-history"];
  v4 = *(a1 + 32);
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __50__AVCaptureFigVideoDevice__setUpCameraHistoryOnce__block_invoke_40;
  v20 = &unk_1E786EAF0;
  v21 = v4;
  [AVCaptureProprietaryDefaultsSingleton addObserver:"addObserver:forKey:callHandlerForInitialValue:defaultChangedHandler:" forKey:? callHandlerForInitialValue:? defaultChangedHandler:?];
  sCameraHistoryHasBeenSetUp = 1;
  if (dword_1ED8069C0)
  {
    v16 = 0;
    v15 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v6 = [AVCaptureFigVideoDevice _cameraHistoryDispatchQueue:v10];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__AVCaptureFigVideoDevice__setUpCameraHistoryOnce__block_invoke_42;
  block[3] = &unk_1E786EC08;
  block[4] = *(a1 + 32);
  dispatch_async(v6, block);
  if (dword_1ED8069C0)
  {
    v16 = 0;
    v15 = OS_LOG_TYPE_DEFAULT;
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v8 = v16;
    if (os_log_type_enabled(v7, v15))
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 & 0xFFFFFFFE;
    }

    if (v9)
    {
      v13 = 136315138;
      v14 = "+[AVCaptureFigVideoDevice _setUpCameraHistoryOnce]_block_invoke_2";
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (id)activeFormat
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__AVCaptureFigVideoDevice_activeFormat__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __39__AVCaptureFigVideoDevice_activeFormat__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 136);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)activeDepthDataFormat
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__AVCaptureFigVideoDevice_activeDepthDataFormat__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __48__AVCaptureFigVideoDevice_activeDepthDataFormat__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 144);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void __50__AVCaptureFigVideoDevice__setUpCameraHistoryOnce__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = +[AVCaptureProprietaryDefaultsSingleton cameraHistoryDownplayOverrideList];
  v6 = [v5 containsObject:sUserPreferredCameraHistoryKey];
  if (dword_1ED8069C0)
  {
    v26 = 0;
    v25 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  os_unfair_lock_lock(&sCameraHistoryLock);

  sUserPreferredCameraHistory = a3;
  sDownplayUserPreferredCameraOverrideHistory = v6;
  os_unfair_lock_unlock(&sCameraHistoryLock);
  if (dword_1ED8069C0)
  {
    v26 = 0;
    v25 = OS_LOG_TYPE_DEFAULT;
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v9 = v26;
    if (os_log_type_enabled(v8, v25))
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 & 0xFFFFFFFE;
    }

    if (v10)
    {
      v21 = 136315138;
      v22 = "+[AVCaptureFigVideoDevice _setUpCameraHistoryOnce]_block_invoke";
      LODWORD(v19) = 12;
      v18 = &v21;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v11 = [AVCaptureFigVideoDevice _cameraHistoryDispatchQueue:v18];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__AVCaptureFigVideoDevice__setUpCameraHistoryOnce__block_invoke_33;
  block[3] = &unk_1E786EC08;
  block[4] = *(a1 + 32);
  dispatch_async(v11, block);
  if (dword_1ED8069C0)
  {
    v26 = 0;
    v25 = OS_LOG_TYPE_DEFAULT;
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v13 = v26;
    if (os_log_type_enabled(v12, v25))
    {
      v14 = v13;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFE;
    }

    if (v14)
    {
      v21 = 136315138;
      v22 = "+[AVCaptureFigVideoDevice _setUpCameraHistoryOnce]_block_invoke";
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1ED8069C0)
    {
      v26 = 0;
      v25 = OS_LOG_TYPE_DEFAULT;
      v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v16 = v26;
      if (os_log_type_enabled(v15, v25))
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 & 0xFFFFFFFE;
      }

      if (v17)
      {
        v21 = 136315395;
        v22 = "+[AVCaptureFigVideoDevice _setUpCameraHistoryOnce]_block_invoke";
        v23 = 2113;
        v24 = sUserPreferredCameraHistoryKey;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

+ (id)_cameraHistoryDispatchQueue
{
  if (_cameraHistoryDispatchQueue_onceToken != -1)
  {
    +[AVCaptureFigVideoDevice _cameraHistoryDispatchQueue];
  }

  return sPreferredCameraPropertyRefreshQueue;
}

void __54__AVCaptureFigVideoDevice__cameraHistoryDispatchQueue__block_invoke()
{
  if (dword_1ED8069C0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  sPreferredCameraPropertyRefreshQueue = MEMORY[0x1E69E96A0];
}

void __50__AVCaptureFigVideoDevice__setUpCameraHistoryOnce__block_invoke_35(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = +[AVCaptureProprietaryDefaultsSingleton cameraHistoryDownplayOverrideList];
  v6 = [v5 containsObject:sUserPreferredCameraHistoryKey];
  if (dword_1ED8069C0)
  {
    v26 = 0;
    v25 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  os_unfair_lock_lock(&sCameraHistoryLock);

  sUserPreferredCameraOverrideHistory = a3;
  sDownplayUserPreferredCameraOverrideHistory = v6;
  os_unfair_lock_unlock(&sCameraHistoryLock);
  if (dword_1ED8069C0)
  {
    v26 = 0;
    v25 = OS_LOG_TYPE_DEFAULT;
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v9 = v26;
    if (os_log_type_enabled(v8, v25))
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 & 0xFFFFFFFE;
    }

    if (v10)
    {
      v21 = 136315138;
      v22 = "+[AVCaptureFigVideoDevice _setUpCameraHistoryOnce]_block_invoke";
      LODWORD(v19) = 12;
      v18 = &v21;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v11 = [AVCaptureFigVideoDevice _cameraHistoryDispatchQueue:v18];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__AVCaptureFigVideoDevice__setUpCameraHistoryOnce__block_invoke_36;
  block[3] = &unk_1E786EC08;
  block[4] = *(a1 + 32);
  dispatch_async(v11, block);
  if (dword_1ED8069C0)
  {
    v26 = 0;
    v25 = OS_LOG_TYPE_DEFAULT;
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v13 = v26;
    if (os_log_type_enabled(v12, v25))
    {
      v14 = v13;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFE;
    }

    if (v14)
    {
      v21 = 136315138;
      v22 = "+[AVCaptureFigVideoDevice _setUpCameraHistoryOnce]_block_invoke";
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1ED8069C0)
    {
      v26 = 0;
      v25 = OS_LOG_TYPE_DEFAULT;
      v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v16 = v26;
      if (os_log_type_enabled(v15, v25))
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 & 0xFFFFFFFE;
      }

      if (v17)
      {
        v21 = 136315395;
        v22 = "+[AVCaptureFigVideoDevice _setUpCameraHistoryOnce]_block_invoke";
        v23 = 2113;
        v24 = sUserPreferredCameraOverrideHistoryKey;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

void __50__AVCaptureFigVideoDevice__setUpCameraHistoryOnce__block_invoke_40(uint64_t a1, uint64_t a2, void *a3)
{
  if (dword_1ED8069C0)
  {
    v24 = 0;
    v23 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  os_unfair_lock_lock(&sCameraHistoryLock);

  sStreamingCameraHistory = a3;
  os_unfair_lock_unlock(&sCameraHistoryLock);
  if (dword_1ED8069C0)
  {
    v24 = 0;
    v23 = OS_LOG_TYPE_DEFAULT;
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v7 = v24;
    if (os_log_type_enabled(v6, v23))
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 & 0xFFFFFFFE;
    }

    if (v8)
    {
      v19 = 136315138;
      v20 = "+[AVCaptureFigVideoDevice _setUpCameraHistoryOnce]_block_invoke";
      LODWORD(v17) = 12;
      v16 = &v19;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v9 = [AVCaptureFigVideoDevice _cameraHistoryDispatchQueue:v16];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__AVCaptureFigVideoDevice__setUpCameraHistoryOnce__block_invoke_41;
  block[3] = &unk_1E786EC08;
  block[4] = *(a1 + 32);
  dispatch_async(v9, block);
  if (dword_1ED8069C0)
  {
    v24 = 0;
    v23 = OS_LOG_TYPE_DEFAULT;
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v11 = v24;
    if (os_log_type_enabled(v10, v23))
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 & 0xFFFFFFFE;
    }

    if (v12)
    {
      v19 = 136315138;
      v20 = "+[AVCaptureFigVideoDevice _setUpCameraHistoryOnce]_block_invoke";
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1ED8069C0)
    {
      v24 = 0;
      v23 = OS_LOG_TYPE_DEFAULT;
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v14 = v24;
      if (os_log_type_enabled(v13, v23))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (v15)
      {
        v19 = 136315395;
        v20 = "+[AVCaptureFigVideoDevice _setUpCameraHistoryOnce]_block_invoke";
        v21 = 2113;
        v22 = sStreamingCameraHistoryKey;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

- (int)figCaptureSourceDeviceType
{
  v2 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E6990138]];

  return [v2 intValue];
}

+ (id)_newFigCaptureSources
{
  if (AVCaptureIsRunningInMediaserverd())
  {

    return FigCaptureSourceCopySources();
  }

  else
  {
    result = FigCaptureSourceRemoteCopyCaptureSources();
    if (!result)
    {
      for (i = 1; ; i = 0)
      {
        v4 = i;
        result = FigCaptureSourceRemoteCopyCaptureSources();
        if (result)
        {
          break;
        }

        usleep(0x3D090u);
        if ((v4 & 1) == 0)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

- (BOOL)hasFlash
{
  v2 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E6990168]];

  return [v2 BOOLValue];
}

- (BOOL)hasTorch
{
  v2 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E6990290]];

  return [v2 BOOLValue];
}

- (BOOL)_cameraAccessIsEnabled
{
  if (![(AVCaptureFigVideoDevice *)self hasMediaType:*MEMORY[0x1E6987608]]&& ![(AVCaptureFigVideoDevice *)self hasMediaType:@"pcld"]|| !FigCameraUsageProhibited())
  {
    return 1;
  }

  AVCaptureGetCurrentProcessAuditToken(&v4);
  return FigCameraUsageAllowedForClient() != 0;
}

- (id)_copyFormatsArray
{
  v3 = [(AVCaptureFigVideoDevice *)self _copyFigCaptureSourceProperty:*MEMORY[0x1E6990708]];
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [[AVCaptureDeviceFormat alloc] initWithFigCaptureSourceFormat:*(*(&v13 + 1) + 8 * v8) fcSourceAttributes:self->_fcsAttributes];
        [v4 addObject:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v3 countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v6);
  }

  v10 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v4];
  return v10;
}

- (id)deviceType
{
  v2 = [-[NSDictionary objectForKeyedSubscript:](self->_fcsAttributes objectForKeyedSubscript:{*MEMORY[0x1E6990138]), "intValue"}];
  result = &stru_1F1CBCFE8;
  switch(v2)
  {
    case 2:
    case 11:
      v4 = &AVCaptureDeviceTypeBuiltInWideAngleCamera;
      goto LABEL_17;
    case 3:
      v4 = &AVCaptureDeviceTypeBuiltInTelephotoCamera;
      goto LABEL_17;
    case 4:
      v4 = &AVCaptureDeviceTypeBuiltInDualCamera;
      goto LABEL_17;
    case 6:
    case 12:
      v4 = &AVCaptureDeviceTypeBuiltInTrueDepthCamera;
      goto LABEL_17;
    case 7:
      v4 = &AVCaptureDeviceTypeBuiltInUltraWideCamera;
      goto LABEL_17;
    case 8:
      v4 = &AVCaptureDeviceTypeBuiltInDualWideCamera;
      goto LABEL_17;
    case 9:
      v4 = &AVCaptureDeviceTypeBuiltInTripleCamera;
      goto LABEL_17;
    case 10:
      v4 = AVCaptureDeviceTypeBuiltInTimeOfFlightCamera;
      goto LABEL_17;
    case 13:
      v4 = &AVCaptureDeviceTypeBuiltInLiDARDepthCamera;
      goto LABEL_17;
    case 14:
      v4 = &AVCaptureDeviceTypeDeskViewCamera;
      goto LABEL_17;
    case 15:
      v4 = &AVCaptureDeviceTypeExternal;
      goto LABEL_17;
    case 16:
      v4 = &AVCaptureDeviceTypeContinuityCamera;
      goto LABEL_17;
    case 17:
    case 18:
      v4 = AVCaptureDeviceTypeBuiltInWideAngleMetadataCamera;
      goto LABEL_17;
    case 19:
      v4 = AVCaptureDeviceTypeBuiltInUltraWideAngleMetadataCamera;
      goto LABEL_17;
    case 20:
      v4 = AVCaptureDeviceTypeBuiltInInfraredMetadataCamera;
LABEL_17:
      result = *v4;
      break;
    default:
      return result;
  }

  return result;
}

- (BOOL)isFocusPointOfInterestSupported
{
  v2 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E6990188]];

  return [v2 BOOLValue];
}

- (BOOL)isExposurePointOfInterestSupported
{
  v2 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E6990150]];

  return [v2 BOOLValue];
}

- (void)unlockForConfiguration
{
  fcsQueue = self->_fcsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__AVCaptureFigVideoDevice_unlockForConfiguration__block_invoke;
  block[3] = &unk_1E786EC08;
  block[4] = self;
  dispatch_sync(fcsQueue, block);
}

- (int)_orderInDevicesArray
{
  v2 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E6990138]];

  return [v2 intValue];
}

- (id)localizedName
{
  result = self->_localizedName;
  if (!result)
  {
    v4 = *MEMORY[0x1E6990208];
    [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E6990208]];
    AVCaptureBundleIdentifier();
    result = AVLocalizedStringFromTableWithBundleIdentifier();
    self->_localizedName = result;
    if (!result)
    {
      result = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E69901C8]];
      self->_localizedName = result;
      if (!result)
      {
        result = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:v4];
        self->_localizedName = result;
      }
    }
  }

  return result;
}

- (BOOL)isSuspended
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__AVCaptureFigVideoDevice_isSuspended__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __49__AVCaptureFigVideoDevice_unlockForConfiguration__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 48);
  VTable = CMBaseObjectGetVTable();
  v4 = *(VTable + 16);
  result = VTable + 16;
  v5 = *(v4 + 16);
  if (v5)
  {

    return v5(v1);
  }

  return result;
}

- (BOOL)isConnected
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__AVCaptureFigVideoDevice_isConnected__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __50__AVCaptureFigVideoDevice__setUpCameraHistoryOnce__block_invoke_33(uint64_t result)
{
  if (sCameraHistoryHasBeenSetUp == 1)
  {
    v2 = *(result + 32);

    return [v2 _refreshPreferredCameraProperties:1];
  }

  else if (dword_1ED8069C0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __50__AVCaptureFigVideoDevice__setUpCameraHistoryOnce__block_invoke_36(uint64_t result)
{
  if (sCameraHistoryHasBeenSetUp == 1)
  {
    v2 = *(result + 32);

    return [v2 _refreshPreferredCameraProperties:1];
  }

  else if (dword_1ED8069C0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __50__AVCaptureFigVideoDevice__setUpCameraHistoryOnce__block_invoke_41(uint64_t result)
{
  if (sCameraHistoryHasBeenSetUp == 1)
  {
    v2 = *(result + 32);

    return [v2 _refreshPreferredCameraProperties:1];
  }

  else if (dword_1ED8069C0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)minSupportedExternalSyncFrameDuration
{
  *retstr = **&MEMORY[0x1E6960C70];
  result = [-[NSDictionary objectForKeyedSubscript:](self->_fcsAttributes objectForKeyedSubscript:{*MEMORY[0x1E6990158]), "intValue"}];
  if (result >= 1)
  {

    return CMTimeMake(retstr, 1, result);
  }

  return result;
}

- (BOOL)isLockedForConfiguration
{
  v2 = [(AVCaptureFigVideoDevice *)self _copyFigCaptureSourceProperty:*MEMORY[0x1E6990758]];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFBooleanGetValue(v2) != 0;
  CFRelease(v3);
  return v4;
}

- (OpaqueCMClock)deviceClock
{
  result = [(AVCaptureFigVideoDevice *)self _copyFigCaptureSourceProperty:*MEMORY[0x1E6990668]];
  if (result)
  {

    return CFAutorelease(result);
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)minSupportedLockedVideoFrameDuration
{
  *retstr = **&MEMORY[0x1E6960C70];
  result = [-[NSDictionary objectForKeyedSubscript:](self->_fcsAttributes objectForKeyedSubscript:{*MEMORY[0x1E69901D0]), "intValue"}];
  if (result >= 1)
  {

    return CMTimeMake(retstr, 1, result);
  }

  return result;
}

- (BOOL)isVideoZoomSmoothingSupported
{
  v2 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E69902B8]];

  return [v2 BOOLValue];
}

- (id)availableBoxedMetadataFormatDescriptions
{
  result = *&self->_eyeDetectionEnabled;
  if (!result)
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
    formatDescriptionOut = 0;
    v5 = [MEMORY[0x1E695DF70] array];
    v6 = [(AVCaptureFigVideoDevice *)self isFaceDetectionSupported];
    v7 = MEMORY[0x1E6960348];
    v8 = MEMORY[0x1E6960338];
    if (v6)
    {
      v9 = *MEMORY[0x1E6960388];
      v10 = *MEMORY[0x1E6960338];
      v45[0] = *MEMORY[0x1E6960348];
      v45[1] = v10;
      v11 = *MEMORY[0x1E69602D0];
      v46[0] = v9;
      v46[1] = v11;
      v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:2];
      [v5 addObject:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v47, 1)}];
    }

    if ([(AVCaptureFigVideoDevice *)self isObjectDetectionSupported])
    {
      v12 = *v7;
      v13 = *MEMORY[0x1E6960390];
      v14 = *v8;
      v41[0] = v12;
      v41[1] = v14;
      v15 = *MEMORY[0x1E69602D8];
      v42[0] = v13;
      v42[1] = v15;
      v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:2];
      v44[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
      v16 = *MEMORY[0x1E6960368];
      v38[0] = v12;
      v38[1] = v14;
      v17 = *MEMORY[0x1E69602C0];
      v39[0] = v16;
      v39[1] = v17;
      v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];
      v44[1] = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
      v18 = *MEMORY[0x1E6960378];
      v35[0] = v12;
      v35[1] = v14;
      v19 = *MEMORY[0x1E69602C8];
      v36[0] = v18;
      v36[1] = v19;
      v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
      v44[2] = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
      v20 = *MEMORY[0x1E6960398];
      v32[0] = v12;
      v32[1] = v14;
      v21 = *MEMORY[0x1E69602E0];
      v33[0] = v20;
      v33[1] = v21;
      v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
      v44[3] = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
      [v5 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v44, 4)}];
    }

    if ([(AVCaptureFigVideoDevice *)self isObjectDetectionSupported]|| [(AVCaptureFigVideoDevice *)self isFaceDetectionSupported])
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v22 = [v5 countByEnumeratingWithState:&v28 objects:v27 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v29;
        v25 = *MEMORY[0x1E695E480];
        do
        {
          v26 = 0;
          do
          {
            if (*v29 != v24)
            {
              objc_enumerationMutation(v5);
            }

            if (!CMMetadataFormatDescriptionCreateWithMetadataSpecifications(v25, 0x6D656278u, *(*(&v28 + 1) + 8 * v26), &formatDescriptionOut))
            {
              [v4 addObject:formatDescriptionOut];
              CFRelease(formatDescriptionOut);
            }

            ++v26;
          }

          while (v23 != v26);
          v23 = [v5 countByEnumeratingWithState:&v28 objects:v27 count:16];
        }

        while (v23);
      }
    }

    result = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v4];
    *&self->_eyeDetectionEnabled = result;
  }

  return result;
}

- (BOOL)isObjectDetectionSupported
{
  v2 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E6990210]];

  return [v2 BOOLValue];
}

- (BOOL)isCameraIntrinsicMatrixDeliverySupported
{
  v3 = [-[NSDictionary objectForKeyedSubscript:](self->_fcsAttributes objectForKeyedSubscript:{*MEMORY[0x1E6990178]), "BOOLValue"}];
  if (v3)
  {
    v4 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E69901B8]];

    LOBYTE(v3) = [v4 BOOLValue];
  }

  return v3;
}

- (int64_t)activeColorSpace
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__AVCaptureFigVideoDevice_activeColorSpace__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isWideColorSupported
{
  v2 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E69902E0]];

  return [v2 BOOLValue];
}

- (int64_t)videoStabilizationStrength
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__AVCaptureFigVideoDevice_videoStabilizationStrength__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)automaticallyAdjustsVideoHDREnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__AVCaptureFigVideoDevice_automaticallyAdjustsVideoHDREnabled__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isActiveVideoMinFrameDurationSet
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__AVCaptureFigVideoDevice_isActiveVideoMinFrameDurationSet__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isActiveVideoMaxFrameDurationSet
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__AVCaptureFigVideoDevice_isActiveVideoMaxFrameDurationSet__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isPortraitEffectActive
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__AVCaptureFigVideoDevice_isPortraitEffectActive__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isStudioLightActive
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__AVCaptureFigVideoDevice_isStudioLightActive__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isBackgroundReplacementActive
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__AVCaptureFigVideoDevice_isBackgroundReplacementActive__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isCenterStageActive
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__AVCaptureFigVideoDevice_isCenterStageActive__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isVideoHDREnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__AVCaptureFigVideoDevice_isVideoHDREnabled__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_resetVideoHDRSuspended
{
  if ([(AVCaptureFigVideoDevice *)self isVideoHDRSuspended])
  {
    [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"videoHDRSuspended"];
    devicePropsQueue = self->_devicePropsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__AVCaptureFigVideoDevice__resetVideoHDRSuspended__block_invoke;
    block[3] = &unk_1E786EC08;
    block[4] = self;
    dispatch_sync(devicePropsQueue, block);
    [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"videoHDRSuspended"];
  }
}

- (BOOL)isVideoHDRSuspended
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__AVCaptureFigVideoDevice_isVideoHDRSuspended__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isHEVCSupported
{
  BoolAnswer = AVGestaltGetBoolAnswer(@"AVGQCaptureAppsMayUseHEVC");
  if (BoolAnswer)
  {
    v4 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E69901B0]];

    LOBYTE(BoolAnswer) = [v4 BOOLValue];
  }

  return BoolAnswer;
}

- (BOOL)isHEVCPreferred
{
  v2 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E6990228]];

  return [v2 BOOLValue];
}

- (BOOL)isProResSupported
{
  v2 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E6990238]];

  return [v2 BOOLValue];
}

- (BOOL)isAutoRedEyeReductionSupported
{
  v2 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E6990240]];

  return [v2 BOOLValue];
}

- (BOOL)isVideoStabilizationSupported
{
  v2 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E69902A0]];

  return [v2 BOOLValue];
}

- (BOOL)isFlashSceneDetectedForPhotoOutput
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__AVCaptureFigVideoDevice_isFlashSceneDetectedForPhotoOutput__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isHDRSceneDetectedForPhotoOutput
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__AVCaptureFigVideoDevice_isHDRSceneDetectedForPhotoOutput__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)digitalFlashSceneForPhotoOutput
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__AVCaptureFigVideoDevice_digitalFlashSceneForPhotoOutput__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __58__AVCaptureFigVideoDevice_digitalFlashSceneForPhotoOutput__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 928);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (int64_t)imageControlMode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__AVCaptureFigVideoDevice_imageControlMode__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isHEIFSupported
{
  v2 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E69901A8]];

  return [v2 BOOLValue];
}

- (BOOL)isDICOMSupported
{
  v2 = [-[NSDictionary objectForKeyedSubscript:](self->_fcsAttributes objectForKeyedSubscript:{*MEMORY[0x1E6990100]), "BOOLValue"}];
  if (v2)
  {

    LOBYTE(v2) = AVGestaltGetBoolAnswer(@"AVGQCaptureDICOMSupported");
  }

  return v2;
}

- (BOOL)isLensStabilizationSupported
{
  v2 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E6990260]];

  return [v2 BOOLValue];
}

- (BOOL)isStillImageStabilizationScene
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__AVCaptureFigVideoDevice_isStillImageStabilizationScene__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isPreviewQualityAdjustedPhotoFilterRenderingSupported
{
  v2 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E6990230]];

  return [v2 BOOLValue];
}

- (BOOL)ultraHighResolutionZeroShutterLagEnabled
{
  v2 = [(AVCaptureFigVideoDevice *)self _copyFigCaptureSourceProperty:*MEMORY[0x1E6990838]];

  return [v2 BOOLValue];
}

- (void)_updateMinMaxDefaultVideoZoomFactors
{
  v10 = 0.0;
  v11 = 0.0;
  v9 = 0.0;
  [(AVCaptureFigVideoDevice *)self _computeMinVideoZoomFactorOut:&v11 maxVideoZoomFactorOut:&v10 defaultVideoZoomFactorOut:&v9 centerStageActiveOverride:BYTE4(self->_degradedCaptureQualityFactors) resetZoomFactor:0];
  [(AVCaptureFigVideoDevice *)self _setMinAvailableVideoZoomFactor:v11];
  [(AVCaptureFigVideoDevice *)self _setMaxAvailableVideoZoomFactor:v10];
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__AVCaptureFigVideoDevice__updateMinMaxDefaultVideoZoomFactors__block_invoke;
  v4[3] = &unk_1E7870310;
  *&v4[6] = v9;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(devicePropsQueue, v4);
  if (*(v6 + 24) == 1)
  {
    [(AVCaptureFigVideoDevice *)self _setVideoZoomFactor:v9];
  }

  _Block_object_dispose(&v5, 8);
}

- (void)_populateSupportedFallbackPrimaryConstituentDevices
{
  if (!self->_primaryConstituentDeviceRestrictedSwitchingBehaviorConditions)
  {
    v19 = v2;
    v20 = v3;
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = [(AVCaptureFigVideoDevice *)self _copyFigCaptureSourceProperty:*MEMORY[0x1E6990800]];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [(AVCaptureDevice *)self constituentDevices];
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v14 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if ([v6 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", objc_msgSend(v12, "figCaptureSourceDeviceType"))}])
          {
            [v5 addObject:v12];
          }
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v14 count:16];
      }

      while (v9);
    }

    v13 = [v5 copy];
    self->_primaryConstituentDeviceRestrictedSwitchingBehaviorConditions = v13;
    if (!self->_supportedFallbackPrimaryConstituentDevices)
    {
      self->_supportedFallbackPrimaryConstituentDevices = v13;
    }
  }
}

- (BOOL)isResponsiveCaptureWithDepthSupported
{
  v2 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E6990130]];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E698FA18]];

  return [v3 BOOLValue];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)activeVideoMinFrameDuration
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3810000000;
  v10 = &unk_1A92DB249;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__AVCaptureFigVideoDevice_activeVideoMinFrameDuration__block_invoke;
  block[3] = &unk_1E7870040;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(devicePropsQueue, block);
  *retstr = *(v8 + 4);
  _Block_object_dispose(&v7, 8);
  return result;
}

__n128 __54__AVCaptureFigVideoDevice_activeVideoMinFrameDuration__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  v3 = *(*(a1 + 32) + 240);
  result = *(*(a1 + 32) + 224);
  v2[2] = result;
  v2[3].n128_u64[0] = v3;
  v5 = *(a1 + 32);
  if (*(v5 + 1372) == 1 && (*(v5 + 1373) & 1) != 0 || *(v5 + 1459) == 1)
  {
    v6 = *(*(a1 + 40) + 8);
    v7 = [*(v5 + 136) videoFrameRateRangeForCenterStage];
    if (v7)
    {
      [v7 minFrameDuration];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    time1 = *(v6 + 32);
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      v10 = [*(*(a1 + 32) + 136) videoFrameRateRangeForCenterStage];
      if (v10)
      {
        v11 = v59;
        [v10 minFrameDuration];
      }

      else
      {
        memset(v59, 0, sizeof(v59));
        v11 = v59;
      }

      goto LABEL_18;
    }

    v8 = *(*(a1 + 40) + 8);
    v9 = [*(*(a1 + 32) + 136) videoFrameRateRangeForCenterStage];
    if (v9)
    {
      [v9 maxFrameDuration];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    time1 = *(v8 + 32);
    if (CMTimeCompare(&time1, &time2) >= 1)
    {
      v12 = [*(*(a1 + 32) + 136) videoFrameRateRangeForCenterStage];
      if (v12)
      {
        v11 = v58;
        [v12 maxFrameDuration];
      }

      else
      {
        memset(v58, 0, sizeof(v58));
        v11 = v58;
      }

LABEL_18:
      v13 = *(*(a1 + 40) + 8);
      result = *v11;
      v13[2] = *v11;
      v13[3].n128_u64[0] = v11[1].n128_u64[0];
    }
  }

  v14 = *(a1 + 32);
  if (*(v14 + 1410) == 1 && *(v14 + 1411) == 1)
  {
    v15 = *(*(a1 + 40) + 8);
    v16 = [*(v14 + 136) videoFrameRateRangeForBackgroundBlur];
    if (v16)
    {
      [v16 minFrameDuration];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    time1 = *(v15 + 32);
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      v19 = [*(*(a1 + 32) + 136) videoFrameRateRangeForBackgroundBlur];
      if (v19)
      {
        v20 = v57;
        [v19 minFrameDuration];
      }

      else
      {
        memset(v57, 0, sizeof(v57));
        v20 = v57;
      }

      goto LABEL_35;
    }

    v17 = *(*(a1 + 40) + 8);
    v18 = [*(*(a1 + 32) + 136) videoFrameRateRangeForBackgroundBlur];
    if (v18)
    {
      [v18 maxFrameDuration];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    time1 = *(v17 + 32);
    if (CMTimeCompare(&time1, &time2) >= 1)
    {
      v21 = [*(*(a1 + 32) + 136) videoFrameRateRangeForBackgroundBlur];
      if (v21)
      {
        v20 = v56;
        [v21 maxFrameDuration];
      }

      else
      {
        memset(v56, 0, sizeof(v56));
        v20 = v56;
      }

LABEL_35:
      v22 = *(*(a1 + 40) + 8);
      result = *v20;
      v22[2] = *v20;
      v22[3].n128_u64[0] = v20[1].n128_u64[0];
    }
  }

  v23 = *(a1 + 32);
  if (*(v23 + 1413) == 1 && *(v23 + 1414) == 1)
  {
    v24 = *(*(a1 + 40) + 8);
    v25 = [*(v23 + 136) videoFrameRateRangeForStudioLight];
    if (v25)
    {
      [v25 minFrameDuration];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    time1 = *(v24 + 32);
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      v28 = [*(*(a1 + 32) + 136) videoFrameRateRangeForStudioLight];
      if (v28)
      {
        v29 = v55;
        [v28 minFrameDuration];
      }

      else
      {
        memset(v55, 0, sizeof(v55));
        v29 = v55;
      }

      goto LABEL_52;
    }

    v26 = *(*(a1 + 40) + 8);
    v27 = [*(*(a1 + 32) + 136) videoFrameRateRangeForStudioLight];
    if (v27)
    {
      [v27 maxFrameDuration];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    time1 = *(v26 + 32);
    if (CMTimeCompare(&time1, &time2) >= 1)
    {
      v30 = [*(*(a1 + 32) + 136) videoFrameRateRangeForStudioLight];
      if (v30)
      {
        v29 = v54;
        [v30 maxFrameDuration];
      }

      else
      {
        memset(v54, 0, sizeof(v54));
        v29 = v54;
      }

LABEL_52:
      v31 = *(*(a1 + 40) + 8);
      result = *v29;
      v31[2] = *v29;
      v31[3].n128_u64[0] = v29[1].n128_u64[0];
    }
  }

  v32 = *(a1 + 32);
  if (*(v32 + 1419) == 1 && *(v32 + 1420) == 1)
  {
    v33 = *(*(a1 + 40) + 8);
    v34 = [*(v32 + 136) videoFrameRateRangeForBackgroundReplacement];
    if (v34)
    {
      [v34 minFrameDuration];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    time1 = *(v33 + 32);
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      v37 = [*(*(a1 + 32) + 136) videoFrameRateRangeForBackgroundReplacement];
      if (v37)
      {
        v38 = v53;
        [v37 minFrameDuration];
      }

      else
      {
        memset(v53, 0, sizeof(v53));
        v38 = v53;
      }

      goto LABEL_69;
    }

    v35 = *(*(a1 + 40) + 8);
    v36 = [*(*(a1 + 32) + 136) videoFrameRateRangeForBackgroundReplacement];
    if (v36)
    {
      [v36 maxFrameDuration];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    time1 = *(v35 + 32);
    if (CMTimeCompare(&time1, &time2) >= 1)
    {
      v39 = [*(*(a1 + 32) + 136) videoFrameRateRangeForBackgroundReplacement];
      if (v39)
      {
        v38 = v52;
        [v39 maxFrameDuration];
      }

      else
      {
        memset(v52, 0, sizeof(v52));
        v38 = v52;
      }

LABEL_69:
      v40 = *(*(a1 + 40) + 8);
      result = *v38;
      v40[2] = *v38;
      v40[3].n128_u64[0] = v38[1].n128_u64[0];
    }
  }

  v41 = *(a1 + 32);
  if (*(v41 + 189) != 1)
  {
    return result;
  }

  v42 = *(*(a1 + 40) + 8);
  v43 = [*(v41 + 136) videoFrameRateRangeForCinematicVideo];
  if (v43)
  {
    [v43 minFrameDuration];
  }

  else
  {
    memset(&time2, 0, sizeof(time2));
  }

  time1 = *(v42 + 32);
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    v46 = [*(*(a1 + 32) + 136) videoFrameRateRangeForCinematicVideo];
    if (v46)
    {
      v47 = v51;
      [v46 minFrameDuration];
    }

    else
    {
      memset(v51, 0, sizeof(v51));
      v47 = v51;
    }

    goto LABEL_85;
  }

  v44 = *(*(a1 + 40) + 8);
  v45 = [*(*(a1 + 32) + 136) videoFrameRateRangeForCinematicVideo];
  if (v45)
  {
    [v45 maxFrameDuration];
  }

  else
  {
    memset(&time2, 0, sizeof(time2));
  }

  time1 = *(v44 + 32);
  if (CMTimeCompare(&time1, &time2) >= 1)
  {
    v48 = [*(*(a1 + 32) + 136) videoFrameRateRangeForCinematicVideo];
    if (v48)
    {
      v47 = v50;
      [v48 maxFrameDuration];
    }

    else
    {
      memset(v50, 0, sizeof(v50));
      v47 = v50;
    }

LABEL_85:
    v49 = *(*(a1 + 40) + 8);
    result = *v47;
    v49[2] = *v47;
    v49[3].n128_u64[0] = v47[1].n128_u64[0];
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)activeVideoMaxFrameDuration
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3810000000;
  v10 = &unk_1A92DB249;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__AVCaptureFigVideoDevice_activeVideoMaxFrameDuration__block_invoke;
  block[3] = &unk_1E7870040;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(devicePropsQueue, block);
  *retstr = *(v8 + 4);
  _Block_object_dispose(&v7, 8);
  return result;
}

- (BOOL)isNonDestructiveCropEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__AVCaptureFigVideoDevice_isNonDestructiveCropEnabled__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)supportedFallbackPrimaryConstituentDevices
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__7;
  v11 = __Block_byref_object_dispose__7;
  v12 = MEMORY[0x1E695E0F0];
  if ([(AVCaptureFigVideoDevice *)self _isBravoVariant])
  {
    if (!self->_primaryConstituentDeviceRestrictedSwitchingBehaviorConditions)
    {
      [(AVCaptureFigVideoDevice *)self _populateSupportedFallbackPrimaryConstituentDevices];
    }

    devicePropsQueue = self->_devicePropsQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __69__AVCaptureFigVideoDevice_supportedFallbackPrimaryConstituentDevices__block_invoke;
    v6[3] = &unk_1E7870040;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(devicePropsQueue, v6);
  }

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

id __69__AVCaptureFigVideoDevice_supportedFallbackPrimaryConstituentDevices__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 1184);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (BOOL)isCameraLensSmudgeDetectionEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__AVCaptureFigVideoDevice_isCameraLensSmudgeDetectionEnabled__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)supportedMetadataObjectIdentifiers
{
  if (!self->_weakReference)
  {
    v3 = [(AVCaptureFigVideoDevice *)self availableMetadataKeyGroups];
    self->_weakReference = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = [v3 allValues];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [(AVWeakReference *)self->_weakReference addObjectsFromArray:*(*(&v11 + 1) + 8 * v8++)];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
      }

      while (v6);
    }
  }

  return self->_weakReference;
}

- (id)supportedMetadataObjectIdentifiersForZeroFrameDelaySynchronization
{
  if (!self->_captureSourceSupportedMetadata)
  {
    v3 = [(AVCaptureFigVideoDevice *)self availableMetadataKeyGroupsSupportingZeroFrameDelaySynchronization];
    self->_captureSourceSupportedMetadata = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = [v3 allValues];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [(NSMutableArray *)self->_captureSourceSupportedMetadata addObjectsFromArray:*(*(&v11 + 1) + 8 * v8++)];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
      }

      while (v6);
    }
  }

  return self->_captureSourceSupportedMetadata;
}

- (BOOL)isGeometricDistortionCorrectionEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__AVCaptureFigVideoDevice_isGeometricDistortionCorrectionEnabled__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isGeometricDistortionCorrectionSupported
{
  v2 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E6990198]];

  return [v2 BOOLValue];
}

- (BOOL)_isDepthDataDeliveryEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__AVCaptureFigVideoDevice__isDepthDataDeliveryEnabled__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isManualFramingEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__AVCaptureFigVideoDevice_isManualFramingEnabled__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isGazeSelectionEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__AVCaptureFigVideoDevice_isGazeSelectionEnabled__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isDockedTrackingEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__AVCaptureFigVideoDevice_isDockedTrackingEnabled__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)canPerformReactionEffects
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__AVCaptureFigVideoDevice_canPerformReactionEffects__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int)faceDrivenAEAFMode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__AVCaptureFigVideoDevice_faceDrivenAEAFMode__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)fallbackPrimaryConstituentDevicesAsDeviceTypes
{
  if ([(AVCaptureFigVideoDevice *)self _isBravoVariant]&& !self->_primaryConstituentDeviceRestrictedSwitchingBehaviorConditions)
  {
    [(AVCaptureFigVideoDevice *)self _populateSupportedFallbackPrimaryConstituentDevices];
  }

  supportedFallbackPrimaryConstituentDevices = self->_supportedFallbackPrimaryConstituentDevices;

  return avcfvd_deviceTypesFromAVCaptureDevices(supportedFallbackPrimaryConstituentDevices);
}

- (BOOL)appliesSessionPresetMaxIntegrationTimeOverrideToActiveFormat
{
  v2 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E6990098]];

  return [v2 BOOLValue];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)activeMaxExposureDurationClientOverride
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3810000000;
  v10 = &unk_1A92DB249;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__AVCaptureFigVideoDevice_activeMaxExposureDurationClientOverride__block_invoke;
  block[3] = &unk_1E7870040;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(devicePropsQueue, block);
  *retstr = *(v8 + 4);
  _Block_object_dispose(&v7, 8);
  return result;
}

__n128 __66__AVCaptureFigVideoDevice_activeMaxExposureDurationClientOverride__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  v2 = (*(a1 + 32) + 684);
  v3 = *(*(a1 + 32) + 700);
  result = *v2;
  v1[2] = *v2;
  v1[3].n128_u64[0] = v3;
  return result;
}

- (BOOL)isEyeDetectionSupported
{
  v2 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E6990268]];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E6990598]];

  return [v3 BOOLValue];
}

- (BOOL)isEyeClosedDetectionSupported
{
  v2 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E6990268]];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E6990590]];

  return [v3 BOOLValue];
}

- (BOOL)isSmileDetectionSupported
{
  v2 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E6990268]];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69905A0]];

  return [v3 BOOLValue];
}

- (BOOL)isLowLightVideoCaptureEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__AVCaptureFigVideoDevice_isLowLightVideoCaptureEnabled__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isSpatialOverCaptureEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__AVCaptureFigVideoDevice_isSpatialOverCaptureEnabled__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (CGSize)normalizedNonDestructiveCropSize
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3010000000;
  v12 = 0;
  v13 = 0;
  v11 = &unk_1A92DB249;
  devicePropsQueue = self->_devicePropsQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__AVCaptureFigVideoDevice_normalizedNonDestructiveCropSize__block_invoke;
  v7[3] = &unk_1E7870040;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(devicePropsQueue, v7);
  v3 = v9[4];
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);
  v5 = v3;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

__n128 __59__AVCaptureFigVideoDevice_normalizedNonDestructiveCropSize__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 1312);
  *(*(*(a1 + 40) + 8) + 32) = result;
  return result;
}

- (BOOL)isVariableFrameRateVideoCaptureEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__AVCaptureFigVideoDevice_isVariableFrameRateVideoCaptureEnabled__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)cameraLensSmudgeDetectionInterval
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3810000000;
  v10 = &unk_1A92DB249;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__AVCaptureFigVideoDevice_cameraLensSmudgeDetectionInterval__block_invoke;
  block[3] = &unk_1E7870040;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(devicePropsQueue, block);
  *retstr = *(v8 + 4);
  _Block_object_dispose(&v7, 8);
  return result;
}

__n128 __60__AVCaptureFigVideoDevice_cameraLensSmudgeDetectionInterval__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  v2 = (*(a1 + 32) + 1588);
  v3 = *(*(a1 + 32) + 1604);
  result = *v2;
  v1[2] = *v2;
  v1[3].n128_u64[0] = v3;
  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)activeDepthDataMinFrameDuration
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3810000000;
  v10 = &unk_1A92DB249;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__AVCaptureFigVideoDevice_activeDepthDataMinFrameDuration__block_invoke;
  block[3] = &unk_1E7870040;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(devicePropsQueue, block);
  *retstr = *(v8 + 4);
  _Block_object_dispose(&v7, 8);
  return result;
}

__n128 __58__AVCaptureFigVideoDevice_activeDepthDataMinFrameDuration__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  v2 = (*(a1 + 32) + 160);
  v3 = *(*(a1 + 32) + 176);
  result = *v2;
  v1[2] = *v2;
  v1[3].n128_u64[0] = v3;
  return result;
}

- (int64_t)cameraLensSmudgeDetectionStatus
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__AVCaptureFigVideoDevice_cameraLensSmudgeDetectionStatus__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unint64_t)stereoVideoCaptureStatus
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__AVCaptureFigVideoDevice_stereoVideoCaptureStatus__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)systemPressureState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__AVCaptureFigVideoDevice_systemPressureState__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __46__AVCaptureFigVideoDevice_systemPressureState__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 1288);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (BOOL)isRampingVideoZoom
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__AVCaptureFigVideoDevice_isRampingVideoZoom__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (double)minAvailableVideoZoomFactor
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__AVCaptureFigVideoDevice_minAvailableVideoZoomFactor__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __54__AVCaptureFigVideoDevice_minAvailableVideoZoomFactor__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 1048);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (unint64_t)degradedCaptureQualityFactors
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__AVCaptureFigVideoDevice_degradedCaptureQualityFactors__block_invoke;
  v5[3] = &unk_1E786FEE0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __56__AVCaptureFigVideoDevice_degradedCaptureQualityFactors__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (*(result + 1368) == 1)
  {
    [result _initDegradedCaptureQualityFactors];
    result = *(a1 + 32);
  }

  *(*(*(a1 + 40) + 8) + 24) = *(result + 1360);
  return result;
}

- (void)_initDegradedCaptureQualityFactors
{
  if (!_FigIsCurrentDispatchQueue())
  {
    [AVCaptureFigVideoDevice _initDegradedCaptureQualityFactors];
  }

  self->_cameraPoseMatrix = 0;
  if (BYTE1(self->_degradedCaptureQualityFactors) == 1)
  {
    self->_cameraPoseMatrix = [-[AVCaptureFigVideoDevice _getFigCaptureSourceProperty:](self _getFigCaptureSourceProperty:{*MEMORY[0x1E6990858]), "BOOLValue"}];
  }

  if (BYTE2(self->_degradedCaptureQualityFactors) == 1)
  {
    v3 = [-[AVCaptureFigVideoDevice _getFigCaptureSourceProperty:](self _getFigCaptureSourceProperty:{*MEMORY[0x1E6990620]), "BOOLValue"}];
    v4 = 2;
    if (!v3)
    {
      v4 = 0;
    }

    self->_cameraPoseMatrix = (self->_cameraPoseMatrix | v4);
  }

  LOBYTE(self->_degradedCaptureQualityFactors) = 0;
}

- (BOOL)isTorchAvailable
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__AVCaptureFigVideoDevice_isTorchAvailable__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isFlashAvailable
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__AVCaptureFigVideoDevice_isFlashAvailable__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)preferredPrimaryConstituentDevice
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__7;
  v11 = __Block_byref_object_dispose__7;
  v12 = 0;
  if ([(AVCaptureFigVideoDevice *)self _isBravoVariant])
  {
    devicePropsQueue = self->_devicePropsQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __60__AVCaptureFigVideoDevice_preferredPrimaryConstituentDevice__block_invoke;
    v6[3] = &unk_1E7870040;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(devicePropsQueue, v6);
  }

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (BOOL)isTorchActive
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__AVCaptureFigVideoDevice_isTorchActive__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_updateFigCaptureSourceObserverCounts
{
  if (!_FigIsCurrentDispatchQueue())
  {
    [AVCaptureFigVideoDevice _updateFigCaptureSourceObserverCounts];
  }

  if ([(AVCaptureFigVideoDevice *)self lockForConfiguration:0])
  {
    [(AVCaptureFigVideoDevice *)self _setFigCaptureSourceProperty:*MEMORY[0x1E6990768] withValue:self->_observedHighFrequencyPropertiesQueue];

    [(AVCaptureFigVideoDevice *)self unlockForConfiguration];
  }
}

- (float)lensPosition
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = -1082130432;
  if ([(AVCaptureFigVideoDevice *)self _hasKeyValueObserversForHighFrequencyProperty:@"lensPosition"])
  {
    devicePropsQueue = self->_devicePropsQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __39__AVCaptureFigVideoDevice_lensPosition__block_invoke;
    v9[3] = &unk_1E7870040;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(devicePropsQueue, v9);
  }

  v4 = v11[6];
  if (v4 == -1.0)
  {
    v5 = [(AVCaptureFigVideoDevice *)self _copyFigCaptureSourceProperty:*MEMORY[0x1E69906F8]];
    v6 = v5;
    if (v5)
    {
      [v5 floatValue];
      *(v11 + 6) = v7;

      v4 = v11[6];
    }

    else
    {
      v11[6] = 1.0;
      v4 = 1.0;
    }
  }

  _Block_object_dispose(&v10, 8);
  return v4;
}

float __39__AVCaptureFigVideoDevice_lensPosition__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 476);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (float)exposureTargetBias
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__AVCaptureFigVideoDevice_exposureTargetBias__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = v7[6];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)exposureMode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__AVCaptureFigVideoDevice_exposureMode__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isAdjustingFocus
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__AVCaptureFigVideoDevice_isAdjustingFocus__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)focusMode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__AVCaptureFigVideoDevice_focusMode__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (CGPoint)focusPointOfInterest
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3010000000;
  v12 = 0;
  v13 = 0;
  v11 = &unk_1A92DB249;
  devicePropsQueue = self->_devicePropsQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__AVCaptureFigVideoDevice_focusPointOfInterest__block_invoke;
  v7[3] = &unk_1E7870040;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(devicePropsQueue, v7);
  v3 = v9[4];
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);
  v5 = v3;
  v6 = v4;
  result.y = v6;
  result.x = v5;
  return result;
}

- (void)updateStreamingDeviceHistory
{
  v2 = sStreamingCameraHistoryKey;
  v3 = [(AVCaptureFigVideoDevice *)self _cameraInfo];

  [AVCaptureProprietaryDefaultsSingleton updateCameraHistory:v2 withCameraInfo:v3 maxLength:10 updateCameraHistoryDownplayOverrideList:0 cameraCanBeInOverrideList:0];
}

- (id)_cameraInfo
{
  specialDeviceType = self->_specialDeviceType;
  if (specialDeviceType == 2)
  {
    v5 = 0;
  }

  else if (specialDeviceType == 3)
  {
    v5 = 1;
  }

  else if (BYTE3(self->_degradedCaptureQualityFactors))
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  v8[3] = v2;
  v8[4] = v3;
  v8[2] = [MEMORY[0x1E696AD98] numberWithInt:{v5, @"CreatorID", @"DeviceUID", @"OverrideRanking", self->_creatorID, self->_fcsUID}];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:3];
}

- (BOOL)isFlashActive
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__AVCaptureFigVideoDevice_isFlashActive__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isAdjustingExposure
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__AVCaptureFigVideoDevice_isAdjustingExposure__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (CGPoint)exposurePointOfInterest
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3010000000;
  v12 = 0;
  v13 = 0;
  v11 = &unk_1A92DB249;
  devicePropsQueue = self->_devicePropsQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__AVCaptureFigVideoDevice_exposurePointOfInterest__block_invoke;
  v7[3] = &unk_1E7870040;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(devicePropsQueue, v7);
  v3 = v9[4];
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);
  v5 = v3;
  v6 = v4;
  result.y = v6;
  result.x = v5;
  return result;
}

__n128 __47__AVCaptureFigVideoDevice_focusPointOfInterest__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 408);
  *(*(*(a1 + 40) + 8) + 32) = result;
  return result;
}

id __60__AVCaptureFigVideoDevice_preferredPrimaryConstituentDevice__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 1200);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)virtualDeviceSwitchOverVideoZoomFactors
{
  v2 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E69900D0]];
  if ([v2 count])
  {
    return v2;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (id)activePrimaryConstituentDevice
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__7;
  v11 = __Block_byref_object_dispose__7;
  v12 = 0;
  if ([(AVCaptureFigVideoDevice *)self _isBravoVariant])
  {
    devicePropsQueue = self->_devicePropsQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __57__AVCaptureFigVideoDevice_activePrimaryConstituentDevice__block_invoke;
    v6[3] = &unk_1E7870040;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(devicePropsQueue, v6);
  }

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

id __57__AVCaptureFigVideoDevice_activePrimaryConstituentDevice__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 1144);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

__n128 __50__AVCaptureFigVideoDevice_exposurePointOfInterest__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 592);
  *(*(*(a1 + 40) + 8) + 32) = result;
  return result;
}

float __45__AVCaptureFigVideoDevice_exposureTargetBias__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 580);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int)figCaptureSourcePosition
{
  v2 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E6990220]];

  return [v2 intValue];
}

- (BOOL)isAutoFocusRangeRestrictionSupported
{
  v2 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E69900B8]];

  return [v2 BOOLValue];
}

- (BOOL)isSmoothAutoFocusSupported
{
  v2 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E6990258]];

  return [v2 BOOLValue];
}

+ (id)_devicesWithPriorRegisteredDevices:(id)a3
{
  +[AVCaptureDevice setUpCenterStageStateOnce];
  +[AVCaptureDevice setUpBackgroundBlurStateOnce];
  +[AVCaptureDevice setUpStudioLightingStateOnce];
  +[AVCaptureDevice setUpReactionEffectsStateOnce];
  +[AVCaptureDevice setUpBackgroundReplacementStateOnce];
  v23 = [MEMORY[0x1E695DF70] array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = +[AVCaptureFigVideoDevice _newFigCaptureSources];
  v4 = [obj countByEnumeratingWithState:&v31 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v32;
    v20 = *MEMORY[0x1E69905E0];
    v19 = *MEMORY[0x1E695E480];
    v22 = *MEMORY[0x1E6990298];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v31 + 1) + 8 * i);
        if ([a3 count])
        {
          v29 = 0;
          v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v9)
          {
            v9(v8, v20, v19, &v29);
          }

          v10 = [v29 objectForKeyedSubscript:v22];

          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v11 = [a3 countByEnumeratingWithState:&v25 objects:v24 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v26;
LABEL_11:
            v14 = 0;
            while (1)
            {
              if (*v26 != v13)
              {
                objc_enumerationMutation(a3);
              }

              v15 = *(*(&v25 + 1) + 8 * v14);
              if ([objc_msgSend(v15 "uniqueID")])
              {
                break;
              }

              if (v12 == ++v14)
              {
                v12 = [a3 countByEnumeratingWithState:&v25 objects:v24 count:16];
                if (v12)
                {
                  goto LABEL_11;
                }

                goto LABEL_17;
              }
            }

            v16 = v15;

            if (v16)
            {
              goto LABEL_20;
            }
          }

          else
          {
LABEL_17:
          }
        }

        v16 = [[AVCaptureFigVideoDevice alloc] _initWithFigCaptureSource:v8 isProxy:0];
LABEL_20:
        [v23 addObject:v16];
      }

      v5 = [obj countByEnumeratingWithState:&v31 objects:v30 count:16];
    }

    while (v5);
  }

  v17 = [MEMORY[0x1E695DF70] array];
  [v17 addObject:{objc_msgSend(MEMORY[0x1E696AEB0], "sortDescriptorWithKey:ascending:", @"_orderInDevicesArray", 1)}];
  [v17 addObject:{objc_msgSend(MEMORY[0x1E696AEB0], "sortDescriptorWithKey:ascending:", @"position", 1)}];
  return [v23 sortedArrayUsingDescriptors:v17];
}

+ (void)_reconnectDevices:(id)a3
{
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = +[AVCaptureFigVideoDevice _newFigCaptureSources];
  v4 = [obj countByEnumeratingWithState:&v27 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v19 = *v28;
    v17 = *MEMORY[0x1E69905E0];
    v16 = *MEMORY[0x1E695E480];
    v6 = *MEMORY[0x1E6990298];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v27 + 1) + 8 * i);
        v25 = 0;
        v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v9)
        {
          v9(v8, v17, v16, &v25);
        }

        v10 = [v25 objectForKeyedSubscript:{v6, v16, v17}];

        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v11 = [a3 countByEnumeratingWithState:&v21 objects:v20 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v22;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v22 != v13)
              {
                objc_enumerationMutation(a3);
              }

              v15 = *(*(&v21 + 1) + 8 * j);
              if ([objc_msgSend(v15 "uniqueID")])
              {
                [v15 _reconnectToFigCaptureSource:v8];
                goto LABEL_18;
              }
            }

            v12 = [a3 countByEnumeratingWithState:&v21 objects:v20 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

LABEL_18:
      }

      v5 = [obj countByEnumeratingWithState:&v27 objects:v26 count:16];
    }

    while (v5);
  }
}

+ (id)_userPreferredCameraOverrideHistoryKey
{
  if (_userPreferredCameraOverrideHistoryKey_onceToken != -1)
  {
    +[AVCaptureFigVideoDevice _userPreferredCameraOverrideHistoryKey];
  }

  return sUserPreferredCameraOverrideHistoryKey;
}

uint64_t __65__AVCaptureFigVideoDevice__userPreferredCameraOverrideHistoryKey__block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@/override/%@", @"camera-history", @"preferred-camera-history"];
  sUserPreferredCameraOverrideHistoryKey = result;
  return result;
}

+ (BOOL)allowsSuspendedPreferredCameras
{
  [a1 _setUpCameraHistoryOnce];
  os_unfair_lock_lock(&sCameraHistoryLock);
  v2 = sAllowsSuspendedPreferredCameras;
  os_unfair_lock_unlock(&sCameraHistoryLock);
  return v2;
}

+ (void)setAllowsSuspendedPreferredCameras:(BOOL)a3
{
  v3 = a3;
  [a1 _setUpCameraHistoryOnce];
  os_unfair_lock_lock(&sCameraHistoryLock);
  if (sAllowsSuspendedPreferredCameras == v3)
  {

    os_unfair_lock_unlock(&sCameraHistoryLock);
  }

  else
  {
    sAllowsSuspendedPreferredCameras = v3;
    os_unfair_lock_unlock(&sCameraHistoryLock);
    if (dword_1ED8069C0)
    {
      v16 = 0;
      v15 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v6 = [AVCaptureFigVideoDevice _cameraHistoryDispatchQueue:v10];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__AVCaptureFigVideoDevice_setAllowsSuspendedPreferredCameras___block_invoke;
    block[3] = &unk_1E786EC08;
    block[4] = a1;
    dispatch_async(v6, block);
    if (dword_1ED8069C0)
    {
      v16 = 0;
      v15 = OS_LOG_TYPE_DEFAULT;
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v8 = v16;
      if (os_log_type_enabled(v7, v15))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
        v13 = 136315138;
        v14 = "+[AVCaptureFigVideoDevice setAllowsSuspendedPreferredCameras:]";
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

uint64_t __62__AVCaptureFigVideoDevice_setAllowsSuspendedPreferredCameras___block_invoke(uint64_t result)
{
  if (sCameraHistoryHasBeenSetUp == 1)
  {
    v2 = *(result + 32);

    return [v2 _refreshPreferredCameraProperties:1];
  }

  else if (dword_1ED8069C0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

+ (id)userPreferredCamera
{
  [a1 _setUpCameraHistoryOnce];
  os_unfair_lock_lock(&sCameraHistoryLock);
  v2 = sUserPreferredCamera;
  v3 = sAllowsSuspendedPreferredCameras;
  os_unfair_lock_unlock(&sCameraHistoryLock);
  if (!v2)
  {
    if (dword_1ED8069C0)
    {
      v22 = 0;
      v21 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v5 = *MEMORY[0x1E69875E0];
    v20[0] = *MEMORY[0x1E6987608];
    v20[1] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:{2, v11, v14}];
    LOBYTE(v12) = v3;
    v2 = [AVCaptureFigVideoDevice _defaultDeviceWithDeviceType:@"All" mediaTypes:v6 position:0 cameraOverrideHistoryAllowed:0 cameraOverrideHistorySuspendedAllowed:0 wombatsMustBeMagic:0 userPreferredCameraHistorySuspendedAllowed:v12 invalidSpecialDeviceTypes:0];
    if (dword_1ED8069C0)
    {
      v22 = 0;
      v21 = OS_LOG_TYPE_DEFAULT;
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v8 = v22;
      if (os_log_type_enabled(v7, v21))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
        v16 = 136315394;
        v17 = "+[AVCaptureFigVideoDevice userPreferredCamera]";
        v18 = 2112;
        v19 = v2;
        LODWORD(v15) = 22;
        v13 = &v16;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [AVCaptureFigVideoDevice _insurePreferredCameraGlobal:&sUserPreferredCamera globalName:@"user" preferredCamera:v2, v13, v15];
  }

  return v2;
}

+ (void)setUserPreferredCamera:(id)a3
{
  if (a3)
  {
    os_unfair_lock_lock(&sSuspendedDevicesLock);
    if ([0 objectForKey:{objc_msgSend(a3, "uniqueID")}])
    {
      if (dword_1ED8069C0)
      {
        v27 = 0;
        v26 = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [0 removeObjectForKey:{objc_msgSend(a3, "uniqueID", v18, v19)}];
    }

    os_unfair_lock_unlock(&sSuspendedDevicesLock);
    os_unfair_lock_lock(&sCameraHistoryLock);
    v9 = sUserPreferredCamera;
    v10 = sSystemPreferredCamera;
    os_unfair_lock_unlock(&sCameraHistoryLock);
    if (v9 == a3 || [a3 isEqual:v9])
    {
      if (v10 == a3)
      {
LABEL_30:

        return;
      }

      v11 = [a3 isEqual:v10];
      if ((v11 & 1) != 0 || !dword_1ED8069C0)
      {
        if (v11)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v27 = 0;
        v26 = OS_LOG_TYPE_DEFAULT;
        v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v13 = v27;
        if (os_log_type_enabled(v12, v26))
        {
          v14 = v13;
        }

        else
        {
          v14 = v13 & 0xFFFFFFFE;
        }

        if (v14)
        {
          v20 = 136315650;
          v21 = "+[AVCaptureFigVideoDevice setUserPreferredCamera:]";
          v22 = 2114;
          v23 = v9;
          v24 = 2112;
          v25 = v10;
          LODWORD(v19) = 32;
          v18 = &v20;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      if (dword_1ED8069C0)
      {
        v27 = 0;
        v26 = OS_LOG_TYPE_DEFAULT;
        v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v16 = v27;
        if (os_log_type_enabled(v15, v26))
        {
          v17 = v16;
        }

        else
        {
          v17 = v16 & 0xFFFFFFFE;
        }

        if (v17)
        {
          v20 = 136315650;
          v21 = "+[AVCaptureFigVideoDevice setUserPreferredCamera:]";
          v22 = 2114;
          v23 = v9;
          v24 = 2114;
          v25 = a3;
          LODWORD(v19) = 32;
          v18 = &v20;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [objc_opt_class() willChangeValueForKey:@"userPreferredCamera"];
      os_unfair_lock_lock(&sCameraHistoryLock);

      sUserPreferredCamera = a3;
      os_unfair_lock_unlock(&sCameraHistoryLock);
      [objc_opt_class() didChangeValueForKey:@"userPreferredCamera"];
    }

    [a1 _setUpCameraHistoryOnce];
    [a3 updateUserPreferredCameraHistory];
    goto LABEL_30;
  }

  v6 = MEMORY[0x1E695DF30];
  v7 = *MEMORY[0x1E695D940];
  objc_opt_class();
  v8 = [v6 exceptionWithName:v7 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v8);
  }

  NSLog(&cfstr_SuppressingExc.isa, v8);
}

+ (void)setUserPreferredCamera:(id)a3 forClientPreferenceDomain:(id)a4
{
  [a1 _setUpCameraHistoryOnce];
  v6 = [AVCaptureFigVideoDevice _userPreferredCameraHistoryKeyForClientPreferencesDomain:a4];

  [a3 updateUserPreferredCameraHistoryForKey:v6];
}

+ (id)systemPreferredCamera
{
  [a1 _setUpCameraHistoryOnce];
  os_unfair_lock_lock(&sCameraHistoryLock);
  v2 = sSystemPreferredCamera;
  v3 = sAllowsSuspendedPreferredCameras;
  os_unfair_lock_unlock(&sCameraHistoryLock);
  if (!v2)
  {
    if (dword_1ED8069C0)
    {
      v22 = 0;
      v21 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v5 = *MEMORY[0x1E69875E0];
    v20[0] = *MEMORY[0x1E6987608];
    v20[1] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:{2, v11, v14}];
    LOBYTE(v12) = 0;
    v2 = [AVCaptureFigVideoDevice _defaultDeviceWithDeviceType:@"All" mediaTypes:v6 position:0 cameraOverrideHistoryAllowed:1 cameraOverrideHistorySuspendedAllowed:v3 wombatsMustBeMagic:1 userPreferredCameraHistorySuspendedAllowed:v12 invalidSpecialDeviceTypes:&unk_1F1CEA560];
    if (dword_1ED8069C0)
    {
      v22 = 0;
      v21 = OS_LOG_TYPE_DEFAULT;
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v8 = v22;
      if (os_log_type_enabled(v7, v21))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
        v16 = 136315394;
        v17 = "+[AVCaptureFigVideoDevice systemPreferredCamera]";
        v18 = 2112;
        v19 = v2;
        LODWORD(v15) = 22;
        v13 = &v16;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [AVCaptureFigVideoDevice _insurePreferredCameraGlobal:&sSystemPreferredCamera globalName:@"system" preferredCamera:v2, v13, v15];
  }

  return v2;
}

+ (void)_insurePreferredCameraGlobal:(id *)a3 globalName:(id)a4 preferredCamera:(id)a5
{
  if (a5)
  {
    if (dword_1ED8069C0)
    {
      v14 = 0;
      v13 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v9 = [AVCaptureFigVideoDevice _cameraHistoryDispatchQueue:v10];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__AVCaptureFigVideoDevice__insurePreferredCameraGlobal_globalName_preferredCamera___block_invoke;
    block[3] = &unk_1E786FF80;
    block[5] = a4;
    block[6] = a3;
    block[4] = a5;
    dispatch_async(v9, block);
  }
}

void __83__AVCaptureFigVideoDevice__insurePreferredCameraGlobal_globalName_preferredCamera___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock(&sCameraHistoryLock);
  v2 = **(a1 + 48);
  if (v2)
  {
    v3 = v2;
    os_unfair_lock_unlock(&sCameraHistoryLock);
    v4 = *(a1 + 32);
    if (v4 == v3 || ([v4 isEqual:v3] & 1) != 0)
    {
      if (!dword_1ED8069C0)
      {
        return;
      }
    }

    else if (!dword_1ED8069C0)
    {
      return;
    }
  }

  else
  {
    **(a1 + 48) = *(a1 + 32);
    os_unfair_lock_unlock(&sCameraHistoryLock);
    if (!dword_1ED8069C0)
    {
      return;
    }
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
}

+ (void)updateUserPreferredCameraOverrideHistoryWithDevice:(id)a3 setOverride:(BOOL)a4
{
  v4 = a4;
  [a1 _setUpCameraHistoryOnce];

  [a3 updateUserPreferredCameraOverride:v4];
}

+ (id)cameraInfoForCreatorID:(id)a3 uniqueID:(id)a4 specialDeviceType:(unsigned int)a5 centerStageSupported:(BOOL)a6
{
  if (a6)
  {
    LODWORD(v6) = 2;
  }

  else
  {
    LODWORD(v6) = 3;
  }

  if (a5 == 3)
  {
    LODWORD(v6) = 1;
  }

  if (a5 == 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = v6;
  }

  v9[2] = [MEMORY[0x1E696AD98] numberWithInt:{v6, @"CreatorID", @"DeviceUID", @"OverrideRanking", a3, a4}];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:3];
}

+ (void)updateUserPreferredCameraOverride:(BOOL)a3 cameraInfo:(id)a4
{
  v5 = a3;
  v6 = [a1 _userPreferredCameraOverrideHistoryKey];

  [AVCaptureProprietaryDefaultsSingleton updateCameraOverrideHistory:v6 withCameraInfo:a4 setOverride:v5];
}

+ (void)_refreshPreferredCameraProperties:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&sCameraHistoryLock);
  v4 = sAllowsSuspendedPreferredCameras;
  os_unfair_lock_unlock(&sCameraHistoryLock);
  if (dword_1ED8069C0)
  {
    v59 = 0;
    v58 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v6 = *MEMORY[0x1E6987608];
  v7 = *MEMORY[0x1E69875E0];
  v57[0] = *MEMORY[0x1E6987608];
  v57[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:{2, v44, v49}];
  LOBYTE(v45) = v4;
  v9 = [AVCaptureFigVideoDevice _defaultDeviceWithDeviceType:@"All" mediaTypes:v8 position:0 cameraOverrideHistoryAllowed:0 cameraOverrideHistorySuspendedAllowed:0 wombatsMustBeMagic:0 userPreferredCameraHistorySuspendedAllowed:v45 invalidSpecialDeviceTypes:0];
  if (dword_1ED8069C0)
  {
    v59 = 0;
    v58 = OS_LOG_TYPE_DEFAULT;
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v11 = v59;
    if (os_log_type_enabled(v10, v58))
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 & 0xFFFFFFFE;
    }

    if (v12)
    {
      if (v4)
      {
        v13 = 84;
      }

      else
      {
        v13 = 70;
      }

      v52 = 136315394;
      v53 = "+[AVCaptureFigVideoDevice _refreshPreferredCameraProperties:]";
      v54 = 1024;
      *v55 = v13;
      LODWORD(v50) = 18;
      v46 = &v52;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v56[0] = v6;
  v56[1] = v7;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:{2, v46, v50}];
  LOBYTE(v47) = 0;
  v15 = [AVCaptureFigVideoDevice _defaultDeviceWithDeviceType:@"All" mediaTypes:v14 position:0 cameraOverrideHistoryAllowed:1 cameraOverrideHistorySuspendedAllowed:v4 wombatsMustBeMagic:1 userPreferredCameraHistorySuspendedAllowed:v47 invalidSpecialDeviceTypes:&unk_1F1CEA578];
  if ((v4 & 1) == 0)
  {
    if ([v9 isSuspended])
    {
      if (dword_1ED8069C0)
      {
        v59 = 0;
        v58 = OS_LOG_TYPE_DEFAULT;
        v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v17 = v59;
        if (os_log_type_enabled(v16, v58))
        {
          v18 = v17;
        }

        else
        {
          v18 = v17 & 0xFFFFFFFE;
        }

        if (v18)
        {
          v52 = 136315394;
          v53 = "+[AVCaptureFigVideoDevice _refreshPreferredCameraProperties:]";
          v54 = 2114;
          *v55 = v9;
          LODWORD(v51) = 22;
          v48 = &v52;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v9 = 0;
      }

      else
      {
        v9 = 0;
      }
    }

    if ([v15 isSuspended])
    {
      if (dword_1ED8069C0)
      {
        v59 = 0;
        v58 = OS_LOG_TYPE_DEFAULT;
        v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v20 = v59;
        if (os_log_type_enabled(v19, v58))
        {
          v21 = v20;
        }

        else
        {
          v21 = v20 & 0xFFFFFFFE;
        }

        if (v21)
        {
          v52 = 136315394;
          v53 = "+[AVCaptureFigVideoDevice _refreshPreferredCameraProperties:]";
          v54 = 2114;
          *v55 = v9;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v15 = 0;
    }
  }

  os_unfair_lock_lock(&sCameraHistoryLock);
  if (v9 == sUserPreferredCamera)
  {
    v22 = 0;
  }

  else
  {
    v22 = [v9 isEqual:?] ^ 1;
  }

  if (v15 == sSystemPreferredCamera)
  {
    v23 = 0;
  }

  else
  {
    v23 = [v15 isEqual:?] ^ 1;
  }

  if (dword_1ED8069C0)
  {
    v59 = 0;
    v58 = OS_LOG_TYPE_DEFAULT;
    v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v25 = v59;
    if (os_log_type_enabled(v24, v58))
    {
      v26 = v25;
    }

    else
    {
      v26 = v25 & 0xFFFFFFFE;
    }

    if (v26)
    {
      if (v22)
      {
        v27 = 84;
      }

      else
      {
        v27 = 70;
      }

      v52 = 136315906;
      v53 = "+[AVCaptureFigVideoDevice _refreshPreferredCameraProperties:]";
      v54 = 1024;
      *v55 = v27;
      *&v55[4] = 2114;
      *&v55[6] = v9;
      *&v55[14] = 2114;
      *&v55[16] = sUserPreferredCamera;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1ED8069C0)
    {
      v59 = 0;
      v58 = OS_LOG_TYPE_DEFAULT;
      v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v29 = v59;
      if (os_log_type_enabled(v28, v58))
      {
        v30 = v29;
      }

      else
      {
        v30 = v29 & 0xFFFFFFFE;
      }

      if (v30)
      {
        if (v23)
        {
          v31 = 84;
        }

        else
        {
          v31 = 70;
        }

        v52 = 136315906;
        v53 = "+[AVCaptureFigVideoDevice _refreshPreferredCameraProperties:]";
        v54 = 1024;
        *v55 = v31;
        *&v55[4] = 2114;
        *&v55[6] = v15;
        *&v55[14] = 2114;
        *&v55[16] = sSystemPreferredCamera;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  os_unfair_lock_unlock(&sCameraHistoryLock);
  if ((v22 | v23))
  {
    if (v3)
    {
      if (v22)
      {
        [objc_opt_class() willChangeValueForKey:@"userPreferredCamera"];
      }

      if (v23)
      {
        [objc_opt_class() willChangeValueForKey:@"systemPreferredCamera"];
      }
    }

    if (v22)
    {
      if (!dword_1ED8069C0)
      {
        goto LABEL_78;
      }

      v59 = 0;
      v58 = OS_LOG_TYPE_DEFAULT;
      v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v33 = v59;
      if (os_log_type_enabled(v32, v58))
      {
        v34 = v33;
      }

      else
      {
        v34 = v33 & 0xFFFFFFFE;
      }

      if (!v34)
      {
        goto LABEL_77;
      }

      v52 = 136315650;
      v53 = "+[AVCaptureFigVideoDevice _refreshPreferredCameraProperties:]";
      v54 = 2114;
      *v55 = sUserPreferredCamera;
      *&v55[8] = 2114;
      *&v55[10] = v9;
    }

    else
    {
      if (!dword_1ED8069C0)
      {
        goto LABEL_78;
      }

      v59 = 0;
      v58 = OS_LOG_TYPE_DEFAULT;
      v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v36 = v59;
      if (os_log_type_enabled(v35, v58))
      {
        v37 = v36;
      }

      else
      {
        v37 = v36 & 0xFFFFFFFE;
      }

      if (!v37)
      {
LABEL_77:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_78:
        if (v23)
        {
          if (dword_1ED8069C0)
          {
            v59 = 0;
            v58 = OS_LOG_TYPE_DEFAULT;
            v38 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v39 = v59;
            if (os_log_type_enabled(v38, v58))
            {
              v40 = v39;
            }

            else
            {
              v40 = v39 & 0xFFFFFFFE;
            }

            if (!v40)
            {
              goto LABEL_92;
            }

            v52 = 136315650;
            v53 = "+[AVCaptureFigVideoDevice _refreshPreferredCameraProperties:]";
            v54 = 2114;
            *v55 = sSystemPreferredCamera;
            *&v55[8] = 2114;
            *&v55[10] = v15;
LABEL_91:
            _os_log_send_and_compose_impl();
LABEL_92:
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        else if (dword_1ED8069C0)
        {
          v59 = 0;
          v58 = OS_LOG_TYPE_DEFAULT;
          v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v42 = v59;
          if (os_log_type_enabled(v41, v58))
          {
            v43 = v42;
          }

          else
          {
            v43 = v42 & 0xFFFFFFFE;
          }

          if (!v43)
          {
            goto LABEL_92;
          }

          v52 = 136315394;
          v53 = "+[AVCaptureFigVideoDevice _refreshPreferredCameraProperties:]";
          v54 = 2114;
          *v55 = sSystemPreferredCamera;
          goto LABEL_91;
        }

        os_unfair_lock_lock(&sCameraHistoryLock);
        if (v22)
        {

          sUserPreferredCamera = v9;
        }

        if (v23)
        {

          sSystemPreferredCamera = v15;
        }

        os_unfair_lock_unlock(&sCameraHistoryLock);
        if (v3)
        {
          if (v22)
          {
            [objc_opt_class() didChangeValueForKey:@"userPreferredCamera"];
          }

          if (v23)
          {
            [objc_opt_class() didChangeValueForKey:@"systemPreferredCamera"];
          }
        }

        return;
      }

      v52 = 136315394;
      v53 = "+[AVCaptureFigVideoDevice _refreshPreferredCameraProperties:]";
      v54 = 2114;
      *v55 = sUserPreferredCamera;
    }

    _os_log_send_and_compose_impl();
    goto LABEL_77;
  }
}

+ (void)_initiateRefreshPreferredCameraProperties:(BOOL)a3
{
  +[AVCaptureFigVideoDevice _setUpCameraHistoryOnce];
  v4 = +[AVCaptureFigVideoDevice _cameraHistoryDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__AVCaptureFigVideoDevice__initiateRefreshPreferredCameraProperties___block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v6 = a3;
  dispatch_async(v4, block);
}

uint64_t __69__AVCaptureFigVideoDevice__initiateRefreshPreferredCameraProperties___block_invoke(uint64_t result)
{
  if (sCameraHistoryHasBeenSetUp == 1)
  {
    v2 = *(result + 32);

    return [AVCaptureFigVideoDevice _refreshPreferredCameraProperties:v2];
  }

  else if (dword_1ED8069C0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

+ (id)_defaultDeviceWithDeviceType:(id)a3 mediaTypes:(id)a4 position:(int64_t)a5 cameraOverrideHistoryAllowed:(BOOL)a6 cameraOverrideHistorySuspendedAllowed:(BOOL)a7 wombatsMustBeMagic:(BOOL)a8 userPreferredCameraHistorySuspendedAllowed:(BOOL)a9 invalidSpecialDeviceTypes:(id)a10
{
  v10 = a8;
  v11 = a7;
  v12 = a6;
  +[AVCaptureFigVideoDevice _setUpCameraHistoryOnce];
  if (a5)
  {
    if (dword_1ED8069C0)
    {
      LODWORD(v142) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return 0;
  }

  v109 = a3;
  v107 = v11;
  v108 = v12;
  obj = [AVCaptureDevice devicesForDefaultDeviceSupport:0 includeAudioDevices:0];
  if (dword_1ED8069C0)
  {
    LODWORD(v142) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v111 = [MEMORY[0x1E695DF70] arrayWithArray:{obj, v99, v103}];
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v19 = [obj countByEnumeratingWithState:&v124 objects:v123 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v125;
    do
    {
      v22 = 0;
      do
      {
        if (*v125 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v124 + 1) + 8 * v22);
        if (dword_1ED8069C0)
        {
          LODWORD(v142) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v25 = v142;
          if (os_log_type_enabled(v24, type[0]))
          {
            v26 = v25;
          }

          else
          {
            v26 = v25 & 0xFFFFFFFE;
          }

          if (v26)
          {
            v132 = 136315395;
            v133 = "+[AVCaptureFigVideoDevice _defaultDeviceWithDeviceType:mediaTypes:position:cameraOverrideHistoryAllowed:cameraOverrideHistorySuspendedAllowed:wombatsMustBeMagic:userPreferredCameraHistorySuspendedAllowed:invalidSpecialDeviceTypes:]";
            v134 = 2113;
            *v135 = v23;
            LODWORD(v104) = 22;
            v100 = &v132;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v121 = 0u;
        v122 = 0u;
        v119 = 0u;
        v120 = 0u;
        v27 = [a4 countByEnumeratingWithState:&v119 objects:v118 count:{16, v100, v104}];
        if (v27)
        {
          v28 = v27;
          v29 = *v120;
LABEL_21:
          v30 = 0;
          while (1)
          {
            if (*v120 != v29)
            {
              objc_enumerationMutation(a4);
            }

            if ([v23 hasMediaType:*(*(&v119 + 1) + 8 * v30)])
            {
              break;
            }

            if (v28 == ++v30)
            {
              v28 = [a4 countByEnumeratingWithState:&v119 objects:v118 count:16];
              if (v28)
              {
                goto LABEL_21;
              }

              goto LABEL_29;
            }
          }

          if (([a10 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(v23, "specialDeviceType"))}] & 1) != 0 || (objc_msgSend(v109, "isEqualToString:", @"All") & 1) == 0 && (objc_msgSend(objc_msgSend(v23, "deviceType"), "isEqualToString:", v109) & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        else
        {
LABEL_29:
          [v111 removeObject:v23];
        }

        ++v22;
      }

      while (v22 != v20);
      v31 = [obj countByEnumeratingWithState:&v124 objects:v123 count:16];
      v20 = v31;
    }

    while (v31);
  }

  if (dword_1ED8069C0)
  {
    LODWORD(v142) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v33 = v142;
    if (os_log_type_enabled(v32, type[0]))
    {
      v34 = v33;
    }

    else
    {
      v34 = v33 & 0xFFFFFFFE;
    }

    if (v34)
    {
      v132 = 136315138;
      v133 = "+[AVCaptureFigVideoDevice _defaultDeviceWithDeviceType:mediaTypes:position:cameraOverrideHistoryAllowed:cameraOverrideHistorySuspendedAllowed:wombatsMustBeMagic:userPreferredCameraHistorySuspendedAllowed:invalidSpecialDeviceTypes:]";
      LODWORD(v104) = 12;
      v100 = &v132;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1ED8069C0)
    {
      LODWORD(v142) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v36 = v142;
      if (os_log_type_enabled(v35, type[0]))
      {
        v37 = v36;
      }

      else
      {
        v37 = v36 & 0xFFFFFFFE;
      }

      if (v37)
      {
        v132 = 136315394;
        v133 = "+[AVCaptureFigVideoDevice _defaultDeviceWithDeviceType:mediaTypes:position:cameraOverrideHistoryAllowed:cameraOverrideHistorySuspendedAllowed:wombatsMustBeMagic:userPreferredCameraHistorySuspendedAllowed:invalidSpecialDeviceTypes:]";
        v134 = 2112;
        *v135 = a4;
        LODWORD(v104) = 22;
        v100 = &v132;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v38 = [v111 countByEnumeratingWithState:&v114 objects:v113 count:{16, v100, v104}];
  if (v38)
  {
    v39 = v38;
    v40 = *v115;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v115 != v40)
        {
          objc_enumerationMutation(v111);
        }

        if (dword_1ED8069C0)
        {
          v42 = *(*(&v114 + 1) + 8 * i);
          LODWORD(v142) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v43 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v44 = v142;
          if (os_log_type_enabled(v43, type[0]))
          {
            v45 = v44;
          }

          else
          {
            v45 = v44 & 0xFFFFFFFE;
          }

          if (v45)
          {
            v132 = 136315395;
            v133 = "+[AVCaptureFigVideoDevice _defaultDeviceWithDeviceType:mediaTypes:position:cameraOverrideHistoryAllowed:cameraOverrideHistorySuspendedAllowed:wombatsMustBeMagic:userPreferredCameraHistorySuspendedAllowed:invalidSpecialDeviceTypes:]";
            v134 = 2113;
            *v135 = v42;
            LODWORD(v105) = 22;
            v101 = &v132;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      v39 = [v111 countByEnumeratingWithState:&v114 objects:v113 count:16];
    }

    while (v39);
  }

  if (dword_1ED8069C0)
  {
    LODWORD(v142) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v46 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v47 = v142;
    if (os_log_type_enabled(v46, type[0]))
    {
      v48 = v47;
    }

    else
    {
      v48 = v47 & 0xFFFFFFFE;
    }

    if (v48)
    {
      v132 = 136315138;
      v133 = "+[AVCaptureFigVideoDevice _defaultDeviceWithDeviceType:mediaTypes:position:cameraOverrideHistoryAllowed:cameraOverrideHistorySuspendedAllowed:wombatsMustBeMagic:userPreferredCameraHistorySuspendedAllowed:invalidSpecialDeviceTypes:]";
      LODWORD(v105) = 12;
      v101 = &v132;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!v108)
  {
    v50 = 0;
LABEL_75:
    os_unfair_lock_lock(&sCameraHistoryLock);
    if (sUserPreferredCameraHistory)
    {
      v49 = [MEMORY[0x1E695DEC8] arrayWithArray:?];
    }

    else
    {
      v49 = 0;
    }

    os_unfair_lock_unlock(&sCameraHistoryLock);
LABEL_89:
    if (v10 && !v50)
    {
      os_unfair_lock_lock(&sCameraHistoryLock);
      if (sUserPreferredCameraOverrideHistory)
      {
        v50 = [MEMORY[0x1E695DEC8] arrayWithArray:?];
      }

      else
      {
        v50 = 0;
      }

      os_unfair_lock_unlock(&sCameraHistoryLock);
    }

    if ([v49 count])
    {
      v55 = v10 ? getFirstAvailableDeviceFromHistoryWhereWombatsMustBeMagic(v49, v111, a9, 1, v50) : getFirstAvailableDeviceFromHistory(v49, v111, a9, 1);
      v18 = v55;
      if (v55)
      {
        if (dword_1ED8069C0)
        {
          LODWORD(v142) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v56 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v57 = v142;
          if (os_log_type_enabled(v56, type[0]))
          {
            v58 = v57;
          }

          else
          {
            v58 = v57 & 0xFFFFFFFE;
          }

          if (v58)
          {
            if (v10)
            {
              v59 = 84;
            }

            else
            {
              v59 = 70;
            }

            if (a9)
            {
              v60 = 84;
            }

            else
            {
              v60 = 70;
            }

            v61 = [v18 isSuspended];
            v132 = 136316162;
            v133 = "+[AVCaptureFigVideoDevice _defaultDeviceWithDeviceType:mediaTypes:position:cameraOverrideHistoryAllowed:cameraOverrideHistorySuspendedAllowed:wombatsMustBeMagic:userPreferredCameraHistorySuspendedAllowed:invalidSpecialDeviceTypes:]";
            if (v61)
            {
              v62 = 84;
            }

            else
            {
              v62 = 70;
            }

            v134 = 1024;
            *v135 = v59;
            *&v135[4] = 1024;
            *&v135[6] = v60;
            *v136 = 2112;
            *&v136[2] = v18;
            v137 = 1024;
            v138 = v62;
            _os_log_send_and_compose_impl();
          }

          goto LABEL_208;
        }

        return v18;
      }
    }

    os_unfair_lock_lock(&sCameraHistoryLock);
    if (sStreamingCameraHistory)
    {
      v63 = [MEMORY[0x1E695DEC8] arrayWithArray:?];
    }

    else
    {
      v63 = 0;
    }

    os_unfair_lock_unlock(&sCameraHistoryLock);
    if ([v63 count])
    {
      v64 = v10 ? getFirstAvailableDeviceFromHistoryWhereWombatsMustBeMagic(v63, v111, 0, 0, v50) : getFirstAvailableDeviceFromHistory(v63, v111, 0, 0);
      v18 = v64;
      if (v64)
      {
        if (!dword_1ED8069C0)
        {
          return v18;
        }

        LODWORD(v142) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v65 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v66 = v142;
        if (os_log_type_enabled(v65, type[0]))
        {
          v67 = v66;
        }

        else
        {
          v67 = v66 & 0xFFFFFFFE;
        }

        if (!v67)
        {
          goto LABEL_208;
        }

        v68 = [v18 isSuspended];
        v132 = 136315650;
        v133 = "+[AVCaptureFigVideoDevice _defaultDeviceWithDeviceType:mediaTypes:position:cameraOverrideHistoryAllowed:cameraOverrideHistorySuspendedAllowed:wombatsMustBeMagic:userPreferredCameraHistorySuspendedAllowed:invalidSpecialDeviceTypes:]";
        if (v68)
        {
          v69 = 84;
        }

        else
        {
          v69 = 70;
        }

LABEL_205:
        v134 = 2112;
        *v135 = v18;
        *&v135[8] = 1024;
        *v136 = v69;
        _os_log_send_and_compose_impl();
        goto LABEL_208;
      }
    }

    v142 = 0u;
    v143 = 0u;
    v144 = 0u;
    v145 = 0u;
    v70 = [v111 countByEnumeratingWithState:&v142 objects:v141 count:16];
    if (!v70)
    {
      goto LABEL_164;
    }

    v71 = v70;
    v18 = 0;
    v72 = *v143;
    v73 = -1;
LABEL_133:
    v74 = 0;
    while (1)
    {
      if (*v143 != v72)
      {
        objc_enumerationMutation(v111);
      }

      v75 = *(*(&v142 + 1) + 8 * v74);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ([v75 isSuspended] & 1) != 0 || objc_msgSend(v75, "position") != 2)
      {
        goto LABEL_153;
      }

      v76 = [v75 deviceType];
      if ([v76 isEqualToString:@"AVCaptureDeviceTypeBuiltInWideAngleCamera"])
      {
        v18 = v75;
        goto LABEL_157;
      }

      if ([v76 isEqualToString:@"AVCaptureDeviceTypeBuiltInTrueDepthCamera"] && v73 < 2)
      {
        v73 = 2;
      }

      else
      {
        if (![v76 isEqualToString:{@"AVCaptureDeviceTypeBuiltInUltraWideCamera", v102, v106}] || v73 >= 1)
        {
          v140 = 0;
          v139 = OS_LOG_TYPE_DEFAULT;
          v77 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v78 = v140;
          if (os_log_type_enabled(v77, v139))
          {
            v79 = v78;
          }

          else
          {
            v79 = v78 & 0xFFFFFFFE;
          }

          if (v79)
          {
            *type = 136315394;
            v129 = "getMostCompatibleFrontCamera";
            v130 = 2112;
            v131 = v75;
            LODWORD(v106) = 22;
            v102 = type;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v73 = 0;
          v18 = v75;
          goto LABEL_153;
        }

        v73 = 1;
      }

      v18 = v75;
LABEL_153:
      if (v71 == ++v74)
      {
        v71 = [v111 countByEnumeratingWithState:&v142 objects:v141 count:16];
        if (v71)
        {
          goto LABEL_133;
        }

LABEL_157:
        if (v18)
        {
          if (dword_1ED8069C0)
          {
            LODWORD(v142) = 0;
            type[0] = OS_LOG_TYPE_DEFAULT;
            v80 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v81 = v142;
            if (os_log_type_enabled(v80, type[0]))
            {
              v82 = v81;
            }

            else
            {
              v82 = v81 & 0xFFFFFFFE;
            }

            if (v82)
            {
              goto LABEL_163;
            }

            goto LABEL_208;
          }

          return v18;
        }

LABEL_164:
        if (dword_1ED8069C0)
        {
          LODWORD(v142) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v83 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v84 = v142;
          if (os_log_type_enabled(v83, type[0]))
          {
            v85 = v84;
          }

          else
          {
            v85 = v84 & 0xFFFFFFFE;
          }

          if (v85)
          {
            v132 = 136315138;
            v133 = "+[AVCaptureFigVideoDevice _defaultDeviceWithDeviceType:mediaTypes:position:cameraOverrideHistoryAllowed:cameraOverrideHistorySuspendedAllowed:wombatsMustBeMagic:userPreferredCameraHistorySuspendedAllowed:invalidSpecialDeviceTypes:]";
            LODWORD(v106) = 12;
            v102 = &v132;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        return [v111 firstObject];
      }
    }
  }

  os_unfair_lock_lock(&sCameraHistoryLock);
  if (sUserPreferredCameraHistory && sDownplayUserPreferredCameraOverrideHistory == 1)
  {
    v49 = [MEMORY[0x1E695DEC8] arrayWithArray:?];
  }

  else
  {
    v49 = 0;
  }

  os_unfair_lock_unlock(&sCameraHistoryLock);
  if (![v49 count])
  {
    goto LABEL_192;
  }

  v51 = [v49 objectAtIndexedSubscript:0];
  if (v107)
  {
    os_unfair_lock_lock(&sSuspendedDevicesLock);
    if ([0 objectForKey:{objc_msgSend(v51, "objectForKeyedSubscript:", @"DeviceUID"}])
    {
      if (dword_1ED8069C0)
      {
        LODWORD(v142) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v52 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v53 = v142;
        if (os_log_type_enabled(v52, type[0]))
        {
          v54 = v53;
        }

        else
        {
          v54 = v53 & 0xFFFFFFFE;
        }

        if (v54)
        {
          v132 = 136315395;
          v133 = "+[AVCaptureFigVideoDevice _defaultDeviceWithDeviceType:mediaTypes:position:cameraOverrideHistoryAllowed:cameraOverrideHistorySuspendedAllowed:wombatsMustBeMagic:userPreferredCameraHistorySuspendedAllowed:invalidSpecialDeviceTypes:]";
          v134 = 2113;
          *v135 = v51;
          LODWORD(v105) = 22;
          v101 = &v132;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      os_unfair_lock_unlock(&sSuspendedDevicesLock);
      goto LABEL_192;
    }

    os_unfair_lock_unlock(&sSuspendedDevicesLock);
  }

  if (dword_1ED8069C0)
  {
    LODWORD(v142) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v86 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v87 = v142;
    if (os_log_type_enabled(v86, type[0]))
    {
      v88 = v87;
    }

    else
    {
      v88 = v87 & 0xFFFFFFFE;
    }

    if (v88)
    {
      v132 = 136315138;
      v133 = "+[AVCaptureFigVideoDevice _defaultDeviceWithDeviceType:mediaTypes:position:cameraOverrideHistoryAllowed:cameraOverrideHistorySuspendedAllowed:wombatsMustBeMagic:userPreferredCameraHistorySuspendedAllowed:invalidSpecialDeviceTypes:]";
      LODWORD(v105) = 12;
      v101 = &v132;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v112 = v51;
  FirstAvailableDeviceFromHistory = getFirstAvailableDeviceFromHistory([MEMORY[0x1E695DEC8] arrayWithObjects:&v112 count:{1, v101, v105}], v111, v107, 1);
  if (!FirstAvailableDeviceFromHistory)
  {
LABEL_192:
    os_unfair_lock_lock(&sCameraHistoryLock);
    if (sUserPreferredCameraOverrideHistory)
    {
      v50 = [MEMORY[0x1E695DEC8] arrayWithArray:?];
    }

    else
    {
      v50 = 0;
    }

    os_unfair_lock_unlock(&sCameraHistoryLock);
    if ([v50 count])
    {
      v93 = getFirstAvailableDeviceFromHistory(v50, v111, 0, 1);
      if (v93)
      {
        v18 = v93;
        if (!dword_1ED8069C0)
        {
          return v18;
        }

        LODWORD(v142) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v94 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v95 = v142;
        if (os_log_type_enabled(v94, type[0]))
        {
          v96 = v95;
        }

        else
        {
          v96 = v95 & 0xFFFFFFFE;
        }

        if (!v96)
        {
          goto LABEL_208;
        }

        v97 = [v18 isSuspended];
        v132 = 136315650;
        v133 = "+[AVCaptureFigVideoDevice _defaultDeviceWithDeviceType:mediaTypes:position:cameraOverrideHistoryAllowed:cameraOverrideHistorySuspendedAllowed:wombatsMustBeMagic:userPreferredCameraHistorySuspendedAllowed:invalidSpecialDeviceTypes:]";
        if (v97)
        {
          v69 = 84;
        }

        else
        {
          v69 = 70;
        }

        goto LABEL_205;
      }
    }

    if (v49)
    {
      goto LABEL_89;
    }

    goto LABEL_75;
  }

  v18 = FirstAvailableDeviceFromHistory;
  if (dword_1ED8069C0)
  {
    LODWORD(v142) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v90 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v91 = v142;
    if (os_log_type_enabled(v90, type[0]))
    {
      v92 = v91;
    }

    else
    {
      v92 = v91 & 0xFFFFFFFE;
    }

    if (v92)
    {
LABEL_163:
      v132 = 136315394;
      v133 = "+[AVCaptureFigVideoDevice _defaultDeviceWithDeviceType:mediaTypes:position:cameraOverrideHistoryAllowed:cameraOverrideHistorySuspendedAllowed:wombatsMustBeMagic:userPreferredCameraHistorySuspendedAllowed:invalidSpecialDeviceTypes:]";
      v134 = 2112;
      *v135 = v18;
      _os_log_send_and_compose_impl();
    }

LABEL_208:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v18;
}

+ (id)_prioritizedDeviceList:(id)a3
{
  v3 = a3;
  if (a3)
  {
    if ([a3 count])
    {
      [a1 _setUpCameraHistoryOnce];
      v5 = [MEMORY[0x1E695DF70] arrayWithArray:v3];
      v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
      os_unfair_lock_lock(&sCameraHistoryLock);
      if (sUserPreferredCameraHistory)
      {
        v6 = [MEMORY[0x1E695DEC8] arrayWithArray:?];
      }

      else
      {
        v6 = 0;
      }

      if (sUserPreferredCameraOverrideHistory)
      {
        v7 = [MEMORY[0x1E695DEC8] arrayWithArray:?];
      }

      else
      {
        v7 = 0;
      }

      if (sStreamingCameraHistory)
      {
        v8 = [MEMORY[0x1E695DEC8] arrayWithArray:?];
      }

      else
      {
        v8 = 0;
      }

      v9 = sDownplayUserPreferredCameraOverrideHistory;
      os_unfair_lock_unlock(&sCameraHistoryLock);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v14 = __50__AVCaptureFigVideoDevice__prioritizedDeviceList___block_invoke;
      v15 = &unk_1E786FFC8;
      v21 = v9;
      v16 = v6;
      v17 = v5;
      v18 = v3;
      v19 = v7;
      v20 = v8;
      __50__AVCaptureFigVideoDevice__prioritizedDeviceList___block_invoke(v13, 0, 1);
      v14(v13, 1, 0);
      if ([v5 count] && objc_msgSend(v5, "count"))
      {
        v10 = 0;
        do
        {
          v11 = [v5 objectAtIndexedSubscript:v10];
          if (([v11 isSuspended] & 1) != 0 || objc_msgSend(v11, "specialDeviceType") != 1)
          {
            ++v10;
          }

          else
          {
            [v3 addObject:v11];
            [v5 removeObjectAtIndex:v10];
          }
        }

        while (v10 < [v5 count]);
      }

      if ([v5 count])
      {
        [v3 addObjectsFromArray:v5];
      }
    }

    else
    {
      return MEMORY[0x1E695E0F0];
    }
  }

  return v3;
}

unint64_t __50__AVCaptureFigVideoDevice__prioritizedDeviceList___block_invoke(uint64_t a1, int a2, int a3)
{
  if (*(a1 + 72) == 1 && [*(a1 + 32) count])
  {
    v12 = [*(a1 + 32) objectAtIndexedSubscript:0];
    fvd_prioritizeUsingCameraHistory(*(a1 + 40), *(a1 + 48), [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1], a2, 1, 1, 0);
  }

  fvd_prioritizeUsingCameraHistory(*(a1 + 40), *(a1 + 48), *(a1 + 56), a2, 1, a3, *(a1 + 56));
  fvd_prioritizeUsingCameraHistory(*(a1 + 40), *(a1 + 48), *(a1 + 32), a2, 1, a3, *(a1 + 56));
  fvd_prioritizeUsingCameraHistory(*(a1 + 40), *(a1 + 48), *(a1 + 64), a2, 0, a3, *(a1 + 56));
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  result = [v6 count];
  if (result)
  {
    result = [v6 count];
    if (result)
    {
      v10 = 0;
      do
      {
        v11 = [v6 objectAtIndexedSubscript:v10];
        if ([v11 isSuspended] == a2 && objc_msgSend(v11, "specialDeviceType") != 1)
        {
          if ([v11 specialDeviceType] == 2)
          {
            if (!a3)
            {
              goto LABEL_18;
            }
          }

          else if ([v11 specialDeviceType] != 3 || (a3 & 1) == 0)
          {
LABEL_18:
            [v7 addObject:v11];
            [v6 removeObjectAtIndex:v10];
            goto LABEL_10;
          }

          if (fvd_deviceIsPresentInCameraList(v11, v8))
          {
            goto LABEL_18;
          }
        }

        ++v10;
LABEL_10:
        result = [v6 count];
      }

      while (v10 < result);
    }
  }

  return result;
}

- (void)updateUserPreferredCameraHistoryForKey:(id)a3
{
  v4 = (self->_specialDeviceType & 0xFFFFFFFE) == 2;
  v5 = [(AVCaptureFigVideoDevice *)self _cameraInfo];

  [AVCaptureProprietaryDefaultsSingleton updateCameraHistory:a3 withCameraInfo:v5 maxLength:3 updateCameraHistoryDownplayOverrideList:1 cameraCanBeInOverrideList:v4];
}

- (void)updateUserPreferredCameraOverride:(BOOL)a3
{
  v3 = a3;
  v4 = sUserPreferredCameraOverrideHistoryKey;
  v5 = [(AVCaptureFigVideoDevice *)self _cameraInfo];

  [AVCaptureProprietaryDefaultsSingleton updateCameraOverrideHistory:v4 withCameraInfo:v5 setOverride:v3];
}

- (id)_initWithFigCaptureSource:(OpaqueFigCaptureSource *)a3 isProxy:(BOOL)a4
{
  v4 = a4;
  v116.receiver = self;
  v116.super_class = AVCaptureFigVideoDevice;
  v6 = [(AVCaptureDevice *)&v116 initSubclass];
  if (!v6)
  {
    return v6;
  }

  v87 = v4;
  *(v6 + 151) = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:v6];
  *(v6 + 5) = dispatch_queue_create("com.apple.avfoundation.videocapturedevice.source_queue", 0);
  v7 = dispatch_queue_create("com.apple.avfoundation.videocapturedevice.state_queue", 0);
  *(v6 + 8) = v7;
  dispatch_suspend(v7);
  *(v6 + 159) = dispatch_semaphore_create(0);
  [v6 _setFigCaptureSource:a3 allowSendingWorkToMainThread:1];
  v8 = [v6 _copyFigCaptureSourceProperty:*MEMORY[0x1E69905E0]];
  *(v6 + 7) = v8;
  *(v6 + 9) = [v8 objectForKeyedSubscript:*MEMORY[0x1E6990298]];
  *(v6 + 12) = @"com.apple";
  *(v6 + 26) = 0;
  *(v6 + 14) = 0;
  v9 = *MEMORY[0x1E6990138];
  if ([objc_msgSend(*(v6 + 7) objectForKeyedSubscript:{*MEMORY[0x1E6990138]), "intValue"}] == 16)
  {
    v10 = 2;
  }

  else
  {
    if ([objc_msgSend(*(v6 + 7) objectForKeyedSubscript:{v9), "intValue"}] != 15)
    {
      *(v6 + 23) = 0;
      goto LABEL_8;
    }

    v10 = 3;
  }

  *(v6 + 23) = v10;
LABEL_8:
  v11 = [v6 deviceType];
  if (([(__CFString *)v11 isEqualToString:@"AVCaptureDeviceTypeExternal"]& 1) != 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = [objc_msgSend(*(v6 + 7) objectForKeyedSubscript:{*MEMORY[0x1E6990220]), "intValue"}];
  }

  *(v6 + 10) = v12;
  if ([objc_msgSend(*(v6 + 7) objectForKeyedSubscript:{*MEMORY[0x1E6990180]), "BOOLValue"}])
  {
    v13 = 2;
  }

  else
  {
    v13 = 0;
  }

  *(v6 + 50) = v13;
  *(v6 + 119) = -1082130432;
  *(v6 + 61) = 0;
  v6[496] = 0;
  v6[497] = [v6 isFocusModeSupported:2];
  v6[498] = 0;
  v6[499] = 0;
  v14 = *(MEMORY[0x1E695F050] + 16);
  *(v6 + 504) = *MEMORY[0x1E695F050];
  *(v6 + 520) = v14;
  v6[536] = 0;
  if ([objc_msgSend(*(v6 + 7) objectForKeyedSubscript:{*MEMORY[0x1E6990148]), "BOOLValue"}])
  {
    v15 = 2;
  }

  else
  {
    v15 = 0;
  }

  *(v6 + 68) = v15;
  *(v6 + 71) = 0;
  *(v6 + 552) = xmmword_1A92AB978;
  *(v6 + 144) = -1082130432;
  *(v6 + 145) = 0;
  *(v6 + 146) = 2139095039;
  v6[657] = [v6 isExposureModeSupported:2];
  if ([objc_msgSend(*(v6 + 7) objectForKeyedSubscript:{*MEMORY[0x1E69902D0]), "BOOLValue"}])
  {
    v16 = 2;
  }

  else
  {
    v16 = 0;
  }

  *(v6 + 89) = v16;
  *(v6 + 90) = 0xBF800000BF800000;
  *(v6 + 182) = -1082130432;
  *(v6 + 732) = 0xBF800000BF800000;
  *(v6 + 185) = -1082130432;
  *(v6 + 98) = 0xBFF0000000000000;
  v6[792] = 1;
  v6[825] = 1;
  *(v6 + 104) = objc_alloc_init(AVCaptureDeviceControlRequestQueue);
  *(v6 + 105) = objc_alloc_init(AVCaptureDeviceControlRequestQueue);
  *(v6 + 106) = objc_alloc_init(AVCaptureDeviceControlRequestQueue);
  *(v6 + 107) = objc_alloc_init(AVCaptureDeviceControlRequestQueue);
  *(v6 + 113) = 0;
  v6[914] = 0;
  v6[936] = [v6 hasFlash];
  *(v6 + 118) = 0;
  v6[952] = 0;
  *(v6 + 239) = 0;
  v6[960] = [v6 hasTorch];
  v6[965] = 0;
  v6[961] = [v6 _cameraAccessIsEnabled];
  v6[962] = 0;
  v17 = *(MEMORY[0x1E695F058] + 16);
  *(v6 + 61) = *MEMORY[0x1E695F058];
  *(v6 + 62) = v17;
  *(v6 + 252) = 0;
  *(v6 + 258) = 1065353216;
  *(v6 + 259) = 0;
  *(v6 + 260) = 0;
  *(v6 + 261) = 1097859072;
  *(v6 + 131) = 0x3FF0000000000000;
  if (!AVGestaltGetBoolAnswer(@"AVGQCaptureFaceDrivenAEAFOnByDefault"))
  {
    goto LABEL_24;
  }

  if (v6[497] == 1)
  {
    if (v6[657])
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    goto LABEL_28;
  }

  if (!v6[657])
  {
LABEL_24:
    *(v6 + 242) = 0;
    goto LABEL_29;
  }

  v18 = 1;
LABEL_28:
  *(v6 + 242) = v18;
LABEL_29:
  *(v6 + 137) = objc_alloc_init(MEMORY[0x1E695DFD8]);
  *(v6 + 138) = objc_alloc_init(MEMORY[0x1E695DFD8]);
  *(v6 + 139) = 1;
  *(v6 + 112) = 0;
  if ([v6 _isBravoVariant])
  {
    *(v6 + 144) = 1;
    *(v6 + 145) = 0;
    *(v6 + 146) = 1;
    *(v6 + 147) = 0;
  }

  v86 = v11;
  v6[1012] = 1;
  *(v6 + 160) = objc_alloc_init(MEMORY[0x1E695DF90]);
  v19 = *MEMORY[0x1E69906F8];
  v114[0] = @"lensPosition";
  v114[1] = @"exposureDuration";
  v20 = *MEMORY[0x1E69906B0];
  v115[0] = v19;
  v115[1] = v20;
  v21 = *MEMORY[0x1E6990738];
  v114[2] = @"ISO";
  v114[3] = @"exposureTargetOffset";
  v22 = *MEMORY[0x1E69906D0];
  v115[2] = v21;
  v115[3] = v22;
  v23 = *MEMORY[0x1E6990678];
  v114[4] = @"deviceWhiteBalanceGains";
  v114[5] = @"grayWorldDeviceWhiteBalanceGains";
  v24 = *MEMORY[0x1E6990728];
  v115[4] = v23;
  v115[5] = v24;
  v114[6] = @"documentSceneConfidence";
  v115[6] = *MEMORY[0x1E69907B0];
  v25 = [objc_msgSend(MEMORY[0x1E695DF20] dictionaryWithObjects:v115 forKeys:v114 count:{7), "mutableCopy"}];
  *(v6 + 158) = v25;
  v112[0] = [v25 objectForKeyedSubscript:@"lensPosition"];
  v113[0] = &unk_1F1CEA0A0;
  v112[1] = [*(v6 + 158) objectForKeyedSubscript:@"exposureDuration"];
  v113[1] = &unk_1F1CEA0A0;
  v112[2] = [*(v6 + 158) objectForKeyedSubscript:@"ISO"];
  v113[2] = &unk_1F1CEA0A0;
  v112[3] = [*(v6 + 158) objectForKeyedSubscript:@"exposureTargetOffset"];
  v113[3] = &unk_1F1CEA0A0;
  v112[4] = [*(v6 + 158) objectForKeyedSubscript:@"deviceWhiteBalanceGains"];
  v113[4] = &unk_1F1CEA0A0;
  v112[5] = [*(v6 + 158) objectForKeyedSubscript:@"grayWorldDeviceWhiteBalanceGains"];
  v113[5] = &unk_1F1CEA0A0;
  v112[6] = [*(v6 + 158) objectForKeyedSubscript:@"documentSceneConfidence"];
  v113[6] = &unk_1F1CEA0A0;
  *(v6 + 157) = [objc_msgSend(MEMORY[0x1E695DF20] dictionaryWithObjects:v113 forKeys:v112 count:{7), "mutableCopy"}];
  *(v6 + 156) = dispatch_queue_create("com.apple.avfoundation.videocapturedevice.observed_properties_queue", 0);
  v26 = [v6 _copyFormatsArray];
  *(v6 + 16) = v26;
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  obj = v26;
  v27 = [v26 countByEnumeratingWithState:&v108 objects:v107 count:16];
  v28 = &OBJC_IVAR___AVCaptureSystemStylePicker__action;
  v29 = &OBJC_IVAR___AVCaptureSystemStylePicker__action;
  if (v27)
  {
    v30 = v27;
    v89 = *v109;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v109 != v89)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(*(&v108 + 1) + 8 * i);
        if (!*(v6 + 17) && [*(*(&v108 + 1) + 8 * i) isDefaultActiveFormat])
        {
          *(v6 + 17) = v32;
          v33 = v6 + 224;
          if (v32)
          {
            [v32 defaultActiveMinFrameDurationForSessionPreset:0];
            v34 = v98;
            *(v6 + 30) = v99;
            *v33 = v34;
            [v32 defaultActiveMaxFrameDurationForSessionPreset:0];
          }

          else
          {
            *v33 = 0;
            *(v6 + 29) = 0;
            *(v6 + 30) = 0;
            v98 = 0uLL;
            v99 = 0;
          }

          v35 = v98;
          *(v6 + 36) = v99;
          *(v6 + 17) = v35;
          [v32 videoMaxZoomFactor];
          *(v6 + 132) = v36;
          *(v6 + 167) = [v32 isVideoStabilizationStrengthSupported:1];
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          v37 = [*(v6 + 17) supportedDepthDataFormats];
          v38 = [v37 countByEnumeratingWithState:&v103 objects:v102 count:16];
          if (v38)
          {
            v39 = v38;
            v40 = *v104;
            while (2)
            {
              for (j = 0; j != v39; ++j)
              {
                if (*v104 != v40)
                {
                  objc_enumerationMutation(v37);
                }

                v42 = *(*(&v103 + 1) + 8 * j);
                if ([v42 isDefaultActiveFormat])
                {
                  v43 = v42;
                  *(v6 + 18) = v43;
                  v44 = [objc_msgSend(v43 "videoSupportedFrameRateRanges")];
                  if (v44)
                  {
                    [v44 minFrameDuration];
                  }

                  else
                  {
                    v98 = 0uLL;
                    v99 = 0;
                  }

                  v29 = &OBJC_IVAR___AVCaptureSystemStylePicker__action;
                  v28 = &OBJC_IVAR___AVCaptureSystemStylePicker__action;
                  v45 = v98;
                  *(v6 + 22) = v99;
                  *(v6 + 10) = v45;
                  goto LABEL_54;
                }
              }

              v39 = [v37 countByEnumeratingWithState:&v103 objects:v102 count:16];
              v29 = &OBJC_IVAR___AVCaptureSystemStylePicker__action;
              v28 = &OBJC_IVAR___AVCaptureSystemStylePicker__action;
              if (v39)
              {
                continue;
              }

              break;
            }
          }
        }

LABEL_54:
        if ((v6[1371] & 1) == 0)
        {
          v6[1371] = [v32 isCenterStageSupported];
        }

        if ((v6[1458] & 1) == 0)
        {
          v6[1458] = [objc_msgSend(v32 "figCaptureSourceVideoFormat")];
        }

        if ((v6[1409] & 1) == 0)
        {
          v6[1409] = [v32 isBackgroundBlurSupported];
        }

        if ((v6[1412] & 1) == 0)
        {
          v6[1412] = [v32 isStudioLightSupported];
        }

        v46 = v28[511];
        if ((v6[v46] & 1) == 0)
        {
          v6[v46] = [v32 reactionEffectsSupported];
        }

        v47 = v29[512];
        if ((v6[v47] & 1) == 0)
        {
          v6[v47] = [v32 isBackgroundReplacementSupported];
        }

        if ((v6[184] & 1) == 0)
        {
          v6[184] = [v32 isContinuousZoomWithDepthSupported];
        }

        if ((v6[1564] & 1) == 0)
        {
          v6[1564] = [v32 isSmartFramingSupported];
        }
      }

      v30 = [obj countByEnumeratingWithState:&v108 objects:v107 count:16];
    }

    while (v30);
  }

  [v6 _initializeContinuousZoomWithDepthActiveWithEnabled:v6[184]];
  [v6 _minFocusRectOfInterestSizeForFormat:*(v6 + 17)];
  *(v6 + 53) = v48;
  *(v6 + 54) = v49;
  __asm { FMOV            V0.2D, #0.5 }

  v90 = _Q0;
  *(v6 + 408) = _Q0;
  FloatAnswerWithDefault = 0.5;
  [v6 _defaultRectForFocusPointOfInterest:*(v6 + 50) focusMode:{0.5, 0.5}];
  *(v6 + 55) = v56;
  *(v6 + 56) = v57;
  *(v6 + 57) = v58;
  *(v6 + 58) = v59;
  v6[472] = 1;
  [v6 _minExposureRectOfInterestSizeForFormat:*(v6 + 17)];
  *(v6 + 76) = v60;
  *(v6 + 77) = v61;
  *(v6 + 37) = v90;
  [v6 _defaultRectForExposurePointOfInterest:{0.5, 0.5}];
  *(v6 + 78) = v62;
  *(v6 + 79) = v63;
  *(v6 + 80) = v64;
  *(v6 + 81) = v65;
  v6[656] = 1;
  *(v6 + 135) = 0x3FF0000000000000;
  if ([(__CFString *)v86 isEqualToString:@"AVCaptureDeviceTypeBuiltInTelephotoCamera"])
  {
    FloatAnswerWithDefault = AVGestaltGetFloatAnswerWithDefault(@"AVGQWideCameraToTelephotoCameraRelativeZoomFactor", 1.0);
  }

  else if (([(__CFString *)v86 isEqualToString:@"AVCaptureDeviceTypeBuiltInUltraWideCamera"]& 1) == 0 && ([(__CFString *)v86 isEqualToString:@"AVCaptureDeviceTypeBuiltInDualWideCamera"]& 1) == 0 && ![(__CFString *)v86 isEqualToString:@"AVCaptureDeviceTypeBuiltInTripleCamera"])
  {
    goto LABEL_78;
  }

  *(v6 + 135) = FloatAnswerWithDefault;
LABEL_78:
  if ([objc_msgSend(*(v6 + 7) objectForKeyedSubscript:{*MEMORY[0x1E6990140]), "BOOLValue"}])
  {
    v6[1088] = [objc_msgSend(v6 _getFigCaptureSourceProperty:{*MEMORY[0x1E6990698]), "BOOLValue"}];
    if (dword_1ED8069C0)
    {
      v101 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v67 = 1;
  v6[1496] = 1;
  *(v6 + 324) = 0;
  *(v6 + 161) = -[AVCaptureSystemPressureState initWithFigLevel:factors:recommendedFrameRateRangeForPortrait:recommendedFrameRateRangeForPhotoMode:]([AVCaptureSystemPressureState alloc], "initWithFigLevel:factors:recommendedFrameRateRangeForPortrait:recommendedFrameRateRangeForPhotoMode:", *(v6 + 324), 0, [v6 _recommendedFrameRateRangeForVideoFormat:*(v6 + 17) depthFormat:*(v6 + 18) figSystemPressureLevel:0, v84, v85], objc_msgSend(v6, "_recommendedFrameRateRangeForVideoFormat:depthFormat:figSystemPressureLevel:", *(v6 + 17), 0, *(v6 + 324)));
  v6[1328] = [v6 isGeometricDistortionCorrectionSupported];
  v68 = *MEMORY[0x1E69908B0];
  v96[0] = *MEMORY[0x1E69908B8];
  v96[1] = v68;
  v97[0] = &unk_1F1CEA0B8;
  v97[1] = MEMORY[0x1E695E0F8];
  *(v6 + 116) = [MEMORY[0x1E695DF20] dictionaryWithObjects:v97 forKeys:v96 count:2];
  if (v86 == @"AVCaptureDeviceTypeBuiltInTimeOfFlightCamera")
  {
    *(v6 + 168) = 1;
  }

  v6[1368] = 1;
  ModelSpecificName = FigCaptureGetModelSpecificName();
  if (([ModelSpecificName isEqualToString:@"D52g"] & 1) == 0)
  {
    v67 = [ModelSpecificName isEqualToString:@"D16"];
  }

  v6[1369] = v67;
  v6[1370] = 1;
  *(v6 + 192) = [objc_msgSend(*(v6 + 17) "supportedDynamicAspectRatios")];
  Dimensions = CMVideoFormatDescriptionGetDimensions([*(v6 + 17) formatDescription]);
  *(v6 + 193) = AVCaptureConvertDimensionsForAspectRatio(*&Dimensions, *(v6 + 192), NAN);
  *(v6 + 194) = objc_alloc_init(AVCaptureDeviceControlRequestQueue);
  v6[1372] = 0;
  v6[1373] = 1;
  *(v6 + 172) = 0;
  *(v6 + 173) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v6 + 87) = _Q0;
  *(v6 + 365) = 0;
  *(v6 + 366) = 0;
  *(v6 + 184) = 0x3FF0000000000000;
  *(v6 + 185) = 0x4008000000000000;
  *(v6 + 186) = *(v6 + 131);
  if (v86 == @"AVCaptureDeviceTypeBuiltInUltraWideCamera")
  {
    *(v6 + 185) = 0x4018000000000000;
    if (MGCopyAnswer() == *MEMORY[0x1E695E4D0] && [v6 position] == 2)
    {
      *(v6 + 186) = 0x4000000000000000;
    }
  }

  v6[1410] = 0;
  v6[1411] = 1;
  v6[1413] = 0;
  v6[1414] = 1;
  v6[1416] = 0;
  v6[1417] = 1;
  v6[1419] = 0;
  v6[1420] = 1;
  if (v86 == @"AVCaptureDeviceTypeDeskViewCamera")
  {
    *(v6 + 181) = 2;
  }

  v6[963] = [objc_msgSend(v6 _copyFigCaptureSourceProperty:{*MEMORY[0x1E6990730]), "BOOLValue"}];
  v6[964] = [objc_msgSend(v6 _copyFigCaptureSourceProperty:{*MEMORY[0x1E6990798]), "BOOLValue"}];
  if (v87)
  {
    v6[88] = 1;
    v72 = [v6 _copyFigCaptureSourceProperty:*MEMORY[0x1E6990878]];
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v73 = [v72 countByEnumeratingWithState:&v92 objects:v91 count:16];
    if (v73)
    {
      v74 = v73;
      v75 = *v93;
      v76 = *MEMORY[0x1E6990848];
      v77 = *MEMORY[0x1E69906C0];
      do
      {
        for (k = 0; k != v74; ++k)
        {
          if (*v93 != v75)
          {
            objc_enumerationMutation(v72);
          }

          v79 = *(*(&v92 + 1) + 8 * k);
          v80 = [v72 objectForKeyedSubscript:v79];
          v81 = v6 + 1032;
          if (([v79 isEqualToString:v76] & 1) == 0)
          {
            v81 = v6 + 580;
            if (![v79 isEqualToString:v77])
            {
              continue;
            }
          }

          [v80 floatValue];
          *v81 = v82;
        }

        v74 = [v72 countByEnumeratingWithState:&v92 objects:v91 count:16];
      }

      while (v74);
    }
  }

  dispatch_resume(*(v6 + 8));
  if (v6[1371] == 1)
  {
    [objc_opt_class() addObserver:v6 forKeyPath:@"centerStageEnabled" options:7 context:AVCaptureFigVideoDeviceCenterStageEnabledChangedContext];
    [objc_opt_class() addObserver:v6 forKeyPath:@"centerStageFramingMode" options:3 context:AVCaptureFigVideoDeviceCenterStageFramingModeChangedContext];
  }

  if (v6[1409] == 1)
  {
    [objc_opt_class() addObserver:v6 forKeyPath:@"backgroundBlurEnabled" options:7 context:AVCaptureFigVideoDeviceBackgroundBlurEnabledChangedContext];
    [objc_opt_class() addObserver:v6 forKeyPath:@"backgroundBlurAperture" options:7 context:AVCaptureFigVideoDeviceBackgroundBlurApertureChangedContext];
  }

  if (v6[1412] == 1)
  {
    [objc_opt_class() addObserver:v6 forKeyPath:@"studioLightEnabled" options:7 context:AVCaptureFigVideoDeviceStudioLightingEnabledChangedContext];
    [objc_opt_class() addObserver:v6 forKeyPath:@"studioLightingIntensity" options:7 context:AVCaptureFigVideoDeviceStudioLightingIntensityChangedContext];
  }

  if (v6[1415] == 1)
  {
    [objc_opt_class() addObserver:v6 forKeyPath:@"reactionEffectsEnabled" options:7 context:AVCaptureFigVideoDeviceReactionEffectsEnabledChangedContext];
    [objc_opt_class() addObserver:v6 forKeyPath:@"reactionEffectGesturesEnabled" options:7 context:AVCaptureFigVideoDeviceGesturesEnabledChangedContext];
    [objc_opt_class() addObserver:v6 forKeyPath:@"reactionEffectSuppressedGesturesEnabled" options:7 context:AVCaptureFigVideoDeviceSuppressedGesturesEnabledChangedContext];
  }

  if (v6[1418] == 1)
  {
    [objc_opt_class() addObserver:v6 forKeyPath:@"backgroundReplacementEnabled" options:7 context:AVCaptureFigVideoDeviceBackgroundReplacementEnabledChangedContext];
    [objc_opt_class() addObserver:v6 forKeyPath:@"backgroundReplacementPixelBuffer" options:7 context:AVCaptureFigVideoDeviceBackgroundReplacementPixelBufferChangedContext];
  }

  if ((v6[1412] & 1) != 0 || v6[1409] == 1)
  {
    [objc_opt_class() addObserver:v6 forKeyPath:@"portraitEffectStudioLightQuality" options:7 context:AVCaptureFigVideoDevicePortraitEffectStudioLightQualityChangedContext];
  }

  return v6;
}

- (AVCaptureFigVideoDevice)init
{
  v7.receiver = self;
  v7.super_class = AVCaptureFigVideoDevice;
  v2 = [(AVCaptureDevice *)&v7 init];
  if (v2)
  {
    v3 = v2;
    if (getCameraCaptureLegacyLog_cameraCaptureLegacyLogOnceToken_4 != -1)
    {
      [AVCaptureFigVideoDevice init];
    }

    v4 = getCameraCaptureLegacyLog_cameraCaptureLegacyLog_4;
    if (os_log_type_enabled(getCameraCaptureLegacyLog_cameraCaptureLegacyLog_4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A917C000, v4, OS_LOG_TYPE_DEFAULT, "[AVCaptureDevice init] - Cannot directly instantiate a AVCaptureDevice object.", v6, 2u);
    }
  }

  return 0;
}

- (id)initProxyDeviceWithUniqueID:(id)a3 targetClientAuditToken:(id *)a4
{
  if ((AVCaptureClientHasEntitlement(AVCaptureEntitlementProxyDevices) & 1) == 0)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v8);
    }

    NSLog(&cfstr_SuppressingExc.isa, v8);
    return 0;
  }

  v5 = FigCaptureSourceRemoteCopyProxySource();
  if (!v5)
  {

    return 0;
  }

  v6 = v5;
  v7 = [(AVCaptureFigVideoDevice *)self _initWithFigCaptureSource:v5 isProxy:1];
  CFRelease(v6);
  return v7;
}

- (void)dealloc
{
  [(AVCaptureFigVideoDevice *)self _setFigCaptureSource:0 allowSendingWorkToMainThread:0];
  if (BYTE3(self->_degradedCaptureQualityFactors) == 1)
  {
    [objc_opt_class() removeObserver:self forKeyPath:@"centerStageEnabled" context:AVCaptureFigVideoDeviceCenterStageEnabledChangedContext];
    [objc_opt_class() removeObserver:self forKeyPath:@"centerStageFramingMode" context:AVCaptureFigVideoDeviceCenterStageFramingModeChangedContext];
  }

  if (BYTE1(self->_centerStageRectOfInterest.size.height) == 1)
  {
    [objc_opt_class() removeObserver:self forKeyPath:@"backgroundBlurEnabled" context:AVCaptureFigVideoDeviceBackgroundBlurEnabledChangedContext];
    [objc_opt_class() removeObserver:self forKeyPath:@"backgroundBlurAperture" context:AVCaptureFigVideoDeviceBackgroundBlurApertureChangedContext];
  }

  if (BYTE4(self->_centerStageRectOfInterest.size.height) == 1)
  {
    [objc_opt_class() removeObserver:self forKeyPath:@"studioLightEnabled" context:AVCaptureFigVideoDeviceStudioLightingEnabledChangedContext];
    [objc_opt_class() removeObserver:self forKeyPath:@"studioLightingIntensity" context:AVCaptureFigVideoDeviceStudioLightingIntensityChangedContext];
  }

  if (HIBYTE(self->_centerStageRectOfInterest.size.height) == 1)
  {
    [objc_opt_class() removeObserver:self forKeyPath:@"reactionEffectsEnabled" context:AVCaptureFigVideoDeviceReactionEffectsEnabledChangedContext];
    [objc_opt_class() removeObserver:self forKeyPath:@"reactionEffectGesturesEnabled" context:AVCaptureFigVideoDeviceGesturesEnabledChangedContext];
    [objc_opt_class() removeObserver:self forKeyPath:@"reactionEffectSuppressedGesturesEnabled" context:AVCaptureFigVideoDeviceSuppressedGesturesEnabledChangedContext];
  }

  if (self->_backgroundBlurActive)
  {
    [objc_opt_class() removeObserver:self forKeyPath:@"backgroundReplacementEnabled" context:AVCaptureFigVideoDeviceBackgroundReplacementEnabledChangedContext];
    [objc_opt_class() removeObserver:self forKeyPath:@"backgroundReplacementPixelBuffer" context:AVCaptureFigVideoDeviceBackgroundReplacementPixelBufferChangedContext];
  }

  if ((BYTE1(self->_centerStageRectOfInterest.size.height) & 1) != 0 || BYTE4(self->_centerStageRectOfInterest.size.height) == 1)
  {
    [objc_opt_class() removeObserver:self forKeyPath:@"portraitEffectStudioLightQuality" context:AVCaptureFigVideoDevicePortraitEffectStudioLightQualityChangedContext];
  }

  if (*&self->_adjustingWB)
  {
    v3 = 0;
    do
    {
      free(*&self->_wbCalibrationTemperatures[v3++]);
    }

    while (*&self->_adjustingWB > v3);
  }

  free(self->_wbCalibrationTemperatures);
  free(self->_wbCalibrationCount);
  *&self->_adjustingWB = 0;

  v4.receiver = self;
  v4.super_class = AVCaptureFigVideoDevice;
  [(AVCaptureDevice *)&v4 dealloc];
}

- (void)addObserver:(id)a3 forKeyPath:(id)a4 options:(unint64_t)a5 context:(void *)a6
{
  [(AVCaptureFigVideoDevice *)self _incrementObserverCountForHighFrequencyProperty:a4];
  v11.receiver = self;
  v11.super_class = AVCaptureFigVideoDevice;
  [(AVCaptureFigVideoDevice *)&v11 addObserver:a3 forKeyPath:a4 options:a5 context:a6];
}

- (void)removeObserver:(id)a3 forKeyPath:(id)a4 context:(void *)a5
{
  [(AVCaptureFigVideoDevice *)self _decrementObserverCountForHighFrequencyProperty:a4];
  v9.receiver = self;
  v9.super_class = AVCaptureFigVideoDevice;
  [(AVCaptureFigVideoDevice *)&v9 removeObserver:a3 forKeyPath:a4 context:a5];
}

- (void)removeObserver:(id)a3 forKeyPath:(id)a4
{
  [(AVCaptureFigVideoDevice *)self _decrementObserverCountForHighFrequencyProperty:a4];
  v7.receiver = self;
  v7.super_class = AVCaptureFigVideoDevice;
  [(AVCaptureFigVideoDevice *)&v7 removeObserver:a3 forKeyPath:a4];
}

- (void)_incrementObserverCountForHighFrequencyProperty:(id)a3
{
  availableBoxedMetadataFormatDescriptions = self->_availableBoxedMetadataFormatDescriptions;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75__AVCaptureFigVideoDevice__incrementObserverCountForHighFrequencyProperty___block_invoke;
  v4[3] = &unk_1E786EAA8;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(&availableBoxedMetadataFormatDescriptions->super, v4);
}

void *__75__AVCaptureFigVideoDevice__incrementObserverCountForHighFrequencyProperty___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 1256) objectForKeyedSubscript:{objc_msgSend(*(*(a1 + 32) + 1264), "objectForKeyedSubscript:", *(a1 + 40))}];
  if (result)
  {
    v3 = [result intValue];
    result = [*(*(a1 + 32) + 1256) setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", (v3 + 1)), objc_msgSend(*(*(a1 + 32) + 1264), "objectForKeyedSubscript:", *(a1 + 40))}];
    if (!v3)
    {
      v4 = *(a1 + 32);
      v5 = *(*(a1 + 32) + 64);
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __75__AVCaptureFigVideoDevice__incrementObserverCountForHighFrequencyProperty___block_invoke_2;
      v6[3] = &unk_1E786EAA8;
      v7 = v4;
      dispatch_sync(v5, v6);
      return [*(a1 + 32) _updateFigCaptureSourceObserverCounts];
    }
  }

  return result;
}

void __75__AVCaptureFigVideoDevice__incrementObserverCountForHighFrequencyProperty___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _copyFigCaptureSourceProperty:{objc_msgSend(*(*(a1 + 32) + 1264), "objectForKeyedSubscript:", *(a1 + 40))}];
  if (v2)
  {
    v3 = v2;
    if ([*(a1 + 40) isEqualToString:@"lensPosition"])
    {
      [v3 floatValue];
      v5 = *(a1 + 32);
      v6 = 476;
    }

    else
    {
      if ([*(a1 + 40) isEqualToString:@"exposureDuration"])
      {
        v7 = *(a1 + 32) + 552;
        CMTimeMakeFromDictionary(&v13, v3);
        v8 = *&v13.value;
        *(v7 + 16) = v13.epoch;
        *v7 = v8;
        goto LABEL_7;
      }

      if ([*(a1 + 40) isEqualToString:@"ISO"])
      {
        [v3 floatValue];
        v5 = *(a1 + 32);
        v6 = 576;
      }

      else
      {
        if (![*(a1 + 40) isEqualToString:@"exposureTargetOffset"])
        {
          if ([*(a1 + 40) isEqualToString:@"deviceWhiteBalanceGains"])
          {
            if ([v3 length] != 12)
            {
              goto LABEL_7;
            }

            v9 = *(a1 + 32);
            v10 = 720;
          }

          else
          {
            if (![*(a1 + 40) isEqualToString:@"grayWorldDeviceWhiteBalanceGains"])
            {
              if ([*(a1 + 40) isEqualToString:@"documentSceneConfidence"])
              {
                v11 = *(a1 + 32);
                v12 = *(v11 + 816);
                *(v11 + 816) = v3;
                CFRetain(v3);
                if (v12)
                {
                  CFRelease(v12);
                }
              }

              goto LABEL_7;
            }

            if ([v3 length] != 12)
            {
LABEL_7:

              return;
            }

            v9 = *(a1 + 32);
            v10 = 732;
          }

          [v3 getBytes:v9 + v10 length:12];
          goto LABEL_7;
        }

        [v3 floatValue];
        v5 = *(a1 + 32);
        v6 = 584;
      }
    }

    *(v5 + v6) = v4;
    goto LABEL_7;
  }
}

- (void)_decrementObserverCountForHighFrequencyProperty:(id)a3
{
  availableBoxedMetadataFormatDescriptions = self->_availableBoxedMetadataFormatDescriptions;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75__AVCaptureFigVideoDevice__decrementObserverCountForHighFrequencyProperty___block_invoke;
  v4[3] = &unk_1E786EAA8;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(&availableBoxedMetadataFormatDescriptions->super, v4);
}

void *__75__AVCaptureFigVideoDevice__decrementObserverCountForHighFrequencyProperty___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 1256) objectForKeyedSubscript:{objc_msgSend(*(*(a1 + 32) + 1264), "objectForKeyedSubscript:", *(a1 + 40))}];
  if (result)
  {
    v3 = [result intValue];
    v4 = v3 <= 1 ? 1 : v3;
    v5 = v4 - 1;
    result = [*(*(a1 + 32) + 1256) setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", (v4 - 1)), objc_msgSend(*(*(a1 + 32) + 1264), "objectForKeyedSubscript:", *(a1 + 40))}];
    if (!v5)
    {
      v6 = *(a1 + 32);

      return [v6 _updateFigCaptureSourceObserverCounts];
    }
  }

  return result;
}

- (BOOL)_hasKeyValueObserversForHighFrequencyProperty:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  availableBoxedMetadataFormatDescriptions = self->_availableBoxedMetadataFormatDescriptions;
  v10 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__AVCaptureFigVideoDevice__hasKeyValueObserversForHighFrequencyProperty___block_invoke;
  block[3] = &unk_1E786FF08;
  block[5] = a3;
  block[6] = &v7;
  block[4] = self;
  dispatch_sync(&availableBoxedMetadataFormatDescriptions->super, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __73__AVCaptureFigVideoDevice__hasKeyValueObserversForHighFrequencyProperty___block_invoke(void *a1)
{
  result = [objc_msgSend(*(a1[4] + 1256) objectForKeyedSubscript:{objc_msgSend(*(a1[4] + 1264), "objectForKeyedSubscript:", a1[5])), "intValue"}];
  *(*(a1[6] + 8) + 24) = result > 0;
  return result;
}

- (void)_setFigCaptureSource:(OpaqueFigCaptureSource *)a3 allowSendingWorkToMainThread:(BOOL)a4
{
  fcsQueue = self->_fcsQueue;
  if (fcsQueue)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__AVCaptureFigVideoDevice__setFigCaptureSource_allowSendingWorkToMainThread___block_invoke;
    block[3] = &unk_1E786FFF0;
    block[4] = self;
    block[5] = a3;
    v7 = a4;
    dispatch_sync(fcsQueue, block);
  }

  else
  {
    [AVCaptureFigVideoDevice _setFigCaptureSource:allowSendingWorkToMainThread:];
  }
}

void *__77__AVCaptureFigVideoDevice__setFigCaptureSource_allowSendingWorkToMainThread___block_invoke(void *result)
{
  v1 = result[5];
  v2 = *(result[4] + 48);
  if (v1 != v2)
  {
    v3 = result;
    if (v2)
    {
      if (v1 && (AVCaptureIsRunningInMediaserverd() & 1) == 0)
      {
        v14 = 0;
        v4 = *(v3[4] + 48);
        v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v5)
        {
          if (!v5(v4, *MEMORY[0x1E6990880], *MEMORY[0x1E695E480], &v14) && v14 != 0)
          {
            v7 = [v14 intValue];
            if (v7 >= 1)
            {
              v8 = v7;
              do
              {
                v9 = v3[5];
                v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                if (v10)
                {
                  v10(v9);
                }

                --v8;
              }

              while (v8);
            }
          }
        }
      }

      [objc_msgSend(MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:{CMNotificationCenterGetDefaultLocalCenter()), "removeListenerWithWeakReference:callback:name:object:", *(v3[4] + 1208), fvd_figCaptureSourceNotificationHandler, 0, *(v3[4] + 48)}];
      v11 = *(v3[4] + 48);
      if (v11)
      {
        CFRelease(v11);
        *(v3[4] + 48) = 0;
      }

      if (([MEMORY[0x1E696AF00] isMainThread] & 1) != 0 || (v3[6] & 1) == 0)
      {
        [v3[4] _drainManualControlRequestQueues];
      }

      else
      {
        v12 = v3[4];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __77__AVCaptureFigVideoDevice__setFigCaptureSource_allowSendingWorkToMainThread___block_invoke_2;
        v13[3] = &unk_1E786EC08;
        v13[4] = v12;
        [v12 _performBlockOnMainThread:v13];
      }
    }

    result = v3[5];
    if (result)
    {
      *(v3[4] + 48) = CFRetain(result);
      return [objc_msgSend(MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:{CMNotificationCenterGetDefaultLocalCenter()), "addListenerWithWeakReference:callback:name:object:flags:", *(v3[4] + 1208), fvd_figCaptureSourceNotificationHandler, 0, v3[5], 0}];
    }
  }

  return result;
}

- (void)_cameraUsageRestrictionsChanged
{
  v3 = [(AVCaptureFigVideoDevice *)self _cameraAccessIsEnabled];
  if (*(&self->_torchActive + 1) != v3)
  {
    v4 = v3;
    [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"connected"];
    devicePropsQueue = self->_devicePropsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__AVCaptureFigVideoDevice__cameraUsageRestrictionsChanged__block_invoke;
    block[3] = &unk_1E786EE40;
    block[4] = self;
    v14 = v4;
    dispatch_sync(devicePropsQueue, block);
    if (dword_1ED8069C0)
    {
      v12 = 0;
      v11 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v7 = &AVCaptureDeviceWasConnectedNotification;
    if (!v4)
    {
      v7 = &AVCaptureDeviceWasDisconnectedNotification;
    }

    v8 = *v7;
    [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"connected", v9, v10];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }
}

- (BOOL)hasMediaType:(id)a3
{
  if ([(AVCaptureFigVideoDevice *)self deviceType]== @"AVCaptureDeviceTypeBuiltInTimeOfFlightCamera")
  {
    v6 = AVMediaTypePointCloudData;
    goto LABEL_10;
  }

  if ([(AVCaptureFigVideoDevice *)self deviceType]== @"AVCaptureDeviceTypeBuiltInWideAngleMetadataCamera" || [(AVCaptureFigVideoDevice *)self deviceType]== @"AVCaptureDeviceTypeBuiltInUltraWideAngleMetadataCamera" || [(AVCaptureFigVideoDevice *)self deviceType]== @"AVCaptureDeviceTypeBuiltInInfraredMetadataCamera")
  {
    v6 = MEMORY[0x1E69875D8];
LABEL_10:
    v7 = *v6;

    LOBYTE(v5) = [a3 isEqualToString:v7];
    return v5;
  }

  if ([a3 isEqualToString:*MEMORY[0x1E6987608]])
  {
LABEL_6:
    LOBYTE(v5) = 1;
    return v5;
  }

  if ([a3 isEqualToString:AVMediaTypeForMetadataObjects()])
  {
    if ([(AVCaptureFigVideoDevice *)self isFaceDetectionSupported]|| [(AVCaptureFigVideoDevice *)self isObjectDetectionSupported])
    {
      goto LABEL_6;
    }

    LOBYTE(v5) = [(AVCaptureFigVideoDevice *)self isMachineReadableCodeDetectionSupported];
  }

  else if (AVMediaTypeMetadataObjectAndAVMediaTypeMetadataAreDefined() && [a3 isEqualToString:*MEMORY[0x1E69875D0]])
  {
    LOBYTE(v5) = [-[AVCaptureFigVideoDevice availableBoxedMetadataFormatDescriptions](self "availableBoxedMetadataFormatDescriptions")] != 0;
  }

  else
  {
    if ([a3 isEqualToString:*MEMORY[0x1E69875C0]])
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v8 = [(AVCaptureFigVideoDevice *)self formats];
      v5 = [v8 countByEnumeratingWithState:&v33 objects:v32 count:16];
      if (!v5)
      {
        return v5;
      }

      v9 = v5;
      v10 = *v34;
LABEL_25:
      v11 = 0;
      while (1)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v33 + 1) + 8 * v11);
        if ([v12 isStreamingDisparitySupported] & 1) != 0 || (objc_msgSend(v12, "isStreamingDepthSupported") & 1) != 0 || (objc_msgSend(v12, "isStillImageDisparitySupported") & 1) != 0 || (objc_msgSend(v12, "isStillImageDepthSupported"))
        {
          goto LABEL_6;
        }

        if (v9 == ++v11)
        {
          v9 = [v8 countByEnumeratingWithState:&v33 objects:v32 count:16];
          LOBYTE(v5) = 0;
          if (v9)
          {
            goto LABEL_25;
          }

          return v5;
        }
      }
    }

    if ([a3 isEqualToString:@"visn"])
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v13 = [(AVCaptureFigVideoDevice *)self formats];
      v5 = [v13 countByEnumeratingWithState:&v28 objects:v27 count:16];
      if (!v5)
      {
        return v5;
      }

      v14 = v5;
      v15 = *v29;
LABEL_38:
      v16 = 0;
      while (1)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v13);
        }

        if ([*(*(&v28 + 1) + 8 * v16) isVisionDataDeliverySupported])
        {
          goto LABEL_6;
        }

        if (v14 == ++v16)
        {
          v14 = [v13 countByEnumeratingWithState:&v28 objects:v27 count:16];
          LOBYTE(v5) = 0;
          if (v14)
          {
            goto LABEL_38;
          }

          return v5;
        }
      }
    }

    LODWORD(v5) = [a3 isEqualToString:@"cacd"];
    if (v5)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v17 = [(AVCaptureFigVideoDevice *)self formats];
      v5 = [v17 countByEnumeratingWithState:&v23 objects:v22 count:16];
      if (v5)
      {
        v18 = v5;
        v19 = *v24;
LABEL_48:
        v20 = 0;
        while (1)
        {
          if (*v24 != v19)
          {
            objc_enumerationMutation(v17);
          }

          if ([*(*(&v23 + 1) + 8 * v20) isCameraCalibrationDataDeliverySupported])
          {
            goto LABEL_6;
          }

          if (v18 == ++v20)
          {
            v18 = [v17 countByEnumeratingWithState:&v23 objects:v22 count:16];
            LOBYTE(v5) = 0;
            if (v18)
            {
              goto LABEL_48;
            }

            return v5;
          }
        }
      }
    }
  }

  return v5;
}

- (BOOL)supportsAVCaptureSessionPreset:(id)a3
{
  if ([a3 isEqual:@"AVCaptureSessionPresetInputPriority"])
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [(NSArray *)self->_formats count];
    if (v5)
    {
      v6 = 0;
      v7 = v5 - 1;
      do
      {
        LOBYTE(v5) = [objc_msgSend(-[NSArray objectAtIndexedSubscript:](self->_formats objectAtIndexedSubscript:{v6), "AVCaptureSessionPresets"), "containsObject:", a3}];
        if (v5)
        {
          break;
        }
      }

      while (v7 != v6++);
    }
  }

  return v5;
}

+ (void)_releaseStaticResources
{
  if (dword_1ED8069C0)
  {
    v6 = 0;
    v5 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  os_unfair_lock_lock(&sCameraHistoryLock);
  if (sSystemPreferredCamera)
  {

    sSystemPreferredCamera = 0;
  }

  if (sUserPreferredCamera)
  {

    sUserPreferredCamera = 0;
  }

  os_unfair_lock_unlock(&sCameraHistoryLock);
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___AVCaptureFigVideoDevice;
  objc_msgSendSuper2(&v4, sel__releaseStaticResources);
}

- (BOOL)lockForConfiguration:(id *)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  fcsQueue = self->_fcsQueue;
  v10 = 1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__AVCaptureFigVideoDevice_lockForConfiguration___block_invoke;
  block[3] = &unk_1E7870018;
  block[5] = &v7;
  block[6] = a3;
  block[4] = self;
  dispatch_sync(fcsQueue, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __48__AVCaptureFigVideoDevice_lockForConfiguration___block_invoke(void *a1)
{
  v2 = *(a1[4] + 48);
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 16);
  result = VTable + 16;
  v6 = *(v5 + 8);
  if (v6)
  {
    result = v6(v2);
    if (!result)
    {
      return result;
    }

    v7 = (a1 + 6);
    if (a1[6])
    {
      if (result == -16455)
      {
        v8 = a1[4];
        v12 = *MEMORY[0x1E69873D8];
        v13 = v8;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
        result = AVLocalizedError();
LABEL_8:
        **v7 = result;
        goto LABEL_9;
      }

LABEL_7:
      v9 = a1[4];
      v10 = *MEMORY[0x1E69873D8];
      v11 = v9;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
      result = AVLocalizedErrorWithUnderlyingOSStatus();
      goto LABEL_8;
    }
  }

  else
  {
    v7 = (a1 + 6);
    if (a1[6])
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  *(*(a1[5] + 8) + 24) = 0;
  return result;
}

- (void)_setActiveFormat:(id)a3 resetVideoZoomFactorAndMinMaxFrameDurations:(BOOL)a4 sessionPreset:(id)a5
{
  v6 = a4;
  if ([(AVCaptureFigVideoDevice *)self isLockedForConfiguration])
  {
    v258 = 0;
    v259 = &v258;
    v260 = 0x3052000000;
    v261 = __Block_byref_object_copy__7;
    v262 = __Block_byref_object_dispose__7;
    v263 = a3;
    v9 = [(AVCaptureFigVideoDevice *)self formats];
    if ([v9 containsObject:v259[5]])
    {
      if (dword_1ED8069C0)
      {
        LODWORD(v249) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"activeFormat", v44, v45];
      v249 = 0;
      v250 = &v249;
      v251 = 0x3810000000;
      v253 = *MEMORY[0x1E6960C70];
      v16 = *(MEMORY[0x1E6960C70] + 16);
      v252 = &unk_1A92DB249;
      v254 = v16;
      *type = 0;
      v244 = type;
      v245 = 0x3810000000;
      v246 = &unk_1A92DB249;
      v247 = v253;
      v248 = v16;
      v239 = 0;
      v240 = &v239;
      v241 = 0x2020000000;
      v242 = 0;
      v236[0] = 0;
      v236[1] = v236;
      v236[2] = 0x3810000000;
      v237 = v253;
      v236[3] = &unk_1A92DB249;
      v238 = v16;
      v232 = 0;
      v233 = &v232;
      v234 = 0x2020000000;
      v235 = 0;
      v228 = 0;
      v229 = &v228;
      v230 = 0x2020000000;
      v231 = 0;
      v227[0] = 0;
      v227[1] = v227;
      v227[2] = 0x2020000000;
      v227[3] = 0;
      v226[0] = 0;
      v226[1] = v226;
      v226[2] = 0x3010000000;
      v226[5] = 0;
      v226[3] = &unk_1A92DB249;
      v226[4] = 0;
      v255[0] = 0;
      v255[1] = v255;
      v255[2] = 0x4010000000;
      v255[3] = &unk_1A92DB249;
      v17 = *(MEMORY[0x1E695F050] + 16);
      v256 = *MEMORY[0x1E695F050];
      v257 = v17;
      v225[0] = 0;
      v225[1] = v225;
      v225[2] = 0x3010000000;
      v225[5] = 0;
      v225[3] = &unk_1A92DB249;
      v225[4] = 0;
      v221 = 0;
      v222 = &v221;
      v223 = 0x2020000000;
      v224 = 0;
      v217 = 0;
      v218 = &v217;
      v219 = 0x2020000000;
      v220 = 0;
      v213 = 0;
      v214 = &v213;
      v215 = 0x2020000000;
      v216 = 0;
      v212[0] = 0;
      v212[1] = v212;
      v212[2] = 0x3010000000;
      v212[5] = 0;
      v212[3] = &unk_1A92DB249;
      v212[4] = 0;
      v209[0] = 0;
      v209[1] = v209;
      v209[2] = 0x4010000000;
      v209[3] = &unk_1A92DB249;
      v210 = v256;
      v211 = v17;
      v208[0] = 0;
      v208[1] = v208;
      v208[2] = 0x3010000000;
      v208[5] = 0;
      v208[3] = &unk_1A92DB249;
      v208[4] = 0;
      v204 = 0;
      v205 = &v204;
      v206 = 0x2020000000;
      v207 = 0;
      v200 = 0;
      v201 = &v200;
      v202 = 0x2020000000;
      v203 = 0;
      v196 = 0;
      v197 = &v196;
      v198 = 0x2020000000;
      v199 = 0;
      v192 = 0;
      v193 = &v192;
      v194 = 0x2020000000;
      v195 = 0;
      v188 = 0;
      v189 = &v188;
      v190 = 0x2020000000;
      v191 = -1;
      v184 = 0;
      v185 = &v184;
      v186 = 0x2020000000;
      v187 = 0;
      v178 = 0;
      v179 = &v178;
      v180 = 0x3052000000;
      v181 = __Block_byref_object_copy__7;
      v182 = __Block_byref_object_dispose__7;
      v183 = 0;
      v174 = 0;
      v175 = &v174;
      v176 = 0x2020000000;
      v177 = 0;
      v170 = 0;
      v171 = &v170;
      v172 = 0x2020000000;
      v173 = 0;
      v166 = 0;
      v167 = &v166;
      v168 = 0x2020000000;
      v169 = 0;
      v162 = 0;
      v163 = &v162;
      v164 = 0x2020000000;
      v165 = 0;
      v159 = &unk_1A92DB249;
      v156 = 0;
      v157 = &v156;
      v158 = 0x3810000000;
      v160 = v253;
      v161 = v16;
      v152 = 0;
      v153 = &v152;
      v154 = 0x2020000000;
      v155 = 0;
      v148 = 0;
      v149 = &v148;
      v150 = 0x2020000000;
      v151 = 0;
      v146[0] = 0;
      v146[1] = v146;
      v146[2] = 0x2020000000;
      v147 = 0;
      v142 = 0;
      v143 = &v142;
      v144 = 0x2020000000;
      v145 = 0;
      v140[0] = 0;
      v140[1] = v140;
      v140[2] = 0x2020000000;
      v141 = 0;
      v134 = 0;
      v135 = &v134;
      v136 = 0x3052000000;
      v137 = __Block_byref_object_copy__7;
      v93 = &unk_1A92DB249;
      v138 = __Block_byref_object_dispose__7;
      v139 = 0;
      v130 = 0;
      v131 = &v130;
      v132 = 0x2020000000;
      v133 = 0;
      v126 = 0;
      v127 = &v126;
      v128 = 0x2020000000;
      v129 = 0;
      v125[0] = 0;
      v125[1] = v125;
      v125[2] = 0x2020000000;
      v125[3] = 0;
      v121 = 0;
      v122 = &v121;
      v123 = 0x2020000000;
      v124 = 0;
      v119[0] = 0;
      v119[1] = v119;
      v119[2] = 0x2020000000;
      v120 = 0;
      v115 = 0;
      v116 = &v115;
      v117 = 0x2020000000;
      v118 = 0;
      v113[0] = 0;
      v113[1] = v113;
      v113[2] = 0x2020000000;
      v114 = 0;
      v109 = 0;
      v110 = &v109;
      v111 = 0x2020000000;
      v112 = 0;
      v107[0] = 0;
      v107[1] = v107;
      v107[2] = 0x2020000000;
      v108 = 0;
      v103 = 0;
      v104 = &v103;
      v105 = 0x2020000000;
      v106 = 0;
      v99 = 0;
      v100 = &v99;
      v101 = 0x2020000000;
      v102 = 0;
      v95 = 0;
      v96 = &v95;
      v97 = 0x2020000000;
      v98 = 0;
      v90 = 0;
      v91 = &v90;
      v92 = 0x2810000000;
      v94 = 0;
      v88[0] = 0;
      v88[1] = v88;
      v88[2] = 0x2020000000;
      v89 = 0;
      v84 = 0;
      v85 = &v84;
      v86 = 0x2020000000;
      v87 = 0;
      v80 = 0;
      v81 = &v80;
      v82 = 0x2020000000;
      v83 = 0;
      v78[0] = 0;
      v78[1] = v78;
      v78[2] = 0x2020000000;
      v79 = 0;
      v74 = 0;
      v75 = &v74;
      v76 = 0x2020000000;
      v77 = 0;
      devicePropsQueue = self->_devicePropsQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __102__AVCaptureFigVideoDevice__setActiveFormat_resetVideoZoomFactorAndMinMaxFrameDurations_sessionPreset___block_invoke;
      block[3] = &unk_1E7870068;
      block[5] = a5;
      block[8] = &v184;
      block[9] = &v178;
      block[10] = v146;
      block[11] = &v148;
      block[12] = &v232;
      block[13] = &v228;
      block[14] = v227;
      block[15] = v140;
      block[16] = &v142;
      block[17] = v119;
      block[18] = &v121;
      block[19] = v113;
      block[20] = &v115;
      block[21] = v107;
      block[22] = &v109;
      block[23] = v88;
      block[7] = &v258;
      block[6] = a3;
      block[24] = &v84;
      block[25] = &v80;
      block[26] = &v249;
      block[27] = type;
      block[28] = &v192;
      block[29] = &v174;
      block[30] = &v239;
      block[31] = v236;
      block[32] = &v156;
      block[33] = &v152;
      block[34] = v226;
      block[35] = &v221;
      block[36] = v255;
      block[37] = &v213;
      block[38] = &v217;
      block[39] = v225;
      block[40] = v212;
      block[41] = &v204;
      block[42] = v209;
      block[43] = &v196;
      block[44] = &v200;
      block[45] = v208;
      block[46] = &v188;
      block[47] = &v134;
      block[48] = &v170;
      block[49] = &v166;
      block[50] = &v162;
      block[51] = &v130;
      block[52] = v125;
      block[53] = &v126;
      block[54] = &v103;
      block[55] = &v99;
      block[56] = &v90;
      block[57] = &v95;
      block[58] = v78;
      block[59] = &v74;
      block[4] = self;
      v73 = v6;
      dispatch_sync(devicePropsQueue, block);
      if (*(v250 + 44))
      {
        [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"activeVideoMinFrameDuration"];
        v19 = self->_devicePropsQueue;
        v71[0] = MEMORY[0x1E69E9820];
        v71[1] = 3221225472;
        v71[2] = __102__AVCaptureFigVideoDevice__setActiveFormat_resetVideoZoomFactorAndMinMaxFrameDurations_sessionPreset___block_invoke_2;
        v71[3] = &unk_1E786FEE0;
        v71[4] = self;
        v71[5] = &v249;
        dispatch_sync(v19, v71);
      }

      if (v244[44])
      {
        [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"activeVideoMaxFrameDuration"];
        v20 = self->_devicePropsQueue;
        v70[0] = MEMORY[0x1E69E9820];
        v70[1] = 3221225472;
        v70[2] = __102__AVCaptureFigVideoDevice__setActiveFormat_resetVideoZoomFactorAndMinMaxFrameDurations_sessionPreset___block_invoke_3;
        v70[3] = &unk_1E786FEE0;
        v70[4] = self;
        v70[5] = type;
        dispatch_sync(v20, v70);
      }

      if (*(v222 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"minFocusRectOfInterestSize"];
        v21 = self->_devicePropsQueue;
        v69[0] = MEMORY[0x1E69E9820];
        v69[1] = 3221225472;
        v69[2] = __102__AVCaptureFigVideoDevice__setActiveFormat_resetVideoZoomFactorAndMinMaxFrameDurations_sessionPreset___block_invoke_4;
        v69[3] = &unk_1E786FEE0;
        v69[4] = self;
        v69[5] = v226;
        dispatch_sync(v21, v69);
      }

      if (*(v218 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"focusRectOfInterest"];
        v22 = self->_devicePropsQueue;
        v68[0] = MEMORY[0x1E69E9820];
        v68[1] = 3221225472;
        v68[2] = __102__AVCaptureFigVideoDevice__setActiveFormat_resetVideoZoomFactorAndMinMaxFrameDurations_sessionPreset___block_invoke_5;
        v68[3] = &unk_1E786FEE0;
        v68[4] = self;
        v68[5] = v255;
        dispatch_sync(v22, v68);
      }

      if (*(v214 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"focusPointOfInterest"];
        v23 = self->_devicePropsQueue;
        v67[0] = MEMORY[0x1E69E9820];
        v67[1] = 3221225472;
        v67[2] = __102__AVCaptureFigVideoDevice__setActiveFormat_resetVideoZoomFactorAndMinMaxFrameDurations_sessionPreset___block_invoke_6;
        v67[3] = &unk_1E786FEE0;
        v67[4] = self;
        v67[5] = v225;
        dispatch_sync(v23, v67);
      }

      if (*(v205 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"minExposureRectOfInterestSize"];
        v24 = self->_devicePropsQueue;
        v66[0] = MEMORY[0x1E69E9820];
        v66[1] = 3221225472;
        v66[2] = __102__AVCaptureFigVideoDevice__setActiveFormat_resetVideoZoomFactorAndMinMaxFrameDurations_sessionPreset___block_invoke_7;
        v66[3] = &unk_1E786FEE0;
        v66[4] = self;
        v66[5] = v212;
        dispatch_sync(v24, v66);
      }

      if (*(v201 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"exposureRectOfInterest"];
        v25 = self->_devicePropsQueue;
        v65[0] = MEMORY[0x1E69E9820];
        v65[1] = 3221225472;
        v65[2] = __102__AVCaptureFigVideoDevice__setActiveFormat_resetVideoZoomFactorAndMinMaxFrameDurations_sessionPreset___block_invoke_8;
        v65[3] = &unk_1E786FEE0;
        v65[4] = self;
        v65[5] = v209;
        dispatch_sync(v25, v65);
      }

      if (*(v197 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"exposurePointOfInterest"];
        v26 = self->_devicePropsQueue;
        v64[0] = MEMORY[0x1E69E9820];
        v64[1] = 3221225472;
        v64[2] = __102__AVCaptureFigVideoDevice__setActiveFormat_resetVideoZoomFactorAndMinMaxFrameDurations_sessionPreset___block_invoke_9;
        v64[3] = &unk_1E786FEE0;
        v64[4] = self;
        v64[5] = v208;
        dispatch_sync(v26, v64);
      }

      if (*(v171 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"digitalFlashMode"];
        [(AVCaptureFigVideoDevice *)self _setDigitalFlashModeInternal:0];
      }

      if (*(v167 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"globalToneMappingEnabled"];
        [(AVCaptureFigVideoDevice *)self _setGlobalToneMappingEnabledInternal:0];
      }

      if (*(v163 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"lowLightVideoCaptureEnabled"];
        v27 = self->_devicePropsQueue;
        v63[0] = MEMORY[0x1E69E9820];
        v63[1] = 3221225472;
        v63[2] = __102__AVCaptureFigVideoDevice__setActiveFormat_resetVideoZoomFactorAndMinMaxFrameDurations_sessionPreset___block_invoke_10;
        v63[3] = &unk_1E786EC08;
        v63[4] = self;
        dispatch_sync(v27, v63);
      }

      if (*(v131 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"variableFrameRateVideoCaptureEnabled"];
        v28 = self->_devicePropsQueue;
        v62[0] = MEMORY[0x1E69E9820];
        v62[1] = 3221225472;
        v62[2] = __102__AVCaptureFigVideoDevice__setActiveFormat_resetVideoZoomFactorAndMinMaxFrameDurations_sessionPreset___block_invoke_11;
        v62[3] = &unk_1E786EC08;
        v62[4] = self;
        dispatch_sync(v28, v62);
      }

      if (*(v127 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"videoStabilizationStrength"];
        v29 = self->_devicePropsQueue;
        v61[0] = MEMORY[0x1E69E9820];
        v61[1] = 3221225472;
        v61[2] = __102__AVCaptureFigVideoDevice__setActiveFormat_resetVideoZoomFactorAndMinMaxFrameDurations_sessionPreset___block_invoke_12;
        v61[3] = &unk_1E786FEE0;
        v61[4] = self;
        v61[5] = v125;
        dispatch_sync(v29, v61);
      }

      if (*(v149 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"centerStageActive"];
        [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"cinematicFramingActive"];
        v30 = self->_devicePropsQueue;
        v60[0] = MEMORY[0x1E69E9820];
        v60[1] = 3221225472;
        v60[2] = __102__AVCaptureFigVideoDevice__setActiveFormat_resetVideoZoomFactorAndMinMaxFrameDurations_sessionPreset___block_invoke_13;
        v60[3] = &unk_1E786FEE0;
        v60[4] = self;
        v60[5] = v146;
        dispatch_sync(v30, v60);
      }

      if (*(v143 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"backgroundBlurActive"];
        [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"portraitEffectActive"];
        v31 = self->_devicePropsQueue;
        v59[0] = MEMORY[0x1E69E9820];
        v59[1] = 3221225472;
        v59[2] = __102__AVCaptureFigVideoDevice__setActiveFormat_resetVideoZoomFactorAndMinMaxFrameDurations_sessionPreset___block_invoke_14;
        v59[3] = &unk_1E786FEE0;
        v59[4] = self;
        v59[5] = v140;
        dispatch_sync(v31, v59);
      }

      if (*(v122 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"studioLightingActive"];
        [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"studioLightActive"];
        v32 = self->_devicePropsQueue;
        v58[0] = MEMORY[0x1E69E9820];
        v58[1] = 3221225472;
        v58[2] = __102__AVCaptureFigVideoDevice__setActiveFormat_resetVideoZoomFactorAndMinMaxFrameDurations_sessionPreset___block_invoke_15;
        v58[3] = &unk_1E786FEE0;
        v58[4] = self;
        v58[5] = v119;
        dispatch_sync(v32, v58);
      }

      if (*(v116 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"canPerformReactionEffects"];
        v33 = self->_devicePropsQueue;
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = __102__AVCaptureFigVideoDevice__setActiveFormat_resetVideoZoomFactorAndMinMaxFrameDurations_sessionPreset___block_invoke_16;
        v57[3] = &unk_1E786FEE0;
        v57[4] = self;
        v57[5] = v113;
        dispatch_sync(v33, v57);
      }

      if (*(v110 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"backgroundReplacementActive"];
        v34 = self->_devicePropsQueue;
        v56[0] = MEMORY[0x1E69E9820];
        v56[1] = 3221225472;
        v56[2] = __102__AVCaptureFigVideoDevice__setActiveFormat_resetVideoZoomFactorAndMinMaxFrameDurations_sessionPreset___block_invoke_17;
        v56[3] = &unk_1E786FEE0;
        v56[4] = self;
        v56[5] = v107;
        dispatch_sync(v34, v56);
      }

      if (v6)
      {
        v35 = self->_devicePropsQueue;
        v55[0] = MEMORY[0x1E69E9820];
        v55[1] = 3221225472;
        v55[2] = __102__AVCaptureFigVideoDevice__setActiveFormat_resetVideoZoomFactorAndMinMaxFrameDurations_sessionPreset___block_invoke_18;
        v55[3] = &unk_1E786EC08;
        v55[4] = self;
        dispatch_sync(v35, v55);
      }

      if (*(v85 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"cameraLensSmudgeDetectionEnabled"];
        if (*(v81 + 24) == 1)
        {
          [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"cameraLensSmudgeDetectionStatus"];
        }

        v36 = self->_devicePropsQueue;
        v54[0] = MEMORY[0x1E69E9820];
        v54[1] = 3221225472;
        v54[2] = __102__AVCaptureFigVideoDevice__setActiveFormat_resetVideoZoomFactorAndMinMaxFrameDurations_sessionPreset___block_invoke_19;
        v54[3] = &unk_1E7870090;
        v54[4] = self;
        v54[5] = v88;
        v54[6] = &v80;
        dispatch_sync(v36, v54);
      }

      if (v233[3] >= 1.0)
      {
        [(AVCaptureFigVideoDevice *)self _setMinAvailableVideoZoomFactor:?];
      }

      v37 = v193[6];
      if (v37 >= 1.0)
      {
        [(AVCaptureFigVideoDevice *)self setVideoZoomFactor:v37];
      }

      if (v229[3] >= 1.0)
      {
        [(AVCaptureFigVideoDevice *)self _setMaxAvailableVideoZoomFactor:?];
      }

      if (*(v175 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self setAspectRatioForNonDestructiveCrop:0];
      }

      if (v189[3] != -1)
      {
        [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"activeColorSpace"];
        v38 = self->_devicePropsQueue;
        v53[0] = MEMORY[0x1E69E9820];
        v53[1] = 3221225472;
        v53[2] = __102__AVCaptureFigVideoDevice__setActiveFormat_resetVideoZoomFactorAndMinMaxFrameDurations_sessionPreset___block_invoke_20;
        v53[3] = &unk_1E786FEE0;
        v53[4] = self;
        v53[5] = &v188;
        dispatch_sync(v38, v53);
      }

      if (*(v153 + 24) == 1)
      {
        v51 = *(v157 + 2);
        v52 = v157[6];
        [(AVCaptureFigVideoDevice *)self setActiveMaxExposureDuration:&v51];
      }

      if (*(v185 + 24) == 1)
      {
        if (*(v240 + 24) == 1)
        {
          [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"activeDepthDataMinFrameDuration"];
        }

        [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"activeDepthDataFormat"];
        v39 = self->_devicePropsQueue;
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = __102__AVCaptureFigVideoDevice__setActiveFormat_resetVideoZoomFactorAndMinMaxFrameDurations_sessionPreset___block_invoke_21;
        v50[3] = &unk_1E78700B8;
        v50[4] = self;
        v50[5] = &v178;
        v50[6] = &v239;
        v50[7] = v236;
        dispatch_sync(v39, v50);
      }

      if (*(v104 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"spatialOverCaptureEnabled"];
        v40 = self->_devicePropsQueue;
        v49[0] = MEMORY[0x1E69E9820];
        v49[1] = 3221225472;
        v49[2] = __102__AVCaptureFigVideoDevice__setActiveFormat_resetVideoZoomFactorAndMinMaxFrameDurations_sessionPreset___block_invoke_22;
        v49[3] = &unk_1E786EC08;
        v49[4] = self;
        dispatch_sync(v40, v49);
      }

      if (*(v100 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"outputAspectRatio"];
        [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"outputDimensions"];
        [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"dynamicAspectRatio"];
        [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"dynamicDimensions"];
        v41 = self->_devicePropsQueue;
        v48[0] = MEMORY[0x1E69E9820];
        v48[1] = 3221225472;
        v48[2] = __102__AVCaptureFigVideoDevice__setActiveFormat_resetVideoZoomFactorAndMinMaxFrameDurations_sessionPreset___block_invoke_23;
        v48[3] = &unk_1E786EC08;
        v48[4] = self;
        dispatch_sync(v41, v48);
      }

      if (*(v96 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"dynamicDimensions"];
        self->_dynamicAspectRatio = v91[4];
      }

      if (*(v75 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"cinematicVideoEnabled"];
        v42 = self->_devicePropsQueue;
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __102__AVCaptureFigVideoDevice__setActiveFormat_resetVideoZoomFactorAndMinMaxFrameDurations_sessionPreset___block_invoke_24;
        v47[3] = &unk_1E786FEE0;
        v47[4] = self;
        v47[5] = v78;
        dispatch_sync(v42, v47);
        [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"cinematicVideoEnabled"];
      }

      [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"activeFormat"];
      if (*(v185 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"activeDepthDataFormat"];
        if (*(v240 + 24) == 1)
        {
          [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"activeDepthDataMinFrameDuration"];
        }

        if (!v179[5])
        {
          [(AVCaptureFigVideoDevice *)self _setShallowDepthOfFieldEffectStatus:0];
        }
      }

      if (v189[3] != -1)
      {
        [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"activeColorSpace"];
      }

      if (*(v163 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"lowLightVideoCaptureEnabled"];
      }

      if (*(v167 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"globalToneMappingEnabled"];
      }

      if (*(v171 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"digitalFlashMode"];
      }

      if (v135[5])
      {
        [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"systemPressureState"];
        v43 = self->_devicePropsQueue;
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __102__AVCaptureFigVideoDevice__setActiveFormat_resetVideoZoomFactorAndMinMaxFrameDurations_sessionPreset___block_invoke_25;
        v46[3] = &unk_1E786FEE0;
        v46[4] = self;
        v46[5] = &v134;
        dispatch_sync(v43, v46);
        [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"systemPressureState"];
      }

      if (*(v131 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"variableFrameRateVideoCaptureEnabled"];
      }

      if (*(v127 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"videoStabilizationStrength"];
      }

      if (*(v149 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"cinematicFramingActive"];
        [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"centerStageActive"];
      }

      if (*(v250 + 44))
      {
        [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"activeVideoMinFrameDuration"];
      }

      if (v244[44])
      {
        [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"activeVideoMaxFrameDuration"];
      }

      if (*(v222 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"minFocusRectOfInterestSize"];
      }

      if (*(v218 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"focusRectOfInterest"];
      }

      if (*(v214 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"focusPointOfInterest"];
      }

      if (*(v205 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"minExposureRectOfInterestSize"];
      }

      if (*(v201 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"exposureRectOfInterest"];
      }

      if (*(v197 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"exposurePointOfInterest"];
      }

      if (*(v143 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"portraitEffectActive"];
        [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"backgroundBlurActive"];
      }

      if (*(v122 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"studioLightActive"];
        [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"studioLightingActive"];
      }

      if (*(v116 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"canPerformReactionEffects"];
      }

      if (*(v110 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"backgroundReplacementActive"];
      }

      if (*(v104 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"spatialOverCaptureEnabled"];
      }

      if (*(v100 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"dynamicDimensions"];
        [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"dynamicAspectRatio"];
        [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"outputDimensions"];
        [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"outputAspectRatio"];
      }

      if (*(v96 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"dynamicDimensions"];
      }

      if (*(v85 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"cameraLensSmudgeDetectionEnabled"];
        if (*(v81 + 24) == 1)
        {
          [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"cameraLensSmudgeDetectionStatus"];
        }
      }

      _Block_object_dispose(&v74, 8);
      _Block_object_dispose(v78, 8);
      _Block_object_dispose(&v80, 8);
      _Block_object_dispose(&v84, 8);
      _Block_object_dispose(v88, 8);
      _Block_object_dispose(&v90, 8);
      _Block_object_dispose(&v95, 8);
      _Block_object_dispose(&v99, 8);
      _Block_object_dispose(&v103, 8);
      _Block_object_dispose(v107, 8);
      _Block_object_dispose(&v109, 8);
      _Block_object_dispose(v113, 8);
      _Block_object_dispose(&v115, 8);
      _Block_object_dispose(v119, 8);
      _Block_object_dispose(&v121, 8);
      _Block_object_dispose(v125, 8);
      _Block_object_dispose(&v126, 8);
      _Block_object_dispose(&v130, 8);
      _Block_object_dispose(&v134, 8);
      _Block_object_dispose(v140, 8);
      _Block_object_dispose(&v142, 8);
      _Block_object_dispose(v146, 8);
      _Block_object_dispose(&v148, 8);
      _Block_object_dispose(&v152, 8);
      _Block_object_dispose(&v156, 8);
      _Block_object_dispose(&v162, 8);
      _Block_object_dispose(&v166, 8);
      _Block_object_dispose(&v170, 8);
      _Block_object_dispose(&v174, 8);
      _Block_object_dispose(&v178, 8);
      _Block_object_dispose(&v184, 8);
      _Block_object_dispose(&v188, 8);
      _Block_object_dispose(&v192, 8);
      _Block_object_dispose(&v196, 8);
      _Block_object_dispose(&v200, 8);
      _Block_object_dispose(&v204, 8);
      _Block_object_dispose(v208, 8);
      _Block_object_dispose(v209, 8);
      _Block_object_dispose(v212, 8);
      _Block_object_dispose(&v213, 8);
      _Block_object_dispose(&v217, 8);
      _Block_object_dispose(&v221, 8);
      _Block_object_dispose(v225, 8);
      _Block_object_dispose(v255, 8);
      _Block_object_dispose(v226, 8);
      _Block_object_dispose(v227, 8);
      _Block_object_dispose(&v228, 8);
      _Block_object_dispose(&v232, 8);
      _Block_object_dispose(v236, 8);
      _Block_object_dispose(&v239, 8);
      _Block_object_dispose(type, 8);
      _Block_object_dispose(&v249, 8);
    }

    else
    {
      v14 = MEMORY[0x1E695DF30];
      objc_opt_class();
      v15 = [v14 exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:{0, v259[5]}];
      if (AVCaptureShouldThrowForAPIViolations())
      {
        objc_exception_throw(v15);
      }

      NSLog(&cfstr_SuppressingExc.isa, v15);
    }

    _Block_object_dispose(&v258, 8);
  }

  else
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D920];
    objc_opt_class();
    v13 = [v11 exceptionWithName:v12 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v13);
    }

    NSLog(&cfstr_SuppressingExc.isa, v13);
  }
}

uint64_t __102__AVCaptureFigVideoDevice__setActiveFormat_resetVideoZoomFactorAndMinMaxFrameDurations_sessionPreset___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 152);
  *(v2 + 152) = 0;
  if (([*(a1 + 40) isEqualToString:@"AVCaptureSessionPresetInputPriority"] & 1) == 0)
  {
    *(*(a1 + 32) + 152) = *(a1 + 40);
  }

  result = [*(*(*(a1 + 56) + 8) + 40) isEqual:*(*(a1 + 32) + 136)];
  if ((result & 1) == 0)
  {
    v5 = *(*(*(a1 + 56) + 8) + 40);

    *(*(a1 + 32) + 136) = *(*(*(a1 + 56) + 8) + 40);
    *(*(a1 + 32) + 186) = [*(*(*(a1 + 56) + 8) + 40) isContinuousZoomWithDepthEnabled];
    v197 = 0u;
    v198 = 0u;
    v199 = 0u;
    v200 = 0u;
    v6 = [*(*(a1 + 32) + 136) supportedDepthDataFormats];
    v7 = [v6 countByEnumeratingWithState:&v197 objects:v196 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v198;
LABEL_6:
      v10 = 0;
      while (1)
      {
        if (*v198 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v197 + 1) + 8 * v10);
        if ([v11 isDefaultActiveFormat])
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v197 objects:v196 count:16];
          if (v8)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
      v11 = 0;
    }

    if (v11 != *(*(a1 + 32) + 144) && ([v11 isEqual:?] & 1) == 0)
    {
      *(*(*(a1 + 64) + 8) + 24) = 1;
      *(*(*(a1 + 72) + 8) + 40) = v11;
      if (!*(*(*(a1 + 72) + 8) + 40))
      {
        *(*(a1 + 32) + 1120) = 0;
      }
    }

    *(*(*(a1 + 80) + 8) + 24) = [*(a1 + 32) _isCenterStageActiveForEnabled:{+[AVCaptureDevice isCenterStageEnabled](AVCaptureDevice, "isCenterStageEnabled")}];
    *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 80) + 8) + 24) != *(*(a1 + 32) + 1372);
    [*(a1 + 32) _computeMinVideoZoomFactorOut:*(*(a1 + 96) + 8) + 24 maxVideoZoomFactorOut:*(*(a1 + 104) + 8) + 24 defaultVideoZoomFactorOut:*(*(a1 + 112) + 8) + 24 centerStageActiveOverride:*(*(*(a1 + 80) + 8) + 24) resetZoomFactor:*(a1 + 480)];
    *(*(*(a1 + 120) + 8) + 24) = [*(a1 + 32) _isBackgroundBlurActiveForEnabled:{+[AVCaptureDevice isBackgroundBlurEnabled](AVCaptureDevice, "isBackgroundBlurEnabled")}];
    *(*(*(a1 + 128) + 8) + 24) = *(*(*(a1 + 120) + 8) + 24) != *(*(a1 + 32) + 1410);
    *(*(*(a1 + 136) + 8) + 24) = [*(a1 + 32) _isStudioLightingActiveForEnabled:{+[AVCaptureDevice isStudioLightEnabled](AVCaptureDevice, "isStudioLightEnabled")}];
    *(*(*(a1 + 144) + 8) + 24) = *(*(*(a1 + 136) + 8) + 24) != *(*(a1 + 32) + 1413);
    *(*(*(a1 + 152) + 8) + 24) = [*(a1 + 32) _reactionEffectsActiveForEnabled:{+[AVCaptureDevice reactionEffectsEnabled](AVCaptureDevice, "reactionEffectsEnabled")}];
    *(*(*(a1 + 160) + 8) + 24) = *(*(*(a1 + 152) + 8) + 24) != *(*(a1 + 32) + 1416);
    *(*(*(a1 + 168) + 8) + 24) = [*(a1 + 32) _isBackgroundReplacementActiveForEnabled:{+[AVCaptureDevice isBackgroundReplacementEnabled](AVCaptureDevice, "isBackgroundReplacementEnabled")}];
    *(*(*(a1 + 176) + 8) + 24) = *(*(*(a1 + 168) + 8) + 24) != *(*(a1 + 32) + 1419);
    if ([*(a1 + 48) isCameraLensSmudgeDetectionSupported])
    {
      v12 = *(*(a1 + 32) + 1584);
    }

    else
    {
      v12 = 0;
    }

    *(*(*(a1 + 184) + 8) + 24) = v12 & 1;
    *(*(*(a1 + 192) + 8) + 24) = *(*(*(a1 + 184) + 8) + 24) != *(*(a1 + 32) + 1584);
    v13 = (*(*(*(a1 + 184) + 8) + 24) & 1) == 0 && *(*(a1 + 32) + 1576) != 0;
    *(*(*(a1 + 200) + 8) + 24) = v13;
    if (*(a1 + 480) == 1)
    {
      memset(&v195, 0, sizeof(v195));
      v14 = *(*(*(a1 + 56) + 8) + 40);
      if (v14)
      {
        [v14 defaultActiveMinFrameDurationForSessionPreset:*(*(a1 + 32) + 152)];
      }

      v15 = *(*(a1 + 32) + 224);
      time1.epoch = *(*(a1 + 32) + 240);
      *&time1.value = v15;
      time2 = v195;
      if (CMTimeCompare(&time1, &time2))
      {
        *(*(*(a1 + 208) + 8) + 32) = v195;
      }

      v16 = *(a1 + 32) + 248;
      v17 = MEMORY[0x1E6960C70];
      v161 = *MEMORY[0x1E6960C70];
      *v16 = *MEMORY[0x1E6960C70];
      v18 = *(v17 + 16);
      *(v16 + 16) = v18;
      memset(&time1, 0, sizeof(time1));
      v19 = *(*(*(a1 + 56) + 8) + 40);
      if (v19)
      {
        [v19 defaultActiveMaxFrameDurationForSessionPreset:*(*(a1 + 32) + 152)];
      }

      v20 = *(*(a1 + 32) + 272);
      time2.epoch = *(*(a1 + 32) + 288);
      *&time2.value = v20;
      v192 = time1;
      if (CMTimeCompare(&time2, &v192))
      {
        *(*(*(a1 + 216) + 8) + 32) = time1;
      }

      v21 = *(a1 + 32) + 296;
      *v21 = v161;
      *(v21 + 16) = v18;
      v22 = *(*(*(a1 + 112) + 8) + 24);
      *(*(*(a1 + 224) + 8) + 24) = v22;
      *(*(*(a1 + 232) + 8) + 24) = *(*(a1 + 32) + 1304) != 0;
      v23 = [objc_msgSend(*(*(*(a1 + 72) + 8) + 40) "videoSupportedFrameRateRanges")];
      if (v23)
      {
        *(*(*(a1 + 240) + 8) + 24) = 1;
        [v23 minFrameDuration];
        v24 = *(*(a1 + 248) + 8);
        *(v24 + 32) = v190;
        *(v24 + 48) = v191;
      }

      v25 = *(*(a1 + 256) + 8);
      *(v25 + 32) = v161;
      *(v25 + 48) = v18;
      *(*(*(a1 + 264) + 8) + 24) = *(*(*(a1 + 256) + 8) + 44) & 1;
      [*(a1 + 32) _minFocusRectOfInterestSizeForFormat:*(*(*(a1 + 56) + 8) + 40), v161];
      v26 = *(*(a1 + 272) + 8);
      *(v26 + 32) = v27;
      *(v26 + 40) = v28;
      v29 = *(*(a1 + 272) + 8);
      v30 = *(v29 + 40);
      v31 = *(*(a1 + 32) + 424) != *(v29 + 32);
      if (*(*(a1 + 32) + 432) != v30)
      {
        v31 = 1;
      }

      *(*(*(a1 + 280) + 8) + 24) = v31;
      if (*(*(*(a1 + 280) + 8) + 24) == 1)
      {
        v32 = fvd_validatedRectOfInterestForMinRectOfInterestSize((*(*(a1 + 296) + 8) + 24), *(*(*(a1 + 272) + 8) + 32), *(*(*(a1 + 272) + 8) + 40), *(*(a1 + 32) + 440), *(*(a1 + 32) + 448), *(*(a1 + 32) + 456), *(*(a1 + 32) + 464));
        v33 = *(*(a1 + 288) + 8);
        *(v33 + 32) = v32;
        *(v33 + 40) = v34;
        *(v33 + 48) = v35;
        *(v33 + 56) = v36;
        *(*(*(a1 + 304) + 8) + 24) = !CGRectEqualToRect(*(*(a1 + 32) + 440), *(*(*(a1 + 288) + 8) + 32));
        if (*(*(*(a1 + 296) + 8) + 24) == 1)
        {
          *(*(*(a1 + 312) + 8) + 32) = CGRectGetMidX(*(*(*(a1 + 288) + 8) + 32));
          *(*(*(a1 + 312) + 8) + 40) = CGRectGetMidY(*(*(*(a1 + 288) + 8) + 32));
        }
      }

      [*(a1 + 32) _minExposureRectOfInterestSizeForFormat:*(*(*(a1 + 56) + 8) + 40)];
      v37 = *(*(a1 + 320) + 8);
      *(v37 + 32) = v38;
      *(v37 + 40) = v39;
      v40 = *(*(a1 + 320) + 8);
      v41 = *(v40 + 40);
      v42 = *(*(a1 + 32) + 608) != *(v40 + 32);
      if (*(*(a1 + 32) + 616) != v41)
      {
        v42 = 1;
      }

      *(*(*(a1 + 328) + 8) + 24) = v42;
      if (*(*(*(a1 + 328) + 8) + 24) == 1)
      {
        v43 = fvd_validatedRectOfInterestForMinRectOfInterestSize((*(*(a1 + 344) + 8) + 24), *(*(*(a1 + 320) + 8) + 32), *(*(*(a1 + 320) + 8) + 40), *(*(a1 + 32) + 624), *(*(a1 + 32) + 632), *(*(a1 + 32) + 640), *(*(a1 + 32) + 648));
        v44 = *(*(a1 + 336) + 8);
        *(v44 + 32) = v43;
        *(v44 + 40) = v45;
        *(v44 + 48) = v46;
        *(v44 + 56) = v47;
        *(*(*(a1 + 352) + 8) + 24) = !CGRectEqualToRect(*(*(a1 + 32) + 624), *(*(*(a1 + 336) + 8) + 32));
        if (*(*(*(a1 + 344) + 8) + 24) == 1)
        {
          *(*(*(a1 + 360) + 8) + 32) = CGRectGetMidX(*(*(*(a1 + 336) + 8) + 32));
          *(*(*(a1 + 360) + 8) + 40) = CGRectGetMidY(*(*(*(a1 + 336) + 8) + 32));
        }
      }
    }

    else
    {
      v48 = *(a1 + 32) + 224;
      v49 = *(*(*(a1 + 56) + 8) + 40);
      if (v49)
      {
        [v49 lowestSupportedVideoFrameDuration];
      }

      else
      {
        memset(&v195, 0, sizeof(v195));
      }

      v50 = *v48;
      time1.epoch = *(v48 + 16);
      *&time1.value = v50;
      if (CMTimeCompare(&time1, &v195) < 0)
      {
        v51 = *(*(*(a1 + 56) + 8) + 40);
        if (v51)
        {
          [v51 lowestSupportedVideoFrameDuration];
        }

        else
        {
          v188 = 0uLL;
          v189 = 0;
        }

        v52 = *(*(a1 + 208) + 8);
        *(v52 + 32) = v188;
        *(v52 + 48) = v189;
      }

      v53 = *(a1 + 32) + 272;
      v54 = *(*(*(a1 + 56) + 8) + 40);
      if (v54)
      {
        [v54 highestSupportedVideoFrameDuration];
      }

      else
      {
        memset(&v195, 0, sizeof(v195));
      }

      v55 = *v53;
      time1.epoch = *(v53 + 16);
      *&time1.value = v55;
      if (CMTimeCompare(&time1, &v195) >= 1)
      {
        v56 = *(*(*(a1 + 56) + 8) + 40);
        if (v56)
        {
          [v56 highestSupportedVideoFrameDuration];
        }

        else
        {
          v186 = 0uLL;
          v187 = 0;
        }

        v57 = *(*(a1 + 216) + 8);
        *(v57 + 32) = v186;
        *(v57 + 48) = v187;
      }

      v58 = *(*(a1 + 32) + 1032);
      v59 = *(*(*(a1 + 104) + 8) + 24);
      if (v59 < v58 || (v59 = *(*(*(a1 + 96) + 8) + 24), v59 > v58))
      {
        v60 = v59;
        *(*(*(a1 + 224) + 8) + 24) = v60;
      }

      v61 = [objc_msgSend(*(*(*(a1 + 72) + 8) + 40) "videoSupportedFrameRateRanges")];
      if (v61)
      {
        memset(&v195, 0, sizeof(v195));
        [v61 minFrameDuration];
        v62 = *(*(a1 + 32) + 160);
        time1.epoch = *(*(a1 + 32) + 176);
        *&time1.value = v62;
        time2 = v195;
        if (CMTimeCompare(&time1, &time2) < 0)
        {
          *(*(*(a1 + 240) + 8) + 24) = 1;
          *(*(*(a1 + 248) + 8) + 32) = v195;
        }
      }

      v63 = *(*(a1 + 256) + 8);
      if (*(v63 + 44))
      {
        v64 = *(*(*(a1 + 56) + 8) + 40);
        if (v64)
        {
          [v64 maxExposureDuration];
        }

        else
        {
          memset(&v195, 0, sizeof(v195));
        }

        time1 = *(v63 + 32);
        if (CMTimeCompare(&time1, &v195) < 1)
        {
          v66 = *(*(a1 + 256) + 8);
          v67 = *(*(*(a1 + 56) + 8) + 40);
          if (v67)
          {
            [v67 minExposureDuration];
          }

          else
          {
            memset(&v195, 0, sizeof(v195));
          }

          time1 = *(v66 + 32);
          if ((CMTimeCompare(&time1, &v195) & 0x80000000) == 0)
          {
            goto LABEL_80;
          }

          v85 = *(*(*(a1 + 56) + 8) + 40);
          if (v85)
          {
            [v85 minExposureDuration];
          }

          else
          {
            v182 = 0uLL;
            v183 = 0;
          }

          v68 = *(*(a1 + 256) + 8);
          *(v68 + 32) = v182;
          v69 = v183;
        }

        else
        {
          v65 = *(*(*(a1 + 56) + 8) + 40);
          if (v65)
          {
            [v65 maxExposureDuration];
          }

          else
          {
            v184 = 0uLL;
            v185 = 0;
          }

          v68 = *(*(a1 + 256) + 8);
          *(v68 + 32) = v184;
          v69 = v185;
        }

        *(v68 + 48) = v69;
        *(*(*(a1 + 264) + 8) + 24) = 1;
      }
    }

LABEL_80:
    v70 = [*(*(a1 + 32) + 136) supportedColorSpaces];
    if (([v70 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", *(*(a1 + 32) + 1024))}] & 1) == 0)
    {
      *(*(*(a1 + 368) + 8) + 24) = [objc_msgSend(objc_msgSend(*(*(a1 + 32) + 136) "supportedColorSpaces")];
    }

    *(*(a1 + 32) + 1296) = [*(*(a1 + 32) + 1288) figLevel];
    v71 = -[AVCaptureSystemPressureState initWithFigLevel:factors:recommendedFrameRateRangeForPortrait:recommendedFrameRateRangeForPhotoMode:]([AVCaptureSystemPressureState alloc], "initWithFigLevel:factors:recommendedFrameRateRangeForPortrait:recommendedFrameRateRangeForPhotoMode:", *(*(a1 + 32) + 1296), [*(*(a1 + 32) + 1288) factors], objc_msgSend(*(a1 + 32), "_recommendedFrameRateRangeForVideoFormat:depthFormat:figSystemPressureLevel:", *(*(a1 + 32) + 136), v11, *(*(a1 + 32) + 1296)), objc_msgSend(*(a1 + 32), "_recommendedFrameRateRangeForVideoFormat:depthFormat:figSystemPressureLevel:", *(*(a1 + 32) + 136), 0, *(*(a1 + 32) + 1296)));
    if (![(AVCaptureSystemPressureState *)v71 isEqual:*(*(a1 + 32) + 1288)])
    {
      *(*(*(a1 + 376) + 8) + 40) = v71;
    }

    *(*(*(a1 + 384) + 8) + 24) = *(*(a1 + 32) + 920) != 0;
    *(*(*(a1 + 392) + 8) + 24) = *(*(a1 + 32) + 1329);
    *(*(*(a1 + 400) + 8) + 24) = *(*(a1 + 32) + 1300);
    *(*(*(a1 + 408) + 8) + 24) = *(*(a1 + 32) + 1330);
    *(*(*(a1 + 416) + 8) + 24) = [*(*(*(a1 + 56) + 8) + 40) isVideoStabilizationStrengthSupported:1];
    v72 = *(a1 + 32);
    if (*(*(*(a1 + 416) + 8) + 24) != *(v72 + 1336))
    {
      *(*(*(a1 + 424) + 8) + 24) = 1;
      v72 = *(a1 + 32);
    }

    v73 = [*(v72 + 136) isSpatialOverCaptureSupported];
    v74 = *(a1 + 32);
    if ((v73 & 1) == 0 && *(v74 + 1301) == 1)
    {
      *(*(*(a1 + 432) + 8) + 24) = 1;
      v74 = *(a1 + 32);
    }

    if (!*(v74 + 1536))
    {
      if ([objc_msgSend(*(v74 + 136) "supportedDynamicAspectRatios")])
      {
        goto LABEL_93;
      }

      v74 = *(a1 + 32);
      if (!*(v74 + 1536))
      {
LABEL_94:
        if ((*(*(*(a1 + 440) + 8) + 24) & 1) == 0)
        {
          Dimensions = CMVideoFormatDescriptionGetDimensions([*(*(a1 + 32) + 136) formatDescription]);
          *(*(*(a1 + 448) + 8) + 32) = AVCaptureConvertDimensionsForAspectRatio(*&Dimensions, *(*(a1 + 32) + 1536), NAN);
          v76 = *(*(a1 + 448) + 8);
          v77 = *(*(a1 + 32) + 1544) != *(v76 + 32) || *(*(a1 + 32) + 1548) != *(v76 + 36);
          *(*(*(a1 + 456) + 8) + 24) = v77;
        }

        if (*(*(*(a1 + 80) + 8) + 24) != 1)
        {
          goto LABEL_138;
        }

        v78 = *(*(a1 + 208) + 8);
        if (*(v78 + 44))
        {
          v79 = [*(*(a1 + 32) + 136) videoFrameRateRangeForCenterStage];
          if (v79)
          {
            [v79 minFrameDuration];
          }

          else
          {
            memset(&v195, 0, sizeof(v195));
          }

          time1 = *(v78 + 32);
          if (CMTimeCompare(&time1, &v195) < 0)
          {
            v82 = [*(*(a1 + 32) + 136) videoFrameRateRangeForCenterStage];
            if (v82)
            {
              v83 = v181;
              [v82 minFrameDuration];
            }

            else
            {
              memset(v181, 0, sizeof(v181));
              v83 = v181;
            }
          }

          else
          {
            v80 = *(*(a1 + 208) + 8);
            v81 = [*(*(a1 + 32) + 136) videoFrameRateRangeForCenterStage];
            if (v81)
            {
              [v81 maxFrameDuration];
            }

            else
            {
              memset(&v195, 0, sizeof(v195));
            }

            time1 = *(v80 + 32);
            if (CMTimeCompare(&time1, &v195) < 1)
            {
              goto LABEL_120;
            }

            v84 = [*(*(a1 + 32) + 136) videoFrameRateRangeForCenterStage];
            if (v84)
            {
              v83 = v180;
              [v84 maxFrameDuration];
            }

            else
            {
              memset(v180, 0, sizeof(v180));
              v83 = v180;
            }
          }

          v86 = *(*(a1 + 208) + 8);
          *(v86 + 32) = *v83;
          *(v86 + 48) = v83[2];
        }

LABEL_120:
        v87 = *(*(a1 + 216) + 8);
        if ((*(v87 + 44) & 1) == 0)
        {
          goto LABEL_138;
        }

        v88 = [*(*(a1 + 32) + 136) videoFrameRateRangeForCenterStage];
        if (v88)
        {
          [v88 maxFrameDuration];
        }

        else
        {
          memset(&v195, 0, sizeof(v195));
        }

        time1 = *(v87 + 32);
        if (CMTimeCompare(&time1, &v195) >= 1)
        {
          v89 = [*(*(a1 + 32) + 136) videoFrameRateRangeForCenterStage];
          if (v89)
          {
            v90 = v179;
            [v89 maxFrameDuration];
          }

          else
          {
            memset(v179, 0, sizeof(v179));
            v90 = v179;
          }

LABEL_137:
          v94 = *(*(a1 + 216) + 8);
          *(v94 + 32) = *v90;
          *(v94 + 48) = v90[2];
          goto LABEL_138;
        }

        v91 = *(*(a1 + 216) + 8);
        v92 = [*(*(a1 + 32) + 136) videoFrameRateRangeForCenterStage];
        if (v92)
        {
          [v92 minFrameDuration];
        }

        else
        {
          memset(&v195, 0, sizeof(v195));
        }

        time1 = *(v91 + 32);
        if (CMTimeCompare(&time1, &v195) < 0)
        {
          v93 = [*(*(a1 + 32) + 136) videoFrameRateRangeForCenterStage];
          if (v93)
          {
            v90 = v178;
            [v93 minFrameDuration];
          }

          else
          {
            memset(v178, 0, sizeof(v178));
            v90 = v178;
          }

          goto LABEL_137;
        }

LABEL_138:
        if (*(*(*(a1 + 120) + 8) + 24) != 1)
        {
          goto LABEL_171;
        }

        v95 = *(*(a1 + 208) + 8);
        if (*(v95 + 44))
        {
          v96 = [*(*(a1 + 32) + 136) videoFrameRateRangeForBackgroundBlur];
          if (v96)
          {
            [v96 minFrameDuration];
          }

          else
          {
            memset(&v195, 0, sizeof(v195));
          }

          time1 = *(v95 + 32);
          if (CMTimeCompare(&time1, &v195) < 0)
          {
            v99 = [*(*(a1 + 32) + 136) videoFrameRateRangeForBackgroundBlur];
            if (v99)
            {
              v100 = v177;
              [v99 minFrameDuration];
            }

            else
            {
              memset(v177, 0, sizeof(v177));
              v100 = v177;
            }

            goto LABEL_154;
          }

          v97 = *(*(a1 + 208) + 8);
          v98 = [*(*(a1 + 32) + 136) videoFrameRateRangeForBackgroundBlur];
          if (v98)
          {
            [v98 maxFrameDuration];
          }

          else
          {
            memset(&v195, 0, sizeof(v195));
          }

          time1 = *(v97 + 32);
          if (CMTimeCompare(&time1, &v195) >= 1)
          {
            v101 = [*(*(a1 + 32) + 136) videoFrameRateRangeForBackgroundBlur];
            if (v101)
            {
              v100 = v176;
              [v101 maxFrameDuration];
            }

            else
            {
              memset(v176, 0, sizeof(v176));
              v100 = v176;
            }

LABEL_154:
            v102 = *(*(a1 + 208) + 8);
            *(v102 + 32) = *v100;
            *(v102 + 48) = v100[2];
          }
        }

        v103 = *(*(a1 + 216) + 8);
        if ((*(v103 + 44) & 1) == 0)
        {
          goto LABEL_171;
        }

        v104 = [*(*(a1 + 32) + 136) videoFrameRateRangeForBackgroundBlur];
        if (v104)
        {
          [v104 minFrameDuration];
        }

        else
        {
          memset(&v195, 0, sizeof(v195));
        }

        time1 = *(v103 + 32);
        if (CMTimeCompare(&time1, &v195) < 0)
        {
          v107 = [*(*(a1 + 32) + 136) videoFrameRateRangeForBackgroundBlur];
          if (v107)
          {
            v108 = v175;
            [v107 minFrameDuration];
          }

          else
          {
            memset(v175, 0, sizeof(v175));
            v108 = v175;
          }
        }

        else
        {
          v105 = *(*(a1 + 216) + 8);
          v106 = [*(*(a1 + 32) + 136) videoFrameRateRangeForBackgroundBlur];
          if (v106)
          {
            [v106 maxFrameDuration];
          }

          else
          {
            memset(&v195, 0, sizeof(v195));
          }

          time1 = *(v105 + 32);
          if (CMTimeCompare(&time1, &v195) < 1)
          {
LABEL_171:
            if (*(*(*(a1 + 136) + 8) + 24) != 1)
            {
              goto LABEL_204;
            }

            v111 = *(*(a1 + 208) + 8);
            if (*(v111 + 44))
            {
              v112 = [*(*(a1 + 32) + 136) videoFrameRateRangeForStudioLight];
              if (v112)
              {
                [v112 minFrameDuration];
              }

              else
              {
                memset(&v195, 0, sizeof(v195));
              }

              time1 = *(v111 + 32);
              if (CMTimeCompare(&time1, &v195) < 0)
              {
                v115 = [*(*(a1 + 32) + 136) videoFrameRateRangeForStudioLight];
                if (v115)
                {
                  v116 = v173;
                  [v115 minFrameDuration];
                }

                else
                {
                  memset(v173, 0, sizeof(v173));
                  v116 = v173;
                }

                goto LABEL_187;
              }

              v113 = *(*(a1 + 208) + 8);
              v114 = [*(*(a1 + 32) + 136) videoFrameRateRangeForStudioLight];
              if (v114)
              {
                [v114 maxFrameDuration];
              }

              else
              {
                memset(&v195, 0, sizeof(v195));
              }

              time1 = *(v113 + 32);
              if (CMTimeCompare(&time1, &v195) >= 1)
              {
                v117 = [*(*(a1 + 32) + 136) videoFrameRateRangeForStudioLight];
                if (v117)
                {
                  v116 = v172;
                  [v117 maxFrameDuration];
                }

                else
                {
                  memset(v172, 0, sizeof(v172));
                  v116 = v172;
                }

LABEL_187:
                v118 = *(*(a1 + 208) + 8);
                *(v118 + 32) = *v116;
                *(v118 + 48) = v116[2];
              }
            }

            v119 = *(*(a1 + 216) + 8);
            if ((*(v119 + 44) & 1) == 0)
            {
              goto LABEL_204;
            }

            v120 = [*(*(a1 + 32) + 136) videoFrameRateRangeForStudioLight];
            if (v120)
            {
              [v120 minFrameDuration];
            }

            else
            {
              memset(&v195, 0, sizeof(v195));
            }

            time1 = *(v119 + 32);
            if (CMTimeCompare(&time1, &v195) < 0)
            {
              v123 = [*(*(a1 + 32) + 136) videoFrameRateRangeForStudioLight];
              if (v123)
              {
                v124 = v171;
                [v123 minFrameDuration];
              }

              else
              {
                memset(v171, 0, sizeof(v171));
                v124 = v171;
              }
            }

            else
            {
              v121 = *(*(a1 + 216) + 8);
              v122 = [*(*(a1 + 32) + 136) videoFrameRateRangeForStudioLight];
              if (v122)
              {
                [v122 maxFrameDuration];
              }

              else
              {
                memset(&v195, 0, sizeof(v195));
              }

              time1 = *(v121 + 32);
              if (CMTimeCompare(&time1, &v195) < 1)
              {
LABEL_204:
                if (*(*(*(a1 + 168) + 8) + 24) != 1)
                {
                  goto LABEL_237;
                }

                v127 = *(*(a1 + 208) + 8);
                if (*(v127 + 44))
                {
                  v128 = [*(*(a1 + 32) + 136) videoFrameRateRangeForBackgroundReplacement];
                  if (v128)
                  {
                    [v128 minFrameDuration];
                  }

                  else
                  {
                    memset(&v195, 0, sizeof(v195));
                  }

                  time1 = *(v127 + 32);
                  if (CMTimeCompare(&time1, &v195) < 0)
                  {
                    v131 = [*(*(a1 + 32) + 136) videoFrameRateRangeForBackgroundReplacement];
                    if (v131)
                    {
                      v132 = v169;
                      [v131 minFrameDuration];
                    }

                    else
                    {
                      memset(v169, 0, sizeof(v169));
                      v132 = v169;
                    }

                    goto LABEL_220;
                  }

                  v129 = *(*(a1 + 208) + 8);
                  v130 = [*(*(a1 + 32) + 136) videoFrameRateRangeForBackgroundReplacement];
                  if (v130)
                  {
                    [v130 maxFrameDuration];
                  }

                  else
                  {
                    memset(&v195, 0, sizeof(v195));
                  }

                  time1 = *(v129 + 32);
                  if (CMTimeCompare(&time1, &v195) >= 1)
                  {
                    v133 = [*(*(a1 + 32) + 136) videoFrameRateRangeForBackgroundReplacement];
                    if (v133)
                    {
                      v132 = v168;
                      [v133 maxFrameDuration];
                    }

                    else
                    {
                      memset(v168, 0, sizeof(v168));
                      v132 = v168;
                    }

LABEL_220:
                    v134 = *(*(a1 + 208) + 8);
                    *(v134 + 32) = *v132;
                    *(v134 + 48) = v132[2];
                  }
                }

                v135 = *(*(a1 + 216) + 8);
                if ((*(v135 + 44) & 1) == 0)
                {
                  goto LABEL_237;
                }

                v136 = [*(*(a1 + 32) + 136) videoFrameRateRangeForBackgroundReplacement];
                if (v136)
                {
                  [v136 minFrameDuration];
                }

                else
                {
                  memset(&v195, 0, sizeof(v195));
                }

                time1 = *(v135 + 32);
                if (CMTimeCompare(&time1, &v195) < 0)
                {
                  v139 = [*(*(a1 + 32) + 136) videoFrameRateRangeForBackgroundReplacement];
                  if (v139)
                  {
                    v140 = v167;
                    [v139 minFrameDuration];
                  }

                  else
                  {
                    memset(v167, 0, sizeof(v167));
                    v140 = v167;
                  }
                }

                else
                {
                  v137 = *(*(a1 + 216) + 8);
                  v138 = [*(*(a1 + 32) + 136) videoFrameRateRangeForBackgroundReplacement];
                  if (v138)
                  {
                    [v138 maxFrameDuration];
                  }

                  else
                  {
                    memset(&v195, 0, sizeof(v195));
                  }

                  time1 = *(v137 + 32);
                  if (CMTimeCompare(&time1, &v195) < 1)
                  {
LABEL_237:
                    v143 = *(a1 + 32);
                    if (*(v143 + 189) != 1)
                    {
                      goto LABEL_270;
                    }

                    v144 = *(*(a1 + 208) + 8);
                    if (*(v144 + 44))
                    {
                      v145 = [*(v143 + 136) videoFrameRateRangeForCinematicVideo];
                      if (v145)
                      {
                        [v145 minFrameDuration];
                      }

                      else
                      {
                        memset(&v195, 0, sizeof(v195));
                      }

                      time1 = *(v144 + 32);
                      if (CMTimeCompare(&time1, &v195) < 0)
                      {
                        v148 = [*(*(a1 + 32) + 136) videoFrameRateRangeForCinematicVideo];
                        if (v148)
                        {
                          v149 = v165;
                          [v148 minFrameDuration];
                        }

                        else
                        {
                          memset(v165, 0, sizeof(v165));
                          v149 = v165;
                        }

                        goto LABEL_253;
                      }

                      v146 = *(*(a1 + 208) + 8);
                      v147 = [*(*(a1 + 32) + 136) videoFrameRateRangeForCinematicVideo];
                      if (v147)
                      {
                        [v147 maxFrameDuration];
                      }

                      else
                      {
                        memset(&v195, 0, sizeof(v195));
                      }

                      time1 = *(v146 + 32);
                      if (CMTimeCompare(&time1, &v195) >= 1)
                      {
                        v150 = [*(*(a1 + 32) + 136) videoFrameRateRangeForCinematicVideo];
                        if (v150)
                        {
                          v149 = v164;
                          [v150 maxFrameDuration];
                        }

                        else
                        {
                          memset(v164, 0, sizeof(v164));
                          v149 = v164;
                        }

LABEL_253:
                        v151 = *(*(a1 + 208) + 8);
                        *(v151 + 32) = *v149;
                        *(v151 + 48) = v149[2];
                      }
                    }

                    v152 = *(*(a1 + 216) + 8);
                    if (*(v152 + 44))
                    {
                      v153 = [*(*(a1 + 32) + 136) videoFrameRateRangeForCinematicVideo];
                      if (v153)
                      {
                        [v153 minFrameDuration];
                      }

                      else
                      {
                        memset(&v195, 0, sizeof(v195));
                      }

                      time1 = *(v152 + 32);
                      if (CMTimeCompare(&time1, &v195) < 0)
                      {
                        v156 = [*(*(a1 + 32) + 136) videoFrameRateRangeForCinematicVideo];
                        if (v156)
                        {
                          v157 = v163;
                          [v156 minFrameDuration];
                        }

                        else
                        {
                          memset(v163, 0, sizeof(v163));
                          v157 = v163;
                        }
                      }

                      else
                      {
                        v154 = *(*(a1 + 216) + 8);
                        v155 = [*(*(a1 + 32) + 136) videoFrameRateRangeForCinematicVideo];
                        if (v155)
                        {
                          [v155 maxFrameDuration];
                        }

                        else
                        {
                          memset(&v195, 0, sizeof(v195));
                        }

                        time1 = *(v154 + 32);
                        if (CMTimeCompare(&time1, &v195) < 1)
                        {
                          goto LABEL_270;
                        }

                        v158 = [*(*(a1 + 32) + 136) videoFrameRateRangeForCinematicVideo];
                        if (v158)
                        {
                          v157 = v162;
                          [v158 maxFrameDuration];
                        }

                        else
                        {
                          memset(v162, 0, sizeof(v162));
                          v157 = v162;
                        }
                      }

                      v159 = *(*(a1 + 216) + 8);
                      *(v159 + 32) = *v157;
                      *(v159 + 48) = v157[2];
                    }

LABEL_270:
                    result = [*(*(*(a1 + 56) + 8) + 40) isCinematicVideoCaptureSupported];
                    if (result)
                    {
                      v160 = *(*(a1 + 32) + 189);
                    }

                    else
                    {
                      v160 = 0;
                    }

                    *(*(*(a1 + 464) + 8) + 24) = v160 & 1;
                    *(*(*(a1 + 472) + 8) + 24) = *(*(*(a1 + 464) + 8) + 24) != *(*(a1 + 32) + 189);
                    return result;
                  }

                  v141 = [*(*(a1 + 32) + 136) videoFrameRateRangeForBackgroundReplacement];
                  if (v141)
                  {
                    v140 = v166;
                    [v141 maxFrameDuration];
                  }

                  else
                  {
                    memset(v166, 0, sizeof(v166));
                    v140 = v166;
                  }
                }

                v142 = *(*(a1 + 216) + 8);
                *(v142 + 32) = *v140;
                *(v142 + 48) = v140[2];
                goto LABEL_237;
              }

              v125 = [*(*(a1 + 32) + 136) videoFrameRateRangeForStudioLight];
              if (v125)
              {
                v124 = v170;
                [v125 maxFrameDuration];
              }

              else
              {
                memset(v170, 0, sizeof(v170));
                v124 = v170;
              }
            }

            v126 = *(*(a1 + 216) + 8);
            *(v126 + 32) = *v124;
            *(v126 + 48) = v124[2];
            goto LABEL_204;
          }

          v109 = [*(*(a1 + 32) + 136) videoFrameRateRangeForBackgroundBlur];
          if (v109)
          {
            v108 = v174;
            [v109 maxFrameDuration];
          }

          else
          {
            memset(v174, 0, sizeof(v174));
            v108 = v174;
          }
        }

        v110 = *(*(a1 + 216) + 8);
        *(v110 + 32) = *v108;
        *(v110 + 48) = v108[2];
        goto LABEL_171;
      }
    }

    if ([objc_msgSend(*(v74 + 136) "supportedDynamicAspectRatios")])
    {
      goto LABEL_94;
    }

LABEL_93:
    *(*(*(a1 + 440) + 8) + 24) = 1;
    goto LABEL_94;
  }

  return result;
}

__n128 __102__AVCaptureFigVideoDevice__setActiveFormat_resetVideoZoomFactorAndMinMaxFrameDurations_sessionPreset___block_invoke_2(uint64_t a1)
{
  v1 = (*(a1 + 32) + 224);
  v2 = *(*(a1 + 40) + 8);
  v3 = v2[3].n128_u64[0];
  result = v2[2];
  *v1 = result;
  v1[1].n128_u64[0] = v3;
  return result;
}

__n128 __102__AVCaptureFigVideoDevice__setActiveFormat_resetVideoZoomFactorAndMinMaxFrameDurations_sessionPreset___block_invoke_3(uint64_t a1)
{
  v1 = (*(a1 + 32) + 272);
  v2 = *(*(a1 + 40) + 8);
  v3 = v2[3].n128_u64[0];
  result = v2[2];
  *v1 = result;
  v1[1].n128_u64[0] = v3;
  return result;
}

__n128 __102__AVCaptureFigVideoDevice__setActiveFormat_resetVideoZoomFactorAndMinMaxFrameDurations_sessionPreset___block_invoke_4(uint64_t a1)
{
  result = *(*(*(a1 + 40) + 8) + 32);
  *(*(a1 + 32) + 424) = result;
  return result;
}

__n128 __102__AVCaptureFigVideoDevice__setActiveFormat_resetVideoZoomFactorAndMinMaxFrameDurations_sessionPreset___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32) + 440;
  v2 = *(*(a1 + 40) + 8);
  result = *(v2 + 48);
  *v1 = *(v2 + 32);
  *(v1 + 16) = result;
  return result;
}

__n128 __102__AVCaptureFigVideoDevice__setActiveFormat_resetVideoZoomFactorAndMinMaxFrameDurations_sessionPreset___block_invoke_6(uint64_t a1)
{
  result = *(*(*(a1 + 40) + 8) + 32);
  *(*(a1 + 32) + 408) = result;
  return result;
}

__n128 __102__AVCaptureFigVideoDevice__setActiveFormat_resetVideoZoomFactorAndMinMaxFrameDurations_sessionPreset___block_invoke_7(uint64_t a1)
{
  result = *(*(*(a1 + 40) + 8) + 32);
  *(*(a1 + 32) + 608) = result;
  return result;
}

__n128 __102__AVCaptureFigVideoDevice__setActiveFormat_resetVideoZoomFactorAndMinMaxFrameDurations_sessionPreset___block_invoke_8(uint64_t a1)
{
  v1 = *(a1 + 32) + 624;
  v2 = *(*(a1 + 40) + 8);
  result = *(v2 + 48);
  *v1 = *(v2 + 32);
  *(v1 + 16) = result;
  return result;
}

__n128 __102__AVCaptureFigVideoDevice__setActiveFormat_resetVideoZoomFactorAndMinMaxFrameDurations_sessionPreset___block_invoke_9(uint64_t a1)
{
  result = *(*(*(a1 + 40) + 8) + 32);
  *(*(a1 + 32) + 592) = result;
  return result;
}

__n128 __102__AVCaptureFigVideoDevice__setActiveFormat_resetVideoZoomFactorAndMinMaxFrameDurations_sessionPreset___block_invoke_18(uint64_t a1)
{
  v1 = *(a1 + 32) + 320;
  v2 = MEMORY[0x1E6960C70];
  result = *MEMORY[0x1E6960C70];
  *v1 = *MEMORY[0x1E6960C70];
  *(v1 + 16) = *(v2 + 16);
  return result;
}

void *__102__AVCaptureFigVideoDevice__setActiveFormat_resetVideoZoomFactorAndMinMaxFrameDurations_sessionPreset___block_invoke_19(void *result)
{
  *(result[4] + 1584) = *(*(result[5] + 8) + 24);
  if (*(*(result[6] + 8) + 24) == 1)
  {
    *(result[4] + 1576) = 0;
  }

  return result;
}

__n128 __102__AVCaptureFigVideoDevice__setActiveFormat_resetVideoZoomFactorAndMinMaxFrameDurations_sessionPreset___block_invoke_21(void *a1)
{
  *(a1[4] + 144) = *(*(a1[5] + 8) + 40);
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    v3 = (a1[4] + 160);
    v4 = *(a1[7] + 8);
    v5 = v4[3].n128_u64[0];
    result = v4[2];
    *v3 = result;
    v3[1].n128_u64[0] = v5;
  }

  return result;
}

unint64_t __102__AVCaptureFigVideoDevice__setActiveFormat_resetVideoZoomFactorAndMinMaxFrameDurations_sessionPreset___block_invoke_23(uint64_t a1)
{
  v2 = [objc_msgSend(*(*(a1 + 32) + 136) "supportedDynamicAspectRatios")];

  *(*(a1 + 32) + 1536) = v2;
  v3 = *(a1 + 32);
  Dimensions = CMVideoFormatDescriptionGetDimensions([*(v3 + 136) formatDescription]);
  result = AVCaptureConvertDimensionsForAspectRatio(*&Dimensions, v2, NAN);
  *(v3 + 1544) = result;
  return result;
}

id __102__AVCaptureFigVideoDevice__setActiveFormat_resetVideoZoomFactorAndMinMaxFrameDurations_sessionPreset___block_invoke_25(uint64_t a1)
{
  result = *(*(*(a1 + 40) + 8) + 40);
  *(*(a1 + 32) + 1288) = result;
  return result;
}

- (void)setActiveDepthDataFormat:(id)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  if (![(AVCaptureFigVideoDevice *)self isLockedForConfiguration])
  {
    v7 = MEMORY[0x1E695DF30];
    objc_opt_class();
    v8 = [v7 exceptionWithName:*MEMORY[0x1E695D920] reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v8);
    }

    goto LABEL_10;
  }

  if (([objc_msgSend(-[AVCaptureFigVideoDevice activeFormat](self "activeFormat")] & 1) == 0)
  {
    v9 = MEMORY[0x1E695DF30];
    objc_opt_class();
    v8 = [v9 exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v8);
    }

LABEL_10:
    NSLog(&cfstr_SuppressingExc.isa, v8);
    goto LABEL_11;
  }

  devicePropsQueue = self->_devicePropsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__AVCaptureFigVideoDevice_setActiveDepthDataFormat___block_invoke;
  block[3] = &unk_1E786FDA0;
  block[4] = a3;
  block[5] = self;
  block[6] = &v15;
  dispatch_sync(devicePropsQueue, block);
  if (*(v16 + 24) == 1)
  {
    v12 = *MEMORY[0x1E6960C88];
    v13 = *(MEMORY[0x1E6960C88] + 16);
    v6 = [(NSArray *)[(AVCaptureDeviceFormat *)self->_activeDepthDataFormat videoSupportedFrameRateRanges] lastObject];
    if (v6)
    {
      [v6 minFrameDuration];
      v12 = v10;
      v13 = v11;
    }

    v10 = v12;
    v11 = v13;
    [(AVCaptureFigVideoDevice *)self setActiveDepthDataMinFrameDuration:&v10];
  }

LABEL_11:
  _Block_object_dispose(&v15, 8);
}

void __52__AVCaptureFigVideoDevice_setActiveDepthDataFormat___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isEqual:*(*(a1 + 40) + 144)] & 1) == 0)
  {
    v2 = *(a1 + 32);

    *(*(a1 + 40) + 144) = *(a1 + 32);
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (BOOL)isContinuousZoomWithDepthSupported
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__AVCaptureFigVideoDevice_isContinuousZoomWithDepthSupported__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isContinuousZoomWithDepthEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__AVCaptureFigVideoDevice_isContinuousZoomWithDepthEnabled__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setContinuousZoomWithDepthEnabled:(BOOL)a3
{
  if (a3 && ![(AVCaptureFigVideoDevice *)self isContinuousZoomWithDepthSupported])
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
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    devicePropsQueue = self->_devicePropsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__AVCaptureFigVideoDevice_setContinuousZoomWithDepthEnabled___block_invoke;
    block[3] = &unk_1E78700E0;
    block[4] = self;
    block[5] = &v9;
    v8 = a3;
    block[6] = &v13;
    dispatch_sync(devicePropsQueue, block);
    if (*(v14 + 24) == 1)
    {
      [(AVCaptureFigVideoDevice *)self _updateActiveDepthDataFormatForContinuousZoomWithDepth];
    }

    if (*(v10 + 24) == 1)
    {
      [(AVCaptureFigVideoDevice *)self _updateMinMaxDefaultVideoZoomFactors];
    }

    _Block_object_dispose(&v9, 8);
    _Block_object_dispose(&v13, 8);
  }
}

uint64_t __61__AVCaptureFigVideoDevice_setContinuousZoomWithDepthEnabled___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _updateContinuousZoomWithDepthActiveWithEnabled:*(a1 + 56) disallowed:*(*(a1 + 32) + 187) isActiveDepthDataFormatChangingOut:*(*(a1 + 48) + 8) + 24];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_setContinuousZoomWithDepthDisallowed:(BOOL)a3
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__AVCaptureFigVideoDevice__setContinuousZoomWithDepthDisallowed___block_invoke;
  v5[3] = &unk_1E78700E0;
  v5[4] = self;
  v5[5] = &v7;
  v6 = a3;
  v5[6] = &v11;
  dispatch_sync(devicePropsQueue, v5);
  if (*(v12 + 24) == 1)
  {
    [(AVCaptureFigVideoDevice *)self _updateActiveDepthDataFormatForContinuousZoomWithDepth];
  }

  if (*(v8 + 24) == 1)
  {
    [(AVCaptureFigVideoDevice *)self _updateMinMaxDefaultVideoZoomFactors];
  }

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
}

uint64_t __65__AVCaptureFigVideoDevice__setContinuousZoomWithDepthDisallowed___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _updateContinuousZoomWithDepthActiveWithEnabled:*(*(a1 + 32) + 185) disallowed:*(a1 + 56) isActiveDepthDataFormatChangingOut:*(*(a1 + 48) + 8) + 24];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_updateContinuousZoomWithDepthActiveWithEnabled:(BOOL)a3 disallowed:(BOOL)a4 isActiveDepthDataFormatChangingOut:(BOOL *)a5
{
  v6 = a4;
  v7 = a3;
  if (!_FigIsCurrentDispatchQueue())
  {
    [AVCaptureFigVideoDevice _updateContinuousZoomWithDepthActiveWithEnabled:disallowed:isActiveDepthDataFormatChangingOut:];
  }

  return [(AVCaptureFigVideoDevice *)self _setContinuousZoomWithDepthActiveWithEnabled:v7 disallowed:v6 isActiveDepthDataFormatChangingOut:a5];
}

- (BOOL)_setContinuousZoomWithDepthActiveWithEnabled:(BOOL)a3 disallowed:(BOOL)a4 isActiveDepthDataFormatChangingOut:(BOOL *)a5
{
  self->_continuousZoomWithDepthEnabled = a3;
  self->_continuousZoomWithDepthDisallowed = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  formats = self->_formats;
  v8 = [(NSArray *)formats countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(formats);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if ([v12 isContinuousZoomWithDepthSupported])
        {
          v13 = self->_continuousZoomWithDepthEnabled && !self->_continuousZoomWithDepthDisallowed;
          [v12 setContinuousZoomWithDepthEnabled:v13];
        }
      }

      v9 = [(NSArray *)formats countByEnumeratingWithState:&v19 objects:v18 count:16];
    }

    while (v9);
  }

  v14 = [(AVCaptureDeviceFormat *)self->_activeFormat isContinuousZoomWithDepthEnabled];
  continuousZoomWithDepthActive = self->_continuousZoomWithDepthActive;
  self->_continuousZoomWithDepthActive = v14;
  v16 = [(NSArray *)[(AVCaptureDeviceFormat *)self->_activeFormat supportedDepthDataFormats] containsObject:self->_activeDepthDataFormat];
  if (a5)
  {
    *a5 = !v16;
  }

  return continuousZoomWithDepthActive != v14;
}

- (void)_updateActiveDepthDataFormatForContinuousZoomWithDepth
{
  if (!_FigIsNotCurrentDispatchQueue())
  {
    [AVCaptureFigVideoDevice _updateActiveDepthDataFormatForContinuousZoomWithDepth];
  }

  [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"activeDepthDataFormat"];
  devicePropsQueue = self->_devicePropsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__AVCaptureFigVideoDevice__updateActiveDepthDataFormatForContinuousZoomWithDepth__block_invoke;
  block[3] = &unk_1E786EC08;
  block[4] = self;
  dispatch_sync(devicePropsQueue, block);
  [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"activeDepthDataFormat"];
}

__n128 __81__AVCaptureFigVideoDevice__updateActiveDepthDataFormatForContinuousZoomWithDepth__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 136) isContinuousZoomWithDepthEnabled])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v2 = [*(*(a1 + 32) + 136) supportedDepthDataFormats];
    v3 = [v2 countByEnumeratingWithState:&v17 objects:v16 count:16];
    if (v3)
    {
      v5 = v3;
      v6 = *v18;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v8 = *(*(&v17 + 1) + 8 * i);
          if ([v8 isDefaultActiveFormat])
          {

            *(*(a1 + 32) + 144) = v8;
            v11 = *(a1 + 32);
            v12 = (v11 + 160);
            v13 = [objc_msgSend(*(v11 + 144) "videoSupportedFrameRateRanges")];
            if (v13)
            {
              [v13 minFrameDuration];
            }

            else
            {
              v14 = 0uLL;
              v15 = 0;
            }

            result = v14;
            v12[1].n128_u64[0] = v15;
            *v12 = v14;
            return result;
          }
        }

        v5 = [v2 countByEnumeratingWithState:&v17 objects:v16 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {

    *(*(a1 + 32) + 144) = 0;
    v9 = *(a1 + 32) + 160;
    v10 = MEMORY[0x1E6960CC0];
    result = *MEMORY[0x1E6960CC0];
    *v9 = *MEMORY[0x1E6960CC0];
    *(v9 + 16) = *(v10 + 16);
  }

  return result;
}

- (void)setActiveDepthDataMinFrameDuration:(id *)a3
{
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3810000000;
  v30 = &unk_1A92DB249;
  v31 = *a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3052000000;
  v24 = __Block_byref_object_copy__7;
  v25 = __Block_byref_object_dispose__7;
  v26 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__AVCaptureFigVideoDevice_setActiveDepthDataMinFrameDuration___block_invoke;
  block[3] = &unk_1E7870040;
  block[4] = self;
  block[5] = &v21;
  dispatch_sync(devicePropsQueue, block);
  v6 = v22[5];
  if ((a3->var2 & 1) == 0)
  {
    if (v6)
    {
      v7 = &v19;
      [v6 minFrameDuration];
    }

    else
    {
      v7 = MEMORY[0x1E6960C88];
    }

    v10 = v28;
    *(v28 + 2) = *v7;
    v10[6] = *(v7 + 2);
LABEL_10:
    v11 = self->_devicePropsQueue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __62__AVCaptureFigVideoDevice_setActiveDepthDataMinFrameDuration___block_invoke_2;
    v16[3] = &unk_1E7870108;
    v16[5] = &v27;
    v16[6] = &v32;
    v16[4] = self;
    dispatch_sync(v11, v16);
    if (*(v33 + 6) == -16452)
    {
      v12 = MEMORY[0x1E695DF30];
      objc_opt_class();
      v13 = [v12 exceptionWithName:*MEMORY[0x1E695D920] reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
      if (AVCaptureShouldThrowForAPIViolations())
      {
        objc_exception_throw(v13);
      }

      NSLog(&cfstr_SuppressingExc.isa, v13);
    }

    goto LABEL_15;
  }

  if (v6)
  {
    [v6 minFrameDuration];
    time1 = *a3;
    if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    v8 = MEMORY[0x1E695DF30];
    objc_opt_class();
    v9 = [v8 exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v9);
    }

    NSLog(&cfstr_SuppressingExc.isa, v9);
  }

  else
  {
    v14 = MEMORY[0x1E695DF30];
    objc_opt_class();
    v15 = [v14 exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v15);
    }

    NSLog(&cfstr_SuppressingExc.isa, v15);
  }

LABEL_15:
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v32, 8);
}

uint64_t __62__AVCaptureFigVideoDevice_setActiveDepthDataMinFrameDuration___block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(*(a1 + 32) + 144) "videoSupportedFrameRateRanges")];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

__n128 __62__AVCaptureFigVideoDevice_setActiveDepthDataMinFrameDuration___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  v3 = 0.0;
  if ((*(v2 + 44) & 0x1D) == 1)
  {
    v3 = *(v2 + 40) / *(v2 + 32);
  }

  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _setFigCaptureSourceProperty:*MEMORY[0x1E69905A8] withValue:objc_msgSend(MEMORY[0x1E696AD98] cacheOnly:{"numberWithDouble:", v3), *(*(a1 + 32) + 392)}];
  if (!*(*(*(a1 + 48) + 8) + 24))
  {
    v5 = (*(a1 + 32) + 160);
    v6 = *(*(a1 + 40) + 8);
    v7 = v6[3].n128_u64[0];
    result = v6[2];
    *v5 = result;
    v5[1].n128_u64[0] = v7;
  }

  return result;
}

- (void)setActiveVideoMinFrameDuration:(id *)a3 activeVideoMaxFrameDuration:(id *)a4
{
  v6 = *MEMORY[0x1E695E480];
  time = *a3;
  v7 = CMTimeCopyAsDictionary(&time, v6);
  time = *a4;
  v8 = CMTimeCopyAsDictionary(&time, v6);
  v9 = *MEMORY[0x1E69903F8];
  v14[0] = *MEMORY[0x1E6990400];
  v14[1] = v9;
  v15[0] = v7;
  v15[1] = v8;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];

  if ([(AVCaptureFigVideoDevice *)self _setFigCaptureSourceProperty:*MEMORY[0x1E6990710] withValue:v10 cacheOnly:self->_cachesFigCaptureSourceConfigurationChanges]== -16452)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D920];
    objc_opt_class();
    v13 = [v11 exceptionWithName:v12 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v13);
    }

    NSLog(&cfstr_SuppressingExc.isa, v13);
  }
}

- (BOOL)isVideoFrameDurationLocked
{
  if (self->_activeLockedVideoFrameDurationOwner)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      activeLockedVideoFrameDurationOwner = self->_activeLockedVideoFrameDurationOwner;
      if (activeLockedVideoFrameDurationOwner)
      {
        [activeLockedVideoFrameDurationOwner activeLockedVideoFrameDuration];
      }
    }
  }

  [(AVCaptureFigVideoDevice *)self activeLockedVideoFrameDuration];
  [(AVCaptureFigVideoDevice *)self activeLockedVideoFrameDuration];
  return v5 & 1;
}

- (void)setActiveLockedVideoFrameDuration:(id *)a3 forOwner:(id)a4
{
  [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"videoFrameDurationLocked"];
  devicePropsQueue = self->_devicePropsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__AVCaptureFigVideoDevice_setActiveLockedVideoFrameDuration_forOwner___block_invoke;
  block[3] = &unk_1E7870130;
  v18 = *a3;
  block[4] = self;
  block[5] = a4;
  dispatch_sync(devicePropsQueue, block);
  if (a3->var2)
  {
    v14 = *&a3->var0;
    var3 = a3->var3;
    [(AVCaptureFigVideoDevice *)self _setActiveVideoMinFrameDurationInternal:&v14];
    v14 = *&a3->var0;
    var3 = a3->var3;
    [(AVCaptureFigVideoDevice *)self _setActiveVideoMaxFrameDurationInternal:&v14];
    *&v14 = 0;
    *(&v14 + 1) = &v14;
    var3 = 0x2020000000;
    v16 = 0;
    v8 = self->_devicePropsQueue;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __70__AVCaptureFigVideoDevice_setActiveLockedVideoFrameDuration_forOwner___block_invoke_2;
    v13[3] = &unk_1E7870040;
    v13[4] = self;
    v13[5] = &v14;
    dispatch_sync(v8, v13);
    if (*(*(&v14 + 1) + 24) == 1)
    {
      [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"variableFrameRateVideoCaptureEnabled"];
    }

    v9 = self->_devicePropsQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __70__AVCaptureFigVideoDevice_setActiveLockedVideoFrameDuration_forOwner___block_invoke_3;
    v10[3] = &unk_1E7870158;
    v11 = *&a3->var0;
    v12 = a3->var3;
    v10[4] = self;
    v10[5] = &v14;
    dispatch_sync(v9, v10);
    if (*(*(&v14 + 1) + 24) == 1)
    {
      [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"variableFrameRateVideoCaptureEnabled"];
    }

    _Block_object_dispose(&v14, 8);
  }

  [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"videoFrameDurationLocked"];
}

__n128 __70__AVCaptureFigVideoDevice_setActiveLockedVideoFrameDuration_forOwner___block_invoke(__n128 *a1)
{
  v1 = (a1[2].n128_u64[0] + 320);
  v2 = a1[4].n128_u64[0];
  result = a1[3];
  *v1 = result;
  v1[1].n128_u64[0] = v2;
  *(a1[2].n128_u64[0] + 344) = a1[2].n128_u64[1];
  return result;
}

uint64_t __70__AVCaptureFigVideoDevice_setActiveLockedVideoFrameDuration_forOwner___block_invoke_3(uint64_t result)
{
  v1 = *(result + 32) + 248;
  v2 = *(result + 64);
  *v1 = *(result + 48);
  *(v1 + 16) = v2;
  v3 = *(result + 32) + 296;
  v4 = *(result + 64);
  *v3 = *(result + 48);
  *(v3 + 16) = v4;
  if (*(*(*(result + 40) + 8) + 24) == 1)
  {
    *(*(result + 32) + 1330) = 0;
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)activeLockedVideoFrameDuration
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3810000000;
  v10 = &unk_1A92DB249;
  v11 = *MEMORY[0x1E6960C70];
  v12 = *(MEMORY[0x1E6960C70] + 16);
  devicePropsQueue = self->_devicePropsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__AVCaptureFigVideoDevice_activeLockedVideoFrameDuration__block_invoke;
  block[3] = &unk_1E7870040;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(devicePropsQueue, block);
  *retstr = *(v8 + 4);
  _Block_object_dispose(&v7, 8);
  return result;
}

__n128 __57__AVCaptureFigVideoDevice_activeLockedVideoFrameDuration__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  v2 = (*(a1 + 32) + 320);
  v3 = *(*(a1 + 32) + 336);
  result = *v2;
  v1[2] = *v2;
  v1[3].n128_u64[0] = v3;
  return result;
}

- (void)resetActiveLockedVideoFrameDurationForOwner:(id)a3
{
  [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"videoFrameDurationLocked"];
  devicePropsQueue = self->_devicePropsQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__AVCaptureFigVideoDevice_resetActiveLockedVideoFrameDurationForOwner___block_invoke;
  v6[3] = &unk_1E786EAA8;
  v6[4] = self;
  v6[5] = a3;
  dispatch_sync(devicePropsQueue, v6);
  [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"videoFrameDurationLocked"];
  [(AVCaptureFigVideoDevice *)self resetDeviceClockAndInputPortsToHostClock];
}

__n128 __71__AVCaptureFigVideoDevice_resetActiveLockedVideoFrameDurationForOwner___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 344) == *(a1 + 40))
  {
    v2 = v1 + 320;
    v3 = MEMORY[0x1E6960C70];
    result = *MEMORY[0x1E6960C70];
    *v2 = *MEMORY[0x1E6960C70];
    *(v2 + 16) = *(v3 + 16);
    *(*(a1 + 32) + 344) = 0;
  }

  return result;
}

- (void)resetDeviceClockAndInputPortsToHostClock
{
  HostTimeClock = CMClockGetHostTimeClock();
  if (self->_activeLockedVideoFrameDuration.flags)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      activeLockedVideoFrameDurationOwner = self->_activeLockedVideoFrameDurationOwner;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v5 = [activeLockedVideoFrameDurationOwner ports];
      v6 = [v5 countByEnumeratingWithState:&v22 objects:v21 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v23;
        do
        {
          v9 = 0;
          do
          {
            if (*v23 != v8)
            {
              objc_enumerationMutation(v5);
            }

            [*(*(&v22 + 1) + 8 * v9++) _setClock:HostTimeClock];
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v22 objects:v21 count:16];
        }

        while (v7);
      }

      [objc_msgSend(activeLockedVideoFrameDurationOwner "session")];
    }
  }

  if (self->_activeExternalSyncVideoFrameDuration.flags)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      activeExternalSyncVideoFrameDurationOwner = self->_activeExternalSyncVideoFrameDurationOwner;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v11 = [activeExternalSyncVideoFrameDurationOwner ports];
      v12 = [v11 countByEnumeratingWithState:&v17 objects:v16 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v18;
        do
        {
          v15 = 0;
          do
          {
            if (*v18 != v14)
            {
              objc_enumerationMutation(v11);
            }

            [*(*(&v17 + 1) + 8 * v15++) _setClock:HostTimeClock];
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v17 objects:v16 count:16];
        }

        while (v13);
      }

      [objc_msgSend(activeExternalSyncVideoFrameDurationOwner "session")];
    }
  }

  [(AVCaptureFigVideoDevice *)self _setFigCaptureSourceProperty:*MEMORY[0x1E6990668] withValue:HostTimeClock];
}

- (void)setActiveSyncDevice:(id)a3
{
  devicePropsQueue = self->_devicePropsQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__AVCaptureFigVideoDevice_setActiveSyncDevice___block_invoke;
  v4[3] = &unk_1E786EAA8;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(devicePropsQueue, v4);
}

void __47__AVCaptureFigVideoDevice_setActiveSyncDevice___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 376);
  if (v2 != v1)
  {
    if (v2)
    {

      *(*(a1 + 32) + 376) = 0;
      v1 = *(a1 + 40);
    }

    if (v1)
    {
      *(*(a1 + 32) + 376) = v1;
    }
  }
}

- (void)setActiveExternalSyncVideoFrameDuration:(id *)a3 withExternalSyncDevice:(id)a4 forOwner:(id)a5
{
  [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"followingExternalSyncDevice"];
  devicePropsQueue = self->_devicePropsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__AVCaptureFigVideoDevice_setActiveExternalSyncVideoFrameDuration_withExternalSyncDevice_forOwner___block_invoke;
  block[3] = &unk_1E7870130;
  v30 = *a3;
  block[4] = self;
  block[5] = a5;
  dispatch_sync(devicePropsQueue, block);
  if (a3->var2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v10 = [a5 ports];
      v11 = [v10 countByEnumeratingWithState:&v25 objects:v24 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v26;
        do
        {
          v14 = 0;
          do
          {
            if (*v26 != v13)
            {
              objc_enumerationMutation(v10);
            }

            [*(*(&v25 + 1) + 8 * v14++) _setClock:{objc_msgSend(a4, "clock")}];
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v25 objects:v24 count:16];
        }

        while (v12);
      }
    }

    v21 = *&a3->var0;
    var3 = a3->var3;
    [(AVCaptureFigVideoDevice *)self _setActiveVideoMinFrameDurationInternal:&v21];
    v21 = *&a3->var0;
    var3 = a3->var3;
    [(AVCaptureFigVideoDevice *)self _setActiveVideoMaxFrameDurationInternal:&v21];
    *&v21 = 0;
    *(&v21 + 1) = &v21;
    var3 = 0x2020000000;
    v23 = 0;
    v15 = self->_devicePropsQueue;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __99__AVCaptureFigVideoDevice_setActiveExternalSyncVideoFrameDuration_withExternalSyncDevice_forOwner___block_invoke_2;
    v20[3] = &unk_1E7870040;
    v20[4] = self;
    v20[5] = &v21;
    dispatch_sync(v15, v20);
    if (*(*(&v21 + 1) + 24) == 1)
    {
      [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"variableFrameRateVideoCaptureEnabled"];
    }

    v16 = self->_devicePropsQueue;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __99__AVCaptureFigVideoDevice_setActiveExternalSyncVideoFrameDuration_withExternalSyncDevice_forOwner___block_invoke_3;
    v17[3] = &unk_1E7870158;
    v18 = *&a3->var0;
    v19 = a3->var3;
    v17[4] = self;
    v17[5] = &v21;
    dispatch_sync(v16, v17);
    if (*(*(&v21 + 1) + 24) == 1)
    {
      [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"variableFrameRateVideoCaptureEnabled"];
    }

    _Block_object_dispose(&v21, 8);
  }

  [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"followingExternalSyncDevice"];
}

__n128 __99__AVCaptureFigVideoDevice_setActiveExternalSyncVideoFrameDuration_withExternalSyncDevice_forOwner___block_invoke(__n128 *a1)
{
  v1 = (a1[2].n128_u64[0] + 352);
  v2 = a1[4].n128_u64[0];
  result = a1[3];
  *v1 = result;
  v1[1].n128_u64[0] = v2;
  *(a1[2].n128_u64[0] + 384) = a1[2].n128_u64[1];
  return result;
}

uint64_t __99__AVCaptureFigVideoDevice_setActiveExternalSyncVideoFrameDuration_withExternalSyncDevice_forOwner___block_invoke_3(uint64_t result)
{
  v1 = *(result + 32) + 248;
  v2 = *(result + 64);
  *v1 = *(result + 48);
  *(v1 + 16) = v2;
  v3 = *(result + 32) + 296;
  v4 = *(result + 64);
  *v3 = *(result + 48);
  *(v3 + 16) = v4;
  if (*(*(*(result + 40) + 8) + 24) == 1)
  {
    *(*(result + 32) + 1330) = 0;
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)activeExternalSyncVideoFrameDuration
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3810000000;
  v10 = &unk_1A92DB249;
  v11 = *MEMORY[0x1E6960C70];
  v12 = *(MEMORY[0x1E6960C70] + 16);
  devicePropsQueue = self->_devicePropsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__AVCaptureFigVideoDevice_activeExternalSyncVideoFrameDuration__block_invoke;
  block[3] = &unk_1E7870040;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(devicePropsQueue, block);
  *retstr = *(v8 + 4);
  _Block_object_dispose(&v7, 8);
  return result;
}

__n128 __63__AVCaptureFigVideoDevice_activeExternalSyncVideoFrameDuration__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  v2 = (*(a1 + 32) + 352);
  v3 = *(*(a1 + 32) + 368);
  result = *v2;
  v1[2] = *v2;
  v1[3].n128_u64[0] = v3;
  return result;
}

- (BOOL)isFollowingExternalSyncDevice
{
  if (self->_activeExternalSyncVideoFrameDurationOwner)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      activeExternalSyncVideoFrameDurationOwner = self->_activeExternalSyncVideoFrameDurationOwner;
      if (activeExternalSyncVideoFrameDurationOwner)
      {
        [activeExternalSyncVideoFrameDurationOwner activeExternalSyncVideoFrameDuration];
      }
    }
  }

  [(AVCaptureFigVideoDevice *)self activeExternalSyncVideoFrameDuration];
  [(AVCaptureFigVideoDevice *)self activeExternalSyncVideoFrameDuration];
  return v5 & 1;
}

- (void)setVideoMinFrameDurationOverride:(id *)a3 forOwner:(id)a4
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3810000000;
  v15 = &unk_1A92DB249;
  v16 = *MEMORY[0x1E6960C70];
  v17 = *(MEMORY[0x1E6960C70] + 16);
  devicePropsQueue = self->_devicePropsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__AVCaptureFigVideoDevice_setVideoMinFrameDurationOverride_forOwner___block_invoke;
  block[3] = &unk_1E7870180;
  v6 = *&a3->var0;
  var3 = a3->var3;
  v10 = v6;
  block[4] = self;
  block[5] = a4;
  block[6] = &v12;
  dispatch_sync(devicePropsQueue, block);
  if (*(v13 + 44))
  {
    v7 = *(v13 + 2);
    v8 = v13[6];
    [(AVCaptureFigVideoDevice *)self _setActiveVideoMinFrameDurationInternal:&v7];
  }

  _Block_object_dispose(&v12, 8);
}

__n128 __69__AVCaptureFigVideoDevice_setVideoMinFrameDurationOverride_forOwner___block_invoke(uint64_t a1)
{
  v1 = (*(a1 + 32) + 192);
  v2 = *(a1 + 72);
  result = *(a1 + 56);
  *v1 = result;
  v1[1].n128_u64[0] = v2;
  *(*(a1 + 32) + 216) = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = (v4 + 192);
  if (*(v4 + 204))
  {
    v7 = (v4 + 224);
    v8 = *v7;
    time1.epoch = *(v7 + 2);
    *&time1.value = v8;
    v9 = *v5;
    v11.epoch = *(v5 + 2);
    *&v11.value = v9;
    if (CMTimeCompare(&time1, &v11) < 0)
    {
      v10 = *(*(a1 + 48) + 8);
      result = *(*(a1 + 32) + 192);
      v10[3].n128_u64[0] = *(*(a1 + 32) + 208);
      v10[2] = result;
    }
  }

  return result;
}

- (void)resetVideoMinFrameDurationOverrideForOwner:(id)a3
{
  devicePropsQueue = self->_devicePropsQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70__AVCaptureFigVideoDevice_resetVideoMinFrameDurationOverrideForOwner___block_invoke;
  v4[3] = &unk_1E786EAA8;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(devicePropsQueue, v4);
}

__n128 __70__AVCaptureFigVideoDevice_resetVideoMinFrameDurationOverrideForOwner___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 216) == *(a1 + 40))
  {
    v2 = v1 + 192;
    v3 = MEMORY[0x1E6960C70];
    result = *MEMORY[0x1E6960C70];
    *v2 = *MEMORY[0x1E6960C70];
    *(v2 + 16) = *(v3 + 16);
  }

  return result;
}

- (int)_setActiveVideoMinFrameDurationInternal:(id *)a3
{
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3810000000;
  v31 = &unk_1A92DB249;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3810000000;
  v22 = &unk_1A92DB249;
  v23 = *a3;
  if (dword_1ED8069C0)
  {
    v18 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  devicePropsQueue = self->_devicePropsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__AVCaptureFigVideoDevice__setActiveVideoMinFrameDurationInternal___block_invoke;
  block[3] = &unk_1E78700B8;
  block[4] = self;
  block[5] = &v19;
  block[6] = &v43;
  block[7] = &v39;
  dispatch_sync(devicePropsQueue, block);
  if (*(v44 + 24) == 1)
  {
    [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"activeVideoMinFrameDuration"];
    v6 = self->_devicePropsQueue;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __67__AVCaptureFigVideoDevice__setActiveVideoMinFrameDurationInternal___block_invoke_345;
    v13[3] = &unk_1E78701A8;
    v13[4] = self;
    v13[5] = &v19;
    v13[6] = &v47;
    v13[7] = &v35;
    v13[8] = &v28;
    v13[9] = &v24;
    dispatch_sync(v6, v13);
    if (!*(v48 + 6))
    {
      if (*(v40 + 24) == 1)
      {
        v15 = *(v20 + 2);
        v16 = v20[6];
        v7 = [(AVCaptureFigVideoDevice *)self _setActiveVideoMaxFrameDurationInternal:&v15];
        *(v48 + 6) = v7;
      }

      if (*(v36 + 24) == 1 && [(AVCaptureFigVideoDevice *)self lockForConfiguration:0])
      {
        LODWORD(v8) = *(v25 + 6);
        v15 = *(v29 + 2);
        v16 = v29[6];
        [(AVCaptureFigVideoDevice *)self setExposureModeCustomWithDuration:&v15 ISO:0 completionHandler:v8];
        [(AVCaptureFigVideoDevice *)self unlockForConfiguration];
      }
    }

    [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"activeVideoMinFrameDuration", v11, v12];
    v9 = *(v48 + 6);
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v47, 8);
  return v9;
}

uint64_t __67__AVCaptureFigVideoDevice__setActiveVideoMinFrameDurationInternal___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 1372) != 1 || (*(v2 + 1373) & 1) == 0) && *(v2 + 1459) != 1)
  {
    goto LABEL_33;
  }

  v3 = [*(v2 + 136) videoFrameRateRangeForCenterStage];
  v4 = v3;
  v5 = *(*(a1 + 40) + 8);
  if (v3)
  {
    [v3 minFrameDuration];
  }

  else
  {
    memset(&time2, 0, sizeof(time2));
  }

  time1 = *(v5 + 32);
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    if (v4)
    {
      v7 = v154;
      [v4 minFrameDuration];
    }

    else
    {
      memset(v154, 0, 24);
      v7 = v154;
    }

    goto LABEL_18;
  }

  v6 = *(*(a1 + 40) + 8);
  if (v4)
  {
    [v4 maxFrameDuration];
  }

  else
  {
    memset(&time2, 0, sizeof(time2));
  }

  time1 = *(v6 + 32);
  if (CMTimeCompare(&time1, &time2) >= 1)
  {
    if (v4)
    {
      v7 = v153;
      [v4 maxFrameDuration];
    }

    else
    {
      memset(v153, 0, sizeof(v153));
      v7 = v153;
    }

LABEL_18:
    v8 = *(*(a1 + 40) + 8);
    *(v8 + 32) = *v7;
    *(v8 + 48) = v7[2];
  }

  if (dword_1ED8069C0)
  {
    v152 = 0;
    v151 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v10 = v152;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v151))
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 & 0xFFFFFFFE;
    }

    if (v11)
    {
      v12 = [*(a1 + 32) localizedName];
      if (*(*(a1 + 32) + 1459))
      {
        v13 = @"Manual Framing";
      }

      else
      {
        v13 = @"Center Stage";
      }

      if (v4)
      {
        [v4 maxFrameDuration];
        v14 = v139;
        [v4 maxFrameDuration];
        v15 = v137;
        [v4 minFrameDuration];
        v16 = v133;
        [v4 minFrameDuration];
        v17 = v131;
      }

      else
      {
        v17 = 0;
        v16 = 0;
        v14 = 0;
        v15 = 0;
        v140 = 0;
        v139 = 0;
        v141 = 0;
        v138 = 0;
        v136 = 0;
        v137 = 0;
        v135 = 0;
        v133 = 0;
        v134 = 0;
        v132 = 0;
        v130 = 0;
        v131 = 0;
      }

      LODWORD(time1.value) = 136316674;
      *(&time1.value + 4) = "[AVCaptureFigVideoDevice _setActiveVideoMinFrameDurationInternal:]_block_invoke";
      LOWORD(time1.flags) = 2114;
      *(&time1.flags + 2) = v12;
      HIWORD(time1.epoch) = 2112;
      v143 = v13;
      v144 = 2048;
      *v145 = v14;
      *&v145[8] = 1024;
      *&v145[10] = v15;
      v146 = 2048;
      v147 = v16;
      v148 = 1024;
      v149 = v17;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_33:
  v18 = *(a1 + 32);
  if (*(v18 + 1410) == 1 && *(v18 + 1411) == 1)
  {
    v19 = [*(v18 + 136) videoFrameRateRangeForBackgroundBlur];
    v20 = v19;
    v21 = *(*(a1 + 40) + 8);
    if (v19)
    {
      [v19 minFrameDuration];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    time1 = *(v21 + 32);
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      if (v20)
      {
        [v20 minFrameDuration];
      }

      else
      {
        v128 = 0uLL;
        v129 = 0;
      }

      v22 = *(*(a1 + 40) + 8);
      *(v22 + 32) = v128;
      *(v22 + 48) = v129;
    }

    if (dword_1ED8069C0)
    {
      v152 = 0;
      v151 = OS_LOG_TYPE_DEFAULT;
      v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v24 = v152;
      if (os_log_type_enabled(v23, v151))
      {
        v25 = v24;
      }

      else
      {
        v25 = v24 & 0xFFFFFFFE;
      }

      if (v25)
      {
        v26 = [*(a1 + 32) localizedName];
        if (v20)
        {
          [v20 maxFrameDuration];
          v27 = v125;
          [v20 maxFrameDuration];
          v28 = v123;
          [v20 minFrameDuration];
          v29 = v119;
          [v20 minFrameDuration];
          v30 = v117;
        }

        else
        {
          v30 = 0;
          v29 = 0;
          v27 = 0;
          v28 = 0;
          v125 = 0;
          v126 = 0;
          v127 = 0;
          v123 = 0;
          v124 = 0;
          v121 = 0;
          v122 = 0;
          v119 = 0;
          v120 = 0;
          v117 = 0;
          v118 = 0;
          v116 = 0;
        }

        LODWORD(time1.value) = 136316418;
        *(&time1.value + 4) = "[AVCaptureFigVideoDevice _setActiveVideoMinFrameDurationInternal:]_block_invoke";
        LOWORD(time1.flags) = 2114;
        *(&time1.flags + 2) = v26;
        HIWORD(time1.epoch) = 2048;
        v143 = v27;
        v144 = 1024;
        *v145 = v28;
        *&v145[4] = 2048;
        *&v145[6] = v29;
        v146 = 1024;
        LODWORD(v147) = v30;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v31 = *(a1 + 32);
  if (*(v31 + 1413) == 1 && *(v31 + 1414) == 1)
  {
    v32 = [*(v31 + 136) videoFrameRateRangeForStudioLight];
    v33 = v32;
    v34 = *(*(a1 + 40) + 8);
    if (v32)
    {
      [v32 minFrameDuration];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    time1 = *(v34 + 32);
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      if (v33)
      {
        [v33 minFrameDuration];
      }

      else
      {
        v114 = 0uLL;
        v115 = 0;
      }

      v35 = *(*(a1 + 40) + 8);
      *(v35 + 32) = v114;
      *(v35 + 48) = v115;
    }

    if (dword_1ED8069C0)
    {
      v152 = 0;
      v151 = OS_LOG_TYPE_DEFAULT;
      v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v37 = v152;
      if (os_log_type_enabled(v36, v151))
      {
        v38 = v37;
      }

      else
      {
        v38 = v37 & 0xFFFFFFFE;
      }

      if (v38)
      {
        v39 = [*(a1 + 32) localizedName];
        if (v33)
        {
          [v33 maxFrameDuration];
          v40 = v111;
          [v33 maxFrameDuration];
          v41 = v109;
          [v33 minFrameDuration];
          v42 = v105;
          [v33 minFrameDuration];
          v43 = v103;
        }

        else
        {
          v43 = 0;
          v42 = 0;
          v40 = 0;
          v41 = 0;
          v111 = 0;
          v112 = 0;
          v113 = 0;
          v109 = 0;
          v110 = 0;
          v107 = 0;
          v108 = 0;
          v105 = 0;
          v106 = 0;
          v103 = 0;
          v104 = 0;
          v102 = 0;
        }

        LODWORD(time1.value) = 136316418;
        *(&time1.value + 4) = "[AVCaptureFigVideoDevice _setActiveVideoMinFrameDurationInternal:]_block_invoke";
        LOWORD(time1.flags) = 2114;
        *(&time1.flags + 2) = v39;
        HIWORD(time1.epoch) = 2048;
        v143 = v40;
        v144 = 1024;
        *v145 = v41;
        *&v145[4] = 2048;
        *&v145[6] = v42;
        v146 = 1024;
        LODWORD(v147) = v43;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v44 = *(a1 + 32);
  if (*(v44 + 1419) == 1 && *(v44 + 1420) == 1)
  {
    v45 = [*(v44 + 136) videoFrameRateRangeForBackgroundReplacement];
    v46 = v45;
    v47 = *(*(a1 + 40) + 8);
    if (v45)
    {
      [v45 minFrameDuration];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    time1 = *(v47 + 32);
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      if (v46)
      {
        [v46 minFrameDuration];
      }

      else
      {
        v100 = 0uLL;
        v101 = 0;
      }

      v48 = *(*(a1 + 40) + 8);
      *(v48 + 32) = v100;
      *(v48 + 48) = v101;
    }

    if (dword_1ED8069C0)
    {
      v152 = 0;
      v151 = OS_LOG_TYPE_DEFAULT;
      v49 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v50 = v152;
      if (os_log_type_enabled(v49, v151))
      {
        v51 = v50;
      }

      else
      {
        v51 = v50 & 0xFFFFFFFE;
      }

      if (v51)
      {
        v52 = [*(a1 + 32) localizedName];
        if (v46)
        {
          [v46 maxFrameDuration];
          v53 = v97;
          [v46 maxFrameDuration];
          v54 = v95;
          [v46 minFrameDuration];
          v55 = v91;
          [v46 minFrameDuration];
          v56 = v89;
        }

        else
        {
          v56 = 0;
          v55 = 0;
          v53 = 0;
          v54 = 0;
          v97 = 0;
          v98 = 0;
          v99 = 0;
          v95 = 0;
          v96 = 0;
          v93 = 0;
          v94 = 0;
          v91 = 0;
          v92 = 0;
          v89 = 0;
          v90 = 0;
          v88[3] = 0;
        }

        LODWORD(time1.value) = 136316418;
        *(&time1.value + 4) = "[AVCaptureFigVideoDevice _setActiveVideoMinFrameDurationInternal:]_block_invoke";
        LOWORD(time1.flags) = 2114;
        *(&time1.flags + 2) = v52;
        HIWORD(time1.epoch) = 2048;
        v143 = v53;
        v144 = 1024;
        *v145 = v54;
        *&v145[4] = 2048;
        *&v145[6] = v55;
        v146 = 1024;
        LODWORD(v147) = v56;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v57 = *(a1 + 32);
  if (*(v57 + 189) == 1)
  {
    v58 = [*(v57 + 136) videoFrameRateRangeForCinematicVideo];
    v59 = v58;
    v60 = *(*(a1 + 40) + 8);
    if (v58)
    {
      [v58 minFrameDuration];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    time1 = *(v60 + 32);
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      if (v59)
      {
        v62 = v88;
        [v59 minFrameDuration];
      }

      else
      {
        memset(v88, 0, 24);
        v62 = v88;
      }
    }

    else
    {
      v61 = *(*(a1 + 40) + 8);
      if (v59)
      {
        [v59 maxFrameDuration];
      }

      else
      {
        memset(&time2, 0, sizeof(time2));
      }

      time1 = *(v61 + 32);
      if (CMTimeCompare(&time1, &time2) < 1)
      {
LABEL_112:
        if (dword_1ED8069C0)
        {
          v152 = 0;
          v151 = OS_LOG_TYPE_DEFAULT;
          v64 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v65 = v152;
          if (os_log_type_enabled(v64, v151))
          {
            v66 = v65;
          }

          else
          {
            v66 = v65 & 0xFFFFFFFE;
          }

          if (v66)
          {
            v67 = [*(a1 + 32) localizedName];
            if (v59)
            {
              [v59 maxFrameDuration];
              v68 = v86;
              [v59 maxFrameDuration];
              v69 = v85;
              [v59 minFrameDuration];
              v70 = v84;
              [v59 minFrameDuration];
              v71 = v83;
            }

            else
            {
              v71 = 0;
              v70 = 0;
              v68 = 0;
              v69 = 0;
            }

            LODWORD(time1.value) = 136316418;
            *(&time1.value + 4) = "[AVCaptureFigVideoDevice _setActiveVideoMinFrameDurationInternal:]_block_invoke";
            LOWORD(time1.flags) = 2114;
            *(&time1.flags + 2) = v67;
            HIWORD(time1.epoch) = 2048;
            v143 = v68;
            v144 = 1024;
            *v145 = v69;
            *&v145[4] = 2048;
            *&v145[6] = v70;
            v146 = 1024;
            LODWORD(v147) = v71;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        goto LABEL_123;
      }

      if (v59)
      {
        v62 = v87;
        [v59 maxFrameDuration];
      }

      else
      {
        memset(v87, 0, sizeof(v87));
        v62 = v87;
      }
    }

    v63 = *(*(a1 + 40) + 8);
    *(v63 + 32) = *v62;
    *(v63 + 48) = v62[2];
    goto LABEL_112;
  }

LABEL_123:
  v72 = *(a1 + 32);
  if (*(v72 + 204))
  {
    time2 = *(*(*(a1 + 40) + 8) + 32);
    v73 = *(v72 + 192);
    time1.epoch = *(v72 + 208);
    *&time1.value = v73;
    v74 = CMTimeCompare(&time2, &time1);
    v72 = *(a1 + 32);
    if (v74 < 0)
    {
      v75 = *(*(a1 + 40) + 8);
      v76 = (v72 + 192);
      v77 = *v76;
      *(v75 + 48) = *(v76 + 2);
      *(v75 + 32) = v77;
      v72 = *(a1 + 32);
    }
  }

  v78 = (v72 + 224);
  time2 = *(*(*(a1 + 40) + 8) + 32);
  v79 = *v78;
  time1.epoch = *(v78 + 2);
  *&time1.value = v79;
  result = CMTimeCompare(&time2, &time1);
  *(*(*(a1 + 48) + 8) + 24) = result != 0;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v81 = *(*(a1 + 40) + 8);
    v82 = *(*(a1 + 32) + 272);
    time2.epoch = *(*(a1 + 32) + 288);
    *&time2.value = v82;
    time1 = *(v81 + 32);
    result = CMTimeCompare(&time2, &time1);
    *(*(*(a1 + 56) + 8) + 24) = result < 0;
  }

  return result;
}

float __67__AVCaptureFigVideoDevice__setActiveVideoMinFrameDurationInternal___block_invoke_345(uint64_t a1)
{
  FigCaptureFrameRateFromCMTime();
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _setFigCaptureSourceProperty:*MEMORY[0x1E69905B8] withValue:FigCaptureFrameRateAsData() cacheOnly:*(*(a1 + 32) + 392)];
  if (!*(*(*(a1 + 48) + 8) + 24))
  {
    v3 = *(a1 + 32) + 224;
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 48);
    v2 = *(v4 + 32);
    *v3 = v2;
    *(v3 + 16) = v5;
    if (dword_1ED8069C0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  if (*(*(a1 + 32) + 544) == 3)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v7 = *(*(a1 + 64) + 8);
    v8 = *(*(a1 + 32) + 880);
    *(v7 + 32) = *(*(a1 + 32) + 864);
    *(v7 + 48) = v8;
    LODWORD(v2) = *(*(a1 + 32) + 888);
    *(*(*(a1 + 72) + 8) + 24) = v2;
  }

  return *&v2;
}

- (void)setActiveVideoMinFrameDuration:(id *)a3
{
  v34 = 0;
  v35 = &v34;
  v36 = 0x3810000000;
  v37 = &unk_1A92DB249;
  v38 = *a3;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3052000000;
  v31 = __Block_byref_object_copy__7;
  v32 = __Block_byref_object_dispose__7;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3052000000;
  v25 = __Block_byref_object_copy__7;
  v26 = __Block_byref_object_dispose__7;
  v27 = 0;
  if (a3->var2)
  {
    if ([(AVCaptureFigVideoDevice *)self isAutoVideoFrameRateEnabled])
    {
      v9 = MEMORY[0x1E695DF30];
      objc_opt_class();
      v10 = [v9 exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
      if (AVCaptureShouldThrowForAPIViolations())
      {
        objc_exception_throw(v10);
      }
    }

    else
    {
      if (![(AVCaptureFigVideoDevice *)self isVideoFrameDurationLocked])
      {
        goto LABEL_2;
      }

      v11 = MEMORY[0x1E695DF30];
      objc_opt_class();
      v10 = [v11 exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
      if (AVCaptureShouldThrowForAPIViolations())
      {
        objc_exception_throw(v10);
      }
    }

    NSLog(&cfstr_SuppressingExc.isa, v10);
    goto LABEL_14;
  }

LABEL_2:
  devicePropsQueue = self->_devicePropsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__AVCaptureFigVideoDevice_setActiveVideoMinFrameDuration___block_invoke;
  block[3] = &unk_1E78701D0;
  block[4] = self;
  block[5] = &v34;
  block[6] = &v22;
  block[7] = &v28;
  dispatch_sync(devicePropsQueue, block);
  if (v29[5])
  {
    v6 = self->_devicePropsQueue;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __58__AVCaptureFigVideoDevice_setActiveVideoMinFrameDuration___block_invoke_2;
    v18[3] = &unk_1E7870158;
    v19 = *&a3->var0;
    var3 = a3->var3;
    v18[4] = self;
    v18[5] = &v34;
    dispatch_sync(v6, v18);
    v16 = *(v35 + 2);
    v17 = v35[6];
    if ([(AVCaptureFigVideoDevice *)self _setActiveVideoMinFrameDurationInternal:&v16]== -16452)
    {
      v7 = MEMORY[0x1E695DF30];
      objc_opt_class();
      v8 = [v7 exceptionWithName:*MEMORY[0x1E695D920] reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
      if (AVCaptureShouldThrowForAPIViolations())
      {
        objc_exception_throw(v8);
      }

      NSLog(&cfstr_SuppressingExc.isa, v8);
    }
  }

  else
  {
    v12 = *(v35 + 10);
    v13 = v35[4];
    v14 = MEMORY[0x1E695DF30];
    objc_opt_class();
    v15 = [v14 exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:{0, v23[5], (v12 / v13)}];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v15);
    }

    NSLog(&cfstr_SuppressingExc.isa, v15);
  }

LABEL_14:
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);
}

uint64_t __58__AVCaptureFigVideoDevice_setActiveVideoMinFrameDuration___block_invoke(void *a1)
{
  if ((*(*(a1[5] + 8) + 44) & 1) == 0)
  {
    [*(a1[4] + 136) defaultActiveMinFrameDurationForSessionPreset:*(a1[4] + 152)];
    v2 = *(a1[5] + 8);
    *(v2 + 32) = v17;
    *(v2 + 48) = v18;
  }

  *(*(a1[6] + 8) + 40) = [*(a1[4] + 136) videoSupportedFrameRateRanges];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = *(*(a1[6] + 8) + 40);
  result = [v3 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v14;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = *(a1[5] + 8);
        v10 = *(v9 + 32);
        v11 = *(v9 + 48);
        result = [v8 includesFrameDuration:&v10];
        if (result)
        {
          *(*(a1[7] + 8) + 40) = v8;
          return result;
        }

        ++v7;
      }

      while (v5 != v7);
      result = [v3 countByEnumeratingWithState:&v13 objects:v12 count:16];
      v5 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

__n128 __58__AVCaptureFigVideoDevice_setActiveVideoMinFrameDuration___block_invoke_2(uint64_t a1)
{
  v2 = (*(a1 + 32) + 248);
  if (*(a1 + 60))
  {
    v5 = *(*(a1 + 40) + 8);
    result = v5[2];
    *(*(a1 + 32) + 264) = v5[3].n128_u64[0];
    *v2 = result;
  }

  else
  {
    v3 = MEMORY[0x1E6960C70];
    result = *MEMORY[0x1E6960C70];
    *v2 = *MEMORY[0x1E6960C70];
    v2[1].n128_u64[0] = *(v3 + 16);
  }

  v6 = *(a1 + 32);
  v7 = (v6 + 248);
  if (*(v6 + 260))
  {
    v8 = (v6 + 296);
    if (*(v8 + 12))
    {
      v9 = *v8;
      time1.epoch = *(v8 + 2);
      *&time1.value = v9;
      v10 = *v7;
      v13.epoch = *(v7 + 2);
      *&v13.value = v10;
      if (CMTimeCompare(&time1, &v13) < 0)
      {
        v11 = *(a1 + 32);
        v12 = (v11 + 296);
        v11 = (v11 + 248);
        result = *v11;
        v12[1].n128_u64[0] = v11[1].n128_u64[0];
        *v12 = result;
      }
    }
  }

  return result;
}

- (void)_setActiveVideoMinFrameDuration:(id *)a3
{
  if ([(AVCaptureFigVideoDevice *)self lockForConfiguration:0])
  {
    v5 = *&a3->var0;
    var3 = a3->var3;
    [(AVCaptureFigVideoDevice *)self _setActiveVideoMinFrameDurationInternal:&v5];
    [(AVCaptureFigVideoDevice *)self unlockForConfiguration];
  }
}

__n128 __54__AVCaptureFigVideoDevice_activeVideoMaxFrameDuration__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  v3 = *(*(a1 + 32) + 288);
  result = *(*(a1 + 32) + 272);
  v2[2] = result;
  v2[3].n128_u64[0] = v3;
  v5 = *(a1 + 32);
  if (*(v5 + 1372) == 1 && (*(v5 + 1373) & 1) != 0 || *(v5 + 1459) == 1)
  {
    v6 = *(*(a1 + 40) + 8);
    v7 = [*(v5 + 136) videoFrameRateRangeForCenterStage];
    if (v7)
    {
      [v7 maxFrameDuration];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    time1 = *(v6 + 32);
    if (CMTimeCompare(&time1, &time2) >= 1)
    {
      v8 = [*(*(a1 + 32) + 136) videoFrameRateRangeForCenterStage];
      if (v8)
      {
        v9 = v59;
        [v8 maxFrameDuration];
      }

      else
      {
        memset(v59, 0, sizeof(v59));
        v9 = v59;
      }

LABEL_18:
      v13 = *(*(a1 + 40) + 8);
      result = *v9;
      v13[2] = *v9;
      v13[3].n128_u64[0] = v9[1].n128_u64[0];
      goto LABEL_19;
    }

    v10 = *(*(a1 + 40) + 8);
    v11 = [*(*(a1 + 32) + 136) videoFrameRateRangeForCenterStage];
    if (v11)
    {
      [v11 minFrameDuration];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    time1 = *(v10 + 32);
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      v12 = [*(*(a1 + 32) + 136) videoFrameRateRangeForCenterStage];
      if (v12)
      {
        v9 = v58;
        [v12 minFrameDuration];
      }

      else
      {
        memset(v58, 0, sizeof(v58));
        v9 = v58;
      }

      goto LABEL_18;
    }
  }

LABEL_19:
  v14 = *(a1 + 32);
  if (*(v14 + 1410) == 1 && *(v14 + 1411) == 1)
  {
    v15 = *(*(a1 + 40) + 8);
    v16 = [*(v14 + 136) videoFrameRateRangeForBackgroundBlur];
    if (v16)
    {
      [v16 maxFrameDuration];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    time1 = *(v15 + 32);
    if (CMTimeCompare(&time1, &time2) >= 1)
    {
      v17 = [*(*(a1 + 32) + 136) videoFrameRateRangeForBackgroundBlur];
      if (v17)
      {
        v18 = v57;
        [v17 maxFrameDuration];
      }

      else
      {
        memset(v57, 0, sizeof(v57));
        v18 = v57;
      }

LABEL_35:
      v22 = *(*(a1 + 40) + 8);
      result = *v18;
      v22[2] = *v18;
      v22[3].n128_u64[0] = v18[1].n128_u64[0];
      goto LABEL_36;
    }

    v19 = *(*(a1 + 40) + 8);
    v20 = [*(*(a1 + 32) + 136) videoFrameRateRangeForBackgroundBlur];
    if (v20)
    {
      [v20 minFrameDuration];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    time1 = *(v19 + 32);
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      v21 = [*(*(a1 + 32) + 136) videoFrameRateRangeForBackgroundBlur];
      if (v21)
      {
        v18 = v56;
        [v21 minFrameDuration];
      }

      else
      {
        memset(v56, 0, sizeof(v56));
        v18 = v56;
      }

      goto LABEL_35;
    }
  }

LABEL_36:
  v23 = *(a1 + 32);
  if (*(v23 + 1413) == 1 && *(v23 + 1414) == 1)
  {
    v24 = *(*(a1 + 40) + 8);
    v25 = [*(v23 + 136) videoFrameRateRangeForStudioLight];
    if (v25)
    {
      [v25 maxFrameDuration];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    time1 = *(v24 + 32);
    if (CMTimeCompare(&time1, &time2) >= 1)
    {
      v26 = [*(*(a1 + 32) + 136) videoFrameRateRangeForStudioLight];
      if (v26)
      {
        v27 = v55;
        [v26 maxFrameDuration];
      }

      else
      {
        memset(v55, 0, sizeof(v55));
        v27 = v55;
      }

LABEL_52:
      v31 = *(*(a1 + 40) + 8);
      result = *v27;
      v31[2] = *v27;
      v31[3].n128_u64[0] = v27[1].n128_u64[0];
      goto LABEL_53;
    }

    v28 = *(*(a1 + 40) + 8);
    v29 = [*(*(a1 + 32) + 136) videoFrameRateRangeForStudioLight];
    if (v29)
    {
      [v29 minFrameDuration];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    time1 = *(v28 + 32);
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      v30 = [*(*(a1 + 32) + 136) videoFrameRateRangeForStudioLight];
      if (v30)
      {
        v27 = v54;
        [v30 minFrameDuration];
      }

      else
      {
        memset(v54, 0, sizeof(v54));
        v27 = v54;
      }

      goto LABEL_52;
    }
  }

LABEL_53:
  v32 = *(a1 + 32);
  if (*(v32 + 1419) == 1 && *(v32 + 1420) == 1)
  {
    v33 = *(*(a1 + 40) + 8);
    v34 = [*(v32 + 136) videoFrameRateRangeForBackgroundReplacement];
    if (v34)
    {
      [v34 maxFrameDuration];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    time1 = *(v33 + 32);
    if (CMTimeCompare(&time1, &time2) >= 1)
    {
      v35 = [*(*(a1 + 32) + 136) videoFrameRateRangeForBackgroundReplacement];
      if (v35)
      {
        v36 = v53;
        [v35 maxFrameDuration];
      }

      else
      {
        memset(v53, 0, sizeof(v53));
        v36 = v53;
      }

LABEL_69:
      v40 = *(*(a1 + 40) + 8);
      result = *v36;
      v40[2] = *v36;
      v40[3].n128_u64[0] = v36[1].n128_u64[0];
      goto LABEL_70;
    }

    v37 = *(*(a1 + 40) + 8);
    v38 = [*(*(a1 + 32) + 136) videoFrameRateRangeForBackgroundReplacement];
    if (v38)
    {
      [v38 minFrameDuration];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    time1 = *(v37 + 32);
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      v39 = [*(*(a1 + 32) + 136) videoFrameRateRangeForBackgroundReplacement];
      if (v39)
      {
        v36 = v52;
        [v39 minFrameDuration];
      }

      else
      {
        memset(v52, 0, sizeof(v52));
        v36 = v52;
      }

      goto LABEL_69;
    }
  }

LABEL_70:
  v41 = *(a1 + 32);
  if (*(v41 + 189) != 1)
  {
    return result;
  }

  v42 = *(*(a1 + 40) + 8);
  v43 = [*(v41 + 136) videoFrameRateRangeForCinematicVideo];
  if (v43)
  {
    [v43 maxFrameDuration];
  }

  else
  {
    memset(&time2, 0, sizeof(time2));
  }

  time1 = *(v42 + 32);
  if (CMTimeCompare(&time1, &time2) >= 1)
  {
    v44 = [*(*(a1 + 32) + 136) videoFrameRateRangeForCinematicVideo];
    if (v44)
    {
      v45 = v51;
      [v44 maxFrameDuration];
    }

    else
    {
      memset(v51, 0, sizeof(v51));
      v45 = v51;
    }

LABEL_85:
    v49 = *(*(a1 + 40) + 8);
    result = *v45;
    v49[2] = *v45;
    v49[3].n128_u64[0] = v45[1].n128_u64[0];
    return result;
  }

  v46 = *(*(a1 + 40) + 8);
  v47 = [*(*(a1 + 32) + 136) videoFrameRateRangeForCinematicVideo];
  if (v47)
  {
    [v47 minFrameDuration];
  }

  else
  {
    memset(&time2, 0, sizeof(time2));
  }

  time1 = *(v46 + 32);
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    v48 = [*(*(a1 + 32) + 136) videoFrameRateRangeForCinematicVideo];
    if (v48)
    {
      v45 = v50;
      [v48 minFrameDuration];
    }

    else
    {
      memset(v50, 0, sizeof(v50));
      v45 = v50;
    }

    goto LABEL_85;
  }

  return result;
}

- (int)_setActiveVideoMaxFrameDurationInternal:(id *)a3 isSettingExposureModeCustom:(BOOL)a4
{
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3810000000;
  v36 = &unk_1A92DB249;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3810000000;
  v27 = *&a3->var0;
  var3 = a3->var3;
  v26 = &unk_1A92DB249;
  v28 = var3;
  if (dword_1ED8069C0)
  {
    v22 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  devicePropsQueue = self->_devicePropsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__AVCaptureFigVideoDevice__setActiveVideoMaxFrameDurationInternal_isSettingExposureModeCustom___block_invoke;
  block[3] = &unk_1E78700B8;
  block[4] = self;
  block[5] = &v23;
  block[6] = &v48;
  block[7] = &v44;
  dispatch_sync(devicePropsQueue, block);
  if (*(v49 + 24) == 1)
  {
    [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"activeVideoMaxFrameDuration"];
    v9 = self->_devicePropsQueue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __95__AVCaptureFigVideoDevice__setActiveVideoMaxFrameDurationInternal_isSettingExposureModeCustom___block_invoke_359;
    v16[3] = &unk_1E78701F8;
    v16[4] = self;
    v16[5] = &v23;
    v17 = a4;
    v16[6] = &v52;
    v16[7] = &v40;
    v16[8] = &v33;
    v16[9] = &v29;
    dispatch_sync(v9, v16);
    if (!*(v53 + 6))
    {
      if (*(v45 + 24) == 1)
      {
        v19 = *(v24 + 2);
        v20 = v24[6];
        v10 = [(AVCaptureFigVideoDevice *)self _setActiveVideoMinFrameDurationInternal:&v19];
        *(v53 + 6) = v10;
      }

      if (*(v41 + 24) == 1 && [(AVCaptureFigVideoDevice *)self lockForConfiguration:0])
      {
        LODWORD(v11) = *(v30 + 6);
        v19 = *(v34 + 2);
        v20 = v34[6];
        [(AVCaptureFigVideoDevice *)self setExposureModeCustomWithDuration:&v19 ISO:0 completionHandler:v11];
        [(AVCaptureFigVideoDevice *)self unlockForConfiguration];
      }
    }

    [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"activeVideoMaxFrameDuration", v14, v15];
    v12 = *(v53 + 6);
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v52, 8);
  return v12;
}

uint64_t __95__AVCaptureFigVideoDevice__setActiveVideoMaxFrameDurationInternal_isSettingExposureModeCustom___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 1372) != 1 || (*(v2 + 1373) & 1) == 0) && *(v2 + 1459) != 1)
  {
    goto LABEL_32;
  }

  v3 = [*(v2 + 136) videoFrameRateRangeForCenterStage];
  v4 = v3;
  v5 = *(*(a1 + 40) + 8);
  if (v3)
  {
    [v3 minFrameDuration];
  }

  else
  {
    memset(&time2, 0, sizeof(time2));
  }

  time1 = *(v5 + 32);
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    if (v4)
    {
      v7 = v96;
      [v4 minFrameDuration];
    }

    else
    {
      memset(v96, 0, 24);
      v7 = v96;
    }

    goto LABEL_18;
  }

  v6 = *(*(a1 + 40) + 8);
  if (v4)
  {
    [v4 maxFrameDuration];
  }

  else
  {
    memset(&time2, 0, sizeof(time2));
  }

  time1 = *(v6 + 32);
  if (CMTimeCompare(&time1, &time2) >= 1)
  {
    if (v4)
    {
      v7 = v95;
      [v4 maxFrameDuration];
    }

    else
    {
      memset(v95, 0, sizeof(v95));
      v7 = v95;
    }

LABEL_18:
    v8 = *(*(a1 + 40) + 8);
    *(v8 + 32) = *v7;
    *(v8 + 48) = v7[2];
  }

  if (dword_1ED8069C0)
  {
    v94 = 0;
    v93 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v10 = v94;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v93))
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 & 0xFFFFFFFE;
    }

    if (v11)
    {
      v12 = [*(a1 + 32) localizedName];
      v13 = @"Manual Framing";
      if (!*(*(a1 + 32) + 1459))
      {
        v13 = @"Center Stage";
      }

      if (v4)
      {
        v14 = v13;
        [v4 maxFrameDuration];
        v15 = v81;
        [v4 maxFrameDuration];
        v16 = v79;
        [v4 minFrameDuration];
        v17 = v75;
        [v4 minFrameDuration];
        v13 = v14;
        v18 = v73;
      }

      else
      {
        v18 = 0;
        v17 = 0;
        v15 = 0;
        v16 = 0;
        v81 = 0;
        v82 = 0;
        v83 = 0;
        v79 = 0;
        v80 = 0;
        v77 = 0;
        v78 = 0;
        v75 = 0;
        v76 = 0;
        v73 = 0;
        v74 = 0;
        v72 = 0;
      }

      LODWORD(time1.value) = 136316674;
      *(&time1.value + 4) = "[AVCaptureFigVideoDevice _setActiveVideoMaxFrameDurationInternal:isSettingExposureModeCustom:]_block_invoke";
      LOWORD(time1.flags) = 2114;
      *(&time1.flags + 2) = v12;
      HIWORD(time1.epoch) = 2112;
      v85 = v13;
      v86 = 2048;
      *v87 = v15;
      *&v87[8] = 1024;
      *&v87[10] = v16;
      v88 = 2048;
      v89 = v17;
      v90 = 1024;
      v91 = v18;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_32:
  v19 = *(a1 + 32);
  if (*(v19 + 1410) == 1 && *(v19 + 1411) == 1)
  {
    v20 = [*(v19 + 136) videoFrameRateRangeForBackgroundBlur];
    v21 = v20;
    v22 = *(*(a1 + 40) + 8);
    if (v20)
    {
      [v20 minFrameDuration];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    time1 = *(v22 + 32);
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      if (v21)
      {
        [v21 minFrameDuration];
      }

      else
      {
        v70 = 0uLL;
        v71 = 0;
      }

      v23 = *(*(a1 + 40) + 8);
      *(v23 + 32) = v70;
      *(v23 + 48) = v71;
    }
  }

  v24 = *(a1 + 32);
  if (*(v24 + 1413) == 1 && *(v24 + 1414) == 1)
  {
    v25 = [*(v24 + 136) videoFrameRateRangeForStudioLight];
    v26 = v25;
    v27 = *(*(a1 + 40) + 8);
    if (v25)
    {
      [v25 minFrameDuration];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    time1 = *(v27 + 32);
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      if (v26)
      {
        [v26 minFrameDuration];
      }

      else
      {
        v68 = 0uLL;
        v69 = 0;
      }

      v28 = *(*(a1 + 40) + 8);
      *(v28 + 32) = v68;
      *(v28 + 48) = v69;
    }
  }

  v29 = *(a1 + 32);
  if (*(v29 + 1419) == 1 && *(v29 + 1420) == 1)
  {
    v30 = [*(v29 + 136) videoFrameRateRangeForBackgroundReplacement];
    v31 = v30;
    v32 = *(*(a1 + 40) + 8);
    if (v30)
    {
      [v30 minFrameDuration];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    time1 = *(v32 + 32);
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      if (v31)
      {
        [v31 minFrameDuration];
      }

      else
      {
        v66 = 0uLL;
        v67 = 0;
      }

      v33 = *(*(a1 + 40) + 8);
      *(v33 + 32) = v66;
      *(v33 + 48) = v67;
    }
  }

  v34 = *(a1 + 32);
  if (*(v34 + 189) == 1)
  {
    v35 = [*(v34 + 136) videoFrameRateRangeForCinematicVideo];
    v36 = v35;
    v37 = *(*(a1 + 40) + 8);
    if (v35)
    {
      [v35 minFrameDuration];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    time1 = *(v37 + 32);
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      if (v36)
      {
        v39 = v65;
        [v36 minFrameDuration];
      }

      else
      {
        memset(v65, 0, sizeof(v65));
        v39 = v65;
      }
    }

    else
    {
      v38 = *(*(a1 + 40) + 8);
      if (v36)
      {
        [v36 maxFrameDuration];
      }

      else
      {
        memset(&time2, 0, sizeof(time2));
      }

      time1 = *(v38 + 32);
      if (CMTimeCompare(&time1, &time2) < 1)
      {
LABEL_78:
        if (dword_1ED8069C0)
        {
          v94 = 0;
          v93 = OS_LOG_TYPE_DEFAULT;
          v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v42 = v94;
          if (os_log_type_enabled(v41, v93))
          {
            v43 = v42;
          }

          else
          {
            v43 = v42 & 0xFFFFFFFE;
          }

          if (v43)
          {
            v44 = [*(a1 + 32) localizedName];
            if (v36)
            {
              [v36 maxFrameDuration];
              v45 = v63;
              [v36 maxFrameDuration];
              v46 = v62;
              [v36 minFrameDuration];
              v47 = v61;
              [v36 minFrameDuration];
              v48 = v60;
            }

            else
            {
              v48 = 0;
              v47 = 0;
              v45 = 0;
              v46 = 0;
            }

            LODWORD(time1.value) = 136316418;
            *(&time1.value + 4) = "[AVCaptureFigVideoDevice _setActiveVideoMaxFrameDurationInternal:isSettingExposureModeCustom:]_block_invoke";
            LOWORD(time1.flags) = 2114;
            *(&time1.flags + 2) = v44;
            HIWORD(time1.epoch) = 2048;
            v85 = v45;
            v86 = 1024;
            *v87 = v46;
            *&v87[4] = 2048;
            *&v87[6] = v47;
            v88 = 1024;
            LODWORD(v89) = v48;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        goto LABEL_89;
      }

      if (v36)
      {
        v39 = v64;
        [v36 maxFrameDuration];
      }

      else
      {
        memset(v64, 0, sizeof(v64));
        v39 = v64;
      }
    }

    v40 = *(*(a1 + 40) + 8);
    *(v40 + 32) = *v39;
    *(v40 + 48) = v39[2];
    goto LABEL_78;
  }

LABEL_89:
  v49 = *(a1 + 32);
  if (*(v49 + 204))
  {
    time2 = *(*(*(a1 + 40) + 8) + 32);
    v50 = *(v49 + 192);
    time1.epoch = *(v49 + 208);
    *&time1.value = v50;
    v51 = CMTimeCompare(&time2, &time1);
    v49 = *(a1 + 32);
    if (v51 < 0)
    {
      v52 = *(*(a1 + 40) + 8);
      v53 = (v49 + 192);
      v54 = *v53;
      *(v52 + 48) = *(v53 + 2);
      *(v52 + 32) = v54;
      v49 = *(a1 + 32);
    }
  }

  v55 = (v49 + 272);
  time2 = *(*(*(a1 + 40) + 8) + 32);
  v56 = *v55;
  time1.epoch = *(v55 + 2);
  *&time1.value = v56;
  result = CMTimeCompare(&time2, &time1);
  *(*(*(a1 + 48) + 8) + 24) = result != 0;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v58 = *(*(a1 + 40) + 8);
    v59 = *(*(a1 + 32) + 224);
    time2.epoch = *(*(a1 + 32) + 240);
    *&time2.value = v59;
    time1 = *(v58 + 32);
    result = CMTimeCompare(&time2, &time1);
    *(*(*(a1 + 56) + 8) + 24) = result > 0;
  }

  return result;
}

__n128 __95__AVCaptureFigVideoDevice__setActiveVideoMaxFrameDurationInternal_isSettingExposureModeCustom___block_invoke_359(uint64_t a1)
{
  time1 = *(*(*(a1 + 40) + 8) + 32);
  FigCaptureFrameRateFromCMTime();
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _setFigCaptureSourceProperty:*MEMORY[0x1E69905C0] withValue:FigCaptureFrameRateAsData() cacheOnly:*(*(a1 + 32) + 392)];
  if (!*(*(*(a1 + 48) + 8) + 24))
  {
    v3 = (*(a1 + 32) + 272);
    v4 = *(*(a1 + 40) + 8);
    v5 = v4[3].n128_u64[0];
    result = v4[2];
    *v3 = result;
    v3[1].n128_u64[0] = v5;
    if (dword_1ED8069C0)
    {
      v15 = 0;
      v14 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  if ((*(a1 + 80) & 1) == 0 && *(*(a1 + 32) + 544) == 3)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v7 = *(*(a1 + 64) + 8);
    v8 = *(*(a1 + 32) + 880);
    *(v7 + 32) = *(*(a1 + 32) + 864);
    *(v7 + 48) = v8;
    *(*(*(a1 + 72) + 8) + 24) = *(*(a1 + 32) + 888);
    time1 = *(*(*(a1 + 64) + 8) + 32);
    memset(&time2, 0, sizeof(time2));
    if (CMTimeCompare(&time1, &time2))
    {
      v9 = *(*(a1 + 64) + 8);
      v10 = *(*(a1 + 32) + 272);
      time1.epoch = *(*(a1 + 32) + 288);
      *&time1.value = v10;
      time2 = *(v9 + 32);
      if (CMTimeCompare(&time1, &time2) < 0)
      {
        v11 = *(*(a1 + 64) + 8);
        result = *(*(a1 + 32) + 272);
        v11[3].n128_u64[0] = *(*(a1 + 32) + 288);
        v11[2] = result;
      }
    }
  }

  return result;
}

- (void)setActiveVideoMaxFrameDuration:(id *)a3
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3810000000;
  v21 = &unk_1A92DB249;
  v22 = *a3;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3052000000;
  v17[3] = __Block_byref_object_copy__7;
  v17[4] = __Block_byref_object_dispose__7;
  v17[5] = 0;
  if (a3->var2)
  {
    if ([(AVCaptureFigVideoDevice *)self isAutoVideoFrameRateEnabled])
    {
      v9 = MEMORY[0x1E695DF30];
      objc_opt_class();
      v10 = [v9 exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
      if (AVCaptureShouldThrowForAPIViolations())
      {
        objc_exception_throw(v10);
      }
    }

    else
    {
      if (![(AVCaptureFigVideoDevice *)self isVideoFrameDurationLocked])
      {
        goto LABEL_2;
      }

      v11 = MEMORY[0x1E695DF30];
      objc_opt_class();
      v10 = [v11 exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
      if (AVCaptureShouldThrowForAPIViolations())
      {
        objc_exception_throw(v10);
      }
    }

    NSLog(&cfstr_SuppressingExc.isa, v10);
    goto LABEL_11;
  }

LABEL_2:
  devicePropsQueue = self->_devicePropsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__AVCaptureFigVideoDevice_setActiveVideoMaxFrameDuration___block_invoke;
  block[3] = &unk_1E7870220;
  v15 = *&a3->var0;
  var3 = a3->var3;
  block[4] = self;
  block[5] = &v18;
  block[6] = v17;
  block[7] = a2;
  dispatch_sync(devicePropsQueue, block);
  v12 = *(v19 + 2);
  v13 = v19[6];
  if ([(AVCaptureFigVideoDevice *)self _setActiveVideoMaxFrameDurationInternal:&v12]== -16452)
  {
    v7 = MEMORY[0x1E695DF30];
    objc_opt_class();
    v8 = [v7 exceptionWithName:*MEMORY[0x1E695D920] reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v8);
    }

    NSLog(&cfstr_SuppressingExc.isa, v8);
  }

LABEL_11:
  _Block_object_dispose(v17, 8);
  _Block_object_dispose(&v18, 8);
}

void __58__AVCaptureFigVideoDevice_setActiveVideoMaxFrameDuration___block_invoke(uint64_t a1)
{
  if ((*(a1 + 76) & 1) == 0)
  {
    [*(*(a1 + 32) + 136) defaultActiveMaxFrameDurationForSessionPreset:*(*(a1 + 32) + 152)];
    v2 = *(*(a1 + 40) + 8);
    *(v2 + 32) = v32;
    *(v2 + 48) = v33;
  }

  *(*(*(a1 + 48) + 8) + 40) = [*(*(a1 + 32) + 136) videoSupportedFrameRateRanges];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v3 = *(*(*(a1 + 48) + 8) + 40);
  v4 = [v3 countByEnumeratingWithState:&v28 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v29;
LABEL_5:
    v7 = 0;
    while (1)
    {
      if (*v29 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v28 + 1) + 8 * v7);
      time1 = *(*(*(a1 + 40) + 8) + 32);
      if ([v8 includesFrameDuration:&time1])
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v28 objects:v27 count:16];
        if (v5)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    v9 = *(*(a1 + 40) + 8);
    if (!v8)
    {
      goto LABEL_15;
    }

    v10 = *(a1 + 32) + 296;
    if (*(a1 + 76))
    {
      v16 = *(v9 + 32);
      *(*(a1 + 32) + 312) = *(v9 + 48);
      *v10 = v16;
    }

    else
    {
      v11 = MEMORY[0x1E6960C70];
      *v10 = *MEMORY[0x1E6960C70];
      *(v10 + 16) = *(v11 + 16);
    }

    v17 = *(a1 + 32);
    v18 = (v17 + 296);
    if (*(v17 + 308))
    {
      v19 = (v17 + 248);
      if (*(v19 + 12))
      {
        v20 = *v19;
        time1.epoch = *(v19 + 2);
        *&time1.value = v20;
        v21 = *v18;
        time2.epoch = *(v18 + 2);
        *&time2.value = v21;
        if (CMTimeCompare(&time1, &time2) >= 1)
        {
          v22 = *(a1 + 32);
          v23 = v22 + 248;
          v22 = (v22 + 296);
          v24 = *v22;
          *(v23 + 16) = *(v22 + 2);
          *v23 = v24;
        }
      }
    }
  }

  else
  {
LABEL_11:
    v9 = *(*(a1 + 40) + 8);
LABEL_15:
    v12 = (*(v9 + 40) / *(v9 + 32));
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D940];
    objc_opt_class();
    v15 = [v13 exceptionWithName:v14 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:{0, *(*(*(a1 + 48) + 8) + 40), v12}];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v15);
    }

    NSLog(&cfstr_SuppressingExc.isa, v15);
  }
}

- (void)_setActiveVideoMaxFrameDuration:(id *)a3
{
  if ([(AVCaptureFigVideoDevice *)self lockForConfiguration:0])
  {
    v5 = *&a3->var0;
    var3 = a3->var3;
    [(AVCaptureFigVideoDevice *)self _setActiveVideoMaxFrameDurationInternal:&v5];
    [(AVCaptureFigVideoDevice *)self unlockForConfiguration];
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)activeVideoMinFrameDurationSetByClient
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3810000000;
  v10 = &unk_1A92DB249;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__AVCaptureFigVideoDevice_activeVideoMinFrameDurationSetByClient__block_invoke;
  block[3] = &unk_1E7870040;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(devicePropsQueue, block);
  *retstr = *(v8 + 4);
  _Block_object_dispose(&v7, 8);
  return result;
}

__n128 __65__AVCaptureFigVideoDevice_activeVideoMinFrameDurationSetByClient__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  v2 = (*(a1 + 32) + 248);
  v3 = *(*(a1 + 32) + 264);
  result = *v2;
  v1[2] = *v2;
  v1[3].n128_u64[0] = v3;
  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)activeVideoMaxFrameDurationSetByClient
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3810000000;
  v10 = &unk_1A92DB249;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__AVCaptureFigVideoDevice_activeVideoMaxFrameDurationSetByClient__block_invoke;
  block[3] = &unk_1E7870040;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(devicePropsQueue, block);
  *retstr = *(v8 + 4);
  _Block_object_dispose(&v7, 8);
  return result;
}

__n128 __65__AVCaptureFigVideoDevice_activeVideoMaxFrameDurationSetByClient__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  v2 = (*(a1 + 32) + 296);
  v3 = *(*(a1 + 32) + 312);
  result = *v2;
  v1[2] = *v2;
  v1[3].n128_u64[0] = v3;
  return result;
}

- (void)setCachesFigCaptureSourceConfigurationChanges:(BOOL)a3
{
  if ([(AVCaptureFigVideoDevice *)self isLockedForConfiguration])
  {
    self->_cachesFigCaptureSourceConfigurationChanges = a3;
  }

  else
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D920];
    objc_opt_class();
    v7 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v7);
    }

    NSLog(&cfstr_SuppressingExc.isa, v7);
  }
}

- (BOOL)supportsMultiCamCaptureWithDevice:(id)a3
{
  v5 = [(AVCaptureFigVideoDevice *)self position];
  if (v5 != [a3 position])
  {
    return 1;
  }

  v6 = ([-[AVCaptureFigVideoDevice deviceType](self "deviceType")] & 1) != 0 ? 1 : objc_msgSend(objc_msgSend(a3, "deviceType"), "isEqualToString:", @"AVCaptureDeviceTypeBuiltInLiDARDepthCamera");
  v7 = ([-[AVCaptureFigVideoDevice deviceType](self "deviceType")] & 1) != 0 ? 1 : objc_msgSend(objc_msgSend(a3, "deviceType"), "isEqualToString:", @"AVCaptureDeviceTypeDeskViewCamera");
  v8 = [(AVCaptureDevice *)self isVirtualDevice];
  if (!(v6 & 1 | (((v8 ^ [a3 isVirtualDevice]) & 1) == 0)) && !v7)
  {
    return 0;
  }

  if (-[AVCaptureFigVideoDevice position](self, "position") == 2 && (-[AVCaptureFigVideoDevice deviceType](self, "deviceType") == @"AVCaptureDeviceTypeBuiltInWideAngleCamera" && [a3 deviceType] == @"AVCaptureDeviceTypeBuiltInUltraWideCamera" || -[AVCaptureFigVideoDevice deviceType](self, "deviceType") == @"AVCaptureDeviceTypeBuiltInUltraWideCamera" && objc_msgSend(a3, "deviceType") == @"AVCaptureDeviceTypeBuiltInWideAngleCamera"))
  {
    return 0;
  }

  v9 = [(AVCaptureDevice *)self constituentDevices];
  if (![(NSArray *)v9 count])
  {
    v14 = self;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
  }

  v10 = [a3 constituentDevices];
  if (![v10 count])
  {
    v13 = a3;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
  }

  v11 = [MEMORY[0x1E695DFA8] setWithArray:v9];
  [v11 intersectSet:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", v10)}];
  return ![v11 count] && -[AVCaptureFigVideoDevice deviceType](self, "deviceType") != @"AVCaptureDeviceTypeBuiltInInfraredMetadataCamera" && objc_msgSend(a3, "deviceType") != @"AVCaptureDeviceTypeBuiltInWideAngleMetadataCamera" && objc_msgSend(a3, "deviceType") != @"AVCaptureDeviceTypeBuiltInUltraWideAngleMetadataCamera";
}

- (id)constituentDeviceWithDeviceType:(id)a3
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(AVCaptureDevice *)self constituentDevices];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v13;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v13 != v7)
    {
      objc_enumerationMutation(v4);
    }

    v9 = *(*(&v12 + 1) + 8 * v8);
    if ([v9 deviceType] == a3)
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v11 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (BOOL)isConstituentPhotoCalibrationDataSupported
{
  v2 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E69900F8]];

  return [v2 BOOLValue];
}

- (int)powerConsumptionAt30FPSForOISMode:(int)a3
{
  if ((a3 - 1) > 2)
  {
    return 0;
  }

  v5 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:**(&unk_1E78709E8 + (a3 - 1)), v3];

  return [v5 intValue];
}

- (void)setLowLightVideoCaptureEnabled:(BOOL)a3
{
  if ([(AVCaptureFigVideoDevice *)self isLockedForConfiguration])
  {
    if ([-[AVCaptureFigVideoDevice activeFormat](self "activeFormat")])
    {
      devicePropsQueue = self->_devicePropsQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __58__AVCaptureFigVideoDevice_setLowLightVideoCaptureEnabled___block_invoke;
      block[3] = &unk_1E786EE40;
      block[4] = self;
      v10 = a3;
      dispatch_sync(devicePropsQueue, block);
      return;
    }

    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    objc_opt_class();
  }

  else
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D920];
    objc_opt_class();
  }

  v8 = [v6 exceptionWithName:v7 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v8);
  }

  NSLog(&cfstr_SuppressingExc.isa, v8);
}

- (void)setVariableFrameRateVideoCaptureEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(AVCaptureFigVideoDevice *)self isLockedForConfiguration])
  {
    if ([-[AVCaptureFigVideoDevice activeFormat](self "activeFormat")])
    {
      if (v3)
      {
        if ([(AVCaptureFigVideoDevice *)self isVideoFrameDurationLocked])
        {
          v5 = MEMORY[0x1E695DF30];
          v6 = *MEMORY[0x1E695D940];
LABEL_14:
          v9 = AVMethodExceptionReasonWithObjectAndSelector();
          v10 = v5;
          v11 = v6;
          goto LABEL_9;
        }

        if ([(AVCaptureFigVideoDevice *)self isFollowingExternalSyncDevice])
        {
          v5 = MEMORY[0x1E695DF30];
          v6 = *MEMORY[0x1E695D940];
          goto LABEL_14;
        }
      }

      devicePropsQueue = self->_devicePropsQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __67__AVCaptureFigVideoDevice_setVariableFrameRateVideoCaptureEnabled___block_invoke;
      block[3] = &unk_1E786EE40;
      block[4] = self;
      v15 = v3;
      dispatch_sync(devicePropsQueue, block);
      return;
    }

    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    objc_opt_class();
  }

  else
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D920];
    objc_opt_class();
  }

  v9 = AVMethodExceptionReasonWithClassAndSelector();
  v10 = v7;
  v11 = v8;
LABEL_9:
  v12 = [v10 exceptionWithName:v11 reason:v9 userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v12);
  }

  NSLog(&cfstr_SuppressingExc.isa, v12);
}

- (BOOL)isAutoVideoFrameRateEnabled
{
  if ([(AVCaptureFigVideoDevice *)self isVariableFrameRateVideoCaptureEnabled])
  {
    return 1;
  }

  return [(AVCaptureFigVideoDevice *)self isLowLightVideoCaptureEnabled];
}

- (void)setAutoVideoFrameRateEnabled:(BOOL)a3
{
  v3 = a3;
  if (([-[AVCaptureFigVideoDevice activeFormat](self "activeFormat")] & 1) == 0)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    objc_opt_class();
    v9 = AVMethodExceptionReasonWithClassAndSelector();
    v10 = v7;
    v11 = v8;
LABEL_9:
    v12 = [v10 exceptionWithName:v11 reason:v9 userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v12);
    }

    NSLog(&cfstr_SuppressingExc.isa, v12);
    return;
  }

  if (v3)
  {
    if ([(AVCaptureFigVideoDevice *)self isVideoFrameDurationLocked])
    {
      v5 = MEMORY[0x1E695DF30];
      v6 = *MEMORY[0x1E695D940];
LABEL_8:
      v9 = AVMethodExceptionReasonWithObjectAndSelector();
      v10 = v5;
      v11 = v6;
      goto LABEL_9;
    }

    if ([(AVCaptureFigVideoDevice *)self isFollowingExternalSyncDevice])
    {
      v5 = MEMORY[0x1E695DF30];
      v6 = *MEMORY[0x1E695D940];
      goto LABEL_8;
    }
  }

  if ([-[AVCaptureFigVideoDevice activeFormat](self "activeFormat")])
  {

    [(AVCaptureFigVideoDevice *)self setVariableFrameRateVideoCaptureEnabled:v3];
  }

  else if ([-[AVCaptureFigVideoDevice activeFormat](self "activeFormat")])
  {

    [(AVCaptureFigVideoDevice *)self setLowLightVideoCaptureEnabled:v3];
  }
}

- (void)setVideoStabilizationStrength:(int64_t)a3
{
  if ([(AVCaptureFigVideoDevice *)self isLockedForConfiguration])
  {
    if ([-[AVCaptureFigVideoDevice activeFormat](self "activeFormat")])
    {
      devicePropsQueue = self->_devicePropsQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __57__AVCaptureFigVideoDevice_setVideoStabilizationStrength___block_invoke;
      block[3] = &unk_1E786ECD0;
      block[4] = self;
      block[5] = a3;
      dispatch_sync(devicePropsQueue, block);
      return;
    }

    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    objc_opt_class();
  }

  else
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D920];
    objc_opt_class();
  }

  v8 = [v6 exceptionWithName:v7 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v8);
  }

  NSLog(&cfstr_SuppressingExc.isa, v8);
}

- (int64_t)digitalFlashMode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__AVCaptureFigVideoDevice_digitalFlashMode__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setDigitalFlashMode:(int64_t)a3
{
  if ([(AVCaptureFigVideoDevice *)self isLockedForConfiguration])
  {
    if ([-[AVCaptureFigVideoDevice activeFormat](self "activeFormat")])
    {
      v10 = 0;
      v11 = &v10;
      v12 = 0x2020000000;
      v13 = 0;
      devicePropsQueue = self->_devicePropsQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __47__AVCaptureFigVideoDevice_setDigitalFlashMode___block_invoke;
      block[3] = &unk_1E7870040;
      block[4] = self;
      block[5] = &v10;
      dispatch_sync(devicePropsQueue, block);
      if (a3)
      {
        if (v11[3])
        {
          [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"globalToneMappingEnabled"];
          [(AVCaptureFigVideoDevice *)self _setGlobalToneMappingEnabledInternal:0];
          [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"globalToneMappingEnabled"];
        }
      }

      [(AVCaptureFigVideoDevice *)self _setDigitalFlashModeInternal:a3];
      _Block_object_dispose(&v10, 8);
      return;
    }

    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    objc_opt_class();
  }

  else
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D920];
    objc_opt_class();
  }

  v8 = [v6 exceptionWithName:v7 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v8);
  }

  NSLog(&cfstr_SuppressingExc.isa, v8);
}

- (void)_setDigitalFlashModeInternal:(int64_t)a3
{
  devicePropsQueue = self->_devicePropsQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__AVCaptureFigVideoDevice__setDigitalFlashModeInternal___block_invoke;
  v4[3] = &unk_1E786ECD0;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(devicePropsQueue, v4);
}

uint64_t __56__AVCaptureFigVideoDevice__setDigitalFlashModeInternal___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _setFigCaptureSourceProperty:*MEMORY[0x1E6990688] withValue:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", *(a1 + 40))}];
  if (!result)
  {
    *(*(a1 + 32) + 920) = *(a1 + 40);
  }

  return result;
}

- (void)_setConnected:(BOOL)a3
{
  v4 = a3 && [(AVCaptureFigVideoDevice *)self _cameraAccessIsEnabled];
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  devicePropsQueue = self->_devicePropsQueue;
  v9 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__AVCaptureFigVideoDevice__setConnected___block_invoke;
  block[3] = &unk_1E7870248;
  block[4] = self;
  block[5] = v8;
  v7 = v4;
  dispatch_sync(devicePropsQueue, block);
  _Block_object_dispose(v8, 8);
}

uint64_t __41__AVCaptureFigVideoDevice__setConnected___block_invoke(uint64_t result)
{
  *(*(*(result + 40) + 8) + 24) = *(*(result + 32) + 961) != *(result + 48);
  if (*(*(*(result + 40) + 8) + 24) == 1)
  {
    *(*(result + 32) + 961) = *(result + 48);
  }

  return result;
}

- (BOOL)isHidden
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__AVCaptureFigVideoDevice_isHidden__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isReadyToUnhide
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__AVCaptureFigVideoDevice_isReadyToUnhide__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)unhide
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__AVCaptureFigVideoDevice_unhide__block_invoke;
  block[3] = &unk_1E7870040;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(devicePropsQueue, block);
  if (*(v8 + 24) == 1)
  {
    [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"hidden"];
    v4 = self->_devicePropsQueue;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __33__AVCaptureFigVideoDevice_unhide__block_invoke_2;
    v5[3] = &unk_1E786EC08;
    v5[4] = self;
    dispatch_sync(v4, v5);
    [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"hidden"];
  }

  _Block_object_dispose(&v7, 8);
}

uint64_t __33__AVCaptureFigVideoDevice_unhide__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) _setFigCaptureSourceProperty:*MEMORY[0x1E6990730] withValue:MEMORY[0x1E695E110]];
  if (!result)
  {
    *(*(a1 + 32) + 963) = 0;
  }

  return result;
}

- (BOOL)isFocusModeSupported:(int64_t)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  v5 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E6990180], v3];

  return [v5 BOOLValue];
}

- (int)_setFocusWithMode:(int64_t)a3 lensPosition:(float)a4 requestID:(int)a5
{
  v5 = *&a5;
  if (!_FigIsCurrentDispatchQueue())
  {
    [AVCaptureFigVideoDevice _setFocusWithMode:lensPosition:requestID:];
  }

  v9 = [MEMORY[0x1E695DF90] dictionary];
  v10 = v9;
  if (a3)
  {
    if (a3 > 2)
    {
      goto LABEL_18;
    }

    v11 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [v10 setObject:v11 forKeyedSubscript:*MEMORY[0x1E69903C8]];
    if ([(AVCaptureFigVideoDevice *)self isAutoFocusRangeRestrictionSupported])
    {
      v12 = [MEMORY[0x1E696AD98] numberWithInteger:self->_autoFocusRangeRestriction];
      [v10 setObject:v12 forKeyedSubscript:*MEMORY[0x1E69903D8]];
    }

    if ([(AVCaptureFigVideoDevice *)self isSmoothAutoFocusSupported])
    {
      v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_smoothAutoFocusEnabled];
      [v10 setObject:v13 forKeyedSubscript:*MEMORY[0x1E69903F0]];
    }

    if ([(AVCaptureFigVideoDevice *)self isFocusPointOfInterestSupported])
    {
      v14 = fvd_cgRectDictionaryForRectOfInterest(self->_focusRectOfInterest.origin.x, self->_focusRectOfInterest.origin.y, self->_focusRectOfInterest.size.width, self->_focusRectOfInterest.size.height);
      if (!v14 || (v15 = v14, self->_isDefaultFocusRectOfInterest))
      {
        [(AVCaptureFigVideoDevice *)self _defaultRectForFocusPointOfInterest:a3 focusMode:self->_focusPointOfInterest.x, self->_focusPointOfInterest.y];
        v15 = fvd_cgRectDictionaryForRectOfInterest(v16, v17, v18, v19);
      }

      [v10 setObject:v15 forKeyedSubscript:*MEMORY[0x1E69903E0]];
    }

    v20 = [MEMORY[0x1E696AD98] numberWithInt:*&self->_torchAvailable];
    v21 = MEMORY[0x1E69903C0];
  }

  else
  {
    [v9 setObject:&unk_1F1CEA0D0 forKeyedSubscript:*MEMORY[0x1E69903C8]];
    *&v22 = a4;
    v23 = [MEMORY[0x1E696AD98] numberWithFloat:v22];
    [v10 setObject:v23 forKeyedSubscript:*MEMORY[0x1E69903D0]];
    if (!v5)
    {
      goto LABEL_18;
    }

    v20 = [MEMORY[0x1E696AD98] numberWithInt:v5];
    v21 = MEMORY[0x1E69903E8];
  }

  [v10 setObject:v20 forKeyedSubscript:*v21];
LABEL_18:
  v24 = *MEMORY[0x1E6990700];

  return [(AVCaptureFigVideoDevice *)self _setFigCaptureSourceProperty:v24 withValue:v10];
}

- (void)setFocusMode:(int64_t)a3
{
  if ([(AVCaptureFigVideoDevice *)self isFocusModeSupported:?]&& (a3 == 2 || !self->_cinematicVideoEnabled))
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x4010000000;
    v19[3] = &unk_1A92DB249;
    v8 = *(MEMORY[0x1E695F050] + 16);
    v20 = *MEMORY[0x1E695F050];
    v21 = v8;
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    devicePropsQueue = self->_devicePropsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__AVCaptureFigVideoDevice_setFocusMode___block_invoke;
    block[3] = &unk_1E7870270;
    block[4] = self;
    block[5] = &v22;
    block[7] = &v15;
    block[8] = a3;
    block[6] = v19;
    dispatch_sync(devicePropsQueue, block);
    if (*(v16 + 24) == 1)
    {
      [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"focusRectOfInterest"];
      v10 = self->_devicePropsQueue;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __40__AVCaptureFigVideoDevice_setFocusMode___block_invoke_2;
      v13[3] = &unk_1E786FEE0;
      v13[4] = self;
      v13[5] = v19;
      dispatch_sync(v10, v13);
      [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"focusRectOfInterest"];
    }

    if (*(v23 + 6) == -16452)
    {
      v11 = MEMORY[0x1E695DF30];
      objc_opt_class();
      v12 = [v11 exceptionWithName:*MEMORY[0x1E695D920] reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
      if (AVCaptureShouldThrowForAPIViolations())
      {
        objc_exception_throw(v12);
      }

      NSLog(&cfstr_SuppressingExc.isa, v12);
    }

    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(v19, 8);
    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
    objc_opt_class();
    v7 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v7);
    }

    NSLog(&cfstr_SuppressingExc.isa, v7);
  }
}

uint64_t __40__AVCaptureFigVideoDevice_setFocusMode___block_invoke(uint64_t a1, double a2)
{
  LODWORD(a2) = 2139095039;
  result = [*(a1 + 32) _setFocusWithMode:*(a1 + 64) lensPosition:0 requestID:a2];
  *(*(*(a1 + 40) + 8) + 24) = result;
  if (!*(*(*(a1 + 40) + 8) + 24))
  {
    *(*(a1 + 32) + 400) = *(a1 + 64);
    [*(a1 + 32) _defaultRectForFocusPointOfInterest:*(*(a1 + 32) + 400) focusMode:{*(*(a1 + 32) + 408), *(*(a1 + 32) + 416)}];
    v4 = *(*(a1 + 48) + 8);
    v4[4] = v5;
    v4[5] = v6;
    v4[6] = v7;
    v4[7] = v8;
    result = CGRectEqualToRect(*(*(a1 + 32) + 440), *(*(*(a1 + 48) + 8) + 32));
    *(*(*(a1 + 56) + 8) + 24) = result ^ 1;
  }

  return result;
}

__n128 __40__AVCaptureFigVideoDevice_setFocusMode___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32) + 440;
  v2 = *(*(a1 + 40) + 8);
  result = *(v2 + 48);
  *v1 = *(v2 + 32);
  *(v1 + 16) = result;
  *(*(a1 + 32) + 472) = 1;
  return result;
}

- (void)setFocusPointOfInterest:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([(AVCaptureFigVideoDevice *)self isLockedForConfiguration])
  {
    if ([(AVCaptureFigVideoDevice *)self isFocusPointOfInterestSupported])
    {
      v21[0] = 0;
      v21[1] = v21;
      v21[2] = 0x4010000000;
      v21[3] = &unk_1A92DB249;
      v22 = 0u;
      v23 = 0u;
      v17 = 0;
      v18 = &v17;
      v19 = 0x2020000000;
      v20 = 0;
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = 0;
      devicePropsQueue = self->_devicePropsQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __51__AVCaptureFigVideoDevice_setFocusPointOfInterest___block_invoke;
      block[3] = &unk_1E7870298;
      block[4] = self;
      block[5] = v21;
      *&block[8] = x;
      *&block[9] = y;
      block[6] = &v17;
      block[7] = &v13;
      dispatch_sync(devicePropsQueue, block);
      if (*(v14 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"focusRectOfInterest"];
      }

      if ((v18[3] & 1) != 0 || *(v14 + 24) == 1)
      {
        v7 = self->_devicePropsQueue;
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __51__AVCaptureFigVideoDevice_setFocusPointOfInterest___block_invoke_2;
        v11[3] = &unk_1E7870298;
        v11[4] = self;
        v11[5] = &v17;
        *&v11[8] = x;
        *&v11[9] = y;
        v11[6] = &v13;
        v11[7] = v21;
        dispatch_sync(v7, v11);
        if (v14[3])
        {
          [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"focusRectOfInterest"];
        }
      }

      _Block_object_dispose(&v13, 8);
      _Block_object_dispose(&v17, 8);
      _Block_object_dispose(v21, 8);
      return;
    }

    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    objc_opt_class();
  }

  else
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D920];
    objc_opt_class();
  }

  v10 = [v8 exceptionWithName:v9 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v10);
  }

  NSLog(&cfstr_SuppressingExc.isa, v10);
}

BOOL __51__AVCaptureFigVideoDevice_setFocusPointOfInterest___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _defaultRectForFocusPointOfInterest:*(*(a1 + 32) + 400) focusMode:{*(a1 + 64), *(a1 + 72)}];
  v2 = *(*(a1 + 40) + 8);
  v2[4] = v3;
  v2[5] = v4;
  v2[6] = v5;
  v2[7] = v6;
  v7 = *(*(a1 + 32) + 408) != *(a1 + 64);
  if (*(*(a1 + 32) + 416) != *(a1 + 72))
  {
    v7 = 1;
  }

  *(*(*(a1 + 48) + 8) + 24) = v7;
  result = CGRectEqualToRect(*(*(a1 + 32) + 440), *(*(*(a1 + 40) + 8) + 32));
  *(*(*(a1 + 56) + 8) + 24) = !result;
  return result;
}

__n128 __51__AVCaptureFigVideoDevice_setFocusPointOfInterest___block_invoke_2(__n128 *a1)
{
  if (*(*(a1[2].n128_u64[1] + 8) + 24) == 1)
  {
    result = a1[4];
    *(a1[2].n128_u64[0] + 408) = result;
  }

  if (*(*(a1[3].n128_u64[0] + 8) + 24) == 1)
  {
    v2 = a1[2].n128_u64[0] + 440;
    v3 = *(a1[3].n128_u64[1] + 8);
    result = *(v3 + 48);
    *v2 = *(v3 + 32);
    *(v2 + 16) = result;
    *(a1[2].n128_u64[0] + 472) = 1;
  }

  return result;
}

- (BOOL)isFocusRectOfInterestSupported
{
  v2 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E6990188]];

  return [v2 BOOLValue];
}

- (CGSize)minFocusRectOfInterestSize
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3010000000;
  v12 = 0;
  v13 = 0;
  v11 = &unk_1A92DB249;
  devicePropsQueue = self->_devicePropsQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__AVCaptureFigVideoDevice_minFocusRectOfInterestSize__block_invoke;
  v7[3] = &unk_1E7870040;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(devicePropsQueue, v7);
  v3 = v9[4];
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);
  v5 = v3;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

__n128 __53__AVCaptureFigVideoDevice_minFocusRectOfInterestSize__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 424);
  *(*(*(a1 + 40) + 8) + 32) = result;
  return result;
}

- (CGSize)_minFocusRectOfInterestSizeForFormat:(id)a3
{
  v4 = 0.0;
  if (-[AVCaptureFigVideoDevice isFocusPointOfInterestSupported](self, "isFocusPointOfInterestSupported") && (v5 = [a3 sensorDimensions], v5 >= 321))
  {
    v6 = 0.0;
    if (SHIDWORD(v5) >= 321)
    {
      v6 = (320.0 / v5);
      v4 = (320.0 / HIDWORD(v5));
    }
  }

  else
  {
    v6 = 0.0;
  }

  v7 = v4;
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGRect)focusRectOfInterest
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x4010000000;
  v15 = &unk_1A92DB249;
  v16 = 0u;
  v17 = 0u;
  devicePropsQueue = self->_devicePropsQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __46__AVCaptureFigVideoDevice_focusRectOfInterest__block_invoke;
  v11[3] = &unk_1E7870040;
  v11[4] = self;
  v11[5] = &v12;
  dispatch_sync(devicePropsQueue, v11);
  v3 = v13[4];
  v4 = v13[5];
  v5 = v13[6];
  v6 = v13[7];
  _Block_object_dispose(&v12, 8);
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

__n128 __46__AVCaptureFigVideoDevice_focusRectOfInterest__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  result = *(*(a1 + 32) + 456);
  *(v1 + 32) = *(*(a1 + 32) + 440);
  *(v1 + 48) = result;
  return result;
}

- (void)setFocusRectOfInterest:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(AVCaptureFigVideoDevice *)self isLockedForConfiguration])
  {
    if ([(AVCaptureFigVideoDevice *)self isFocusPointOfInterestSupported]&& x >= 0.0 && y >= 0.0 && width >= 0.0 && height >= 0.0 && x + width <= 1.0 && y + height <= 1.0)
    {
      v30 = 0;
      v31 = &v30;
      v32 = 0x3010000000;
      v34 = 0;
      v35 = 0;
      v33 = &unk_1A92DB249;
      v29[0] = 0;
      v29[1] = v29;
      v29[2] = 0x3010000000;
      v29[4] = 0;
      v29[5] = 0;
      v29[3] = &unk_1A92DB249;
      v26[0] = 0;
      v26[1] = v26;
      v26[2] = 0x4010000000;
      v26[3] = &unk_1A92DB249;
      v27 = 0u;
      v28 = 0u;
      v22 = 0;
      v23 = &v22;
      v24 = 0x2020000000;
      v25 = 0;
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v21 = 0;
      devicePropsQueue = self->_devicePropsQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __50__AVCaptureFigVideoDevice_setFocusRectOfInterest___block_invoke;
      block[3] = &unk_1E78702C0;
      block[4] = self;
      block[5] = &v30;
      *&block[10] = x;
      *&block[11] = y;
      *&block[12] = width;
      *&block[13] = height;
      block[6] = v29;
      block[7] = v26;
      block[8] = &v22;
      block[9] = &v18;
      dispatch_sync(devicePropsQueue, block);
      if (width >= v31[4] && height >= v31[5])
      {
        if (*(v23 + 24) == 1 && ([(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"focusPointOfInterest"], (v23[3] & 1) != 0) || *(v19 + 24) == 1)
        {
          v15 = self->_devicePropsQueue;
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __50__AVCaptureFigVideoDevice_setFocusRectOfInterest___block_invoke_2;
          v16[3] = &unk_1E78702E8;
          v16[4] = self;
          v16[5] = &v22;
          v16[6] = v29;
          v16[7] = &v18;
          *&v16[9] = x;
          *&v16[10] = y;
          *&v16[11] = width;
          *&v16[12] = height;
          v16[8] = v26;
          dispatch_sync(v15, v16);
          if (v19[3])
          {
            [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"focusPointOfInterest"];
          }
        }
      }

      else
      {
        v10 = MEMORY[0x1E695DF30];
        objc_opt_class();
        [MEMORY[0x1E696AEC0] stringWithFormat:@"Rectangle size must be at least the size returned by minFocusRectOfInterestSize(%lf, %lf)", *(v31 + 4), *(v31 + 5)];
        v11 = [v10 exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
        if (AVCaptureShouldThrowForAPIViolations())
        {
          objc_exception_throw(v11);
        }

        NSLog(&cfstr_SuppressingExc.isa, v11);
      }

      _Block_object_dispose(&v18, 8);
      _Block_object_dispose(&v22, 8);
      _Block_object_dispose(v26, 8);
      _Block_object_dispose(v29, 8);
      _Block_object_dispose(&v30, 8);
      return;
    }

    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    objc_opt_class();
  }

  else
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D920];
    objc_opt_class();
  }

  v14 = [v12 exceptionWithName:v13 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v14);
  }

  NSLog(&cfstr_SuppressingExc.isa, v14);
}

BOOL __50__AVCaptureFigVideoDevice_setFocusRectOfInterest___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 32) = *(*(a1 + 32) + 424);
  MidX = CGRectGetMidX(*(a1 + 80));
  MidY = CGRectGetMidY(*(a1 + 80));
  v4 = *(*(a1 + 48) + 8);
  *(v4 + 32) = MidX;
  *(v4 + 40) = MidY;
  [*(a1 + 32) _defaultRectForFocusPointOfInterest:*(*(a1 + 32) + 400) focusMode:{*(*(*(a1 + 48) + 8) + 32), *(*(*(a1 + 48) + 8) + 40)}];
  v5 = *(*(a1 + 56) + 8);
  v5[4] = v6;
  v5[5] = v7;
  v5[6] = v8;
  v5[7] = v9;
  v10 = *(*(a1 + 48) + 8);
  v11 = *(*(a1 + 32) + 408) != *(v10 + 32);
  if (*(*(a1 + 32) + 416) != *(v10 + 40))
  {
    v11 = 1;
  }

  *(*(*(a1 + 64) + 8) + 24) = v11;
  result = CGRectEqualToRect(*(*(a1 + 32) + 440), *(a1 + 80));
  *(*(*(a1 + 72) + 8) + 24) = !result;
  return result;
}

uint64_t __50__AVCaptureFigVideoDevice_setFocusRectOfInterest___block_invoke_2(uint64_t result)
{
  v1 = result;
  if (*(*(*(result + 40) + 8) + 24) == 1)
  {
    *(*(result + 32) + 408) = *(*(*(result + 48) + 8) + 32);
  }

  if (*(*(*(result + 56) + 8) + 24) == 1)
  {
    v2 = (*(result + 32) + 440);
    v3 = *(result + 88);
    *v2 = *(result + 72);
    v2[1] = v3;
    *&v3 = *(result + 72);
    v4 = *(result + 80);
    v5 = *(result + 88);
    v6 = *(result + 96);
    result = CGRectEqualToRect(*&v3, *(*(*(result + 64) + 8) + 32));
    *(*(v1 + 32) + 472) = result;
  }

  return result;
}

- (CGRect)defaultRectForFocusPointOfInterest:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([(AVCaptureFigVideoDevice *)self isFocusRectOfInterestSupported])
  {
    [(AVCaptureFigVideoDevice *)self _defaultRectForFocusPointOfInterest:self->_focusMode focusMode:x, y];
  }

  else
  {
    v6 = *MEMORY[0x1E695F050];
    v7 = *(MEMORY[0x1E695F050] + 8);
    v8 = *(MEMORY[0x1E695F050] + 16);
    v9 = *(MEMORY[0x1E695F050] + 24);
  }

  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGRect)_defaultRectForFocusPointOfInterest:(CGPoint)a3 focusMode:(int64_t)a4
{
  y = a3.y;
  x = a3.x;
  v16.width = 0.0;
  v16.height = 0.0;
  v7 = MEMORY[0x1E6990128];
  if (a4 != 2)
  {
    v7 = MEMORY[0x1E6990118];
  }

  if (a3.y != 0.5 || a3.x != 0.5)
  {
    v7 = MEMORY[0x1E6990120];
  }

  CGSizeMakeWithDictionaryRepresentation([(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*v7, *&v16.width, *&v16.height], &v16);
  [(AVCaptureFigVideoDevice *)self _updateRectOfInterestSizeForSensorOrientationAndDynamicAspectRatio:v16.width, v16.height];
  width = self->_minFocusRectOfInterestSize.width;
  height = self->_minFocusRectOfInterestSize.height;
  v13 = v9 < width;
  if (v10 < height)
  {
    v13 = 1;
  }

  if (!v13)
  {
    height = v10;
    width = v9;
  }

  v14 = fmax(x - width * 0.5, 0.0);
  if (v14 >= 1.0 - width)
  {
    v14 = 1.0 - width;
  }

  v15 = fmax(y - height * 0.5, 0.0);
  if (v15 >= 1.0 - height)
  {
    v15 = 1.0 - height;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)_setAdjustingFocus:(BOOL)a3
{
  devicePropsQueue = self->_devicePropsQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__AVCaptureFigVideoDevice__setAdjustingFocus___block_invoke;
  v4[3] = &unk_1E786EE40;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(devicePropsQueue, v4);
}

- (void)setAutoFocusRangeRestriction:(int64_t)a3
{
  if ([(AVCaptureFigVideoDevice *)self isLockedForConfiguration])
  {
    if ([(AVCaptureFigVideoDevice *)self isAutoFocusRangeRestrictionSupported])
    {
      self->_autoFocusRangeRestriction = a3;
      return;
    }

    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
    objc_opt_class();
  }

  else
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D920];
    objc_opt_class();
  }

  v7 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v7);
  }

  NSLog(&cfstr_SuppressingExc.isa, v7);
}

- (BOOL)isLockingFocusWithCustomLensPositionSupported
{
  v2 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E69901D8]];

  return [v2 BOOLValue];
}

- (void)setFocusModeLockedWithLensPosition:(float)a3 completionHandler:(id)a4
{
  if (![(AVCaptureFigVideoDevice *)self isFocusModeSupported:0]|| self->_cinematicVideoEnabled)
  {
    goto LABEL_3;
  }

  LODWORD(v7) = 2139095039;
  if (a3 != 3.4028e38)
  {
    if (![(AVCaptureFigVideoDevice *)self isLockingFocusWithCustomLensPositionSupported])
    {
LABEL_3:
      v8 = MEMORY[0x1E695DF30];
      v9 = *MEMORY[0x1E695D940];
      objc_opt_class();
LABEL_4:
      v10 = [v8 exceptionWithName:v9 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
      if (AVCaptureShouldThrowForAPIViolations())
      {
        objc_exception_throw(v10);
      }

      NSLog(&cfstr_SuppressingExc.isa, v10);
      return;
    }

    if (a3 < 0.0 || a3 > 1.0)
    {
      v8 = MEMORY[0x1E695DF30];
      v9 = *MEMORY[0x1E695DA20];
      objc_opt_class();
      goto LABEL_4;
    }
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  devicePropsQueue = self->_devicePropsQueue;
  v23 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__AVCaptureFigVideoDevice_setFocusModeLockedWithLensPosition_completionHandler___block_invoke;
  block[3] = &unk_1E7870310;
  block[4] = self;
  block[5] = &v20;
  block[6] = 0;
  dispatch_sync(devicePropsQueue, block);
  if (*(v21 + 24) == 1)
  {
    [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"focusMode"];
  }

  v12 = self->_devicePropsQueue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __80__AVCaptureFigVideoDevice_setFocusModeLockedWithLensPosition_completionHandler___block_invoke_2;
  v17[3] = &unk_1E7870338;
  v17[4] = self;
  v17[5] = a4;
  v17[6] = &v24;
  v17[7] = 0;
  v18 = a3;
  dispatch_sync(v12, v17);
  v13 = *(v25 + 6);
  if (v13 == -16452)
  {
    v14 = MEMORY[0x1E695DF30];
    objc_opt_class();
    v15 = [v14 exceptionWithName:*MEMORY[0x1E695D920] reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v15);
    }

    NSLog(&cfstr_SuppressingExc.isa, v15);
  }

  else
  {
    if (*(v21 + 24) == 1)
    {
      [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"focusMode"];
      v13 = *(v25 + 6);
    }

    if (v13)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __80__AVCaptureFigVideoDevice_setFocusModeLockedWithLensPosition_completionHandler___block_invoke_3;
      v16[3] = &unk_1E786EC08;
      v16[4] = self;
      [(AVCaptureFigVideoDevice *)self _performBlockOnMainThread:v16];
    }
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
}

uint64_t __80__AVCaptureFigVideoDevice_setFocusModeLockedWithLensPosition_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [AVCaptureDeviceControlRequest deviceControlRequestWithCompletionBlock:*(a1 + 40)];
  [*(*(a1 + 32) + 832) enqueueRequest:v2];
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = [(AVCaptureDeviceControlRequest *)v2 requestID];
  LODWORD(v7) = v5;
  *(*(*(a1 + 48) + 8) + 24) = [v3 _setFocusWithMode:v4 lensPosition:v6 requestID:v7];
  result = [(AVCaptureDeviceControlRequest *)v2 setErrorCode:*(*(*(a1 + 48) + 8) + 24)];
  if (!*(*(*(a1 + 48) + 8) + 24))
  {
    *(*(a1 + 32) + 400) = *(a1 + 56);
    [*(a1 + 32) _defaultRectForFocusPointOfInterest:*(*(a1 + 32) + 400) focusMode:{*(*(a1 + 32) + 408), *(*(a1 + 32) + 416)}];
    result = CGRectEqualToRect(v9, *(*(a1 + 32) + 440));
    *(*(a1 + 32) + 472) = result;
  }

  return result;
}

- (void)setSmoothAutoFocusEnabled:(BOOL)a3
{
  if ([(AVCaptureFigVideoDevice *)self isLockedForConfiguration])
  {
    if ([(AVCaptureFigVideoDevice *)self isSmoothAutoFocusSupported])
    {
      self->_smoothAutoFocusEnabled = a3;
      return;
    }

    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
    objc_opt_class();
  }

  else
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D920];
    objc_opt_class();
  }

  v7 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v7);
  }

  NSLog(&cfstr_SuppressingExc.isa, v7);
}

- (BOOL)automaticallyAdjustsFaceDrivenAutoFocusEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __73__AVCaptureFigVideoDevice_automaticallyAdjustsFaceDrivenAutoFocusEnabled__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setAutomaticallyAdjustsFaceDrivenAutoFocusEnabled:(BOOL)a3
{
  if ([(AVCaptureFigVideoDevice *)self isLockedForConfiguration])
  {
    if ([(AVCaptureFigVideoDevice *)self isFocusModeSupported:2])
    {
      devicePropsQueue = self->_devicePropsQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __77__AVCaptureFigVideoDevice_setAutomaticallyAdjustsFaceDrivenAutoFocusEnabled___block_invoke;
      block[3] = &unk_1E786EE40;
      block[4] = self;
      v10 = a3;
      dispatch_sync(devicePropsQueue, block);
      return;
    }

    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    objc_opt_class();
  }

  else
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D920];
    objc_opt_class();
  }

  v8 = [v6 exceptionWithName:v7 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v8);
  }

  NSLog(&cfstr_SuppressingExc.isa, v8);
}

- (BOOL)isFaceDrivenAutoFocusEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__AVCaptureFigVideoDevice_isFaceDrivenAutoFocusEnabled__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setFaceDrivenAutoFocusEnabled:(BOOL)a3
{
  if ([(AVCaptureFigVideoDevice *)self isLockedForConfiguration])
  {
    if ([(AVCaptureFigVideoDevice *)self isFocusModeSupported:2]&& ![(AVCaptureFigVideoDevice *)self automaticallyAdjustsFaceDrivenAutoFocusEnabled])
    {
      devicePropsQueue = self->_devicePropsQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __57__AVCaptureFigVideoDevice_setFaceDrivenAutoFocusEnabled___block_invoke;
      block[3] = &unk_1E786EE40;
      v10 = a3;
      block[4] = self;
      dispatch_sync(devicePropsQueue, block);
      return;
    }

    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
    objc_opt_class();
  }

  else
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D920];
    objc_opt_class();
  }

  v7 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v7);
  }

  NSLog(&cfstr_SuppressingExc.isa, v7);
}

uint64_t __57__AVCaptureFigVideoDevice_setFaceDrivenAutoFocusEnabled___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 968) & 0xFFFFFFFD) == 1)
  {
    v2 = 3;
  }

  else
  {
    v2 = 2;
  }

  if (*(result + 40))
  {
    v3 = v2;
  }

  else
  {
    v3 = (*(v1 + 968) & 0xFFFFFFFD) == 1;
  }

  *(v1 + 968) = v3;
  return result;
}

- (float)focalLength
{
  v2 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E6990170]];

  [v2 floatValue];
  return result;
}

- (float)lensAperture
{
  v2 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E69901C0]];

  [v2 floatValue];
  return result;
}

- (void)_setAdjustingExposure:(BOOL)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  devicePropsQueue = self->_devicePropsQueue;
  v10 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__AVCaptureFigVideoDevice__setAdjustingExposure___block_invoke;
  block[3] = &unk_1E7870360;
  v6 = a3;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(devicePropsQueue, block);
  if (*(v8 + 24) == 1 && [(AVCaptureFigVideoDevice *)self lockForConfiguration:0])
  {
    [(AVCaptureFigVideoDevice *)self setExposureMode:0];
    [(AVCaptureFigVideoDevice *)self unlockForConfiguration];
  }

  _Block_object_dispose(&v7, 8);
}

uint64_t __49__AVCaptureFigVideoDevice__setAdjustingExposure___block_invoke(uint64_t result)
{
  v1 = *(result + 48);
  *(*(result + 32) + 708) = v1;
  if (*(*(result + 32) + 709) == 1 && (v1 & 1) == 0)
  {
    *(*(*(result + 40) + 8) + 24) = 1;
    *(*(result + 32) + 709) = 0;
  }

  return result;
}

- (BOOL)isExposureModeSupported:(int64_t)a3
{
  if (a3 > 3)
  {
    return 0;
  }

  v5 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:**(&unk_1E7870A00 + a3), v3];

  return [v5 BOOLValue];
}

- (int)_setExposureWithMode:(int64_t)a3 duration:(id *)a4 ISO:(float)a5 requestID:(int)a6 newMaxFrameDuration:(id *)a7
{
  v8 = *&a6;
  if (a7)
  {
    *a7 = **&MEMORY[0x1E6960C70];
  }

  if (!_FigIsCurrentDispatchQueue())
  {
    [AVCaptureFigVideoDevice _setExposureWithMode:duration:ISO:requestID:newMaxFrameDuration:];
  }

  if (a3 != 1)
  {
    if (a3)
    {
      v13 = 0;
      goto LABEL_11;
    }

    if (self->_exposureMode != 3)
    {
      v13 = 0;
      a3 = 0;
      goto LABEL_11;
    }
  }

  v13 = 1;
  a3 = 2;
LABEL_11:
  if (a3 != 3 && self->_exposureMode == 3)
  {
    time = self->_activeMaxFrameDuration;
    FigCaptureFrameRateFromCMTime();
    v14 = FigCaptureFrameRateAsData();
    time = self->_activeMinFrameDuration;
    FigCaptureFrameRateFromCMTime();
    v15 = FigCaptureFrameRateAsData();
    [(AVCaptureFigVideoDevice *)self _setFigCaptureSourceProperty:*MEMORY[0x1E69905C0] withValue:v14 cacheOnly:self->_cachesFigCaptureSourceConfigurationChanges];
    [(AVCaptureFigVideoDevice *)self _setFigCaptureSourceProperty:*MEMORY[0x1E69905B8] withValue:v15 cacheOnly:self->_cachesFigCaptureSourceConfigurationChanges];
  }

  v16 = [MEMORY[0x1E695DF90] dictionary];
  v17 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v16 setObject:v17 forKeyedSubscript:*MEMORY[0x1E6990370]];
  if (a3 != 3)
  {
    if (a3 != 2)
    {
      goto LABEL_30;
    }

    if ([(AVCaptureFigVideoDevice *)self isExposurePointOfInterestSupported])
    {
      v18 = fvd_cgRectDictionaryForRectOfInterest(self->_exposureRectOfInterest.origin.x, self->_exposureRectOfInterest.origin.y, self->_exposureRectOfInterest.size.width, self->_exposureRectOfInterest.size.height);
      if (v18 && !self->_isDefaultExposureRectOfInterest)
      {
        v23 = v18;
        v24 = 0;
      }

      else
      {
        [(AVCaptureFigVideoDevice *)self _defaultRectForExposurePointOfInterest:self->_exposurePointOfInterest.x, self->_exposurePointOfInterest.y];
        v23 = fvd_cgRectDictionaryForRectOfInterest(v19, v20, v21, v22);
        v24 = 1;
      }

      [v16 setObject:v23 forKeyedSubscript:*MEMORY[0x1E6990378]];
      v36 = [MEMORY[0x1E696AD98] numberWithBool:v24];
      [v16 setObject:v36 forKeyedSubscript:*MEMORY[0x1E6990368]];
    }

    v34 = [MEMORY[0x1E696AD98] numberWithInt:*&self->_torchAvailable];
    v35 = MEMORY[0x1E69903C0];
    goto LABEL_29;
  }

  v25 = *MEMORY[0x1E695E480];
  time = *a4;
  v26 = CMTimeCopyAsDictionary(&time, v25);
  [v16 setObject:v26 forKeyedSubscript:*MEMORY[0x1E6990358]];

  var3 = a4->var3;
  *&self->_manualWhiteBalanceControlRequests = *&a4->var0;
  *&self->_lastCustomExposureDuration.timescale = var3;
  value = self->_activeMaxFrameDuration.value;
  timescale = self->_activeMaxFrameDuration.timescale;
  v39 = *&self->_activeMaxFrameDuration.flags;
  epoch_high = HIDWORD(self->_activeMaxFrameDuration.epoch);
  time = *a4;
  memset(&v38, 0, sizeof(v38));
  if (CMTimeCompare(&time, &v38))
  {
    time = *a4;
    v38.value = value;
    v38.timescale = timescale;
    *&v38.flags = v39;
    HIDWORD(v38.epoch) = epoch_high;
    if (CMTimeCompare(&time, &v38) >= 1)
    {
      CMTimeMake(&time, 1, vcvtmd_s64_f64(a4->var1 / a4->var0));
      value = time.value;
      timescale = time.timescale;
      v39 = *&time.flags;
      epoch_high = HIDWORD(time.epoch);
      if (a7)
      {
        a7->var0 = time.value;
        a7->var1 = timescale;
        *&a7->var2 = v39;
        HIDWORD(a7->var3) = epoch_high;
      }
    }
  }

  v30 = [MEMORY[0x1E696AD98] numberWithDouble:timescale / value];
  [v16 setObject:v30 forKeyedSubscript:*MEMORY[0x1E6990350]];
  v31 = [MEMORY[0x1E696AD98] numberWithDouble:self->_activeMinFrameDuration.timescale / self->_activeMinFrameDuration.value];
  [v16 setObject:v31 forKeyedSubscript:*MEMORY[0x1E6990348]];
  *&v32 = a5;
  v33 = [MEMORY[0x1E696AD98] numberWithFloat:v32];
  [v16 setObject:v33 forKeyedSubscript:*MEMORY[0x1E6990360]];
  *&self->_lastCustomExposureDuration.epoch = a5;
  if (v8)
  {
    v34 = [MEMORY[0x1E696AD98] numberWithInt:v8];
    v35 = MEMORY[0x1E6990380];
LABEL_29:
    [v16 setObject:v34 forKeyedSubscript:*v35];
  }

LABEL_30:
  result = [(AVCaptureFigVideoDevice *)self _setFigCaptureSourceProperty:*MEMORY[0x1E69906B8] withValue:v16];
  if (!result)
  {
    BYTE5(self->_activeMaxExposureDurationClientOverride.epoch) = v13;
  }

  return result;
}

- (void)setExposureMode:(int64_t)a3
{
  if ([(AVCaptureFigVideoDevice *)self isExposureModeSupported:?])
  {
    if (a3 == 3)
    {
      v5 = [AVCaptureDeviceControlRequest deviceControlRequestWithCompletionBlock:0];
      [(AVCaptureDeviceControlRequestQueue *)self->_manualFocusControlRequests enqueueRequest:v5];
    }

    else
    {
      v5 = 0;
    }

    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    devicePropsQueue = self->_devicePropsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__AVCaptureFigVideoDevice_setExposureMode___block_invoke;
    block[3] = &unk_1E7870388;
    block[6] = &v15;
    block[7] = a3;
    block[4] = self;
    block[5] = v5;
    dispatch_sync(devicePropsQueue, block);
    v10 = *(v16 + 6);
    if (v10 == -16452)
    {
      v11 = MEMORY[0x1E695DF30];
      objc_opt_class();
      v12 = [v11 exceptionWithName:*MEMORY[0x1E695D920] reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
      if (AVCaptureShouldThrowForAPIViolations())
      {
        objc_exception_throw(v12);
      }

      NSLog(&cfstr_SuppressingExc.isa, v12);
    }

    else if (v5 && v10)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __43__AVCaptureFigVideoDevice_setExposureMode___block_invoke_2;
      v13[3] = &unk_1E786EC08;
      v13[4] = self;
      [(AVCaptureFigVideoDevice *)self _performBlockOnMainThread:v13];
    }

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    objc_opt_class();
    v8 = [v6 exceptionWithName:v7 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v8);
    }

    NSLog(&cfstr_SuppressingExc.isa, v8);
  }
}

void *__43__AVCaptureFigVideoDevice_setExposureMode___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) requestID];
  HIDWORD(v5) = HIDWORD(AVCaptureExposureDurationCurrent.value);
  v7 = *&AVCaptureExposureDurationCurrent.value;
  v8 = 0;
  LODWORD(v5) = 2139095039;
  *(*(*(a1 + 48) + 8) + 24) = [v3 _setExposureWithMode:v2 duration:&v7 ISO:v4 requestID:0 newMaxFrameDuration:v5];
  result = *(a1 + 40);
  if (result)
  {
    result = [result setErrorCode:*(*(*(a1 + 48) + 8) + 24)];
  }

  if (!*(*(*(a1 + 48) + 8) + 24))
  {
    *(*(a1 + 32) + 544) = *(a1 + 56);
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)exposureDuration
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3810000000;
  v20 = &unk_1A92DB249;
  v22 = 0;
  v21 = xmmword_1A92AB978;
  if ([(AVCaptureFigVideoDevice *)self _hasKeyValueObserversForHighFrequencyProperty:@"exposureDuration"])
  {
    devicePropsQueue = self->_devicePropsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__AVCaptureFigVideoDevice_exposureDuration__block_invoke;
    block[3] = &unk_1E7870040;
    block[4] = self;
    block[5] = &v17;
    dispatch_sync(devicePropsQueue, block);
  }

  time1 = *(v18 + 4);
  *&time2.value = xmmword_1A92AB978;
  time2.epoch = 0;
  if (!CMTimeCompare(&time1, &time2))
  {
    v6 = [(AVCaptureFigVideoDevice *)self _copyFigCaptureSourceProperty:*MEMORY[0x1E69906B0]];
    v7 = v6;
    if (v6)
    {
      CMTimeMakeFromDictionary(&v13, v6);
      *(v18 + 4) = v13;
    }

    else
    {
      if (self)
      {
        [(AVCaptureFigVideoDevice *)self activeVideoMinFrameDuration];
      }

      else
      {
        v11 = 0uLL;
        v12 = 0;
      }

      v8 = v18;
      *(v18 + 2) = v11;
      v8[6] = v12;
    }
  }

  v9 = v18;
  *&retstr->var0 = *(v18 + 2);
  retstr->var3 = v9[6];
  _Block_object_dispose(&v17, 8);
  return result;
}

__n128 __43__AVCaptureFigVideoDevice_exposureDuration__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  v2 = (*(a1 + 32) + 552);
  v3 = *(*(a1 + 32) + 568);
  result = *v2;
  v1[2] = *v2;
  v1[3].n128_u64[0] = v3;
  return result;
}

- (float)ISO
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = -1082130432;
  if ([(AVCaptureFigVideoDevice *)self _hasKeyValueObserversForHighFrequencyProperty:@"ISO"])
  {
    devicePropsQueue = self->_devicePropsQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __30__AVCaptureFigVideoDevice_ISO__block_invoke;
    v9[3] = &unk_1E7870040;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(devicePropsQueue, v9);
  }

  v4 = v11[6];
  if (v4 == -1.0)
  {
    v5 = [(AVCaptureFigVideoDevice *)self _copyFigCaptureSourceProperty:*MEMORY[0x1E6990738]];
    v6 = v5;
    if (v5)
    {
      [v5 floatValue];
      *(v11 + 6) = v7;

      v4 = v11[6];
    }

    else
    {
      v11[6] = 50.0;
      v4 = 50.0;
    }
  }

  _Block_object_dispose(&v10, 8);
  return v4;
}

float __30__AVCaptureFigVideoDevice_ISO__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 576);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setExposureModeCustomWithDuration:(id *)a3 ISO:(float)a4 completionHandler:(id)a5
{
  if (![(AVCaptureFigVideoDevice *)self isExposureModeSupported:3])
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    objc_opt_class();
LABEL_6:
    v13 = AVMethodExceptionReasonWithClassAndSelector();
    v14 = v11;
    v15 = v12;
LABEL_14:
    v18 = [v14 exceptionWithName:v15 reason:v13 userInfo:{0, *&v27, var1}];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v18);
    }

    NSLog(&cfstr_SuppressingExc.isa, v18);
    return;
  }

  v9 = [(AVCaptureFigVideoDevice *)self activeFormat];
  time1 = *a3;
  memset(&time2, 0, sizeof(time2));
  if (CMTimeCompare(&time1, &time2))
  {
    if (v9)
    {
      [v9 minExposureDuration];
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
    }

    time2 = *a3;
    if (CMTimeCompare(&time2, &time1) < 0)
    {
      goto LABEL_13;
    }

    if (v9)
    {
      [v9 maxExposureDuration];
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
    }

    time2 = *a3;
    if (CMTimeCompare(&time2, &time1) >= 1)
    {
LABEL_13:
      v16 = MEMORY[0x1E695DF30];
      v17 = *MEMORY[0x1E695DA20];
      objc_opt_class();
      v27 = *&a3->var0;
      var1 = a3->var1;
      v13 = AVMethodExceptionReasonWithClassAndSelector();
      v14 = v16;
      v15 = v17;
      goto LABEL_14;
    }
  }

  LODWORD(v10) = 2139095039;
  if (a4 != 3.4028e38)
  {
    [v9 minISO];
    if (v19 > a4 || ([v9 maxISO], v20 < a4))
    {
      v11 = MEMORY[0x1E695DF30];
      v12 = *MEMORY[0x1E695DA20];
      objc_opt_class();
      v27 = a4;
      goto LABEL_6;
    }
  }

  time2.value = 0;
  *&time2.timescale = &time2;
  time2.epoch = 0x2020000000;
  v46 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  time1.value = 0;
  *&time1.timescale = &time1;
  time1.epoch = 0x3810000000;
  v39 = *MEMORY[0x1E6960C70];
  v21 = *(MEMORY[0x1E6960C70] + 16);
  v38 = &unk_1A92DB249;
  v40 = v21;
  devicePropsQueue = self->_devicePropsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__AVCaptureFigVideoDevice_setExposureModeCustomWithDuration_ISO_completionHandler___block_invoke;
  block[3] = &unk_1E7870040;
  block[4] = self;
  block[5] = &v41;
  dispatch_sync(devicePropsQueue, block);
  if (*(v42 + 24) == 1)
  {
    [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"exposureMode"];
  }

  v23 = [AVCaptureDeviceControlRequest deviceControlRequestWithCompletionBlock:a5];
  [(AVCaptureDeviceControlRequestQueue *)self->_manualFocusControlRequests enqueueRequest:v23];
  v24 = self->_devicePropsQueue;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __83__AVCaptureFigVideoDevice_setExposureModeCustomWithDuration_ISO_completionHandler___block_invoke_2;
  v32[3] = &unk_1E78703B0;
  v33 = *&a3->var0;
  var3 = a3->var3;
  v35 = a4;
  v32[4] = self;
  v32[5] = v23;
  v32[6] = &time2;
  v32[7] = &time1;
  dispatch_sync(v24, v32);
  if (*(*&time2.timescale + 24) == -16452)
  {
    v25 = MEMORY[0x1E695DF30];
    objc_opt_class();
    v26 = [v25 exceptionWithName:*MEMORY[0x1E695D920] reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v26);
    }

    NSLog(&cfstr_SuppressingExc.isa, v26);
  }

  else
  {
    if (*(*&time1.timescale + 44))
    {
      v30 = *(*&time1.timescale + 32);
      v31 = *(*&time1.timescale + 48);
      [(AVCaptureFigVideoDevice *)self _setActiveVideoMaxFrameDurationInternal:&v30 isSettingExposureModeCustom:1];
    }

    if (*(v42 + 24) == 1)
    {
      [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"exposureMode"];
    }

    if (*(*&time2.timescale + 24))
    {
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __83__AVCaptureFigVideoDevice_setExposureModeCustomWithDuration_ISO_completionHandler___block_invoke_3;
      v29[3] = &unk_1E786EC08;
      v29[4] = self;
      [(AVCaptureFigVideoDevice *)self _performBlockOnMainThread:v29];
    }
  }

  _Block_object_dispose(&time1, 8);
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&time2, 8);
}

uint64_t __83__AVCaptureFigVideoDevice_setExposureModeCustomWithDuration_ISO_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 88);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) requestID];
  v5 = *(*(a1 + 56) + 8);
  v7 = *(a1 + 64);
  v8 = *(a1 + 80);
  *(*(*(a1 + 48) + 8) + 24) = [v3 _setExposureWithMode:3 duration:&v7 ISO:v4 requestID:v5 + 32 newMaxFrameDuration:{COERCE_DOUBLE(__PAIR64__(DWORD1(v7), v2))}];
  result = [*(a1 + 40) setErrorCode:*(*(*(a1 + 48) + 8) + 24)];
  if (!*(*(*(a1 + 48) + 8) + 24))
  {
    *(*(a1 + 32) + 544) = 3;
  }

  return result;
}

- (void)setExposureTargetBias:(float)a3 completionHandler:(id)a4
{
  v5 = a3;
  a3 = 3.4028e38;
  if (v5 == 3.4028e38 || ([(AVCaptureFigVideoDevice *)self minExposureTargetBias], v7 <= v5) && ([(AVCaptureFigVideoDevice *)self maxExposureTargetBias], v8 >= v5))
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    devicePropsQueue = self->_devicePropsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__AVCaptureFigVideoDevice_setExposureTargetBias_completionHandler___block_invoke;
    block[3] = &unk_1E78703D8;
    block[4] = self;
    block[5] = a4;
    v18 = v5;
    block[6] = &v19;
    block[7] = &v23;
    dispatch_sync(devicePropsQueue, block);
    v13 = *(v24 + 6);
    if (v13)
    {
      if (v13 == -16452)
      {
        v14 = MEMORY[0x1E695DF30];
        objc_opt_class();
        v15 = [v14 exceptionWithName:*MEMORY[0x1E695D920] reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
        if (AVCaptureShouldThrowForAPIViolations())
        {
          objc_exception_throw(v15);
        }

        NSLog(&cfstr_SuppressingExc.isa, v15);
        goto LABEL_12;
      }
    }

    else if (*(v20 + 24) != 1)
    {
LABEL_12:
      _Block_object_dispose(&v19, 8);
      _Block_object_dispose(&v23, 8);
      return;
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __67__AVCaptureFigVideoDevice_setExposureTargetBias_completionHandler___block_invoke_2;
    v16[3] = &unk_1E786EC08;
    v16[4] = self;
    [(AVCaptureFigVideoDevice *)self _performBlockOnMainThread:v16];
    goto LABEL_12;
  }

  v9 = MEMORY[0x1E695DF30];
  v10 = *MEMORY[0x1E695DA20];
  objc_opt_class();
  v11 = [v9 exceptionWithName:v10 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:{0, v5}];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v11);
  }

  NSLog(&cfstr_SuppressingExc.isa, v11);
}

uint64_t __67__AVCaptureFigVideoDevice_setExposureTargetBias_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[68] != 3)
  {
    v4 = [AVCaptureDeviceControlRequest deviceControlRequestWithCompletionBlock:*(a1 + 40)];
    v9[0] = *MEMORY[0x1E6990388];
    LODWORD(v7) = *(a1 + 64);
    v10[0] = [MEMORY[0x1E696AD98] numberWithFloat:{v7, v9[0]}];
    v9[1] = *MEMORY[0x1E6990390];
    v10[1] = [MEMORY[0x1E696AD98] numberWithInt:{-[AVCaptureDeviceControlRequest requestID](v4, "requestID")}];
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) _setFigCaptureSourceProperty:*MEMORY[0x1E69906C8] withValue:v8];
    [(AVCaptureDeviceControlRequest *)v4 setErrorCode:*(*(*(a1 + 56) + 8) + 24)];
    return [*(*(a1 + 32) + 848) enqueueRequest:v4];
  }

  result = [v2 isLockedForConfiguration];
  if (result)
  {
    v4 = [(AVCaptureDeviceControlRequest *)AVCaptureDeviceFakeBiasControlRequest deviceControlRequestWithCompletionBlock:*(a1 + 40)];
    LODWORD(v5) = *(a1 + 64);
    [(AVCaptureDeviceControlRequest *)v4 setFakeBias:v5];
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&v12, HostTimeClock);
    v11 = v12;
    [(AVCaptureDeviceControlRequest *)v4 setFakeBiasCompletionTime:&v11];
    *(*(*(a1 + 48) + 8) + 24) = 1;
    return [*(*(a1 + 32) + 848) enqueueRequest:v4];
  }

  *(*(*(a1 + 56) + 8) + 24) = -16452;
  return result;
}

- (float)exposureTargetOffset
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 2139095039;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v17[3] = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__AVCaptureFigVideoDevice_exposureTargetOffset__block_invoke;
  block[3] = &unk_1E78701D0;
  block[4] = self;
  block[5] = v17;
  block[6] = &v13;
  block[7] = &v18;
  dispatch_sync(devicePropsQueue, block);
  if (v19[6] == 3.4028e38 && [(AVCaptureFigVideoDevice *)self _hasKeyValueObserversForHighFrequencyProperty:@"exposureTargetOffset"])
  {
    v4 = self->_devicePropsQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __47__AVCaptureFigVideoDevice_exposureTargetOffset__block_invoke_2;
    v11[3] = &unk_1E7870040;
    v11[4] = self;
    v11[5] = &v18;
    dispatch_sync(v4, v11);
  }

  v5 = v19[6];
  if (v5 == 3.4028e38)
  {
    v6 = [(AVCaptureFigVideoDevice *)self _copyFigCaptureSourceProperty:*MEMORY[0x1E69906D0]];
    v7 = v6;
    if (v6)
    {
      [v6 floatValue];
      *(v19 + 6) = v8;

      v5 = v19[6];
    }

    else
    {
      v19[6] = 0.0;
      v5 = 0.0;
    }
  }

  v9 = v5 - v14[6];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(v17, 8);
  _Block_object_dispose(&v18, 8);
  return v9;
}

uint64_t __47__AVCaptureFigVideoDevice_exposureTargetOffset__block_invoke(uint64_t result)
{
  *(*(*(result + 40) + 8) + 24) = *(*(result + 32) + 544);
  v1 = *(*(*(result + 40) + 8) + 24);
  if (v1)
  {
    if (v1 != 3)
    {
      return result;
    }

    v2 = *(*(result + 32) + 580);
    v3 = 48;
  }

  else
  {
    v2 = 0;
    v3 = 56;
  }

  *(*(*(result + v3) + 8) + 24) = v2;
  return result;
}

float __47__AVCaptureFigVideoDevice_exposureTargetOffset__block_invoke_2(uint64_t a1)
{
  result = *(*(a1 + 32) + 584);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setExposurePointOfInterest:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([(AVCaptureFigVideoDevice *)self isLockedForConfiguration])
  {
    if ([(AVCaptureFigVideoDevice *)self isExposurePointOfInterestSupported])
    {
      [(AVCaptureFigVideoDevice *)self _defaultRectForExposurePointOfInterest:x, y];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v25 = 0;
      v26 = &v25;
      v27 = 0x2020000000;
      v28 = 0;
      v21 = 0;
      v22 = &v21;
      v23 = 0x2020000000;
      devicePropsQueue = self->_devicePropsQueue;
      v24 = 0;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __54__AVCaptureFigVideoDevice_setExposurePointOfInterest___block_invoke;
      block[3] = &unk_1E7870400;
      block[4] = self;
      block[5] = &v25;
      *&block[7] = x;
      *&block[8] = y;
      block[6] = &v21;
      block[9] = v6;
      block[10] = v8;
      block[11] = v10;
      block[12] = v12;
      dispatch_sync(devicePropsQueue, block);
      if (*(v22 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"exposureRectOfInterest"];
      }

      if ((v26[3] & 1) != 0 || *(v22 + 24) == 1)
      {
        v15 = self->_devicePropsQueue;
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __54__AVCaptureFigVideoDevice_setExposurePointOfInterest___block_invoke_2;
        v19[3] = &unk_1E7870400;
        v19[4] = self;
        v19[5] = &v25;
        *&v19[7] = x;
        *&v19[8] = y;
        v19[6] = &v21;
        v19[9] = v7;
        v19[10] = v9;
        v19[11] = v11;
        v19[12] = v13;
        dispatch_sync(v15, v19);
        if (v22[3])
        {
          [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"exposureRectOfInterest"];
        }
      }

      _Block_object_dispose(&v21, 8);
      _Block_object_dispose(&v25, 8);
      return;
    }

    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    objc_opt_class();
  }

  else
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D920];
    objc_opt_class();
  }

  v18 = [v16 exceptionWithName:v17 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v18);
  }

  NSLog(&cfstr_SuppressingExc.isa, v18);
}

BOOL __54__AVCaptureFigVideoDevice_setExposurePointOfInterest___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 592) != *(a1 + 56);
  if (*(v2 + 600) != *(a1 + 64))
  {
    v3 = 1;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  result = CGRectEqualToRect(*(*(a1 + 32) + 624), *(a1 + 72));
  *(*(*(a1 + 48) + 8) + 24) = !result;
  return result;
}

__n128 __54__AVCaptureFigVideoDevice_setExposurePointOfInterest___block_invoke_2(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    result = *(a1 + 56);
    *(*(a1 + 32) + 592) = result;
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v2 = *(a1 + 32) + 624;
    result = *(a1 + 88);
    *v2 = *(a1 + 72);
    *(v2 + 16) = result;
    *(*(a1 + 32) + 656) = 1;
  }

  return result;
}

- (BOOL)isExposureRectOfInterestSupported
{
  v2 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E6990150]];

  return [v2 BOOLValue];
}

- (CGSize)minExposureRectOfInterestSize
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3010000000;
  v12 = 0;
  v13 = 0;
  v11 = &unk_1A92DB249;
  devicePropsQueue = self->_devicePropsQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__AVCaptureFigVideoDevice_minExposureRectOfInterestSize__block_invoke;
  v7[3] = &unk_1E7870040;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(devicePropsQueue, v7);
  v3 = v9[4];
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);
  v5 = v3;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

__n128 __56__AVCaptureFigVideoDevice_minExposureRectOfInterestSize__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 608);
  *(*(*(a1 + 40) + 8) + 32) = result;
  return result;
}

- (CGSize)_minExposureRectOfInterestSizeForFormat:(id)a3
{
  v4 = 0.0;
  if (-[AVCaptureFigVideoDevice isExposurePointOfInterestSupported](self, "isExposurePointOfInterestSupported") && (v5 = [a3 sensorDimensions], v5 >= 321))
  {
    v6 = 0.0;
    if (SHIDWORD(v5) >= 321)
    {
      v6 = (320.0 / v5);
      v4 = (320.0 / HIDWORD(v5));
    }
  }

  else
  {
    v6 = 0.0;
  }

  v7 = v4;
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGRect)exposureRectOfInterest
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x4010000000;
  v15 = &unk_1A92DB249;
  v16 = 0u;
  v17 = 0u;
  devicePropsQueue = self->_devicePropsQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__AVCaptureFigVideoDevice_exposureRectOfInterest__block_invoke;
  v11[3] = &unk_1E7870040;
  v11[4] = self;
  v11[5] = &v12;
  dispatch_sync(devicePropsQueue, v11);
  v3 = v13[4];
  v4 = v13[5];
  v5 = v13[6];
  v6 = v13[7];
  _Block_object_dispose(&v12, 8);
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

__n128 __49__AVCaptureFigVideoDevice_exposureRectOfInterest__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  result = *(*(a1 + 32) + 640);
  *(v1 + 32) = *(*(a1 + 32) + 624);
  *(v1 + 48) = result;
  return result;
}

- (void)setExposureRectOfInterest:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(AVCaptureFigVideoDevice *)self isLockedForConfiguration])
  {
    if ([(AVCaptureFigVideoDevice *)self isExposurePointOfInterestSupported]&& x >= 0.0 && y >= 0.0 && width >= 0.0 && height >= 0.0 && x + width <= 1.0 && y + height <= 1.0)
    {
      v38 = 0;
      v39 = &v38;
      v40 = 0x3010000000;
      v42 = 0;
      v43 = 0;
      v41 = &unk_1A92DB249;
      devicePropsQueue = self->_devicePropsQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __53__AVCaptureFigVideoDevice_setExposureRectOfInterest___block_invoke;
      block[3] = &unk_1E7870040;
      block[4] = self;
      block[5] = &v38;
      dispatch_sync(devicePropsQueue, block);
      if (width >= v39[4] && height >= v39[5])
      {
        v44.origin.x = x;
        v44.origin.y = y;
        v44.size.width = width;
        v44.size.height = height;
        MidX = CGRectGetMidX(v44);
        v45.origin.x = x;
        v45.origin.y = y;
        v45.size.width = width;
        v45.size.height = height;
        MidY = CGRectGetMidY(v45);
        [(AVCaptureFigVideoDevice *)self _defaultRectForExposurePointOfInterest:MidX, MidY];
        v25 = v18;
        v26 = v17;
        v24 = v19;
        v21 = v20;
        v33 = 0;
        v34 = &v33;
        v35 = 0x2020000000;
        v36 = 0;
        v29 = 0;
        v30 = &v29;
        v31 = 0x2020000000;
        v32 = 0;
        v22 = self->_devicePropsQueue;
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __53__AVCaptureFigVideoDevice_setExposureRectOfInterest___block_invoke_2;
        v28[3] = &unk_1E7870400;
        v28[4] = self;
        v28[5] = &v33;
        *&v28[7] = MidX;
        *&v28[8] = MidY;
        v28[6] = &v29;
        *&v28[9] = x;
        *&v28[10] = y;
        *&v28[11] = width;
        *&v28[12] = height;
        dispatch_sync(v22, v28);
        if (*(v34 + 24) == 1 && ([(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"exposurePointOfInterest"], (v34[3] & 1) != 0) || *(v30 + 24) == 1)
        {
          v23 = self->_devicePropsQueue;
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __53__AVCaptureFigVideoDevice_setExposureRectOfInterest___block_invoke_3;
          v27[3] = &unk_1E7870428;
          v27[4] = self;
          v27[5] = &v33;
          *&v27[7] = MidX;
          *&v27[8] = MidY;
          v27[6] = &v29;
          *&v27[9] = x;
          *&v27[10] = y;
          *&v27[11] = width;
          *&v27[12] = height;
          v27[13] = v26;
          v27[14] = v21;
          v27[15] = v25;
          v27[16] = v24;
          dispatch_sync(v23, v27);
          if (v30[3])
          {
            [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"exposurePointOfInterest"];
          }
        }

        _Block_object_dispose(&v29, 8);
        _Block_object_dispose(&v33, 8);
      }

      else
      {
        v10 = MEMORY[0x1E695DF30];
        objc_opt_class();
        [MEMORY[0x1E696AEC0] stringWithFormat:@"Rectangle size must be at least the size returned by minExposureRectOfInterestSize(%lf, %lf)", *(v39 + 4), *(v39 + 5)];
        v11 = [v10 exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
        if (AVCaptureShouldThrowForAPIViolations())
        {
          objc_exception_throw(v11);
        }

        NSLog(&cfstr_SuppressingExc.isa, v11);
      }

      _Block_object_dispose(&v38, 8);
      return;
    }

    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    objc_opt_class();
  }

  else
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D920];
    objc_opt_class();
  }

  v14 = [v12 exceptionWithName:v13 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v14);
  }

  NSLog(&cfstr_SuppressingExc.isa, v14);
}

__n128 __53__AVCaptureFigVideoDevice_setExposureRectOfInterest___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 608);
  *(*(*(a1 + 40) + 8) + 32) = result;
  return result;
}

BOOL __53__AVCaptureFigVideoDevice_setExposureRectOfInterest___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 592) != *(a1 + 56);
  if (*(v2 + 600) != *(a1 + 64))
  {
    v3 = 1;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  result = CGRectEqualToRect(*(*(a1 + 32) + 624), *(a1 + 72));
  *(*(*(a1 + 48) + 8) + 24) = !result;
  return result;
}

uint64_t __53__AVCaptureFigVideoDevice_setExposureRectOfInterest___block_invoke_3(uint64_t result)
{
  v1 = result;
  if (*(*(*(result + 40) + 8) + 24) == 1)
  {
    *(*(result + 32) + 592) = *(result + 56);
  }

  if (*(*(*(result + 48) + 8) + 24) == 1)
  {
    v2 = (*(result + 32) + 624);
    v3 = *(result + 88);
    *v2 = *(result + 72);
    v2[1] = v3;
    *&v3 = *(result + 72);
    v4 = *(result + 80);
    v5 = *(result + 88);
    v6 = *(result + 96);
    result = CGRectEqualToRect(*&v3, *(result + 104));
    *(*(v1 + 32) + 656) = result;
  }

  return result;
}

- (CGRect)defaultRectForExposurePointOfInterest:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([(AVCaptureFigVideoDevice *)self isExposureRectOfInterestSupported])
  {
    [(AVCaptureFigVideoDevice *)self _defaultRectForExposurePointOfInterest:x, y];
  }

  else
  {
    v6 = *MEMORY[0x1E695F050];
    v7 = *(MEMORY[0x1E695F050] + 8);
    v8 = *(MEMORY[0x1E695F050] + 16);
    v9 = *(MEMORY[0x1E695F050] + 24);
  }

  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGRect)_defaultRectForExposurePointOfInterest:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v15.width = 0.0;
  v15.height = 0.0;
  v6 = a3.y == 0.5 && a3.x == 0.5;
  fcsAttributes = self->_fcsAttributes;
  v8 = MEMORY[0x1E6990108];
  if (!v6)
  {
    v8 = MEMORY[0x1E6990110];
  }

  CGSizeMakeWithDictionaryRepresentation([(NSDictionary *)fcsAttributes objectForKeyedSubscript:*v8, *&v15.width, *&v15.height], &v15);
  [(AVCaptureFigVideoDevice *)self _updateRectOfInterestSizeForSensorOrientationAndDynamicAspectRatio:v15.width, v15.height];
  width = v10;
  if (v10 < self->_minExposureRectOfInterestSize.width || (height = v9, v9 < self->_minExposureRectOfInterestSize.height))
  {
    width = self->_minFocusRectOfInterestSize.width;
    height = self->_minFocusRectOfInterestSize.height;
  }

  v13 = fmax(x - width * 0.5, 0.0);
  if (v13 >= 1.0 - width)
  {
    v13 = 1.0 - width;
  }

  v14 = fmax(y - height * 0.5, 0.0);
  if (v14 >= 1.0 - height)
  {
    v14 = 1.0 - height;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (BOOL)automaticallyAdjustsFaceDrivenAutoExposureEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76__AVCaptureFigVideoDevice_automaticallyAdjustsFaceDrivenAutoExposureEnabled__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setAutomaticallyAdjustsFaceDrivenAutoExposureEnabled:(BOOL)a3
{
  if ([(AVCaptureFigVideoDevice *)self isLockedForConfiguration])
  {
    if ([(AVCaptureFigVideoDevice *)self isExposureModeSupported:2])
    {
      devicePropsQueue = self->_devicePropsQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __80__AVCaptureFigVideoDevice_setAutomaticallyAdjustsFaceDrivenAutoExposureEnabled___block_invoke;
      block[3] = &unk_1E786EE40;
      block[4] = self;
      v10 = a3;
      dispatch_sync(devicePropsQueue, block);
      return;
    }

    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    objc_opt_class();
  }

  else
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D920];
    objc_opt_class();
  }

  v8 = [v6 exceptionWithName:v7 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v8);
  }

  NSLog(&cfstr_SuppressingExc.isa, v8);
}

- (BOOL)isFaceDrivenAutoExposureEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__AVCaptureFigVideoDevice_isFaceDrivenAutoExposureEnabled__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setFaceDrivenAutoExposureEnabled:(BOOL)a3
{
  if ([(AVCaptureFigVideoDevice *)self isLockedForConfiguration])
  {
    if ([(AVCaptureFigVideoDevice *)self isExposureModeSupported:2]&& ![(AVCaptureFigVideoDevice *)self automaticallyAdjustsFaceDrivenAutoExposureEnabled])
    {
      devicePropsQueue = self->_devicePropsQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __60__AVCaptureFigVideoDevice_setFaceDrivenAutoExposureEnabled___block_invoke;
      block[3] = &unk_1E786EE40;
      v10 = a3;
      block[4] = self;
      dispatch_sync(devicePropsQueue, block);
      return;
    }

    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
    objc_opt_class();
  }

  else
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D920];
    objc_opt_class();
  }

  v7 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v7);
  }

  NSLog(&cfstr_SuppressingExc.isa, v7);
}

uint64_t __60__AVCaptureFigVideoDevice_setFaceDrivenAutoExposureEnabled___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 968) & 0xFFFFFFFE) == 2)
  {
    v2 = 3;
  }

  else
  {
    v2 = 1;
  }

  if (*(result + 40))
  {
    v3 = v2;
  }

  else
  {
    v3 = 2 * ((*(v1 + 968) & 0xFFFFFFFE) == 2);
  }

  *(v1 + 968) = v3;
  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)activeMaxExposureDuration
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3810000000;
  v10 = &unk_1A92DB249;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__AVCaptureFigVideoDevice_activeMaxExposureDuration__block_invoke;
  block[3] = &unk_1E786FEE0;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(devicePropsQueue, block);
  *retstr = *(v8 + 4);
  _Block_object_dispose(&v7, 8);
  return result;
}

__n128 __52__AVCaptureFigVideoDevice_activeMaxExposureDuration__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (v1 + 684);
  if (*(v1 + 696))
  {
    v7 = *(*(a1 + 40) + 8);
    result = *v2;
    v7[3].n128_u64[0] = v2[1].n128_u64[0];
    v7[2] = result;
  }

  else
  {
    v3 = *(*(a1 + 40) + 8);
    if (*(v1 + 672))
    {
      result = *(v1 + 660);
      v3[3].n128_u64[0] = *(v1 + 676);
      v3[2] = result;
    }

    else
    {
      v4 = (v1 + 272);
      v5 = v4[1].n128_u64[0];
      result = *v4;
      v3[2] = *v4;
      v3[3].n128_u64[0] = v5;
    }
  }

  return result;
}

- (void)setActiveMaxExposureDuration:(id *)a3
{
  if ([(AVCaptureFigVideoDevice *)self isLockedForConfiguration])
  {
    if ((a3->var2 & 1) == 0)
    {
      goto LABEL_3;
    }

    v8 = [(AVCaptureFigVideoDevice *)self activeFormat];
    if (v8)
    {
      [v8 minExposureDuration];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    time1 = *a3;
    if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
    {
      v9 = [(AVCaptureFigVideoDevice *)self activeFormat];
      if (v9)
      {
        [v9 maxExposureDuration];
      }

      else
      {
        memset(&time2, 0, sizeof(time2));
      }

      time1 = *a3;
      if (CMTimeCompare(&time1, &time2) < 1)
      {
LABEL_3:
        devicePropsQueue = self->_devicePropsQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __56__AVCaptureFigVideoDevice_setActiveMaxExposureDuration___block_invoke;
        block[3] = &unk_1E7870450;
        block[4] = self;
        v12 = *&a3->var0;
        var3 = a3->var3;
        dispatch_sync(devicePropsQueue, block);
        return;
      }
    }

    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    objc_opt_class();
  }

  else
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D920];
    objc_opt_class();
  }

  v10 = [v6 exceptionWithName:v7 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v10);
  }

  NSLog(&cfstr_SuppressingExc.isa, v10);
}

void __56__AVCaptureFigVideoDevice_setActiveMaxExposureDuration___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32) + 684;
  v3 = *(a1 + 40);
  *(v2 + 16) = *(a1 + 56);
  v4 = MEMORY[0x1E695E480];
  *v2 = v3;
  v5 = *v4;
  v7 = *(a1 + 40);
  v6 = CMTimeCopyAsDictionary(&v7, v5);
  [*(a1 + 32) _setFigCaptureSourceProperty:*MEMORY[0x1E69905B0] withValue:v6 cacheOnly:*(*(a1 + 32) + 392)];
}

- (BOOL)isGlobalToneMappingEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__AVCaptureFigVideoDevice_isGlobalToneMappingEnabled__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setGlobalToneMappingEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(AVCaptureFigVideoDevice *)self isLockedForConfiguration])
  {
    if ([(AVCaptureDeviceFormat *)self->_activeFormat isGlobalToneMappingSupported])
    {
      v10 = 0;
      v11 = &v10;
      v12 = 0x2020000000;
      v13 = 0;
      devicePropsQueue = self->_devicePropsQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __55__AVCaptureFigVideoDevice_setGlobalToneMappingEnabled___block_invoke;
      block[3] = &unk_1E7870040;
      block[4] = self;
      block[5] = &v10;
      dispatch_sync(devicePropsQueue, block);
      if (v11[3])
      {
        [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"digitalFlashMode"];
        [(AVCaptureFigVideoDevice *)self _setDigitalFlashModeInternal:0];
        [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"digitalFlashMode"];
      }

      [(AVCaptureFigVideoDevice *)self _setGlobalToneMappingEnabledInternal:v3];
      _Block_object_dispose(&v10, 8);
      return;
    }

    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    objc_opt_class();
  }

  else
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D920];
    objc_opt_class();
  }

  v8 = [v6 exceptionWithName:v7 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v8);
  }

  NSLog(&cfstr_SuppressingExc.isa, v8);
}

- (void)_setGlobalToneMappingEnabledInternal:(BOOL)a3
{
  devicePropsQueue = self->_devicePropsQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__AVCaptureFigVideoDevice__setGlobalToneMappingEnabledInternal___block_invoke;
  v4[3] = &unk_1E786EE40;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(devicePropsQueue, v4);
}

uint64_t __64__AVCaptureFigVideoDevice__setGlobalToneMappingEnabledInternal___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _setFigCaptureSourceProperty:*MEMORY[0x1E6990720] withValue:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", *(a1 + 40))}];
  if (!result)
  {
    *(*(a1 + 32) + 1329) = *(a1 + 40);
  }

  return result;
}

- (BOOL)isAdjustingWhiteBalance
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__AVCaptureFigVideoDevice_isAdjustingWhiteBalance__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_setAdjustingWhiteBalance:(BOOL)a3
{
  devicePropsQueue = self->_devicePropsQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__AVCaptureFigVideoDevice__setAdjustingWhiteBalance___block_invoke;
  v4[3] = &unk_1E786EE40;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(devicePropsQueue, v4);
}

- (BOOL)isWhiteBalanceModeSupported:(int64_t)a3
{
  if ((a3 | 2) != 2)
  {
    return 0;
  }

  v5 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E69902D0], v3];

  return [v5 BOOLValue];
}

- (int64_t)whiteBalanceMode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__AVCaptureFigVideoDevice_whiteBalanceMode__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setWhiteBalanceMode:(int64_t)a3
{
  if ([(AVCaptureFigVideoDevice *)self isWhiteBalanceModeSupported:?])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    devicePropsQueue = self->_devicePropsQueue;
    v15 = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__AVCaptureFigVideoDevice_setWhiteBalanceMode___block_invoke;
    block[3] = &unk_1E7870310;
    block[4] = self;
    block[5] = &v12;
    block[6] = a3;
    dispatch_sync(devicePropsQueue, block);
    if (*(v13 + 6) == -16452)
    {
      v6 = MEMORY[0x1E695DF30];
      objc_opt_class();
      v7 = [v6 exceptionWithName:*MEMORY[0x1E695D920] reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
      if (AVCaptureShouldThrowForAPIViolations())
      {
        objc_exception_throw(v7);
      }

      NSLog(&cfstr_SuppressingExc.isa, v7);
    }

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    objc_opt_class();
    v10 = [v8 exceptionWithName:v9 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:{0, a3}];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v10);
    }

    NSLog(&cfstr_SuppressingExc.isa, v10);
  }
}

uint64_t __47__AVCaptureFigVideoDevice_setWhiteBalanceMode___block_invoke(uint64_t a1, double a2, double a3, double a4)
{
  LODWORD(a2) = 0;
  LODWORD(a3) = 0;
  LODWORD(a4) = 0;
  result = [*(a1 + 32) _setWhiteBalanceWithMode:*(a1 + 48) gains:0 requestID:{a2, a3, a4}];
  *(*(*(a1 + 40) + 8) + 24) = result;
  if (!*(*(*(a1 + 40) + 8) + 24))
  {
    *(*(a1 + 32) + 712) = *(a1 + 48);
  }

  return result;
}

- ($E2C29196C7A5C696474C6955C5A9CE06)deviceWhiteBalanceGains
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3010000000;
  v20 = -1082130432;
  v18 = &unk_1A92DB249;
  v19 = 0xBF800000BF800000;
  if ([(AVCaptureFigVideoDevice *)self _hasKeyValueObserversForHighFrequencyProperty:@"deviceWhiteBalanceGains"])
  {
    devicePropsQueue = self->_devicePropsQueue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __50__AVCaptureFigVideoDevice_deviceWhiteBalanceGains__block_invoke;
    v14[3] = &unk_1E7870040;
    v14[4] = self;
    v14[5] = &v15;
    dispatch_sync(devicePropsQueue, v14);
  }

  v4 = v16;
  if (*(v16 + 4) == 0xBF800000BF800000 && *(v16 + 10) == -1082130432)
  {
    v6 = [(AVCaptureFigVideoDevice *)self _copyFigCaptureSourceProperty:*MEMORY[0x1E6990678]];
    v7 = v6;
    if (v6)
    {
      if ([v6 length] == 12)
      {
        [v7 getBytes:v16 + 8 length:12];
      }

      v4 = v16;
    }

    else
    {
      v4 = v16;
      *(v16 + 4) = 0x3F80000040000000;
      v4[10] = 2.0;
    }
  }

  v8 = v4[8];
  v9 = v4[9];
  v10 = v4[10];
  _Block_object_dispose(&v15, 8);
  v11 = v8;
  v12 = v9;
  v13 = v10;
  result.var2 = v13;
  result.var1 = v12;
  result.var0 = v11;
  return result;
}

uint64_t __50__AVCaptureFigVideoDevice_deviceWhiteBalanceGains__block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  v2 = *(*(result + 32) + 728);
  *(v1 + 32) = *(*(result + 32) + 720);
  *(v1 + 40) = v2;
  return result;
}

- ($E2C29196C7A5C696474C6955C5A9CE06)grayWorldDeviceWhiteBalanceGains
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3010000000;
  v20 = -1082130432;
  v18 = &unk_1A92DB249;
  v19 = 0xBF800000BF800000;
  if ([(AVCaptureFigVideoDevice *)self _hasKeyValueObserversForHighFrequencyProperty:@"grayWorldDeviceWhiteBalanceGains"])
  {
    devicePropsQueue = self->_devicePropsQueue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __59__AVCaptureFigVideoDevice_grayWorldDeviceWhiteBalanceGains__block_invoke;
    v14[3] = &unk_1E7870040;
    v14[4] = self;
    v14[5] = &v15;
    dispatch_sync(devicePropsQueue, v14);
  }

  v4 = v16;
  if (*(v16 + 4) == 0xBF800000BF800000 && *(v16 + 10) == -1082130432)
  {
    v6 = [(AVCaptureFigVideoDevice *)self _copyFigCaptureSourceProperty:*MEMORY[0x1E6990728]];
    v7 = v6;
    if (v6)
    {
      if ([v6 length] == 12)
      {
        [v7 getBytes:v16 + 8 length:12];
      }

      v4 = v16;
    }

    else
    {
      v4 = v16;
      *(v16 + 4) = 0x3F80000040000000;
      v4[10] = 2.0;
    }
  }

  v8 = v4[8];
  v9 = v4[9];
  v10 = v4[10];
  _Block_object_dispose(&v15, 8);
  v11 = v8;
  v12 = v9;
  v13 = v10;
  result.var2 = v13;
  result.var1 = v12;
  result.var0 = v11;
  return result;
}

uint64_t __59__AVCaptureFigVideoDevice_grayWorldDeviceWhiteBalanceGains__block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  v2 = *(*(result + 32) + 740);
  *(v1 + 32) = *(*(result + 32) + 732);
  *(v1 + 40) = v2;
  return result;
}

- (BOOL)_ensureWhiteBalanceCalibrationUnpacked
{
  devicePropsQueue = self->_devicePropsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__AVCaptureFigVideoDevice__ensureWhiteBalanceCalibrationUnpacked__block_invoke;
  block[3] = &unk_1E786EC08;
  block[4] = self;
  dispatch_sync(devicePropsQueue, block);
  return *&self->_adjustingWB != 0;
}

void *__65__AVCaptureFigVideoDevice__ensureWhiteBalanceCalibrationUnpacked__block_invoke(void *result)
{
  v1 = result[4];
  if (!*(v1 + 752))
  {
    v2 = result;
    v3 = [*(v1 + 56) objectForKeyedSubscript:*MEMORY[0x1E69902D8]];
    if (v3)
    {
      v4 = v3;
      if ([v3 count] == 2)
      {
        *(v2[4] + 760) = malloc_type_calloc(2uLL, 8uLL, 0x100004000313F17uLL);
        *(v2[4] + 768) = malloc_type_calloc(2uLL, 8uLL, 0x80040B8603338uLL);
        v5 = v2[4];
        if (*(v5 + 760) && *(v5 + 768))
        {
          v6 = 0;
          v7 = *MEMORY[0x1E6990968];
          v8 = *MEMORY[0x1E6990960];
          while (1)
          {
            v9 = [objc_msgSend(v4 objectAtIndexedSubscript:{v6), "objectForKeyedSubscript:", v7}];
            if (!v9)
            {
              return __65__AVCaptureFigVideoDevice__ensureWhiteBalanceCalibrationUnpacked__block_invoke_cold_5();
            }

            v10 = v9;
            v11 = [objc_msgSend(v4 objectAtIndexedSubscript:{v6), "objectForKeyedSubscript:", v8}];
            if (!v11)
            {
              return __65__AVCaptureFigVideoDevice__ensureWhiteBalanceCalibrationUnpacked__block_invoke_cold_4();
            }

            v12 = v11;
            if ([v11 length] != 36)
            {
              return __65__AVCaptureFigVideoDevice__ensureWhiteBalanceCalibrationUnpacked__block_invoke_cold_2();
            }

            v13 = [v12 bytes];
            [v10 doubleValue];
            *&v14 = v14;
            *(*(v2[4] + 760) + 8 * v6) = LODWORD(v14);
            result = malloc_type_malloc(0x48uLL, 0x100004000313F17uLL);
            *(*(v2[4] + 768) + 8 * v6) = result;
            if (!*(*(v2[4] + 768) + 8 * v6))
            {
              break;
            }

            for (i = 0; i != 9; ++i)
            {
              *(*(*(v2[4] + 768) + 8 * v6) + 8 * i) = *(v13 + 4 * i);
            }

            if (++v6 == 2)
            {
              *(v2[4] + 752) = 2;
              return result;
            }
          }

          return __65__AVCaptureFigVideoDevice__ensureWhiteBalanceCalibrationUnpacked__block_invoke_cold_3();
        }

        else
        {
          return __65__AVCaptureFigVideoDevice__ensureWhiteBalanceCalibrationUnpacked__block_invoke_cold_6();
        }
      }

      else
      {
        return __65__AVCaptureFigVideoDevice__ensureWhiteBalanceCalibrationUnpacked__block_invoke_cold_1();
      }
    }

    else
    {
      return __65__AVCaptureFigVideoDevice__ensureWhiteBalanceCalibrationUnpacked__block_invoke_cold_7();
    }
  }

  return result;
}

- (BOOL)isLockingWhiteBalanceWithCustomDeviceGainsSupported
{
  v2 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E69901E0]];

  return [v2 BOOLValue];
}

- (void)setWhiteBalanceModeLockedWithDeviceWhiteBalanceTemperatureAndTintValues:(id)a3 completionHandler:(id)a4
{
  [(AVCaptureFigVideoDevice *)self deviceWhiteBalanceGainsForTemperatureAndTintValues:*&a3, *&a3.var1];
  if (*&v6 >= *&v7)
  {
    v9 = *&v7;
  }

  else
  {
    v9 = *&v6;
  }

  if (v9 >= *&v8)
  {
    v9 = *&v8;
  }

  *&v6 = *&v6 / v9;
  *&v7 = *&v7 / v9;
  *&v8 = *&v8 / v9;

  [(AVCaptureFigVideoDevice *)self setWhiteBalanceModeLockedWithDeviceWhiteBalanceGains:a4 completionHandler:v6, v7, v8];
}

- (void)setWhiteBalanceModeLockedWithDeviceWhiteBalanceGains:(id)a3 completionHandler:(id)a4
{
  var2 = a3.var2;
  var1 = a3.var1;
  var0 = a3.var0;
  v41 = a3;
  if (![(AVCaptureFigVideoDevice *)self isWhiteBalanceModeSupported:0])
  {
    goto LABEL_36;
  }

  if (*&v41.var0)
  {
    v9 = 0;
  }

  else
  {
    v9 = LODWORD(v41.var2) == 0;
  }

  if (v9)
  {
LABEL_31:
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    devicePropsQueue = self->_devicePropsQueue;
    v36 = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __98__AVCaptureFigVideoDevice_setWhiteBalanceModeLockedWithDeviceWhiteBalanceGains_completionHandler___block_invoke;
    block[3] = &unk_1E7870310;
    block[4] = self;
    block[5] = &v33;
    block[6] = 0;
    dispatch_sync(devicePropsQueue, block);
    if (*(v34 + 24) == 1)
    {
      [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"whiteBalanceMode"];
    }

    v23 = [AVCaptureDeviceControlRequest deviceControlRequestWithCompletionBlock:a4];
    [(AVCaptureDeviceControlRequestQueue *)self->_biasedExposureControlRequests enqueueRequest:v23];
    v24 = self->_devicePropsQueue;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __98__AVCaptureFigVideoDevice_setWhiteBalanceModeLockedWithDeviceWhiteBalanceGains_completionHandler___block_invoke_2;
    v30[3] = &unk_1E7870478;
    v30[6] = &v37;
    v30[7] = 0;
    v31 = v41;
    v30[4] = self;
    v30[5] = v23;
    dispatch_sync(v24, v30);
    v25 = *(v38 + 6);
    if (v25 == -16452)
    {
      v26 = MEMORY[0x1E695DF30];
      objc_opt_class();
      v27 = [v26 exceptionWithName:*MEMORY[0x1E695D920] reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
      if (AVCaptureShouldThrowForAPIViolations())
      {
        objc_exception_throw(v27);
      }

      NSLog(&cfstr_SuppressingExc.isa, v27);
    }

    else
    {
      if (*(v34 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"whiteBalanceMode"];
        v25 = *(v38 + 6);
      }

      if (v25)
      {
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __98__AVCaptureFigVideoDevice_setWhiteBalanceModeLockedWithDeviceWhiteBalanceGains_completionHandler___block_invoke_3;
        v29[3] = &unk_1E786EC08;
        v29[4] = self;
        [(AVCaptureFigVideoDevice *)self _performBlockOnMainThread:v29];
      }
    }

    _Block_object_dispose(&v33, 8);
    _Block_object_dispose(&v37, 8);
    return;
  }

  if ([(AVCaptureFigVideoDevice *)self isLockingWhiteBalanceWithCustomDeviceGainsSupported])
  {
    if (var0 >= var1)
    {
      v10 = var1;
    }

    else
    {
      v10 = var0;
    }

    if (v10 >= var2)
    {
      v10 = var2;
    }

    v11 = var0 / v10;
    v12 = var1 / v10;
    *&v41.var0 = __PAIR64__(LODWORD(v12), LODWORD(v11));
    v13 = var2 / v10;
    v41.var2 = v13;
    [(AVCaptureFigVideoDevice *)self maxWhiteBalanceGain];
    if (v11 >= 1.0 && v11 <= v14 && v12 >= 1.0 && v12 <= v14 && v13 >= 1.0 && v13 <= v14)
    {
      goto LABEL_31;
    }

    v20 = MEMORY[0x1E695DF30];
    v21 = *MEMORY[0x1E695DA20];
    objc_opt_class();
  }

  else
  {
LABEL_36:
    v20 = MEMORY[0x1E695DF30];
    v21 = *MEMORY[0x1E695D940];
    objc_opt_class();
  }

  v28 = [v20 exceptionWithName:v21 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v28);
  }

  NSLog(&cfstr_SuppressingExc.isa, v28);
}

uint64_t __98__AVCaptureFigVideoDevice_setWhiteBalanceModeLockedWithDeviceWhiteBalanceGains_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) requestID];
  LODWORD(v5) = *(a1 + 64);
  LODWORD(v6) = *(a1 + 68);
  LODWORD(v7) = *(a1 + 72);
  *(*(*(a1 + 48) + 8) + 24) = [v3 _setWhiteBalanceWithMode:v2 gains:v4 requestID:{v5, v6, v7}];
  result = [*(a1 + 40) setErrorCode:*(*(*(a1 + 48) + 8) + 24)];
  if (!*(*(*(a1 + 48) + 8) + 24))
  {
    *(*(a1 + 32) + 712) = *(a1 + 56);
  }

  return result;
}

- (int)_setWhiteBalanceWithMode:(int64_t)a3 gains:(id)a4 requestID:(int)a5
{
  v5 = *&a5;
  v13 = a4;
  v8 = [MEMORY[0x1E695DF90] dictionary];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x1E6990978]];
  if (!a3)
  {
    v10 = [MEMORY[0x1E695DEF0] dataWithBytes:&v13 length:12];
    [v8 setObject:v10 forKeyedSubscript:*MEMORY[0x1E6990970]];
    if (v5)
    {
      v11 = [MEMORY[0x1E696AD98] numberWithInt:v5];
      [v8 setObject:v11 forKeyedSubscript:*MEMORY[0x1E6990980]];
    }
  }

  return [(AVCaptureFigVideoDevice *)self _setFigCaptureSourceProperty:*MEMORY[0x1E6990860] withValue:v8];
}

- ($E2C29196C7A5C696474C6955C5A9CE06)_deviceWhiteBalanceGainsForChromaticityValues:(id)a3 temperature:(double)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  if ([(AVCaptureFigVideoDevice *)self _ensureWhiteBalanceCalibrationUnpacked])
  {
    [(AVCaptureFigVideoDevice *)self _whiteBalanceMixingFactorForTemperature:a4];
    v9 = 0;
    wbCalibrationTemperatures = self->_wbCalibrationTemperatures;
    v11 = *wbCalibrationTemperatures;
    v12 = wbCalibrationTemperatures[1];
    do
    {
      v26[v9] = v8 * *(*&v12 + v9 * 8) + *(*&v11 + v9 * 8) * (1.0 - v8);
      ++v9;
    }

    while (v9 != 9);
    InvertMatrix(v26, v25);
    xy_to_XYZ(v24, var0, var1);
    VectorMatrix(v24, v25, &v22);
    for (i = 0; i != 24; i += 8)
    {
      if (*(&v22 + i) < 0.0)
      {
        *(&v22 + i) = 0.0;
      }
    }

    v14 = 1.0 / v22;
    __asm { FMOV            V2.2D, #1.0 }

    v19 = vcvt_f32_f64(vdivq_f64(_Q2, v23));
    LODWORD(_Q2.f64[0]) = v19.i32[1];
    if (v19.f32[0] < v19.f32[1])
    {
      *_Q2.f64 = v19.f32[0];
    }

    if (*_Q2.f64 > v14)
    {
      *_Q2.f64 = 1.0 / v22;
    }

    if ((LODWORD(_Q2.f64[0]) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      v19 = vdiv_f32(v19, vdup_lane_s32(*&_Q2.f64[0], 0));
      v14 = v14 / *_Q2.f64;
    }
  }

  else
  {
    v19 = 0x400000003F800000;
    v14 = 2.0;
  }

  v21 = v19.f32[1];
  result.var1 = v19.f32[0];
  result.var2 = v21;
  result.var0 = v14;
  return result;
}

- (double)_predictedTempForGains:(id)a3
{
  var2 = a3.var2;
  var1 = a3.var1;
  var0 = a3.var0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__AVCaptureFigVideoDevice__predictedTempForGains___block_invoke;
  block[3] = &unk_1E786EC08;
  block[4] = self;
  if (_predictedTempForGains__onceToken != -1)
  {
    dispatch_once(&_predictedTempForGains__onceToken, block);
  }

  v7 = (((1.0 / var1) - *(&_predictedTempForGains__knownDRGB + 1)) * *algn_1EB3856B8 + *_predictedTempForGains__minToMax * ((1.0 / var0) - *&_predictedTempForGains__knownDRGB) + *&qword_1EB3856C0 * ((1.0 / var2) - *&qword_1EB385690)) / *&_predictedTempForGains__minToMaxLen;
  return (1.0 - v7) * *self->_wbCalibrationCount + v7 * *(self->_wbCalibrationCount + 8);
}

uint64_t __50__AVCaptureFigVideoDevice__predictedTempForGains___block_invoke(uint64_t a1, double a2, double a3)
{
  v4 = *(a1 + 32);
  v5 = v4[95];
  LODWORD(a2) = *v5;
  LODWORD(a3) = v5[1];
  [v4 deviceWhiteBalanceGainsForTemperatureAndTintValues:{a2, a3}];
  v29 = v7;
  v30 = v6;
  v31 = v8;
  v9 = *(a1 + 32);
  v10 = v9[95];
  LODWORD(v11) = *(v10 + 8);
  LODWORD(v12) = *(v10 + 12);
  result = [v9 deviceWhiteBalanceGainsForTemperatureAndTintValues:{v11, v12}];
  __asm { FMOV            V4.2D, #1.0 }

  v19 = &_predictedTempForGains__knownDRGB;
  _predictedTempForGains__knownDRGB = vdivq_f64(_Q4, vcvtq_f64_f32(__PAIR64__(v29, v30)));
  *&qword_1EB385690 = vdivq_f64(_Q4, vcvtq_f64_f32(__PAIR64__(v20, v31)));
  v22.i32[1] = v21;
  xmmword_1EB3856A0 = vdivq_f64(_Q4, vcvtq_f64_f32(v22));
  v23 = 3;
  v24 = _predictedTempForGains__minToMax;
  do
  {
    v25 = v19[3];
    v26 = *v19++;
    *v24++ = v25 - v26;
    --v23;
  }

  while (v23);
  v27 = 0;
  v28 = sqrt(*algn_1EB3856B8 * *algn_1EB3856B8 + *_predictedTempForGains__minToMax * *_predictedTempForGains__minToMax + *&qword_1EB3856C0 * *&qword_1EB3856C0);
  _predictedTempForGains__minToMaxLen = *&v28;
  do
  {
    *&_predictedTempForGains__minToMax[v27] = *&_predictedTempForGains__minToMax[v27] / v28;
    ++v27;
  }

  while (v27 != 3);
  return result;
}

- ($94F468A8D4C62B317260615823C2B210)_chromaticityValuesForDeviceWhiteBalanceGains:(id)a3 atMix:(double)a4
{
  v4 = 0;
  wbCalibrationTemperatures = self->_wbCalibrationTemperatures;
  v6 = *wbCalibrationTemperatures;
  v7 = wbCalibrationTemperatures[1];
  do
  {
    v21[v4] = *(*&v7 + v4 * 8) * a4 + *(*&v6 + v4 * 8) * (1.0 - a4);
    ++v4;
  }

  while (v4 != 9);
  var1 = a3.var1;
  __asm { FMOV            V1.2D, #1.0 }

  v19 = vdivq_f64(_Q1, vcvtq_f64_f32(*&a3.var0));
  v20 = 1.0 / a3.var2;
  VectorMatrix(v19.f64, v21, v18);
  v16 = 0.0;
  v17 = 0.0;
  XYZ_to_xy(v18, &v17, &v16);
  v14 = v17;
  v15 = v16;
  result.var1 = v15;
  result.var0 = v14;
  return result;
}

- ($94F468A8D4C62B317260615823C2B210)chromaticityValuesForDeviceWhiteBalanceGains:(id)a3
{
  var2 = a3.var2;
  var1 = a3.var1;
  var0 = a3.var0;
  v7 = 0.5;
  if (![(AVCaptureFigVideoDevice *)self _ensureWhiteBalanceCalibrationUnpacked])
  {
LABEL_21:
    v19 = 0.5;
    goto LABEL_22;
  }

  [(AVCaptureFigVideoDevice *)self maxWhiteBalanceGain];
  if (var0 < 1.0 || var0 > *&v8 || var1 < 1.0 || var1 > *&v8 || var2 < 1.0 || var2 > *&v8)
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695DA20];
    objc_opt_class();
    v18 = [v16 exceptionWithName:v17 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v18);
    }

    NSLog(&cfstr_SuppressingExc.isa, v18);
    goto LABEL_21;
  }

  if (var0 >= var1)
  {
    *&v8 = var1;
  }

  else
  {
    *&v8 = var0;
  }

  if (*&v8 >= var2)
  {
    *&v8 = var2;
  }

  v22 = var0 / *&v8;
  v23 = var1 / *&v8;
  v24 = var2 / *&v8;
  *&v8 = v22;
  *&v9 = v23;
  *&v10 = v24;
  [(AVCaptureFigVideoDevice *)self _predictedTempForGains:v8, v9, v10];
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  devicePropsQueue = self->_devicePropsQueue;
  v54 = 0;
  block[0] = MEMORY[0x1E69E9820];
  v43 = v26;
  block[1] = 3221225472;
  block[2] = __72__AVCaptureFigVideoDevice_chromaticityValuesForDeviceWhiteBalanceGains___block_invoke;
  block[3] = &unk_1E7870310;
  block[4] = self;
  block[5] = &v51;
  block[6] = v26;
  dispatch_sync(devicePropsQueue, block);
  v27 = 0;
  v28 = v52[3];
  v29 = -1;
  v19 = 0.5;
  v30 = 3.40282347e38;
  while (1)
  {
    [(AVCaptureFigVideoDevice *)self _whiteBalanceMixingFactorForTemperature:v28];
    v32 = v31;
    *&v31 = v22;
    *&v33 = v23;
    *&v34 = v24;
    [(AVCaptureFigVideoDevice *)self _chromaticityValuesForDeviceWhiteBalanceGains:v31 atMix:v33, v34, v32];
    v36 = v35;
    v38 = v37;
    v48 = 0;
    v49 = 0.0;
    xy_to_tempTint(&v49, &v48, v35, v37);
    v28 = v49;
    v39 = v52[3];
    v40 = vabdd_f64(v49, v39);
    if (v40 >= v30)
    {
      break;
    }

    v29 = v27;
    v7 = v36;
    v19 = v38;
    if (v49 - v39 == 0.0)
    {
      goto LABEL_35;
    }

LABEL_33:
    v52[3] = v49;
    ++v27;
    v30 = v40;
    if (v27 == 50)
    {
      v41 = self->_devicePropsQueue;
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __72__AVCaptureFigVideoDevice_chromaticityValuesForDeviceWhiteBalanceGains___block_invoke_2;
      v46[3] = &unk_1E78704A0;
      v46[4] = self;
      v47 = 50;
      v42 = v46;
      goto LABEL_36;
    }
  }

  v40 = v30;
  if (v27 - v29 <= 1)
  {
    goto LABEL_33;
  }

LABEL_35:
  v41 = self->_devicePropsQueue;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __72__AVCaptureFigVideoDevice_chromaticityValuesForDeviceWhiteBalanceGains___block_invoke_3;
  v44[3] = &unk_1E78704C8;
  v44[4] = self;
  v44[5] = &v51;
  v44[6] = v43;
  v45 = v27;
  v42 = v44;
LABEL_36:
  dispatch_sync(v41, v42);
  _Block_object_dispose(&v51, 8);
LABEL_22:
  v20 = v7;
  v21 = v19;
  result.var1 = v21;
  result.var0 = v20;
  return result;
}

double *__72__AVCaptureFigVideoDevice_chromaticityValuesForDeviceWhiteBalanceGains___block_invoke(double *result)
{
  *(*(*(result + 5) + 8) + 24) = *(*(result + 4) + 784);
  v1 = *(*(result + 5) + 8);
  if (*(v1 + 24) < 0.0)
  {
    v2 = result[6];
LABEL_5:
    *(v1 + 24) = v2;
    return result;
  }

  v3 = *(result + 4);
  v2 = result[6];
  if (vabdd_f64(*(v3 + 776), v2) > 500.0 || (*(v3 + 792) & 1) == 0)
  {
    goto LABEL_5;
  }

  return result;
}

double __72__AVCaptureFigVideoDevice_chromaticityValuesForDeviceWhiteBalanceGains___block_invoke_3(uint64_t a1)
{
  *(*(a1 + 32) + 784) = *(*(*(a1 + 40) + 8) + 24);
  result = *(a1 + 48);
  *(*(a1 + 32) + 776) = result;
  *(*(a1 + 32) + 800) = *(a1 + 56);
  return result;
}

- ($E2C29196C7A5C696474C6955C5A9CE06)deviceWhiteBalanceGainsForChromaticityValues:(id)a3
{
  *&v3 = a3.var1;
  *&v4 = a3.var0;
  var1 = a3.var1;
  v6 = vdupq_lane_s64(*&a3, 0);
  v7.i32[0] = vmovn_s32(vcgeq_f32(v6, xmmword_1A92AB950)).u32[0];
  v7.i32[1] = vmovn_s32(vcgeq_f32(xmmword_1A92AB950, v6)).i32[1];
  if (vminv_u16(v7))
  {
    v18 = 0.0;
    v17 = 0;
    v15 = v4;
    v16 = v3;
    xy_to_tempTint(&v18, &v17, *&v4, a3.var1);
    [(AVCaptureFigVideoDevice *)self _deviceWhiteBalanceGainsForChromaticityValues:v15 temperature:v16, v18];
  }

  else
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695DA20];
    objc_opt_class();
    v10 = [v8 exceptionWithName:v9 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v10);
    }

    NSLog(&cfstr_SuppressingExc.isa, v10);
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
  }

  result.var2 = v13;
  result.var1 = v12;
  result.var0 = v11;
  return result;
}

- ($94F468A8D4C62B317260615823C2B210)temperatureAndTintValuesForDeviceWhiteBalanceGains:(id)a3
{
  var2 = a3.var2;
  var1 = a3.var1;
  var0 = a3.var0;
  [(AVCaptureFigVideoDevice *)self maxWhiteBalanceGain];
  if (var0 < 1.0 || var0 > *&v7 || var1 < 1.0 || var1 > *&v7 || var2 < 1.0 || var2 > *&v7)
  {
    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695DA20];
    objc_opt_class();
    v17 = [v15 exceptionWithName:v16 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v17);
    }

    NSLog(&cfstr_SuppressingExc.isa, v17);
    v21 = 0.0;
    v20 = 0.0;
  }

  else
  {
    *&v7 = var0;
    *&v8 = var1;
    *&v9 = var2;
    [(AVCaptureFigVideoDevice *)self chromaticityValuesForDeviceWhiteBalanceGains:v7, v8, v9];
    v22 = 0.0;
    v23 = 0.0;
    xy_to_tempTint(&v23, &v22, v18, v19);
    v20 = v23;
    v21 = v22;
  }

  result.var1 = v21;
  result.var0 = v20;
  return result;
}

- ($E2C29196C7A5C696474C6955C5A9CE06)deviceWhiteBalanceGainsForTemperatureAndTintValues:(id)a3
{
  v10 = 0.0;
  v11 = 0.0;
  var0 = a3.var0;
  tempTint_to_xy(&v11, &v10, a3.var0, a3.var1);
  HIDWORD(v6) = HIDWORD(v10);
  HIDWORD(v5) = HIDWORD(v11);
  *&v5 = v11;
  *&v6 = v10;
  [(AVCaptureFigVideoDevice *)self _deviceWhiteBalanceGainsForChromaticityValues:v5 temperature:v6, var0];
  result.var2 = v9;
  result.var1 = v8;
  result.var0 = v7;
  return result;
}

- (void)_setFlashActive:(BOOL)a3
{
  devicePropsQueue = self->_devicePropsQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__AVCaptureFigVideoDevice__setFlashActive___block_invoke;
  v4[3] = &unk_1E786EE40;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(devicePropsQueue, v4);
}

- (void)_setFlashSceneDetectedForPhotoOutput:(BOOL)a3
{
  devicePropsQueue = self->_devicePropsQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__AVCaptureFigVideoDevice__setFlashSceneDetectedForPhotoOutput___block_invoke;
  v4[3] = &unk_1E786EE40;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(devicePropsQueue, v4);
}

- (void)_setFlashAvailable:(BOOL)a3
{
  devicePropsQueue = self->_devicePropsQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__AVCaptureFigVideoDevice__setFlashAvailable___block_invoke;
  v4[3] = &unk_1E786EE40;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(devicePropsQueue, v4);
}

- (int64_t)flashMode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__AVCaptureFigVideoDevice_flashMode__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setFlashMode:(int64_t)a3
{
  if ([(AVCaptureFigVideoDevice *)self isLockedForConfiguration])
  {
    if ([(AVCaptureFigVideoDevice *)self isFlashModeSupported:a3])
    {
      v26 = 0;
      v27 = &v26;
      v28 = 0x2020000000;
      v29 = a3;
      v22 = 0;
      v23 = &v22;
      v24 = 0x2020000000;
      v25 = 0;
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v21 = 0;
      devicePropsQueue = self->_devicePropsQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __40__AVCaptureFigVideoDevice_setFlashMode___block_invoke;
      block[3] = &unk_1E78700B8;
      block[4] = self;
      block[5] = &v26;
      block[6] = &v22;
      block[7] = &v18;
      dispatch_sync(devicePropsQueue, block);
      [(AVCaptureFigVideoDevice *)self _setFlashActive:v27[3] == 1];
      if (v19[3])
      {
        v6 = 1;
      }

      else
      {
        v6 = *(v23 + 24);
      }

      v15 = [MEMORY[0x1E696AD98] numberWithInt:v6];
      [(AVCaptureFigVideoDevice *)self _setFigCaptureSourceProperty:*MEMORY[0x1E69905F0] withValue:v15];
      _Block_object_dispose(&v18, 8);
      _Block_object_dispose(&v22, 8);
      _Block_object_dispose(&v26, 8);
      return;
    }

    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    objc_opt_class();
    v16 = a3;
    v9 = AVMethodExceptionReasonWithClassAndSelector();
    v10 = v12;
    v11 = v13;
  }

  else
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D920];
    objc_opt_class();
    v9 = AVMethodExceptionReasonWithClassAndSelector();
    v10 = v7;
    v11 = v8;
  }

  v14 = [v10 exceptionWithName:v11 reason:v9 userInfo:{0, v16}];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v14);
  }

  NSLog(&cfstr_SuppressingExc.isa, v14);
}

void *__40__AVCaptureFigVideoDevice_setFlashMode___block_invoke(void *result)
{
  v1 = result[4];
  if ((*(v1 + 936) & 1) == 0)
  {
    *(*(result[5] + 8) + 24) = 0;
    v1 = result[4];
  }

  *(v1 + 904) = *(*(result[5] + 8) + 24);
  *(result[4] + 912) = *(*(result[5] + 8) + 24) == 2;
  *(*(result[6] + 8) + 24) = *(result[4] + 912);
  *(*(result[7] + 8) + 24) = *(result[4] + 913);
  return result;
}

- (BOOL)_isFlashScene
{
  v2 = [(AVCaptureFigVideoDevice *)self _copyFigCaptureSourceProperty:*MEMORY[0x1E69906E8]];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)_setTorchActive:(BOOL)a3
{
  devicePropsQueue = self->_devicePropsQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__AVCaptureFigVideoDevice__setTorchActive___block_invoke;
  v4[3] = &unk_1E786EE40;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(devicePropsQueue, v4);
}

- (float)torchLevel
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__AVCaptureFigVideoDevice_torchLevel__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = v7[6];
  _Block_object_dispose(&v6, 8);
  return v3;
}

float __37__AVCaptureFigVideoDevice_torchLevel__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 956);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_setTorchLevel:(float)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  devicePropsQueue = self->_devicePropsQueue;
  v12 = -1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__AVCaptureFigVideoDevice__setTorchLevel___block_invoke;
  block[3] = &unk_1E78704F0;
  v8 = a3;
  block[4] = self;
  block[5] = &v9;
  dispatch_sync(devicePropsQueue, block);
  if (v10[3] != -1)
  {
    [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"torchMode"];
    v5 = self->_devicePropsQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __42__AVCaptureFigVideoDevice__setTorchLevel___block_invoke_2;
    v6[3] = &unk_1E786FEE0;
    v6[4] = self;
    v6[5] = &v9;
    dispatch_sync(v5, v6);
    [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"torchMode"];
  }

  _Block_object_dispose(&v9, 8);
}

uint64_t __42__AVCaptureFigVideoDevice__setTorchLevel___block_invoke(uint64_t result)
{
  v1 = *(result + 48);
  *(*(result + 32) + 956) = v1;
  v2 = *(*(result + 32) + 944);
  if (!v2)
  {
    if (v1 <= 0.0)
    {
      return result;
    }

    v3 = 1;
    goto LABEL_7;
  }

  if (v2 == 1 && v1 == 0.0)
  {
    v3 = 0;
LABEL_7:
    *(*(*(result + 40) + 8) + 24) = v3;
  }

  return result;
}

- (void)_setTorchAvailable:(BOOL)a3
{
  devicePropsQueue = self->_devicePropsQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__AVCaptureFigVideoDevice__setTorchAvailable___block_invoke;
  v4[3] = &unk_1E786EE40;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(devicePropsQueue, v4);
}

- (int64_t)torchMode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__AVCaptureFigVideoDevice_torchMode__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setTorchMode:(int64_t)a3
{
  if ([(AVCaptureFigVideoDevice *)self isTorchModeSupported:?])
  {
    LODWORD(v5) = 2139095039;
    if (a3 != 1)
    {
      *&v5 = 0.0;
    }

    v6 = [(AVCaptureFigVideoDevice *)self _setTorchMode:a3 withLevel:v5];
    if (v6 != -16452)
    {
      if (!v6)
      {
        devicePropsQueue = self->_devicePropsQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __40__AVCaptureFigVideoDevice_setTorchMode___block_invoke;
        block[3] = &unk_1E786ECD0;
        block[4] = self;
        block[5] = a3;
        dispatch_sync(devicePropsQueue, block);
      }

      return;
    }

    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D920];
    objc_opt_class();
    v10 = AVMethodExceptionReasonWithClassAndSelector();
    v11 = v13;
    v12 = v14;
  }

  else
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    objc_opt_class();
    v16 = a3;
    v10 = AVMethodExceptionReasonWithClassAndSelector();
    v11 = v8;
    v12 = v9;
  }

  v15 = [v11 exceptionWithName:v12 reason:v10 userInfo:{0, v16}];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v15);
  }

  NSLog(&cfstr_SuppressingExc.isa, v15);
}

- (BOOL)setTorchModeOnWithLevel:(float)a3 error:(id *)a4
{
  if (![(AVCaptureFigVideoDevice *)self isTorchModeSupported:1]|| a3 != 3.4028e38 && (a3 <= 0.0 || a3 > 1.0))
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
    objc_opt_class();
    goto LABEL_9;
  }

  *&v7 = a3;
  v8 = [(AVCaptureFigVideoDevice *)self _setTorchMode:1 withLevel:v7];
  v9 = v8;
  if (!v8)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    devicePropsQueue = self->_devicePropsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__AVCaptureFigVideoDevice_setTorchModeOnWithLevel_error___block_invoke;
    block[3] = &unk_1E7870040;
    block[4] = self;
    block[5] = &v18;
    dispatch_sync(devicePropsQueue, block);
    if (*(v19 + 24) == 1)
    {
      [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"torchMode"];
      v15 = self->_devicePropsQueue;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __57__AVCaptureFigVideoDevice_setTorchModeOnWithLevel_error___block_invoke_2;
      v16[3] = &unk_1E786EC08;
      v16[4] = self;
      dispatch_sync(v15, v16);
      [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"torchMode"];
    }

    _Block_object_dispose(&v18, 8);
    return v9 == 0;
  }

  if (v8 != -16452)
  {
    if (a4)
    {
      *a4 = AVLocalizedErrorWithUnderlyingOSStatus();
    }

    return v9 == 0;
  }

  v10 = MEMORY[0x1E695DF30];
  v11 = *MEMORY[0x1E695D920];
  objc_opt_class();
LABEL_9:
  v12 = [v10 exceptionWithName:v11 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v12);
  }

  NSLog(&cfstr_SuppressingExc.isa, v12);
  return 0;
}

- (int)_setTorchMode:(int64_t)a3 withLevel:(float)a4
{
  v7 = -[AVCaptureFigVideoDevice _setFigCaptureSourceProperty:withValue:](self, "_setFigCaptureSourceProperty:withValue:", *MEMORY[0x1E6990600], [MEMORY[0x1E696AD98] numberWithInt:a3 == 2]);
  if (v7)
  {
    v9 = v7;
    [AVCaptureFigVideoDevice _setTorchMode:withLevel:];
  }

  else if (a3 == 2)
  {
    return 0;
  }

  else
  {
    *&v8 = a4;
    v9 = -[AVCaptureFigVideoDevice _setFigCaptureSourceProperty:withValue:](self, "_setFigCaptureSourceProperty:withValue:", *MEMORY[0x1E6990828], [MEMORY[0x1E696AD98] numberWithFloat:v8]);
    if (v9)
    {
      [AVCaptureFigVideoDevice _setTorchMode:withLevel:];
    }
  }

  return v9;
}

- (void)setSubjectAreaChangeMonitoringEnabled:(BOOL)a3
{
  v5 = -[AVCaptureFigVideoDevice _setFigCaptureSourceProperty:withValue:](self, "_setFigCaptureSourceProperty:withValue:", *MEMORY[0x1E69907F0], [MEMORY[0x1E696AD98] numberWithBool:?]);
  if (v5 == -16452)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D920];
    objc_opt_class();
    v8 = [v6 exceptionWithName:v7 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v8);
    }

    NSLog(&cfstr_SuppressingExc.isa, v8);
  }

  else if (!v5)
  {
    BYTE1(self->_torchLevel) = a3;
  }
}

- (void)setProvidesStortorgetMetadata:(BOOL)a3
{
  v5 = -[AVCaptureFigVideoDevice _setFigCaptureSourceProperty:withValue:](self, "_setFigCaptureSourceProperty:withValue:", *MEMORY[0x1E6990790], [MEMORY[0x1E696AD98] numberWithBool:?]);
  if (v5 == -16452)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D920];
    objc_opt_class();
    v8 = [v6 exceptionWithName:v7 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v8);
    }

    NSLog(&cfstr_SuppressingExc.isa, v8);
  }

  else if (!v5)
  {
    LOBYTE(self->_sceneClassificationKVO) = a3;
  }
}

- (BOOL)isImageControlModeSupported:(int64_t)a3
{
  v4 = ((a3 - 5) < 2) & [-[NSDictionary objectForKeyedSubscript:](self->_fcsAttributes objectForKeyedSubscript:{*MEMORY[0x1E6990288]), "BOOLValue"}];
  if (a3 < 5)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

- (void)setAutomaticallyAdjustsImageControlMode:(BOOL)a3
{
  v5 = -[AVCaptureFigVideoDevice _setFigCaptureSourceProperty:withValue:](self, "_setFigCaptureSourceProperty:withValue:", *MEMORY[0x1E69905E8], [MEMORY[0x1E696AD98] numberWithBool:?]);
  if (v5 == -16452)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D920];
    objc_opt_class();
    v8 = [v6 exceptionWithName:v7 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v8);
    }

    NSLog(&cfstr_SuppressingExc.isa, v8);
  }

  else if (!v5)
  {
    BYTE1(self->_sceneClassificationKVO) = a3;
  }
}

- (void)setImageControlMode:(int64_t)a3
{
  if ([(AVCaptureFigVideoDevice *)self isImageControlModeSupported:?])
  {
    if (BYTE1(self->_sceneClassificationKVO) != 1)
    {
      v10 = -[AVCaptureFigVideoDevice _setFigCaptureSourceProperty:withValue:](self, "_setFigCaptureSourceProperty:withValue:", *MEMORY[0x1E6990740], [MEMORY[0x1E696AD98] numberWithInteger:a3]);
      if (v10 != -16452)
      {
        if (!v10)
        {
          devicePropsQueue = self->_devicePropsQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __47__AVCaptureFigVideoDevice_setImageControlMode___block_invoke;
          block[3] = &unk_1E786ECD0;
          block[4] = self;
          block[5] = a3;
          dispatch_sync(devicePropsQueue, block);
        }

        return;
      }
    }

    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D920];
    objc_opt_class();
    v7 = AVMethodExceptionReasonWithClassAndSelector();
    v8 = v12;
    v9 = v13;
  }

  else
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
    objc_opt_class();
    v15 = a3;
    v7 = AVMethodExceptionReasonWithClassAndSelector();
    v8 = v5;
    v9 = v6;
  }

  v14 = [v8 exceptionWithName:v9 reason:v7 userInfo:{0, v15}];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v14);
  }

  NSLog(&cfstr_SuppressingExc.isa, v14);
}

- (void)_setImageControlMode:(int64_t)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  devicePropsQueue = self->_devicePropsQueue;
  v12 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__AVCaptureFigVideoDevice__setImageControlMode___block_invoke;
  block[3] = &unk_1E7870310;
  block[5] = &v9;
  block[6] = a3;
  block[4] = self;
  dispatch_sync(devicePropsQueue, block);
  if (*(v10 + 24) == 1)
  {
    [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"imageControlMode"];
    v6 = self->_devicePropsQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __48__AVCaptureFigVideoDevice__setImageControlMode___block_invoke_2;
    v7[3] = &unk_1E786ECD0;
    v7[4] = self;
    v7[5] = a3;
    dispatch_sync(v6, v7);
    [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"imageControlMode"];
  }

  _Block_object_dispose(&v9, 8);
}

- (id)runDiagnosticsWithTestType:(id)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = __Block_byref_object_copy__7;
  v18 = __Block_byref_object_dispose__7;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__AVCaptureFigVideoDevice_runDiagnosticsWithTestType___block_invoke;
  block[3] = &unk_1E7870518;
  block[4] = self;
  block[5] = a3;
  block[6] = &v10;
  block[7] = &v14;
  dispatch_sync(devicePropsQueue, block);
  if ((v11[3] & 1) == 0)
  {
    v5 = MEMORY[0x1E695DF30];
    objc_opt_class();
    v6 = [v5 exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:{0, a3}];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v6);
    }

    NSLog(&cfstr_SuppressingExc.isa, v6);
  }

  v7 = v15[5];
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
  return v7;
}

uint64_t __54__AVCaptureFigVideoDevice_runDiagnosticsWithTestType___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDiagnosticsTestSupported:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  if (*(*(*(a1 + 48) + 8) + 24) == 1 && *(a1 + 40) == @"AVCaptureDeviceDiagnosticsTestTypeAutoFocusPositionSensorCalibration")
  {
    result = [*(a1 + 32) _copyFigCaptureSourceProperty:*MEMORY[0x1E69905F8]];
    *(*(*(a1 + 56) + 8) + 40) = result;
  }

  return result;
}

- (BOOL)isDiagnosticsTestSupported:(id)a3
{
  if (@"AVCaptureDeviceDiagnosticsTestTypeAutoFocusPositionSensorCalibration" != a3)
  {
    return 0;
  }

  v6 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E69900B0], v3];

  return [v6 BOOLValue];
}

- (void)setFaceDetectionDrivenImageProcessingEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(AVCaptureFigVideoDevice *)self isFaceDetectionSupported])
  {
    if (v3)
    {
      v5 = 3;
    }

    else
    {
      v5 = 0;
    }

    v6 = -[AVCaptureFigVideoDevice _setFigCaptureSourceProperty:withValue:](self, "_setFigCaptureSourceProperty:withValue:", *MEMORY[0x1E69906E0], [MEMORY[0x1E696AD98] numberWithInt:v5]);
    if (v6 != -16452)
    {
      if (!v6)
      {
        devicePropsQueue = self->_devicePropsQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __72__AVCaptureFigVideoDevice_setFaceDetectionDrivenImageProcessingEnabled___block_invoke;
        block[3] = &unk_1E78704A0;
        block[4] = self;
        v12 = v5;
        dispatch_sync(devicePropsQueue, block);
      }

      return;
    }

    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D920];
    objc_opt_class();
  }

  else
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    objc_opt_class();
  }

  v10 = [v8 exceptionWithName:v9 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v10);
  }

  NSLog(&cfstr_SuppressingExc.isa, v10);
}

- (CGRect)faceRectangle
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x4010000000;
  v15 = &unk_1A92DB249;
  v16 = 0u;
  v17 = 0u;
  devicePropsQueue = self->_devicePropsQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40__AVCaptureFigVideoDevice_faceRectangle__block_invoke;
  v11[3] = &unk_1E7870040;
  v11[4] = self;
  v11[5] = &v12;
  dispatch_sync(devicePropsQueue, v11);
  v3 = v13[4];
  v4 = v13[5];
  v5 = v13[6];
  v6 = v13[7];
  _Block_object_dispose(&v12, 8);
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

__n128 __40__AVCaptureFigVideoDevice_faceRectangle__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  result = *(*(a1 + 32) + 992);
  *(v1 + 32) = *(*(a1 + 32) + 976);
  *(v1 + 48) = result;
  return result;
}

- (int)faceRectangleAngle
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__AVCaptureFigVideoDevice_faceRectangleAngle__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)_isHighDynamicRangeScene
{
  v2 = [(AVCaptureFigVideoDevice *)self _copyFigCaptureSourceProperty:*MEMORY[0x1E6990748]];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)_setHDRSceneDetectedForPhotoOutput:(BOOL)a3
{
  devicePropsQueue = self->_devicePropsQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__AVCaptureFigVideoDevice__setHDRSceneDetectedForPhotoOutput___block_invoke;
  v4[3] = &unk_1E786EE40;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(devicePropsQueue, v4);
}

- (BOOL)_isStillImageStabilizationScene
{
  v2 = [(AVCaptureFigVideoDevice *)self _copyFigCaptureSourceProperty:*MEMORY[0x1E6990750]];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)_setIsStillImageStabilizationScene:(BOOL)a3
{
  devicePropsQueue = self->_devicePropsQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__AVCaptureFigVideoDevice__setIsStillImageStabilizationScene___block_invoke;
  v4[3] = &unk_1E786EE40;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(devicePropsQueue, v4);
}

- (int64_t)_digitalFlashStatus
{
  v2 = [(AVCaptureFigVideoDevice *)self _copyFigCaptureSourceProperty:*MEMORY[0x1E6990690]];
  v3 = [v2 intValue];

  return v3;
}

- (id)_digitalFlashExposureTimes
{
  v2 = [(AVCaptureFigVideoDevice *)self _copyFigCaptureSourceProperty:*MEMORY[0x1E6990680]];

  return v2;
}

- (void)_setDigitalFlashSceneForPhotoOutput:(id)a3
{
  devicePropsQueue = self->_devicePropsQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__AVCaptureFigVideoDevice__setDigitalFlashSceneForPhotoOutput___block_invoke;
  v4[3] = &unk_1E786EAA8;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(devicePropsQueue, v4);
}

id __63__AVCaptureFigVideoDevice__setDigitalFlashSceneForPhotoOutput___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 928) = result;
  return result;
}

- (void)_setPhotoSettingsForSceneMonitoring:(id)a3
{
  if ([(AVCaptureFigVideoDevice *)self lockForConfiguration:0])
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    devicePropsQueue = self->_devicePropsQueue;
    v18 = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__AVCaptureFigVideoDevice__setPhotoSettingsForSceneMonitoring___block_invoke;
    block[3] = &unk_1E786FF08;
    block[5] = a3;
    block[6] = &v15;
    block[4] = self;
    dispatch_sync(devicePropsQueue, block);
    v6 = [a3 flashMode];
    v7 = v16[3];
    if (v6)
    {
      if (v7 != 1)
      {
        goto LABEL_8;
      }
    }

    else if (v7 <= 0)
    {
      v6 = 0;
      goto LABEL_8;
    }

    v6 = v16[3];
LABEL_8:
    v8 = [a3 HDRMode];
    v9 = [a3 photoQualityPrioritization];
    v10 = [a3 digitalFlashMode];
    v12[0] = *MEMORY[0x1E69908E8];
    v13[0] = [MEMORY[0x1E696AD98] numberWithInt:v6];
    v12[1] = *MEMORY[0x1E69908F0];
    v13[1] = [MEMORY[0x1E696AD98] numberWithInt:v8];
    v12[2] = *MEMORY[0x1E69908F8];
    v13[2] = [MEMORY[0x1E696AD98] numberWithInt:v9];
    v12[3] = *MEMORY[0x1E69908E0];
    v13[3] = [MEMORY[0x1E696AD98] numberWithInt:v10];
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];
    [(AVCaptureFigVideoDevice *)self _setFigCaptureSourceProperty:*MEMORY[0x1E69907D8] withValue:v11];
    [(AVCaptureFigVideoDevice *)self unlockForConfiguration];
    _Block_object_dispose(&v15, 8);
  }
}

uint64_t __63__AVCaptureFigVideoDevice__setPhotoSettingsForSceneMonitoring___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 32) + 904);
  result = [*(a1 + 40) flashMode];
  *(*(a1 + 32) + 913) = result == 2;
  return result;
}

- (float)timeLapseCaptureRate
{
  v2 = [(AVCaptureFigVideoDevice *)self _copyFigCaptureSourceProperty:*MEMORY[0x1E6990818]];

  [v2 floatValue];
  return result;
}

- (void)setTimeLapseCaptureRate:(float)a3
{
  v4 = *MEMORY[0x1E6990818];
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:?];

  [(AVCaptureFigVideoDevice *)self _setFigCaptureSourceProperty:v4 withValue:v5];
}

- (void)setUltraHighResolutionZeroShutterLagEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(AVCaptureFigVideoDevice *)self lockForConfiguration:0])
  {
    -[AVCaptureFigVideoDevice _setFigCaptureSourceProperty:withValue:](self, "_setFigCaptureSourceProperty:withValue:", *MEMORY[0x1E6990838], [MEMORY[0x1E696AD98] numberWithBool:v3]);

    [(AVCaptureFigVideoDevice *)self unlockForConfiguration];
  }
}

- (void)setVideoZoomRampAcceleration:(float)a3
{
  v5 = -[AVCaptureFigVideoDevice _setFigCaptureSourceProperty:withValue:](self, "_setFigCaptureSourceProperty:withValue:", *MEMORY[0x1E6990850], [MEMORY[0x1E696AD98] numberWithFloat:?]);
  if (v5 == -16452)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D920];
    objc_opt_class();
    v8 = [v6 exceptionWithName:v7 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v8);
    }

    NSLog(&cfstr_SuppressingExc.isa, v8);
  }

  else if (!v5)
  {
    self->_videoZoomRampTarget = a3;
  }
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3
{
  if ([a3 isEqualToString:@"videoZoomFactor"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"activeVideoMinFrameDuration") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"activeVideoMaxFrameDuration") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"minAvailableVideoZoomFactor") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"maxAvailableVideoZoomFactor") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"activeFormat"))
  {
    return 0;
  }

  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___AVCaptureFigVideoDevice;
  return objc_msgSendSuper2(&v6, sel_automaticallyNotifiesObserversForKey_, a3);
}

- (void)setVideoZoomFactor:(double)a3
{
  if (a3 >= 1.0 && ([-[AVCaptureFigVideoDevice activeFormat](self "activeFormat")], v5 >= a3))
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x2020000000;
    *&v16[3] = a3;
    devicePropsQueue = self->_devicePropsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__AVCaptureFigVideoDevice_setVideoZoomFactor___block_invoke;
    block[3] = &unk_1E78701D0;
    block[4] = self;
    block[5] = v16;
    block[6] = &v17;
    block[7] = &v21;
    dispatch_sync(devicePropsQueue, block);
    v10 = *(v22 + 6);
    if (v10)
    {
      if (v10 == -16452)
      {
        v11 = MEMORY[0x1E695DF30];
        objc_opt_class();
        v12 = [v11 exceptionWithName:*MEMORY[0x1E695D920] reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
        if (AVCaptureShouldThrowForAPIViolations())
        {
          objc_exception_throw(v12);
        }

        NSLog(&cfstr_SuppressingExc.isa, v12);
      }
    }

    else
    {
      if (*(v18 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"rampingVideoZoom"];
      }

      [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"videoZoomFactor"];
      v13 = self->_devicePropsQueue;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __46__AVCaptureFigVideoDevice_setVideoZoomFactor___block_invoke_2;
      v14[3] = &unk_1E786FEE0;
      v14[4] = self;
      v14[5] = v16;
      dispatch_sync(v13, v14);
      [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"videoZoomFactor"];
      if (*(v18 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"rampingVideoZoom"];
      }
    }

    _Block_object_dispose(v16, 8);
    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    objc_opt_class();
    v8 = [v6 exceptionWithName:v7 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:{0, *&a3}];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v8);
    }

    NSLog(&cfstr_SuppressingExc.isa, v8);
  }
}

uint64_t __46__AVCaptureFigVideoDevice_setVideoZoomFactor___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 24);
  v5 = *(v2 + 1048);
  if (v4 < v5 || (v5 = *(v2 + 1056), v4 > v5))
  {
    *(v3 + 24) = v5;
  }

  v6 = *(a1 + 32);
  if (*(v6 + 1120) == 1 && (*(v6 + 186) & 1) == 0 && (*(v6 + 188) & 1) == 0)
  {
    v7 = *(v6 + 1048);
    v8 = *(v6 + 1056);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = [*(v6 + 136) supportedVideoZoomRangesForDepthDataDelivery];
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        v13 = 0;
        do
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v20 + 1) + 8 * v13) minZoomFactor];
          v15 = *(*(*(a1 + 40) + 8) + 24);
          if (v15 <= v14)
          {
            v8 = v14;
          }

          if (v15 >= v14)
          {
            v7 = v14;
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v20 objects:v19 count:16];
      }

      while (v11);
    }

    v16 = *(*(a1 + 40) + 8);
    if (*(v16 + 24) <= ((v8 + v7) * 0.5))
    {
      v17 = v7;
    }

    else
    {
      v17 = v8;
    }

    *(v16 + 24) = v17;
    *(*(a1 + 32) + 392) = 1;
    v6 = *(a1 + 32);
  }

  *(*(*(a1 + 48) + 8) + 24) = *(v6 + 1036) != 0.0;
  ++*(*(a1 + 32) + 1040);
  result = [*(a1 + 32) _setFigCaptureSourceProperty:*MEMORY[0x1E6990848] withValue:objc_msgSend(MEMORY[0x1E696AD98] cacheOnly:{"numberWithDouble:", *(*(*(a1 + 40) + 8) + 24)), *(*(a1 + 32) + 392)}];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

float __46__AVCaptureFigVideoDevice_setVideoZoomFactor___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 1036) = 0;
  result = *(*(*(a1 + 40) + 8) + 24);
  *(*(a1 + 32) + 1032) = result;
  return result;
}

- (void)_setVideoZoomFactor:(double)a3
{
  [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"videoZoomFactor"];
  devicePropsQueue = self->_devicePropsQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__AVCaptureFigVideoDevice__setVideoZoomFactor___block_invoke;
  v6[3] = &unk_1E786ECD0;
  v6[4] = self;
  *&v6[5] = a3;
  dispatch_sync(devicePropsQueue, v6);
  [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"videoZoomFactor"];
}

float __47__AVCaptureFigVideoDevice__setVideoZoomFactor___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 1032) = result;
  return result;
}

- (void)rampExponentiallyToVideoZoomFactor:(float)a3 withDuration:(double)a4
{
  if (a4 == 0.0)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695DA20];
    objc_opt_class();
    v7 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v7);
    }

    NSLog(&cfstr_SuppressingExc.isa, v7);
  }

  else
  {
    v4 = a3;

    [(AVCaptureFigVideoDevice *)self _rampToVideoZoomFactor:2 withRate:0 duration:v4 rampType:0.0 rampTuning:a4];
  }
}

- (void)rampToVideoZoomFactor:(float)a3 withTuning:(int64_t)a4
{
  if (a4 >= 3)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695DA20];
    objc_opt_class();
    v7 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v7);
    }

    NSLog(&cfstr_SuppressingExc.isa, v7);
  }

  else
  {
    v4 = a3;

    [(AVCaptureFigVideoDevice *)self _rampToVideoZoomFactor:3 withRate:a4 duration:v4 rampType:0.0 rampTuning:1.0];
  }
}

- (void)_rampToVideoZoomFactor:(double)a3 withRate:(float)a4 duration:(double)a5 rampType:(int)a6 rampTuning:(int)a7
{
  if (a3 >= 1.0 && (v8 = *&a7, v9 = *&a6, [-[AVCaptureFigVideoDevice activeFormat](self "activeFormat")], v13 >= a3))
  {
    v53 = 0;
    v54 = &v53;
    v55 = 0x2020000000;
    v56 = 0;
    v49 = 0;
    v50 = &v49;
    v51 = 0x2020000000;
    v52 = 0;
    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v48 = 0;
    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = 0;
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = a3;
    devicePropsQueue = self->_devicePropsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __88__AVCaptureFigVideoDevice__rampToVideoZoomFactor_withRate_duration_rampType_rampTuning___block_invoke;
    block[3] = &unk_1E7870540;
    block[4] = self;
    block[5] = &v37;
    block[6] = &v53;
    block[7] = &v49;
    v36 = a4;
    *&block[10] = a5;
    block[8] = &v41;
    block[9] = &v45;
    dispatch_sync(devicePropsQueue, block);
    if (LOBYTE(self->_stereoVideoCaptureStatus) != 1 || self->_continuousZoomWithDepthActive || self->_cinematicVideoZoomEnabled)
    {
      if (*(v50 + 24) == 1 && ((v54[3] & 1) != 0 || *(v46 + 24) != 1))
      {
        v31[0] = 0;
        v31[1] = v31;
        v31[2] = 0x2020000000;
        v32 = 0;
        if ((v54[3] & 1) == 0)
        {
          [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"rampingVideoZoom"];
        }

        v20 = self->_devicePropsQueue;
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __88__AVCaptureFigVideoDevice__rampToVideoZoomFactor_withRate_duration_rampType_rampTuning___block_invoke_4;
        v30[3] = &unk_1E7870568;
        v30[4] = self;
        v30[5] = v31;
        v30[6] = &v37;
        dispatch_sync(v20, v30);
        if ((v54[3] & 1) == 0)
        {
          [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"rampingVideoZoom"];
        }

        v28[0] = *MEMORY[0x1E6990910];
        v29[0] = [MEMORY[0x1E696AD98] numberWithDouble:v38[3]];
        v28[1] = *MEMORY[0x1E6990928];
        *&v21 = a4;
        v29[1] = [MEMORY[0x1E696AD98] numberWithFloat:v21];
        v28[2] = *MEMORY[0x1E6990920];
        v29[2] = [MEMORY[0x1E696AD98] numberWithDouble:a5];
        v28[3] = *MEMORY[0x1E6990938];
        v29[3] = [MEMORY[0x1E696AD98] numberWithInt:v9];
        v28[4] = *MEMORY[0x1E6990930];
        v29[4] = [MEMORY[0x1E696AD98] numberWithInt:v8];
        v28[5] = *MEMORY[0x1E6990918];
        v29[5] = [MEMORY[0x1E696AD98] numberWithInt:*(v42 + 6)];
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:6];
        v23 = [(AVCaptureFigVideoDevice *)self _setFigCaptureSourceProperty:*MEMORY[0x1E6990848] withValue:v22];
        if (v23)
        {
          if ((v54[3] & 1) == 0)
          {
            [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"rampingVideoZoom"];
          }

          v24 = self->_devicePropsQueue;
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __88__AVCaptureFigVideoDevice__rampToVideoZoomFactor_withRate_duration_rampType_rampTuning___block_invoke_5;
          v27[3] = &unk_1E786FEE0;
          v27[4] = self;
          v27[5] = v31;
          dispatch_sync(v24, v27);
          if ((v54[3] & 1) == 0)
          {
            [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"rampingVideoZoom"];
          }

          if (v23 == -16452)
          {
            v25 = MEMORY[0x1E695DF30];
            objc_opt_class();
            v26 = [v25 exceptionWithName:*MEMORY[0x1E695D920] reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
            if (AVCaptureShouldThrowForAPIViolations())
            {
              objc_exception_throw(v26);
            }

            NSLog(&cfstr_SuppressingExc.isa, v26);
          }
        }

        _Block_object_dispose(v31, 8);
      }

      else
      {
        [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"rampingVideoZoom"];
        v18 = self->_devicePropsQueue;
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __88__AVCaptureFigVideoDevice__rampToVideoZoomFactor_withRate_duration_rampType_rampTuning___block_invoke_2;
        v34[3] = &unk_1E786FEE0;
        v34[4] = self;
        v34[5] = &v37;
        dispatch_sync(v18, v34);
        [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"rampingVideoZoom"];
        [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"rampingVideoZoom"];
        v19 = self->_devicePropsQueue;
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __88__AVCaptureFigVideoDevice__rampToVideoZoomFactor_withRate_duration_rampType_rampTuning___block_invoke_3;
        v33[3] = &unk_1E786EC08;
        v33[4] = self;
        dispatch_sync(v19, v33);
        [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"rampingVideoZoom"];
      }
    }

    else
    {
      [(AVCaptureFigVideoDevice *)self setVideoZoomFactor:v38[3]];
    }

    _Block_object_dispose(&v37, 8);
    _Block_object_dispose(&v41, 8);
    _Block_object_dispose(&v45, 8);
    _Block_object_dispose(&v49, 8);
    _Block_object_dispose(&v53, 8);
  }

  else
  {
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695DA20];
    objc_opt_class();
    v16 = [v14 exceptionWithName:v15 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:{0, *&a3}];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v16);
    }

    NSLog(&cfstr_SuppressingExc.isa, v16);
  }
}

uint64_t __88__AVCaptureFigVideoDevice__rampToVideoZoomFactor_withRate_duration_rampType_rampTuning___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(*(result + 40) + 8);
  v3 = *(v2 + 24);
  v4 = *(v1 + 1048);
  if (v3 < v4)
  {
    *(v2 + 24) = v4;
    v1 = *(result + 32);
    v2 = *(*(result + 40) + 8);
    v3 = *(v2 + 24);
  }

  v5 = *(v1 + 1056);
  if (v3 > v5)
  {
    *(v2 + 24) = v5;
    v1 = *(result + 32);
  }

  *(*(*(result + 48) + 8) + 24) = *(v1 + 1036) != 0.0;
  if (*(result + 88) == 0.0 && *(result + 80) == 0.0)
  {
    v6 = *(*(*(result + 48) + 8) + 24);
  }

  else
  {
    v6 = 1;
  }

  *(*(*(result + 56) + 8) + 24) = v6 & 1;
  *(*(*(result + 64) + 8) + 24) = ++*(*(result + 32) + 1040);
  *(*(*(result + 72) + 8) + 24) = *(*(*(result + 40) + 8) + 24) == *(*(result + 32) + 1032);
  return result;
}

float __88__AVCaptureFigVideoDevice__rampToVideoZoomFactor_withRate_duration_rampType_rampTuning___block_invoke_2(uint64_t a1)
{
  result = *(*(*(a1 + 40) + 8) + 24);
  *(*(a1 + 32) + 1036) = result;
  return result;
}

float __88__AVCaptureFigVideoDevice__rampToVideoZoomFactor_withRate_duration_rampType_rampTuning___block_invoke_4(void *a1)
{
  *(*(a1[5] + 8) + 24) = *(a1[4] + 1036);
  result = *(*(a1[6] + 8) + 24);
  *(a1[4] + 1036) = result;
  return result;
}

float __88__AVCaptureFigVideoDevice__rampToVideoZoomFactor_withRate_duration_rampType_rampTuning___block_invoke_5(uint64_t a1)
{
  result = *(*(*(a1 + 40) + 8) + 24);
  *(*(a1 + 32) + 1036) = result;
  return result;
}

- (void)cancelVideoZoomRamp
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__AVCaptureFigVideoDevice_cancelVideoZoomRamp__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v4 = v7[6];
  if (v4 != 0.0)
  {
    [(AVCaptureFigVideoDevice *)self rampToVideoZoomFactor:v4 withRate:0.0];
  }

  _Block_object_dispose(&v6, 8);
}

float __46__AVCaptureFigVideoDevice_cancelVideoZoomRamp__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 1036);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (double)dualCameraSwitchOverVideoZoomFactor
{
  v2 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E69900D0]];
  if (![v2 count])
  {
    return 1.0;
  }

  [objc_msgSend(v2 "firstObject")];
  return v3;
}

- (void)_setMinAvailableVideoZoomFactor:(double)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  devicePropsQueue = self->_devicePropsQueue;
  v16 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__AVCaptureFigVideoDevice__setMinAvailableVideoZoomFactor___block_invoke;
  block[3] = &unk_1E7870310;
  *&block[6] = a3;
  block[4] = self;
  block[5] = &v13;
  dispatch_sync(devicePropsQueue, block);
  if (*(v14 + 24) == 1)
  {
    [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"minAvailableVideoZoomFactor"];
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v6 = self->_devicePropsQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__AVCaptureFigVideoDevice__setMinAvailableVideoZoomFactor___block_invoke_2;
    v7[3] = &unk_1E7870018;
    *&v7[6] = a3;
    v7[4] = self;
    v7[5] = &v8;
    dispatch_sync(v6, v7);
    if (*(v9 + 24) == 1)
    {
      [(AVCaptureFigVideoDevice *)self _setVideoZoomFactor:a3];
    }

    [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"minAvailableVideoZoomFactor"];
    _Block_object_dispose(&v8, 8);
  }

  _Block_object_dispose(&v13, 8);
}

uint64_t __59__AVCaptureFigVideoDevice__setMinAvailableVideoZoomFactor___block_invoke_2(uint64_t result)
{
  v1 = *(result + 48);
  *(*(result + 32) + 1048) = v1;
  if (v1 > *(*(result + 32) + 1032))
  {
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

- (double)maxAvailableVideoZoomFactor
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__AVCaptureFigVideoDevice_maxAvailableVideoZoomFactor__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __54__AVCaptureFigVideoDevice_maxAvailableVideoZoomFactor__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 1056);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_setMaxAvailableVideoZoomFactor:(double)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  devicePropsQueue = self->_devicePropsQueue;
  v16 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__AVCaptureFigVideoDevice__setMaxAvailableVideoZoomFactor___block_invoke;
  block[3] = &unk_1E7870310;
  *&block[6] = a3;
  block[4] = self;
  block[5] = &v13;
  dispatch_sync(devicePropsQueue, block);
  if (*(v14 + 24) == 1)
  {
    [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"maxAvailableVideoZoomFactor"];
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v6 = self->_devicePropsQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__AVCaptureFigVideoDevice__setMaxAvailableVideoZoomFactor___block_invoke_2;
    v7[3] = &unk_1E7870018;
    *&v7[6] = a3;
    v7[4] = self;
    v7[5] = &v8;
    dispatch_sync(v6, v7);
    if (*(v9 + 24) == 1)
    {
      [(AVCaptureFigVideoDevice *)self _setVideoZoomFactor:a3];
    }

    [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"maxAvailableVideoZoomFactor"];
    _Block_object_dispose(&v8, 8);
  }

  _Block_object_dispose(&v13, 8);
}

uint64_t __59__AVCaptureFigVideoDevice__setMaxAvailableVideoZoomFactor___block_invoke_2(uint64_t result)
{
  v1 = *(result + 48);
  *(*(result + 32) + 1056) = v1;
  if (v1 < *(*(result + 32) + 1032))
  {
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

- (void)setMaxAvailableVideoZoomFactorOverride:(double)a3
{
  if (a3 != 0.0 && a3 < 1.0)
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:{0, *&a3}];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v4);
    }

    NSLog(&cfstr_SuppressingExc.isa, v4);
  }

  else if (self->_minAvailableVideoZoomFactor != a3)
  {
    self->_maxAvailableVideoZoomFactor = a3;

    [(AVCaptureFigVideoDevice *)self _updateMinMaxDefaultVideoZoomFactors];
  }
}

- (double)maxAvailableVideoZoomFactorOverride
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__AVCaptureFigVideoDevice_maxAvailableVideoZoomFactorOverride__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __62__AVCaptureFigVideoDevice_maxAvailableVideoZoomFactorOverride__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 1064);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_computeMinVideoZoomFactorOut:(double *)a3 maxVideoZoomFactorOut:(double *)a4 defaultVideoZoomFactorOut:(double *)a5 centerStageActiveOverride:(BOOL)a6 resetZoomFactor:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  [(AVCaptureDeviceFormat *)self->_activeFormat videoMaxZoomFactor];
  if (self->_cinematicVideoZoomEnabled)
  {
    [objc_msgSend(-[AVCaptureDeviceFormat supportedZoomRangesForCinematicVideo](self->_activeFormat "supportedZoomRangesForCinematicVideo")];
    v15 = v14;
    v16 = [-[AVCaptureDeviceFormat supportedZoomRangesForCinematicVideo](self->_activeFormat "supportedZoomRangesForCinematicVideo")];
LABEL_3:
    [v16 maxZoomFactor];
LABEL_4:
    v18 = v17;
    goto LABEL_5;
  }

  v18 = v13;
  if (v8 && BYTE5(self->_degradedCaptureQualityFactors) == 1)
  {
    [(AVCaptureDeviceFormat *)self->_activeFormat videoMinZoomFactorForCenterStage];
    v15 = v21;
    [(AVCaptureDeviceFormat *)self->_activeFormat videoMaxZoomFactorForCenterStage];
    goto LABEL_4;
  }

  if (LOBYTE(self->_stereoVideoCaptureStatus) == 1 && !self->_continuousZoomWithDepthActive)
  {
    [-[NSArray firstObject](-[AVCaptureDeviceFormat supportedVideoZoomRangesForDepthDataDelivery](self->_activeFormat "supportedVideoZoomRangesForDepthDataDelivery")];
    v15 = v32;
    v16 = [(NSArray *)[(AVCaptureDeviceFormat *)self->_activeFormat supportedVideoZoomRangesForDepthDataDelivery] lastObject];
    goto LABEL_3;
  }

  if (LOBYTE(self->_shallowDepthOfFieldEffectStatus) == 1)
  {
    [(AVCaptureDeviceFormat *)self->_activeFormat videoMinZoomFactorForCameraCalibrationDataDelivery];
    v15 = v22;
    [(AVCaptureDeviceFormat *)self->_activeFormat videoMaxZoomFactorForCameraCalibrationDataDelivery];
    goto LABEL_4;
  }

  v15 = 1.0;
LABEL_5:
  maxAvailableVideoZoomFactor = self->_maxAvailableVideoZoomFactor;
  if (maxAvailableVideoZoomFactor > 1.0)
  {
    [(AVCaptureDeviceFormat *)self->_activeFormat videoMaxZoomFactor];
    if (maxAvailableVideoZoomFactor >= v20)
    {
      [(AVCaptureDeviceFormat *)self->_activeFormat videoMaxZoomFactor];
      v18 = v23;
    }

    else
    {
      v18 = self->_maxAvailableVideoZoomFactor;
    }
  }

  v24 = *&self->_activeColorSpace;
  if (LOBYTE(self->_stereoVideoCaptureStatus) == 1 && !self->_cinematicVideoZoomEnabled)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v26 = [(AVCaptureDeviceFormat *)self->_activeFormat supportedVideoZoomRangesForDepthDataDelivery];
    v27 = [(NSArray *)v26 countByEnumeratingWithState:&v34 objects:v33 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v35;
LABEL_27:
      v30 = 0;
      while (1)
      {
        if (*v35 != v29)
        {
          objc_enumerationMutation(v26);
        }

        if ([*(*(&v34 + 1) + 8 * v30) containsZoomFactor:v24])
        {
          break;
        }

        if (v28 == ++v30)
        {
          v28 = [(NSArray *)v26 countByEnumeratingWithState:&v34 objects:v33 count:16];
          if (v28)
          {
            goto LABEL_27;
          }

          goto LABEL_35;
        }
      }

      if (!v7)
      {
        goto LABEL_36;
      }
    }

LABEL_35:
    [-[NSArray firstObject](-[AVCaptureDeviceFormat supportedVideoZoomRangesForDepthDataDelivery](self->_activeFormat "supportedVideoZoomRangesForDepthDataDelivery")];
    v24 = v31;
  }

  else if (v7 || (v15 <= v24 ? (v25 = v18 < v24) : (v25 = 1), v25))
  {
    v24 = v15;
  }

LABEL_36:
  *a3 = v15;
  *a4 = v18;
  *a5 = v24;
}

- (void)_updateMinMaxVideoZoomFactorsWithMinZoomFactorFromCameraSelection:(double)a3
{
  v7 = 0;
  v8 = 0.0;
  v6 = 0;
  [(AVCaptureFigVideoDevice *)self _computeMinVideoZoomFactorOut:&v8 maxVideoZoomFactorOut:&v7 defaultVideoZoomFactorOut:&v6 centerStageActiveOverride:BYTE4(self->_degradedCaptureQualityFactors) resetZoomFactor:0];
  v5 = v8;
  if (v8 <= a3)
  {
    v5 = a3;
  }

  v8 = v5;
  [(AVCaptureFigVideoDevice *)self _setMinAvailableVideoZoomFactor:?];
}

- (void)_resetDefaultVideoZoomFactor
{
  v4 = 0;
  v5 = 0;
  v3 = 0.0;
  [(AVCaptureFigVideoDevice *)self _computeMinVideoZoomFactorOut:&v5 maxVideoZoomFactorOut:&v4 defaultVideoZoomFactorOut:&v3 centerStageActiveOverride:BYTE4(self->_degradedCaptureQualityFactors) resetZoomFactor:1];
  [(AVCaptureFigVideoDevice *)self _setVideoZoomFactor:v3];
}

- (void)setGeometricDistortionCorrectionEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(AVCaptureFigVideoDevice *)self isLockedForConfiguration])
  {
    if (!v3 || [(AVCaptureFigVideoDevice *)self isGeometricDistortionCorrectionSupported])
    {
      v11 = 0;
      v12 = &v11;
      v13 = 0x2020000000;
      devicePropsQueue = self->_devicePropsQueue;
      v14 = 0;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __67__AVCaptureFigVideoDevice_setGeometricDistortionCorrectionEnabled___block_invoke;
      block[3] = &unk_1E7870248;
      block[4] = self;
      block[5] = &v11;
      v10 = v3;
      dispatch_sync(devicePropsQueue, block);
      if (*(v12 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self _updateCenterStageActiveForEnabled:+[AVCaptureDevice updateDependentProperties:"isCenterStageEnabled"], 1];
      }

      _Block_object_dispose(&v11, 8);
      return;
    }

    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    objc_opt_class();
  }

  else
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D920];
    objc_opt_class();
  }

  v8 = [v6 exceptionWithName:v7 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v8);
  }

  NSLog(&cfstr_SuppressingExc.isa, v8);
}

uint64_t __67__AVCaptureFigVideoDevice_setGeometricDistortionCorrectionEnabled___block_invoke(uint64_t result)
{
  *(*(*(result + 40) + 8) + 24) = *(*(result + 32) + 1328) != *(result + 48);
  *(*(result + 32) + 1328) = *(result + 48);
  return result;
}

- (id)cameraPoseMatrix
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__AVCaptureFigVideoDevice_cameraPoseMatrix__block_invoke;
  v5[3] = &unk_1E786FEE0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __43__AVCaptureFigVideoDevice_cameraPoseMatrix__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isVirtualDevice];
  if ((result & 1) == 0)
  {
    v3 = [*(a1 + 32) deviceType];
    v4 = *(*(a1 + 32) + 1352);
    if (v4)
    {
      v5 = v3 == @"AVCaptureDeviceTypeBuiltInTimeOfFlightCamera";
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {

      *(*(a1 + 32) + 1352) = [*(a1 + 32) _copyFigCaptureSourceProperty:*MEMORY[0x1E6990638]];
      v4 = *(*(a1 + 32) + 1352);
    }

    result = v4;
    *(*(*(a1 + 40) + 8) + 40) = result;
  }

  return result;
}

- (void)_setCenterStageAllowed:(BOOL)a3
{
  devicePropsQueue = self->_devicePropsQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__AVCaptureFigVideoDevice__setCenterStageAllowed___block_invoke;
  v4[3] = &unk_1E786EE40;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(devicePropsQueue, v4);
}

- (BOOL)_isCenterStageActiveForEnabled:(BOOL)a3
{
  if (a3)
  {
    v4 = [(AVCaptureDeviceFormat *)self->_activeFormat isCenterStageSupported];
    if (v4)
    {
      if (self->_stereoVideoCaptureStatus & 1) != 0 || (LOBYTE(self->_displayVideoZoomFactorMultiplier))
      {
        LOBYTE(v4) = 0;
      }

      else
      {
        height_low = LOBYTE(self->_normalizedNonDestructiveCropSize.height);
        LOBYTE(v4) = height_low == [(AVCaptureFigVideoDevice *)self isGeometricDistortionCorrectionSupported];
      }
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)_updateCenterStageActiveForEnabled:(BOOL)a3 updateDependentProperties:(BOOL)a4
{
  v4 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 0;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__AVCaptureFigVideoDevice__updateCenterStageActiveForEnabled_updateDependentProperties___block_invoke;
  block[3] = &unk_1E7870590;
  block[4] = self;
  block[5] = &v21;
  v10 = a3;
  block[6] = &v17;
  block[7] = v15;
  block[8] = v13;
  block[9] = v11;
  dispatch_sync(devicePropsQueue, block);
  if (*(v22 + 24) != *(v18 + 24))
  {
    [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"centerStageActive"];
    [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"cinematicFramingActive"];
    if (v4)
    {
      [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"activeVideoMinFrameDuration"];
      [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"activeVideoMaxFrameDuration"];
    }

    v7 = self->_devicePropsQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __88__AVCaptureFigVideoDevice__updateCenterStageActiveForEnabled_updateDependentProperties___block_invoke_2;
    v8[3] = &unk_1E786FEE0;
    v8[4] = self;
    v8[5] = &v17;
    dispatch_sync(v7, v8);
    if (v4)
    {
      [(AVCaptureFigVideoDevice *)self _updateMinMaxDefaultVideoZoomFactors];
      [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"activeVideoMaxFrameDuration"];
      [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"activeVideoMinFrameDuration"];
    }

    [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"cinematicFramingActive"];
    [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"centerStageActive"];
  }

  _Block_object_dispose(v11, 8);
  _Block_object_dispose(v13, 8);
  _Block_object_dispose(v15, 8);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
}

uint64_t __88__AVCaptureFigVideoDevice__updateCenterStageActiveForEnabled_updateDependentProperties___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 1372);
  result = [*(a1 + 32) _isCenterStageActiveForEnabled:*(a1 + 80)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  *(*(*(a1 + 56) + 8) + 24) = *(*(a1 + 32) + 1373);
  *(*(*(a1 + 64) + 8) + 24) = *(*(a1 + 32) + 1120);
  *(*(*(a1 + 72) + 8) + 24) = *(*(a1 + 32) + 1136);
  return result;
}

- (CGRect)centerStageRectOfInterest
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x4010000000;
  v16 = &unk_1A92DB249;
  v2 = *(MEMORY[0x1E695F050] + 16);
  v17 = *MEMORY[0x1E695F050];
  v18 = v2;
  devicePropsQueue = self->_devicePropsQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__AVCaptureFigVideoDevice_centerStageRectOfInterest__block_invoke;
  v12[3] = &unk_1E7870040;
  v12[4] = self;
  v12[5] = &v13;
  dispatch_sync(devicePropsQueue, v12);
  v4 = v14[4];
  v5 = v14[5];
  v6 = v14[6];
  v7 = v14[7];
  _Block_object_dispose(&v13, 8);
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

__n128 __52__AVCaptureFigVideoDevice_centerStageRectOfInterest__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  result = *(*(a1 + 32) + 1392);
  *(v1 + 32) = *(*(a1 + 32) + 1376);
  *(v1 + 48) = result;
  return result;
}

- (void)setCenterStageRectOfInterest:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(AVCaptureFigVideoDevice *)self isLockedForConfiguration])
  {
    if (+[AVCaptureDevice isCenterStageEnabled]&& validRectInUnitRectCoordinateSpace(x, y, width, height))
    {
      devicePropsQueue = self->_devicePropsQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __56__AVCaptureFigVideoDevice_setCenterStageRectOfInterest___block_invoke;
      block[3] = &unk_1E78705B8;
      *&block[5] = x;
      *&block[6] = y;
      *&block[7] = width;
      *&block[8] = height;
      block[4] = self;
      dispatch_sync(devicePropsQueue, block);
      return;
    }

    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    objc_opt_class();
  }

  else
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D920];
    objc_opt_class();
  }

  v11 = [v9 exceptionWithName:v10 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v11);
  }

  NSLog(&cfstr_SuppressingExc.isa, v11);
}

void __56__AVCaptureFigVideoDevice_setCenterStageRectOfInterest___block_invoke(uint64_t a1)
{
  v2 = (a1 + 40);
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(*(a1 + 40));
  if (![*(v2 - 1) _setFigCaptureSourceProperty:*MEMORY[0x1E6990658] withValue:DictionaryRepresentation])
  {
    v4 = (*(a1 + 32) + 1376);
    v5 = *(v2 + 1);
    *v4 = *v2;
    v4[1] = v5;
  }

  CFRelease(DictionaryRepresentation);
}

- (BOOL)isCenterStageMetadataDeliveryEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__AVCaptureFigVideoDevice_isCenterStageMetadataDeliveryEnabled__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setCenterStageMetadataDeliveryEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(AVCaptureFigVideoDevice *)self isLockedForConfiguration])
  {
    if (!v3 || [(AVCaptureFigVideoDevice *)self isCenterStageMetadataDeliverySupported])
    {
      devicePropsQueue = self->_devicePropsQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __65__AVCaptureFigVideoDevice_setCenterStageMetadataDeliveryEnabled___block_invoke;
      block[3] = &unk_1E786EE40;
      block[4] = self;
      v15 = v3;
      dispatch_sync(devicePropsQueue, block);
      return;
    }

    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    v8 = AVMethodExceptionReasonWithObjectAndSelector();
    v9 = v12;
    v10 = v13;
  }

  else
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D920];
    objc_opt_class();
    v8 = AVMethodExceptionReasonWithClassAndSelector();
    v9 = v6;
    v10 = v7;
  }

  v11 = [v9 exceptionWithName:v10 reason:v8 userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v11);
  }

  NSLog(&cfstr_SuppressingExc.isa, v11);
}

uint64_t __65__AVCaptureFigVideoDevice_setCenterStageMetadataDeliveryEnabled___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _setFigCaptureSourceProperty:*MEMORY[0x1E6990650] withValue:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", *(a1 + 40))}];
  if (!result)
  {
    *(*(a1 + 32) + 1408) = *(a1 + 40);
  }

  return result;
}

- (void)_setCenterStageFramingMode:(int64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  devicePropsQueue = self->_devicePropsQueue;
  v10 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__AVCaptureFigVideoDevice__setCenterStageFramingMode___block_invoke;
  block[3] = &unk_1E7870018;
  block[4] = self;
  block[5] = &v7;
  block[6] = a3;
  dispatch_sync(devicePropsQueue, block);
  if (*(v8 + 6) && dword_1ED8069C0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  _Block_object_dispose(&v7, 8);
}

uint64_t __54__AVCaptureFigVideoDevice__setCenterStageFramingMode___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) lockForConfiguration:0];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _setFigCaptureSourceProperty:*MEMORY[0x1E6990648] withValue:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", *(a1 + 48))}];
    v3 = *(a1 + 32);

    return [v3 unlockForConfiguration];
  }

  return result;
}

- (double)displayVideoZoomFactorMultiplier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0x3FF0000000000000;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__AVCaptureFigVideoDevice_displayVideoZoomFactorMultiplier__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __59__AVCaptureFigVideoDevice_displayVideoZoomFactorMultiplier__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 1080);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setManualFramingEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(AVCaptureFigVideoDevice *)self isLockedForConfiguration])
  {
    if (!v3 || [(AVCaptureFigVideoDevice *)self isManualFramingSupported]&& BYTE4(self->_degradedCaptureQualityFactors) != 1)
    {
      devicePropsQueue = self->_devicePropsQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __51__AVCaptureFigVideoDevice_setManualFramingEnabled___block_invoke;
      block[3] = &unk_1E786EE40;
      block[4] = self;
      v10 = v3;
      dispatch_sync(devicePropsQueue, block);
      return;
    }

    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
    objc_opt_class();
  }

  else
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D920];
    objc_opt_class();
  }

  v7 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v7);
  }

  NSLog(&cfstr_SuppressingExc.isa, v7);
}

- (double)manualFramingMinZoomFactor
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__AVCaptureFigVideoDevice_manualFramingMinZoomFactor__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __53__AVCaptureFigVideoDevice_manualFramingMinZoomFactor__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 1472);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (double)manualFramingMaxZoomFactor
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__AVCaptureFigVideoDevice_manualFramingMaxZoomFactor__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __53__AVCaptureFigVideoDevice_manualFramingMaxZoomFactor__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 1480);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (double)manualFramingDefaultZoomFactor
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__AVCaptureFigVideoDevice_manualFramingDefaultZoomFactor__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __57__AVCaptureFigVideoDevice_manualFramingDefaultZoomFactor__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 1488);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setGazeSelectionEnabled:(BOOL)a3
{
  devicePropsQueue = self->_devicePropsQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__AVCaptureFigVideoDevice_setGazeSelectionEnabled___block_invoke;
  v4[3] = &unk_1E786EE40;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(devicePropsQueue, v4);
}

- (BOOL)_isBackgroundBlurActiveForEnabled:(BOOL)a3
{
  if (!a3 || ![(AVCaptureDeviceFormat *)self->_activeFormat isBackgroundBlurSupported])
  {
    return 0;
  }

  return +[AVCaptureDevice isEligibleForBackgroundBlur];
}

- (void)_updateBackgroundBlurActiveForEnabled:(BOOL)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__AVCaptureFigVideoDevice__updateBackgroundBlurActiveForEnabled___block_invoke;
  block[3] = &unk_1E78700E0;
  block[4] = self;
  block[5] = &v13;
  block[6] = &v9;
  v8 = a3;
  dispatch_sync(devicePropsQueue, block);
  if (*(v14 + 24) != *(v10 + 24))
  {
    [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"backgroundBlurActive"];
    [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"portraitEffectActive"];
    v5 = self->_devicePropsQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __65__AVCaptureFigVideoDevice__updateBackgroundBlurActiveForEnabled___block_invoke_2;
    v6[3] = &unk_1E786FEE0;
    v6[4] = self;
    v6[5] = &v9;
    dispatch_sync(v5, v6);
    [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"portraitEffectActive"];
    [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"backgroundBlurActive"];
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
}

uint64_t __65__AVCaptureFigVideoDevice__updateBackgroundBlurActiveForEnabled___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 1410);
  result = [*(a1 + 32) _isBackgroundBlurActiveForEnabled:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)_updatePortraitEffectStudioLightQuality:(int64_t)a3
{
  devicePropsQueue = self->_devicePropsQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__AVCaptureFigVideoDevice__updatePortraitEffectStudioLightQuality___block_invoke;
  v4[3] = &unk_1E786ECD0;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(devicePropsQueue, v4);
}

uint64_t __67__AVCaptureFigVideoDevice__updatePortraitEffectStudioLightQuality___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) lockForConfiguration:0];
  if (result)
  {
    [*(a1 + 32) _setFigCaptureSourceProperty:*MEMORY[0x1E6990788] withValue:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", *(a1 + 40))}];
    v3 = *(a1 + 32);

    return [v3 unlockForConfiguration];
  }

  return result;
}

- (void)_updateBackgroundBlurAperture:(float)a3
{
  devicePropsQueue = self->_devicePropsQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__AVCaptureFigVideoDevice__updateBackgroundBlurAperture___block_invoke;
  v4[3] = &unk_1E78704A0;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(devicePropsQueue, v4);
}

uint64_t __57__AVCaptureFigVideoDevice__updateBackgroundBlurAperture___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) lockForConfiguration:0];
  if (result)
  {
    LODWORD(v3) = *(a1 + 40);
    [*(a1 + 32) _setFigCaptureSourceProperty:*MEMORY[0x1E6990608] withValue:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v3)}];
    v4 = *(a1 + 32);

    return [v4 unlockForConfiguration];
  }

  return result;
}

- (BOOL)_isStudioLightingActiveForEnabled:(BOOL)a3
{
  if (!a3 || ![(AVCaptureDeviceFormat *)self->_activeFormat isStudioLightSupported])
  {
    return 0;
  }

  return +[AVCaptureDevice isEligibleForStudioLighting];
}

- (void)_updateStudioLightingActiveForEnabled:(BOOL)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__AVCaptureFigVideoDevice__updateStudioLightingActiveForEnabled___block_invoke;
  block[3] = &unk_1E78700E0;
  block[4] = self;
  block[5] = &v13;
  block[6] = &v9;
  v8 = a3;
  dispatch_sync(devicePropsQueue, block);
  if (*(v14 + 24) != *(v10 + 24))
  {
    [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"studioLightingActive"];
    [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"studioLightActive"];
    v5 = self->_devicePropsQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __65__AVCaptureFigVideoDevice__updateStudioLightingActiveForEnabled___block_invoke_2;
    v6[3] = &unk_1E786FEE0;
    v6[4] = self;
    v6[5] = &v9;
    dispatch_sync(v5, v6);
    [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"studioLightActive"];
    [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"studioLightingActive"];
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
}

uint64_t __65__AVCaptureFigVideoDevice__updateStudioLightingActiveForEnabled___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 1413);
  result = [*(a1 + 32) _isStudioLightingActiveForEnabled:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)_setStudioLightingAllowed:(BOOL)a3
{
  devicePropsQueue = self->_devicePropsQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__AVCaptureFigVideoDevice__setStudioLightingAllowed___block_invoke;
  v4[3] = &unk_1E786EE40;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(devicePropsQueue, v4);
}

- (void)_updateStudioLightingIntensity:(float)a3
{
  devicePropsQueue = self->_devicePropsQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__AVCaptureFigVideoDevice__updateStudioLightingIntensity___block_invoke;
  v4[3] = &unk_1E78704A0;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(devicePropsQueue, v4);
}

uint64_t __58__AVCaptureFigVideoDevice__updateStudioLightingIntensity___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) lockForConfiguration:0];
  if (result)
  {
    LODWORD(v3) = *(a1 + 40);
    [*(a1 + 32) _setFigCaptureSourceProperty:*MEMORY[0x1E69907E8] withValue:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v3)}];
    v4 = *(a1 + 32);

    return [v4 unlockForConfiguration];
  }

  return result;
}

- (BOOL)_reactionEffectsActiveForEnabled:(BOOL)a3
{
  if (!a3 || ![(AVCaptureDeviceFormat *)self->_activeFormat reactionEffectsSupported])
  {
    return 0;
  }

  return +[AVCaptureDevice isEligibleForReactionEffects];
}

- (void)_updateReactionEffectsActiveForEnabled:(BOOL)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__AVCaptureFigVideoDevice__updateReactionEffectsActiveForEnabled___block_invoke;
  block[3] = &unk_1E78700E0;
  block[4] = self;
  block[5] = &v13;
  block[6] = &v9;
  v8 = a3;
  dispatch_sync(devicePropsQueue, block);
  if (*(v14 + 24) != *(v10 + 24))
  {
    [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"canPerformReactionEffects"];
    v5 = self->_devicePropsQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __66__AVCaptureFigVideoDevice__updateReactionEffectsActiveForEnabled___block_invoke_2;
    v6[3] = &unk_1E786FEE0;
    v6[4] = self;
    v6[5] = &v9;
    dispatch_sync(v5, v6);
    [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"canPerformReactionEffects"];
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
}

uint64_t __66__AVCaptureFigVideoDevice__updateReactionEffectsActiveForEnabled___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 1416);
  result = [*(a1 + 32) _reactionEffectsActiveForEnabled:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)_setReactionEffectsAllowed:(BOOL)a3
{
  devicePropsQueue = self->_devicePropsQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__AVCaptureFigVideoDevice__setReactionEffectsAllowed___block_invoke;
  v4[3] = &unk_1E786EE40;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(devicePropsQueue, v4);
}

- (void)_updateGesturesEnabled:(BOOL)a3
{
  devicePropsQueue = self->_devicePropsQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__AVCaptureFigVideoDevice__updateGesturesEnabled___block_invoke;
  v4[3] = &unk_1E786EE40;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(devicePropsQueue, v4);
}

uint64_t __50__AVCaptureFigVideoDevice__updateGesturesEnabled___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) lockForConfiguration:0];
  if (result)
  {
    [*(a1 + 32) _setFigCaptureSourceProperty:*MEMORY[0x1E6990718] withValue:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", *(a1 + 40))}];
    v3 = *(a1 + 32);

    return [v3 unlockForConfiguration];
  }

  return result;
}

- (void)_updateSuppressedGesturesEnabled:(BOOL)a3
{
  devicePropsQueue = self->_devicePropsQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__AVCaptureFigVideoDevice__updateSuppressedGesturesEnabled___block_invoke;
  v4[3] = &unk_1E786EE40;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(devicePropsQueue, v4);
}

uint64_t __60__AVCaptureFigVideoDevice__updateSuppressedGesturesEnabled___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) lockForConfiguration:0];
  if (result)
  {
    [*(a1 + 32) _setFigCaptureSourceProperty:*MEMORY[0x1E6990808] withValue:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", *(a1 + 40))}];
    v3 = *(a1 + 32);

    return [v3 unlockForConfiguration];
  }

  return result;
}

- (void)_performReaction:(id)a3
{
  fcsQueue = self->_fcsQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__AVCaptureFigVideoDevice__performReaction___block_invoke;
  v4[3] = &unk_1E786EAA8;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(fcsQueue, v4);
}

uint64_t __44__AVCaptureFigVideoDevice__performReaction___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 48);
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 16);
  result = VTable + 16;
  v5 = v6;
  if (*v6 >= 4uLL)
  {
    v7 = v5[11];
    if (v7)
    {

      return v7(v2, v1);
    }
  }

  return result;
}

- (BOOL)_isBackgroundReplacementActiveForEnabled:(BOOL)a3
{
  if (!a3 || ![(AVCaptureDeviceFormat *)self->_activeFormat isBackgroundReplacementSupported])
  {
    return 0;
  }

  return +[AVCaptureDevice isEligibleForBackgroundReplacement];
}

- (void)_updateBackgroundReplacementActiveForEnabled:(BOOL)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__AVCaptureFigVideoDevice__updateBackgroundReplacementActiveForEnabled___block_invoke;
  block[3] = &unk_1E78700E0;
  block[4] = self;
  block[5] = &v13;
  block[6] = &v9;
  v8 = a3;
  dispatch_sync(devicePropsQueue, block);
  if (*(v14 + 24) != *(v10 + 24))
  {
    [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"backgroundReplacementActive"];
    v5 = self->_devicePropsQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __72__AVCaptureFigVideoDevice__updateBackgroundReplacementActiveForEnabled___block_invoke_2;
    v6[3] = &unk_1E786FEE0;
    v6[4] = self;
    v6[5] = &v9;
    dispatch_sync(v5, v6);
    [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"backgroundReplacementActive"];
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
}

uint64_t __72__AVCaptureFigVideoDevice__updateBackgroundReplacementActiveForEnabled___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 1419);
  result = [*(a1 + 32) _isBackgroundReplacementActiveForEnabled:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)_setBackgroundReplacementAllowed:(BOOL)a3
{
  devicePropsQueue = self->_devicePropsQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__AVCaptureFigVideoDevice__setBackgroundReplacementAllowed___block_invoke;
  v4[3] = &unk_1E786EE40;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(devicePropsQueue, v4);
}

- (void)_updateBackgroundReplacementPixelBuffer:(__CVBuffer *)a3
{
  devicePropsQueue = self->_devicePropsQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__AVCaptureFigVideoDevice__updateBackgroundReplacementPixelBuffer___block_invoke;
  v4[3] = &unk_1E786ECD0;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(devicePropsQueue, v4);
}

uint64_t __67__AVCaptureFigVideoDevice__updateBackgroundReplacementPixelBuffer___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) lockForConfiguration:0];
  if (result)
  {
    [*(a1 + 32) _setFigCaptureSourcePixelBufferProperty:*MEMORY[0x1E6990610] withValue:*(a1 + 40)];
    v3 = *(a1 + 32);

    return [v3 unlockForConfiguration];
  }

  return result;
}

- (void)setAutomaticallyAdjustsVideoHDREnabled:(BOOL)a3
{
  if ([(AVCaptureFigVideoDevice *)self isLockedForConfiguration])
  {
    devicePropsQueue = self->_devicePropsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__AVCaptureFigVideoDevice_setAutomaticallyAdjustsVideoHDREnabled___block_invoke;
    block[3] = &unk_1E786EE40;
    block[4] = self;
    v10 = a3;
    dispatch_sync(devicePropsQueue, block);
  }

  else
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D920];
    objc_opt_class();
    v8 = [v6 exceptionWithName:v7 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v8);
    }

    NSLog(&cfstr_SuppressingExc.isa, v8);
  }
}

- (void)setVideoHDREnabled:(BOOL)a3
{
  if ([(AVCaptureFigVideoDevice *)self isLockedForConfiguration]&& ![(AVCaptureFigVideoDevice *)self automaticallyAdjustsVideoHDREnabled])
  {
    devicePropsQueue = self->_devicePropsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__AVCaptureFigVideoDevice_setVideoHDREnabled___block_invoke;
    block[3] = &unk_1E786FFF0;
    block[4] = self;
    block[5] = a2;
    v11 = a3;
    dispatch_sync(devicePropsQueue, block);
  }

  else
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D920];
    objc_opt_class();
    v8 = [v6 exceptionWithName:v7 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v8);
    }

    NSLog(&cfstr_SuppressingExc.isa, v8);
  }
}

void __46__AVCaptureFigVideoDevice_setVideoHDREnabled___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 136) isVideoHDRSupported])
  {
    *(*(a1 + 32) + 1013) = *(a1 + 48);
  }

  else
  {
    v2 = MEMORY[0x1E695DF30];
    v3 = *MEMORY[0x1E695D940];
    objc_opt_class();
    v4 = [v2 exceptionWithName:v3 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v4);
    }

    NSLog(&cfstr_SuppressingExc.isa, v4);
  }
}

- (void)_setVideoHDREnabled:(BOOL)a3 forceResetVideoHDRSuspended:(BOOL)a4
{
  v4 = a4;
  [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"videoHDREnabled"];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  devicePropsQueue = self->_devicePropsQueue;
  v13 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__AVCaptureFigVideoDevice__setVideoHDREnabled_forceResetVideoHDRSuspended___block_invoke;
  block[3] = &unk_1E7870248;
  block[4] = self;
  block[5] = &v10;
  v9 = a3;
  dispatch_sync(devicePropsQueue, block);
  if ((v11[3] & 1) != 0 || v4)
  {
    [(AVCaptureFigVideoDevice *)self _resetVideoHDRSuspended];
  }

  [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"videoHDREnabled"];
  _Block_object_dispose(&v10, 8);
}

uint64_t __75__AVCaptureFigVideoDevice__setVideoHDREnabled_forceResetVideoHDRSuspended___block_invoke(uint64_t result)
{
  *(*(*(result + 40) + 8) + 24) = *(*(result + 32) + 1013) != *(result + 48);
  *(*(result + 32) + 1013) = *(result + 48);
  return result;
}

- (void)setVideoHDRSuspended:(BOOL)a3
{
  if (-[AVCaptureFigVideoDevice isLockedForConfiguration](self, "isLockedForConfiguration") && ([-[AVCaptureFigVideoDevice activeFormat](self "activeFormat")] & 1) != 0 && -[AVCaptureFigVideoDevice isVideoHDREnabled](self, "isVideoHDREnabled"))
  {
    devicePropsQueue = self->_devicePropsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__AVCaptureFigVideoDevice_setVideoHDRSuspended___block_invoke;
    block[3] = &unk_1E786EE40;
    block[4] = self;
    v10 = a3;
    dispatch_sync(devicePropsQueue, block);
  }

  else
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D920];
    objc_opt_class();
    v8 = [v6 exceptionWithName:v7 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v8);
    }

    NSLog(&cfstr_SuppressingExc.isa, v8);
  }
}

uint64_t __48__AVCaptureFigVideoDevice_setVideoHDRSuspended___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _setFigCaptureSourceProperty:*MEMORY[0x1E6990840] withValue:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", *(a1 + 40))}];
  if (!result)
  {
    *(*(a1 + 32) + 1014) = *(a1 + 40);
  }

  return result;
}

uint64_t __50__AVCaptureFigVideoDevice__resetVideoHDRSuspended__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _setFigCaptureSourceProperty:*MEMORY[0x1E6990840] withValue:MEMORY[0x1E695E110]];
  if (!result)
  {
    *(*(a1 + 32) + 1014) = 0;
  }

  return result;
}

- (void)setActiveColorSpace:(int64_t)a3
{
  if ([(AVCaptureFigVideoDevice *)self isLockedForConfiguration])
  {
    devicePropsQueue = self->_devicePropsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__AVCaptureFigVideoDevice_setActiveColorSpace___block_invoke;
    block[3] = &unk_1E786ECA8;
    block[4] = self;
    block[5] = a3;
    block[6] = a2;
    dispatch_sync(devicePropsQueue, block);
  }

  else
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D920];
    objc_opt_class();
    v9 = [v7 exceptionWithName:v8 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v9);
    }

    NSLog(&cfstr_SuppressingExc.isa, v9);
  }
}

void __47__AVCaptureFigVideoDevice_setActiveColorSpace___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 136) supportedColorSpaces];
  if ([v2 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", *(a1 + 40))}])
  {
    *(*(a1 + 32) + 1024) = *(a1 + 40);
  }

  else
  {
    v3 = MEMORY[0x1E695DF30];
    v4 = *MEMORY[0x1E695D940];
    objc_opt_class();
    v5 = [v3 exceptionWithName:v4 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
  }
}

- (BOOL)isSISSupported
{
  v2 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E6990248]];

  return [v2 BOOLValue];
}

- (void)_setStillImageStabilizationAutomaticallyEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(AVCaptureFigVideoDevice *)self lockForConfiguration:0])
  {
    -[AVCaptureFigVideoDevice _setFigCaptureSourceProperty:withValue:](self, "_setFigCaptureSourceProperty:withValue:", *MEMORY[0x1E69907E0], [MEMORY[0x1E696AD98] numberWithBool:v3]);

    [(AVCaptureFigVideoDevice *)self unlockForConfiguration];
  }
}

- (id)_recommendedFrameRateRangeForVideoFormat:(id)a3 depthFormat:(id)a4 figSystemPressureLevel:(int)a5
{
  v8 = [objc_msgSend(a4 "videoSupportedFrameRateRanges")];
  v9 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E6990190]];
  v10 = [-[NSDictionary objectForKeyedSubscript:](self->_fcsAttributes objectForKeyedSubscript:{*MEMORY[0x1E6990280]), "BOOLValue"}];
  if (!v8 && !v10 || ![a3 isPhotoFormat])
  {
    return 0;
  }

  if (a5 <= 1)
  {
    if (a5)
    {
      if (a5 != 1)
      {
        return 0;
      }

      if ([v9 objectForKeyedSubscript:@"Fair"])
      {
        v12 = @"Fair";
LABEL_22:
        v14 = [objc_msgSend(objc_msgSend(v9 objectForKeyedSubscript:{v12), "objectForKeyedSubscript:", @"Min", "intValue"}];
        v15 = [objc_msgSend(objc_msgSend(v9 objectForKeyedSubscript:{v12), "objectForKeyedSubscript:", @"Max", "intValue"}];
        goto LABEL_23;
      }
    }

    else if ([v9 objectForKeyedSubscript:@"Nominal"])
    {
      v12 = @"Nominal";
      goto LABEL_22;
    }

    [v8 maxFrameRate];
    v15 = v17;
    v16 = 15;
    goto LABEL_24;
  }

  if (a5 == 2)
  {
    if (![v9 objectForKeyedSubscript:@"Serious"])
    {
      v16 = 15;
      v15 = 20;
      goto LABEL_24;
    }

    v11 = @"Serious";
    goto LABEL_19;
  }

  if (a5 == 3)
  {
    if ([v9 objectForKeyedSubscript:@"Critical"])
    {
      v11 = @"Critical";
      goto LABEL_19;
    }

LABEL_27:
    v16 = 15;
    v15 = 15;
    goto LABEL_24;
  }

  if (a5 != 4)
  {
    return 0;
  }

  if (![v9 objectForKeyedSubscript:@"Shutdown"])
  {
    goto LABEL_27;
  }

  v11 = @"Shutdown";
LABEL_19:
  v14 = [objc_msgSend(objc_msgSend(v9 objectForKeyedSubscript:{v11), "objectForKeyedSubscript:", @"Min", "intValue"}];
  v15 = [objc_msgSend(objc_msgSend(v9 objectForKeyedSubscript:{v11), "objectForKeyedSubscript:", @"Max", "intValue"}];
LABEL_23:
  v16 = v14;
LABEL_24:

  return [AVFrameRateRange frameRateRangeWithMinRate:v16 maxFrameRate:v15];
}

- (id)spatialCaptureDiscomfortReasons
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__AVCaptureFigVideoDevice_spatialCaptureDiscomfortReasons__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __58__AVCaptureFigVideoDevice_spatialCaptureDiscomfortReasons__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x1E695DFD8] setWithSet:*(*(a1 + 32) + 1096)];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_updateSpatialCaptureStatus:(unint64_t)a3
{
  v3 = a3 & 7;
  if ((self->_cinematicVideoSceneMonitoringStatuses & 7) != v3)
  {
    v4 = a3;
    [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"spatialCaptureDiscomfortReasons"];
    [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"stereoCaptureStatus"];
    [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"stereoVideoCaptureStatus"];
    v6 = [MEMORY[0x1E695DFA8] set];
    v7 = v6;
    if ((v4 & 2) != 0)
    {
      [v6 addObject:@"AVSpatialCaptureDiscomfortReasonNotEnoughLight"];
    }

    if ((v4 & 4) != 0)
    {
      [v7 addObject:@"AVSpatialCaptureDiscomfortReasonSubjectTooClose"];
    }

    devicePropsQueue = self->_devicePropsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__AVCaptureFigVideoDevice__updateSpatialCaptureStatus___block_invoke;
    block[3] = &unk_1E786FF80;
    block[4] = self;
    block[5] = v7;
    block[6] = v3;
    dispatch_sync(devicePropsQueue, block);
    [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"spatialCaptureDiscomfortReasons"];
    [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"stereoCaptureStatus"];
    [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"stereoVideoCaptureStatus"];
  }
}

uint64_t __55__AVCaptureFigVideoDevice__updateSpatialCaptureStatus___block_invoke(void *a1)
{
  result = [objc_alloc(MEMORY[0x1E695DFD8]) initWithSet:a1[5]];
  *(a1[4] + 1096) = result;
  *(a1[4] + 1112) = a1[6];
  return result;
}

- (id)cinematicVideoCaptureSceneMonitoringStatuses
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__AVCaptureFigVideoDevice_cinematicVideoCaptureSceneMonitoringStatuses__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __71__AVCaptureFigVideoDevice_cinematicVideoCaptureSceneMonitoringStatuses__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x1E695DFD8] setWithSet:*(*(a1 + 32) + 1104)];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_updateCinematicVideoCaptureSceneMonitoringStatus:(int64_t)a3
{
  if (a3 == 5)
  {
    v5 = @"AVCaptureSceneMonitoringStatusNotEnoughLight";
  }

  else
  {
    v5 = 0;
  }

  if (a3 == 1 || v5)
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    if (a3 != 1)
    {
      [v6 addObjectsFromArray:{-[NSSet allObjects](self->_spatialCaptureDiscomfortReasons, "allObjects")}];
      [v6 addObject:v5];
    }

    if (![(NSSet *)self->_spatialCaptureDiscomfortReasons isEqualToSet:v6])
    {
      [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"cinematicVideoCaptureSceneMonitoringStatuses"];
      devicePropsQueue = self->_devicePropsQueue;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __77__AVCaptureFigVideoDevice__updateCinematicVideoCaptureSceneMonitoringStatus___block_invoke;
      v8[3] = &unk_1E786EAA8;
      v8[4] = self;
      v8[5] = v6;
      dispatch_async(devicePropsQueue, v8);
      [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"cinematicVideoCaptureSceneMonitoringStatuses"];
    }
  }

  else
  {
    [AVCaptureFigVideoDevice _updateCinematicVideoCaptureSceneMonitoringStatus:];
  }
}

uint64_t __77__AVCaptureFigVideoDevice__updateCinematicVideoCaptureSceneMonitoringStatus___block_invoke(uint64_t a1)
{
  result = [objc_alloc(MEMORY[0x1E695DFD8]) initWithSet:*(a1 + 40)];
  *(*(a1 + 32) + 1104) = result;
  return result;
}

- (void)updateVideoZoomFactorForSpatialVideoEnabled:(BOOL)a3
{
  if (a3)
  {
    [(AVCaptureFigVideoDevice *)self _setMinAvailableVideoZoomFactor:2.0];

    [(AVCaptureFigVideoDevice *)self _setMaxAvailableVideoZoomFactor:2.0];
  }

  else
  {

    [(AVCaptureFigVideoDevice *)self _updateMinMaxDefaultVideoZoomFactors];
  }
}

- (int64_t)shallowDepthOfFieldEffectStatus
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__AVCaptureFigVideoDevice_shallowDepthOfFieldEffectStatus__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_setShallowDepthOfFieldEffectStatus:(int64_t)a3
{
  devicePropsQueue = self->_devicePropsQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__AVCaptureFigVideoDevice__setShallowDepthOfFieldEffectStatus___block_invoke;
  v4[3] = &unk_1E786ECD0;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(devicePropsQueue, v4);
}

- (void)_setDepthDataDeliveryEnabled:(BOOL)a3
{
  v3 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3052000000;
  v24 = __Block_byref_object_copy__7;
  v25 = __Block_byref_object_dispose__7;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__AVCaptureFigVideoDevice__setDepthDataDeliveryEnabled___block_invoke;
  block[3] = &unk_1E78705E0;
  v12 = a3;
  block[4] = self;
  block[5] = &v13;
  block[6] = &v21;
  block[7] = &v17;
  dispatch_sync(devicePropsQueue, block);
  if (v3 && *(v18 + 24) == 1)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Depth data delivery and camera calibration data delivery may not both be enabled" userInfo:0]);
  }

  if (*(v14 + 24) == 1)
  {
    [(AVCaptureFigVideoDevice *)self _updateMinMaxDefaultVideoZoomFactors];
    if ([(AVCaptureFigVideoDevice *)self _isBravoVariant])
    {
      [(AVCaptureFigVideoDevice *)self _updateFallbackPrimaryConstituentDevicesForDepthDataDeliveryEnabled:v3];
    }

    [(AVCaptureFigVideoDevice *)self _updateCenterStageActiveForEnabled:+[AVCaptureDevice updateDependentProperties:"isCenterStageEnabled"], 0];
    if (dword_1ED8069C0)
    {
      v10 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  if (v22[5])
  {
    [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"systemPressureState"];
    v7 = self->_devicePropsQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__AVCaptureFigVideoDevice__setDepthDataDeliveryEnabled___block_invoke_656;
    v8[3] = &unk_1E786FEE0;
    v8[4] = self;
    v8[5] = &v21;
    dispatch_sync(v7, v8);
    [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"systemPressureState"];
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
}

uint64_t __56__AVCaptureFigVideoDevice__setDepthDataDeliveryEnabled___block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 64);
  v3 = *(result + 32);
  if (v2 != *(v3 + 1120))
  {
    *(v3 + 1120) = v2;
    *(*(*(result + 40) + 8) + 24) = 1;
    *(*(result + 32) + 1296) = [*(*(result + 32) + 1288) figLevel];
    v4 = -[AVCaptureSystemPressureState initWithFigLevel:factors:recommendedFrameRateRangeForPortrait:recommendedFrameRateRangeForPhotoMode:]([AVCaptureSystemPressureState alloc], "initWithFigLevel:factors:recommendedFrameRateRangeForPortrait:recommendedFrameRateRangeForPhotoMode:", *(*(v1 + 32) + 1296), [*(*(v1 + 32) + 1288) factors], objc_msgSend(*(v1 + 32), "_recommendedFrameRateRangeForVideoFormat:depthFormat:figSystemPressureLevel:", *(*(v1 + 32) + 136), *(*(v1 + 32) + 144), *(*(v1 + 32) + 1296)), objc_msgSend(*(v1 + 32), "_recommendedFrameRateRangeForVideoFormat:depthFormat:figSystemPressureLevel:", *(*(v1 + 32) + 136), 0, *(*(v1 + 32) + 1296)));
    result = [(AVCaptureSystemPressureState *)v4 isEqual:*(*(v1 + 32) + 1288)];
    if ((result & 1) == 0)
    {
      *(*(*(v1 + 48) + 8) + 40) = v4;
    }
  }

  *(*(*(v1 + 56) + 8) + 24) = *(*(v1 + 32) + 1136);
  return result;
}

id __56__AVCaptureFigVideoDevice__setDepthDataDeliveryEnabled___block_invoke_656(uint64_t a1)
{
  result = *(*(*(a1 + 40) + 8) + 40);
  *(*(a1 + 32) + 1288) = result;
  return result;
}

- (void)_setCameraCalibrationDataDeliveryEnabled:(BOOL)a3
{
  v3 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__AVCaptureFigVideoDevice__setCameraCalibrationDataDeliveryEnabled___block_invoke;
  v6[3] = &unk_1E7870608;
  v7 = a3;
  v6[4] = self;
  v6[5] = &v12;
  v6[6] = &v8;
  dispatch_sync(devicePropsQueue, v6);
  if (v3 && *(v9 + 24) == 1)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Depth data delivery and camera calibration data delivery may not both be enabled" userInfo:0]);
  }

  if (*(v13 + 24) == 1)
  {
    [(AVCaptureFigVideoDevice *)self _updateMinMaxDefaultVideoZoomFactors];
  }

  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
}

uint64_t __68__AVCaptureFigVideoDevice__setCameraCalibrationDataDeliveryEnabled___block_invoke(uint64_t result)
{
  v1 = *(result + 56);
  v2 = *(result + 32);
  if (v1 != *(v2 + 1136))
  {
    *(v2 + 1136) = v1;
    *(*(*(result + 40) + 8) + 24) = 1;
    v2 = *(result + 32);
  }

  *(*(*(result + 48) + 8) + 24) = *(v2 + 1120);
  return result;
}

- (void)_setConstantColorEnabled:(BOOL)a3
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  devicePropsQueue = self->_devicePropsQueue;
  v7 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__AVCaptureFigVideoDevice__setConstantColorEnabled___block_invoke;
  block[3] = &unk_1E7870360;
  v5 = a3;
  block[4] = self;
  block[5] = v6;
  dispatch_sync(devicePropsQueue, block);
  _Block_object_dispose(v6, 8);
}

uint64_t __52__AVCaptureFigVideoDevice__setConstantColorEnabled___block_invoke(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(result + 32);
  if (v1 != *(v2 + 1529))
  {
    *(v2 + 1529) = v1;
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

- (void)_setBackgroundBlurAllowed:(BOOL)a3
{
  devicePropsQueue = self->_devicePropsQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__AVCaptureFigVideoDevice__setBackgroundBlurAllowed___block_invoke;
  v4[3] = &unk_1E786EE40;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(devicePropsQueue, v4);
}

- (void)setEyeDetectionEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(AVCaptureFigVideoDevice *)self isEyeDetectionSupported])
  {
    if ([(AVCaptureFigVideoDevice *)self _setFaceDetectionFeatureEnabled:v3 enabledState:&self->_captureSourceSupportedZeroFrameDelaySynchronizationMetadata]!= -16452)
    {
      return;
    }

    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D920];
    objc_opt_class();
  }

  else
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
    objc_opt_class();
  }

  v7 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v7);
  }

  NSLog(&cfstr_SuppressingExc.isa, v7);
}

- (void)setEyeClosedDetectionEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(AVCaptureFigVideoDevice *)self isEyeClosedDetectionSupported])
  {
    if ([(AVCaptureFigVideoDevice *)self _setFaceDetectionFeatureEnabled:v3 enabledState:&self->_captureSourceSupportedZeroFrameDelaySynchronizationMetadata + 1]!= -16452)
    {
      return;
    }

    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D920];
    objc_opt_class();
  }

  else
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
    objc_opt_class();
  }

  v7 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v7);
  }

  NSLog(&cfstr_SuppressingExc.isa, v7);
}

- (void)setSmileDetectionEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(AVCaptureFigVideoDevice *)self isSmileDetectionSupported])
  {
    if ([(AVCaptureFigVideoDevice *)self _setFaceDetectionFeatureEnabled:v3 enabledState:&self->_captureSourceSupportedZeroFrameDelaySynchronizationMetadata + 2]!= -16452)
    {
      return;
    }

    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D920];
    objc_opt_class();
  }

  else
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
    objc_opt_class();
  }

  v7 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v7);
  }

  NSLog(&cfstr_SuppressingExc.isa, v7);
}

- (int)_setFaceDetectionFeatureEnabled:(BOOL)a3 enabledState:(BOOL *)a4
{
  v4 = *a4;
  if (v4 == a3)
  {
    return 0;
  }

  *a4 = a3;
  result = [(AVCaptureFigVideoDevice *)self _setFigCaptureSourceProperty:*MEMORY[0x1E69906D8] withValue:[(AVCaptureFigVideoDevice *)self _faceDetectionConfigurationDictionary] cacheOnly:self->_cachesFigCaptureSourceConfigurationChanges];
  if (result)
  {
    *a4 = v4;
  }

  return result;
}

- (id)_faceDetectionConfigurationDictionary
{
  v5[0] = [MEMORY[0x1E696AD98] numberWithBool:{LOBYTE(self->_captureSourceSupportedZeroFrameDelaySynchronizationMetadata), *MEMORY[0x1E69903A0]}];
  v4[1] = *MEMORY[0x1E6990398];
  v5[1] = [MEMORY[0x1E696AD98] numberWithBool:BYTE1(self->_captureSourceSupportedZeroFrameDelaySynchronizationMetadata)];
  v4[2] = *MEMORY[0x1E69903A8];
  v5[2] = [MEMORY[0x1E696AD98] numberWithBool:BYTE2(self->_captureSourceSupportedZeroFrameDelaySynchronizationMetadata)];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
}

- (BOOL)isAttentionDetectionSupported
{
  v2 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E69900A0]];

  return [v2 BOOLValue];
}

- (BOOL)isFaceOcclusionDetectionSupported
{
  v2 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E6990160]];

  return [v2 BOOLValue];
}

- (id)supportedMetadataIdentifiersForFrameRateControl
{
  v3 = [MEMORY[0x1E695DEC8] array];
  if (![-[NSDictionary objectForKeyedSubscript:](self->_fcsAttributes objectForKeyedSubscript:{*MEMORY[0x1E69901F0]), "BOOLValue"}])
  {
    return v3;
  }

  return [(AVCaptureFigVideoDevice *)self supportedMetadataObjectIdentifiers];
}

- (id)deviceFormatForSessionPreset:(id)a3 sourceVideoFormat:(unsigned int)a4
{
  if ([a3 isEqualToString:@"AVCaptureSessionPresetInputPriority"])
  {
    return self->_activeFormat;
  }

  v8 = [(AVCaptureFigVideoDevice *)self deviceType];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  formats = self->_formats;
  v10 = [(NSArray *)formats countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = 0;
  v13 = *v19;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v19 != v13)
      {
        objc_enumerationMutation(formats);
      }

      v7 = *(*(&v18 + 1) + 8 * i);
      if ([objc_msgSend(v7 "AVCaptureSessionPresets")])
      {
        if (CMFormatDescriptionGetMediaSubType([v7 formatDescription]) == a4)
        {
          return v7;
        }

        if (v12)
        {
          v15 = 0;
        }

        else
        {
          v15 = v8 == @"AVCaptureDeviceTypeExternal";
        }

        if (v15)
        {
          v12 = v7;
        }
      }
    }

    v11 = [(NSArray *)formats countByEnumeratingWithState:&v18 objects:v17 count:16];
    v7 = v12;
  }

  while (v11);
  return v7;
}

- (BOOL)setValue:(id)a3 forCMIOExtensionProperty:(id)a4 error:(id *)a5
{
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  dispatch_assert_queue_not_V2(self->_devicePropsQueue);
  devicePropsQueue = self->_devicePropsQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__AVCaptureFigVideoDevice_setValue_forCMIOExtensionProperty_error___block_invoke;
  v11[3] = &unk_1E7870630;
  v11[4] = self;
  v11[5] = a4;
  v11[6] = a3;
  v11[7] = v16;
  v11[8] = &v12;
  v11[9] = a5;
  dispatch_async_and_wait(devicePropsQueue, v11);
  LOBYTE(a5) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(v16, 8);
  return a5;
}

uint64_t __67__AVCaptureFigVideoDevice_setValue_forCMIOExtensionProperty_error___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) _setFigCaptureSourceProperty:*(a1 + 40) withValue:*(a1 + 48)];
  result = *(*(*(a1 + 56) + 8) + 24);
  if (result)
  {
    if (*(a1 + 72))
    {
      result = AVLocalizedErrorWithUnderlyingOSStatus();
      **(a1 + 72) = result;
    }

    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

  return result;
}

- (id)copyValueForCMIOExtensionProperty:(id)a3 error:(id *)a4
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__7;
  v14 = __Block_byref_object_dispose__7;
  v15 = 0;
  dispatch_assert_queue_not_V2(self->_devicePropsQueue);
  devicePropsQueue = self->_devicePropsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__AVCaptureFigVideoDevice_copyValueForCMIOExtensionProperty_error___block_invoke;
  block[3] = &unk_1E786FF08;
  block[5] = a3;
  block[6] = &v10;
  block[4] = self;
  dispatch_async_and_wait(devicePropsQueue, block);
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);
  return v7;
}

uint64_t __67__AVCaptureFigVideoDevice_copyValueForCMIOExtensionProperty_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _copyFigCaptureSourceProperty:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

- (BOOL)addCMIOExtensionPropertyValueChangeHandler:(id)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  dispatch_assert_queue_not_V2(self->_devicePropsQueue);
  devicePropsQueue = self->_devicePropsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__AVCaptureFigVideoDevice_addCMIOExtensionPropertyValueChangeHandler___block_invoke;
  block[3] = &unk_1E7870658;
  block[4] = self;
  block[5] = a3;
  block[6] = &v8;
  dispatch_async_and_wait(devicePropsQueue, block);
  LOBYTE(a3) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return a3;
}

uint64_t __70__AVCaptureFigVideoDevice_addCMIOExtensionPropertyValueChangeHandler___block_invoke(void *a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__AVCaptureFigVideoDevice_addCMIOExtensionPropertyValueChangeHandler___block_invoke_2;
  block[3] = &unk_1E786EC08;
  block[4] = a1[4];
  if (addCMIOExtensionPropertyValueChangeHandler__onceToken != -1)
  {
    dispatch_once(&addCMIOExtensionPropertyValueChangeHandler__onceToken, block);
  }

  if ([*(a1[4] + 1504) containsObject:a1[5]])
  {
    *(*(a1[6] + 8) + 24) = 0;
  }

  return [*(a1[4] + 1504) addObject:a1[5]];
}

id __70__AVCaptureFigVideoDevice_addCMIOExtensionPropertyValueChangeHandler___block_invoke_2(uint64_t a1)
{
  result = objc_alloc_init(MEMORY[0x1E695DF70]);
  *(*(a1 + 32) + 1504) = result;
  return result;
}

- (void)removeCMIOExtensionPropertyValueChangeHandler:(id)a3
{
  dispatch_assert_queue_not_V2(self->_devicePropsQueue);
  devicePropsQueue = self->_devicePropsQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __73__AVCaptureFigVideoDevice_removeCMIOExtensionPropertyValueChangeHandler___block_invoke;
  v6[3] = &unk_1E786F7E8;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async_and_wait(devicePropsQueue, v6);
}

uint64_t __73__AVCaptureFigVideoDevice_removeCMIOExtensionPropertyValueChangeHandler___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 1504) containsObject:*(a1 + 40)];
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 1504);

    return [v4 removeObject:v3];
  }

  return result;
}

- (void)enumerateCMIOExtensionPropertiesWithBlock:(id)a3
{
  dispatch_assert_queue_not_V2(self->_devicePropsQueue);
  devicePropsQueue = self->_devicePropsQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__AVCaptureFigVideoDevice_enumerateCMIOExtensionPropertiesWithBlock___block_invoke;
  v6[3] = &unk_1E786F7E8;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async_and_wait(devicePropsQueue, v6);
}

void __69__AVCaptureFigVideoDevice_enumerateCMIOExtensionPropertiesWithBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _copyFigCaptureSourceProperty:*MEMORY[0x1E69907F8]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __69__AVCaptureFigVideoDevice_enumerateCMIOExtensionPropertiesWithBlock___block_invoke_2;
    v3[3] = &unk_1E7870680;
    v3[4] = *(a1 + 40);
    [v2 enumerateObjectsUsingBlock:v3];
  }
}

uint64_t __69__AVCaptureFigVideoDevice_enumerateCMIOExtensionPropertiesWithBlock___block_invoke_2(uint64_t a1, void *a2)
{
  [a2 objectForKeyedSubscript:*MEMORY[0x1E6990430]];
  [a2 objectForKeyedSubscript:*MEMORY[0x1E6990438]];
  v4 = *MEMORY[0x1E6990428];
  v5 = [objc_msgSend(a2 objectForKeyedSubscript:{*MEMORY[0x1E6990428]), "BOOLValue"}];
  v6 = *MEMORY[0x1E6990420];
  v7 = [a2 objectForKeyedSubscript:*MEMORY[0x1E6990420]];
  v8 = *MEMORY[0x1E6990418];
  v9 = [a2 objectForKeyedSubscript:*MEMORY[0x1E6990418]];
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v5), v4}];
  if (v7)
  {
    [v10 setObject:v7 forKeyedSubscript:v6];
  }

  if (v9)
  {
    [v10 setObject:v9 forKeyedSubscript:v8];
  }

  v11 = *(*(a1 + 32) + 16);

  return v11();
}

- (id)AVVideoSettingsForSessionPreset:(id)a3
{
  v4 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E6990080]];

  return [v4 objectForKeyedSubscript:a3];
}

- ($2825F4736939C4A6D3AD43837233062D)maxH264PhotoDimensions
{
  v2 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E6990088]];
  v3 = *MEMORY[0x1E6990038];
  v4 = [v2 objectForKeyedSubscript:*MEMORY[0x1E6990038]];
  v5 = [objc_msgSend(v4 objectForKeyedSubscript:{*MEMORY[0x1E6990030]), "intValue"}];
  v6 = [v2 objectForKeyedSubscript:v3];
  return (v5 | ([objc_msgSend(v6 objectForKeyedSubscript:{*MEMORY[0x1E6990028]), "intValue"}] << 32));
}

- ($2825F4736939C4A6D3AD43837233062D)maxH264VideoDimensions
{
  v2 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E6990088]];
  v3 = *MEMORY[0x1E6990040];
  v4 = [v2 objectForKeyedSubscript:*MEMORY[0x1E6990040]];
  v5 = [objc_msgSend(v4 objectForKeyedSubscript:{*MEMORY[0x1E6990030]), "intValue"}];
  v6 = [v2 objectForKeyedSubscript:v3];
  return (v5 | ([objc_msgSend(v6 objectForKeyedSubscript:{*MEMORY[0x1E6990028]), "intValue"}] << 32));
}

- (int)minMacroblocksForHighProfileUpTo30fps
{
  v2 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E6990088]];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E6990050]];

  return [v3 intValue];
}

- (int)minMacroblocksForHighProfileAbove30fps
{
  v2 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E6990088]];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E6990048]];

  return [v3 intValue];
}

- (BOOL)usesQuantizationScalingMatrix_H264_Steep_16_48
{
  v2 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E6990088]];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E6990058]];

  return [v3 BOOLValue];
}

- (int)hevcTurboModeVersion
{
  v2 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E6990090]];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E6990078]];

  return [v3 intValue];
}

- (BOOL)hevcAllowBFramesForHighCTUCount
{
  v2 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E6990090]];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E6990060]];

  return [v3 BOOLValue];
}

- (BOOL)isHEVCRelaxedAverageBitRateTargetSupported
{
  v2 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E6990090]];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E6990070]];

  return [v3 BOOLValue];
}

- (BOOL)isMotionCompensatedTemporalFilteringSupported
{
  v2 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E6990090]];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E6990068]];

  return [v3 BOOLValue];
}

- (id)bravoCameraSelectionBehavior
{
  result = [(AVCaptureFigVideoDevice *)self activePrimaryConstituentDeviceSwitchingBehavior];
  if (result > 1)
  {
    if (result == 2)
    {
      v3 = AVCaptureBravoCameraSelectionBehaviorEvaluatesOnZoomChange;
    }

    else
    {
      if (result != 3)
      {
        return result;
      }

      v3 = AVCaptureBravoCameraSelectionBehaviorEvaluatesNever;
    }
  }

  else if (result)
  {
    if (result != 1)
    {
      return result;
    }

    v3 = AVCaptureBravoCameraSelectionBehaviorEvaluatesContinuously;
  }

  else
  {
    v3 = AVCaptureBravoCameraSelectionBehaviorUnsupported;
  }

  return *v3;
}

- (void)setPrimaryConstituentDeviceSwitchingBehavior:(int64_t)a3 restrictedSwitchingBehaviorConditions:(unint64_t)a4
{
  if (![(AVCaptureFigVideoDevice *)self _isBravoVariant])
  {
    if (!a3)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  if (a3 == 2)
  {
    if (a4 >= 8)
    {
      v7 = MEMORY[0x1E695DF30];
      v8 = *MEMORY[0x1E695D940];
      goto LABEL_8;
    }

    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_7:
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    goto LABEL_8;
  }

  if (a4)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
LABEL_8:
    v9 = [v7 exceptionWithName:v8 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v9);
    }

    NSLog(&cfstr_SuppressingExc.isa, v9);
    return;
  }

LABEL_12:
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __110__AVCaptureFigVideoDevice_setPrimaryConstituentDeviceSwitchingBehavior_restrictedSwitchingBehaviorConditions___block_invoke;
  block[3] = &unk_1E78706A8;
  block[6] = a3;
  block[7] = a4;
  block[4] = self;
  block[5] = &v14;
  dispatch_sync(devicePropsQueue, block);
  if (*(v15 + 6))
  {
    FigDebugAssert3();
  }

  else
  {
    [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"primaryConstituentDeviceSwitchingBehavior"];
    [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"primaryConstituentDeviceRestrictedSwitchingBehaviorConditions"];
    v11 = self->_devicePropsQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __110__AVCaptureFigVideoDevice_setPrimaryConstituentDeviceSwitchingBehavior_restrictedSwitchingBehaviorConditions___block_invoke_2;
    v12[3] = &unk_1E786ECA8;
    v12[4] = self;
    v12[5] = a3;
    v12[6] = a4;
    dispatch_sync(v11, v12);
    [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"primaryConstituentDeviceRestrictedSwitchingBehaviorConditions"];
    [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"primaryConstituentDeviceSwitchingBehavior"];
  }

  _Block_object_dispose(&v14, 8);
}

uint64_t __110__AVCaptureFigVideoDevice_setPrimaryConstituentDeviceSwitchingBehavior_restrictedSwitchingBehaviorConditions___block_invoke(uint64_t a1)
{
  v4 = *(a1 + 48);
  v2 = [MEMORY[0x1E695DEF0] dataWithBytes:&v4 length:16];
  result = [*(a1 + 32) _setFigCaptureSourceProperty:*MEMORY[0x1E6990630] withValue:v2 cacheOnly:0];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void *__110__AVCaptureFigVideoDevice_setPrimaryConstituentDeviceSwitchingBehavior_restrictedSwitchingBehaviorConditions___block_invoke_2(void *result)
{
  *(result[4] + 1168) = result[5];
  *(result[4] + 1176) = result[6];
  return result;
}

- (int64_t)primaryConstituentDeviceSwitchingBehavior
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__AVCaptureFigVideoDevice_primaryConstituentDeviceSwitchingBehavior__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unint64_t)primaryConstituentDeviceRestrictedSwitchingBehaviorConditions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __88__AVCaptureFigVideoDevice_primaryConstituentDeviceRestrictedSwitchingBehaviorConditions__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)activePrimaryConstituentDeviceSwitchingBehavior
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __74__AVCaptureFigVideoDevice_activePrimaryConstituentDeviceSwitchingBehavior__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unint64_t)activePrimaryConstituentDeviceRestrictedSwitchingBehaviorConditions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __94__AVCaptureFigVideoDevice_activePrimaryConstituentDeviceRestrictedSwitchingBehaviorConditions__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)fallbackPrimaryConstituentDevices
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__7;
  v11 = __Block_byref_object_dispose__7;
  v12 = MEMORY[0x1E695E0F0];
  if ([(AVCaptureFigVideoDevice *)self _isBravoVariant])
  {
    if (!self->_supportedFallbackPrimaryConstituentDevices)
    {
      [(AVCaptureFigVideoDevice *)self _populateSupportedFallbackPrimaryConstituentDevices];
    }

    devicePropsQueue = self->_devicePropsQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __60__AVCaptureFigVideoDevice_fallbackPrimaryConstituentDevices__block_invoke;
    v6[3] = &unk_1E7870040;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(devicePropsQueue, v6);
  }

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

id __60__AVCaptureFigVideoDevice_fallbackPrimaryConstituentDevices__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 1192);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setFallbackPrimaryConstituentDevices:(id)a3
{
  if ([(AVCaptureFigVideoDevice *)self _isBravoVariant]&& !self->_primaryConstituentDeviceRestrictedSwitchingBehaviorConditions)
  {
    [(AVCaptureFigVideoDevice *)self _populateSupportedFallbackPrimaryConstituentDevices];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if (([self->_primaryConstituentDeviceRestrictedSwitchingBehaviorConditions containsObject:v9] & 1) == 0)
        {
          v10 = MEMORY[0x1E695DF30];
          v11 = *MEMORY[0x1E695D940];
          objc_opt_class();
          v12 = [v10 exceptionWithName:v11 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:{0, v9}];
          if (AVCaptureShouldThrowForAPIViolations())
          {
            objc_exception_throw(v12);
          }

          NSLog(&cfstr_SuppressingExc.isa, v12);
          return;
        }
      }

      v6 = [a3 countByEnumeratingWithState:&v14 objects:v13 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  if (![(NSArray *)self->_supportedFallbackPrimaryConstituentDevices isEqualToArray:a3])
  {
    [(AVCaptureFigVideoDevice *)self _setFallbackPrimaryConstituentDevices:a3];
  }
}

- (void)_updateFallbackPrimaryConstituentDevicesForDepthDataDeliveryEnabled:(BOOL)a3
{
  v3 = a3;
  if (!self->_primaryConstituentDeviceRestrictedSwitchingBehaviorConditions)
  {
    [(AVCaptureFigVideoDevice *)self _populateSupportedFallbackPrimaryConstituentDevices];
  }

  v5 = [(NSArray *)[(AVCaptureDevice *)self constituentDevices] firstObject];
  if (v3)
  {
    if (![(NSArray *)self->_supportedFallbackPrimaryConstituentDevices containsObject:v5])
    {
      return;
    }

    v6 = [(NSArray *)self->_supportedFallbackPrimaryConstituentDevices mutableCopy];
    [v6 removeObject:v5];
  }

  else
  {
    if (!self->_widestFallbackPrimaryConstituentDeviceRemovedForDepthDataDelivery || [(NSArray *)self->_supportedFallbackPrimaryConstituentDevices containsObject:v5])
    {
      return;
    }

    v6 = [(NSArray *)self->_supportedFallbackPrimaryConstituentDevices mutableCopy];
    [v6 addObject:v5];
  }

  if (v6)
  {
    if (![(AVCaptureFigVideoDevice *)self _setFallbackPrimaryConstituentDevices:v6])
    {
      self->_widestFallbackPrimaryConstituentDeviceRemovedForDepthDataDelivery = v3;
    }
  }
}

- (int)_setFallbackPrimaryConstituentDevices:(id)a3
{
  v3 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = avcfvd_deviceTypesFromAVCaptureDevices(a3);
  devicePropsQueue = self->_devicePropsQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__AVCaptureFigVideoDevice__setFallbackPrimaryConstituentDevices___block_invoke;
  v8[3] = &unk_1E78706D0;
  v8[4] = self;
  v8[5] = v5;
  v8[6] = v3;
  v8[7] = &v9;
  dispatch_sync(devicePropsQueue, v8);
  LODWORD(v3) = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v3;
}

uint64_t __65__AVCaptureFigVideoDevice__setFallbackPrimaryConstituentDevices___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _setFigCaptureSourceProperty:*MEMORY[0x1E69906A0] withValue:*(a1 + 40) cacheOnly:*(*(a1 + 32) + 392)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  if (!*(*(*(a1 + 56) + 8) + 24))
  {

    result = [*(a1 + 48) copy];
    *(*(a1 + 32) + 1192) = result;
  }

  return result;
}

void *__117__AVCaptureFigVideoDevice__setActivePrimaryConstituentDeviceSwitchingBehavior_restrictedSwitchingBehaviorConditions___block_invoke(void *result)
{
  *(result[4] + 1152) = result[5];
  *(result[4] + 1160) = result[6];
  return result;
}

- (BOOL)isFocusedAtMacro
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__AVCaptureFigVideoDevice_isFocusedAtMacro__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)minimumFocusDistance
{
  result = [-[NSDictionary objectForKeyedSubscript:](self->_fcsAttributes objectForKeyedSubscript:{*MEMORY[0x1E69901F8]), "integerValue"}];
  if (result <= 0)
  {
    return -1;
  }

  return result;
}

- (BOOL)isTimeOfFlightProjectorModeSupported:(int64_t)a3
{
  if (![-[AVCaptureFigVideoDevice deviceType](self "deviceType")])
  {
    return a3 == 0;
  }

  v5 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E6990278]];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];

  return [v5 containsObject:v6];
}

- (void)setTimeOfFlightProjectorMode:(int64_t)a3
{
  if ([(AVCaptureFigVideoDevice *)self isLockedForConfiguration])
  {
    if ([(AVCaptureFigVideoDevice *)self isTimeOfFlightProjectorModeSupported:a3])
    {
      devicePropsQueue = self->_devicePropsQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __56__AVCaptureFigVideoDevice_setTimeOfFlightProjectorMode___block_invoke;
      block[3] = &unk_1E786ECD0;
      block[4] = self;
      block[5] = a3;
      dispatch_sync(devicePropsQueue, block);
      return;
    }

    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v8 = AVMethodExceptionReasonWithObjectAndSelector();
    v9 = v11;
    v10 = v12;
  }

  else
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D920];
    objc_opt_class();
    v8 = AVMethodExceptionReasonWithClassAndSelector();
    v9 = v6;
    v10 = v7;
  }

  v13 = [v9 exceptionWithName:v10 reason:v8 userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v13);
  }

  NSLog(&cfstr_SuppressingExc.isa, v13);
}

- (void)setSpatialOverCaptureEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(AVCaptureFigVideoDevice *)self isLockedForConfiguration])
  {
    if (!v3 || ([-[AVCaptureFigVideoDevice activeFormat](self "activeFormat")] & 1) != 0)
    {
      devicePropsQueue = self->_devicePropsQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __56__AVCaptureFigVideoDevice_setSpatialOverCaptureEnabled___block_invoke;
      block[3] = &unk_1E786EE40;
      block[4] = self;
      v10 = v3;
      dispatch_sync(devicePropsQueue, block);
      return;
    }

    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    objc_opt_class();
  }

  else
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D920];
    objc_opt_class();
  }

  v8 = [v6 exceptionWithName:v7 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v8);
  }

  NSLog(&cfstr_SuppressingExc.isa, v8);
}

- (void)setNonDestructiveCropEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(AVCaptureFigVideoDevice *)self isLockedForConfiguration])
  {
    if (!v3 || ([-[AVCaptureFigVideoDevice activeFormat](self "activeFormat")] & 1) != 0)
    {
      devicePropsQueue = self->_devicePropsQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __56__AVCaptureFigVideoDevice_setNonDestructiveCropEnabled___block_invoke;
      block[3] = &unk_1E786EE40;
      block[4] = self;
      v10 = v3;
      dispatch_sync(devicePropsQueue, block);
      return;
    }

    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    objc_opt_class();
  }

  else
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D920];
    objc_opt_class();
  }

  v8 = [v6 exceptionWithName:v7 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v8);
  }

  NSLog(&cfstr_SuppressingExc.isa, v8);
}

- (int64_t)aspectRatioForNonDestructiveCrop
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__AVCaptureFigVideoDevice_aspectRatioForNonDestructiveCrop__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setAspectRatioForNonDestructiveCrop:(int64_t)a3
{
  if ([(AVCaptureFigVideoDevice *)self isLockedForConfiguration])
  {
    if (!a3 || [(AVCaptureFigVideoDevice *)self isNonDestructiveCropEnabled])
    {
      devicePropsQueue = self->_devicePropsQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __63__AVCaptureFigVideoDevice_setAspectRatioForNonDestructiveCrop___block_invoke;
      block[3] = &unk_1E786ECD0;
      block[4] = self;
      block[5] = a3;
      dispatch_sync(devicePropsQueue, block);
      return;
    }

    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    objc_opt_class();
  }

  else
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D920];
    objc_opt_class();
  }

  v8 = [v6 exceptionWithName:v7 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v8);
  }

  NSLog(&cfstr_SuppressingExc.isa, v8);
}

void __63__AVCaptureFigVideoDevice_setAspectRatioForNonDestructiveCrop___block_invoke(uint64_t a1)
{
  Dimensions = CMVideoFormatDescriptionGetDimensions([*(*(a1 + 32) + 136) formatDescription]);
  v3 = *(a1 + 40);
  v4 = 0.0;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v7 = 0.75;
      v4 = 1.0;
    }

    else
    {
      v8 = Dimensions;
      v9 = HIDWORD(Dimensions);
      if (v3 == 4)
      {
        v13 = (Dimensions + Dimensions) / 3.0;
      }

      else
      {
        v7 = 0.0;
        if (v3 != 5)
        {
          goto LABEL_23;
        }

        v10 = AVCaptureMainScreenPixelSize();
        if (v10 >= v11)
        {
          v12 = v11;
        }

        else
        {
          v12 = v10;
        }

        if (v10 < v11)
        {
          v10 = v11;
        }

        v13 = v12 * v8 / v10;
      }

      v4 = v13 / v9;
      v7 = 1.0;
    }
  }

  else
  {
    v5 = 0.75;
    if (v3 == 2)
    {
      v6 = 1.0;
    }

    else
    {
      v5 = 0.0;
      v6 = 0.0;
    }

    if (v3 >= 2)
    {
      v4 = v5;
    }

    else
    {
      v4 = 1.0;
    }

    if (v3 >= 2)
    {
      v7 = v6;
    }

    else
    {
      v7 = 1.0;
    }
  }

LABEL_23:
  v17.width = v7;
  v17.height = v4;
  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v17);
  v15 = [*(a1 + 32) _setFigCaptureSourceProperty:*MEMORY[0x1E6990760] withValue:DictionaryRepresentation cacheOnly:*(*(a1 + 32) + 392)];

  if (!v15)
  {
    *(*(a1 + 32) + 1304) = *(a1 + 40);
    v16 = (*(a1 + 32) + 1312);
    *v16 = v7;
    v16[1] = v4;
  }
}

- (id)_copyFigCaptureSourceProperty:(__CFString *)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__7;
  fcsQueue = self->_fcsQueue;
  v11 = __Block_byref_object_dispose__7;
  v12 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__AVCaptureFigVideoDevice__copyFigCaptureSourceProperty___block_invoke;
  block[3] = &unk_1E7870018;
  block[5] = &v7;
  block[6] = a3;
  block[4] = self;
  dispatch_sync(fcsQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __57__AVCaptureFigVideoDevice__copyFigCaptureSourceProperty___block_invoke(void *a1)
{
  v1 = *(a1[4] + 48);
  v2 = a1[6];
  v3 = *(a1[5] + 8);
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 8);
  result = VTable + 8;
  v7 = *(v6 + 48);
  if (v7)
  {
    v8 = *MEMORY[0x1E695E480];

    return v7(v1, v2, v8, v3 + 40);
  }

  return result;
}

- (id)_getFigCaptureSourceProperty:(__CFString *)a3
{
  v3 = [(AVCaptureFigVideoDevice *)self _copyFigCaptureSourceProperty:a3];

  return v3;
}

- (int)_setFigCaptureSourcePixelBufferProperty:(__CFString *)a3 withValue:(__CVBuffer *)a4
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  fcsQueue = self->_fcsQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__AVCaptureFigVideoDevice__setFigCaptureSourcePixelBufferProperty_withValue___block_invoke;
  v7[3] = &unk_1E78706A8;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = a3;
  v7[7] = a4;
  dispatch_sync(fcsQueue, v7);
  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __77__AVCaptureFigVideoDevice__setFigCaptureSourcePixelBufferProperty_withValue___block_invoke(void *a1)
{
  v2 = *(a1[4] + 48);
  v3 = a1[6];
  v4 = a1[7];
  v5 = *(CMBaseObjectGetVTable() + 16);
  if (*v5 >= 6uLL && (v6 = v5[13]) != 0)
  {
    result = v6(v2, v3, v4);
  }

  else
  {
    result = 4294954514;
  }

  *(*(a1[5] + 8) + 24) = result;
  v8 = *(a1[5] + 8);
  if (*(v8 + 24) == -16453)
  {
    *(v8 + 24) = 0;
  }

  return result;
}

- (int)_setFigCaptureSourceProperty:(__CFString *)a3 withValue:(id)a4 cacheOnly:(BOOL)a5
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  fcsQueue = self->_fcsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__AVCaptureFigVideoDevice__setFigCaptureSourceProperty_withValue_cacheOnly___block_invoke;
  block[3] = &unk_1E78706F8;
  v9 = a5;
  block[6] = &v10;
  block[7] = a3;
  block[4] = self;
  block[5] = a4;
  dispatch_sync(fcsQueue, block);
  v6 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v6;
}

uint64_t __76__AVCaptureFigVideoDevice__setFigCaptureSourceProperty_withValue_cacheOnly___block_invoke(uint64_t result)
{
  v1 = result;
  if ((*(result + 64) & 1) == 0)
  {
    v2 = *(result + 40);
    v3 = *(*(result + 32) + 48);
    v4 = *(result + 56);
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v5)
    {
      result = v5(v3, v4, v2);
    }

    else
    {
      result = 4294954514;
    }

    *(*(v1[6] + 8) + 24) = result;
  }

  v6 = *(v1[6] + 8);
  v7 = *(v6 + 24);
  if (v7 == -16453)
  {
    *(v6 + 24) = 0;
    v7 = *(*(v1[6] + 8) + 24);
  }

  if (!v7)
  {
    v8 = v1[5];
    v9 = *(v1[4] + 1280);
    v10 = v1[7];

    return [v9 setObject:v8 forKeyedSubscript:v10];
  }

  return result;
}

- (void)_restoreFigCaptureSourceProperties
{
  if ([(AVCaptureFigVideoDevice *)self lockForConfiguration:0])
  {
    fcsQueue = self->_fcsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__AVCaptureFigVideoDevice__restoreFigCaptureSourceProperties__block_invoke;
    block[3] = &unk_1E786EC08;
    block[4] = self;
    dispatch_sync(fcsQueue, block);
    [(AVCaptureFigVideoDevice *)self unlockForConfiguration];
  }
}

uint64_t __61__AVCaptureFigVideoDevice__restoreFigCaptureSourceProperties__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 1280);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__AVCaptureFigVideoDevice__restoreFigCaptureSourceProperties__block_invoke_2;
  v4[3] = &unk_1E7870720;
  v4[4] = v1;
  return [v2 enumerateKeysAndObjectsUsingBlock:v4];
}

uint64_t __61__AVCaptureFigVideoDevice__restoreFigCaptureSourceProperties__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a1 + 32) + 48);
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 8);
  result = VTable + 8;
  v9 = *(v8 + 56);
  if (v9)
  {

    return v9(v5, a2, a3);
  }

  return result;
}

- (void)_reconnectToFigCaptureSource:(OpaqueFigCaptureSource *)a3
{
  v5 = [(AVCaptureFigVideoDevice *)self _copyFigCaptureSourceProperty:*MEMORY[0x1E6990888]];
  if (v5 == *MEMORY[0x1E695E4D0])
  {
    dispatch_semaphore_wait(&self->_propertyToFigCaptureSourcePropertyMap->super.super, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  [(AVCaptureFigVideoDevice *)self _setFigCaptureSource:a3 allowSendingWorkToMainThread:1];
  [(AVCaptureFigVideoDevice *)self _restoreFigCaptureSourceProperties];
  devicePropsQueue = self->_devicePropsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__AVCaptureFigVideoDevice__reconnectToFigCaptureSource___block_invoke;
  block[3] = &unk_1E786EC08;
  block[4] = self;
  dispatch_sync(devicePropsQueue, block);
}

- (void)_handleCMIOExtensionPropertyChangeNotification:(id)a3
{
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3052000000;
  v19[3] = __Block_byref_object_copy__7;
  v19[4] = __Block_byref_object_dispose__7;
  v19[5] = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3052000000;
  v18[3] = __Block_byref_object_copy__7;
  v18[4] = __Block_byref_object_dispose__7;
  v18[5] = 0;
  if (dword_1ED8069C0)
  {
    v17 = 0;
    v16 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  dispatch_assert_queue_not_V2(self->_devicePropsQueue);
  if (a3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = *MEMORY[0x1E6990430];
      if ([a3 objectForKeyedSubscript:*MEMORY[0x1E6990430]])
      {
        v7 = *MEMORY[0x1E6990438];
        if ([a3 objectForKeyedSubscript:*MEMORY[0x1E6990438]])
        {
          if ([objc_msgSend(a3 objectForKeyedSubscript:{v6), "isEqualToString:", @"VideoZoomFactor"}])
          {
            [objc_msgSend(a3 objectForKeyedSubscript:{v7), "floatValue"}];
            v9 = v8;
            [(AVCaptureFigVideoDevice *)self videoZoomFactor];
            v10 = v9;
            if (v11 != v10)
            {
              [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"videoZoomFactor"];
              devicePropsQueue = self->_devicePropsQueue;
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = __74__AVCaptureFigVideoDevice__handleCMIOExtensionPropertyChangeNotification___block_invoke;
              block[3] = &unk_1E786ECD0;
              block[4] = self;
              *&block[5] = v10;
              dispatch_sync(devicePropsQueue, block);
              [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"videoZoomFactor"];
            }
          }

          if (*&self->_gazeSelectionEnabled)
          {
            v13 = self->_devicePropsQueue;
            v14[0] = MEMORY[0x1E69E9820];
            v14[1] = 3221225472;
            v14[2] = __74__AVCaptureFigVideoDevice__handleCMIOExtensionPropertyChangeNotification___block_invoke_709;
            v14[3] = &unk_1E7870770;
            v14[6] = v19;
            v14[7] = v18;
            v14[4] = a3;
            v14[5] = self;
            dispatch_async_and_wait(v13, v14);
          }
        }
      }
    }
  }

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(v19, 8);
}

float __74__AVCaptureFigVideoDevice__handleCMIOExtensionPropertyChangeNotification___block_invoke(uint64_t a1)
{
  if (dword_1ED8069C0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = *(a1 + 40);
  *(*(a1 + 32) + 1032) = result;
  return result;
}

uint64_t __74__AVCaptureFigVideoDevice__handleCMIOExtensionPropertyChangeNotification___block_invoke_709(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E6990430]];
  *(*(*(a1 + 56) + 8) + 40) = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E6990438]];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(*(a1 + 40) + 1504);
  result = [v2 countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        global_queue = dispatch_get_global_queue(0, 0);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __74__AVCaptureFigVideoDevice__handleCMIOExtensionPropertyChangeNotification___block_invoke_2;
        block[3] = &unk_1E7870748;
        block[4] = v7;
        v10 = *(a1 + 48);
        dispatch_async_and_wait(global_queue, block);
        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v12 objects:v11 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (void)_handleNotification:(__CFString *)a3 payload:(id)a4
{
  if (CFEqual(a3, *MEMORY[0x1E6990540]))
  {
    v7 = [(AVCaptureFigVideoDevice *)self _copyFigCaptureSourceProperty:*MEMORY[0x1E6990888]];
    if (v7 != *MEMORY[0x1E695E4C0])
    {
      v8 = v7;
      dispatch_semaphore_signal(&self->_propertyToFigCaptureSourcePropertyMap->super.super);
      if (v8)
      {

        CFRelease(v8);
      }
    }

    return;
  }

  if (CFEqual(a3, *MEMORY[0x1E6990670]))
  {
    if (!self->_proxyDevice || ([objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E6990468]), "BOOLValue"}] & 1) != 0)
    {
      return;
    }

    v185.origin.x = 0.0;
    *&v185.origin.y = &v185;
    *&v185.size.width = 0x2020000000;
    devicePropsQueue = self->_devicePropsQueue;
    LOBYTE(v185.size.height) = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke;
    block[3] = &unk_1E7870248;
    block[4] = self;
    block[5] = &v185;
    v287 = 0;
    dispatch_sync(devicePropsQueue, block);
    if (*(*&v185.origin.y + 24) == 1)
    {
      [(AVCaptureFigVideoDevice *)self _setConnected:0];
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    }

    goto LABEL_12;
  }

  if (CFEqual(a3, *MEMORY[0x1E69904C8]))
  {

    [(AVCaptureFigVideoDevice *)self _handleCMIOExtensionPropertyChangeNotification:a4];
    return;
  }

  if (CFEqual(a3, *MEMORY[0x1E6990578]))
  {
    v11 = [MEMORY[0x1E696AD88] defaultCenter];

    [v11 postNotificationName:@"AVCaptureDeviceSubjectAreaDidChangeNotification" object:self];
    return;
  }

  if (CFEqual(a3, *MEMORY[0x1E69905D0]))
  {
    v12 = [objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E6990468]), "BOOLValue"}];
    [(AVCaptureFigVideoDevice *)self _setAdjustingFocus:v12];
    if (v12)
    {
      return;
    }

    v185.origin.x = 0.0;
    *&v185.origin.y = &v185;
    *&v185.size.width = 0x2020000000;
    v185.size.height = 0.0;
    v13 = self->_devicePropsQueue;
    v285[0] = MEMORY[0x1E69E9820];
    v285[1] = 3221225472;
    v285[2] = __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_2;
    v285[3] = &unk_1E7870040;
    v285[4] = self;
    v285[5] = &v185;
    dispatch_sync(v13, v285);
    if (*(*&v185.origin.y + 24) == 1)
    {
      [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"focusMode"];
      v14 = self->_devicePropsQueue;
      v284[0] = MEMORY[0x1E69E9820];
      v284[1] = 3221225472;
      v284[2] = __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_3;
      v284[3] = &unk_1E786EC08;
      v284[4] = self;
      dispatch_sync(v14, v284);
      [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"focusMode"];
    }

    goto LABEL_12;
  }

  if (CFEqual(a3, *MEMORY[0x1E69906F8]))
  {
    [objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E6990468]), "floatValue"}];
    v16 = v15;
    v185.origin.x = 0.0;
    *&v185.origin.y = &v185;
    *&v185.size.width = 0x2020000000;
    v17 = self->_devicePropsQueue;
    LOBYTE(v185.size.height) = 0;
    v282[0] = MEMORY[0x1E69E9820];
    v282[1] = 3221225472;
    v282[2] = __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_4;
    v282[3] = &unk_1E7870798;
    v283 = v15;
    v282[5] = &v185;
    v282[4] = self;
    dispatch_sync(v17, v282);
    if (*(*&v185.origin.y + 24) == 1)
    {
      [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"lensPosition"];
      v18 = self->_devicePropsQueue;
      v280[0] = MEMORY[0x1E69E9820];
      v280[1] = 3221225472;
      v280[2] = __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_5;
      v280[3] = &unk_1E78704A0;
      v280[4] = self;
      v281 = v16;
      dispatch_sync(v18, v280);
      [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"lensPosition"];
    }

    goto LABEL_12;
  }

  if (CFEqual(a3, *MEMORY[0x1E6990510]))
  {
    v19 = 832;
LABEL_32:
    v20 = *(&self->super.super.isa + v19);

    [(AVCaptureFigVideoDevice *)self _handleManualControlCompletionForRequestQueue:v20 withPayload:a4];
    return;
  }

  if (CFEqual(a3, *MEMORY[0x1E69905C8]))
  {
    v21 = [objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E6990468]), "BOOLValue"}];

    [(AVCaptureFigVideoDevice *)self _setAdjustingExposure:v21];
    return;
  }

  if (CFEqual(a3, *MEMORY[0x1E69905B0]))
  {
    v22 = [a4 objectForKeyedSubscript:*MEMORY[0x1E6990468]];
    if (!v22)
    {
      return;
    }

    memset(&v185, 0, 24);
    CMTimeMakeFromDictionary(&v185, v22);
    v23 = @"activeMaxExposureDuration";
    [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"activeMaxExposureDuration"];
    v24 = self->_devicePropsQueue;
    v277[0] = MEMORY[0x1E69E9820];
    v277[1] = 3221225472;
    v277[2] = __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_6;
    v277[3] = &unk_1E7870450;
    v277[4] = self;
    origin = v185.origin;
    width = v185.size.width;
    v25 = v277;
LABEL_42:
    dispatch_sync(v24, v25);
LABEL_43:
    v26 = self;
    v27 = v23;
    goto LABEL_44;
  }

  if (CFEqual(a3, *MEMORY[0x1E69906B0]))
  {
    v28 = [a4 objectForKeyedSubscript:*MEMORY[0x1E6990468]];
    memset(&v244, 0, sizeof(v244));
    CMTimeMakeFromDictionary(&v244, v28);
    v273 = 0;
    v274 = &v273;
    v275 = 0x2020000000;
    LOBYTE(v276) = 0;
    v29 = self->_devicePropsQueue;
    v271[0] = MEMORY[0x1E69E9820];
    v271[1] = 3221225472;
    v271[2] = __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_7;
    v271[3] = &unk_1E78707C0;
    v272 = v244;
    v271[5] = &v273;
    v271[4] = self;
    dispatch_sync(v29, v271);
    if (*(v274 + 24) != 1)
    {
LABEL_51:
      v10 = &v273;
      goto LABEL_13;
    }

    v185.origin.x = 0.0;
    *&v185.origin.y = &v185;
    *&v185.size.width = 0x3810000000;
    *&v185.size.height = &unk_1A92DB249;
    v186 = *MEMORY[0x1E6960C70];
    v187 = *(MEMORY[0x1E6960C70] + 16);
    *v269 = 0;
    *&v269[8] = v269;
    *&v269[16] = 0x2020000000;
    LOBYTE(v270) = 0;
    [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"exposureDuration"];
    v30 = self->_devicePropsQueue;
    v267[0] = MEMORY[0x1E69E9820];
    v267[1] = 3221225472;
    v267[2] = __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_8;
    v267[3] = &unk_1E78707E8;
    v268 = v244;
    v267[4] = self;
    v267[5] = &v185;
    v267[6] = v269;
    dispatch_sync(v30, v267);
    if (*(*&v269[8] + 24) == 1)
    {
      *type = *(*&v185.origin.y + 32);
      v242 = *(*&v185.origin.y + 48);
      [(AVCaptureFigVideoDevice *)self _setActiveVideoMaxFrameDurationInternal:type];
    }

    [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"exposureDuration"];
    _Block_object_dispose(v269, 8);
    v31 = &v185;
LABEL_50:
    _Block_object_dispose(v31, 8);
    goto LABEL_51;
  }

  if (CFEqual(a3, *MEMORY[0x1E6990738]))
  {
    [objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E6990468]), "floatValue"}];
    v33 = v32;
    v185.origin.x = 0.0;
    *&v185.origin.y = &v185;
    *&v185.size.width = 0x2020000000;
    v34 = self->_devicePropsQueue;
    LOBYTE(v185.size.height) = 0;
    v265[0] = MEMORY[0x1E69E9820];
    v265[1] = 3221225472;
    v265[2] = __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_9;
    v265[3] = &unk_1E7870798;
    v266 = v32;
    v265[5] = &v185;
    v265[4] = self;
    dispatch_sync(v34, v265);
    if (*(*&v185.origin.y + 24) == 1)
    {
      [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"ISO"];
      v35 = self->_devicePropsQueue;
      v263[0] = MEMORY[0x1E69E9820];
      v263[1] = 3221225472;
      v263[2] = __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_10;
      v263[3] = &unk_1E78704A0;
      v263[4] = self;
      v264 = v33;
      dispatch_sync(v35, v263);
      [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"ISO"];
    }

    goto LABEL_12;
  }

  if (CFEqual(a3, *MEMORY[0x1E69906C0]))
  {
    [objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E6990468]), "floatValue"}];
    v37 = v36;
    v185.origin.x = 0.0;
    *&v185.origin.y = &v185;
    *&v185.size.width = 0x2020000000;
    v38 = self->_devicePropsQueue;
    LOBYTE(v185.size.height) = 0;
    v261[0] = MEMORY[0x1E69E9820];
    v261[1] = 3221225472;
    v261[2] = __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_11;
    v261[3] = &unk_1E7870798;
    v261[5] = &v185;
    v261[4] = self;
    v262 = v36;
    dispatch_sync(v38, v261);
    if (*(*&v185.origin.y + 24) == 1)
    {
      [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"exposureTargetBias"];
      v39 = self->_devicePropsQueue;
      v259[0] = MEMORY[0x1E69E9820];
      v259[1] = 3221225472;
      v259[2] = __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_12;
      v259[3] = &unk_1E78704A0;
      v259[4] = self;
      v260 = v37;
      dispatch_sync(v39, v259);
      [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"exposureTargetBias"];
    }

    goto LABEL_12;
  }

  if (CFEqual(a3, *MEMORY[0x1E69906D0]))
  {
    v185.origin.x = 0.0;
    *&v185.origin.y = &v185;
    *&v185.size.width = 0x2020000000;
    [objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E6990468]), "floatValue"}];
    LODWORD(v185.size.height) = v40;
    v273 = 0;
    v274 = &v273;
    v275 = 0x2020000000;
    v41 = self->_devicePropsQueue;
    LOBYTE(v276) = 0;
    v258[0] = MEMORY[0x1E69E9820];
    v258[1] = 3221225472;
    v258[2] = __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_13;
    v258[3] = &unk_1E7870090;
    v258[4] = self;
    v258[5] = &v185;
    v258[6] = &v273;
    dispatch_sync(v41, v258);
    if (*(v274 + 24) == 1)
    {
      [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"exposureTargetOffset"];
      v42 = self->_devicePropsQueue;
      v257[0] = MEMORY[0x1E69E9820];
      v257[1] = 3221225472;
      v257[2] = __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_14;
      v257[3] = &unk_1E786FEE0;
      v257[4] = self;
      v257[5] = &v185;
      dispatch_sync(v42, v257);
      [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"exposureTargetOffset"];
    }

    goto LABEL_61;
  }

  if (CFEqual(a3, *MEMORY[0x1E6990508]))
  {
    v19 = 840;
    goto LABEL_32;
  }

  if (CFEqual(a3, *MEMORY[0x1E69904C0]))
  {
    v19 = 848;
    goto LABEL_32;
  }

  if (CFEqual(a3, *MEMORY[0x1E69905D8]))
  {
    v43 = [objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E6990468]), "BOOLValue"}];

    [(AVCaptureFigVideoDevice *)self _setAdjustingWhiteBalance:v43];
    return;
  }

  if (CFEqual(a3, *MEMORY[0x1E6990678]))
  {
    v44 = [a4 objectForKeyedSubscript:*MEMORY[0x1E6990468]];
    if (!v44)
    {
      return;
    }

    v45 = v44;
    if ([v44 length] != 12)
    {
      return;
    }

    LODWORD(v274) = 0;
    v273 = 0;
    [v45 getBytes:&v273 length:12];
    v185.origin.x = 0.0;
    *&v185.origin.y = &v185;
    *&v185.size.width = 0x2020000000;
    LOBYTE(v185.size.height) = 0;
    v46 = self->_devicePropsQueue;
    v255[0] = MEMORY[0x1E69E9820];
    v255[1] = 3221225472;
    v255[2] = __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_15;
    v255[3] = &unk_1E7870810;
    v255[6] = v273;
    v256 = v274;
    v255[5] = &v185;
    v255[4] = self;
    dispatch_sync(v46, v255);
    if (*(*&v185.origin.y + 24) == 1)
    {
      [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"deviceWhiteBalanceGains"];
      v47 = self->_devicePropsQueue;
      v253[0] = MEMORY[0x1E69E9820];
      v253[1] = 3221225472;
      v253[2] = __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_16;
      v253[3] = &unk_1E7870838;
      v253[4] = self;
      v253[5] = v273;
      v254 = v274;
      dispatch_sync(v47, v253);
      [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"deviceWhiteBalanceGains"];
    }

    goto LABEL_12;
  }

  if (CFEqual(a3, *MEMORY[0x1E6990728]))
  {
    v48 = [a4 objectForKeyedSubscript:*MEMORY[0x1E6990468]];
    if (!v48)
    {
      return;
    }

    v49 = v48;
    if ([v48 length] != 12)
    {
      return;
    }

    LODWORD(v185.origin.y) = 0;
    v185.origin.x = 0.0;
    [v49 getBytes:&v185 length:12];
    v23 = @"grayWorldDeviceWhiteBalanceGains";
    [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"grayWorldDeviceWhiteBalanceGains"];
    v24 = self->_devicePropsQueue;
    v251[0] = MEMORY[0x1E69E9820];
    v251[1] = 3221225472;
    v251[2] = __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_17;
    v251[3] = &unk_1E7870838;
    y_low = LODWORD(v185.origin.y);
    v251[5] = *&v185.origin.x;
    v251[4] = self;
    v25 = v251;
    goto LABEL_42;
  }

  if (CFEqual(a3, *MEMORY[0x1E6990518]))
  {
    v19 = 856;
    goto LABEL_32;
  }

  if (CFEqual(a3, *MEMORY[0x1E69907A8]))
  {
    v50 = [objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E6990468]), "BOOLValue"}];
    v185.origin.x = 0.0;
    *&v185.origin.y = &v185;
    *&v185.size.width = 0x2020000000;
    v51 = self->_devicePropsQueue;
    LOBYTE(v185.size.height) = 0;
    v249[0] = MEMORY[0x1E69E9820];
    v249[1] = 3221225472;
    v249[2] = __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_18;
    v249[3] = &unk_1E7870248;
    v250 = v50;
    v249[5] = &v185;
    v249[4] = self;
    dispatch_sync(v51, v249);
    if (*(*&v185.origin.y + 24) == 1)
    {
      [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"sceneClassificationActive"];
      v52 = self->_devicePropsQueue;
      v247[0] = MEMORY[0x1E69E9820];
      v247[1] = 3221225472;
      v247[2] = __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_19;
      v247[3] = &unk_1E786EE40;
      v247[4] = self;
      v248 = v50;
      dispatch_sync(v52, v247);
      [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"sceneClassificationActive"];
    }

    goto LABEL_12;
  }

  if (CFEqual(a3, *MEMORY[0x1E69907B0]))
  {
    v53 = @"documentSceneConfidence";
    [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"documentSceneConfidence"];
    v54 = self->_devicePropsQueue;
    v246[0] = MEMORY[0x1E69E9820];
    v246[1] = 3221225472;
    v246[2] = __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_20;
    v246[3] = &unk_1E786EAA8;
    v246[4] = self;
    v246[5] = a4;
    v55 = v246;
LABEL_86:
    dispatch_sync(v54, v55);
LABEL_87:
    v26 = self;
    v27 = v53;
LABEL_44:
    [(AVCaptureFigVideoDevice *)v26 didChangeValueForKey:v27];
    return;
  }

  if (CFEqual(a3, *MEMORY[0x1E6990570]))
  {
    v56 = [objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E69908C8]), "BOOLValue"}];
    v57 = [objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E69908D0]), "BOOLValue"}];
    v58 = [objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E69908D8]), "BOOLValue"}];
    v59 = [a4 objectForKeyedSubscript:*MEMORY[0x1E69908C0]];
    v273 = 0;
    v274 = &v273;
    v275 = 0x2020000000;
    LOBYTE(v276) = 0;
    *v269 = 0;
    *&v269[8] = v269;
    *&v269[16] = 0x2020000000;
    LOBYTE(v270) = 0;
    v244.value = 0;
    *&v244.timescale = &v244;
    v244.epoch = 0x2020000000;
    v245 = 0;
    *type = 0;
    *&type[8] = type;
    v242 = 0x2020000000;
    v243 = 0;
    v237 = 0;
    v238 = &v237;
    v239 = 0x2020000000;
    v240 = 0;
    v185.origin.x = 0.0;
    *&v185.origin.y = &v185;
    *&v185.size.width = 0x3052000000;
    *&v185.size.height = __Block_byref_object_copy__7;
    *&v186 = __Block_byref_object_dispose__7;
    *(&v186 + 1) = 0;
    v60 = self->_devicePropsQueue;
    v236[0] = MEMORY[0x1E69E9820];
    v236[1] = 3221225472;
    v236[2] = __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_21;
    v236[3] = &unk_1E7870860;
    v236[5] = &v273;
    v236[4] = self;
    v236[6] = v269;
    v236[7] = &v244;
    v236[8] = type;
    v236[9] = &v237;
    v236[10] = &v185;
    dispatch_sync(v60, v236);
    if (*(*&v269[8] + 24) != 1 && *(v274 + 24) != v56)
    {
      [(AVCaptureFigVideoDevice *)self _setFlashActive:v56];
    }

    if (*(*&v244.timescale + 24) != v56)
    {
      [(AVCaptureFigVideoDevice *)self _setFlashSceneDetectedForPhotoOutput:v56];
    }

    if (*(*&type[8] + 24) != v57)
    {
      [(AVCaptureFigVideoDevice *)self _setHDRSceneDetectedForPhotoOutput:v57];
    }

    if (*(v238 + 24) != v58)
    {
      [(AVCaptureFigVideoDevice *)self _setIsStillImageStabilizationScene:v58];
    }

    if (([*(*&v185.origin.y + 40) isEqualToDictionary:v59] & 1) == 0)
    {
      [(AVCaptureFigVideoDevice *)self _setDigitalFlashSceneForPhotoOutput:v59];
    }

    _Block_object_dispose(&v185, 8);
    _Block_object_dispose(&v237, 8);
    _Block_object_dispose(type, 8);
    _Block_object_dispose(&v244, 8);
    v31 = v269;
    goto LABEL_50;
  }

  if (CFEqual(a3, *MEMORY[0x1E69906F0]))
  {
    v61 = [objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E6990468]), "BOOLValue"}] ^ 1;

    [(AVCaptureFigVideoDevice *)self _setFlashAvailable:v61];
    return;
  }

  if (CFEqual(a3, *MEMORY[0x1E6990820]))
  {
    v62 = [objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E6990468]), "BOOLValue"}];

    [(AVCaptureFigVideoDevice *)self _setTorchActive:v62];
    return;
  }

  if (CFEqual(a3, *MEMORY[0x1E6990830]))
  {
    v63 = [objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E6990468]), "BOOLValue"}] ^ 1;

    [(AVCaptureFigVideoDevice *)self _setTorchAvailable:v63];
    return;
  }

  if (CFEqual(a3, *MEMORY[0x1E6990828]))
  {
    [objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E6990468]), "floatValue"}];

    [(AVCaptureFigVideoDevice *)self _setTorchLevel:?];
    return;
  }

  if (CFEqual(a3, *MEMORY[0x1E6990740]))
  {
    v64 = [objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E6990468]), "intValue"}];

    [(AVCaptureFigVideoDevice *)self _setImageControlMode:v64];
    return;
  }

  if (CFEqual(a3, *MEMORY[0x1E6990588]))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return;
    }

    v65 = [a4 objectForKeyedSubscript:*MEMORY[0x1E6990948]];
    v66 = [a4 objectForKeyedSubscript:*MEMORY[0x1E6990940]];
    v67 = [a4 objectForKeyedSubscript:*MEMORY[0x1E6990950]];
    v68 = [a4 objectForKeyedSubscript:*MEMORY[0x1E6990958]];
    v185.origin.x = 0.0;
    *&v185.origin.y = &v185;
    *&v185.size.width = 0x2020000000;
    LODWORD(v185.size.height) = 0;
    v273 = 0;
    v274 = &v273;
    v275 = 0x2020000000;
    LODWORD(v276) = 0;
    *v269 = 0;
    *&v269[8] = v269;
    *&v269[16] = 0x2020000000;
    LOBYTE(v270) = 0;
    v69 = self->_devicePropsQueue;
    v235[0] = MEMORY[0x1E69E9820];
    v235[1] = 3221225472;
    v235[2] = __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_22;
    v235[3] = &unk_1E7870888;
    v235[4] = self;
    v235[5] = v66;
    v235[7] = &v185;
    v235[6] = v67;
    v235[8] = &v273;
    v235[9] = v269;
    dispatch_sync(v69, v235);
    if (!v65 || !v67 || !v68)
    {
      goto LABEL_140;
    }

    if ([v68 BOOLValue])
    {
      v70 = [v67 intValue];
      if (v70 != *(v274 + 6) || *(*&v185.origin.y + 24) == 0.0)
      {
        goto LABEL_140;
      }

      [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"rampingVideoZoom"];
      [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"videoZoomFactor"];
      v71 = self->_devicePropsQueue;
      v234[0] = MEMORY[0x1E69E9820];
      v234[1] = 3221225472;
      v234[2] = __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_23;
      v234[3] = &unk_1E786EAA8;
      v234[4] = self;
      v234[5] = v65;
      dispatch_sync(v71, v234);
      [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"videoZoomFactor"];
    }

    else
    {
      if (*(*&v185.origin.y + 24) == 0.0)
      {
        goto LABEL_140;
      }

      if (*(*&v269[8] + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"rampingVideoZoom"];
      }

      [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"videoZoomFactor"];
      v76 = self->_devicePropsQueue;
      v233[0] = MEMORY[0x1E69E9820];
      v233[1] = 3221225472;
      v233[2] = __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_24;
      v233[3] = &unk_1E78708B0;
      v233[4] = self;
      v233[5] = v65;
      v233[6] = v269;
      v233[7] = &v185;
      v233[8] = &v273;
      dispatch_sync(v76, v233);
      [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"videoZoomFactor"];
      if (*(*&v269[8] + 24) != 1)
      {
        goto LABEL_140;
      }
    }

    [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"rampingVideoZoom"];
LABEL_140:
    _Block_object_dispose(v269, 8);
LABEL_61:
    _Block_object_dispose(&v273, 8);
LABEL_12:
    v10 = &v185;
LABEL_13:
    _Block_object_dispose(v10, 8);
    return;
  }

  if (CFEqual(a3, *MEMORY[0x1E69904E8]))
  {
    v72 = *(MEMORY[0x1E695F058] + 16);
    v185.origin = *MEMORY[0x1E695F058];
    v185.size = v72;
    if (!CGRectMakeWithDictionaryRepresentation([a4 objectForKeyedSubscript:*MEMORY[0x1E69903B8]], &v185))
    {
      return;
    }

    v73 = [objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E69903B0]), "intValue"}];
    v53 = @"faceRectangle";
    [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"faceRectangle"];
    [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"faceRectangleAngle"];
    v74 = self->_devicePropsQueue;
    v230[0] = MEMORY[0x1E69E9820];
    v230[1] = 3221225472;
    v231 = v185;
    v230[2] = __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_25;
    v230[3] = &unk_1E78708D8;
    v230[4] = self;
    v232 = v73;
    dispatch_sync(v74, v230);
    [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"faceRectangleAngle"];
    goto LABEL_87;
  }

  if (CFEqual(a3, *MEMORY[0x1E6990558]))
  {
    v75 = *MEMORY[0x1E69908B0];
    v228[0] = *MEMORY[0x1E69908B8];
    v228[1] = v75;
    v229[0] = &unk_1F1CEA0B8;
    v229[1] = MEMORY[0x1E695E0F8];
    -[AVCaptureFigVideoDevice _setDigitalFlashSceneForPhotoOutput:](self, "_setDigitalFlashSceneForPhotoOutput:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v229 forKeys:v228 count:2]);
    [(AVCaptureFigVideoDevice *)self _drainManualControlRequestQueues];
    return;
  }

  if (CFEqual(a3, *MEMORY[0x1E6990568]))
  {
    v77 = [objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E6990468]), "integerValue"}];

    [(AVCaptureFigVideoDevice *)self _updateSpatialCaptureStatus:v77];
  }

  else if (CFEqual(a3, *MEMORY[0x1E6990548]))
  {
    v78 = [objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E6990890]), "integerValue"}];
    v79 = v78;
    if ((v78 - 13) <= 1 && v78 != *&self->_depthDataDeliveryEnabled)
    {
      v185.origin.x = 0.0;
      *&v185.origin.y = &v185;
      *&v185.size.width = 0x3052000000;
      *&v185.size.height = __Block_byref_object_copy__7;
      *&v186 = __Block_byref_object_dispose__7;
      *(&v186 + 1) = 0;
      v80 = self->_devicePropsQueue;
      v227[0] = MEMORY[0x1E69E9820];
      v227[1] = 3221225472;
      v227[2] = __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_26;
      v227[3] = &unk_1E786FEE0;
      v227[4] = self;
      v227[5] = &v185;
      dispatch_sync(v80, v227);
      if (*(*&v185.origin.y + 40))
      {
        [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"systemPressureState"];
        v81 = self->_devicePropsQueue;
        v226[0] = MEMORY[0x1E69E9820];
        v226[1] = 3221225472;
        v226[2] = __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_27;
        v226[3] = &unk_1E786FEE0;
        v226[4] = self;
        v226[5] = &v185;
        dispatch_sync(v81, v226);
        [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"systemPressureState"];
      }

      _Block_object_dispose(&v185, 8);
    }

    [(AVCaptureFigVideoDevice *)self _setShallowDepthOfFieldEffectStatus:v79];
    v82 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", v79), @"AVCaptureDeviceShallowDepthOfFieldStatusChangedKeyEffectStatus", 0}];
    v83 = [a4 objectForKeyedSubscript:*MEMORY[0x1E6990898]];
    if (v83)
    {
      v84 = [v83 integerValue];
      [v82 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", v84), @"AVCaptureDeviceShallowDepthOfFieldStatusChangedKeyStagePreviewStatus"}];
    }

    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    if (self->_cinematicVideoEnabled)
    {
      [(AVCaptureFigVideoDevice *)self _updateCinematicVideoCaptureSceneMonitoringStatus:v79];
    }
  }

  else
  {
    if (CFEqual(a3, *MEMORY[0x1E69904B8]))
    {
      v85 = [a4 objectForKeyedSubscript:*MEMORY[0x1E6990468]];
      v185.origin.x = 0.0;
      v185.origin.y = 0.0;
      [v85 getBytes:&v185 length:16];
      [(AVCaptureFigVideoDevice *)self _setActivePrimaryConstituentDeviceSwitchingBehavior:*&v185.origin.x restrictedSwitchingBehaviorConditions:*&v185.origin.y];
      [objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E6990460]), "floatValue"}];
      [(AVCaptureFigVideoDevice *)self _updateMinMaxVideoZoomFactorsWithMinZoomFactorFromCameraSelection:v86];
      return;
    }

    if (CFEqual(a3, *MEMORY[0x1E69904D8]))
    {
      v87 = [objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E6990468]), "intValue"}];
      v222 = 0u;
      v223 = 0u;
      v224 = 0u;
      v225 = 0u;
      v88 = [(AVCaptureDevice *)self constituentDevices];
      v89 = [(NSArray *)v88 countByEnumeratingWithState:&v222 objects:v221 count:16];
      if (v89)
      {
        v90 = v89;
        v91 = *v223;
LABEL_160:
        v92 = 0;
        while (1)
        {
          if (*v223 != v91)
          {
            objc_enumerationMutation(v88);
          }

          v93 = *(*(&v222 + 1) + 8 * v92);
          if ([v93 figCaptureSourceDeviceType] == v87)
          {
            break;
          }

          if (v90 == ++v92)
          {
            v90 = [(NSArray *)v88 countByEnumeratingWithState:&v222 objects:v221 count:16];
            if (v90)
            {
              goto LABEL_160;
            }

            return;
          }
        }

        if (v93 && v93 != *&self->_cameraCalibrationDataDeliveryEnabled)
        {
          v23 = @"currentPrimaryConstituentDevice";
          [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"currentPrimaryConstituentDevice"];
          [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"activePrimaryConstituentDevice"];
          v101 = self->_devicePropsQueue;
          v220[0] = MEMORY[0x1E69E9820];
          v220[1] = 3221225472;
          v220[2] = __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_28;
          v220[3] = &unk_1E786EAA8;
          v220[4] = self;
          v220[5] = v93;
          dispatch_sync(v101, v220);
          [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"activePrimaryConstituentDevice"];
          goto LABEL_43;
        }
      }
    }

    else if (CFEqual(a3, *MEMORY[0x1E6990520]))
    {
      v94 = [objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E6990468]), "intValue"}];
      v216 = 0u;
      v217 = 0u;
      v218 = 0u;
      v219 = 0u;
      v95 = [(AVCaptureDevice *)self constituentDevices];
      v96 = [(NSArray *)v95 countByEnumeratingWithState:&v216 objects:v215 count:16];
      if (v96)
      {
        v97 = v96;
        v98 = *v217;
LABEL_170:
        v99 = 0;
        while (1)
        {
          if (*v217 != v98)
          {
            objc_enumerationMutation(v95);
          }

          v100 = *(*(&v216 + 1) + 8 * v99);
          if ([(NSArray *)v100 figCaptureSourceDeviceType]== v94)
          {
            break;
          }

          if (v97 == ++v99)
          {
            v97 = [(NSArray *)v95 countByEnumeratingWithState:&v216 objects:v215 count:16];
            if (v97)
            {
              goto LABEL_170;
            }

            return;
          }
        }

        if (v100 && v100 != self->_fallbackPrimaryConstituentDevices)
        {
          v23 = @"preferredPrimaryConstituentDevice";
          [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"preferredPrimaryConstituentDevice"];
          v24 = self->_devicePropsQueue;
          v214[0] = MEMORY[0x1E69E9820];
          v214[1] = 3221225472;
          v214[2] = __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_29;
          v214[3] = &unk_1E786EAA8;
          v214[4] = self;
          v214[5] = v100;
          v25 = v214;
          goto LABEL_42;
        }
      }
    }

    else
    {
      if (CFEqual(a3, *MEMORY[0x1E69904F0]))
      {
        v102 = [objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E6990468]), "BOOLValue"}];
        v185.origin.x = 0.0;
        *&v185.origin.y = &v185;
        *&v185.size.width = 0x2020000000;
        v103 = self->_devicePropsQueue;
        LOBYTE(v185.size.height) = 0;
        v212[0] = MEMORY[0x1E69E9820];
        v212[1] = 3221225472;
        v212[2] = __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_30;
        v212[3] = &unk_1E7870248;
        v213 = v102;
        v212[5] = &v185;
        v212[4] = self;
        dispatch_sync(v103, v212);
        if (*(*&v185.origin.y + 24) == 1)
        {
          [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"focusedAtMacro"];
          v104 = self->_devicePropsQueue;
          v210[0] = MEMORY[0x1E69E9820];
          v210[1] = 3221225472;
          v210[2] = __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_31;
          v210[3] = &unk_1E786EE40;
          v210[4] = self;
          v211 = v102;
          dispatch_sync(v104, v210);
          [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"focusedAtMacro"];
        }

        goto LABEL_12;
      }

      if (CFEqual(a3, *MEMORY[0x1E6990810]))
      {
        v105 = [objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E6990908]), "intValue"}];
        v106 = [objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E6990900]), "intValue"}];
        if (v105 > SLODWORD(self->_systemPressureState))
        {
          LODWORD(self->_systemPressureState) = v105;
        }

        v107 = [[AVCaptureSystemPressureState alloc] initWithFigLevel:v105 factors:v106 recommendedFrameRateRangeForPortrait:[(AVCaptureFigVideoDevice *)self _recommendedFrameRateRangeForVideoFormat:[(AVCaptureFigVideoDevice *)self activeFormat] depthFormat:[(AVCaptureFigVideoDevice *)self activeDepthDataFormat] figSystemPressureLevel:LODWORD(self->_systemPressureState)] recommendedFrameRateRangeForPhotoMode:[(AVCaptureFigVideoDevice *)self _recommendedFrameRateRangeForVideoFormat:[(AVCaptureFigVideoDevice *)self activeFormat] depthFormat:0 figSystemPressureLevel:LODWORD(self->_systemPressureState)]];
        v185.origin.x = 0.0;
        *&v185.origin.y = &v185;
        *&v185.size.width = 0x2020000000;
        v108 = self->_devicePropsQueue;
        LOBYTE(v185.size.height) = 0;
        v209[0] = MEMORY[0x1E69E9820];
        v209[1] = 3221225472;
        v209[2] = __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_32;
        v209[3] = &unk_1E786FF08;
        v209[6] = &v185;
        v209[4] = v107;
        v209[5] = self;
        dispatch_sync(v108, v209);
        if (*(*&v185.origin.y + 24) == 1)
        {
          [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"systemPressureState"];
          v109 = self->_devicePropsQueue;
          v208[0] = MEMORY[0x1E69E9820];
          v208[1] = 3221225472;
          v208[2] = __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_33;
          v208[3] = &unk_1E786EAA8;
          v208[4] = self;
          v208[5] = v107;
          dispatch_sync(v109, v208);
          [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"systemPressureState"];
        }

        goto LABEL_12;
      }

      if (BYTE1(self->_degradedCaptureQualityFactors) == 1 && CFEqual(a3, *MEMORY[0x1E6990858]) || BYTE2(self->_degradedCaptureQualityFactors) == 1 && CFEqual(a3, *MEMORY[0x1E6990620]))
      {
        if (![(AVCaptureFigVideoDevice *)self hasFlash])
        {
          return;
        }

        v110 = [objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E6990468]), "BOOLValue"}];
        v185.origin.x = 0.0;
        *&v185.origin.y = &v185;
        *&v185.size.width = 0x2020000000;
        LOBYTE(v185.size.height) = 0;
        v273 = 0;
        v274 = &v273;
        v275 = 0x2020000000;
        v276 = 0;
        v111 = self->_devicePropsQueue;
        v206[0] = MEMORY[0x1E69E9820];
        v206[1] = 3221225472;
        v206[2] = __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_34;
        v206[3] = &unk_1E7870900;
        v207 = v110;
        v206[4] = self;
        v206[5] = &v273;
        v206[7] = a3;
        v206[6] = &v185;
        dispatch_sync(v111, v206);
        if (*(*&v185.origin.y + 24) == 1)
        {
          [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"degradedCaptureQualityFactors"];
          v112 = self->_devicePropsQueue;
          v205[0] = MEMORY[0x1E69E9820];
          v205[1] = 3221225472;
          v205[2] = __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_35;
          v205[3] = &unk_1E786FEE0;
          v205[4] = self;
          v205[5] = &v273;
          dispatch_sync(v112, v205);
          [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"degradedCaptureQualityFactors"];
        }

        goto LABEL_61;
      }

      if (CFEqual(a3, *MEMORY[0x1E6990730]))
      {
        v113 = [objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E6990468]), "BOOLValue"}];
        if (v113)
        {
          return;
        }

        v114 = v113;
        v185.origin.x = 0.0;
        *&v185.origin.y = &v185;
        *&v185.size.width = 0x2020000000;
        v115 = self->_devicePropsQueue;
        LOBYTE(v185.size.height) = 0;
        v203[0] = MEMORY[0x1E69E9820];
        v203[1] = 3221225472;
        v203[2] = __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_36;
        v203[3] = &unk_1E7870248;
        v203[5] = &v185;
        v203[4] = self;
        v204 = v114;
        dispatch_sync(v115, v203);
        if (*(*&v185.origin.y + 24) == 1)
        {
          [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"hidden"];
          v116 = self->_devicePropsQueue;
          v201[0] = MEMORY[0x1E69E9820];
          v201[1] = 3221225472;
          v201[2] = __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_37;
          v201[3] = &unk_1E786EE40;
          v201[4] = self;
          v202 = v114;
          dispatch_sync(v116, v201);
          [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"hidden"];
        }

        goto LABEL_12;
      }

      if (CFEqual(a3, *MEMORY[0x1E6990798]))
      {
        v117 = [objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E6990468]), "BOOLValue"}];
        if (!v117)
        {
          return;
        }

        v118 = v117;
        v185.origin.x = 0.0;
        *&v185.origin.y = &v185;
        *&v185.size.width = 0x2020000000;
        v119 = self->_devicePropsQueue;
        LOBYTE(v185.size.height) = 0;
        v199[0] = MEMORY[0x1E69E9820];
        v199[1] = 3221225472;
        v199[2] = __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_38;
        v199[3] = &unk_1E7870248;
        v199[5] = &v185;
        v199[4] = self;
        v200 = v118;
        dispatch_sync(v119, v199);
        if (*(*&v185.origin.y + 24) == 1)
        {
          [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"readyToUnhide"];
          v120 = self->_devicePropsQueue;
          v197[0] = MEMORY[0x1E69E9820];
          v197[1] = 3221225472;
          v197[2] = __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_39;
          v197[3] = &unk_1E786EE40;
          v197[4] = self;
          v198 = v118;
          dispatch_sync(v120, v197);
          [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"readyToUnhide"];
        }

        goto LABEL_12;
      }

      if (CFEqual(a3, *MEMORY[0x1E6990628]) || CFEqual(a3, *MEMORY[0x1E6990618]))
      {
        return;
      }

      if (CFEqual(a3, *MEMORY[0x1E6990658]))
      {
        v121 = *(MEMORY[0x1E695F050] + 16);
        v185.origin = *MEMORY[0x1E695F050];
        v185.size = v121;
        if (!CGRectMakeWithDictionaryRepresentation([a4 objectForKeyedSubscript:*MEMORY[0x1E6990468]], &v185))
        {
          return;
        }

        v273 = 0;
        v274 = &v273;
        v275 = 0x2020000000;
        LOBYTE(v276) = 0;
        v122 = self->_devicePropsQueue;
        v195[0] = MEMORY[0x1E69E9820];
        v195[1] = 3221225472;
        v196 = v185;
        v195[2] = __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_40;
        v195[3] = &unk_1E786FE68;
        v195[4] = self;
        v195[5] = &v273;
        dispatch_sync(v122, v195);
        if (*(v274 + 24) == 1)
        {
          [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"centerStageRectOfInterest"];
          v123 = self->_devicePropsQueue;
          v193[0] = MEMORY[0x1E69E9820];
          v193[1] = 3221225472;
          v194 = v185;
          v193[2] = __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_41;
          v193[3] = &unk_1E78705B8;
          v193[4] = self;
          dispatch_sync(v123, v193);
          [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"centerStageRectOfInterest"];
        }

        goto LABEL_51;
      }

      if (CFEqual(a3, *MEMORY[0x1E6990648]))
      {
        return;
      }

      if (CFEqual(a3, *MEMORY[0x1E6990538]))
      {
        v124 = [a4 objectForKeyedSubscript:*MEMORY[0x1E6990468]];

        [(AVCaptureDevice *)self updateReactionsInProgress:v124];
      }

      else if (CFEqual(a3, *MEMORY[0x1E6990580]))
      {

        [AVCaptureDevice setReactionEffectSuppressedGesture:1];
      }

      else
      {
        if (CFEqual(a3, *MEMORY[0x1E6990848]))
        {
          [objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E6990468]), "floatValue"}];
          v126 = v125;
          [(AVCaptureFigVideoDevice *)self videoZoomFactor];
          if (v127 == v126)
          {
            return;
          }

          v23 = @"videoZoomFactor";
          [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"videoZoomFactor"];
          v24 = self->_devicePropsQueue;
          v192[0] = MEMORY[0x1E69E9820];
          v192[1] = 3221225472;
          v192[2] = __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_42;
          v192[3] = &unk_1E786ECD0;
          v192[4] = self;
          *&v192[5] = v126;
          v25 = v192;
          goto LABEL_42;
        }

        if (CFEqual(a3, *MEMORY[0x1E6990698]))
        {
          v273 = 0;
          v274 = &v273;
          v275 = 0x2020000000;
          LOBYTE(v276) = 0;
          v128 = [objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E6990468]), "BOOLValue"}];
          v129 = self->_devicePropsQueue;
          v190[0] = MEMORY[0x1E69E9820];
          v190[1] = 3221225472;
          v190[2] = __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_43;
          v190[3] = &unk_1E7870248;
          v190[4] = self;
          v190[5] = &v273;
          v191 = v128;
          dispatch_sync(v129, v190);
          if (*(v274 + 24) == 1)
          {
            [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"dockedTrackingActive"];
            v130 = self->_devicePropsQueue;
            v188[0] = MEMORY[0x1E69E9820];
            v188[1] = 3221225472;
            v188[2] = __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_44;
            v188[3] = &unk_1E786EE40;
            v188[4] = self;
            v189 = v128;
            dispatch_sync(v130, v188);
            [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"dockedTrackingActive"];
            if (dword_1ED8069C0)
            {
              LODWORD(v244.value) = 0;
              type[0] = OS_LOG_TYPE_DEFAULT;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              value = v244.value;
              if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
              {
                v133 = value;
              }

              else
              {
                v133 = value & 0xFFFFFFFE;
              }

              if (v133)
              {
                v134 = [(AVCaptureFigVideoDevice *)self localizedName];
                *v269 = 136315650;
                *&v269[4] = "[AVCaptureFigVideoDevice _handleNotification:payload:]";
                *&v269[12] = 2114;
                *&v269[14] = v134;
                *&v269[22] = 1024;
                v270 = v128;
                LODWORD(v175) = 28;
                v173 = v269;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            [(AVCaptureFigVideoDevice *)self _updateCenterStageActiveForEnabled:+[AVCaptureDevice updateDependentProperties:"isCenterStageEnabled"], 1];
            if (dword_1ED8069C0)
            {
              LODWORD(v244.value) = 0;
              type[0] = OS_LOG_TYPE_DEFAULT;
              v136 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v137 = v244.value;
              if (os_log_type_enabled(v136, type[0]))
              {
                v138 = v137;
              }

              else
              {
                v138 = v137 & 0xFFFFFFFE;
              }

              if (v138)
              {
                v139 = +[AVCaptureDevice isCenterStageEnabled];
                v140 = [(AVCaptureFigVideoDevice *)self isCenterStageActive];
                *v269 = 136315650;
                *&v269[4] = "[AVCaptureFigVideoDevice _handleNotification:payload:]";
                *&v269[12] = 1024;
                *&v269[14] = v139;
                *&v269[18] = 1024;
                *&v269[20] = v140;
                LODWORD(v176) = 24;
                v174 = v269;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v148 = AVCaptureClientPreferencesDomain();
            v149 = AVControlCenterVideoEffectsCenterStageUnavailableReasonsPreferenceKey(v148);
            v150 = [+[AVCaptureProprietaryDefaultsSingleton objectForKey:](AVCaptureProprietaryDefaultsSingleton objectForKey:{v149), "unsignedIntegerValue"}] & 0xFFFFFFFFFFFFFF7FLL;
            v151 = 128;
            if (!v128)
            {
              v151 = 0;
            }

            +[AVCaptureProprietaryDefaultsSingleton setObject:forKey:](AVCaptureProprietaryDefaultsSingleton, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{v150 | v151, v174, v176}], v149);
          }

          goto LABEL_51;
        }

        if (CFEqual(a3, *MEMORY[0x1E69904F8]))
        {
          v135 = [objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E6990408]), "integerValue"}];
          v53 = @"cameraLensSmudgeDetectionStatus";
          [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"cameraLensSmudgeDetectionStatus"];
          v54 = self->_devicePropsQueue;
          v184[0] = MEMORY[0x1E69E9820];
          v184[1] = 3221225472;
          v184[2] = __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_751;
          v184[3] = &unk_1E786ECD0;
          v184[4] = self;
          v184[5] = v135;
          v55 = v184;
          goto LABEL_86;
        }

        if (CFEqual(a3, *MEMORY[0x1E6990530]))
        {
          v141 = *MEMORY[0x1E6990470];
          v142 = [a4 objectForKeyedSubscript:*MEMORY[0x1E6990470]];
          v143 = MEMORY[0x1E6990478];
          v144 = MEMORY[0x1E69904A0];
          if (v142)
          {
            v145 = [a4 objectForKeyedSubscript:v141];
            v146 = *v144;
            if ([v145 objectForKeyedSubscript:*v144])
            {
              [objc_msgSend(v145 objectForKeyedSubscript:{v146), "longLongValue"}];
              *v269 = 0;
              if (FigCaptureCreateCMClockFromTimeSyncMSGClock())
              {
                LODWORD(v244.value) = 0;
                type[0] = OS_LOG_TYPE_DEFAULT;
                v147 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
                HostTimeClock = CMClockGetHostTimeClock();
                *v269 = HostTimeClock;
              }

              else
              {
                HostTimeClock = *v269;
              }

              [(AVCaptureFigVideoDevice *)self _setFigCaptureSourceProperty:*MEMORY[0x1E6990668] withValue:HostTimeClock, v173, v175];
              if (self->_activeLockedVideoFrameDuration.flags & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
              {
                activeLockedVideoFrameDurationOwner = self->_activeLockedVideoFrameDurationOwner;
                v180 = 0u;
                v181 = 0u;
                v182 = 0u;
                v183 = 0u;
                v156 = [activeLockedVideoFrameDurationOwner ports];
                v157 = [v156 countByEnumeratingWithState:&v180 objects:v179 count:16];
                if (v157)
                {
                  v158 = v157;
                  v159 = *v181;
                  do
                  {
                    for (i = 0; i != v158; ++i)
                    {
                      if (*v181 != v159)
                      {
                        objc_enumerationMutation(v156);
                      }

                      [*(*(&v180 + 1) + 8 * i) _setClock:*v269];
                    }

                    v158 = [v156 countByEnumeratingWithState:&v180 objects:v179 count:16];
                  }

                  while (v158);
                }

                [objc_msgSend(activeLockedVideoFrameDurationOwner "session")];
              }

              else
              {
                [(AVExternalSyncDevice *)self->_activeExternalSyncDevice handleClockReceived:*v269];
              }
            }

            else
            {
              -[AVExternalSyncDevice handleClockSetupFailedWithError:](self->_activeExternalSyncDevice, "handleClockSetupFailedWithError:", [objc_msgSend(v145 objectForKeyedSubscript:{*v143), "unsignedIntValue"}]);
            }
          }

          v161 = *MEMORY[0x1E6990488];
          v162 = [a4 objectForKeyedSubscript:*MEMORY[0x1E6990488]];
          v163 = MEMORY[0x1E69904A8];
          if (v162)
          {
            v164 = [a4 objectForKeyedSubscript:v161];
            -[AVExternalSyncDevice handleTSMSGOutOfBoundsTriggerID:error:](self->_activeExternalSyncDevice, "handleTSMSGOutOfBoundsTriggerID:error:", [objc_msgSend(v164 objectForKeyedSubscript:{*v163), "unsignedIntValue"}], objc_msgSend(objc_msgSend(v164, "objectForKeyedSubscript:", *v143), "unsignedIntValue"));
          }

          v165 = *MEMORY[0x1E6990480];
          v166 = [a4 objectForKeyedSubscript:*MEMORY[0x1E6990480]];
          v167 = MEMORY[0x1E6990498];
          if (v166)
          {
            v168 = [a4 objectForKeyedSubscript:v165];
            -[AVExternalSyncDevice handleLockStateUpdateTriggerID:lockState:](self->_activeExternalSyncDevice, "handleLockStateUpdateTriggerID:lockState:", [objc_msgSend(v168 objectForKeyedSubscript:{*v163), "unsignedIntValue"}], objc_msgSend(objc_msgSend(v168, "objectForKeyedSubscript:", *v167), "BOOLValue"));
          }

          v169 = *MEMORY[0x1E6990490];
          if ([a4 objectForKeyedSubscript:*MEMORY[0x1E6990490]])
          {
            v170 = [a4 objectForKeyedSubscript:v169];
            -[AVExternalSyncDevice handleTSMSGSessionStoppedTriggerID:status:](self->_activeExternalSyncDevice, "handleTSMSGSessionStoppedTriggerID:status:", [objc_msgSend(v170 objectForKeyedSubscript:{*v163), "unsignedIntValue"}], objc_msgSend(objc_msgSend(v170, "objectForKeyedSubscript:", *v144), "unsignedIntValue"));
          }

          v171 = *MEMORY[0x1E69904B0];
          if ([a4 objectForKeyedSubscript:*MEMORY[0x1E69904B0]])
          {
            v172 = [a4 objectForKeyedSubscript:v171];
            -[AVExternalSyncDevice handleTriggerPresentTriggerID:isPresentState:](self->_activeExternalSyncDevice, "handleTriggerPresentTriggerID:isPresentState:", [objc_msgSend(v172 objectForKeyedSubscript:{*v163), "unsignedIntValue"}], objc_msgSend(objc_msgSend(v172, "objectForKeyedSubscript:", *v167), "BOOLValue"));
          }
        }

        else if (CFEqual(a3, *MEMORY[0x1E6990550]))
        {
          v152 = [a4 objectForKeyedSubscript:*MEMORY[0x1E6990468]];
          [-[AVCaptureFigVideoDevice smartFramingMonitor](self "smartFramingMonitor")];
          v177 = @"AVCaptureDeviceSmartFramingSuggestedFieldOfView";
          v178 = v152;
          v153 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v178 forKeys:&v177 count:1];
          [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
        }

        else if (CFEqual(a3, *MEMORY[0x1E6990500]))
        {

          [(AVCaptureFigVideoDevice *)self _handleLiveReconfigurationCompletionWithPayload:a4];
        }
      }
    }
  }
}

BOOL __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_3(uint64_t a1)
{
  *(*(a1 + 32) + 400) = 0;
  [*(a1 + 32) _defaultRectForFocusPointOfInterest:*(*(a1 + 32) + 400) focusMode:{*(*(a1 + 32) + 408), *(*(a1 + 32) + 416)}];
  result = CGRectEqualToRect(v3, *(*(a1 + 32) + 440));
  *(*(a1 + 32) + 472) = result;
  return result;
}

float __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_5(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 476) = result;
  return result;
}

__n128 __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_6(uint64_t a1)
{
  v1 = (*(a1 + 32) + 660);
  v2 = *(a1 + 56);
  result = *(a1 + 40);
  *v1 = result;
  v1[1].n128_u64[0] = v2;
  return result;
}

uint64_t __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 32) + 552;
  time1 = *(a1 + 48);
  v3 = *v2;
  v5.epoch = *(v2 + 16);
  *&v5.value = v3;
  result = CMTimeCompare(&time1, &v5);
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  return result;
}

uint64_t __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_8(uint64_t result)
{
  v1 = *(result + 32) + 552;
  v2 = *(result + 72);
  *v1 = *(result + 56);
  *(v1 + 16) = v2;
  v3 = *(result + 32);
  if (*(v3 + 544) == 3)
  {
    v4 = result;
    v5 = *(result + 64) / *(result + 56) + 0.05;
    if (v5 < *(v3 + 280) / *(v3 + 272))
    {
      v6 = floor(v5);
      v7 = [objc_msgSend(*(v3 + 136) "videoSupportedFrameRateRanges")];
      [v7 minFrameRate];
      if (v6 < v8)
      {
        [v7 minFrameRate];
        v6 = v9;
      }

      CMTimeMake(&v14, 1, v6);
      *(*(v4[5] + 8) + 32) = v14;
      v10 = v4[4] + 272;
      time1 = *(*(v4[5] + 8) + 32);
      v11 = *v10;
      v12.epoch = *(v10 + 16);
      *&v12.value = v11;
      result = CMTimeCompare(&time1, &v12);
      if (result)
      {
        *(*(v4[6] + 8) + 24) = 1;
      }
    }
  }

  return result;
}

float __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_10(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 576) = result;
  return result;
}

float __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_12(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 580) = result;
  return result;
}

void *__55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_13(void *result)
{
  v1 = result[4];
  if (!*(v1 + 544))
  {
    *(*(result[5] + 8) + 24) = 0;
    v1 = result[4];
  }

  *(*(result[6] + 8) + 24) = *(v1 + 584) != *(*(result[5] + 8) + 24);
  return result;
}

float __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_14(uint64_t a1)
{
  result = *(*(*(a1 + 40) + 8) + 24);
  *(*(a1 + 32) + 584) = result;
  return result;
}

uint64_t __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_15(uint64_t result)
{
  v2 = *(result + 48) != *(*(result + 32) + 720) || *(result + 56) != *(*(result + 32) + 728);
  *(*(*(result + 40) + 8) + 24) = v2;
  return result;
}

uint64_t __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_16(uint64_t result)
{
  v1 = *(result + 32) + 720;
  v2 = *(result + 48);
  *v1 = *(result + 40);
  *(v1 + 8) = v2;
  return result;
}

void *__55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_17(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = (a1 + 40);
  v5 = *(a1 + 32);
  result = (a1 + 32);
  v4 = v5;
  v6 = *(v5 + 740);
  if (v1 == *(v5 + 732) && *(v2 + 2) == v6)
  {
    result = __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_17_cold_1(result, &v10);
    v4 = v10;
  }

  v8 = v4 + 732;
  v9 = *v2;
  *(v8 + 8) = *(v2 + 2);
  *v8 = v9;
  return result;
}

void __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_20(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 816);
  v3 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x1E6990468]];
  *(*(a1 + 32) + 816) = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

id __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_21(void *a1)
{
  *(*(a1[5] + 8) + 24) = *(a1[4] + 914);
  *(*(a1[6] + 8) + 24) = *(a1[4] + 904) == 1;
  *(*(a1[7] + 8) + 24) = *(a1[4] + 915);
  *(*(a1[8] + 8) + 24) = *(a1[4] + 1015);
  *(*(a1[9] + 8) + 24) = *(a1[4] + 1016);
  result = *(a1[4] + 928);
  *(*(a1[10] + 8) + 40) = result;
  return result;
}

uint64_t __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_22(uint64_t result)
{
  *(*(*(result + 56) + 8) + 24) = *(*(result + 32) + 1036);
  *(*(*(result + 64) + 8) + 24) = *(*(result + 32) + 1040);
  if (*(*(*(result + 56) + 8) + 24) == 0.0)
  {
    v1 = result;
    [*(result + 40) floatValue];
    *(*(*(v1 + 56) + 8) + 24) = v2;
    result = [*(v1 + 48) intValue];
    *(*(*(v1 + 64) + 8) + 24) = result;
    *(*(*(v1 + 72) + 8) + 24) = 1;
  }

  return result;
}

uint64_t __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_23(uint64_t a1)
{
  result = [*(a1 + 40) floatValue];
  *(*(a1 + 32) + 1032) = v3;
  *(*(a1 + 32) + 1036) = 0;
  return result;
}

float __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_24(uint64_t a1)
{
  [*(a1 + 40) floatValue];
  *(*(a1 + 32) + 1032) = result;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    result = *(*(*(a1 + 56) + 8) + 24);
    *(*(a1 + 32) + 1036) = result;
    *(*(a1 + 32) + 1040) = *(*(*(a1 + 64) + 8) + 24);
  }

  return result;
}

__n128 __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_25(uint64_t a1)
{
  v1 = *(a1 + 32) + 976;
  result = *(a1 + 56);
  *v1 = *(a1 + 40);
  *(v1 + 16) = result;
  *(*(a1 + 32) + 1008) = *(a1 + 72);
  return result;
}

uint64_t __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_26(uint64_t a1)
{
  *(*(a1 + 32) + 1296) = [*(*(a1 + 32) + 1288) figLevel];
  v2 = -[AVCaptureSystemPressureState initWithFigLevel:factors:recommendedFrameRateRangeForPortrait:recommendedFrameRateRangeForPhotoMode:]([AVCaptureSystemPressureState alloc], "initWithFigLevel:factors:recommendedFrameRateRangeForPortrait:recommendedFrameRateRangeForPhotoMode:", *(*(a1 + 32) + 1296), [*(*(a1 + 32) + 1288) factors], objc_msgSend(*(a1 + 32), "_recommendedFrameRateRangeForVideoFormat:depthFormat:figSystemPressureLevel:", *(*(a1 + 32) + 136), *(*(a1 + 32) + 144), *(*(a1 + 32) + 1296)), objc_msgSend(*(a1 + 32), "_recommendedFrameRateRangeForVideoFormat:depthFormat:figSystemPressureLevel:", *(*(a1 + 32) + 136), 0, *(*(a1 + 32) + 1296)));
  result = [(AVCaptureSystemPressureState *)v2 isEqual:*(*(a1 + 32) + 1288)];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 40) = v2;
  }

  return result;
}

id __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_27(uint64_t a1)
{
  result = *(*(*(a1 + 40) + 8) + 40);
  *(*(a1 + 32) + 1288) = result;
  return result;
}

id __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_28(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 1144) = result;
  return result;
}

id __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_29(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 1200) = result;
  return result;
}

uint64_t __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_32(uint64_t a1)
{
  result = [*(a1 + 32) isEqual:*(*(a1 + 40) + 1288)];
  *(*(*(a1 + 48) + 8) + 24) = result ^ 1;
  return result;
}

id __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_33(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 1288) = result;
  return result;
}

uint64_t __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_34(uint64_t a1)
{
  if (CFEqual(*(a1 + 56), *MEMORY[0x1E6990858]))
  {
    v2 = 0;
    v3 = 1;
  }

  else
  {
    v4 = CFEqual(*(a1 + 56), *MEMORY[0x1E6990620]);
    v2 = v4 == 0;
    v3 = 2 * (v4 != 0);
  }

  result = *(a1 + 32);
  if (*(result + 1368) != 1)
  {
    v6 = a1 + 40;
    *(*(*(a1 + 40) + 8) + 24) = *(result + 1360);
    if (v2)
    {
      goto LABEL_16;
    }

    if ((*(a1 + 64) & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  result = [result _initDegradedCaptureQualityFactors];
  if (!v2)
  {
    v9 = *(a1 + 64);
    v10 = *(a1 + 32);
    if (v9 == 1)
    {
      v11 = *(v10 + 1360) & ~v3;
    }

    else
    {
      v11 = *(v10 + 1360) | v3;
    }

    *(v10 + 1360) = v11;
    v6 = a1 + 40;
    *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 1360);
    if ((v9 & 1) == 0)
    {
LABEL_14:
      v7 = *(*v6 + 8);
      v8 = *(v7 + 24) & ~v3;
      goto LABEL_15;
    }

LABEL_9:
    v7 = *(*v6 + 8);
    v8 = *(v7 + 24) | v3;
LABEL_15:
    *(v7 + 24) = v8;
    goto LABEL_16;
  }

  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 1360);
LABEL_16:
  *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) != *(*(a1 + 32) + 1360);
  return result;
}

BOOL __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_40(uint64_t a1)
{
  result = CGRectEqualToRect(*(a1 + 48), *(*(a1 + 32) + 1376));
  *(*(*(a1 + 40) + 8) + 24) = !result;
  return result;
}

__n128 __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_41(uint64_t a1)
{
  v1 = *(a1 + 32) + 1376;
  result = *(a1 + 56);
  *v1 = *(a1 + 40);
  *(v1 + 16) = result;
  return result;
}

float __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_42(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 1032) = result;
  return result;
}

- (void)_handleManualControlCompletionForRequestQueue:(id)a3 withPayload:(id)a4
{
  v6 = [objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E6990458]), "intValue"}];
  v7 = [a3 head];
  if (v7)
  {
    v8 = v7;
    v14 = *MEMORY[0x1E6990468];
    v16 = *MEMORY[0x1E6960C70];
    v9 = *(MEMORY[0x1E6960C70] + 16);
    do
    {
      *&v19.value = v16;
      v19.epoch = v9;
      v10 = [v8 requestID];
      if (![v8 errorCode])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"exposureTargetOffset"];
          [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"exposureTargetBias"];
          devicePropsQueue = self->_devicePropsQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __85__AVCaptureFigVideoDevice__handleManualControlCompletionForRequestQueue_withPayload___block_invoke;
          block[3] = &unk_1E786EAA8;
          block[4] = v8;
          block[5] = self;
          dispatch_sync(devicePropsQueue, block);
          [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"exposureTargetBias"];
          [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"exposureTargetOffset"];
          [v8 fakeBiasCompletionTime];
        }

        else if (v10 <= v6)
        {
          if (v10 == v6)
          {
            CMTimeMakeFromDictionary(&v17, [a4 objectForKeyedSubscript:v14]);
            v19 = v17;
          }
        }

        else if ([v8 requestID] > v6)
        {
          return;
        }
      }

      if ([v8 completionBlock])
      {
        v12 = [v8 completionBlock];
        v13 = *(v12 + 16);
        v17 = v19;
        v13(v12, &v17);
      }

      [a3 dequeue];
      v8 = [a3 head];
    }

    while (v8);
  }
}

uint64_t __85__AVCaptureFigVideoDevice__handleManualControlCompletionForRequestQueue_withPayload___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) fakeBias];
  if (v3 != 3.4028e38)
  {
    result = [*(a1 + 32) fakeBias];
    *(*(a1 + 40) + 580) = v4;
  }

  return result;
}

- (void)_drainManualControlRequestQueues
{
  [(AVCaptureFigVideoDevice *)self _drainManualControlRequestQueue:*&self->_providesStortorgetMetadata];
  [(AVCaptureFigVideoDevice *)self _drainManualControlRequestQueue:self->_manualFocusControlRequests];
  [(AVCaptureFigVideoDevice *)self _drainManualControlRequestQueue:self->_manualExposureControlRequests];
  [(AVCaptureFigVideoDevice *)self _drainManualControlRequestQueue:self->_biasedExposureControlRequests];

  [(AVCaptureFigVideoDevice *)self _drainDynamicAspectRatioRequestQueue];
}

- (void)_drainManualControlRequestQueue:(id)a3
{
  v4 = [a3 dequeue];
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0x1E6960C70];
    do
    {
      if ([v5 completionBlock])
      {
        v7 = [v5 completionBlock];
        v8 = *(v7 + 16);
        v9 = *v6;
        v10 = *(v6 + 2);
        v8(v7, &v9);
      }

      v5 = [a3 dequeue];
    }

    while (v5);
  }
}

- (void)_performBlockOnMainThread:(id)a3
{
  if (a3)
  {
    Main = CFRunLoopGetMain();
    CFRunLoopPerformBlock(Main, *MEMORY[0x1E695E8D0], a3);
    v5 = CFRunLoopGetMain();

    CFRunLoopWakeUp(v5);
  }
}

uint64_t __42__AVCaptureFigVideoDevice__checkTCCAccess__block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 48);
  if (v1)
  {
    VTable = CMBaseObjectGetVTable();
    v3 = *(VTable + 16);
    result = VTable + 16;
    v4 = *(v3 + 24);
    if (v4)
    {

      return v4(v1);
    }
  }

  return result;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (AVCaptureFigVideoDeviceCenterStageEnabledChangedContext == a6)
  {
    -[AVCaptureFigVideoDevice _updateCenterStageActiveForEnabled:updateDependentProperties:](self, "_updateCenterStageActiveForEnabled:updateDependentProperties:", [objc_msgSend(a5 objectForKeyedSubscript:{*MEMORY[0x1E696A4F0], a4), "BOOLValue"}], 1);
  }

  if (AVCaptureFigVideoDeviceCenterStageFramingModeChangedContext == a6)
  {
    -[AVCaptureFigVideoDevice _setCenterStageFramingMode:](self, "_setCenterStageFramingMode:", [objc_msgSend(a5 objectForKeyedSubscript:{*MEMORY[0x1E696A4F0]), "intValue"}]);
  }

  if (AVCaptureFigVideoDeviceBackgroundBlurEnabledChangedContext == a6)
  {
    -[AVCaptureFigVideoDevice _updateBackgroundBlurActiveForEnabled:](self, "_updateBackgroundBlurActiveForEnabled:", [objc_msgSend(a5 objectForKeyedSubscript:{*MEMORY[0x1E696A4F0]), "BOOLValue"}]);
  }

  if (AVCaptureFigVideoDeviceStudioLightingEnabledChangedContext == a6)
  {
    -[AVCaptureFigVideoDevice _updateStudioLightingActiveForEnabled:](self, "_updateStudioLightingActiveForEnabled:", [objc_msgSend(a5 objectForKeyedSubscript:{*MEMORY[0x1E696A4F0]), "BOOLValue"}]);
  }

  if (AVCaptureFigVideoDeviceReactionEffectsEnabledChangedContext == a6)
  {
    -[AVCaptureFigVideoDevice _updateReactionEffectsActiveForEnabled:](self, "_updateReactionEffectsActiveForEnabled:", [objc_msgSend(a5 objectForKeyedSubscript:{*MEMORY[0x1E696A4F0]), "BOOLValue"}]);
  }

  if (AVCaptureFigVideoDeviceBackgroundReplacementEnabledChangedContext == a6)
  {
    -[AVCaptureFigVideoDevice _updateBackgroundReplacementActiveForEnabled:](self, "_updateBackgroundReplacementActiveForEnabled:", [objc_msgSend(a5 objectForKeyedSubscript:{*MEMORY[0x1E696A4F0]), "BOOLValue"}]);
  }

  if (AVCaptureFigVideoDevicePortraitEffectStudioLightQualityChangedContext == a6)
  {
    -[AVCaptureFigVideoDevice _updatePortraitEffectStudioLightQuality:](self, "_updatePortraitEffectStudioLightQuality:", [objc_msgSend(a5 objectForKeyedSubscript:{*MEMORY[0x1E696A4F0]), "intValue"}]);
  }

  if (AVCaptureFigVideoDeviceBackgroundBlurApertureChangedContext == a6)
  {
    [objc_msgSend(a5 objectForKeyedSubscript:{*MEMORY[0x1E696A4F0]), "floatValue"}];
    [(AVCaptureFigVideoDevice *)self _updateBackgroundBlurAperture:?];
  }

  if (AVCaptureFigVideoDeviceStudioLightingIntensityChangedContext == a6)
  {
    [objc_msgSend(a5 objectForKeyedSubscript:{*MEMORY[0x1E696A4F0]), "floatValue"}];
    [(AVCaptureFigVideoDevice *)self _updateStudioLightingIntensity:?];
  }

  if (AVCaptureFigVideoDeviceGesturesEnabledChangedContext == a6)
  {
    -[AVCaptureFigVideoDevice _updateGesturesEnabled:](self, "_updateGesturesEnabled:", [objc_msgSend(a5 objectForKeyedSubscript:{*MEMORY[0x1E696A4F0]), "BOOLValue"}]);
  }

  if (AVCaptureFigVideoDeviceSuppressedGesturesEnabledChangedContext == a6)
  {
    -[AVCaptureFigVideoDevice _updateSuppressedGesturesEnabled:](self, "_updateSuppressedGesturesEnabled:", [objc_msgSend(a5 objectForKeyedSubscript:{*MEMORY[0x1E696A4F0]), "BOOLValue"}]);
  }

  if (AVCaptureFigVideoDeviceBackgroundReplacementPixelBufferChangedContext == a6)
  {
    v9 = +[AVCaptureDevice backgroundReplacementPixelBuffer];

    [(AVCaptureFigVideoDevice *)self _updateBackgroundReplacementPixelBuffer:v9];
  }
}

- (void)setCinematicVideoFocusAtPoint:(CGPoint)a3 objectID:(int64_t)a4 isHardFocus:(BOOL)a5 isFixedPlaneFocus:(BOOL)a6
{
  y = a3.y;
  x = a3.x;
  if ([(AVCaptureFigVideoDevice *)self isCinematicVideoFocusAtPointSupported])
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    devicePropsQueue = self->_devicePropsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __96__AVCaptureFigVideoDevice_setCinematicVideoFocusAtPoint_objectID_isHardFocus_isFixedPlaneFocus___block_invoke;
    block[3] = &unk_1E7870928;
    *&block[6] = x;
    *&block[7] = y;
    block[8] = a4;
    v19 = a5;
    v20 = a6;
    block[4] = self;
    block[5] = &v21;
    dispatch_sync(devicePropsQueue, block);
    if (*(v22 + 6) == -16452)
    {
      v13 = MEMORY[0x1E695DF30];
      objc_opt_class();
      v14 = [v13 exceptionWithName:*MEMORY[0x1E695D920] reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
      if (AVCaptureShouldThrowForAPIViolations())
      {
        objc_exception_throw(v14);
      }

      NSLog(&cfstr_SuppressingExc.isa, v14);
    }

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D940];
    objc_opt_class();
    v17 = [v15 exceptionWithName:v16 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v17);
    }

    NSLog(&cfstr_SuppressingExc.isa, v17);
  }
}

uint64_t __96__AVCaptureFigVideoDevice_setCinematicVideoFocusAtPoint_objectID_isHardFocus_isFixedPlaneFocus___block_invoke(uint64_t a1)
{
  v4[0] = *MEMORY[0x1E6990340];
  v5[0] = CGPointCreateDictionaryRepresentation(*(a1 + 48));
  v5[1] = [MEMORY[0x1E696AD98] numberWithInteger:{*(a1 + 64), v4[0], *MEMORY[0x1E6990338]}];
  v4[2] = *MEMORY[0x1E6990330];
  v5[2] = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 72)];
  v4[3] = *MEMORY[0x1E6990328];
  v5[3] = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 73)];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:4];
  result = [*(a1 + 32) _setFigCaptureSourceProperty:*MEMORY[0x1E6990660] withValue:v2];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setCinematicVideoTrackingFocusWithDetectedObjectID:(int64_t)a3 focusMode:(int64_t)a4
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if (self->_cinematicVideoEnabled)
  {
    devicePropsQueue = self->_devicePropsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __88__AVCaptureFigVideoDevice_setCinematicVideoTrackingFocusWithDetectedObjectID_focusMode___block_invoke;
    block[3] = &unk_1E78706A8;
    block[6] = a3;
    block[7] = a4;
    block[4] = self;
    block[5] = &v10;
    dispatch_sync(devicePropsQueue, block);
    if (*(v11 + 6) == -16452)
    {
      v5 = MEMORY[0x1E695DF30];
      objc_opt_class();
      v6 = [v5 exceptionWithName:*MEMORY[0x1E695D920] reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
      if (AVCaptureShouldThrowForAPIViolations())
      {
        objc_exception_throw(v6);
      }

      NSLog(&cfstr_SuppressingExc.isa, v6);
    }
  }

  else
  {
    v7 = MEMORY[0x1E695DF30];
    objc_opt_class();
    v8 = [v7 exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v8);
    }

    NSLog(&cfstr_SuppressingExc.isa, v8);
  }

  _Block_object_dispose(&v10, 8);
}

uint64_t __88__AVCaptureFigVideoDevice_setCinematicVideoTrackingFocusWithDetectedObjectID_focusMode___block_invoke(uint64_t a1)
{
  v6[0] = [MEMORY[0x1E696AD98] numberWithInteger:{*(a1 + 48), *MEMORY[0x1E6990338]}];
  v5[1] = *MEMORY[0x1E6990330];
  v2 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 56) == 1];
  v5[2] = *MEMORY[0x1E6990328];
  v6[1] = v2;
  v6[2] = MEMORY[0x1E695E110];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3];
  result = [*(a1 + 32) _setFigCaptureSourceProperty:*MEMORY[0x1E6990660] withValue:v3];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setCinematicVideoTrackingFocusAtPoint:(CGPoint)a3 focusMode:(int64_t)a4
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if (self->_cinematicVideoEnabled)
  {
    devicePropsQueue = self->_devicePropsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__AVCaptureFigVideoDevice_setCinematicVideoTrackingFocusAtPoint_focusMode___block_invoke;
    block[3] = &unk_1E78707C0;
    v10 = a3;
    v11 = a4;
    block[4] = self;
    block[5] = &v12;
    dispatch_sync(devicePropsQueue, block);
    if (*(v13 + 6) == -16452)
    {
      v5 = MEMORY[0x1E695DF30];
      objc_opt_class();
      v6 = [v5 exceptionWithName:*MEMORY[0x1E695D920] reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
      if (AVCaptureShouldThrowForAPIViolations())
      {
        objc_exception_throw(v6);
      }

      NSLog(&cfstr_SuppressingExc.isa, v6);
    }
  }

  else
  {
    v7 = MEMORY[0x1E695DF30];
    objc_opt_class();
    v8 = [v7 exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v8);
    }

    NSLog(&cfstr_SuppressingExc.isa, v8);
  }

  _Block_object_dispose(&v12, 8);
}

uint64_t __75__AVCaptureFigVideoDevice_setCinematicVideoTrackingFocusAtPoint_focusMode___block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E6990340];
  v8[0] = CGPointCreateDictionaryRepresentation(*(a1 + 48));
  v6 = *MEMORY[0x1E6990330];
  v2 = [MEMORY[0x1E696AD98] numberWithInt:{*(a1 + 64) == 1, v5, v6}];
  v7 = *MEMORY[0x1E6990328];
  v8[1] = v2;
  v8[2] = MEMORY[0x1E695E110];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v5 count:3];
  result = [*(a1 + 32) _setFigCaptureSourceProperty:*MEMORY[0x1E6990660] withValue:v3];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setCinematicVideoFixedFocusAtPoint:(CGPoint)a3 focusMode:(int64_t)a4
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if (self->_cinematicVideoEnabled)
  {
    devicePropsQueue = self->_devicePropsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__AVCaptureFigVideoDevice_setCinematicVideoFixedFocusAtPoint_focusMode___block_invoke;
    block[3] = &unk_1E78707C0;
    v10 = a3;
    v11 = a4;
    block[4] = self;
    block[5] = &v12;
    dispatch_sync(devicePropsQueue, block);
    if (*(v13 + 6) == -16452)
    {
      v5 = MEMORY[0x1E695DF30];
      objc_opt_class();
      v6 = [v5 exceptionWithName:*MEMORY[0x1E695D920] reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
      if (AVCaptureShouldThrowForAPIViolations())
      {
        objc_exception_throw(v6);
      }

      NSLog(&cfstr_SuppressingExc.isa, v6);
    }
  }

  else
  {
    v7 = MEMORY[0x1E695DF30];
    objc_opt_class();
    v8 = [v7 exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v8);
    }

    NSLog(&cfstr_SuppressingExc.isa, v8);
  }

  _Block_object_dispose(&v12, 8);
}

uint64_t __72__AVCaptureFigVideoDevice_setCinematicVideoFixedFocusAtPoint_focusMode___block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E6990340];
  v8[0] = CGPointCreateDictionaryRepresentation(*(a1 + 48));
  v6 = *MEMORY[0x1E6990330];
  v2 = [MEMORY[0x1E696AD98] numberWithInt:{*(a1 + 64) == 1, v5, v6}];
  v7 = *MEMORY[0x1E6990328];
  v8[1] = v2;
  v8[2] = MEMORY[0x1E695E118];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v5 count:3];
  result = [*(a1 + 32) _setFigCaptureSourceProperty:*MEMORY[0x1E6990660] withValue:v3];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_setCinematicVideoEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(AVCaptureDeviceFormat *)self->_activeFormat isCinematicVideoCaptureSupported]|| !v3)
  {
    v8 = [-[AVCaptureDeviceFormat supportedZoomRangesForCinematicVideo](self->_activeFormat "supportedZoomRangesForCinematicVideo")];
    if (self->_cinematicVideoZoomEnabled != (v3 & v8))
    {
      self->_cinematicVideoZoomEnabled = v3 & v8;
      [(AVCaptureFigVideoDevice *)self _updateMinMaxDefaultVideoZoomFactors];
    }

    if (self->_cinematicVideoEnabled != v3)
    {
      self->_cinematicVideoEnabled = v3;
    }
  }

  else
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
    objc_opt_class();
    v7 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v7);
    }

    NSLog(&cfstr_SuppressingExc.isa, v7);
  }
}

- (void)_setSimulatedAperture:(float)a3
{
  if ([(AVCaptureFigVideoDevice *)self lockForConfiguration:0])
  {
    *&v5 = a3;
    -[AVCaptureFigVideoDevice _setFigCaptureSourceProperty:withValue:](self, "_setFigCaptureSourceProperty:withValue:", *MEMORY[0x1E69907C0], [MEMORY[0x1E696AD98] numberWithFloat:v5]);

    [(AVCaptureFigVideoDevice *)self unlockForConfiguration];
  }
}

- (id)hardwareUniformType
{
  v2 = [(NSUUID *)self->_continuityDeviceUniqueID copy];

  return v2;
}

- (void)setDeskViewCameraMode:(int64_t)a3
{
  if ([(AVCaptureFigVideoDevice *)self isDeskViewCameraModeSupported:?])
  {
    devicePropsQueue = self->_devicePropsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__AVCaptureFigVideoDevice_setDeskViewCameraMode___block_invoke;
    block[3] = &unk_1E786ECD0;
    block[4] = self;
    block[5] = a3;
    dispatch_sync(devicePropsQueue, block);
  }

  else
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    objc_opt_class();
    v8 = [v6 exceptionWithName:v7 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v8);
    }

    NSLog(&cfstr_SuppressingExc.isa, v8);
  }
}

uint64_t __49__AVCaptureFigVideoDevice_setDeskViewCameraMode___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _setFigCaptureSourceProperty:*MEMORY[0x1E6990770] withValue:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", *(a1 + 40))}];
  if (!result)
  {
    *(*(a1 + 32) + 1448) = *(a1 + 40);
  }

  return result;
}

- (int64_t)deskViewCameraMode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__AVCaptureFigVideoDevice_deskViewCameraMode__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isDeskViewCameraModeSupported:(int64_t)a3
{
  if (([-[AVCaptureFigVideoDevice deviceType](self "deviceType")] & 1) != 0 || objc_msgSend(-[AVCaptureFigVideoDevice deviceType](self, "deviceType"), "isEqualToString:", @"AVCaptureDeviceTypeBuiltInUltraWideCamera") && -[AVCaptureFigVideoDevice position](self, "position") == 1)
  {
    return a3 != 0;
  }

  else
  {
    return a3 == 0;
  }
}

- (void)setCenterStageFieldOfViewRestrictedToWide:(BOOL)a3
{
  if ([(AVCaptureFigVideoDevice *)self isLockedForConfiguration])
  {
    if (+[AVCaptureDevice isCenterStageEnabled])
    {
      devicePropsQueue = self->_devicePropsQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __69__AVCaptureFigVideoDevice_setCenterStageFieldOfViewRestrictedToWide___block_invoke;
      block[3] = &unk_1E786EE40;
      block[4] = self;
      v10 = a3;
      dispatch_sync(devicePropsQueue, block);
      return;
    }

    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    objc_opt_class();
  }

  else
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D920];
    objc_opt_class();
  }

  v8 = [v6 exceptionWithName:v7 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v8);
  }

  NSLog(&cfstr_SuppressingExc.isa, v8);
}

uint64_t __69__AVCaptureFigVideoDevice_setCenterStageFieldOfViewRestrictedToWide___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 1457) = *(a1 + 40);
  v1 = *(a1 + 32);
  v2 = *MEMORY[0x1E6990640];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:?];

  return [v1 _setFigCaptureSourceProperty:v2 withValue:v3];
}

- (BOOL)isCenterStageFieldOfViewRestrictedToWide
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__AVCaptureFigVideoDevice_isCenterStageFieldOfViewRestrictedToWide__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setManualFramingPanningAngleX:(float)a3
{
  if ([(AVCaptureFigVideoDevice *)self isLockedForConfiguration])
  {
    if ((self->_deskViewCameraMode & 0x10000) != 0)
    {
      devicePropsQueue = self->_devicePropsQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __57__AVCaptureFigVideoDevice_setManualFramingPanningAngleX___block_invoke;
      block[3] = &unk_1E78704A0;
      block[4] = self;
      v10 = a3;
      dispatch_sync(devicePropsQueue, block);
      return;
    }

    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    objc_opt_class();
  }

  else
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D920];
    objc_opt_class();
  }

  v8 = [v6 exceptionWithName:v7 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v8);
  }

  NSLog(&cfstr_SuppressingExc.isa, v8);
}

float __57__AVCaptureFigVideoDevice_setManualFramingPanningAngleX___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 1460) = result;
  return result;
}

- (float)manualFramingPanningAngleX
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__AVCaptureFigVideoDevice_manualFramingPanningAngleX__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = v7[6];
  _Block_object_dispose(&v6, 8);
  return v3;
}

float __53__AVCaptureFigVideoDevice_manualFramingPanningAngleX__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 1460);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setManualFramingPanningAngleY:(float)a3
{
  if ([(AVCaptureFigVideoDevice *)self isLockedForConfiguration])
  {
    if ((self->_deskViewCameraMode & 0x10000) != 0)
    {
      devicePropsQueue = self->_devicePropsQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __57__AVCaptureFigVideoDevice_setManualFramingPanningAngleY___block_invoke;
      block[3] = &unk_1E78704A0;
      block[4] = self;
      v10 = a3;
      dispatch_sync(devicePropsQueue, block);
      return;
    }

    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    objc_opt_class();
  }

  else
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D920];
    objc_opt_class();
  }

  v8 = [v6 exceptionWithName:v7 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v8);
  }

  NSLog(&cfstr_SuppressingExc.isa, v8);
}

float __57__AVCaptureFigVideoDevice_setManualFramingPanningAngleY___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 1464) = result;
  return result;
}

- (float)manualFramingPanningAngleY
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__AVCaptureFigVideoDevice_manualFramingPanningAngleY__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = v7[6];
  _Block_object_dispose(&v6, 8);
  return v3;
}

float __53__AVCaptureFigVideoDevice_manualFramingPanningAngleY__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 1464);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)startPanningAtPoint:(CGPoint)a3
{
  devicePropsQueue = self->_devicePropsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__AVCaptureFigVideoDevice_startPanningAtPoint___block_invoke;
  block[3] = &unk_1E786ECA8;
  v5 = a3;
  block[4] = self;
  dispatch_sync(devicePropsQueue, block);
}

uint64_t __47__AVCaptureFigVideoDevice_startPanningAtPoint___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _setFigCaptureSourceProperty:*MEMORY[0x1E69907D0] withValue:CGPointCreateDictionaryRepresentation(*(a1 + 40))];
  *(*(a1 + 32) + 1456) = 1;
  return result;
}

- (void)panWithTranslation:(CGPoint)a3
{
  if (self->_deskViewCameraMode)
  {
    devicePropsQueue = self->_devicePropsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__AVCaptureFigVideoDevice_panWithTranslation___block_invoke;
    block[3] = &unk_1E786ECA8;
    v8 = a3;
    block[4] = self;
    dispatch_sync(devicePropsQueue, block);
  }

  else
  {
    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D930];
    objc_opt_class();
    v6 = [v4 exceptionWithName:v5 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v6);
    }

    NSLog(&cfstr_SuppressingExc.isa, v6);
  }
}

uint64_t __46__AVCaptureFigVideoDevice_panWithTranslation___block_invoke(uint64_t a1)
{
  v2 = CGPointCreateDictionaryRepresentation(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *MEMORY[0x1E6990778];

  return [v3 _setFigCaptureSourceProperty:v4 withValue:v2];
}

- (void)performOneShotFraming
{
  devicePropsQueue = self->_devicePropsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__AVCaptureFigVideoDevice_performOneShotFraming__block_invoke;
  block[3] = &unk_1E786EC08;
  block[4] = self;
  dispatch_sync(devicePropsQueue, block);
}

- (void)resetFraming
{
  devicePropsQueue = self->_devicePropsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__AVCaptureFigVideoDevice_resetFraming__block_invoke;
  block[3] = &unk_1E786EC08;
  block[4] = self;
  dispatch_sync(devicePropsQueue, block);
}

- (id)serializedProcessingSettings
{
  v2 = [(AVCaptureFigVideoDevice *)self _copyFigCaptureSourceProperty:*MEMORY[0x1E69907B8]];

  return v2;
}

- (BOOL)isDockedTrackingSupported
{
  v2 = [(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E6990140]];

  return [v2 BOOLValue];
}

- (void)setDockedTrackingEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(AVCaptureFigVideoDevice *)self isLockedForConfiguration])
  {
    if (!v3 || [(AVCaptureFigVideoDevice *)self isDockedTrackingSupported])
    {
      devicePropsQueue = self->_devicePropsQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __52__AVCaptureFigVideoDevice_setDockedTrackingEnabled___block_invoke;
      block[3] = &unk_1E786EE40;
      block[4] = self;
      v10 = v3;
      dispatch_sync(devicePropsQueue, block);
      return;
    }

    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    objc_opt_class();
  }

  else
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D920];
    objc_opt_class();
  }

  v8 = [v6 exceptionWithName:v7 reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v8);
  }

  NSLog(&cfstr_SuppressingExc.isa, v8);
}

- (BOOL)isDockedTrackingActive
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__AVCaptureFigVideoDevice_isDockedTrackingActive__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isSceneClassificationActive
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__AVCaptureFigVideoDevice_isSceneClassificationActive__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (float)documentSceneConfidence
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy__7;
  v15 = __Block_byref_object_dispose__7;
  v16 = 0;
  if ([(AVCaptureFigVideoDevice *)self _hasKeyValueObserversForHighFrequencyProperty:@"documentSceneConfidence"])
  {
    devicePropsQueue = self->_devicePropsQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __50__AVCaptureFigVideoDevice_documentSceneConfidence__block_invoke;
    v10[3] = &unk_1E7870040;
    v10[4] = self;
    v10[5] = &v11;
    dispatch_sync(devicePropsQueue, v10);
  }

  v4 = v12[5];
  if (!v4)
  {
    v4 = [(AVCaptureFigVideoDevice *)self _copyFigCaptureSourceProperty:*MEMORY[0x1E69907B0]];
    v12[5] = v4;
  }

  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69911E8]];
  if (v5)
  {
    [v5 floatValue];
    v7 = v6;
  }

  else
  {
    v7 = -1.0;
  }

  v8 = v12[5];
  if (v8)
  {
    CFRelease(v8);
  }

  _Block_object_dispose(&v11, 8);
  return v7;
}

CFTypeRef __50__AVCaptureFigVideoDevice_documentSceneConfidence__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 816);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)dynamicAspectRatio
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__AVCaptureFigVideoDevice_dynamicAspectRatio__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- ($2825F4736939C4A6D3AD43837233062D)dynamicDimensions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2810000000;
  v9 = &unk_1A92DB249;
  v10 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__AVCaptureFigVideoDevice_dynamicDimensions__block_invoke;
  block[3] = &unk_1E7870040;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(devicePropsQueue, block);
  v3 = v7[4];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setDynamicAspectRatio:(id)a3 completionHandler:(id)a4
{
  v49 = 0;
  v50 = &v49;
  v51 = 0x3052000000;
  v52 = __Block_byref_object_copy__7;
  v53 = __Block_byref_object_dispose__7;
  v54 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3052000000;
  v46 = __Block_byref_object_copy__7;
  v47 = __Block_byref_object_dispose__7;
  v48 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  if ([(AVCaptureFigVideoDevice *)self isLockedForConfiguration])
  {
    if ([objc_msgSend(-[AVCaptureFigVideoDevice activeFormat](self "activeFormat")])
    {
      devicePropsQueue = self->_devicePropsQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __67__AVCaptureFigVideoDevice_setDynamicAspectRatio_completionHandler___block_invoke;
      block[3] = &unk_1E7870950;
      block[6] = &v49;
      block[7] = &v43;
      block[4] = self;
      block[5] = a3;
      block[8] = &v39;
      dispatch_sync(devicePropsQueue, block);
      if (*(v40 + 24) == 1)
      {
        v8 = v44[5];
        v9 = self->_devicePropsQueue;
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __67__AVCaptureFigVideoDevice_setDynamicAspectRatio_completionHandler___block_invoke_2;
        v33[3] = &unk_1E786FEE0;
        v33[4] = self;
        v33[5] = &v35;
        dispatch_sync(v9, v33);
        [*&self->_dynamicDimensions enqueueRequest:{+[AVCaptureDeviceDynamicAspectRatioRequest dynamicAspectRatioRequestWithCompletionBlock:requestID:](AVCaptureDeviceDynamicAspectRatioRequest, "dynamicAspectRatioRequestWithCompletionBlock:requestID:", a4, *(v36 + 6))}];
        [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"outputAspectRatio"];
        [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"outputDimensions"];
        [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"dynamicAspectRatio"];
        [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"dynamicDimensions"];
        v10 = self->_devicePropsQueue;
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __67__AVCaptureFigVideoDevice_setDynamicAspectRatio_completionHandler___block_invoke_3;
        v32[3] = &unk_1E786FEE0;
        v32[4] = self;
        v32[5] = &v43;
        dispatch_sync(v10, v32);
        [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"dynamicDimensions"];
        [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"dynamicAspectRatio"];
        [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"outputDimensions"];
        [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"outputAspectRatio"];

        v28 = 0;
        v29 = &v28;
        v30 = 0x2020000000;
        v31 = 0;
        v24 = 0;
        v25 = &v24;
        v26 = 0x2020000000;
        v27 = 0;
        v20 = 0;
        v21 = &v20;
        v22 = 0x2020000000;
        v23 = 0;
        v16 = 0;
        v17 = &v16;
        v18 = 0x2020000000;
        v11 = self->_devicePropsQueue;
        v19 = 0;
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __67__AVCaptureFigVideoDevice_setDynamicAspectRatio_completionHandler___block_invoke_4;
        v15[3] = &unk_1E7870978;
        v15[4] = self;
        v15[5] = &v28;
        v15[6] = &v24;
        v15[7] = &v20;
        v15[8] = &v16;
        dispatch_sync(v11, v15);
        if (*(v29 + 24) == 1 && v25[3] == 2)
        {
          [(AVCaptureFigVideoDevice *)self setFocusMode:2];
        }

        if (*(v21 + 24) == 1 && v17[3] == 2)
        {
          [(AVCaptureFigVideoDevice *)self setExposureMode:2];
        }

        [AVCaptureFigVideoDevice setDynamicAspectRatio:? completionHandler:?];
      }

      else if (a4)
      {
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __67__AVCaptureFigVideoDevice_setDynamicAspectRatio_completionHandler___block_invoke_5;
        v14[3] = &unk_1E786F798;
        v14[4] = a4;
        [(AVCaptureFigVideoDevice *)self _performBlockOnMainThread:v14];
      }
    }
  }

  else
  {
    v12 = MEMORY[0x1E695DF30];
    objc_opt_class();
    v13 = [v12 exceptionWithName:*MEMORY[0x1E695D920] reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v13);
    }

    NSLog(&cfstr_SuppressingExc.isa, v13);
  }

  [AVCaptureFigVideoDevice setDynamicAspectRatio:? completionHandler:?];
}

uint64_t __67__AVCaptureFigVideoDevice_setDynamicAspectRatio_completionHandler___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 40) = *(a1[4] + 1536);
  *(*(a1[7] + 8) + 40) = a1[5];
  result = [*(*(a1[6] + 8) + 40) isEqualToString:*(*(a1[7] + 8) + 40)];
  *(*(a1[8] + 8) + 24) = result ^ 1;
  return result;
}

unint64_t __67__AVCaptureFigVideoDevice_setDynamicAspectRatio_completionHandler___block_invoke_3(uint64_t a1)
{
  *(*(a1 + 32) + 1536) = *(*(*(a1 + 40) + 8) + 40);
  v2 = *(a1 + 32);
  Dimensions = CMVideoFormatDescriptionGetDimensions([*(v2 + 136) formatDescription]);
  result = AVCaptureConvertDimensionsForAspectRatio(*&Dimensions, *(*(a1 + 32) + 1536), NAN);
  *(v2 + 1544) = result;
  return result;
}

void *__67__AVCaptureFigVideoDevice_setDynamicAspectRatio_completionHandler___block_invoke_4(void *result)
{
  *(*(result[5] + 8) + 24) = *(result[4] + 472);
  *(*(result[6] + 8) + 24) = *(result[4] + 400);
  *(*(result[7] + 8) + 24) = *(result[4] + 656);
  *(*(result[8] + 8) + 24) = *(result[4] + 544);
  return result;
}

uint64_t __67__AVCaptureFigVideoDevice_setDynamicAspectRatio_completionHandler___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  v4 = *MEMORY[0x1E6960C70];
  v5 = *(MEMORY[0x1E6960C70] + 16);
  return v2(v1, &v4, 0);
}

- (int)dynamicAspectRatioRequestID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  devicePropsQueue = self->_devicePropsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__AVCaptureFigVideoDevice_dynamicAspectRatioRequestID__block_invoke;
  v5[3] = &unk_1E7870040;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(devicePropsQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)dynamicAspectRatioAndDynamicAspectRatioRequestID
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__7;
  devicePropsQueue = self->_devicePropsQueue;
  v12 = __Block_byref_object_dispose__7;
  v13 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__AVCaptureFigVideoDevice_dynamicAspectRatioAndDynamicAspectRatioRequestID__block_invoke;
  block[3] = &unk_1E7870568;
  block[4] = self;
  block[5] = &v14;
  block[6] = &v8;
  dispatch_sync(devicePropsQueue, block);
  if (v9[5])
  {
    v6[0] = v9[5];
    v5[0] = 0x1F1CC5388;
    v5[1] = 0x1F1CC53A8;
    v6[1] = [MEMORY[0x1E696AD98] numberWithInt:*(v15 + 6)];
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v14, 8);
  return v3;
}

void *__75__AVCaptureFigVideoDevice_dynamicAspectRatioAndDynamicAspectRatioRequestID__block_invoke(void *result)
{
  *(*(result[5] + 8) + 24) = *(result[4] + 1560);
  *(*(result[6] + 8) + 40) = *(result[4] + 1536);
  return result;
}

- (void)_handleLiveReconfigurationCompletionWithPayload:(id)a3
{
  v5 = [a3 objectForKeyedSubscript:*MEMORY[0x1E6990468]];
  memset(&v13, 0, sizeof(v13));
  CMTimeMakeFromDictionary(&v13, v5);
  v6 = [objc_msgSend(a3 objectForKeyedSubscript:{*MEMORY[0x1E6990450]), "intValue"}];
  v7 = [*&self->_dynamicDimensions head];
  v8 = AVLocalizedError();
  if (v7)
  {
    v9 = v8;
    do
    {
      if ([v7 requestID] >= v6)
      {
        break;
      }

      if ([v7 dynamicAspectRatioCompletionBlock])
      {
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __75__AVCaptureFigVideoDevice__handleLiveReconfigurationCompletionWithPayload___block_invoke;
        v12[3] = &unk_1E786EAA8;
        v12[4] = v7;
        v12[5] = v9;
        [(AVCaptureFigVideoDevice *)self _performBlockOnMainThread:v12];
      }

      [*&self->_dynamicDimensions dequeue];
      v7 = [*&self->_dynamicDimensions head];
    }

    while (v7);
  }

  if ([v7 requestID] == v6)
  {
    if ([v7 dynamicAspectRatioCompletionBlock])
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __75__AVCaptureFigVideoDevice__handleLiveReconfigurationCompletionWithPayload___block_invoke_2;
      v10[3] = &unk_1E7870450;
      v10[4] = v7;
      v11 = v13;
      [(AVCaptureFigVideoDevice *)self _performBlockOnMainThread:v10];
    }

    [*&self->_dynamicDimensions dequeue];
  }
}

uint64_t __75__AVCaptureFigVideoDevice__handleLiveReconfigurationCompletionWithPayload___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dynamicAspectRatioCompletionBlock];
  v3 = *(a1 + 40);
  v4 = *(v2 + 16);
  v6 = *MEMORY[0x1E6960C70];
  v7 = *(MEMORY[0x1E6960C70] + 16);
  return v4(v2, &v6, v3);
}

uint64_t __75__AVCaptureFigVideoDevice__handleLiveReconfigurationCompletionWithPayload___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) dynamicAspectRatioCompletionBlock];
  v3 = *(v2 + 16);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  return v3(v2, &v5, 0);
}

- (void)drainDynamicAspectRatioCompletionHandlers
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __68__AVCaptureFigVideoDevice_drainDynamicAspectRatioCompletionHandlers__block_invoke;
  v2[3] = &unk_1E786EC08;
  v2[4] = self;
  [(AVCaptureFigVideoDevice *)self _performBlockOnMainThread:v2];
}

- (void)_drainDynamicAspectRatioRequestQueue
{
  v3 = [*&self->_dynamicDimensions dequeue];
  v4 = AVLocalizedError();
  if (v3)
  {
    v5 = v4;
    v6 = MEMORY[0x1E6960C70];
    do
    {
      if ([v3 dynamicAspectRatioCompletionBlock])
      {
        v7 = [v3 dynamicAspectRatioCompletionBlock];
        v8 = *(v7 + 16);
        v9 = *v6;
        v10 = *(v6 + 2);
        v8(v7, &v9, v5);
      }

      v3 = [*&self->_dynamicDimensions dequeue];
    }

    while (v3);
  }
}

- (void)setCameraLensSmudgeDetectionEnabled:(BOOL)a3 detectionInterval:(id *)a4
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  if ([-[AVCaptureFigVideoDevice activeFormat](self "activeFormat")])
  {
    devicePropsQueue = self->_devicePropsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __81__AVCaptureFigVideoDevice_setCameraLensSmudgeDetectionEnabled_detectionInterval___block_invoke;
    block[3] = &unk_1E78709A0;
    block[4] = self;
    block[5] = &v23;
    v18 = a3;
    v16 = *&a4->var0;
    var3 = a4->var3;
    block[6] = &v19;
    dispatch_sync(devicePropsQueue, block);
    if (*(v24 + 24) == 1)
    {
      [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"cameraLensSmudgeDetectionEnabled"];
      [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"cameraLensSmudgeDetectionInterval"];
      if (*(v20 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"cameraLensSmudgeDetectionStatus"];
      }

      v8 = self->_devicePropsQueue;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __81__AVCaptureFigVideoDevice_setCameraLensSmudgeDetectionEnabled_detectionInterval___block_invoke_2;
      v11[3] = &unk_1E78709C8;
      v14 = a3;
      v12 = *&a4->var0;
      v13 = a4->var3;
      v11[4] = self;
      v11[5] = &v19;
      dispatch_sync(v8, v11);
      [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"cameraLensSmudgeDetectionEnabled"];
      [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"cameraLensSmudgeDetectionInterval"];
      if (*(v20 + 24) == 1)
      {
        [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"cameraLensSmudgeDetectionStatus"];
      }
    }
  }

  else
  {
    v9 = MEMORY[0x1E695DF30];
    objc_opt_class();
    v10 = [v9 exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithClassAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v10);
    }

    NSLog(&cfstr_SuppressingExc.isa, v10);
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
}

uint64_t __81__AVCaptureFigVideoDevice_setCameraLensSmudgeDetectionEnabled_detectionInterval___block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (*(v2 + 1584) == *(result + 80))
  {
    v3 = (v2 + 1588);
    v4 = *v3;
    time1.epoch = *(v3 + 2);
    *&time1.value = v4;
    v6 = *(result + 56);
    result = CMTimeCompare(&time1, &v6);
    v5 = result != 0;
  }

  else
  {
    v5 = 1;
  }

  *(*(*(v1 + 40) + 8) + 24) = v5;
  if ((*(v1 + 80) & 1) == 0)
  {
    if (*(*(v1 + 32) + 1576))
    {
      *(*(*(v1 + 48) + 8) + 24) = 1;
    }
  }

  return result;
}

uint64_t __81__AVCaptureFigVideoDevice_setCameraLensSmudgeDetectionEnabled_detectionInterval___block_invoke_2(uint64_t result)
{
  *(*(result + 32) + 1584) = *(result + 72);
  v1 = *(result + 32) + 1588;
  v2 = *(result + 64);
  *v1 = *(result + 48);
  *(v1 + 16) = v2;
  if (*(*(*(result + 40) + 8) + 24) == 1)
  {
    *(*(result + 32) + 1576) = 0;
  }

  return result;
}

- (id)smartFramingMonitor
{
  v3 = BYTE4(self->_dynamicAspectRatioRequestQueue);
  result = *&self->_dynamicAspectRatioRequestID;
  if (v3 == 1 && result == 0)
  {
    result = [[AVCaptureSmartFramingMonitor alloc] initWithDevice:self smartFramingZoomFactorsByFieldOfView:[(NSDictionary *)self->_fcsAttributes objectForKeyedSubscript:*MEMORY[0x1E6990250]]];
    *&self->_dynamicAspectRatioRequestID = result;
  }

  return result;
}

- (void)_setSmartFramingMonitorRunning:(BOOL)a3
{
  v4 = *MEMORY[0x1E69907C8];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:a3];

  [(AVCaptureFigVideoDevice *)self _setFigCaptureSourceProperty:v4 withValue:v5];
}

- (CGSize)_updateRectOfInterestSizeForSensorOrientationAndDynamicAspectRatio:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  Dimensions = CMVideoFormatDescriptionGetDimensions([(AVCaptureDeviceFormat *)self->_activeFormat formatDescription]);
  v7 = Dimensions;
  v8 = HIDWORD(Dimensions);
  dynamicAspectRatio_high = HIDWORD(Dimensions);
  dynamicAspectRatio = Dimensions;
  if (*&self->_dockedTrackingEnabled)
  {
    dynamicAspectRatio = self->_dynamicAspectRatio;
    dynamicAspectRatio_high = HIDWORD(self->_dynamicAspectRatio);
  }

  [-[AVCaptureDeviceFormat figCaptureSourceVideoFormat](self->_activeFormat "figCaptureSourceVideoFormat")];
  if (AVCaptureIsSensorMountedInPortraitOrientation(v11))
  {
    v12 = AVCaptureFlippedDimensions(dynamicAspectRatio | (dynamicAspectRatio_high << 32));
    dynamicAspectRatio = v12;
    dynamicAspectRatio_high = HIDWORD(v12);
  }

  if (dynamicAspectRatio >= dynamicAspectRatio_high)
  {
    v13 = width;
    if (dynamicAspectRatio == dynamicAspectRatio_high)
    {
      if (width <= height)
      {
        v13 = height;
      }

      else
      {
        v13 = width;
      }

      height = v13;
    }
  }

  else
  {
    v13 = height;
    height = width;
  }

  if (*&self->_dockedTrackingEnabled)
  {
    v13 = v13 * dynamicAspectRatio / v7;
    height = height * dynamicAspectRatio_high / v8;
  }

  v14 = height;
  result.height = v14;
  result.width = v13;
  return result;
}

- (float)nominalFocalLengthIn35mmFilm
{
  v3 = 0.0;
  if (-[AVCaptureDevice isVirtualDevice](self, "isVirtualDevice") || ([-[AVCaptureFigVideoDevice deviceType](self "deviceType")] & 1) != 0 || !-[AVCaptureFigVideoDevice hasMediaType:](self, "hasMediaType:", *MEMORY[0x1E6987608]))
  {
    return v3;
  }

  if ([(AVCaptureFigVideoDevice *)self position]== 1)
  {
    if ([-[AVCaptureFigVideoDevice deviceType](self "deviceType")])
    {
      v4 = &AVGQRearFacingSuperWideCameraFocalLengthIn35mm;
    }

    else if ([-[AVCaptureFigVideoDevice deviceType](self "deviceType")])
    {
      v4 = &AVGQRearFacingWideCameraFocalLengthIn35mm;
    }

    else
    {
      v7 = [-[AVCaptureFigVideoDevice deviceType](self "deviceType")];
      IntegerAnswer = 0.0;
      if ((v7 & 1) == 0)
      {
        goto LABEL_14;
      }

      v4 = &AVGQRearFacingTeleCameraFocalLengthIn35mm;
    }
  }

  else
  {
    v5 = [(AVCaptureFigVideoDevice *)self position];
    IntegerAnswer = 0.0;
    if (v5 != 2)
    {
      goto LABEL_14;
    }

    v4 = &AVGQFrontFacingCameraFocalLengthIn35mm;
  }

  IntegerAnswer = AVGestaltGetIntegerAnswer(*v4);
LABEL_14:
  if (IntegerAnswer == 9.2234e18)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = IntegerAnswer;
  }

  if (v3 == 0.0)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = [-[AVCaptureFigVideoDevice formats](self "formats")];
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v24 + 1) + 8 * i);
          v14 = [objc_msgSend(v13 "figCaptureSourceVideoFormat")];
          if (v14)
          {
            [v13 focalLengthIn35mmFilmWithGeometricDistortionCorrection:1];
            *&v21 = v21;
            return roundf(*&v21);
          }
        }

        v10 = OUTLINED_FUNCTION_3_2(v14, v15, &v24, v16, v17, v18, v19, v20, v23[0]);
        if (v10)
        {
          continue;
        }

        break;
      }
    }
  }

  return v3;
}

- (BOOL)_centerStageRectOfInterestSupportedOnDevice
{
  formats = self->_formats;
  if (formats)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = OUTLINED_FUNCTION_3_2(self, a2, &v22, v2, v3, v4, v5, v6, v20);
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(formats);
          }

          v12 = [objc_msgSend(*(*(&v22 + 1) + 8 * v11) "figCaptureSourceVideoFormat")];
          if (v12)
          {
            LOBYTE(v8) = 1;
            return v8;
          }

          ++v11;
        }

        while (v9 != v11);
        v8 = OUTLINED_FUNCTION_3_2(v12, v13, &v22, v14, v15, v16, v17, v18, v21);
        v9 = v8;
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (void)_setActivePrimaryConstituentDeviceSwitchingBehavior:(int64_t)a3 restrictedSwitchingBehaviorConditions:(unint64_t)a4
{
  activePrimaryConstituentDevice = self->_activePrimaryConstituentDevice;
  activePrimaryConstituentDeviceSwitchingBehavior = self->_activePrimaryConstituentDeviceSwitchingBehavior;
  if (activePrimaryConstituentDevice != a3 || activePrimaryConstituentDeviceSwitchingBehavior != a4)
  {
    if (activePrimaryConstituentDevice != a3)
    {
      [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"activePrimaryConstituentDeviceSwitchingBehavior"];
    }

    if (activePrimaryConstituentDeviceSwitchingBehavior != a4)
    {
      [(AVCaptureFigVideoDevice *)self willChangeValueForKey:@"activePrimaryConstituentDeviceRestrictedSwitchingBehaviorConditions"];
    }

    v10 = OUTLINED_FUNCTION_1_8(64);
    v12 = 3221225472;
    v13 = __117__AVCaptureFigVideoDevice__setActivePrimaryConstituentDeviceSwitchingBehavior_restrictedSwitchingBehaviorConditions___block_invoke;
    v14 = &unk_1E786ECA8;
    v15 = self;
    v16 = a3;
    v17 = a4;
    dispatch_sync(v10, block);
    if (activePrimaryConstituentDeviceSwitchingBehavior != a4)
    {
      [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"activePrimaryConstituentDeviceRestrictedSwitchingBehaviorConditions"];
    }

    if (activePrimaryConstituentDevice != a3)
    {
      [(AVCaptureFigVideoDevice *)self didChangeValueForKey:@"activePrimaryConstituentDeviceSwitchingBehavior"];
    }
  }
}

- (void)_checkTCCAccess
{
  if (![(AVCaptureFigVideoDevice *)self isProxyDevice])
  {
    v3 = OUTLINED_FUNCTION_1_8(40);
    v5 = 3221225472;
    v6 = __42__AVCaptureFigVideoDevice__checkTCCAccess__block_invoke;
    v7 = &unk_1E786EC08;
    v8 = self;
    dispatch_sync(v3, block);
  }
}

- (uint64_t)_initDegradedCaptureQualityFactors
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2_3();
  return FigDebugAssert3();
}

- (uint64_t)_updateFigCaptureSourceObserverCounts
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2_3();
  return FigDebugAssert3();
}

- (uint64_t)_updateContinuousZoomWithDepthActiveWithEnabled:disallowed:isActiveDepthDataFormatChangingOut:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2_3();
  return FigDebugAssert3();
}

- (uint64_t)_updateActiveDepthDataFormatForContinuousZoomWithDepth
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2_3();
  return FigDebugAssert3();
}

- (uint64_t)_setFocusWithMode:lensPosition:requestID:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2_3();
  return FigDebugAssert3();
}

- (uint64_t)_setExposureWithMode:duration:ISO:requestID:newMaxFrameDuration:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2_3();
  return FigDebugAssert3();
}

uint64_t __55__AVCaptureFigVideoDevice__handleNotification_payload___block_invoke_17_cold_1(void *a1, void *a2)
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2_3();
  result = FigDebugAssert3();
  *a2 = *a1;
  return result;
}

- (void)setDynamicAspectRatio:(const void *)a1 completionHandler:.cold.1(const void *a1)
{
  OUTLINED_FUNCTION_4_1(a1);
  _Block_object_dispose(v3, 8);
  _Block_object_dispose(v2, 8);
  _Block_object_dispose(v1, 8);
}

@end