@interface VCVideoCaptureServer
+ (id)VCVideoCaptureServerSingleton;
- (BOOL)cameraSupportsWidth:(int)width height:(int)height;
- (BOOL)canStopPreview;
- (BOOL)captureVideoWidth:(int *)width height:(int *)height frameRate:(int *)rate;
- (BOOL)deregisterCaptureConfig:(id)config forSource:(int)source;
- (BOOL)deregisterForVideoFramesFromSource:(int)source withClient:(id)client;
- (BOOL)deregisterSystemAudioConfig:(id)config forSource:(int)source;
- (BOOL)dispatchedStartSystemAudioForClientKey:(id)key forSource:(int)source;
- (BOOL)dispatchedStopSystemAudioForClientKey:(id)key forSource:(int)source;
- (BOOL)internalRegisterStreamInput:(id)input;
- (BOOL)internalUnregisterStreamInput:(id)input;
- (BOOL)isAirPlayXPCHelper;
- (BOOL)isClientRegisteredForVideoFrames:(id)frames fromSource:(int)source;
- (BOOL)isFaceTimeScreenSharingWithDict:(id)dict;
- (BOOL)onVideoFrame:(opaqueCMSampleBuffer *)frame frameTime:(id *)time attribute:(id *)attribute;
- (BOOL)registerCaptureConfig:(id)config forSource:(int)source;
- (BOOL)registerForFrames:(id)frames;
- (BOOL)registerForVideoFramesFromSource:(int)source sourceConfig:(id)config;
- (BOOL)registerForVideoFramesFromSource:(int)source withClient:(id)client width:(int)width height:(int)height frameRate:(int)rate;
- (BOOL)registerStreamInput:(id)input;
- (BOOL)registerSystemAudioConfig:(id)config forSource:(int)source;
- (BOOL)setCaptureCameraWithToken:(_VCVideoSourceToken)token;
- (BOOL)setLocalScreenAttributes:(id)attributes;
- (BOOL)setLocalVideoAttributes:(id)attributes;
- (BOOL)setUpScreenVideoCaptureSource:(id)source;
- (BOOL)setUpSensitiveContentAnalyzerWithParticipantUUID:(id)d;
- (BOOL)setupScreenCaptureForSource:(int)source config:(id)config;
- (BOOL)setupStreamInputs;
- (BOOL)shouldSendVideoAttributeCallback:(id)callback;
- (BOOL)startScreenShareCapture:(id)capture;
- (BOOL)stopScreenShareCapture:(int64_t)capture;
- (BOOL)supportsPortraitResolution;
- (BOOL)unregisterStreamInputCaptureSourceWithCaptureSourceID:(int)d;
- (CGSize)localExpectedRatioForScreenOrientation:(int)orientation;
- (CGSize)localScreenRatioForScreenOrientation:(int)orientation;
- (VCVideoCaptureServer)init;
- (__CFDictionary)copyCameraColorInfo;
- (__CFDictionary)copyInitialStatsDictionary;
- (__CFDictionary)copyRealtimeStatsDictionary;
- (__CFDictionary)copyReportingStatsForCaptureSource:(int)source;
- (id)copyLocalScreenAttributesForVideoAttributes:(id)attributes;
- (id)localScreenAttributesForVideoAttributes:(id)attributes;
- (id)localVideoAttributes;
- (id)newSensitiveContentAnalyzerWithParticipantUUID:(id)d;
- (id)updateScreenCapture:(int64_t)capture withConfig:(id)config;
- (id)videoRuleForClient:(id)client;
- (int)createVideoCaptureWithWidth:(int)width height:(int)height frameRate:(int)rate useBackFacingCamera:(BOOL)camera;
- (int)findNextAvailableCaptureSourceID;
- (int)getCappedFrameRate:(int)rate;
- (int)getCaptureFrameRateForSource:(int)source;
- (int)getFrameRateForPeakPowerLevel:(int)level;
- (int)getFrameRateForThermalLevel:(int)level;
- (int)getFrameRateForThermalLevel:(int)level peakPowerPressure:(int)pressure;
- (int)getScreenFrameRateForThermalLevel:(int)level;
- (int)registerStreamInputCaptureSourceWithConfiguration:(id)configuration;
- (int)registerStreamInputCaptureSourceWithID:(int64_t)d frameRate:(unsigned int)rate;
- (int)remoteDeviceOrientation;
- (int)screenFrameRateForThermalLevel:(int)level configuredFrameRate:(int)rate captureSourceID:(id)d;
- (int)setBoundsForRemoteLayerWithFacing:(BOOL)facing frameRect:(CGRect)rect fenceHandle:(id)handle;
- (int)thermalPressureLevel;
- (int64_t)streamInputIDForCaptureSourceID:(int)d;
- (opaqueCMFormatDescription)newFormatDescriptionForCaptureSource:(int)source;
- (tagVCAspectRatios)remoteExpectedAspectRatios;
- (tagVCAspectRatios)remoteExpectedFullScreenAspectRatios;
- (tagVCAspectRatios)remoteScreenAspectRatios;
- (tagVCCameraAspectRatiosARXR)localCameraVideoAspectRatios;
- (unsigned)setLocalVideoDestination:(id *)destination;
- (unsigned)setLocalVideoDestination:(id)destination facing:(BOOL)facing;
- (void)addDeviceStateDelegate:(id)delegate;
- (void)addObserveSystemPreferredCamera;
- (void)addScreenStatsToDict:(__CFDictionary *)dict;
- (void)addStreamInputStatsToDict:(__CFDictionary *)dict captureSource:(int)source;
- (void)beginPIPToPreviewAnimation;
- (void)beginPreviewToPIPAnimation;
- (void)captureSourceVideoFeatureStatusDidChange:(tagVCVideoCaptureFeatureStatus)change;
- (void)centerStageEnabledDidChange:(BOOL)change;
- (void)changeCameraToPendingSettingsWithReset:(BOOL)reset;
- (void)cleanupStreamInputs;
- (void)dealloc;
- (void)deregisterCaptureClientForScreenShare:(id)share;
- (void)deregisterScreenVideoConfig:(id)config forSource:(int)source;
- (void)didChangeThermalLevel:(int)level;
- (void)didSelectUnbinnedCameraFormat;
- (void)didStopReacting;
- (void)dispatchedSetCaptureCameraWithToken:(_VCVideoSourceToken)token;
- (void)dispatchedSetCaptureFrameRate:(int)rate;
- (void)dispatchedSetCaptureWidth:(int)width height:(int)height rate:(int)rate;
- (void)dispatchedStartSystemAudioForSource:(int)source;
- (void)dispatchedStopSystemAudioForSource:(int)source;
- (void)dispatchedUpdateCaptureRuleForClient:(id)client width:(int)width height:(int)height frameRate:(float)rate;
- (void)dispatchedUpdateRemoteScreenAttributes:(int)attributes forceUpdate:(BOOL)update;
- (void)dispatchedUpdateSystemAudioConfigTapTypeForClientKey:(id)key forSource:(int)source;
- (void)endPIPToPreviewAnimation;
- (void)endPreviewToPIPAnimation;
- (void)endSensitiveContentAnalysis;
- (void)endSensitiveContentAnalyzerInterruption;
- (void)handleAVCaptureError:(int)error domain:(id)domain;
- (void)handleAVCaptureError:(int)error error:(id)a4;
- (void)handleCaptureEvent:(id)event subType:(id)type;
- (void)handleCaptureSourcePositionDidChange:(BOOL)change;
- (void)init;
- (void)isAirPlayXPCHelper;
- (void)notifyCameraDidChangeAvailability:(id)availability available:(BOOL)available;
- (void)notifyDeviceStateDelegatesWithOrientation:(int)orientation;
- (void)notifyFrameRateBeingThrottledForClients:(id)clients newFrameRate:(int)rate thermalLevelDidChange:(BOOL)change powerLevelDidChange:(BOOL)didChange;
- (void)notifyThermalChangeForClients:(id)clients;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)onCaptureScreenFrame:(opaqueCMSampleBuffer *)frame frameTime:(id *)time orientation:(int)orientation;
- (void)pausePreview;
- (void)populateThermalFrameRateThresholdsForCaptureSourceID:(int64_t)d captureConfig:(id)config;
- (void)portraitBlurEnabledDidChange:(BOOL)change;
- (void)previewVideoWidth:(int *)width height:(int *)height frameRate:(int *)rate;
- (void)reactionDidStart:(id)start;
- (void)reconnectClientLayerFront:(BOOL)front;
- (void)registerBlocksForServer;
- (void)registerCaptureClientForScreenShare:(id)share;
- (void)registerScreenVideoConfig:(id)config forSource:(int)source;
- (void)registerVideoSink:(id)sink withCaptureSource:(int)source;
- (void)removeDeviceStateDelegate:(id)delegate;
- (void)removeObserveSystemPreferredCamera;
- (void)resetCameraToPreviewSettingsForced:(BOOL)forced;
- (void)resumeVideoSink:(id)sink withCaptureSource:(int)source;
- (void)screenAndCameraMixingEnable:(BOOL)enable;
- (void)sendBiomeEventIsStarting:(BOOL)starting;
- (void)setCFAvailabilityChange:(BOOL)change;
- (void)setCameraPerClientRequest:(id)request;
- (void)setCameraZoomAvailable:(BOOL)available currentZoomFactor:(double)factor maxZoomFactor:(double)zoomFactor;
- (void)setCameraZoomFactor:(double)factor;
- (void)setCameraZoomFactor:(double)factor withRate:(double)rate;
- (void)setCaptureFrameRate:(int)rate;
- (void)setCaptureSIFRFormatEnabled:(BOOL)enabled;
- (void)setCaptureWidth:(int)width height:(int)height rate:(int)rate;
- (void)setCaptureWidth:(int)width height:(int)height rate:(int)rate forced:(BOOL)forced;
- (void)setFollowSystemCamera:(BOOL)camera;
- (void)setPauseCapture:(BOOL)capture;
- (void)setPreferCaptureFullBleed:(BOOL)bleed;
- (void)setRemoteDeviceOrientation:(int)orientation;
- (void)setScreenCaptureFrameRate:(int)rate captureSourceID:(id)d;
- (void)setSystemPreferredAsLocalCamera;
- (void)setUpDefaultAspectRatios;
- (void)setUpImageRotationConverter;
- (void)setViewPointCorrectionEnabled:(BOOL)enabled;
- (void)setupLogFiles;
- (void)setupStreamInputs;
- (void)sourceFrameRateDidChange:(unsigned int)change;
- (void)startCaptureWithWidth:(int)width height:(int)height frameRate:(int)rate;
- (void)startPreviewWithWidth:(int)width height:(int)height frameRate:(int)rate;
- (void)stopCapture;
- (void)stopPreview;
- (void)suspendVideoSink:(id)sink withCaptureSource:(int)source;
- (void)unregisterStreamInput:(id)input;
- (void)unregisterVideoSink:(id)sink withCaptureSource:(int)source;
- (void)updateCaptureRuleForClient:(id)client width:(int)width height:(int)height frameRate:(float)rate;
- (void)updateCaptureWidth:(int *)width height:(int *)height frameRate:(int *)rate withVideoRule:(id)rule;
- (void)updateCenterStageEnabled:(BOOL)enabled requestCaptureChange:(BOOL)change;
- (void)updateImageQueueFrameRate:(int)rate;
- (void)updateLocalAspectRatios:(int)ratios localScreenAspectRatio:(CGSize)ratio;
- (void)updatePreviewState;
- (void)updateViewPointCorrectionStatus;
@end

@implementation VCVideoCaptureServer

+ (id)VCVideoCaptureServerSingleton
{
  v3 = objc_opt_class();
  objc_sync_enter(v3);
  if (!_vcVideoCaptureServerSingleton)
  {
    _vcVideoCaptureServerSingleton = objc_alloc_init(self);
  }

  objc_sync_exit(v3);
  return _vcVideoCaptureServerSingleton;
}

- (VCVideoCaptureServer)init
{
  v27 = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = VCVideoCaptureServer;
  v2 = [(VCVideoCaptureServer *)&v24 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 1) = 0;
    *(v2 + 4) = 0;
    *(v2 + 25) = 0;
    *(v2 + 20) = 0;
    *(v2 + 114) = VCVideoUtil_DefaultCameraCapturePixelFormat();
    *(v3 + 38) = 0;
    *(v3 + 45) = 0;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 49) = 0;
    *(v3 + 71) = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(v3 + 72) = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(v3 + 73) = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(v3 + 74) = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(v3 + 75) = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(v3 + 76) = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(v3 + 77) = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(v3 + 13) = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(v3 + 14) = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(v3 + 15) = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(v3 + 16) = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = objc_alloc_init(VideoAttributes);
    *(v3 + 56) = v4;
    [(VideoAttributes *)v4 setOrientation:0];
    *(v3 + 11) = +[VCVideoSourceTokenManager sharedManager];
    v3[296] = 1;
    [v3 setUpDefaultAspectRatios];
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(47);
    *(v3 + 30) = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCVideoCaptureServer.captureClientQueue", 0, CustomRootQueue);
    *(v3 + 33) = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCVideoCaptureServer.xpcCommandQueue", 0, CustomRootQueue);
    *(v3 + 34) = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCVideoCaptureServer.delegateNotificationQueue", 0, CustomRootQueue);
    v6 = VCDispatchQueue_GetCustomRootQueue(37);
    *(v3 + 29) = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCVideoCaptureServer.captureServerQueue", 0, v6);
    *(v3 + 35) = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCVideoCaptureServer.variablesQueue", MEMORY[0x1E69E96A8], v6);
    *(v3 + 36) = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCVideoCaptureServer.snapshotQueue", 0, v6);
    *(v3 + 32) = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCVideoCaptureServer.clientMonitorQueue", 0, v6);
    v7 = MEMORY[0x1E69E9710];
    v8 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v3 + 29));
    *(v3 + 6) = v8;
    dispatch_source_set_timer(v8, 0, 0x12A05F200uLL, 0x11E1A300uLL);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __28__VCVideoCaptureServer_init__block_invoke;
    handler[3] = &unk_1E85F3778;
    handler[4] = v3;
    dispatch_source_set_event_handler(*(v3 + 6), handler);
    dispatch_source_set_cancel_handler(*(v3 + 6), handler);
    v9 = dispatch_source_create(v7, 0, 0, *(v3 + 30));
    *(v3 + 7) = v9;
    dispatch_source_set_timer(v9, 0, 0x12A05F200uLL, 0x11E1A300uLL);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __28__VCVideoCaptureServer_init__block_invoke_21;
    v22[3] = &unk_1E85F3778;
    v22[4] = v3;
    dispatch_source_set_event_handler(*(v3 + 7), v22);
    dispatch_source_set_cancel_handler(*(v3 + 7), v22);
    [*(v3 + 56) setCamera:3];
    *(v3 + 212) = 257;
    if (([v3 isAirPlayXPCHelper] & 1) == 0)
    {
      [v3 registerBlocksForServer];
    }

    [v3 setupStreamInputs];
    thermalLevel = [VCPowerManager_DefaultManager() thermalLevel];
    *(v3 + 102) = thermalLevel;
    *(v3 + 101) = thermalLevel;
    v3[428] = [+[VCDefaults sharedInstance](VCDefaults forceDisableThermal];
    notify_register_check("com.apple.system.peakpowerpressurelevel", v3 + 103);
    v11 = *(v3 + 103);
    state64.value = 0;
    notify_get_state(v11, &state64);
    value = state64.value;
    *(v3 + 105) = state64.value;
    *(v3 + 104) = value;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __28__VCVideoCaptureServer_init__block_invoke_26;
    v21[3] = &unk_1E85F4A20;
    v21[4] = v3;
    notify_register_dispatch("com.apple.system.peakpowerpressurelevel", v3 + 103, MEMORY[0x1E69E96A0], v21);
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&state64, HostTimeClock);
    *(v3 + 79) = CMTimeGetSeconds(&state64);
    if (([v3 isAirPlayXPCHelper] & 1) == 0 && +[VCHardwareSettings isExternalCameraSupported](VCHardwareSettings, "isExternalCameraSupported"))
    {
      [v3 setFollowSystemCamera:1];
    }

    v14 = VCFeatureFlagManager_PreviewMSROptimizationForEmbedded();
    v3[721] = v14;
    if (v14)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(state64.value) = 136315650;
          *(&state64.value + 4) = v15;
          LOWORD(state64.flags) = 2080;
          *(&state64.flags + 2) = "[VCVideoCaptureServer init]";
          HIWORD(state64.epoch) = 1024;
          v26 = 583;
          _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d _skipPreviewRotation=YES", &state64, 0x1Cu);
        }
      }
    }

    v3[720] = 1;
    [v3 setUpImageRotationConverter];
    [v3 setupLogFiles];
    *(v3 + 91) = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [VCPowerManager_DefaultManager() registerForThermalEvents:v3];
    if (VRTraceGetErrorLogLevelForModule() > 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      v19 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(state64.value) = 136315650;
          *(&state64.value + 4) = v17;
          LOWORD(state64.flags) = 2080;
          *(&state64.flags + 2) = "[VCVideoCaptureServer init]";
          HIWORD(state64.epoch) = 1024;
          v26 = 594;
          _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d done initialization of singleton", &state64, 0x1Cu);
        }
      }

      else if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [VCVideoCaptureServer init];
      }
    }

    pthread_mutex_init((v3 + 480), 0);
  }

  return v3;
}

void __28__VCVideoCaptureServer_init__block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 304))
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [*(*(a1 + 32) + 304) frameCount:1];
    }

    else
    {
      v2 = 0;
    }

    pthread_mutex_lock((*(a1 + 32) + 480));
    v3 = [*(*(a1 + 32) + 384) frameCount];
    [*(*(a1 + 32) + 384) resetFrameCount];
    v4 = [*(*(a1 + 32) + 392) frameCount];
    [*(*(a1 + 32) + 392) resetFrameCount];
    pthread_mutex_unlock((*(a1 + 32) + 480));
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        v8 = *(v7 + 40);
        LODWORD(v7) = *(v7 + 44);
        *buf = 136317186;
        v16 = v5;
        v17 = 2080;
        v18 = "[VCVideoCaptureServer init]_block_invoke";
        v19 = 1024;
        v20 = 494;
        v21 = 1024;
        v22 = v2;
        v23 = 1024;
        v24 = v2;
        v25 = 1024;
        v26 = v8;
        v27 = 1024;
        v28 = v7;
        v29 = 1024;
        v30 = v3;
        v31 = 1024;
        v32 = v4;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d @=@ Health: VideoCapture cameraPreviewCount=%d, cameraCaptureCount=%d, serverPreviewCount=%d, serverCaptureCount=%d, frontQueueCount=%d, backQueueCount=%d", buf, 0x40u);
      }
    }

    if (!v2 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v14 = 0;
      v13 = 0;
      v9 = [*(*(a1 + 32) + 304) frameBecameAvailableCount:&v14 + 4 figBufferQueueEmptyCount:&v14 figBufferQueueErrorCount:&v13];
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (v9 < 0)
      {
        if (ErrorLogLevelForModule >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            __28__VCVideoCaptureServer_init__block_invoke_cold_1();
          }
        }
      }

      else if (ErrorLogLevelForModule >= 7)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          v16 = v11;
          v17 = 2080;
          v18 = "[VCVideoCaptureServer init]_block_invoke";
          v19 = 1024;
          v20 = 504;
          v21 = 1024;
          v22 = HIDWORD(v14);
          v23 = 1024;
          v24 = v14;
          v25 = 1024;
          v26 = v13;
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d frameBecameAvailableCount = %d, figBufferQueueEmptyCount = %d, figBufferQueueErrorCount = %d", buf, 0x2Eu);
        }
      }
    }

    *(*(a1 + 32) + 40) = 0;
    *(*(a1 + 32) + 44) = 0;
  }
}

void __28__VCVideoCaptureServer_init__block_invoke_21(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 312))
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [*(*(a1 + 32) + 312) frameCount:1];
    }

    else
    {
      v2 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v3 = [*(*(a1 + 32) + 312) frameDropsWithShouldReset:1];
    }

    else
    {
      v3 = 0;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136316162;
        v7 = v4;
        v8 = 2080;
        v9 = "[VCVideoCaptureServer init]_block_invoke";
        v10 = 1024;
        v11 = 531;
        v12 = 1024;
        v13 = v2;
        v14 = 1024;
        v15 = v3;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d @=@ Health: ScreenCapture screenCaptureCount=%d screenCaptureFrameDrops=%d", &v6, 0x28u);
      }
    }
  }
}

uint64_t __28__VCVideoCaptureServer_init__block_invoke_26(uint64_t a1, int token)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  result = notify_get_state(token, v4);
  *(*(a1 + 32) + 420) = v4[0];
  return result;
}

- (BOOL)isAirPlayXPCHelper
{
  v14 = *MEMORY[0x1E69E9840];
  memset(__b, 170, sizeof(__b));
  v12 = 0;
  *pid = 0u;
  v11 = 0u;
  buffer = 0u;
  v2 = getpid();
  if (proc_pidinfo(v2, 17, 1uLL, &buffer, 56) != 56)
  {
    [VCVideoCaptureServer isAirPlayXPCHelper];
LABEL_7:
    v4 = v7;
    v5 = v8;
    goto LABEL_4;
  }

  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:__b length:proc_pidpath(pid[0] encoding:{__b, 0x1000u), 4}];
  if (!v3)
  {
    [VCVideoCaptureServer isAirPlayXPCHelper];
    goto LABEL_7;
  }

  v4 = v3;
  v5 = [@"AirPlayXPCHelper" isEqualToString:{objc_msgSend(v3, "lastPathComponent")}];
LABEL_4:

  return v5;
}

- (void)setupLogFiles
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVideoCaptureServer [%s] %s:%d failed to open capture_statistics.log", v2, v3, v4, v5, v6);
}

- (void)setUpDefaultAspectRatios
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = +[VCHardwareSettings screenWidth];
  v4 = +[VCHardwareSettings screenHeight];
  self->_defaultPortraitAspectRatio.width = v4;
  self->_defaultPortraitAspectRatio.height = v3;
  self->_defaultLandscapeAspectRatio.width = v3;
  self->_defaultLandscapeAspectRatio.height = v4;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v6 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      defaultPortraitAspectRatio = self->_defaultPortraitAspectRatio;
      v12 = 136315906;
      v13 = v7;
      v14 = 2080;
      v15 = "[VCVideoCaptureServer setUpDefaultAspectRatios]";
      v16 = 1024;
      v17 = 660;
      v18 = 2112;
      v19 = NSStringFromSize(defaultPortraitAspectRatio);
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d _defaultPortraitAspectRatio=%@", &v12, 0x26u);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = NSStringFromSize(self->_defaultLandscapeAspectRatio);
      v12 = 136315906;
      v13 = v9;
      v14 = 2080;
      v15 = "[VCVideoCaptureServer setUpDefaultAspectRatios]";
      v16 = 1024;
      v17 = 661;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d _defaultLandscapeAspectRatio=%@", &v12, 0x26u);
    }
  }

  [(VCVideoCaptureServer *)self updateLocalAspectRatios:0 localScreenAspectRatio:self->_defaultPortraitAspectRatio.width, self->_defaultPortraitAspectRatio.height];
  [(VCVideoCaptureServer *)self updateLocalAspectRatios:2 localScreenAspectRatio:self->_defaultLandscapeAspectRatio.width, self->_defaultLandscapeAspectRatio.height];
}

- (void)dealloc
{
  v29 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v20 = v4;
        v21 = 2080;
        v22 = "[VCVideoCaptureServer dealloc]";
        v23 = 1024;
        v24 = 667;
        v6 = "VCVideoCaptureServer [%s] %s:%d ";
        v7 = v5;
        v8 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCVideoCaptureServer *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v20 = v9;
        v21 = 2080;
        v22 = "[VCVideoCaptureServer dealloc]";
        v23 = 1024;
        v24 = 667;
        v25 = 2112;
        v26 = v3;
        v27 = 2048;
        selfCopy = self;
        v6 = "VCVideoCaptureServer [%s] %s:%d %@(%p) ";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  [VCPowerManager_DefaultManager() unregisterForThermalEvents:self];
  notify_cancel(self->_peakPowerNotificationToken);
  if (self->_followSystemCamera)
  {
    [(VCVideoCaptureServer *)self removeObserveSystemPreferredCamera];
  }

  pthread_mutex_lock(&self->_enqueueLock);

  self->frontQueue = 0;
  self->backQueue = 0;
  pthread_mutex_unlock(&self->_enqueueLock);
  pthread_mutex_destroy(&self->_enqueueLock);

  [(NSMutableArray *)self->cameraVideoSinks removeAllObjects];
  [(NSMutableArray *)self->screenCaptureClients removeAllObjects];

  dispatch_release(self->_cameraPreviewClientMonitorQueue);
  cameraHealthMonitor = self->cameraHealthMonitor;
  if (cameraHealthMonitor)
  {
    dispatch_source_cancel(cameraHealthMonitor);
    v12 = self->cameraHealthMonitor;
    if (v12)
    {
      dispatch_release(v12);
      self->cameraHealthMonitor = 0;
    }
  }

  screenHealthMonitor = self->screenHealthMonitor;
  if (screenHealthMonitor)
  {
    dispatch_source_cancel(screenHealthMonitor);
    v14 = self->screenHealthMonitor;
    if (v14)
    {
      dispatch_release(v14);
      self->screenHealthMonitor = 0;
    }
  }

  dispatch_release(self->captureServerQueue);
  dispatch_release(self->captureClientQueue);
  dispatch_release(self->_xpcCommandQueue);
  dispatch_release(self->delegateNotificationQueue);
  dispatch_release(self->variablesQueue);
  dispatch_release(self->snapshotQueue);
  transferSession = self->transferSession;
  if (transferSession)
  {
    VTPixelTransferSessionInvalidate(transferSession);
    CFRelease(self->transferSession);
  }

  bufferPool = self->bufferPool;
  if (bufferPool)
  {
    CVPixelBufferPoolRelease(bufferPool);
  }

  [(VCVideoCaptureServer *)self tearDownImageRotationConverter];
  [(VCVideoCaptureServer *)self cleanupStreamInputs];
  bufferStatsDumpFile = self->_bufferStatsDumpFile;
  if (bufferStatsDumpFile)
  {
    fclose(bufferStatsDumpFile);
  }

  [(SCVideoStreamAnalyzer *)self->_sensitiveContentAnalyzer endAnalysis];

  v18.receiver = self;
  v18.super_class = VCVideoCaptureServer;
  [(VCVideoCaptureServer *)&v18 dealloc];
}

- (void)registerBlocksForServer
{
  v22[5] = *MEMORY[0x1E69E9840];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke;
  v22[3] = &unk_1E85F5100;
  v22[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_2;
  v21[3] = &unk_1E85F5100;
  v21[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_79;
  v20[3] = &unk_1E85F5100;
  v20[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_84;
  v19[3] = &unk_1E85F5100;
  v19[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_87;
  v18[3] = &unk_1E85F5100;
  v18[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_2_89;
  v17[3] = &unk_1E85F5100;
  v17[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_3;
  v16[3] = &unk_1E85F5100;
  v16[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_4;
  v15[3] = &unk_1E85F5100;
  v15[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_5;
  v14[3] = &unk_1E85F5100;
  v14[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_101;
  v13[3] = &unk_1E85F5100;
  v13[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_109;
  v12[3] = &unk_1E85F5100;
  v12[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_116;
  v11[3] = &unk_1E85F5100;
  v11[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_2_118;
  v10[3] = &unk_1E85F5100;
  v10[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_3_120;
  v9[3] = &unk_1E85F5100;
  v9[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_4_122;
  v8[3] = &unk_1E85F5100;
  v8[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_5_124;
  v7[3] = &unk_1E85F5100;
  v7[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_6;
  v6[3] = &unk_1E85F5100;
  v6[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_7;
  v5[3] = &unk_1E85F5100;
  v5[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_8;
  v4[3] = &unk_1E85F5100;
  v4[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_9;
  v3[3] = &unk_1E85F5100;
  v3[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

void *__47__VCVideoCaptureServer_registerBlocksForServer__block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v5 = [objc_msgSend(*(a1 + 32) "localVideoAttributes")];
  v6 = objc_alloc_init(VCCameraPreview);
  v7 = [objc_msgSend(a2 objectForKeyedSubscript:{@"CLIENTPID", "intValue"}];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v8;
      *&buf[12] = 2080;
      *&buf[14] = "[VCVideoCaptureServer registerBlocksForServer]_block_invoke";
      *&buf[22] = 1024;
      v21 = 816;
      v22 = 1024;
      v23 = v7;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d Adding PID %d to client monitor", buf, 0x22u);
    }
  }

  v10 = *(a1 + 32);
  v11 = *(v10 + 256);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_57;
  block[3] = &unk_1E85F3890;
  v19 = v7;
  block[4] = v10;
  block[5] = v6;
  dispatch_async(v11, block);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v21) = 0;
  v12 = *(a1 + 32);
  v13 = *(v12 + 232);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_59;
  v17[3] = &unk_1E85F40B8;
  v17[4] = v12;
  v17[5] = buf;
  dispatch_sync(v13, v17);
  v14 = objc_alloc(MEMORY[0x1E695DF90]);
  v4 = [v14 initWithObjectsAndKeys:{v5, @"localVideoAttributes", v6, @"CONTEXT", objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", *(*&buf[8] + 24)), @"previewState", 0}];
  v15 = [*(*(a1 + 32) + 88) deviceNameForToken:*(*(a1 + 32) + 432)];
  if (v15)
  {
    [v4 setObject:v15 forKeyedSubscript:@"localCameraUIDString"];
  }

  _Block_object_dispose(buf, 8);
  return v4;
}

void __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_57(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 120) setObject:*(a1 + 40) forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", *(a1 + 48))}];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 48);
      v5 = 136315906;
      v6 = v2;
      v7 = 2080;
      v8 = "[VCVideoCaptureServer registerBlocksForServer]_block_invoke";
      v9 = 1024;
      v10 = 819;
      v11 = 1024;
      v12 = v4;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d Initialized camera preview client pid=%u", &v5, 0x22u);
    }
  }
}

uint64_t __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_2(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v4 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    if (v4)
    {
      v5 = v4;
      v12 = 0;
      v11 = 0;
      [*(a1 + 32) captureVideoWidth:&v12 + 4 height:&v12 frameRate:&v11];
      if (v12 * HIDWORD(v12) * v11)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 5)
        {
          v6 = VRTraceErrorLogLevelToCSTR();
          v7 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v8 = [*(*(a1 + 32) + 104) count];
            v9 = *(*(a1 + 32) + 104);
            *buf = 136316162;
            v14 = v6;
            v15 = 2080;
            v16 = "[VCVideoCaptureServer registerBlocksForServer]_block_invoke_2";
            v17 = 1024;
            v18 = 854;
            v19 = 1024;
            v20 = v8;
            v21 = 2112;
            v22 = v9;
            _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d StartPreview when cameraVideoSinks count=%u, array=%@.", buf, 0x2Cu);
          }
        }

        [*(a1 + 32) startCaptureWithWidth:HIDWORD(v12) height:v12 frameRate:v11];
      }

      else
      {
        [*(a1 + 32) startPreview];
      }

      [v5 setStarted:1];
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_2_cold_1();
        }
      }

      [*(a1 + 32) handleAVCaptureError:2148073489 domain:@"avCaptureStartPreviewFail"];
    }
  }

  return 0;
}

uint64_t __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_79(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v4 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    if (v4)
    {
      [v4 setStarted:0];
      [*(a1 + 32) pausePreview];
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_79_cold_1();
        }
      }

      [*(a1 + 32) handleAVCaptureError:2148073489 domain:@"avCaptureStopFail"];
    }
  }

  return 0;
}

uint64_t __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_84(uint64_t a1, void *a2)
{
  *&v22[5] = *MEMORY[0x1E69E9840];
  [a2 objectForKeyedSubscript:@"CONTEXT"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (isKindOfClass)
  {
    if (ErrorLogLevelForModule >= 6)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v16 = v6;
        v17 = 2080;
        v18 = "[VCVideoCaptureServer registerBlocksForServer]_block_invoke";
        v19 = 1024;
        v20 = 894;
        v21 = 1024;
        *v22 = [objc_msgSend(a2 objectForKey:{@"CLIENTPID", "intValue"}];
        v22[2] = 1024;
        *&v22[3] = [a2 objectForKey:@"CLIENTDIED"] != 0;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d stopPreview invoked by %d, client died %d", buf, 0x28u);
      }
    }

    v8 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
    {
      v9 = *(a1 + 32);
      v10 = *(v9 + 256);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_85;
      v14[3] = &unk_1E85F37F0;
      v14[4] = a2;
      v14[5] = v9;
      dispatch_async(v10, v14);
    }

    else
    {
      [v8 setStarted:0];
    }

    if ([*(a1 + 32) canStopPreview])
    {
      [*(a1 + 32) stopPreview];
    }
  }

  else if (ErrorLogLevelForModule >= 5)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v16 = v11;
      v17 = 2080;
      v18 = "[VCVideoCaptureServer registerBlocksForServer]_block_invoke";
      v19 = 1024;
      v20 = 890;
      v21 = 2112;
      *v22 = [objc_msgSend(a2 objectForKeyedSubscript:{@"CONTEXT", "description"}];
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d VCVideoCaptureServer: context is not of type VCCameraPreview, %@", buf, 0x26u);
    }
  }

  return 0;
}

uint64_t __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_85(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [objc_msgSend(*(a1 + 32) objectForKey:{@"CLIENTPID", "intValue"}];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "[VCVideoCaptureServer registerBlocksForServer]_block_invoke";
      v10 = 1024;
      v11 = 902;
      v12 = 1024;
      v13 = v2;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d Removing camera preview client pid=%u", &v6, 0x22u);
    }
  }

  return [*(*(a1 + 40) + 120) removeObjectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v2)}];
}

uint64_t __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_87(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    [*(a1 + 32) setCameraPerClientRequest:{objc_msgSend(a2, "objectForKeyedSubscript:", @"localCameraUIDString"}];
  }

  return 0;
}

uint64_t __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_2_89(uint64_t a1, void *a2)
{
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v4 = [*(*(a1 + 32) + 88) deviceNameForToken:*(*(a1 + 32) + 432)];
  return [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v4, @"localCameraUIDString", 0}];
}

uint64_t __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_3(uint64_t a1, void *a2)
{
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v5 = -[VideoAttributes initWithEncodedDictionary:]([VideoAttributes alloc], "initWithEncodedDictionary:", [a2 objectForKeyedSubscript:@"localVideoAttributes"]);
  [*(a1 + 32) setLocalVideoAttributes:v5];
  v6 = [objc_msgSend(*(a1 + 32) "localVideoAttributes")];
  v7 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v6, @"localVideoAttributes", 0}];

  return v7;
}

uint64_t __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_4(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v4 = -[VideoAttributes initWithEncodedDictionary:]([VideoAttributes alloc], "initWithEncodedDictionary:", [a2 objectForKeyedSubscript:@"localVideoAttributes"]);
    [*(a1 + 32) setLocalScreenAttributes:v4];
  }

  return 0;
}

uint64_t __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_5(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v5 = [a2 objectForKeyedSubscript:@"videoSlotFacing"];
  v6 = [*(a1 + 32) setLocalVideoDestination:0 facing:{objc_msgSend(v5, "BOOLValue")}];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ previewGetLocalVideoSlot");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v12 = v7;
      v13 = 2080;
      v14 = "[VCVideoCaptureServer registerBlocksForServer]_block_invoke_5";
      v15 = 1024;
      v16 = 974;
      v17 = 1024;
      v18 = v6;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d @:@ previewGetLocalVideoSlot slot=%u front=%@", buf, 0x2Cu);
    }
  }

  v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:v6];
  v4 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v9, @"videoSlotNumber", 0}];

  return v4;
}

uint64_t __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_101(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v5 = [a2 objectForKeyedSubscript:@"videoSlotFacing"];
  v35 = NSRectFromString([a2 objectForKeyedSubscript:@"conferenceVisualRectangle"]);
  x = v35.origin.x;
  y = v35.origin.y;
  width = v35.size.width;
  height = v35.size.height;
  v23 = 1;
  v22 = 0xAAAAAAAAAAAA0001;
  v15 = 0;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  LOBYTE(v16) = [v5 BOOLValue];
  v17 = &v23;
  v18 = x;
  v19 = y;
  v20 = width;
  v21 = height;
  v10 = [*(a1 + 32) setLocalVideoDestination:&v15];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ previewGetLocalVideoContext");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v25 = v11;
      v26 = 2080;
      v27 = "[VCVideoCaptureServer registerBlocksForServer]_block_invoke";
      v28 = 1024;
      v29 = 999;
      v30 = 1024;
      v31 = v10;
      v32 = 2112;
      v33 = v5;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d @:@ previewGetLocalVideoContext contextId=%u front=%@", buf, 0x2Cu);
    }
  }

  v13 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:v10];
  v4 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v13, @"videoContextId", 0}];

  return v4;
}

uint64_t __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_109(uint64_t a1, void *a2, void *a3)
{
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v6 = [a2 objectForKeyedSubscript:@"videoSlotFacing"];
  v7 = [a2 objectForKeyedSubscript:@"conferenceVisualRectangle"];
  if (v6 && v7)
  {
    v18 = NSRectFromString(v7);
    x = v18.origin.x;
    y = v18.origin.y;
    width = v18.size.width;
    height = v18.size.height;
    if (VideoUtil_LayerBoundsAreValid(v18.origin.x, v18.origin.y, v18.size.width, v18.size.height))
    {
      v12 = [a2 objectForKeyedSubscript:@"USERXPCARGUMENTS"];
      v13 = [MEMORY[0x1E6979370] handleFromXPCRepresentation:v12];
      if (v13)
      {
        v14 = v13;
        v15 = [*(a1 + 32) setBoundsForRemoteLayerWithFacing:objc_msgSend(v6 frameRect:"BOOLValue") fenceHandle:{v13, x, y, width, height}];
        [v14 invalidate];
        if (!a3)
        {
          return 0;
        }

        goto LABEL_7;
      }

      __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_109_cold_2();
    }

    else
    {
      __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_109_cold_1();
    }
  }

  else
  {
    __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_109_cold_3();
  }

  v15 = v17;
  if (!a3)
  {
    return 0;
  }

LABEL_7:
  if (v15)
  {
    *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"GKVoiceChatServiceErrorDomain" code:v15 userInfo:0];
  }

  return 0;
}

uint64_t __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_116(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    atomic_fetch_add((*(a1 + 32) + 100), 1u);
  }

  return 0;
}

uint64_t __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_2_118(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    [*(a1 + 32) beginPreviewToPIPAnimation];
  }

  return 0;
}

uint64_t __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_3_120(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    [*(a1 + 32) endPreviewToPIPAnimation];
  }

  return 0;
}

uint64_t __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_4_122(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    [*(a1 + 32) beginPIPToPreviewAnimation];
  }

  return 0;
}

uint64_t __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_5_124(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    [*(a1 + 32) endPIPToPreviewAnimation];
  }

  return 0;
}

uint64_t __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_6(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v4 = *(a1 + 32);
    [objc_msgSend(a2 objectForKeyedSubscript:{@"previewCameraZoomFactor", "floatValue"}];
    [v4 setCameraZoomFactor:v5];
  }

  return 0;
}

uint64_t __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_7(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v4 = *(a1 + 32);
    [objc_msgSend(a2 objectForKeyedSubscript:{@"previewCameraZoomFactor", "floatValue"}];
    v6 = v5;
    [objc_msgSend(a2 objectForKeyedSubscript:{@"previewCameraZoomRate", "floatValue"}];
    [v4 setCameraZoomFactor:v6 withRate:v7];
  }

  return 0;
}

uint64_t __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_8(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v4 = [objc_msgSend(a2 objectForKeyedSubscript:{@"previewCameraCinematicFraming", "intValue"}];
    if ([a2 objectForKeyedSubscript:@"previewCameraCinematicFramingSet"])
    {
      v5 = [objc_msgSend(a2 objectForKeyedSubscript:{@"previewCameraCinematicFramingSet", "intValue"}] != 0;
    }

    else
    {
      v5 = 1;
    }

    [*(a1 + 32) updateCenterStageEnabled:v4 != 0 requestCaptureChange:v5];
  }

  return 0;
}

uint64_t __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_9(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    [*(a1 + 32) setFollowSystemCamera:{objc_msgSend(objc_msgSend(a2, "objectForKeyedSubscript:", @"previewFollowSystemCamera", "BOOLValue")}];
  }

  return 0;
}

- (int)createVideoCaptureWithWidth:(int)width height:(int)height frameRate:(int)rate useBackFacingCamera:(BOOL)camera
{
  v6 = *&rate;
  v7 = *&height;
  v8 = *&width;
  v35 = *MEMORY[0x1E69E9840];
  v26 = -2146893808;
  v25 = VCVideoCaptureServer_OnCaptureVideoFrame;
  v10 = VCDefaults_CopyStringValueForKey(@"cannedReplay");
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = [VCDefaults copyStringValueForKey:@"videoCannedReplay"];
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  if ([v11 length] && !-[VCDefaults useVirtualCapture](+[VCDefaults sharedInstance](VCDefaults, "sharedInstance"), "useVirtualCapture"))
  {
    LOBYTE(v23) = 1;
    self->avCapture = [[CannedVideoCapture alloc] initWithCaptureServer:self protocolFunctions:&v25 width:v8 height:v7 frameRate:v6 videoSourceToken:self->_currentVideoSourceToken.var0.var1 video:v11 isCamera:v23 error:&v26];
  }

LABEL_7:

  if (!self->avCapture)
  {
    if (!self->_currentVideoSourceToken.var0.var1)
    {
      if (self->_followSystemCamera)
      {
        v12 = [objc_msgSend(MEMORY[0x1E69870A0] "systemPreferredCamera")];
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v13 = VRTraceErrorLogLevelToCSTR();
          v14 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v28 = v13;
            v29 = 2080;
            v30 = "[VCVideoCaptureServer createVideoCaptureWithWidth:height:frameRate:useBackFacingCamera:]";
            v31 = 1024;
            v32 = 1156;
            v33 = 2112;
            v34 = v12;
            _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d Creating capture with system preferred camera=%@", buf, 0x26u);
          }
        }
      }

      else
      {
        v12 = @"com.apple.avfoundation.avcapturedevice.built-in_video:1";
      }

      v15 = [+[VCVideoSourceTokenManager sharedManager](VCVideoSourceTokenManager "sharedManager")];
      self->_currentVideoSourceToken.var0.var1 = v15;
      if (!v15 && VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCVideoCaptureServer createVideoCaptureWithWidth:height:frameRate:useBackFacingCamera:];
        }
      }
    }

    if (self->_useAVCaptureSession)
    {
      v16 = [VCAVFoundationCapture alloc];
      cinematicFramingEnabled = self->_cinematicFramingEnabled;
      orientation = [self->_localVideoAttributes orientation];
      LODWORD(v24) = self->_remoteDeviceOrientation;
      BYTE4(v23) = self->_remoteSupportsFullScreenReceive;
      HIDWORD(v22) = orientation;
      LODWORD(v23) = self->_defaultCapturePixelFormat;
      LOBYTE(v22) = cinematicFramingEnabled;
      avCapture = [VCAVFoundationCapture initWithCaptureServer:v16 protocolFunctions:"initWithCaptureServer:protocolFunctions:width:height:frameRate:videoSourceToken:cinematicFramingEnabled:videoOrientation:capturePixelFormat:zoomFactor:remoteSupportsFullScreenReceive:remoteDeviceOrientation:" width:self height:&v25 frameRate:v8 videoSourceToken:v7 cinematicFramingEnabled:v6 videoOrientation:self->_currentVideoSourceToken.var0.var1 capturePixelFormat:self->_cameraZoomFactor zoomFactor:v22 remoteSupportsFullScreenReceive:v23 remoteDeviceOrientation:v24];
      self->avCapture = avCapture;
    }

    else
    {
      avCapture = self->avCapture;
    }

    if (self->_sensitiveContentAnalyzer)
    {
      v20 = objc_opt_respondsToSelector();
      avCapture = self->avCapture;
      if (v20)
      {
        [(VCVideoSource *)avCapture attachSensitiveContentAnalyzer:self->_sensitiveContentAnalyzer];
        avCapture = self->avCapture;
      }
    }

    if (avCapture)
    {
      [(VCVideoCaptureServer *)self handleCaptureSourcePositionDidChange:[(VCVideoSource *)avCapture isFrontCamera]];
      if (objc_opt_respondsToSelector())
      {
        [(VCVideoSource *)self->avCapture setBufferStatsBuffer:&self->_bufferStatsData];
      }

      return 0;
    }
  }

  return v26;
}

- (void)handleAVCaptureError:(int)error domain:(id)domain
{
  v4 = *&error;
  if (error == -2146893807)
  {
    v6 = 32006;
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:domain code:v6 userInfo:0];
  [(VCVideoCaptureServer *)self handleAVCaptureError:v4 error:v7];
}

- (void)handleAVCaptureError:(int)error error:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  domain = [a4 domain];
  if (([domain isEqualToString:@"avCaptureSetCameraWithUIDFail"] & 1) == 0)
  {
    if ([domain isEqualToString:@"avCaptureStartPreviewFail"] & 1) != 0 || (objc_msgSend(domain, "isEqualToString:", @"avCaptureStopFail") & 1) != 0 || (objc_msgSend(domain, "isEqualToString:", @"avCaptureStartCaptureFail"))
    {
      v8 = 1;
      v7 = 1;
      goto LABEL_7;
    }

    if ([a4 code] != 32023)
    {
      [a4 code];
      v8 = 0;
      v7 = 0;
      goto LABEL_7;
    }
  }

  v7 = 0;
  v8 = 1;
LABEL_7:
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v10 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 3 && (v11 = VRTraceErrorLogLevelToCSTR(), v12 = *v10, os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR)))
  {
    code = [a4 code];
    appDelegate = self->appDelegate;
    *buf = 136316418;
    v37 = v11;
    v38 = 2080;
    v39 = "[VCVideoCaptureServer handleAVCaptureError:error:]";
    v40 = 1024;
    v41 = 1272;
    v42 = 1024;
    *v43 = code;
    *&v43[4] = 1024;
    *&v43[6] = v8;
    *v44 = 2048;
    *&v44[2] = appDelegate;
    _os_log_error_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_ERROR, "VCVideoCaptureServer [%s] %s:%d err=%d, informClient=%d, appDelegate=%p", buf, 0x32u);
    if (!v8)
    {
      goto LABEL_32;
    }
  }

  else if (!v8)
  {
    goto LABEL_32;
  }

  v13 = [(VCVideoSourceTokenManager *)self->_tokenManager deviceNameForToken:self->_currentVideoSourceToken.var0.var1];
  v14 = self->appDelegate;
  v15 = VRTraceGetErrorLogLevelForModule();
  if (v14)
  {
    if (v15 >= 8)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *v10;
      v18 = *v10;
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v37 = v16;
          v38 = 2080;
          v39 = "[VCVideoCaptureServer handleAVCaptureError:error:]";
          v40 = 1024;
          v41 = 1276;
          _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d notifying app of acvapture error", buf, 0x1Cu);
        }
      }

      else if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [VCVideoCaptureServer handleAVCaptureError:error:];
      }
    }

    delegateNotificationQueue = self->delegateNotificationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__VCVideoCaptureServer_handleAVCaptureError_error___block_invoke;
    block[3] = &unk_1E85F3E30;
    block[4] = self;
    block[5] = v13;
    block[6] = a4;
    dispatch_async(delegateNotificationQueue, block);
  }

  else
  {
    if (v15 >= 8)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *v10;
      v21 = *v10;
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v37 = v19;
          v38 = 2080;
          v39 = "[VCVideoCaptureServer handleAVCaptureError:error:]";
          v40 = 1024;
          v41 = 1283;
          _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d notifying clients of avcapture error", buf, 0x1Cu);
        }
      }

      else if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [VCVideoCaptureServer handleAVCaptureError:error:];
      }
    }

    v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v24 = v23;
    if (v13)
    {
      [v23 setObject:v13 forKeyedSubscript:@"localCameraUIDString"];
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
      {
        [VCVideoCaptureServer handleAVCaptureError:error:];
      }
    }

    v25 = [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
    [v24 setObject:v25 forKeyedSubscript:@"conferenceError"];

    v26 = self->delegateNotificationQueue;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __51__VCVideoCaptureServer_handleAVCaptureError_error___block_invoke_172;
    v34[3] = &unk_1E85F3778;
    v34[4] = v24;
    dispatch_async(v26, v34);
  }

LABEL_32:
  if ([a4 code] == 32023)
  {
    [(VCVideoCaptureServer *)self pausePreview];
  }

  else if (v7)
  {
    [(VCVideoCaptureServer *)self stopPreview];
    captureClientQueue = self->captureClientQueue;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __51__VCVideoCaptureServer_handleAVCaptureError_error___block_invoke_2;
    v33[3] = &unk_1E85F37F0;
    v33[4] = self;
    v33[5] = domain;
    dispatch_async(captureClientQueue, v33);
  }

  [(VCVideoCaptureServer *)self updatePreviewState];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v28 = VRTraceErrorLogLevelToCSTR();
    v29 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      v32 = [objc_msgSend(a4 "domain")];
      *buf = 136316418;
      v37 = v28;
      v38 = 2080;
      v39 = "[VCVideoCaptureServer handleAVCaptureError:error:]";
      v40 = 1024;
      v41 = 1315;
      v42 = 2080;
      *v43 = v32;
      *&v43[8] = 1024;
      *v44 = v8;
      *&v44[4] = 1024;
      *&v44[6] = v7;
      _os_log_error_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_ERROR, "VCVideoCaptureServer [%s] %s:%d Error encountered while accessing camera in %s, informed client %d, stopped preview %d", buf, 0x32u);
    }
  }
}

uint64_t __51__VCVideoCaptureServer_handleAVCaptureError_error___block_invoke(void *a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = a1[5];
    v4 = *(a1[4] + 360);
    v5 = a1[6];

    return [v4 didReceiveErrorFromCameraUniqueID:v3 error:v5];
  }

  return result;
}

uint64_t __51__VCVideoCaptureServer_handleAVCaptureError_error___block_invoke_172(uint64_t a1)
{
  v2 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];
  v3 = *(a1 + 32);

  return [v2 sendMessageAsync:"previewDidReceiveCameraError" arguments:v3];
}

uint64_t __51__VCVideoCaptureServer_handleAVCaptureError_error___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 104);
  result = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) avConferencePreviewError:*(a1 + 40)];
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (void)handleCaptureEvent:(id)event subType:(id)type
{
  v5[7] = *MEMORY[0x1E69E9840];
  captureServerQueue = self->captureServerQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__VCVideoCaptureServer_handleCaptureEvent_subType___block_invoke;
  v5[3] = &unk_1E85F3E30;
  v5[4] = event;
  v5[5] = type;
  v5[6] = self;
  dispatch_async(captureServerQueue, v5);
}

void __51__VCVideoCaptureServer_handleCaptureEvent_subType___block_invoke(uint64_t a1)
{
  v67 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      *buf = 136316162;
      *&buf[4] = v2;
      v59 = 2080;
      v60 = "[VCVideoCaptureServer handleCaptureEvent:subType:]_block_invoke";
      v61 = 1024;
      v62 = 1324;
      v63 = 2112;
      *v64 = v4;
      *&v64[8] = 2112;
      v65 = v5;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d eventType=%@, subType=%@", buf, 0x30u);
    }
  }

  v6 = (a1 + 48);
  v7 = [*(*(a1 + 48) + 88) deviceNameForToken:*(*(a1 + 48) + 432)];
  v8 = (a1 + 32);
  if ([*(a1 + 32) isEqualToString:@"avCaptureFail"])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v9;
        v59 = 2080;
        v60 = "[VCVideoCaptureServer handleCaptureEvent:subType:]_block_invoke";
        v61 = 1024;
        v62 = 1327;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d received AVCAPTURE_FAILURE_CAPTURE", buf, 0x1Cu);
      }
    }

    *buf = 0;
    +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", buf, 32023, 114, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCVideoCaptureServer.m", 1332], @"Video capture failed.", @"Camera unavailable");
    v11 = *v6;
    v12 = *buf;
    v13 = 32023;
LABEL_14:
    [v11 handleAVCaptureError:v13 error:v12];
    return;
  }

  if ([*v8 isEqualToString:@"avCaptureServerDied"])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v14;
        v59 = 2080;
        v60 = "[VCVideoCaptureServer handleCaptureEvent:subType:]_block_invoke";
        v61 = 1024;
        v62 = 1338;
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d received AVCAPTURE_FAILURE_CAPTURE_SERVER_DIED", buf, 0x1Cu);
      }
    }

    *buf = 0;
    +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", buf, 32032, 114, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCVideoCaptureServer.m", 1343], @"Video capture failed.", @"Capture Server Died");
    v11 = *v6;
    v12 = *buf;
    v13 = 32032;
    goto LABEL_14;
  }

  if ([*v8 isEqualToString:@"avCaptureCameraBecameAvailable"])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v16;
        v59 = 2080;
        v60 = "[VCVideoCaptureServer handleCaptureEvent:subType:]_block_invoke";
        v61 = 1024;
        v62 = 1348;
        _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d received AVCAPTURE_EVENT_CAMERA_AVAILABLE", buf, 0x1Cu);
      }
    }

    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v19 = v18;
    if (v7)
    {
      [v18 setObject:v7 forKeyedSubscript:@"localCameraUIDString"];
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __51__VCVideoCaptureServer_handleCaptureEvent_subType___block_invoke_cold_3();
      }
    }

    v24 = *(*v6 + 34);
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __51__VCVideoCaptureServer_handleCaptureEvent_subType___block_invoke_197;
    v57[3] = &unk_1E85F3778;
    v57[4] = v19;
    dispatch_async(v24, v57);

    v25 = *v6;
    v26 = *(*v6 + 13);
    v27 = 1;
LABEL_32:
    [v25 notifyCameraDidChangeAvailability:v26 available:v27];
    return;
  }

  if (([*v8 isEqualToString:@"vcScreenCaptureFailStart"] & 1) != 0 || objc_msgSend(*v8, "isEqualToString:", @"vcScreenCaptureFailPreempt"))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __51__VCVideoCaptureServer_handleCaptureEvent_subType___block_invoke_cold_2(v20, v8);
      }
    }

    [*v6 stopCapture];
    v21 = *v6;
    v22 = *(*v6 + 30);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__VCVideoCaptureServer_handleCaptureEvent_subType___block_invoke_206;
    block[3] = &unk_1E85F37F0;
    v23 = *v8;
    block[4] = v21;
    block[5] = v23;
    dispatch_async(v22, block);
    [*v6 sendBiomeEventIsStarting:0];
    return;
  }

  if ([*v8 isEqualToString:@"avCaptureCameraDidStart"])
  {
    v28 = *v6;
    v29 = *(*v6 + 34);
    if (*(*v6 + 45))
    {
      v30 = v55;
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v31 = __51__VCVideoCaptureServer_handleCaptureEvent_subType___block_invoke_2;
    }

    else
    {
      v28 = 0;
      v30 = v54;
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v31 = __51__VCVideoCaptureServer_handleCaptureEvent_subType___block_invoke_3;
    }

    v30[2] = v31;
    v30[3] = &unk_1E85F3778;
    v30[4] = v28;
    dispatch_async(v29, v30);
    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      return;
    }

    v37 = VRTraceErrorLogLevelToCSTR();
    v38 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v39 = *(*v6 + 2);
    v40 = *(*v6 + 3);
    v41 = *(*v6 + 4);
    v42 = *(*v6 + 426);
    *buf = 136316674;
    *&buf[4] = v37;
    v59 = 2080;
    v60 = "[VCVideoCaptureServer handleCaptureEvent:subType:]_block_invoke_4";
    v61 = 1024;
    v62 = 1387;
    v63 = 1024;
    *v64 = v39;
    *&v64[4] = 1024;
    *&v64[6] = v40;
    LOWORD(v65) = 1024;
    *(&v65 + 2) = v41;
    HIWORD(v65) = 1024;
    v66 = v42;
    v43 = "VCVideoCaptureServer [%s] %s:%d %dx%d @ %d, _isPreviewRunning=%d";
    v44 = v38;
    v45 = 52;
LABEL_52:
    _os_log_impl(&dword_1DB56E000, v44, OS_LOG_TYPE_DEFAULT, v43, buf, v45);
    return;
  }

  if (![*v8 isEqualToString:@"avCaptureCameraDidStop"])
  {
    if ([*v8 isEqualToString:@"avCaptureCameraInterrupted"])
    {
      v35 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{*(a1 + 40), @"previewInterruptionReason", 0}];
      v36 = v35;
      if (v7)
      {
        [v35 setObject:v7 forKeyedSubscript:@"localCameraUIDString"];
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __51__VCVideoCaptureServer_handleCaptureEvent_subType___block_invoke_cold_1();
        }
      }

      v51 = *(*v6 + 34);
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __51__VCVideoCaptureServer_handleCaptureEvent_subType___block_invoke_231;
      v52[3] = &unk_1E85F3778;
      v52[4] = v36;
      dispatch_async(v51, v52);
      v25 = *v6;
      v26 = *(*v6 + 13);
      v27 = 0;
      goto LABEL_32;
    }

    if ([*v8 isEqualToString:@"vcScreenCaptureScreenAndCameraMixingEnabled"])
    {
      v46 = *v6;
      v47 = 1;
    }

    else
    {
      if (![*v8 isEqualToString:@"vcScreenCaptureScreenAndCameraMixingDisabled"])
      {
        return;
      }

      v46 = *v6;
      v47 = 0;
    }

    [v46 screenAndCameraMixingEnable:v47];
    return;
  }

  v32 = *v6;
  v33 = *(*v6 + 34);
  if (*(*v6 + 45))
  {
    v34 = v53;
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __51__VCVideoCaptureServer_handleCaptureEvent_subType___block_invoke_219;
    v53[3] = &unk_1E85F3778;
    v53[4] = v32;
  }

  else
  {
    v34 = &__block_literal_global_82;
  }

  dispatch_async(v33, v34);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v48 = VRTraceErrorLogLevelToCSTR();
    v49 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v50 = *(*v6 + 426);
      *buf = 136315906;
      *&buf[4] = v48;
      v59 = 2080;
      v60 = "[VCVideoCaptureServer handleCaptureEvent:subType:]_block_invoke_3";
      v61 = 1024;
      v62 = 1400;
      v63 = 1024;
      *v64 = v50;
      v43 = "VCVideoCaptureServer [%s] %s:%d _isPreviewRunning=%d";
      v44 = v49;
      v45 = 34;
      goto LABEL_52;
    }
  }
}

uint64_t __51__VCVideoCaptureServer_handleCaptureEvent_subType___block_invoke_197(uint64_t a1)
{
  v2 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];
  v3 = *(a1 + 32);

  return [v2 sendMessageAsync:"previewCameraDidBecomeAvailable" arguments:v3];
}

uint64_t __51__VCVideoCaptureServer_handleCaptureEvent_subType___block_invoke_206(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 112);
  result = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 avConferenceScreenCaptureError:*(a1 + 40)];
        }

        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t __51__VCVideoCaptureServer_handleCaptureEvent_subType___block_invoke_2(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(*(a1 + 32) + 360);

    return [v3 didStartPreview];
  }

  return result;
}

void __51__VCVideoCaptureServer_handleCaptureEvent_subType___block_invoke_3(uint64_t a1)
{
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v2 = *(a1 + 32);
}

uint64_t __51__VCVideoCaptureServer_handleCaptureEvent_subType___block_invoke_219(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(*(a1 + 32) + 360);

    return [v3 didStopPreview];
  }

  return result;
}

uint64_t __51__VCVideoCaptureServer_handleCaptureEvent_subType___block_invoke_2_222()
{
  v0 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];

  return [v0 sendMessageAsync:"previewDidStop" arguments:0];
}

void __51__VCVideoCaptureServer_handleCaptureEvent_subType___block_invoke_231(uint64_t a1)
{
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v2 = *(a1 + 32);
}

- (void)screenAndCameraMixingEnable:(BOOL)enable
{
  enableCopy = enable;
  v14 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315906;
      v7 = v4;
      v8 = 2080;
      v9 = "[VCVideoCaptureServer screenAndCameraMixingEnable:]";
      v10 = 1024;
      v11 = 1422;
      v12 = 1024;
      v13 = enableCopy;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d enabled=%d", &v6, 0x22u);
    }
  }

  [+[VCSessionManager sharedInstance](VCSessionManager setScreenAndCameraMixingEnabled:"setScreenAndCameraMixingEnabled:", enableCopy];
}

- (void)reconnectClientLayerFront:(BOOL)front
{
  frontCopy = front;
  v37 = *MEMORY[0x1E69E9840];
  v5 = *(MEMORY[0x1E695F058] + 16);
  v21 = *MEMORY[0x1E695F058];
  v22 = v5;
  v24 = 0;
  v23 = 0xAAAAAAAAAAAA0100;
  v18 = 0;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  LOBYTE(v19) = front;
  v20 = &v24;
  v6 = [(VCVideoCaptureServer *)self setLocalVideoDestination:&v18];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCVideoCaptureServer-connect layers");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v26 = v7;
      v27 = 2080;
      v28 = "[VCVideoCaptureServer reconnectClientLayerFront:]";
      v29 = 1024;
      v30 = 1437;
      v31 = 1024;
      v32 = frontCopy;
      v33 = 1024;
      v34 = v6;
      v35 = 1024;
      v36 = v24;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d @:@ VCVideoCaptureServer-connect layers reconnectClientLayerFront=%d(1-front), slot=%u layerHostMode=%d", buf, 0x2Eu);
    }
  }

  v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:v6];
  v10 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:frontCopy];
  v11 = v24;
  v12 = objc_alloc(MEMORY[0x1E695DF20]);
  if (v11)
  {
    v13 = [v12 initWithObjectsAndKeys:{v9, @"videoContextId", v10, @"videoSlotFacing", 0}];
    delegateNotificationQueue = self->delegateNotificationQueue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __50__VCVideoCaptureServer_reconnectClientLayerFront___block_invoke_2;
    v16[3] = &unk_1E85F3778;
    v16[4] = v13;
    v15 = v16;
  }

  else
  {
    v13 = [v12 initWithObjectsAndKeys:{v9, @"videoSlotNumber", v10, @"videoSlotFacing", 0}];
    delegateNotificationQueue = self->delegateNotificationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__VCVideoCaptureServer_reconnectClientLayerFront___block_invoke;
    block[3] = &unk_1E85F3778;
    block[4] = v13;
    v15 = block;
  }

  dispatch_async(delegateNotificationQueue, v15);
}

uint64_t __50__VCVideoCaptureServer_reconnectClientLayerFront___block_invoke(uint64_t a1)
{
  v2 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];
  v3 = *(a1 + 32);

  return [v2 sendMessageAsync:"previewDidLocalVideoSlotChange" arguments:v3];
}

uint64_t __50__VCVideoCaptureServer_reconnectClientLayerFront___block_invoke_2(uint64_t a1)
{
  v2 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];
  v3 = *(a1 + 32);

  return [v2 sendMessageAsync:"previewDidLocalVideoContextChange" arguments:v3];
}

- (void)previewVideoWidth:(int *)width height:(int *)height frameRate:(int *)rate
{
  v32 = *MEMORY[0x1E69E9840];
  if (![+[VCDefaults forceHWI] sharedInstance]
  {
    *v21 = -1;
    v10 = objc_autoreleasePoolPush();
    [+[VCVideoRuleCollectionsCamera sharedInstance](VCVideoRuleCollectionsCamera getBestFrameWidth:"getBestFrameWidth:frameHeight:frameRate:" frameHeight:width frameRate:height, v21];
    objc_autoreleasePoolPop(v10);
    if (rate)
    {
      v11 = *v21;
      if (*v21 <= 5)
      {
        v11 = 5;
      }

      if (v11 >= 60)
      {
        v11 = 60;
      }

      *rate = v11;
    }

    if (width)
    {
      v12 = *width;
      if (*width <= 320)
      {
        v12 = 320;
      }

      if (v12 >= 2048)
      {
        v12 = 2048;
      }

      *width = v12;
    }

    if (height)
    {
      v13 = *height;
      if (*height <= 240)
      {
        v13 = 240;
      }

      if (v13 >= 2048)
      {
        v13 = 2048;
      }

      *height = v13;
    }

    currentFrameRate = +[VCHardwareSettings maxOneToOneFramerateSupported];
    if (rate)
    {
      goto LABEL_27;
    }

LABEL_31:
    currentFrameRate = self->currentFrameRate;
    v14 = 1;
    goto LABEL_32;
  }

  if (width)
  {
    *width = [+[VCDefaults sharedInstance](VCDefaults forceCaptureWidth];
  }

  if (height)
  {
    *height = [+[VCDefaults sharedInstance](VCDefaults forceCaptureHeight];
  }

  if (!rate)
  {
    +[VCHardwareSettings maxOneToOneFramerateSupported];
    goto LABEL_31;
  }

  *rate = [+[VCDefaults sharedInstance](VCDefaults forceFramerate];
  currentFrameRate = +[VCHardwareSettings maxOneToOneFramerateSupported];
LABEL_27:
  v14 = 0;
  if (currentFrameRate >= *rate)
  {
    currentFrameRate = *rate;
  }

  else
  {
    *rate = currentFrameRate;
  }

LABEL_32:
  self->_bestCameraCaptureFrameRate = currentFrameRate;
  if (width)
  {
    if (height)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v17 = *width;
          v18 = *height;
          p_currentFrameRate = &self->currentFrameRate;
          if (!v14)
          {
            p_currentFrameRate = rate;
          }

          v20 = *p_currentFrameRate;
          *v21 = 136316418;
          *&v21[4] = v15;
          v22 = 2080;
          v23 = "[VCVideoCaptureServer previewVideoWidth:height:frameRate:]";
          v24 = 1024;
          v25 = 1500;
          v26 = 1024;
          v27 = v17;
          v28 = 1024;
          v29 = v18;
          v30 = 1024;
          v31 = v20;
          _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d Camera preview settings %dx%d@%dfps", v21, 0x2Eu);
        }
      }
    }
  }
}

- (BOOL)captureVideoWidth:(int *)width height:(int *)height frameRate:(int *)rate
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  captureClientQueue = self->captureClientQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__VCVideoCaptureServer_captureVideoWidth_height_frameRate___block_invoke;
  v8[3] = &unk_1E85F8C78;
  v8[6] = width;
  v8[7] = height;
  v8[8] = rate;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(captureClientQueue, v8);
  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v6;
}

void __59__VCVideoCaptureServer_captureVideoWidth_height_frameRate___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 104) count])
  {
    v13 = 2048;
    *buf = 2048;
    v12 = 60;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v2 = *(*(a1 + 32) + 104);
    v3 = [v2 countByEnumeratingWithState:&v21 objects:v20 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v22;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v22 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(a1 + 32) updateCaptureWidth:buf height:&v13 frameRate:&v12 withVideoRule:{objc_msgSend(*(a1 + 32), "videoRuleForClient:", *(*(&v21 + 1) + 8 * i))}];
        }

        v4 = [v2 countByEnumeratingWithState:&v21 objects:v20 count:16];
      }

      while (v4);
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      *v7 = *buf;
    }

    v8 = *(a1 + 56);
    if (v8)
    {
      *v8 = v13;
    }

    v9 = *(a1 + 64);
    if (v9)
    {
      *v9 = v12;
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v15 = v10;
      v16 = 2080;
      v17 = "[VCVideoCaptureServer captureVideoWidth:height:frameRate:]_block_invoke";
      v18 = 1024;
      v19 = 1563;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d cameraVideoSinks is empty", buf, 0x1Cu);
    }
  }
}

- (int)thermalPressureLevel
{
  v10 = *MEMORY[0x1E69E9840];
  if (dispatch_get_current_queue() == MEMORY[0x1E69E96A0])
  {
    return self->_newThermalLevel;
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__VCVideoCaptureServer_thermalPressureLevel__block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(MEMORY[0x1E69E96A0], block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)populateThermalFrameRateThresholdsForCaptureSourceID:(int64_t)d captureConfig:(id)config
{
  v9[2] = *MEMORY[0x1E69E9840];
  if ([config objectForKeyedSubscript:@"CaptureThermalLevelModerate"])
  {
    if ([config objectForKeyedSubscript:@"CaptureThermalLevelHeavy"])
    {
      v8[0] = &unk_1F579B268;
      v8[1] = &unk_1F579B280;
      v9[0] = [config objectForKeyedSubscript:@"CaptureThermalLevelModerate"];
      v9[1] = [config objectForKeyedSubscript:@"CaptureThermalLevelHeavy"];
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
      -[NSMutableDictionary setObject:forKeyedSubscript:](self->_screenCaptureThermalFrameRateThresholds, "setObject:forKeyedSubscript:", v7, [MEMORY[0x1E696AD98] numberWithInteger:d]);
    }
  }
}

- (void)setCameraZoomFactor:(double)factor
{
  block[6] = *MEMORY[0x1E69E9840];
  captureServerQueue = self->captureServerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__VCVideoCaptureServer_setCameraZoomFactor___block_invoke;
  block[3] = &unk_1E85F40E0;
  *&block[5] = factor;
  block[4] = self;
  dispatch_async(captureServerQueue, block);
}

uint64_t __44__VCVideoCaptureServer_setCameraZoomFactor___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v6 = 136315906;
      v7 = v2;
      v8 = 2080;
      v9 = "[VCVideoCaptureServer setCameraZoomFactor:]_block_invoke";
      v10 = 1024;
      v11 = 1934;
      v12 = 2048;
      v13 = v4;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d Setting Camera Zoom Factor to %f", &v6, 0x26u);
    }
  }

  *(*(a1 + 32) + 440) = *(a1 + 40);
  return [*(*(a1 + 32) + 304) setCameraZoomFactor:?];
}

- (void)setCameraZoomFactor:(double)factor withRate:(double)rate
{
  v5[7] = *MEMORY[0x1E69E9840];
  captureServerQueue = self->captureServerQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__VCVideoCaptureServer_setCameraZoomFactor_withRate___block_invoke;
  v5[3] = &unk_1E85F4090;
  *&v5[5] = factor;
  *&v5[6] = rate;
  v5[4] = self;
  dispatch_async(captureServerQueue, v5);
}

uint64_t __53__VCVideoCaptureServer_setCameraZoomFactor_withRate___block_invoke(double *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 5);
      v5 = *(a1 + 6);
      v7 = 136316162;
      v8 = v2;
      v9 = 2080;
      v10 = "[VCVideoCaptureServer setCameraZoomFactor:withRate:]_block_invoke";
      v11 = 1024;
      v12 = 1943;
      v13 = 2048;
      v14 = v4;
      v15 = 2048;
      v16 = v5;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d Setting Camera Zoom Factor to %f with Rate: %f", &v7, 0x30u);
    }
  }

  return [*(*(a1 + 4) + 304) setCameraZoomFactor:a1[5] withRate:a1[6]];
}

- (void)updateCenterStageEnabled:(BOOL)enabled requestCaptureChange:(BOOL)change
{
  v8 = *MEMORY[0x1E69E9840];
  captureServerQueue = self->captureServerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__VCVideoCaptureServer_updateCenterStageEnabled_requestCaptureChange___block_invoke;
  block[3] = &unk_1E85F41F8;
  block[4] = self;
  enabledCopy = enabled;
  changeCopy = change;
  dispatch_async(captureServerQueue, block);
}

uint64_t __70__VCVideoCaptureServer_updateCenterStageEnabled_requestCaptureChange___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 437) = *(a1 + 40);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(*(a1 + 32) + 304);
    v4 = *(a1 + 40);
    v5 = *(a1 + 41);

    return [v3 updateCenterStageEnabled:v4 requestCaptureChange:v5];
  }

  return result;
}

- (void)setFollowSystemCamera:(BOOL)camera
{
  v6 = *MEMORY[0x1E69E9840];
  captureServerQueue = self->captureServerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__VCVideoCaptureServer_setFollowSystemCamera___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  cameraCopy = camera;
  dispatch_async(captureServerQueue, block);
}

void __46__VCVideoCaptureServer_setFollowSystemCamera___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(v2 + 80) == v3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 40);
        *buf = 136315906;
        v16 = v4;
        v17 = 2080;
        v18 = "[VCVideoCaptureServer setFollowSystemCamera:]_block_invoke";
        v19 = 1024;
        v20 = 1971;
        v21 = 1024;
        v22 = v6;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d ignoring, _followSystemCamera=%d already", buf, 0x22u);
      }
    }
  }

  else
  {
    *(v2 + 80) = v3;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 40);
        *buf = 136315906;
        v16 = v7;
        v17 = 2080;
        v18 = "[VCVideoCaptureServer setFollowSystemCamera:]_block_invoke";
        v19 = 1024;
        v20 = 1962;
        v21 = 1024;
        v22 = v9;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d updating _followSystemCamera=%d", buf, 0x22u);
      }
    }

    v10 = *(a1 + 32);
    if (v10[80] == 1)
    {
      [v10 setSystemPreferredAsLocalCamera];
      [*(a1 + 32) addObserveSystemPreferredCamera];
    }

    else
    {
      [v10 removeObserveSystemPreferredCamera];
    }
  }

  v11 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:*(*(a1 + 32) + 80)];
  v12 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v11, @"previewFollowSystemCamera", 0}];
  v13 = *(*(a1 + 32) + 272);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__VCVideoCaptureServer_setFollowSystemCamera___block_invoke_249;
  block[3] = &unk_1E85F3778;
  block[4] = v12;
  dispatch_async(v13, block);
}

uint64_t __46__VCVideoCaptureServer_setFollowSystemCamera___block_invoke_249(uint64_t a1)
{
  v2 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];
  v3 = *(a1 + 32);

  return [v2 sendMessageAsync:"previewFollowSystemCameraDidChange" arguments:v3];
}

uint64_t __VCVideoCaptureServer_ApplyPressureLevelChanges_block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 404) = *(*(a1 + 32) + 408);
  [+[VCEffectsManager sharedManager](VCEffectsManager "sharedManager")];
  v2 = *(a1 + 32);
  v3 = *(v2 + 404) < 0x15u;
  if (*(v2 + 424) != v3)
  {
    *(v2 + 424) = v3;
    [*(a1 + 32) updateViewPointCorrectionStatus];
    v2 = *(a1 + 32);
  }

  [v2 notifyThermalChangeForClients:*(v2 + 104)];
  v4 = *(a1 + 32);
  v5 = v4[14];

  return [v4 notifyThermalChangeForClients:v5];
}

- (int)getScreenFrameRateForThermalLevel:(int)level
{
  v37 = *MEMORY[0x1E69E9840];
  if (!self->_isScreenCaptureForScreenShare)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        return 60;
      }

      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return 60;
      }

      v24 = 136315906;
      v25 = v14;
      v26 = 2080;
      v27 = "[VCVideoCaptureServer getScreenFrameRateForThermalLevel:]";
      v28 = 1024;
      v29 = 2056;
      v30 = 1024;
      *v31 = level;
      v16 = "VCVideoCaptureServer [%s] %s:%d Ignoring thermalLevel=%d for this capture source";
      v17 = v15;
      v18 = 34;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [(VCVideoCaptureServer *)self performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        return 60;
      }

      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return 60;
      }

      v24 = 136316418;
      v25 = v21;
      v26 = 2080;
      v27 = "[VCVideoCaptureServer getScreenFrameRateForThermalLevel:]";
      v28 = 1024;
      v29 = 2056;
      v30 = 2112;
      *v31 = v8;
      *&v31[8] = 2048;
      selfCopy2 = self;
      v33 = 1024;
      levelCopy = level;
      v16 = "VCVideoCaptureServer [%s] %s:%d %@(%p) Ignoring thermalLevel=%d for this capture source";
      v17 = v22;
      v18 = 54;
    }

    _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, v16, &v24, v18);
    return 60;
  }

  if (level == 20)
  {
    v5 = 15;
  }

  else
  {
    v5 = 0;
  }

  if (((1 << level) & 0x401) != 0)
  {
    v5 = 60;
  }

  if (((1 << level) & 0x4010040000000) != 0)
  {
    v5 = 5;
  }

  if (level <= 0x32)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v24 = 136316162;
        v25 = v9;
        v26 = 2080;
        v27 = "[VCVideoCaptureServer getScreenFrameRateForThermalLevel:]";
        v28 = 1024;
        v29 = 2075;
        v30 = 1024;
        *v31 = v6;
        *&v31[4] = 1024;
        *&v31[6] = level;
        v11 = "VCVideoCaptureServer [%s] %s:%d Screen framerate=%d for thermalLevel=%d";
        v12 = v10;
        v13 = 40;
LABEL_28:
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, &v24, v13);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCVideoCaptureServer *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v24 = 136316674;
        v25 = v19;
        v26 = 2080;
        v27 = "[VCVideoCaptureServer getScreenFrameRateForThermalLevel:]";
        v28 = 1024;
        v29 = 2075;
        v30 = 2112;
        *v31 = v7;
        *&v31[8] = 2048;
        selfCopy2 = self;
        v33 = 1024;
        levelCopy = v6;
        v35 = 1024;
        levelCopy2 = level;
        v11 = "VCVideoCaptureServer [%s] %s:%d %@(%p) Screen framerate=%d for thermalLevel=%d";
        v12 = v20;
        v13 = 60;
        goto LABEL_28;
      }
    }
  }

  return v6;
}

- (int)screenFrameRateForThermalLevel:(int)level configuredFrameRate:(int)rate captureSourceID:(id)d
{
  rateCopy = rate;
  v36 = *MEMORY[0x1E69E9840];
  if (level <= 39)
  {
    if (level == 20)
    {
      v13 = [(NSMutableDictionary *)self->_screenCaptureThermalFrameRateThresholds objectForKeyedSubscript:d];
      rateCopy3 = rateCopy;
      if (!v13)
      {
        goto LABEL_12;
      }

      p_screenCaptureThermalFrameRateThresholds = &self->_screenCaptureThermalFrameRateThresholds;
      v12 = &unk_1F579B268;
      goto LABEL_11;
    }

    rateCopy3 = rate;
    if (level != 30)
    {
      goto LABEL_12;
    }

LABEL_7:
    v10 = [(NSMutableDictionary *)self->_screenCaptureThermalFrameRateThresholds objectForKeyedSubscript:d];
    rateCopy3 = rateCopy;
    if (!v10)
    {
      goto LABEL_12;
    }

    p_screenCaptureThermalFrameRateThresholds = &self->_screenCaptureThermalFrameRateThresholds;
    v12 = &unk_1F579B280;
LABEL_11:
    rateCopy3 = [objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](*p_screenCaptureThermalFrameRateThresholds objectForKeyedSubscript:{d), "objectForKeyedSubscript:", v12), "intValue"}];
    goto LABEL_12;
  }

  if (level == 40)
  {
    goto LABEL_7;
  }

  rateCopy3 = rate;
  if (level == 50)
  {
    goto LABEL_7;
  }

LABEL_12:
  if (rateCopy3 < rateCopy)
  {
    rateCopy = rateCopy3;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136316162;
        v24 = v15;
        v25 = 2080;
        v26 = "[VCVideoCaptureServer screenFrameRateForThermalLevel:configuredFrameRate:captureSourceID:]";
        v27 = 1024;
        v28 = 2100;
        v29 = 1024;
        *v30 = rateCopy;
        *&v30[4] = 1024;
        *&v30[6] = level;
        v17 = "VCVideoCaptureServer [%s] %s:%d Screen framerate=%d for thermalLevel=%d";
        v18 = v16;
        v19 = 40;
LABEL_24:
        _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, v17, &v23, v19);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v14 = [(VCVideoCaptureServer *)self performSelector:sel_logPrefix];
    }

    else
    {
      v14 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136316674;
        v24 = v20;
        v25 = 2080;
        v26 = "[VCVideoCaptureServer screenFrameRateForThermalLevel:configuredFrameRate:captureSourceID:]";
        v27 = 1024;
        v28 = 2100;
        v29 = 2112;
        *v30 = v14;
        *&v30[8] = 2048;
        selfCopy = self;
        v32 = 1024;
        v33 = rateCopy;
        v34 = 1024;
        levelCopy = level;
        v17 = "VCVideoCaptureServer [%s] %s:%d %@(%p) Screen framerate=%d for thermalLevel=%d";
        v18 = v21;
        v19 = 60;
        goto LABEL_24;
      }
    }
  }

  return rateCopy;
}

- (int)getFrameRateForThermalLevel:(int)level
{
  v32 = *MEMORY[0x1E69E9840];
  if (level > 29)
  {
    if (level == 30 || level == 40 || level == 50)
    {
      maxFrameRate = 5;
    }

    else
    {
      maxFrameRate = 0;
    }
  }

  else if (level)
  {
    if (level == 20)
    {
      v5 = 15;
    }

    else
    {
      v5 = 0;
    }

    if (level == 10)
    {
      maxFrameRate = 30;
    }

    else
    {
      maxFrameRate = v5;
    }
  }

  else
  {
    maxFrameRate = self->_maxFrameRate;
  }

  v7 = self->_maxFrameRate;
  if (v7 >= maxFrameRate)
  {
    v8 = maxFrameRate;
  }

  else
  {
    v8 = v7;
  }

  v9 = [+[VCDefaults sharedInstance](VCDefaults forceThermalLevelFramerate:"forceThermalLevelFramerate:", v8];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136316162;
        v20 = v11;
        v21 = 2080;
        v22 = "[VCVideoCaptureServer getFrameRateForThermalLevel:]";
        v23 = 1024;
        v24 = 2130;
        v25 = 1024;
        *v26 = v9;
        *&v26[4] = 1024;
        *&v26[6] = level;
        v13 = "VCVideoCaptureServer [%s] %s:%d Framerate is %d for thermalLevel:%d";
        v14 = v12;
        v15 = 40;
LABEL_28:
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, &v19, v15);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v10 = [(VCVideoCaptureServer *)self performSelector:sel_logPrefix];
    }

    else
    {
      v10 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136316674;
        v20 = v16;
        v21 = 2080;
        v22 = "[VCVideoCaptureServer getFrameRateForThermalLevel:]";
        v23 = 1024;
        v24 = 2130;
        v25 = 2112;
        *v26 = v10;
        *&v26[8] = 2048;
        selfCopy = self;
        v28 = 1024;
        v29 = v9;
        v30 = 1024;
        levelCopy = level;
        v13 = "VCVideoCaptureServer [%s] %s:%d %@(%p) Framerate is %d for thermalLevel:%d";
        v14 = v17;
        v15 = 60;
        goto LABEL_28;
      }
    }
  }

  return v9;
}

- (int)getFrameRateForPeakPowerLevel:(int)level
{
  v33 = *MEMORY[0x1E69E9840];
  if (level <= 19)
  {
    if (level)
    {
      if (level == 10)
      {
        maxFrameRate = 30;
      }

      else
      {
        maxFrameRate = 0;
      }
    }

    else
    {
      maxFrameRate = self->_maxFrameRate;
    }
  }

  else
  {
    if (level == 40)
    {
      v5 = 5;
    }

    else
    {
      v5 = 0;
    }

    if (level == 30)
    {
      v6 = 5;
    }

    else
    {
      v6 = v5;
    }

    if (level == 20)
    {
      maxFrameRate = 15;
    }

    else
    {
      maxFrameRate = v6;
    }
  }

  v8 = self->_maxFrameRate;
  if (v8 >= maxFrameRate)
  {
    v9 = maxFrameRate;
  }

  else
  {
    v9 = v8;
  }

  v10 = [+[VCDefaults sharedInstance](VCDefaults forceThermalLevelFramerate:"forceThermalLevelFramerate:", v9];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v20 = 136316162;
        v21 = v12;
        v22 = 2080;
        v23 = "[VCVideoCaptureServer getFrameRateForPeakPowerLevel:]";
        v24 = 1024;
        v25 = 2161;
        v26 = 1024;
        *v27 = v10;
        *&v27[4] = 1024;
        *&v27[6] = level;
        v14 = "VCVideoCaptureServer [%s] %s:%d Framerate is %d for peakPowerLevel:%d";
        v15 = v13;
        v16 = 40;
LABEL_29:
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, &v20, v16);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = [(VCVideoCaptureServer *)self performSelector:sel_logPrefix];
    }

    else
    {
      v11 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v20 = 136316674;
        v21 = v17;
        v22 = 2080;
        v23 = "[VCVideoCaptureServer getFrameRateForPeakPowerLevel:]";
        v24 = 1024;
        v25 = 2161;
        v26 = 2112;
        *v27 = v11;
        *&v27[8] = 2048;
        selfCopy = self;
        v29 = 1024;
        v30 = v10;
        v31 = 1024;
        levelCopy = level;
        v14 = "VCVideoCaptureServer [%s] %s:%d %@(%p) Framerate is %d for peakPowerLevel:%d";
        v15 = v18;
        v16 = 60;
        goto LABEL_29;
      }
    }
  }

  return v10;
}

- (int)getFrameRateForThermalLevel:(int)level peakPowerPressure:(int)pressure
{
  v4 = *&level;
  v6 = [(VCVideoCaptureServer *)self getFrameRateForPeakPowerLevel:*&pressure];
  result = [(VCVideoCaptureServer *)self getFrameRateForThermalLevel:v4];
  if (v6 < result)
  {
    return v6;
  }

  return result;
}

- (void)notifyThermalChangeForClients:(id)clients
{
  block[6] = *MEMORY[0x1E69E9840];
  captureClientQueue = self->captureClientQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__VCVideoCaptureServer_notifyThermalChangeForClients___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = clients;
  dispatch_async(captureClientQueue, block);
}

uint64_t __54__VCVideoCaptureServer_notifyThermalChangeForClients___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 40);
  result = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) thermalLevelDidChange:*(*(a1 + 32) + 408)];
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (void)notifyCameraDidChangeAvailability:(id)availability available:(BOOL)available
{
  v7 = *MEMORY[0x1E69E9840];
  captureClientQueue = self->captureClientQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__VCVideoCaptureServer_notifyCameraDidChangeAvailability_available___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = availability;
  availableCopy = available;
  dispatch_async(captureClientQueue, block);
}

uint64_t __68__VCVideoCaptureServer_notifyCameraDidChangeAvailability_available___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  result = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) cameraAvailabilityDidChange:*(a1 + 40)];
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (void)notifyFrameRateBeingThrottledForClients:(id)clients newFrameRate:(int)rate thermalLevelDidChange:(BOOL)change powerLevelDidChange:(BOOL)didChange
{
  v11 = *MEMORY[0x1E69E9840];
  captureClientQueue = self->captureClientQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __119__VCVideoCaptureServer_notifyFrameRateBeingThrottledForClients_newFrameRate_thermalLevelDidChange_powerLevelDidChange___block_invoke;
  block[3] = &unk_1E85F7440;
  block[4] = clients;
  rateCopy = rate;
  changeCopy = change;
  didChangeCopy = didChange;
  dispatch_async(captureClientQueue, block);
}

uint64_t __119__VCVideoCaptureServer_notifyFrameRateBeingThrottledForClients_newFrameRate_thermalLevelDidChange_powerLevelDidChange___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  result = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 frameRateIsBeingThrottled:*(a1 + 40) thermalLevelDidChange:*(a1 + 44) powerLevelDidChange:*(a1 + 45)];
        }

        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (void)onCaptureScreenFrame:(opaqueCMSampleBuffer *)frame frameTime:(id *)time orientation:(int)orientation
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = FigSampleBufferRetain();
  captureClientQueue = self->captureClientQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__VCVideoCaptureServer_onCaptureScreenFrame_frameTime_orientation___block_invoke;
  block[3] = &unk_1E85F8CA0;
  orientationCopy = orientation;
  block[4] = self;
  block[5] = v8;
  v12 = *time;
  dispatch_async(captureClientQueue, block);
  if (!self->_forceDisableThermal)
  {
    VCVideoCaptureServer_ApplyPressureLevelChanges(self);
  }
}

uint64_t __67__VCVideoCaptureServer_onCaptureScreenFrame_frameTime_orientation___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = *(*(a1 + 32) + 112);
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = v2 & 3 | 0x90;
    v7 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v12[0] = 0;
        v12[1] = 0;
        v14 = 0;
        v15 = 0;
        v10 = *(a1 + 40);
        v16 = *(a1 + 52);
        v17 = *(a1 + 68);
        v13 = v6;
        [v9 onVideoFrame:v10 frameTime:&v16 attribute:v12];
      }

      v5 = [v3 countByEnumeratingWithState:&v19 objects:v18 count:16];
    }

    while (v5);
  }

  return FigSampleBufferRelease();
}

- (void)changeCameraToPendingSettingsWithReset:(BOOL)reset
{
  v6 = *MEMORY[0x1E69E9840];
  captureServerQueue = self->captureServerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__VCVideoCaptureServer_changeCameraToPendingSettingsWithReset___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  resetCopy = reset;
  dispatch_async(captureServerQueue, block);
}

uint64_t __63__VCVideoCaptureServer_changeCameraToPendingSettingsWithReset___block_invoke(uint64_t result)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(*(result + 32) + 68) * *(*(result + 32) + 64))
  {
    v1 = result;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v2 = VRTraceErrorLogLevelToCSTR();
      v3 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(v1 + 32);
        v5 = *(v4 + 64);
        LODWORD(v4) = *(v4 + 68);
        v6 = *(v1 + 40);
        v7 = 136316418;
        v8 = v2;
        v9 = 2080;
        v10 = "[VCVideoCaptureServer changeCameraToPendingSettingsWithReset:]_block_invoke";
        v11 = 1024;
        v12 = 2310;
        v13 = 1024;
        v14 = v5;
        v15 = 1024;
        v16 = v4;
        v17 = 1024;
        v18 = v6;
        _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d picking up pending camera change %dx%d reset %d", &v7, 0x2Eu);
      }
    }

    result = [*(v1 + 32) setCaptureWidth:*(*(v1 + 32) + 64) height:*(*(v1 + 32) + 68) rate:*(*(v1 + 32) + 72)];
    *(*(v1 + 32) + 64) = 0;
    *(*(v1 + 32) + 68) = 0;
    *(*(v1 + 32) + 72) = 0;
    if (*(v1 + 40) == 1)
    {
      return [*(v1 + 32) previewVideoWidth:*(v1 + 32) + 64 height:*(v1 + 32) + 68 frameRate:*(v1 + 32) + 72];
    }
  }

  return result;
}

- (BOOL)canStopPreview
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  cameraPreviewClientMonitorQueue = self->_cameraPreviewClientMonitorQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__VCVideoCaptureServer_canStopPreview__block_invoke;
  v7[3] = &unk_1E85F3868;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(cameraPreviewClientMonitorQueue, v7);
  if (*(v9 + 24) == 1 && VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v13 = v3;
      v14 = 2080;
      v15 = "[VCVideoCaptureServer canStopPreview]";
      v16 = 1024;
      v17 = 2357;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d All client stopped; can stop preview", buf, 0x1Cu);
    }
  }

  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __38__VCVideoCaptureServer_canStopPreview__block_invoke(uint64_t a1)
{
  v3[5] = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 120);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__VCVideoCaptureServer_canStopPreview__block_invoke_2;
  v3[3] = &unk_1E85F8CC8;
  v3[4] = *(a1 + 40);
  return [v1 enumerateKeysAndObjectsUsingBlock:v3];
}

void __38__VCVideoCaptureServer_canStopPreview__block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if ([a3 isStarted])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315906;
        v10 = v7;
        v11 = 2080;
        v12 = "[VCVideoCaptureServer canStopPreview]_block_invoke_2";
        v13 = 1024;
        v14 = 2350;
        v15 = 1024;
        v16 = [a2 intValue];
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d Preview client pid=%u is not stopped", &v9, 0x22u);
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (void)addObserveSystemPreferredCamera
{
  v12 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E69870A0] addObserver:self forKeyPath:@"systemPreferredCamera" options:1 context:0];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315906;
      v5 = v2;
      v6 = 2080;
      v7 = "[VCVideoCaptureServer addObserveSystemPreferredCamera]";
      v8 = 1024;
      v9 = 2365;
      v10 = 2112;
      v11 = @"systemPreferredCamera";
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d KeyPath=%@", &v4, 0x26u);
    }
  }
}

- (void)removeObserveSystemPreferredCamera
{
  v12 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E69870A0] removeObserver:self forKeyPath:@"systemPreferredCamera" context:0];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315906;
      v5 = v2;
      v6 = 2080;
      v7 = "[VCVideoCaptureServer removeObserveSystemPreferredCamera]";
      v8 = 1024;
      v9 = 2372;
      v10 = 2112;
      v11 = @"systemPreferredCamera";
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d KeyPath=%@", &v4, 0x26u);
    }
  }
}

- (BOOL)registerCaptureConfig:(id)config forSource:(int)source
{
  if ((source - 7) < 3 || source == 5)
  {

    return [(VCVideoCaptureServer *)self registerSystemAudioConfig:config forSource:?];
  }

  else
  {
    if (source == 1)
    {
      [(VCVideoCaptureServer *)self registerScreenVideoConfig:config forSource:v4, v5];
    }

    return 1;
  }
}

- (BOOL)deregisterCaptureConfig:(id)config forSource:(int)source
{
  if ((source - 7) < 3 || source == 5)
  {

    return [(VCVideoCaptureServer *)self deregisterSystemAudioConfig:config forSource:?];
  }

  else
  {
    if (source == 1)
    {
      [(VCVideoCaptureServer *)self deregisterScreenVideoConfig:config forSource:v4, v5];
    }

    return 1;
  }
}

- (void)registerCaptureClientForScreenShare:(id)share
{
  block[6] = *MEMORY[0x1E69E9840];
  captureClientQueue = self->captureClientQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__VCVideoCaptureServer_registerCaptureClientForScreenShare___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = share;
  block[5] = self;
  dispatch_async(captureClientQueue, block);
}

void __60__VCVideoCaptureServer_registerCaptureClientForScreenShare___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [*(*(a1 + 40) + 584) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", objc_msgSend(v2, "hash"))}];
    v4 = *(a1 + 40);
    if (v3)
    {
      v5 = [objc_msgSend(*(v4 + 584) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", objc_msgSend(*(a1 + 32), "hash"))), "integerValue"}];
      [objc_msgSend(*(*(a1 + 40) + 568) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", v5)), "addSink:", *(a1 + 32)}];
      v6 = *(a1 + 32);
      v7 = [*(*(a1 + 40) + 576) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", v5)}];

      [v7 setObject:v6 forKeyedSubscript:@"Client"];
    }

    else if (([*(v4 + 112) containsObject:*(a1 + 32)] & 1) == 0)
    {
      [*(*(a1 + 40) + 112) addObject:*(a1 + 32)];
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a1 + 32);
          v11 = 136315906;
          v12 = v8;
          v13 = 2080;
          v14 = "[VCVideoCaptureServer registerCaptureClientForScreenShare:]_block_invoke";
          v15 = 1024;
          v16 = 2426;
          v17 = 2112;
          v18 = v10;
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d Client Registered: %@", &v11, 0x26u);
        }
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __60__VCVideoCaptureServer_registerCaptureClientForScreenShare___block_invoke_cold_1();
    }
  }
}

- (void)deregisterCaptureClientForScreenShare:(id)share
{
  block[6] = *MEMORY[0x1E69E9840];
  if (share)
  {
    captureClientQueue = self->captureClientQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__VCVideoCaptureServer_deregisterCaptureClientForScreenShare___block_invoke;
    block[3] = &unk_1E85F37F0;
    block[4] = self;
    block[5] = share;
    dispatch_async(captureClientQueue, block);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCVideoCaptureServer deregisterCaptureClientForScreenShare:];
    }
  }
}

uint64_t __62__VCVideoCaptureServer_deregisterCaptureClientForScreenShare___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 584) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", objc_msgSend(*(a1 + 40), "hash"))}];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [objc_msgSend(*(v3 + 584) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", objc_msgSend(*(a1 + 40), "hash"))), "integerValue"}];
    [objc_msgSend(*(*(a1 + 32) + 568) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", v4)), "removeSink:", *(a1 + 40)}];
    v5 = [*(*(a1 + 32) + 576) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", v4)}];

    return [v5 setObject:0 forKeyedSubscript:@"Client"];
  }

  else
  {
    result = [*(v3 + 112) containsObject:*(a1 + 40)];
    if (result)
    {
      v7 = *(a1 + 40);
      v8 = *(*(a1 + 32) + 112);

      return [v8 removeObject:v7];
    }
  }

  return result;
}

- (void)registerScreenVideoConfig:(id)config forSource:(int)source
{
  block[6] = *MEMORY[0x1E69E9840];
  captureClientQueue = self->captureClientQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__VCVideoCaptureServer_registerScreenVideoConfig_forSource___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = config;
  block[5] = self;
  dispatch_async(captureClientQueue, block);
}

uint64_t __60__VCVideoCaptureServer_registerScreenVideoConfig_forSource___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    __str = 0;
    v2 = *(a1 + 32);
    v3 = v2 ? [objc_msgSend(v2 "description")] : "<nil>";
    asprintf(&__str, "Register screen config=%s", v3);
    if (__str)
    {
      __lasts = 0;
      v4 = strtok_r(__str, "\n", &__lasts);
      v5 = MEMORY[0x1E6986650];
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v6 = VRTraceErrorLogLevelToCSTR();
          v7 = *v5;
          if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v19 = v6;
            v20 = 2080;
            v21 = "[VCVideoCaptureServer registerScreenVideoConfig:forSource:]_block_invoke";
            v22 = 1024;
            v23 = 2452;
            v24 = 2080;
            v25 = "";
            v26 = 2080;
            v27 = v4;
            _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v4 = strtok_r(0, "\n", &__lasts);
      }

      while (v4);
      free(__str);
    }
  }

  v8 = [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"CaptureSourceID", "integerValue"}];
  v9 = *(a1 + 40);
  if (v8)
  {
    v12 = v8;
    [*(v9 + 576) setObject:0 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", v8)}];
    v13 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:*(a1 + 32)];
    [*(*(a1 + 40) + 576) setObject:v13 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", v12)}];
    v14 = [*(a1 + 32) objectForKeyedSubscript:@"Client"];
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
    [*(*(a1 + 40) + 584) setObject:v15 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", objc_msgSend(v14, "hash"))}];
    return [*(a1 + 40) populateThermalFrameRateThresholdsForCaptureSourceID:v12 captureConfig:*(a1 + 32)];
  }

  else
  {

    *(*(a1 + 40) + 320) = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:*(a1 + 32)];
    v10 = [objc_msgSend(*(*(a1 + 40) + 320) objectForKeyedSubscript:{@"FrameRate", "intValue"}];
    *(*(a1 + 40) + 24) = v10;
    *(*(a1 + 40) + 20) = v10;
    result = [objc_msgSend(*(*(a1 + 40) + 320) objectForKeyedSubscript:{@"BiomeEventType", "intValue"}];
    *(*(a1 + 40) + 328) = result;
  }

  return result;
}

- (void)deregisterScreenVideoConfig:(id)config forSource:(int)source
{
  v20 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    __str[0] = 0;
    v5 = config ? [objc_msgSend(config "description")] : "<nil>";
    asprintf(__str, "Deregister screen config=%s", v5);
    if (__str[0])
    {
      __lasts = 0;
      v6 = strtok_r(__str[0], "\n", &__lasts);
      v7 = MEMORY[0x1E6986650];
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v8 = VRTraceErrorLogLevelToCSTR();
          v9 = *v7;
          if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            *&buf[4] = v8;
            *&buf[12] = 2080;
            *&buf[14] = "[VCVideoCaptureServer deregisterScreenVideoConfig:forSource:]";
            *&buf[22] = 1024;
            *v17 = 2473;
            *&v17[4] = 2080;
            *&v17[6] = "";
            v18 = 2080;
            v19 = v6;
            _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v6 = strtok_r(0, "\n", &__lasts);
      }

      while (v6);
      free(__str[0]);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  *v17 = [objc_msgSend(config objectForKeyedSubscript:{@"CaptureSourceID", "integerValue"}];
  v10 = [config objectForKeyedSubscript:@"Client"];
  __str[0] = 0;
  __str[1] = __str;
  __str[2] = 0x2020000000;
  __str[3] = [v10 hash];
  captureClientQueue = self->captureClientQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__VCVideoCaptureServer_deregisterScreenVideoConfig_forSource___block_invoke;
  block[3] = &unk_1E85F71D0;
  block[4] = self;
  block[5] = buf;
  block[6] = __str;
  dispatch_async(captureClientQueue, block);
  _Block_object_dispose(__str, 8);
  _Block_object_dispose(buf, 8);
}

void __62__VCVideoCaptureServer_deregisterScreenVideoConfig_forSource___block_invoke(void *a1)
{
  v2 = a1[4];
  if (*(*(a1[5] + 8) + 24))
  {
    [*(v2 + 576) setObject:0 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:")}];
    v3 = *(a1[4] + 584);
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(*(a1[6] + 8) + 24)];

    [v3 setObject:0 forKeyedSubscript:v4];
  }

  else
  {

    *(a1[4] + 320) = 0;
    *(a1[4] + 24) = 0;
    *(a1[4] + 20) = 0;
  }
}

- (BOOL)registerSystemAudioConfig:(id)config forSource:(int)source
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  captureClientQueue = self->captureClientQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__VCVideoCaptureServer_registerSystemAudioConfig_forSource___block_invoke;
  block[3] = &unk_1E85F6180;
  sourceCopy = source;
  block[4] = config;
  block[5] = self;
  block[6] = &v9;
  dispatch_sync(captureClientQueue, block);
  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v5;
}

void __60__VCVideoCaptureServer_registerSystemAudioConfig_forSource___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"SystemAudioCaptureClient"];
  if (v2)
  {
    v3 = v2;
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v2, "hash")}];
    v15 = 0;
    v14 = 0u;
    memset(v13, 0, sizeof(v13));
    [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"SystemAudioCaptureConfig", "getValue:", v13}];
    v5 = v14;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 56);
        *buf = 136316674;
        v17 = v6;
        v18 = 2080;
        v19 = "[VCVideoCaptureServer registerSystemAudioConfig:forSource:]_block_invoke";
        v20 = 1024;
        v21 = 2500;
        v22 = 2048;
        v23 = v3;
        v24 = 2112;
        v25 = v4;
        v26 = 1024;
        v27 = v8;
        v28 = 1024;
        v29 = v5 == 0;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d client=%p clientKey=%@ source=%d clientUsesScreenCaptureKit=%d", buf, 0x3Cu);
      }
    }

    [*(*(a1 + 40) + 608) setObject:objc_msgSend(MEMORY[0x1E695DF90] forKeyedSubscript:{"dictionaryWithDictionary:", *(a1 + 32)), v4}];
    v9 = *(a1 + 40);
    if (*(v9 + 624) != 1 || v5)
    {
      v11 = [*(v9 + 616) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(a1 + 56))}];
      if (v11)
      {
        [v11 addObject:v4];
      }

      else
      {
        v12 = [MEMORY[0x1E695DFA8] setWithObjects:{v4, 0}];
        [*(*(a1 + 40) + 616) setObject:v12 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(a1 + 56))}];
      }

      [*(a1 + 40) dispatchedUpdateSystemAudioConfigTapTypeForClientKey:v4 forSource:*(a1 + 56)];
      v10 = [*(a1 + 40) dispatchedStartSystemAudioForClientKey:v4 forSource:*(a1 + 56)];
    }

    else
    {
      v10 = [v9 dispatchedAddScreenCaptureAudioOutputForConfig:*(a1 + 32)];
    }

    *(*(*(a1 + 48) + 8) + 24) = v10;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __60__VCVideoCaptureServer_registerSystemAudioConfig_forSource___block_invoke_cold_1();
    }
  }
}

- (BOOL)deregisterSystemAudioConfig:(id)config forSource:(int)source
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  captureClientQueue = self->captureClientQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__VCVideoCaptureServer_deregisterSystemAudioConfig_forSource___block_invoke;
  block[3] = &unk_1E85F6180;
  sourceCopy = source;
  block[4] = config;
  block[5] = self;
  block[6] = &v9;
  dispatch_sync(captureClientQueue, block);
  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v5;
}

void __62__VCVideoCaptureServer_deregisterSystemAudioConfig_forSource___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"SystemAudioCaptureClient"];
  if (v2)
  {
    v3 = v2;
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v2, "hash")}];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 56);
        LODWORD(v11[0]) = 136316418;
        *(v11 + 4) = v5;
        WORD6(v11[0]) = 2080;
        *(v11 + 14) = "[VCVideoCaptureServer deregisterSystemAudioConfig:forSource:]_block_invoke";
        WORD3(v11[1]) = 1024;
        DWORD2(v11[1]) = 2527;
        WORD6(v11[1]) = 2048;
        *(&v11[1] + 14) = v3;
        WORD3(v11[2]) = 2112;
        *(&v11[2] + 1) = v4;
        LOWORD(v12) = 1024;
        *(&v12 + 2) = v7;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d client=%p clientKey=%@ source=%d", v11, 0x36u);
      }
    }

    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
    memset(v11, 0, sizeof(v11));
    [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"SystemAudioCaptureConfig", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), "getValue:", v11}];
    v8 = *(a1 + 40);
    if (*(v8 + 624) == 1 && v14 == 0)
    {
      v10 = [v8 dispatchedRemoveScreenCaptureAudioOutput];
    }

    else
    {
      [objc_msgSend(*(v8 + 616) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(a1 + 56))), "removeObject:", v4}];
      v10 = [*(a1 + 40) dispatchedStopSystemAudioForClientKey:v4 forSource:*(a1 + 56)];
    }

    *(*(*(a1 + 48) + 8) + 24) = v10;
    [*(*(a1 + 40) + 608) setObject:0 forKeyedSubscript:v4];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __62__VCVideoCaptureServer_deregisterSystemAudioConfig_forSource___block_invoke_cold_1();
    }
  }
}

- (void)dispatchedStartSystemAudioForSource:(int)source
{
  v3 = *&source;
  v28 = *MEMORY[0x1E69E9840];
  v5 = -[NSMutableDictionary objectForKeyedSubscript:](self->_systemAudioSourceToClients, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:?]);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v19 = v6;
      v20 = 2080;
      v21 = "[VCVideoCaptureServer dispatchedStartSystemAudioForSource:]";
      v22 = 1024;
      v23 = 2547;
      v24 = 2048;
      v25 = [v5 count];
      v26 = 1024;
      v27 = v3;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d clients=%lu for source=%d", buf, 0x2Cu);
    }
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [v5 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        [(VCVideoCaptureServer *)self dispatchedUpdateSystemAudioConfigTapTypeForClientKey:v12 forSource:v3];
        [(VCVideoCaptureServer *)self dispatchedStartSystemAudioForClientKey:v12 forSource:v3];
      }

      v9 = [v5 countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v9);
  }
}

- (void)dispatchedStopSystemAudioForSource:(int)source
{
  v3 = *&source;
  v27 = *MEMORY[0x1E69E9840];
  v5 = -[NSMutableDictionary objectForKeyedSubscript:](self->_systemAudioSourceToClients, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:?]);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v18 = v6;
      v19 = 2080;
      v20 = "[VCVideoCaptureServer dispatchedStopSystemAudioForSource:]";
      v21 = 1024;
      v22 = 2556;
      v23 = 2048;
      v24 = [v5 count];
      v25 = 1024;
      v26 = v3;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d clients=%lu for source=%d", buf, 0x2Cu);
    }
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = [v5 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v5);
        }

        [(VCVideoCaptureServer *)self dispatchedStopSystemAudioForClientKey:*(*(&v13 + 1) + 8 * v11++) forSource:v3];
      }

      while (v9 != v11);
      v9 = [v5 countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v9);
  }
}

- (void)dispatchedUpdateSystemAudioConfigTapTypeForClientKey:(id)key forSource:(int)source
{
  v33 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = v7;
      *&buf[12] = 2080;
      *&buf[14] = "[VCVideoCaptureServer dispatchedUpdateSystemAudioConfigTapTypeForClientKey:forSource:]";
      *&buf[22] = 1024;
      *&buf[24] = 2563;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d ", buf, 0x1Cu);
    }
  }

  if (source == 5)
  {
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    memset(buf, 0, sizeof(buf));
    v9 = [(NSMutableDictionary *)self->_systemAudioCaptureConfig objectForKeyedSubscript:key];
    [objc_msgSend(v9 objectForKeyedSubscript:{@"SystemAudioCaptureConfig", "getValue:", buf}];
    [v9 setObject:0 forKeyedSubscript:@"SystemAudioCaptureConfigExcludedPids"];
    v10 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_screenShareCaptureConfig objectForKeyedSubscript:{@"ScreenCaptureIsWindowed", "BOOLValue"}];
    if (-[NSMutableDictionary objectForKeyedSubscript:](self->_screenShareCaptureConfig, "objectForKeyedSubscript:", @"ScreenCaptureUUID") && ((v11 = -[NSMutableDictionary objectForKeyedSubscript:](self->_screenShareCaptureConfig, "objectForKeyedSubscript:", @"ScreenCaptureUUID"), v11 != [MEMORY[0x1E695DFB0] null]) ? (v12 = v10) : (v12 = 0), v12 == 1))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v15 = [(NSMutableDictionary *)self->_screenShareCaptureConfig objectForKeyedSubscript:@"ScreenCaptureUUID"];
          v19 = 136315906;
          v20 = v13;
          v21 = 2080;
          v22 = "[VCVideoCaptureServer dispatchedUpdateSystemAudioConfigTapTypeForClientKey:forSource:]";
          v23 = 1024;
          v24 = 2574;
          v25 = 2112;
          v26 = v15;
          _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d Updating system audio config to use captureContext=%@", &v19, 0x26u);
        }
      }

      LODWORD(v30) = 2;
      *(&v30 + 1) = [(NSMutableDictionary *)self->_screenShareCaptureConfig objectForKeyedSubscript:@"ScreenCaptureUUID"];
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v19 = 136315650;
          v20 = v16;
          v21 = 2080;
          v22 = "[VCVideoCaptureServer dispatchedUpdateSystemAudioConfigTapTypeForClientKey:forSource:]";
          v23 = 1024;
          v24 = 2578;
          _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d Using full system audio", &v19, 0x1Cu);
        }
      }

      LODWORD(v30) = 0;
      *(&v30 + 1) = 0;
      v18 = [(NSMutableDictionary *)self->_screenShareCaptureConfig objectForKeyedSubscript:@"CaptureExcludedAudioPids"];
      if (([v18 isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}] & 1) == 0 && objc_msgSend(v18, "count"))
      {
        [v9 setObject:v18 forKeyedSubscript:@"SystemAudioCaptureConfigExcludedPids"];
      }
    }

    *(&v31 + 1) = [v9 objectForKeyedSubscript:@"SystemAudioCaptureConfigExcludedPids"];
    [v9 setObject:objc_msgSend(MEMORY[0x1E696B098] forKeyedSubscript:{"valueWithBytes:objCType:", buf, "{?={tagVCAudioFrameFormat={AudioStreamBasicDescription=dIIIIIIII}I}^v^?{tagVCSystemAudioCaptureTapSettings=I(?=iI)^{__CFString}I@}@}"), @"SystemAudioCaptureConfig"}];
  }
}

- (BOOL)dispatchedStartSystemAudioForClientKey:(id)key forSource:(int)source
{
  v42 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v7;
      v36 = 2080;
      v37 = "[VCVideoCaptureServer dispatchedStartSystemAudioForClientKey:forSource:]";
      v38 = 1024;
      v39 = 2592;
      v40 = 2112;
      keyCopy2 = key;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d clientKey=%@", buf, 0x26u);
    }
  }

  if ([(NSMutableDictionary *)self->_systemAudioCapture objectForKeyedSubscript:key])
  {
    [(VCVideoCaptureServer *)key dispatchedStartSystemAudioForClientKey:buf forSource:&v34 + 7, v9, v10, v11, v12, v13, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34];
LABEL_24:
    v16 = *buf;
    v21 = HIBYTE(v34);
    goto LABEL_15;
  }

  if (![(NSMutableDictionary *)self->_systemAudioCaptureConfig objectForKeyedSubscript:key])
  {
    [VCVideoCaptureServer dispatchedStartSystemAudioForClientKey:forSource:];
    goto LABEL_24;
  }

  v14 = [(NSMutableDictionary *)self->_systemAudioCaptureConfig objectForKeyedSubscript:key, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
  [objc_msgSend(v14 objectForKeyedSubscript:{@"SystemAudioCaptureConfig", "getValue:", &v23}];
  if (source == 5 && [-[NSMutableDictionary objectForKeyedSubscript:](self->_screenShareCaptureConfig objectForKeyedSubscript:{@"ShouldSynchronizeSystemAudioStartWithAVCScreenCapture", "BOOLValue"}] && !self->_isScreenCaptureForScreenShare)
  {
    [VCVideoCaptureServer dispatchedStartSystemAudioForClientKey:forSource:];
    goto LABEL_24;
  }

  v33 = [v14 objectForKeyedSubscript:@"SystemAudioRemoteDeviceInfo"];
  v15 = [[VCSystemAudioCapture alloc] initWithConfiguration:&v23];
  if (!v15)
  {
    [VCVideoCaptureServer dispatchedStartSystemAudioForClientKey:forSource:];
    goto LABEL_24;
  }

  v16 = v15;
  start = [(VCSystemAudioCapture *)v15 start];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (start)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v19;
        v36 = 2080;
        v37 = "[VCVideoCaptureServer dispatchedStartSystemAudioForClientKey:forSource:]";
        v38 = 1024;
        v39 = 2615;
        v40 = 2112;
        keyCopy2 = key;
        _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d System audio capture started for clientKey=%@.", buf, 0x26u);
      }
    }

    [(NSMutableDictionary *)self->_systemAudioCapture setObject:v16 forKeyedSubscript:key];
    v21 = 1;
  }

  else
  {
    if (ErrorLogLevelForModule >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCVideoCaptureServer dispatchedStartSystemAudioForClientKey:forSource:];
      }
    }

    v21 = 0;
  }

LABEL_15:

  return v21;
}

- (BOOL)dispatchedStopSystemAudioForClientKey:(id)key forSource:(int)source
{
  *&v23[13] = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v8 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315906;
      v17 = v9;
      v18 = 2080;
      v19 = "[VCVideoCaptureServer dispatchedStopSystemAudioForClientKey:forSource:]";
      v20 = 1024;
      v21 = 2623;
      v22 = 2112;
      *v23 = key;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d clientKey=%@", &v16, 0x26u);
    }
  }

  v11 = [(NSMutableDictionary *)self->_systemAudioCapture objectForKeyedSubscript:key];
  if (source == 5 && [-[NSMutableDictionary objectForKeyedSubscript:](self->_screenShareCaptureConfig objectForKeyedSubscript:{@"ShouldSynchronizeSystemAudioStartWithAVCScreenCapture", "BOOLValue"}])
  {
    if (!v11)
    {
      [VCVideoCaptureServer dispatchedStopSystemAudioForClientKey:? forSource:?];
LABEL_15:
      stop = v16;
      goto LABEL_10;
    }
  }

  else if (!v11)
  {
    [VCVideoCaptureServer dispatchedStopSystemAudioForClientKey:forSource:];
    goto LABEL_15;
  }

  stop = [v11 stop];
LABEL_10:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136316162;
      v17 = v13;
      v18 = 2080;
      v19 = "[VCVideoCaptureServer dispatchedStopSystemAudioForClientKey:forSource:]";
      v20 = 1024;
      v21 = 2635;
      v22 = 1024;
      *v23 = stop;
      v23[2] = 2112;
      *&v23[3] = key;
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d System audio capture didStop=%d for clientKey=%@.", &v16, 0x2Cu);
    }
  }

  [(NSMutableDictionary *)self->_systemAudioCapture setObject:0 forKeyedSubscript:key];
  return stop;
}

- (__CFDictionary)copyCameraColorInfo
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  captureServerQueue = self->captureServerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__VCVideoCaptureServer_copyCameraColorInfo__block_invoke;
  block[3] = &unk_1E85F3868;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(captureServerQueue, block);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __43__VCVideoCaptureServer_copyCameraColorInfo__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 304);
  if (result)
  {
    result = [result copyColorInfo:*(*(a1 + 40) + 8) + 24];
    if ((result & 0x80000000) != 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }

  return result;
}

- (BOOL)registerForFrames:(id)frames
{
  v12 = *MEMORY[0x1E69E9840];
  currentWidth = self->currentWidth;
  currentHeight = self->currentHeight;
  v10 = currentHeight;
  v11 = currentWidth;
  currentFrameRate = self->currentFrameRate;
  v9 = currentFrameRate;
  if (!(currentHeight * currentWidth * currentFrameRate))
  {
    [(VCVideoCaptureServer *)self previewVideoWidth:&v11 height:&v10 frameRate:&v9];
    currentHeight = v10;
    currentWidth = v11;
    currentFrameRate = v9;
  }

  return [(VCVideoCaptureServer *)self registerForVideoFramesFromSource:3 withClient:frames width:currentWidth height:currentHeight frameRate:currentFrameRate];
}

- (BOOL)registerForVideoFramesFromSource:(int)source withClient:(id)client width:(int)width height:(int)height frameRate:(int)rate
{
  v7 = *&rate;
  v8 = *&height;
  v9 = *&source;
  v13[14] = *MEMORY[0x1E69E9840];
  v13[0] = client;
  v12[0] = @"Client";
  v12[1] = @"VideoWidth";
  v13[1] = [MEMORY[0x1E696AD98] numberWithInt:*&width];
  v12[2] = @"VideoHeight";
  v13[2] = [MEMORY[0x1E696AD98] numberWithInt:v8];
  v12[3] = @"FrameRate";
  v13[3] = [MEMORY[0x1E696AD98] numberWithInt:v7];
  v13[4] = &unk_1F579B298;
  v12[4] = @"ClientPid";
  v12[5] = @"ScreenCaptureConfigurationDisplayMode";
  v13[5] = &unk_1F579B298;
  v13[6] = MEMORY[0x1E695E110];
  v12[6] = @"ShouldSendBlackFramesOnClearScreen";
  v12[7] = @"ResolutionScaling";
  v13[7] = &unk_1F579B2B0;
  v13[8] = &unk_1F579B2C8;
  v12[8] = @"PixelFormat";
  v12[9] = @"ScreenDisplayID";
  v13[9] = &unk_1F579B298;
  v13[10] = MEMORY[0x1E695E110];
  v12[10] = @"EnableIdleFrameAdjustments";
  v12[11] = @"ScreenWatcherExempt";
  v13[11] = MEMORY[0x1E695E110];
  v13[12] = MEMORY[0x1E695E110];
  v12[12] = @"ShouldAllowReconfigureForLocalDisplay";
  v12[13] = @"ShouldOptimizeForLowLatency";
  v13[13] = MEMORY[0x1E695E110];
  return -[VCVideoCaptureServer registerForVideoFramesFromSource:sourceConfig:](self, "registerForVideoFramesFromSource:sourceConfig:", v9, [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:14]);
}

- (BOOL)setupScreenCaptureForSource:(int)source config:(id)config
{
  v23 = *MEMORY[0x1E69E9840];
  if (self->_screenCapture)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        screenCapture = self->_screenCapture;
        *buf = 136315906;
        v16 = v5;
        v17 = 2080;
        v18 = "[VCVideoCaptureServer setupScreenCaptureForSource:config:]";
        v19 = 1024;
        v20 = 2737;
        v21 = 2048;
        v22 = screenCapture;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d screenCapture=%p already created", buf, 0x26u);
      }
    }

    return 0;
  }

  else
  {
    v14 = VCVideoCaptureServer_OnCaptureVideoFrame;
    v9 = [[VCScreenCapture alloc] initWithCaptureServer:self protocolFunctions:&v14 sourceConfig:config];
    self->_screenCapture = v9;
    v8 = v9 != 0;
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v9)
    {
      if (ErrorLogLevelForModule >= 7)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v16 = v11;
          v17 = 2080;
          v18 = "[VCVideoCaptureServer setupScreenCaptureForSource:config:]";
          v19 = 1024;
          v20 = 2758;
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d Setup screen capture source", buf, 0x1Cu);
        }
      }
    }

    else
    {
      [VCVideoCaptureServer setupScreenCaptureForSource:? config:?];
    }
  }

  return v8;
}

- (void)updateCaptureRuleForClient:(id)client width:(int)width height:(int)height frameRate:(float)rate
{
  v11 = *MEMORY[0x1E69E9840];
  captureClientQueue = self->captureClientQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__VCVideoCaptureServer_updateCaptureRuleForClient_width_height_frameRate___block_invoke;
  block[3] = &unk_1E85F7018;
  block[4] = self;
  block[5] = client;
  widthCopy = width;
  heightCopy = height;
  rateCopy = rate;
  dispatch_async(captureClientQueue, block);
}

- (BOOL)registerForVideoFramesFromSource:(int)source sourceConfig:(id)config
{
  v43 = *MEMORY[0x1E69E9840];
  if (config && (v7 = [config objectForKeyedSubscript:@"Client"]) != 0)
  {
    v8 = v7;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v32 = 0;
      v20 = v8;
      asprintf(&v32, "source=%d, client=%p, sourceConfig=%s", source, v8, [objc_msgSend(config "description")]);
      if (v32)
      {
        __lasts = 0;
        v9 = strtok_r(v32, "\n", &__lasts);
        v10 = MEMORY[0x1E6986650];
        do
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v11 = VRTraceErrorLogLevelToCSTR();
            v12 = *v10;
            if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316162;
              *&buf[4] = v11;
              *&buf[12] = 2080;
              *&buf[14] = "[VCVideoCaptureServer registerForVideoFramesFromSource:sourceConfig:]";
              *&buf[22] = 1024;
              v38 = 2796;
              v39 = 2080;
              v40 = "";
              v41 = 2080;
              v42 = v9;
              _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d %s %s", buf, 0x30u);
            }
          }

          v9 = strtok_r(0, "\n", &__lasts);
        }

        while (v9);
        free(v32);
      }

      v8 = v20;
    }

    v36 = v8;
    -[VCVideoCaptureServer notifyThermalChangeForClients:](self, "notifyThermalChangeForClients:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1]);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v38) = 0;
    if (source == 3)
    {
      [(VCVideoCaptureServer *)self deregisterForVideoFramesFromSource:1 withClient:v8];
      v32 = 0;
      v33 = &v32;
      v34 = 0x2020000000;
      v35 = [objc_msgSend(config objectForKeyedSubscript:{@"VideoWidth", "intValue"}];
      __lasts = 0;
      p_lasts = &__lasts;
      v30 = 0x2020000000;
      v31 = [objc_msgSend(config objectForKeyedSubscript:{@"VideoHeight", "intValue"}];
      v24 = 0;
      v25 = &v24;
      v26 = 0x2020000000;
      v27 = [objc_msgSend(config objectForKeyedSubscript:{@"FrameRate", "intValue"}];
      currentWidth = *(v33 + 6);
      if (!currentWidth)
      {
        currentWidth = self->currentWidth;
      }

      *(v33 + 6) = currentWidth;
      currentHeight = *(p_lasts + 6);
      if (!currentHeight)
      {
        currentHeight = self->currentHeight;
      }

      *(p_lasts + 6) = currentHeight;
      currentFrameRate = *(v25 + 6);
      if (!currentFrameRate)
      {
        currentFrameRate = self->currentFrameRate;
      }

      *(v25 + 6) = currentFrameRate;
      captureClientQueue = self->captureClientQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __70__VCVideoCaptureServer_registerForVideoFramesFromSource_sourceConfig___block_invoke;
      block[3] = &unk_1E85F8CF0;
      block[4] = self;
      block[5] = v8;
      block[6] = &v32;
      block[7] = &__lasts;
      block[8] = &v24;
      block[9] = buf;
      dispatch_sync(captureClientQueue, block);
      _Block_object_dispose(&v24, 8);
      _Block_object_dispose(&__lasts, 8);
      _Block_object_dispose(&v32, 8);
    }

    else if ((source - 1) > 1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCVideoCaptureServer registerForVideoFramesFromSource:sourceConfig:];
        }
      }
    }

    else
    {
      [(VCVideoCaptureServer *)self deregisterForVideoFramesFromSource:3 withClient:v8];
      v18 = self->captureClientQueue;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __70__VCVideoCaptureServer_registerForVideoFramesFromSource_sourceConfig___block_invoke_2;
      v21[3] = &unk_1E85F8D18;
      v21[4] = self;
      v21[5] = v8;
      sourceCopy = source;
      v21[6] = config;
      v21[7] = buf;
      dispatch_sync(v18, v21);
    }

    v17 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t __70__VCVideoCaptureServer_registerForVideoFramesFromSource_sourceConfig___block_invoke(uint64_t a1, double a2)
{
  *&a2 = *(*(*(a1 + 64) + 8) + 24);
  [*(a1 + 32) dispatchedUpdateCaptureRuleForClient:*(a1 + 40) width:*(*(*(a1 + 48) + 8) + 24) height:*(*(*(a1 + 56) + 8) + 24) frameRate:a2];
  result = [*(*(a1 + 32) + 104) containsObject:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    [*(*(a1 + 32) + 104) addObject:*(a1 + 40)];
    result = [*(a1 + 32) startCaptureWithWidth:*(*(*(a1 + 48) + 8) + 24) height:*(*(*(a1 + 56) + 8) + 24) frameRate:*(*(*(a1 + 64) + 8) + 24)];
    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

  return result;
}

uint64_t __70__VCVideoCaptureServer_registerForVideoFramesFromSource_sourceConfig___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 112) count];
  if (([*(*(a1 + 32) + 112) containsObject:*(a1 + 40)] & 1) == 0)
  {
    [*(*(a1 + 32) + 112) addObject:*(a1 + 40)];
  }

  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) setupScreenCaptureForSource:*(a1 + 64) config:*(a1 + 48)];
  v3 = *(a1 + 32);
  if (!v2 && (*(v3 + 427) & 1) == 0)
  {
    dispatch_resume(*(v3 + 56));
    v3 = *(a1 + 32);
  }

  result = [*(v3 + 312) startPreview];
  if ((result & 0x80000000) != 0)
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v18 = v5;
        v19 = 2080;
        v20 = "[VCVideoCaptureServer registerForVideoFramesFromSource:sourceConfig:]_block_invoke_2";
        v21 = 1024;
        v22 = 2839;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d Started screen capture source", buf, 0x1Cu);
      }
    }

    v7 = [objc_msgSend(*(a1 + 48) objectForKeyedSubscript:{@"FrameRate", "intValue"}];
    *(*(a1 + 32) + 24) = v7;
    *(*(a1 + 32) + 20) = v7;
    *(*(a1 + 32) + 328) = [objc_msgSend(*(a1 + 48) objectForKeyedSubscript:{@"BiomeEventType", "intValue"}];
    [*(a1 + 32) sendBiomeEventIsStarting:1];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = *(*(a1 + 32) + 112);
    result = [v8 countByEnumeratingWithState:&v13 objects:v12 count:16];
    if (result)
    {
      v9 = result;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v13 + 1) + 8 * v11++) sourceFrameRateDidChange:{objc_msgSend(objc_msgSend(*(a1 + 48), "objectForKeyedSubscript:", @"FrameRate", "intValue")}];
        }

        while (v9 != v11);
        result = [v8 countByEnumeratingWithState:&v13 objects:v12 count:16];
        v9 = result;
      }

      while (result);
    }
  }

  return result;
}

- (BOOL)deregisterForVideoFramesFromSource:(int)source withClient:(id)client
{
  v23 = *MEMORY[0x1E69E9840];
  if (client)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v14 = v7;
        v15 = 2080;
        v16 = "[VCVideoCaptureServer deregisterForVideoFramesFromSource:withClient:]";
        v17 = 1024;
        v18 = 2862;
        v19 = 1024;
        sourceCopy = source;
        v21 = 2048;
        clientCopy = client;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d source=%d, client=%p", buf, 0x2Cu);
      }
    }

    captureClientQueue = self->captureClientQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__VCVideoCaptureServer_deregisterForVideoFramesFromSource_withClient___block_invoke;
    block[3] = &unk_1E85F3890;
    sourceCopy2 = source;
    block[4] = self;
    block[5] = client;
    dispatch_async(captureClientQueue, block);
  }

  return client != 0;
}

- (BOOL)isClientRegisteredForVideoFrames:(id)frames fromSource:(int)source
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  captureClientQueue = self->captureClientQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__VCVideoCaptureServer_isClientRegisteredForVideoFrames_fromSource___block_invoke;
  block[3] = &unk_1E85F8D40;
  sourceCopy = source;
  block[5] = frames;
  block[6] = &v9;
  block[4] = self;
  dispatch_sync(captureClientQueue, block);
  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v5;
}

void __68__VCVideoCaptureServer_isClientRegisteredForVideoFrames_fromSource___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if ((v2 - 1) < 2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 112);
LABEL_5:
    *(*(*(a1 + 48) + 8) + 24) = [v4 containsObject:v3];
    return;
  }

  if (v2 == 3)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 104);
    goto LABEL_5;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __68__VCVideoCaptureServer_isClientRegisteredForVideoFrames_fromSource___block_invoke_cold_1();
    }
  }
}

- (int)getCappedFrameRate:(int)rate
{
  v23 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->captureServerQueue);
  if (!self->_forceDisableThermal)
  {
    v5 = [(VCVideoCaptureServer *)self getFrameRateForThermalLevel:self->_thermalLevel peakPowerPressure:self->_peakPowerLevel];
    if (v5 < rate)
    {
      rate = v5;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      currentFrameRate = self->currentFrameRate;
      thermalLevel = self->_thermalLevel;
      v11 = 136316418;
      v12 = v6;
      v13 = 2080;
      v14 = "[VCVideoCaptureServer getCappedFrameRate:]";
      v15 = 1024;
      v16 = 2930;
      v17 = 1024;
      v18 = currentFrameRate;
      v19 = 1024;
      rateCopy = rate;
      v21 = 1024;
      v22 = thermalLevel;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d Setting current camera framerate %d to %d, with thermal level %d", &v11, 0x2Eu);
    }
  }

  return rate;
}

- (void)dispatchedSetCaptureFrameRate:(int)rate
{
  v4 = [(VCVideoCaptureServer *)self getCappedFrameRate:*&rate];
  v5 = [(VCVideoSource *)self->avCapture setFrameRate:v4];
  if ((v5 & 0x80000000) != 0)
  {

    [(VCVideoCaptureServer *)self handleAVCaptureError:v5 domain:@"avCaptureSetFrameRateFail"];
  }

  else
  {
    self->currentFrameRate = v4;
  }
}

- (void)setCaptureFrameRate:(int)rate
{
  v6 = *MEMORY[0x1E69E9840];
  captureServerQueue = self->captureServerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__VCVideoCaptureServer_setCaptureFrameRate___block_invoke;
  block[3] = &unk_1E85F38B8;
  block[4] = self;
  rateCopy = rate;
  dispatch_async(captureServerQueue, block);
}

- (void)setScreenCaptureFrameRate:(int)rate captureSourceID:(id)d
{
  v7 = *MEMORY[0x1E69E9840];
  captureClientQueue = self->captureClientQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__VCVideoCaptureServer_setScreenCaptureFrameRate_captureSourceID___block_invoke;
  v5[3] = &unk_1E85F3890;
  v5[4] = d;
  v5[5] = self;
  rateCopy = rate;
  dispatch_async(captureClientQueue, v5);
}

void __66__VCVideoCaptureServer_setScreenCaptureFrameRate_captureSourceID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 32))
  {
    v3 = [*(v2 + 568) objectForKeyedSubscript:?];
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *(v2 + 312);
    if (v3)
    {
LABEL_3:
      if (([v3 setFrameRate:*(a1 + 48)] & 0x80000000) != 0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            __66__VCVideoCaptureServer_setScreenCaptureFrameRate_captureSourceID___block_invoke_cold_1();
          }
        }
      }

      else
      {
        v4 = *(a1 + 40);
        if (v3 == *(v4 + 312))
        {
          *(v4 + 24) = *(a1 + 48);
        }

        else
        {
          v5 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 48)];
          v6 = [*(*(a1 + 40) + 576) objectForKeyedSubscript:*(a1 + 32)];

          [v6 setObject:v5 forKeyedSubscript:@"CurrentFrameRate"];
        }
      }

      return;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __66__VCVideoCaptureServer_setScreenCaptureFrameRate_captureSourceID___block_invoke_cold_2();
    }
  }
}

- (int)getCaptureFrameRateForSource:(int)source
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  captureServerQueue = self->captureServerQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__VCVideoCaptureServer_getCaptureFrameRateForSource___block_invoke;
  v6[3] = &unk_1E85F61A8;
  sourceCopy = source;
  v6[4] = self;
  v6[5] = &v8;
  dispatch_sync(captureServerQueue, v6);
  v4 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __53__VCVideoCaptureServer_getCaptureFrameRateForSource___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(a1 + 48) - 1) > 1)
  {
    v4 = [*(v2 + 544) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:")}];
    if (v4)
    {
      result = [v4 frameRate];
    }

    else
    {
      result = *(*(a1 + 32) + 16);
    }
  }

  else
  {
    result = [*(v2 + 312) getFrameRate];
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setViewPointCorrectionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v18 = *MEMORY[0x1E69E9840];
  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"disableViewPointCorrectionForSharing", +[VCHardwareSettings disableViewPointCorrectionForSharing]);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136316162;
      v9 = v6;
      v10 = 2080;
      v11 = "[VCVideoCaptureServer setViewPointCorrectionEnabled:]";
      v12 = 1024;
      v13 = 2996;
      v14 = 1024;
      v15 = enabledCopy;
      v16 = 1024;
      v17 = BoolValueForKey;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d enabled=%d, shouldUpdateViewPointCorrection=%d", &v8, 0x28u);
    }
  }

  if (BoolValueForKey && self->_viewPointCorrectionEnabledByClient != enabledCopy)
  {
    self->_viewPointCorrectionEnabledByClient = enabledCopy;
    [(VCVideoCaptureServer *)self updateViewPointCorrectionStatus];
  }
}

- (void)setCaptureSIFRFormatEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v18 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v11 = v5;
      v12 = 2080;
      v13 = "[VCVideoCaptureServer setCaptureSIFRFormatEnabled:]";
      v14 = 1024;
      v15 = 3008;
      v16 = 1024;
      v17 = enabledCopy;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d enabled=%d", buf, 0x22u);
    }
  }

  captureServerQueue = self->captureServerQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__VCVideoCaptureServer_setCaptureSIFRFormatEnabled___block_invoke;
  v8[3] = &unk_1E85F37A0;
  v8[4] = self;
  v9 = enabledCopy;
  dispatch_async(captureServerQueue, v8);
}

uint64_t __52__VCVideoCaptureServer_setCaptureSIFRFormatEnabled___block_invoke(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(*(a1 + 32) + 304);
    v4 = *(a1 + 40);

    return [v3 setCaptureSIFRFormatEnabled:v4];
  }

  return result;
}

- (void)updateViewPointCorrectionStatus
{
  v3[5] = *MEMORY[0x1E69E9840];
  captureServerQueue = self->captureServerQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__VCVideoCaptureServer_updateViewPointCorrectionStatus__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(captureServerQueue, v3);
}

uint64_t __55__VCVideoCaptureServer_updateViewPointCorrectionStatus__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 425) == 1)
  {
    v3 = *(v2 + 424);
  }

  else
  {
    v3 = 0;
  }

  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(*(a1 + 32) + 304);

    return [v5 setViewPointCorrectionEnabled:v3 & 1];
  }

  return result;
}

- (void)updateImageQueueFrameRate:(int)rate
{
  v3 = *&rate;
  v21 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      frameRate = [(VCImageQueue *)self->frontQueue frameRate];
      frameRate2 = [(VCImageQueue *)self->backQueue frameRate];
      v9 = 136316418;
      v10 = v5;
      v11 = 2080;
      v12 = "[VCVideoCaptureServer updateImageQueueFrameRate:]";
      v13 = 1024;
      v14 = 3032;
      v15 = 1024;
      v16 = frameRate;
      v17 = 1024;
      v18 = frameRate2;
      v19 = 1024;
      v20 = v3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d Setting both front queue framerate %d and back queue framerate %d to %d", &v9, 0x2Eu);
    }
  }

  pthread_mutex_lock(&self->_enqueueLock);
  [(VCImageQueue *)self->frontQueue setFrameRate:v3];
  [(VCImageQueue *)self->backQueue setFrameRate:v3];
  pthread_mutex_unlock(&self->_enqueueLock);
}

- (BOOL)isFaceTimeScreenSharingWithDict:(id)dict
{
  v5 = [dict objectForKeyedSubscript:@"ScreenCaptureUUID"];
  if (v5)
  {
    v6 = v5 != [MEMORY[0x1E695DFB0] null];
  }

  else
  {
    v6 = 0;
  }

  if (+[VCHardwareSettings deviceClass](VCHardwareSettings, "deviceClass") == 8 && v5 == [MEMORY[0x1E695DFB0] null])
  {
    v8 = [dict objectForKeyedSubscript:@"CaptureSourceID"];
    return self->_screenShareCaptureConfig && (!v8 || [(NSMutableDictionary *)self->_screenCaptureConfig objectForKeyedSubscript:v8]== 0);
  }

  return v6;
}

- (void)setPreferCaptureFullBleed:(BOOL)bleed
{
  bleedCopy = bleed;
  v18 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v11 = v5;
      v12 = 2080;
      v13 = "[VCVideoCaptureServer setPreferCaptureFullBleed:]";
      v14 = 1024;
      v15 = 3052;
      v16 = 1024;
      v17 = bleedCopy;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d _remoteSupportsFullScreenReceive=%d", buf, 0x22u);
    }
  }

  captureServerQueue = self->captureServerQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__VCVideoCaptureServer_setPreferCaptureFullBleed___block_invoke;
  v8[3] = &unk_1E85F37A0;
  v8[4] = self;
  v9 = bleedCopy;
  dispatch_async(captureServerQueue, v8);
}

uint64_t __50__VCVideoCaptureServer_setPreferCaptureFullBleed___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 436) = *(a1 + 40);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(*(a1 + 32) + 304);
    v4 = *(a1 + 40);

    return [v3 setRemotePreferFullBleed:v4];
  }

  return result;
}

- (BOOL)setUpScreenVideoCaptureSource:(id)source
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = [(VCVideoCaptureServer *)self isFaceTimeScreenSharingWithDict:?];
  v6 = [source objectForKeyedSubscript:@"CaptureSourceID"];
  if (!v5)
  {
    v7 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_screenCaptureConfig objectForKeyedSubscript:{v6), "mutableCopy"}];
    p_screenCapture = &self->_screenCapture;
    if (!self->_screenCapture)
    {
      goto LABEL_8;
    }

LABEL_28:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCVideoCaptureServer setUpScreenVideoCaptureSource:];
      }
    }

    goto LABEL_31;
  }

  v7 = self->_screenShareCaptureConfig;
  p_screenCapture = &self->_screenCapture;
  if (self->_screenCapture)
  {
    goto LABEL_28;
  }

  if ([(NSMutableDictionary *)self->_screenCaptureSource count])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [(VCVideoCaptureServer *)v9 setUpScreenVideoCaptureSource:?];
      }
    }

LABEL_31:
    v23 = 0;
    v26 = 0;
    goto LABEL_27;
  }

LABEL_8:
  if (!v7)
  {
    [VCVideoCaptureServer setUpScreenVideoCaptureSource:];
LABEL_34:
    v7 = v29;
    v23 = *buf;
    v26 = v31;
    goto LABEL_27;
  }

  -[NSMutableDictionary setObject:forKeyedSubscript:](v7, "setObject:forKeyedSubscript:", [source objectForKeyedSubscript:@"ScreenCaptureIsWindowed"], @"ScreenCaptureIsWindowed");
  -[NSMutableDictionary setObject:forKeyedSubscript:](v7, "setObject:forKeyedSubscript:", [source objectForKeyedSubscript:@"ScreenCaptureUUID"], @"ScreenCaptureUUID");
  -[NSMutableDictionary setObject:forKeyedSubscript:](v7, "setObject:forKeyedSubscript:", [source objectForKeyedSubscript:@"ScreenDisplayID"], @"ScreenDisplayID");
  -[NSMutableDictionary setObject:forKeyedSubscript:](v7, "setObject:forKeyedSubscript:", [source objectForKeyedSubscript:@"IsCursorCapturedForScreen"], @"IsCursorCapturedForScreen");
  -[NSMutableDictionary setObject:forKeyedSubscript:](v7, "setObject:forKeyedSubscript:", [source objectForKeyedSubscript:@"CaptureExcludedBundleIDs"], @"CaptureExcludedBundleIDs");
  -[NSMutableDictionary setObject:forKeyedSubscript:](v7, "setObject:forKeyedSubscript:", [source objectForKeyedSubscript:@"HasPrivateCaptureEntitlement"], @"HasPrivateCaptureEntitlement");
  -[NSMutableDictionary setObject:forKeyedSubscript:](v7, "setObject:forKeyedSubscript:", [source objectForKeyedSubscript:@"ScreenVirtualDisplayLabel"], @"ScreenVirtualDisplayLabel");
  -[NSMutableDictionary setObject:forKeyedSubscript:](v7, "setObject:forKeyedSubscript:", [source objectForKeyedSubscript:@"ScreenCaptureConfigurationDisplayMode"], @"ScreenCaptureConfigurationDisplayMode");
  if ([source objectForKeyedSubscript:@"ClientBundleID"])
  {
    null = [source objectForKeyedSubscript:@"ClientBundleID"];
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  [(NSMutableDictionary *)v7 setObject:null forKeyedSubscript:@"ClientBundleID"];
  -[NSMutableDictionary setObject:forKeyedSubscript:](v7, "setObject:forKeyedSubscript:", [source objectForKeyedSubscript:@"AuditTokenData"], @"AuditTokenData");
  -[NSMutableDictionary setObject:forKeyedSubscript:](v7, "setObject:forKeyedSubscript:", [source objectForKeyedSubscript:@"PdProtectionOptions"], @"PdProtectionOptions");
  if (v5)
  {
    screenConfiguredFrameRate = self->_screenConfiguredFrameRate;
    if (!self->_forceDisableThermal)
    {
      v12 = [(VCVideoCaptureServer *)self getScreenFrameRateForThermalLevel:self->_thermalLevel];
      if (screenConfiguredFrameRate >= v12)
      {
        screenConfiguredFrameRate = v12;
      }

      else
      {
        screenConfiguredFrameRate = screenConfiguredFrameRate;
      }
    }

    self->_screenCurrentFrameRate = screenConfiguredFrameRate;
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_screenShareCaptureConfig, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInt:screenConfiguredFrameRate], @"FrameRate");
    screenCaptureClients = self->screenCaptureClients;
    screenCurrentFrameRate = self->_screenCurrentFrameRate;
    selfCopy2 = self;
  }

  else
  {
    v16 = -[VCVideoCaptureServer screenFrameRateForThermalLevel:configuredFrameRate:captureSourceID:](self, "screenFrameRateForThermalLevel:configuredFrameRate:captureSourceID:", self->_thermalLevel, [-[NSMutableDictionary objectForKeyedSubscript:](v7 objectForKeyedSubscript:{@"FrameRate", "intValue"}], v6);
    v17 = [MEMORY[0x1E696AD98] numberWithInt:v16];
    [-[NSMutableDictionary objectForKeyedSubscript:](self->_screenCaptureConfig objectForKeyedSubscript:{v6), "setObject:forKeyedSubscript:", v17, @"CurrentFrameRate"}];
    [(NSMutableDictionary *)v7 setObject:v17 forKeyedSubscript:@"CurrentFrameRate"];
    -[NSMutableDictionary setObject:forKeyedSubscript:](v7, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInt:v16], @"FrameRate");
    v34 = [(NSMutableDictionary *)v7 objectForKeyedSubscript:@"Client"];
    screenCaptureClients = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
    selfCopy2 = self;
    screenCurrentFrameRate = v16;
  }

  [(VCVideoCaptureServer *)selfCopy2 notifyFrameRateBeingThrottledForClients:screenCaptureClients newFrameRate:screenCurrentFrameRate thermalLevelDidChange:0 powerLevelDidChange:0];
  *(&v28 + 1) = VCVideoCaptureServer_OnCaptureVideoFrame;
  v18 = [[VCScreenCapture alloc] initWithCaptureServer:self protocolFunctions:&v28 + 8 sourceConfig:v7];
  if (!v18)
  {
    [(VCVideoCaptureServer *)v7 setUpScreenVideoCaptureSource:buf, &v31, v19, v20, v21, v22, v28, v29, v30, *buf, *&buf[8], *&buf[16], v33, v34, v35, v36, v37, v38, v39];
    goto LABEL_34;
  }

  v23 = v18;
  if (v5)
  {
    *p_screenCapture = v18;
  }

  else
  {
    [(VCVideoCapture *)v18 addSink:[(NSMutableDictionary *)v7 objectForKeyedSubscript:@"Client"]];
    [(NSMutableDictionary *)self->_screenCaptureSource setObject:v23 forKeyedSubscript:v6];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v24 = VRTraceErrorLogLevelToCSTR();
    v25 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = v24;
      *&buf[12] = 2080;
      *&buf[14] = "[VCVideoCaptureServer setUpScreenVideoCaptureSource:]";
      *&buf[22] = 1024;
      LODWORD(v33) = 3129;
      _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d Setup screen capture source", buf, 0x1Cu);
    }
  }

  v26 = 1;
LABEL_27:

  return v26;
}

- (BOOL)startScreenShareCapture:(id)capture
{
  v30 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    __str = 0;
    v5 = capture ? [objc_msgSend(capture "description")] : "<nil>";
    asprintf(&__str, "Starting screen capture with screenShareDict=%s", v5);
    if (__str)
    {
      __lasts = 0;
      v6 = strtok_r(__str, "\n", &__lasts);
      v7 = MEMORY[0x1E6986650];
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v8 = VRTraceErrorLogLevelToCSTR();
          v9 = *v7;
          if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v21 = v8;
            v22 = 2080;
            v23 = "[VCVideoCaptureServer startScreenShareCapture:]";
            v24 = 1024;
            v25 = 3139;
            v26 = 2080;
            v27 = "";
            v28 = 2080;
            v29 = v6;
            _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v6 = strtok_r(0, "\n", &__lasts);
      }

      while (v6);
      free(__str);
    }
  }

  captureClientQueue = self->captureClientQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__VCVideoCaptureServer_startScreenShareCapture___block_invoke;
  block[3] = &unk_1E85F6638;
  block[4] = self;
  block[5] = capture;
  block[6] = &v16;
  dispatch_sync(captureClientQueue, block);
  v11 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);
  return v11;
}

void __48__VCVideoCaptureServer_startScreenShareCapture___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) isFaceTimeScreenSharingWithDict:*(a1 + 40)];
  *(*(a1 + 32) + 427) = v2;
  if ([*(a1 + 32) setUpScreenVideoCaptureSource:*(a1 + 40)])
  {
    v3 = *(a1 + 32);
    if (v2)
    {
      v4 = *(v3 + 312);
    }

    else
    {
      v4 = [*(v3 + 568) objectForKeyedSubscript:{objc_msgSend(*(a1 + 40), "objectForKeyedSubscript:", @"CaptureSourceID"}];
    }

    if (v4)
    {
      *(*(*(a1 + 48) + 8) + 24) = [v4 startScreenCapture] >= 0;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v7 = *(*(*(a1 + 48) + 8) + 24);
          v10 = 136315906;
          v11 = v5;
          v12 = 2080;
          v13 = "[VCVideoCaptureServer startScreenShareCapture:]_block_invoke";
          v14 = 1024;
          v15 = 3154;
          v16 = 1024;
          v17 = v7;
          _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d didStart=%d", &v10, 0x22u);
        }
      }
    }

    else
    {
      __48__VCVideoCaptureServer_startScreenShareCapture___block_invoke_cold_2();
    }
  }

  else
  {
    __48__VCVideoCaptureServer_startScreenShareCapture___block_invoke_cold_1();
  }

  v8 = *(a1 + 32);
  if (*(*(*(a1 + 48) + 8) + 24) & v2)
  {
    dispatch_resume(*(v8 + 56));
    v9 = [*(a1 + 40) objectForKeyedSubscript:@"CaptureExcludedAudioPids"];
    if (([v9 isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}] & 1) == 0)
    {
      if ([v9 count])
      {
        [*(*(a1 + 32) + 320) setObject:v9 forKeyedSubscript:@"CaptureExcludedAudioPids"];
      }
    }

    [*(a1 + 32) dispatchedStartSystemAudioForSource:5];
    [*(a1 + 32) sendBiomeEventIsStarting:1];
  }

  else
  {
    *(v8 + 427) = 0;
  }
}

- (BOOL)stopScreenShareCapture:(int64_t)capture
{
  v23 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v16 = v5;
      v17 = 2080;
      v18 = "[VCVideoCaptureServer stopScreenShareCapture:]";
      v19 = 1024;
      v20 = 3176;
      v21 = 2048;
      captureCopy = capture;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d Stopping screen capture for captureSourceID=%ld", buf, 0x26u);
    }
  }

  captureClientQueue = self->captureClientQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__VCVideoCaptureServer_stopScreenShareCapture___block_invoke;
  block[3] = &unk_1E85F6D88;
  block[4] = self;
  block[5] = &v11;
  block[6] = capture;
  dispatch_sync(captureClientQueue, block);
  v8 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v8;
}

void __47__VCVideoCaptureServer_stopScreenShareCapture___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 568) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", *(a1 + 48))}];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(v3 + 568) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", *(a1 + 48))}];
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_12:
    __47__VCVideoCaptureServer_stopScreenShareCapture___block_invoke_cold_1();
    goto LABEL_8;
  }

  v4 = *(v3 + 312);
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_3:
  *(*(*(a1 + 40) + 8) + 24) = [v4 stopScreenCapture] >= 0;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(*(a1 + 40) + 8) + 24);
      v9 = 136315906;
      v10 = v5;
      v11 = 2080;
      v12 = "[VCVideoCaptureServer stopScreenShareCapture:]_block_invoke";
      v13 = 1024;
      v14 = 3184;
      v15 = 1024;
      v16 = v7;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d didStop=%d", &v9, 0x22u);
    }
  }

  if ([objc_msgSend(*(*(a1 + 32) + 320) objectForKeyedSubscript:{@"ShouldSynchronizeSystemAudioStartWithAVCScreenCapture", "BOOLValue"}])
  {
    [*(a1 + 32) dispatchedStopSystemAudioForSource:5];
  }

LABEL_8:
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v8 = *(a1 + 32);
    if (v2)
    {
      [*(v8 + 568) setObject:0 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", *(a1 + 48))}];
    }

    else
    {
      *(v8 + 427) = 0;
      dispatch_suspend(*(*(a1 + 32) + 56));
      [*(a1 + 32) sendBiomeEventIsStarting:0];

      *(*(a1 + 32) + 312) = 0;
    }
  }
}

- (id)updateScreenCapture:(int64_t)capture withConfig:(id)config
{
  v33 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    __str = 0;
    v7 = config ? [objc_msgSend(config "description")] : "<nil>";
    asprintf(&__str, "Updating screen capture with screenShareDict=%s", v7);
    if (__str)
    {
      captureCopy = capture;
      __lasts = 0;
      v8 = strtok_r(__str, "\n", &__lasts);
      v9 = MEMORY[0x1E6986650];
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v10 = VRTraceErrorLogLevelToCSTR();
          v11 = *v9;
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v24 = v10;
            v25 = 2080;
            v26 = "[VCVideoCaptureServer updateScreenCapture:withConfig:]";
            v27 = 1024;
            v28 = 3209;
            v29 = 2080;
            v30 = "";
            v31 = 2080;
            v32 = v8;
            _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v8 = strtok_r(0, "\n", &__lasts);
      }

      while (v8);
      free(__str);
      capture = captureCopy;
    }
  }

  captureClientQueue = self->captureClientQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__VCVideoCaptureServer_updateScreenCapture_withConfig___block_invoke;
  block[3] = &unk_1E85F8628;
  block[4] = self;
  block[5] = config;
  block[6] = &v19;
  block[7] = capture;
  dispatch_sync(captureClientQueue, block);
  if ((v20[3] & 0x80000000) != 0)
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"GKVoiceChatServiceErrorDomain" code:? userInfo:?];
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCVideoCaptureServer updateScreenCapture:withConfig:];
      }
    }
  }

  else
  {
    v13 = 0;
  }

  _Block_object_dispose(&v19, 8);
  return v13;
}

void __55__VCVideoCaptureServer_updateScreenCapture_withConfig___block_invoke(void *a1)
{
  if ([*(a1[4] + 568) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", a1[7])}])
  {
    __55__VCVideoCaptureServer_updateScreenCapture_withConfig___block_invoke_cold_1();
  }

  else
  {
    v2 = a1[4];
    v3 = *(v2 + 320);
    if (v3)
    {
      [*(v2 + 320) addEntriesFromDictionary:a1[5]];
      [v3 removeObjectForKey:@"CaptureSourceID"];
      *(*(a1[6] + 8) + 24) = [*(a1[4] + 312) updateScreenCapture:v3];
    }

    else
    {
      __55__VCVideoCaptureServer_updateScreenCapture_withConfig___block_invoke_cold_2();
    }
  }
}

- (void)sendBiomeEventIsStarting:(BOOL)starting
{
  startingCopy = starting;
  v18 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_new();
  v6 = [objc_alloc(MEMORY[0x1E698F2F8]) initWithIsStart:startingCopy type:self->_biomeEventType];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"stop";
      biomeEventType = self->_biomeEventType;
      *v11 = 136316162;
      *&v11[4] = v7;
      *&v11[12] = 2080;
      if (startingCopy)
      {
        v9 = @"start";
      }

      *&v11[14] = "[VCVideoCaptureServer sendBiomeEventIsStarting:]";
      v12 = 1024;
      v13 = 3236;
      v14 = 2112;
      v15 = v9;
      v16 = 2048;
      v17 = biomeEventType;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d Sending Biome event for screen %@ of type=%lu", v11, 0x30u);
    }
  }

  [objc_msgSend(v5 source];
}

- (BOOL)setupStreamInputs
{
  CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(47);
  v4 = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCVideoCaptureServer.streamInput", 0, CustomRootQueue);
  self->_streamInputQueue = v4;
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    self->_streamInputs = v5;
    if (v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      self->_streamInputCaptureSources = v6;
      if (v6)
      {
        return 1;
      }

      [VCVideoCaptureServer setupStreamInputs];
    }

    else
    {
      [VCVideoCaptureServer setupStreamInputs];
    }
  }

  else
  {
    [VCVideoCaptureServer setupStreamInputs];
  }

  [(VCVideoCaptureServer *)self cleanupStreamInputs];
  return 0;
}

- (void)cleanupStreamInputs
{
  self->_streamInputs = 0;

  self->_streamInputCaptureSources = 0;
  streamInputQueue = self->_streamInputQueue;
  if (streamInputQueue)
  {
    dispatch_release(streamInputQueue);
    self->_streamInputQueue = 0;
  }
}

- (void)registerVideoSink:(id)sink withCaptureSource:(int)source
{
  v7 = *MEMORY[0x1E69E9840];
  streamInputQueue = self->_streamInputQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__VCVideoCaptureServer_registerVideoSink_withCaptureSource___block_invoke;
  v5[3] = &unk_1E85F3890;
  sourceCopy = source;
  v5[4] = self;
  v5[5] = sink;
  dispatch_sync(streamInputQueue, v5);
}

void __60__VCVideoCaptureServer_registerVideoSink_withCaptureSource___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 544) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(a1 + 48))}];
  if (v2)
  {
    v3 = *(a1 + 40);

    [v2 addSink:v3];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __60__VCVideoCaptureServer_registerVideoSink_withCaptureSource___block_invoke_cold_1();
    }
  }
}

- (void)unregisterVideoSink:(id)sink withCaptureSource:(int)source
{
  v7 = *MEMORY[0x1E69E9840];
  streamInputQueue = self->_streamInputQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__VCVideoCaptureServer_unregisterVideoSink_withCaptureSource___block_invoke;
  v5[3] = &unk_1E85F3890;
  sourceCopy = source;
  v5[4] = self;
  v5[5] = sink;
  dispatch_sync(streamInputQueue, v5);
}

void __62__VCVideoCaptureServer_unregisterVideoSink_withCaptureSource___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 544) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(a1 + 48))}];
  if (v2)
  {
    v3 = *(a1 + 40);

    [v2 removeSink:v3];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __62__VCVideoCaptureServer_unregisterVideoSink_withCaptureSource___block_invoke_cold_1();
    }
  }
}

- (void)suspendVideoSink:(id)sink withCaptureSource:(int)source
{
  v7 = *MEMORY[0x1E69E9840];
  streamInputQueue = self->_streamInputQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__VCVideoCaptureServer_suspendVideoSink_withCaptureSource___block_invoke;
  v5[3] = &unk_1E85F3890;
  sourceCopy = source;
  v5[4] = self;
  v5[5] = sink;
  dispatch_async(streamInputQueue, v5);
}

void __59__VCVideoCaptureServer_suspendVideoSink_withCaptureSource___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 544) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(a1 + 48))}];
  if (v2)
  {
    v3 = *(a1 + 40);

    [v2 didSuspendVideoSink:v3];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __59__VCVideoCaptureServer_suspendVideoSink_withCaptureSource___block_invoke_cold_1();
    }
  }
}

- (void)resumeVideoSink:(id)sink withCaptureSource:(int)source
{
  v7 = *MEMORY[0x1E69E9840];
  streamInputQueue = self->_streamInputQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__VCVideoCaptureServer_resumeVideoSink_withCaptureSource___block_invoke;
  v5[3] = &unk_1E85F3890;
  sourceCopy = source;
  v5[4] = self;
  v5[5] = sink;
  dispatch_async(streamInputQueue, v5);
}

void __58__VCVideoCaptureServer_resumeVideoSink_withCaptureSource___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 544) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(a1 + 48))}];
  if (v2)
  {
    v3 = *(a1 + 40);

    [v2 didResumeVideoSink:v3];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __58__VCVideoCaptureServer_resumeVideoSink_withCaptureSource___block_invoke_cold_1();
    }
  }
}

- (opaqueCMFormatDescription)newFormatDescriptionForCaptureSource:(int)source
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0;
  formatDescriptionOut = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  streamInputQueue = self->_streamInputQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__VCVideoCaptureServer_newFormatDescriptionForCaptureSource___block_invoke;
  v7[3] = &unk_1E85F64A0;
  sourceCopy = source;
  v7[4] = self;
  v7[5] = &v9;
  dispatch_sync(streamInputQueue, v7);
  v5 = formatDescriptionOut[3];
  if (!v5)
  {
    if (source == 3)
    {
      CMVideoFormatDescriptionCreate(*MEMORY[0x1E695E480], 0x34323076u, 0, 0, 0, formatDescriptionOut + 3);
    }

    else if ((source - 1) <= 1)
    {
      CMFormatDescriptionCreate(*MEMORY[0x1E695E480], 0x76696465u, 0x34323066u, 0, formatDescriptionOut + 3);
    }

    v5 = formatDescriptionOut[3];
  }

  _Block_object_dispose(&v9, 8);
  return v5;
}

void *__61__VCVideoCaptureServer_newFormatDescriptionForCaptureSource___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 544) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(a1 + 48))}];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = [result formatDescription];
    result = *(*(*(a1 + 40) + 8) + 24);
    if (result)
    {

      return CFRetain(result);
    }
  }

  return result;
}

- (int)findNextAvailableCaptureSourceID
{
  LODWORD(v3) = 10;
  do
  {
    v3 = (v3 + 1);
  }

  while (-[NSMutableDictionary objectForKeyedSubscript:](self->_streamInputCaptureSources, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3]));
  return v3;
}

- (int64_t)streamInputIDForCaptureSourceID:(int)d
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  streamInputQueue = self->_streamInputQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__VCVideoCaptureServer_streamInputIDForCaptureSourceID___block_invoke;
  v6[3] = &unk_1E85F64A0;
  dCopy = d;
  v6[4] = self;
  v6[5] = &v8;
  dispatch_sync(streamInputQueue, v6);
  v4 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __56__VCVideoCaptureServer_streamInputIDForCaptureSourceID___block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(*(a1 + 32) + 544) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(a1 + 48))), "streamInputID"}];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int)registerStreamInputCaptureSourceWithID:(int64_t)d frameRate:(unsigned int)rate
{
  v4 = *&rate;
  v7 = [+[VCStreamInputManager sharedInstance](VCStreamInputManager streamInputWithID:"streamInputWithID:", d];
  if (v7)
  {
    streamFormat = [v7 streamFormat];
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v9 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", d), @"streamInputID"}];
    [v9 setObject:streamFormat forKeyedSubscript:@"formatDescription"];
    [v9 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v4), @"framerate"}];
    v10 = [(VCVideoCaptureServer *)self registerStreamInputCaptureSourceWithConfiguration:v9];

    LODWORD(v7) = v10;
  }

  return v7;
}

- (int)registerStreamInputCaptureSourceWithConfiguration:(id)configuration
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  streamInputQueue = self->_streamInputQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __74__VCVideoCaptureServer_registerStreamInputCaptureSourceWithConfiguration___block_invoke;
  v6[3] = &unk_1E85F6638;
  v6[4] = self;
  v6[5] = configuration;
  v6[6] = &v7;
  dispatch_sync(streamInputQueue, v6);
  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __74__VCVideoCaptureServer_registerStreamInputCaptureSourceWithConfiguration___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) findNextAvailableCaptureSourceID];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v2];
  if ([*(*(a1 + 32) + 544) objectForKeyedSubscript:v3])
  {
    __74__VCVideoCaptureServer_registerStreamInputCaptureSourceWithConfiguration___block_invoke_cold_1();
LABEL_18:
    v5 = v15;
    goto LABEL_16;
  }

  v4 = [[VCStreamInputCaptureSource alloc] initWithCaptureSourceID:v2 configuration:*(a1 + 40)];
  if (!v4)
  {
    __74__VCVideoCaptureServer_registerStreamInputCaptureSourceWithConfiguration___block_invoke_cold_4();
    goto LABEL_18;
  }

  v5 = v4;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [*(*(a1 + 32) + 544) allValues];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 streamInputID];
        if (v12 == -[VCStreamInputCaptureSource streamInputID](v5, "streamInputID") && !CMFormatDescriptionEqual([v11 formatDescription], -[VCStreamInputCaptureSource formatDescription](v5, "formatDescription")))
        {
          __74__VCVideoCaptureServer_registerStreamInputCaptureSourceWithConfiguration___block_invoke_cold_2();
          goto LABEL_18;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v16 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = [*(*(a1 + 32) + 552) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", -[VCStreamInputCaptureSource streamInputID](v5, "streamInputID"))}];
  if (!v13)
  {
    goto LABEL_15;
  }

  v14 = v13;
  if (([v13 isEqualFormat:-[VCStreamInputCaptureSource formatDescription](v5, "formatDescription")] & 1) == 0)
  {
    __74__VCVideoCaptureServer_registerStreamInputCaptureSourceWithConfiguration___block_invoke_cold_3();
    goto LABEL_18;
  }

  [v14 addSink:v5];
  [(VCStreamInputCaptureSource *)v5 setDelegate:v14];
LABEL_15:
  [*(*(a1 + 32) + 544) setObject:v5 forKeyedSubscript:v3];
  *(*(*(a1 + 48) + 8) + 24) = v2;
LABEL_16:
}

- (BOOL)unregisterStreamInputCaptureSourceWithCaptureSourceID:(int)d
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  streamInputQueue = self->_streamInputQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __78__VCVideoCaptureServer_unregisterStreamInputCaptureSourceWithCaptureSourceID___block_invoke;
  v6[3] = &unk_1E85F64A0;
  dCopy = d;
  v6[4] = self;
  v6[5] = &v8;
  dispatch_sync(streamInputQueue, v6);
  v4 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v4;
}

void __78__VCVideoCaptureServer_unregisterStreamInputCaptureSourceWithCaptureSourceID___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 48)];
  v3 = [*(*(a1 + 32) + 544) objectForKeyedSubscript:v2];
  if (v3)
  {
    v4 = v3;
    v5 = [*(*(a1 + 32) + 552) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", objc_msgSend(v3, "streamInputID"))}];
    if (v5)
    {
      [v5 removeSink:v4];
      [v4 setDelegate:0];
    }

    [*(*(a1 + 32) + 544) setObject:0 forKeyedSubscript:v2];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    __78__VCVideoCaptureServer_unregisterStreamInputCaptureSourceWithCaptureSourceID___block_invoke_cold_1();
  }
}

- (BOOL)internalRegisterStreamInput:(id)input
{
  v21 = *MEMORY[0x1E69E9840];
  if (![(VCVideoCaptureServer *)self isValidStreamInput:?])
  {
    [VCVideoCaptureServer internalRegisterStreamInput:input];
    return v15;
  }

  streamInputID = [input streamInputID];
  if ([(NSMutableDictionary *)self->_streamInputs objectForKeyedSubscript:streamInputID])
  {
    [VCVideoCaptureServer internalRegisterStreamInput:];
    return v15;
  }

  v14 = streamInputID;
  intValue = [streamInputID intValue];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  allKeys = [(NSMutableDictionary *)self->_streamInputCaptureSources allKeys];
  v8 = [allKeys countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(allKeys);
        }

        v12 = [(NSMutableDictionary *)self->_streamInputCaptureSources objectForKeyedSubscript:*(*(&v17 + 1) + 8 * i)];
        if ([v12 streamInputID] == intValue)
        {
          if (([input isEqualFormat:objc_msgSend(v12, "formatDescription")] & 1) == 0)
          {
            [VCVideoCaptureServer internalRegisterStreamInput:];
            return v15;
          }

          [input addSink:v12];
          [v12 setDelegate:input];
        }
      }

      v9 = [allKeys countByEnumeratingWithState:&v17 objects:v16 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  [input thermalLevelDidChange:self->_newThermalLevel];
  [(NSMutableDictionary *)self->_streamInputs setObject:input forKeyedSubscript:v14];
  return 1;
}

- (BOOL)internalUnregisterStreamInput:(id)input
{
  v21 = *MEMORY[0x1E69E9840];
  if (![(VCVideoCaptureServer *)self isValidStreamInput:?])
  {
    [VCVideoCaptureServer internalUnregisterStreamInput:input];
    return v15;
  }

  streamInputID = [input streamInputID];
  if (![(NSMutableDictionary *)self->_streamInputs objectForKeyedSubscript:streamInputID])
  {
    [VCVideoCaptureServer internalUnregisterStreamInput:];
    return v15;
  }

  if ([(NSMutableDictionary *)self->_streamInputs objectForKeyedSubscript:streamInputID]!= input)
  {
    [VCVideoCaptureServer internalUnregisterStreamInput:];
    return v15;
  }

  intValue = [streamInputID intValue];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  allKeys = [(NSMutableDictionary *)self->_streamInputCaptureSources allKeys];
  v8 = [allKeys countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = intValue;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(allKeys);
        }

        v13 = [(NSMutableDictionary *)self->_streamInputCaptureSources objectForKeyedSubscript:*(*(&v17 + 1) + 8 * v12)];
        if ([v13 streamInputID] == v10)
        {
          [input removeSink:v13];
          [v13 setDelegate:0];
        }

        ++v12;
      }

      while (v9 != v12);
      v9 = [allKeys countByEnumeratingWithState:&v17 objects:v16 count:16];
    }

    while (v9);
  }

  [(NSMutableDictionary *)self->_streamInputs setObject:0 forKeyedSubscript:streamInputID];
  return 1;
}

- (BOOL)registerStreamInput:(id)input
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  streamInputQueue = self->_streamInputQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__VCVideoCaptureServer_registerStreamInput___block_invoke;
  v6[3] = &unk_1E85F3E08;
  v6[5] = input;
  v6[6] = &v7;
  v6[4] = self;
  dispatch_sync(streamInputQueue, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __44__VCVideoCaptureServer_registerStreamInput___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) internalRegisterStreamInput:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)unregisterStreamInput:(id)input
{
  block[6] = *MEMORY[0x1E69E9840];
  streamInputQueue = self->_streamInputQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__VCVideoCaptureServer_unregisterStreamInput___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = input;
  dispatch_sync(streamInputQueue, block);
}

- (BOOL)shouldSendVideoAttributeCallback:(id)callback
{
  v35 = *MEMORY[0x1E69E9840];
  if (self->_pendingOrientationChange)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
LABEL_17:
      LOBYTE(v5) = 0;
      return v5;
    }

    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    v5 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      v23 = 136315650;
      v24 = v3;
      v25 = 2080;
      v26 = "[VCVideoCaptureServer shouldSendVideoAttributeCallback:]";
      v27 = 1024;
      v28 = 3532;
      v6 = "VCVideoCaptureServer [%s] %s:%d Should not callback. _pendingOrientationChange=YES";
      v7 = v4;
      v8 = 28;
LABEL_5:
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, &v23, v8);
      goto LABEL_17;
    }

    return v5;
  }

  if (![(VCVideoSource *)self->avCapture isPortraitResolutionCaptureActive])
  {
LABEL_18:
    LOBYTE(v5) = 1;
    return v5;
  }

  if ([callback orientation] && objc_msgSend(callback, "orientation") != 1)
  {
    if ([callback orientation] != 3 && objc_msgSend(callback, "orientation") != 2)
    {
      goto LABEL_18;
    }

    [callback ratio];
    v14 = v13;
    [callback ratio];
    if (v14 >= v15)
    {
      goto LABEL_18;
    }
  }

  else
  {
    [callback ratio];
    v11 = v10;
    [callback ratio];
    if (v11 <= v12)
    {
      goto LABEL_18;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() < 7)
  {
    goto LABEL_17;
  }

  v16 = VRTraceErrorLogLevelToCSTR();
  v17 = *MEMORY[0x1E6986650];
  v5 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    orientation = [callback orientation];
    [callback ratio];
    v20 = v19;
    [callback ratio];
    v23 = 136316418;
    v24 = v16;
    v25 = 2080;
    v26 = "[VCVideoCaptureServer shouldSendVideoAttributeCallback:]";
    v27 = 1024;
    v28 = 3546;
    v29 = 1024;
    v30 = orientation;
    v31 = 2048;
    v32 = v20;
    v33 = 2048;
    v34 = v21;
    v6 = "VCVideoCaptureServer [%s] %s:%d Should not callback. isPortraitResolutionCaptureActive=YES, orientation=%d, width=%.0f, height=%.0f";
    v7 = v17;
    v8 = 54;
    goto LABEL_5;
  }

  return v5;
}

- (BOOL)setLocalVideoAttributes:(id)attributes
{
  block[6] = *MEMORY[0x1E69E9840];
  if (attributes)
  {
    captureServerQueue = self->captureServerQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__VCVideoCaptureServer_setLocalVideoAttributes___block_invoke;
    block[3] = &unk_1E85F37F0;
    block[4] = self;
    block[5] = attributes;
    dispatch_async(captureServerQueue, block);
  }

  return attributes != 0;
}

void __48__VCVideoCaptureServer_setLocalVideoAttributes___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(a1 + 32) + 448);
      if (v4)
      {
        v5 = [objc_msgSend(v4 "description")];
      }

      else
      {
        v5 = "<nil>";
      }

      v6 = *(a1 + 40);
      if (v6)
      {
        v7 = [objc_msgSend(v6 "description")];
      }

      else
      {
        v7 = "<nil>";
      }

      *buf = 136316162;
      v31 = v2;
      v32 = 2080;
      v33 = "[VCVideoCaptureServer setLocalVideoAttributes:]_block_invoke";
      v34 = 1024;
      v35 = 3561;
      v36 = 2080;
      v37 = v5;
      v38 = 2080;
      v39 = v7;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d camera and orientation changed from %s to %s", buf, 0x30u);
    }
  }

  v8 = [*(*(a1 + 32) + 448) orientation];
  if (v8 != [*(a1 + 40) orientation])
  {
    [*(a1 + 32) notifyDeviceStateDelegatesWithOrientation:{objc_msgSend(*(a1 + 40), "orientation")}];
  }

  v9 = *(*(a1 + 32) + 304);
  if (v9 && ![v9 setOrientation:{objc_msgSend(*(a1 + 40), "orientation")}])
  {
    *(*(a1 + 32) + 464) = [*(a1 + 40) orientation];
    *(*(a1 + 32) + 460) = 1;
  }

  else
  {
    [*(*(a1 + 32) + 448) setOrientation:{objc_msgSend(*(a1 + 40), "orientation")}];
  }

  if ([*(a1 + 32) shouldSendVideoAttributeCallback:*(a1 + 40)])
  {
    [*(*(a1 + 32) + 448) ratio];
    if (v11 != *MEMORY[0x1E695F060] || v10 != *(MEMORY[0x1E695F060] + 8))
    {
      [*(*(a1 + 32) + 448) ratio];
      [*(a1 + 40) setRatio:?];
    }

    [*(a1 + 40) setFrameOrientationReference:{objc_msgSend(*(*(a1 + 32) + 448), "frameOrientationReference")}];
    v13 = *(*(a1 + 32) + 360);
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v13)
    {
      if (ErrorLogLevelForModule >= 8)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        v17 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v31 = v15;
            v32 = 2080;
            v33 = "[VCVideoCaptureServer setLocalVideoAttributes:]_block_invoke";
            v34 = 1024;
            v35 = 3584;
            _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d notifying app of video attributes change", buf, 0x1Cu);
          }
        }

        else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          __48__VCVideoCaptureServer_setLocalVideoAttributes___block_invoke_cold_1();
        }
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __48__VCVideoCaptureServer_setLocalVideoAttributes___block_invoke_318;
      block[3] = &unk_1E85F37F0;
      v29 = *(a1 + 32);
      dispatch_async(*(v29 + 272), block);
    }

    else
    {
      if (ErrorLogLevelForModule >= 8)
      {
        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x1E6986650];
        v20 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v31 = v18;
            v32 = 2080;
            v33 = "[VCVideoCaptureServer setLocalVideoAttributes:]_block_invoke_2";
            v34 = 1024;
            v35 = 3592;
            _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d notifying clients of video attributes change", buf, 0x1Cu);
          }
        }

        else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          __48__VCVideoCaptureServer_setLocalVideoAttributes___block_invoke_cold_2();
        }
      }

      [*(a1 + 32) dispatchedUpdateRemoteScreenAttributes:*(*(a1 + 32) + 724) forceUpdate:1];
      v21 = [*(a1 + 40) copyEncodedDictionary];
      v22 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v21, @"localVideoAttributes", 0}];
      v23 = *(*(a1 + 32) + 272);
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __48__VCVideoCaptureServer_setLocalVideoAttributes___block_invoke_322;
      v27[3] = &unk_1E85F3778;
      v27[4] = v22;
      dispatch_async(v23, v27);
    }

    EncodedCFDictionary = VideoAttributes_CreateEncodedCFDictionary(*(*(a1 + 32) + 448));
    pthread_mutex_lock((*(a1 + 32) + 480));
    v25 = [*(*(a1 + 32) + 448) camera];
    v26 = 392;
    if (!v25)
    {
      v26 = 384;
    }

    VCImageQueue_EnqueueAttributes(*(*(a1 + 32) + v26), EncodedCFDictionary);
    pthread_mutex_unlock((*(a1 + 32) + 480));
    if (EncodedCFDictionary)
    {
      CFRelease(EncodedCFDictionary);
    }
  }
}

uint64_t __48__VCVideoCaptureServer_setLocalVideoAttributes___block_invoke_318(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 360);

    return [v4 didChangeLocalVideoAttributes:v3];
  }

  return result;
}

uint64_t __48__VCVideoCaptureServer_setLocalVideoAttributes___block_invoke_322(uint64_t a1)
{
  v2 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];
  v3 = *(a1 + 32);

  return [v2 sendMessageAsync:"previewDidLocalVideoAttributesChange" arguments:v3];
}

- (id)localVideoAttributes
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__32;
  v10 = __Block_byref_object_dispose__32;
  v11 = 0;
  captureServerQueue = self->captureServerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__VCVideoCaptureServer_localVideoAttributes__block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(captureServerQueue, block);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __44__VCVideoCaptureServer_localVideoAttributes__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 40) + 8) + 40) = [VideoAttributes videoAttributesWithVideoAttributes:*(*(a1 + 32) + 448)];
  result = [*(*(*(a1 + 40) + 8) + 40) camera];
  if (result != 3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315650;
        v6 = v3;
        v7 = 2080;
        v8 = "[VCVideoCaptureServer localVideoAttributes]_block_invoke";
        v9 = 1024;
        v10 = 3627;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d VideoAttributes camera should be only used for remote. Setting videoAttributes.camera to VideoAttributeCameraInvalid for local", &v5, 0x1Cu);
      }
    }

    return [*(*(*(a1 + 40) + 8) + 40) setCamera:3];
  }

  return result;
}

uint64_t __VCVideoCaptureServer_CopyLocalVideoAttributes_block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 448) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)updateLocalAspectRatios:(int)ratios localScreenAspectRatio:(CGSize)ratio
{
  v35 = *MEMORY[0x1E69E9840];
  if (ratios > 1)
  {
    self->_localScreenLandscapeAspectRatio = ratio;
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    v11 = MEMORY[0x1E6986650];
    if (ErrorLogLevelForModule >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *v11;
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
      {
        width = self->_localScreenLandscapeAspectRatio.width;
        height = self->_localScreenLandscapeAspectRatio.height;
        v25 = 136316162;
        v26 = v12;
        v27 = 2080;
        v28 = "[VCVideoCaptureServer updateLocalAspectRatios:localScreenAspectRatio:]";
        v29 = 1024;
        v30 = 3664;
        v31 = 2048;
        v32 = width;
        v33 = 2048;
        v34 = height;
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d [AR_RX] localScreenLandscapeAspectRatio=(%f, %f)", &v25, 0x30u);
      }
    }

    if (self->_localScreenLandscapeAspectRatio.height / self->_localScreenLandscapeAspectRatio.width >= 0.666666667)
    {
      localScreenLandscapeAspectRatio = self->_localScreenLandscapeAspectRatio;
    }

    else
    {
      localScreenLandscapeAspectRatio = xmmword_1DBD4F700;
    }

    self->_localExpectedLandscapeAspectRatio = localScreenLandscapeAspectRatio;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      v18 = *v11;
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
      {
        v23 = self->_localExpectedLandscapeAspectRatio.width;
        v24 = self->_localExpectedLandscapeAspectRatio.height;
        v25 = 136316162;
        v26 = v22;
        v27 = 2080;
        v28 = "[VCVideoCaptureServer updateLocalAspectRatios:localScreenAspectRatio:]";
        v29 = 1024;
        v30 = 3675;
        v31 = 2048;
        v32 = v23;
        v33 = 2048;
        v34 = v24;
        v21 = "VCVideoCaptureServer [%s] %s:%d [AR_RX] localExpectedLandscapeAspectRatio=(%f, %f)";
        goto LABEL_20;
      }
    }
  }

  else
  {
    self->_localScreenPortraitAspectRatio = ratio;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = self->_localScreenPortraitAspectRatio.width;
        v8 = self->_localScreenPortraitAspectRatio.height;
        v25 = 136316162;
        v26 = v5;
        v27 = 2080;
        v28 = "[VCVideoCaptureServer updateLocalAspectRatios:localScreenAspectRatio:]";
        v29 = 1024;
        v30 = 3650;
        v31 = 2048;
        v32 = v7;
        v33 = 2048;
        v34 = v8;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d [AR_RX] localScreenPortraitAspectRatio=(%f, %f)", &v25, 0x30u);
      }
    }

    if (self->_localScreenPortraitAspectRatio.width / self->_localScreenPortraitAspectRatio.height >= 0.666666667)
    {
      localScreenPortraitAspectRatio = self->_localScreenPortraitAspectRatio;
    }

    else
    {
      localScreenPortraitAspectRatio = xmmword_1DBD45660;
    }

    self->_localExpectedPortraitAspectRatio = localScreenPortraitAspectRatio;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v19 = self->_localExpectedPortraitAspectRatio.width;
        v20 = self->_localExpectedPortraitAspectRatio.height;
        v25 = 136316162;
        v26 = v17;
        v27 = 2080;
        v28 = "[VCVideoCaptureServer updateLocalAspectRatios:localScreenAspectRatio:]";
        v29 = 1024;
        v30 = 3661;
        v31 = 2048;
        v32 = v19;
        v33 = 2048;
        v34 = v20;
        v21 = "VCVideoCaptureServer [%s] %s:%d [AR_RX] localExpectedPortraitAspectRatio=(%f, %f)";
LABEL_20:
        _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, v21, &v25, 0x30u);
      }
    }
  }
}

- (BOOL)setLocalScreenAttributes:(id)attributes
{
  block[6] = *MEMORY[0x1E69E9840];
  [attributes ratio];
  if (v5 == 0.0)
  {
    return 0;
  }

  [attributes ratio];
  if (v6 == 0.0)
  {
    return 0;
  }

  variablesQueue = self->variablesQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__VCVideoCaptureServer_setLocalScreenAttributes___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = attributes;
  dispatch_barrier_async(variablesQueue, block);
  return 1;
}

void __49__VCVideoCaptureServer_setLocalScreenAttributes___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) orientation];
  [*(a1 + 40) ratio];
  [v2 updateLocalAspectRatios:v3 localScreenAspectRatio:?];
  v4 = *(*(a1 + 32) + 360);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v4)
  {
    if (ErrorLogLevelForModule >= 8)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      v8 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v18 = v6;
          v19 = 2080;
          v20 = "[VCVideoCaptureServer setLocalScreenAttributes:]_block_invoke";
          v21 = 1024;
          v22 = 3697;
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d notifying app of video attributes change", buf, 0x1Cu);
        }
      }

      else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        __49__VCVideoCaptureServer_setLocalScreenAttributes___block_invoke_cold_1();
      }
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__VCVideoCaptureServer_setLocalScreenAttributes___block_invoke_324;
    block[3] = &unk_1E85F37F0;
    dispatch_async(*(*(a1 + 32) + 272), block);
  }

  else
  {
    if (ErrorLogLevelForModule >= 8)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      v11 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v18 = v9;
          v19 = 2080;
          v20 = "[VCVideoCaptureServer setLocalScreenAttributes:]_block_invoke_2";
          v21 = 1024;
          v22 = 3705;
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d notifying clients of video attributes change", buf, 0x1Cu);
        }
      }

      else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __49__VCVideoCaptureServer_setLocalScreenAttributes___block_invoke_cold_2();
      }
    }

    v12 = [*(a1 + 40) copyEncodedDictionary];
    v13 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v12, @"localVideoAttributes", 0}];
    v14 = *(*(a1 + 32) + 272);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __49__VCVideoCaptureServer_setLocalScreenAttributes___block_invoke_328;
    v15[3] = &unk_1E85F3778;
    v15[4] = v13;
    dispatch_async(v14, v15);
  }
}

uint64_t __49__VCVideoCaptureServer_setLocalScreenAttributes___block_invoke_324(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 360);

    return [v4 didChangeLocalScreenAttributes:v3];
  }

  return result;
}

uint64_t __49__VCVideoCaptureServer_setLocalScreenAttributes___block_invoke_328(uint64_t a1)
{
  v2 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];
  v3 = *(a1 + 32);

  return [v2 sendMessageAsync:"previewDidLocalScreenAttributesChange" arguments:v3];
}

- (tagVCCameraAspectRatiosARXR)localCameraVideoAspectRatios
{
  v19 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x6010000000;
  v14 = &unk_1DBF04739;
  *&v4 = -1;
  *(&v4 + 1) = -1;
  v15 = v4;
  v16 = v4;
  v17 = v4;
  v18 = v4;
  variablesQueue = self->variablesQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__VCVideoCaptureServer_localCameraVideoAspectRatios__block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = self;
  block[5] = &v11;
  dispatch_sync(variablesQueue, block);
  v6 = v12;
  v7 = v12[3];
  retstr->var0.portrait = v12[2];
  retstr->var0.landscape = v7;
  v8 = v6[5];
  retstr->var1.portrait = v6[4];
  retstr->var1.landscape = v8;
  _Block_object_dispose(&v11, 8);
  return result;
}

__n128 __52__VCVideoCaptureServer_localCameraVideoAspectRatios__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 32) = *(*(a1 + 32) + 136);
  *(*(*(a1 + 40) + 8) + 48) = *(*(a1 + 32) + 152);
  *(*(*(a1 + 40) + 8) + 64) = *(*(a1 + 32) + 168);
  result = *(*(a1 + 32) + 184);
  *(*(*(a1 + 40) + 8) + 80) = result;
  return result;
}

- (CGSize)localScreenRatioForScreenOrientation:(int)orientation
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3010000000;
  v13 = &unk_1DBF04739;
  v14 = *MEMORY[0x1E695F060];
  variablesQueue = self->variablesQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__VCVideoCaptureServer_localScreenRatioForScreenOrientation___block_invoke;
  v8[3] = &unk_1E85F61A8;
  orientationCopy = orientation;
  v8[4] = self;
  v8[5] = &v10;
  dispatch_sync(variablesQueue, v8);
  v4 = v11[4];
  v5 = v11[5];
  _Block_object_dispose(&v10, 8);
  v6 = v4;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

__n128 __61__VCVideoCaptureServer_localScreenRatioForScreenOrientation___block_invoke(uint64_t a1)
{
  v1 = 152;
  if (*(a1 + 48) < 2u)
  {
    v1 = 136;
  }

  result = *(*(a1 + 32) + v1);
  *(*(*(a1 + 40) + 8) + 32) = result;
  return result;
}

- (CGSize)localExpectedRatioForScreenOrientation:(int)orientation
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3010000000;
  v13 = &unk_1DBF04739;
  v14 = *MEMORY[0x1E695F060];
  variablesQueue = self->variablesQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__VCVideoCaptureServer_localExpectedRatioForScreenOrientation___block_invoke;
  v8[3] = &unk_1E85F61A8;
  orientationCopy = orientation;
  v8[4] = self;
  v8[5] = &v10;
  dispatch_sync(variablesQueue, v8);
  v4 = v11[4];
  v5 = v11[5];
  _Block_object_dispose(&v10, 8);
  v6 = v4;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

__n128 __63__VCVideoCaptureServer_localExpectedRatioForScreenOrientation___block_invoke(uint64_t a1)
{
  v1 = 184;
  if (*(a1 + 48) < 2u)
  {
    v1 = 168;
  }

  result = *(*(a1 + 32) + v1);
  *(*(*(a1 + 40) + 8) + 32) = result;
  return result;
}

- (id)localScreenAttributesForVideoAttributes:(id)attributes
{
  if (!attributes)
  {
    return 0;
  }

  v4 = [VideoAttributes videoAttributesWithVideoAttributes:?];
  [(VCVideoCaptureServer *)self localScreenRatioForScreenOrientation:[(VideoAttributes *)v4 orientation]];
  [(VideoAttributes *)v4 setRatio:?];
  return v4;
}

- (id)copyLocalScreenAttributesForVideoAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (attributes)
  {
    v5 = objc_autoreleasePoolPush();
    attributesCopy = [VideoAttributes videoAttributesWithVideoAttributes:attributesCopy];
    objc_autoreleasePoolPop(v5);
    [(VCVideoCaptureServer *)self localScreenRatioForScreenOrientation:[(VideoAttributes *)attributesCopy orientation]];
    [(VideoAttributes *)attributesCopy setRatio:?];
  }

  return attributesCopy;
}

- (void)handleCaptureSourcePositionDidChange:(BOOL)change
{
  v6 = *MEMORY[0x1E69E9840];
  captureClientQueue = self->captureClientQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__VCVideoCaptureServer_handleCaptureSourcePositionDidChange___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  changeCopy = change;
  dispatch_async(captureClientQueue, block);
}

uint64_t __61__VCVideoCaptureServer_handleCaptureSourcePositionDidChange___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 104);
  result = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 captureSourcePositionDidChange:*(a1 + 40)];
        }

        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (void)centerStageEnabledDidChange:(BOOL)change
{
  v6 = *MEMORY[0x1E69E9840];
  captureClientQueue = self->captureClientQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__VCVideoCaptureServer_centerStageEnabledDidChange___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  changeCopy = change;
  dispatch_async(captureClientQueue, block);
}

uint64_t __52__VCVideoCaptureServer_centerStageEnabledDidChange___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 104);
  result = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 captureSourceCenterStageEnabledDidChange:*(a1 + 40)];
        }

        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (void)portraitBlurEnabledDidChange:(BOOL)change
{
  v6 = *MEMORY[0x1E69E9840];
  captureClientQueue = self->captureClientQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__VCVideoCaptureServer_portraitBlurEnabledDidChange___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  changeCopy = change;
  dispatch_async(captureClientQueue, block);
}

uint64_t __53__VCVideoCaptureServer_portraitBlurEnabledDidChange___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 104);
  result = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 captureSourcePortraitBlurEnabledDidChange:*(a1 + 40)];
        }

        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (void)captureSourceVideoFeatureStatusDidChange:(tagVCVideoCaptureFeatureStatus)change
{
  v6 = *MEMORY[0x1E69E9840];
  captureClientQueue = self->captureClientQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__VCVideoCaptureServer_captureSourceVideoFeatureStatusDidChange___block_invoke;
  block[3] = &unk_1E85F7440;
  block[4] = self;
  changeCopy = change;
  dispatch_async(captureClientQueue, block);
}

uint64_t __65__VCVideoCaptureServer_captureSourceVideoFeatureStatusDidChange___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(*(a1 + 32) + 104);
  result = [v3 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          v1 = v1 & 0xFFFF000000000000 | *(a1 + 40) | (*(a1 + 44) << 32);
          [v8 updateCaptureSourceVideoFeatureStatus:v1];
        }

        ++v7;
      }

      while (v5 != v7);
      result = [v3 countByEnumeratingWithState:&v10 objects:v9 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

- (void)reactionDidStart:(id)start
{
  block[6] = *MEMORY[0x1E69E9840];
  captureClientQueue = self->captureClientQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__VCVideoCaptureServer_reactionDidStart___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = start;
  dispatch_async(captureClientQueue, block);
}

uint64_t __41__VCVideoCaptureServer_reactionDidStart___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 104);
  result = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 reactionDidStart:*(a1 + 40)];
        }

        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (void)didStopReacting
{
  v3[5] = *MEMORY[0x1E69E9840];
  captureClientQueue = self->captureClientQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39__VCVideoCaptureServer_didStopReacting__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(captureClientQueue, v3);
}

uint64_t __39__VCVideoCaptureServer_didStopReacting__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = *(*(a1 + 32) + 104);
  result = [v1 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v8 + 1) + 8 * v5);
        if (objc_opt_respondsToSelector())
        {
          [v6 didStopReacting];
        }

        ++v5;
      }

      while (v3 != v5);
      result = [v1 countByEnumeratingWithState:&v8 objects:v7 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

- (void)didSelectUnbinnedCameraFormat
{
  v3[5] = *MEMORY[0x1E69E9840];
  captureClientQueue = self->captureClientQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__VCVideoCaptureServer_didSelectUnbinnedCameraFormat__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(captureClientQueue, v3);
}

uint64_t __53__VCVideoCaptureServer_didSelectUnbinnedCameraFormat__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = *(*(a1 + 32) + 104);
  result = [v1 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v8 + 1) + 8 * v5);
        if (objc_opt_respondsToSelector())
        {
          [v6 captureSourceDidSelectUnbinnedCameraFormat];
        }

        ++v5;
      }

      while (v3 != v5);
      result = [v1 countByEnumeratingWithState:&v8 objects:v7 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v31 = *MEMORY[0x1E69E9840];
  if ([path isEqualToString:{@"systemPreferredCamera", object, change, context}])
  {
    v8 = [change objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    if (v8)
    {
      v9 = v8;
      if (([v8 isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}] & 1) == 0)
      {
        uniqueID = [v9 uniqueID];
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v16 = VRTraceErrorLogLevelToCSTR();
          v17 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v23 = 136315906;
            v24 = v16;
            v25 = 2080;
            v26 = "[VCVideoCaptureServer observeValueForKeyPath:ofObject:change:context:]";
            v27 = 1024;
            v28 = 3866;
            v29 = 2112;
            v30 = uniqueID;
            _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d receiving updated systemPreferredCamera=%@", &v23, 0x26u);
          }
        }

        if (self->_followSystemCamera)
        {
          [(VCVideoCaptureServer *)self setCaptureCameraWithToken:[(VCVideoSourceTokenManager *)self->_tokenManager tokenForDeviceName:uniqueID sourceType:1]];
          if (VRTraceGetErrorLogLevelForModule() < 7)
          {
            return;
          }

          v18 = VRTraceErrorLogLevelToCSTR();
          v19 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          followSystemCamera = self->_followSystemCamera;
          v23 = 136315906;
          v24 = v18;
          v25 = 2080;
          v26 = "[VCVideoCaptureServer observeValueForKeyPath:ofObject:change:context:]";
          v27 = 1024;
          v28 = 3870;
          v29 = 1024;
          LODWORD(v30) = followSystemCamera;
          v12 = "VCVideoCaptureServer [%s] %s:%d updating local camera because _followSystemCamera=%d";
        }

        else
        {
          if (VRTraceGetErrorLogLevelForModule() < 7)
          {
            return;
          }

          v21 = VRTraceErrorLogLevelToCSTR();
          v19 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          v22 = self->_followSystemCamera;
          v23 = 136315906;
          v24 = v21;
          v25 = 2080;
          v26 = "[VCVideoCaptureServer observeValueForKeyPath:ofObject:change:context:]";
          v27 = 1024;
          v28 = 3872;
          v29 = 1024;
          LODWORD(v30) = v22;
          v12 = "VCVideoCaptureServer [%s] %s:%d ignoring because _followSystemCamera=%d";
        }

        v13 = v19;
        v14 = 34;
        goto LABEL_18;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315650;
        v24 = v10;
        v25 = 2080;
        v26 = "[VCVideoCaptureServer observeValueForKeyPath:ofObject:change:context:]";
        v27 = 1024;
        v28 = 3875;
        v12 = "VCVideoCaptureServer [%s] %s:%d receiving updated systemPreferredCamera=NULL";
        v13 = v11;
        v14 = 28;
LABEL_18:
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, &v23, v14);
      }
    }
  }
}

- (void)dispatchedSetCaptureCameraWithToken:(_VCVideoSourceToken)token
{
  v32 = *MEMORY[0x1E69E9840];
  var1 = token.var0.var1;
  v6 = [(VCVideoSourceTokenManager *)self->_tokenManager deviceNameForToken:token.var0.var1];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v23 = v7;
      v24 = 2080;
      v25 = "[VCVideoCaptureServer dispatchedSetCaptureCameraWithToken:]";
      v26 = 1024;
      v27 = 3884;
      v28 = 1024;
      var0 = token.var0.var0;
      v30 = 2112;
      v31 = v6;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d VCVideoSourceToken=0x%x, cameraUID=%@", buf, 0x2Cu);
    }
  }

  if (v6)
  {
    v9 = [(VCVideoSource *)self->avCapture configureCaptureWithToken:var1];
    if ((v9 & 0x80000000) == 0 || (v10 = v9, v9 == -2146893775))
    {
      v11 = +[VCHardwareSettings preferPresentationTimestamp];
      if (v11)
      {
        if (objc_opt_respondsToSelector())
        {
          LOBYTE(v11) = [(VCVideoSource *)self->avCapture isInternalCamera];
        }

        else
        {
          LOBYTE(v11) = 0;
        }
      }

      self->_preferPresentationTimeStamp = v11;
      self->_currentVideoSourceToken = token;
      self->_firstPreviewFrameReceived = 0;
      v12 = objc_opt_respondsToSelector();
      if (v12)
      {
        currentVideoFeatureStatus = [(VCVideoSource *)self->avCapture currentVideoFeatureStatus];
      }

      else
      {
        currentVideoFeatureStatus = 0;
      }

      captureClientQueue = self->captureClientQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __60__VCVideoCaptureServer_dispatchedSetCaptureCameraWithToken___block_invoke;
      block[3] = &unk_1E85F8D68;
      block[4] = self;
      v19 = v12 & 1;
      v20 = currentVideoFeatureStatus;
      v21 = WORD2(currentVideoFeatureStatus);
      dispatch_async(captureClientQueue, block);
      v15 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v6, @"localCameraUIDString", 0}];
      delegateNotificationQueue = self->delegateNotificationQueue;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __60__VCVideoCaptureServer_dispatchedSetCaptureCameraWithToken___block_invoke_2;
      v17[3] = &unk_1E85F3778;
      v17[4] = v15;
      dispatch_async(delegateNotificationQueue, v17);
    }

    else
    {
      [(VCVideoCaptureServer *)self handleAVCaptureError:v9 domain:@"avCaptureSetCameraWithUIDFail"];
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCVideoCaptureServer dispatchedSetCaptureCameraWithToken:];
    }
  }
}

uint64_t __60__VCVideoCaptureServer_dispatchedSetCaptureCameraWithToken___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(*(a1 + 32) + 104);
  result = [v3 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 captureSource1080pAvailabilityDidChange:*(*(a1 + 32) + 720)];
        }

        if (*(a1 + 40) == 1 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v1 = v1 & 0xFFFF000000000000 | *(a1 + 41) | (*(a1 + 45) << 32);
          [v8 updateCaptureSourceVideoFeatureStatus:v1];
        }

        ++v7;
      }

      while (v5 != v7);
      result = [v3 countByEnumeratingWithState:&v10 objects:v9 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t __60__VCVideoCaptureServer_dispatchedSetCaptureCameraWithToken___block_invoke_2(uint64_t a1)
{
  v2 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];
  v3 = *(a1 + 32);

  return [v2 sendMessageAsync:"previewCameraUIDChanged" arguments:v3];
}

- (BOOL)setCaptureCameraWithToken:(_VCVideoSourceToken)token
{
  v7 = *MEMORY[0x1E69E9840];
  captureServerQueue = self->captureServerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__VCVideoCaptureServer_setCaptureCameraWithToken___block_invoke;
  block[3] = &unk_1E85F38B8;
  block[4] = self;
  var0 = token.var0.var0;
  dispatch_async(captureServerQueue, block);
  return 1;
}

- (int)setBoundsForRemoteLayerWithFacing:(BOOL)facing frameRect:(CGRect)rect fenceHandle:(id)handle
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  facingCopy = facing;
  v34 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_enqueueLock);
  v12 = 392;
  if (facingCopy)
  {
    v12 = 384;
  }

  v13 = *(&self->super.isa + v12);
  if (v13)
  {
    EncodedCFDictionary = VideoAttributes_CreateEncodedCFDictionary(self->_localVideoAttributes);
    VCImageQueue_EnqueueAttributes(v13, EncodedCFDictionary);
    if (EncodedCFDictionary)
    {
      CFRelease(EncodedCFDictionary);
    }

    if (VCImageQueue_setCALayerSize(v13, handle))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v17 = [objc_msgSend(v13 "description")];
          v35.origin.x = x;
          v35.origin.y = y;
          v35.size.width = width;
          v35.size.height = height;
          v22 = 136316418;
          v23 = v15;
          v24 = 2080;
          v25 = "[VCVideoCaptureServer setBoundsForRemoteLayerWithFacing:frameRect:fenceHandle:]";
          v26 = 1024;
          v27 = 3973;
          v28 = 2080;
          v29 = v17;
          v30 = 2112;
          selfCopy = NSStringFromRect(v35);
          v32 = 2048;
          handleCopy = handle;
          _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d VCVideoCaptureServer: queue=%s --> set layer bounds=%@ caFenceHandle=%p", &v22, 0x3Au);
        }
      }

      LODWORD(v13) = 0;
    }

    else
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCVideoCaptureServer setBoundsForRemoteLayerWithFacing:frameRect:fenceHandle:];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v18 = [(VCVideoCaptureServer *)self performSelector:sel_logPrefix];
        }

        else
        {
          v18 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v19 = VRTraceErrorLogLevelToCSTR();
          v20 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v22 = 136316418;
            v23 = v19;
            v24 = 2080;
            v25 = "[VCVideoCaptureServer setBoundsForRemoteLayerWithFacing:frameRect:fenceHandle:]";
            v26 = 1024;
            v27 = 3971;
            v28 = 2112;
            v29 = v18;
            v30 = 2048;
            selfCopy = self;
            v32 = 2048;
            handleCopy = v13;
            _os_log_error_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_ERROR, "VCVideoCaptureServer [%s] %s:%d %@(%p) Fail to set layer size for queue=%p", &v22, 0x3Au);
          }
        }
      }

      LODWORD(v13) = 4;
    }
  }

  pthread_mutex_unlock(&self->_enqueueLock);
  return v13;
}

- (unsigned)setLocalVideoDestination:(id)destination facing:(BOOL)facing
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = *(MEMORY[0x1E695F058] + 16);
  v9 = *MEMORY[0x1E695F058];
  v12 = 0;
  v11 = 0xAAAAAAAAAAAA0000;
  destinationCopy = destination;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  LOBYTE(v7) = facing;
  v8 = &v12;
  v10 = v4;
  return [(VCVideoCaptureServer *)self setLocalVideoDestination:&destinationCopy];
}

- (unsigned)setLocalVideoDestination:(id *)destination
{
  v47 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCVideoCaptureServer-setLocalVideoDestination");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      var0 = destination->var0;
      var1 = destination->var1;
      v9 = *destination->var2;
      v10 = NSStringFromRect(destination->var3);
      var4 = destination->var4;
      var5 = destination->var5;
      *buf = 136317186;
      v32 = v5;
      v33 = 2080;
      v34 = "[VCVideoCaptureServer setLocalVideoDestination:]";
      v35 = 1024;
      v36 = 3995;
      v37 = 2048;
      *v38 = var0;
      *&v38[8] = 1024;
      *v39 = var1;
      *&v39[4] = 1024;
      v40 = v9;
      v41 = 2112;
      v42 = v10;
      v43 = 1024;
      v44 = var4;
      v45 = 1024;
      v46 = var5;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d @:@ VCVideoCaptureServer-setLocalVideoDestination layer=%p front=%d layerHostMode=%d frameRect=%@ resetImageQueue=%d reconnectLayer=%d", buf, 0x48u);
    }
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  if (destination && (var2 = destination->var2) != 0)
  {
    v26 = *var2;
    captureServerQueue = self->captureServerQueue;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __49__VCVideoCaptureServer_setLocalVideoDestination___block_invoke;
    v22[3] = &unk_1E85F8D90;
    v22[4] = self;
    v22[5] = &v23;
    v22[6] = &v27;
    v22[7] = destination;
    dispatch_sync(captureServerQueue, v22);
    *destination->var2 = *(v24 + 24);
    MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCVideoCaptureServer-setLocalVideoDestination");
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(v28 + 6);
        v18 = destination->var1;
        v19 = *destination->var2;
        *buf = 136316418;
        v32 = v15;
        v33 = 2080;
        v34 = "[VCVideoCaptureServer setLocalVideoDestination:]";
        v35 = 1024;
        v36 = 4041;
        v37 = 1024;
        *v38 = v17;
        *&v38[4] = 1024;
        *&v38[6] = v18;
        *v39 = 1024;
        *&v39[2] = v19;
        _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d @:@ VCVideoCaptureServer-setLocalVideoDestination previewSlot=%u, front=%d layerHostMode=%d", buf, 0x2Eu);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCVideoCaptureServer setLocalVideoDestination:];
    }
  }

  v20 = *(v28 + 6);
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
  return v20;
}

uint64_t __49__VCVideoCaptureServer_setLocalVideoDestination___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((*(a1 + 32) + 480));
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  if (*(v2 + 8) == 1)
  {
    v4 = *(v3 + 384);
    if (*(v2 + 57))
    {
      v5 = 400;
LABEL_6:
      *(*(*(a1 + 40) + 8) + 24) = *(v3 + v5);
      goto LABEL_8;
    }
  }

  else
  {
    v4 = *(v3 + 392);
    if (*(v2 + 57))
    {
      v5 = 401;
      goto LABEL_6;
    }
  }

  v6 = [(VCImageQueue *)v4 isLayerHostMode];
  v2 = *(a1 + 56);
  if (**(v2 + 16) != v6)
  {

    v2 = *(a1 + 56);
    goto LABEL_15;
  }

LABEL_8:
  if (v4)
  {
    if (*(*(*(a1 + 40) + 8) + 24) == 1 && (VCImageQueue_setCALayerSize(v4, 0) & 1) == 0)
    {
      if (objc_opt_class() == *(a1 + 32))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            __49__VCVideoCaptureServer_setLocalVideoDestination___block_invoke_cold_1();
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v7 = [*(a1 + 32) performSelector:sel_logPrefix];
        }

        else
        {
          v7 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v18 = VRTraceErrorLogLevelToCSTR();
          v19 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v21 = *(a1 + 32);
            *v22 = 136316418;
            *&v22[4] = v18;
            *&v22[12] = 2080;
            *&v22[14] = "[VCVideoCaptureServer setLocalVideoDestination:]_block_invoke";
            *&v22[22] = 1024;
            LODWORD(v23) = 4034;
            WORD2(v23) = 2112;
            *(&v23 + 6) = v7;
            HIWORD(v23) = 2048;
            v24 = v21;
            v25 = 2048;
            v26 = v4;
            _os_log_error_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_ERROR, "VCVideoCaptureServer [%s] %s:%d %@(%p) Fail to set layer size for queue=%p", v22, 0x3Au);
          }
        }
      }
    }

    goto LABEL_34;
  }

LABEL_15:
  *v22 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = -1;
  *(&v8 + 1) = -1;
  *&v22[8] = v8;
  v23 = v8;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  v9 = *(a1 + 32);
  v22[0] = *(*(*(a1 + 40) + 8) + 24);
  *&v22[8] = *(v2 + 24);
  v10 = *(v2 + 40);
  LOBYTE(v24) = 1;
  v23 = v10;
  BYTE1(v24) = *(v9 + 431);
  HIDWORD(v24) = *(v2 + 8) ^ 1;
  v11 = [[VCImageQueue alloc] initWithFrameRate:30 imageQueueProtected:0 vcImageQueueConfig:v22];
  v4 = v11;
  v12 = 392;
  if (*(*(a1 + 56) + 8))
  {
    v12 = 384;
  }

  v13 = 400;
  if (!*(*(a1 + 56) + 8))
  {
    v13 = 401;
  }

  *(*(a1 + 32) + v12) = v11;
  *(*(a1 + 32) + v13) = *(*(*(a1 + 40) + 8) + 24);
  EncodedCFDictionary = VideoAttributes_CreateEncodedCFDictionary(*(*(a1 + 32) + 448));
  VCImageQueue_EnqueueAttributes(v4, EncodedCFDictionary);
  if (EncodedCFDictionary)
  {
    CFRelease(EncodedCFDictionary);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (*(*(a1 + 56) + 8))
      {
        v17 = "front";
      }

      else
      {
        v17 = "back";
      }

      *buf = 136316162;
      v28 = v15;
      v29 = 2080;
      v30 = "[VCVideoCaptureServer setLocalVideoDestination:]_block_invoke";
      v31 = 1024;
      v32 = 4031;
      v33 = 2080;
      v34 = v17;
      v35 = 2112;
      v36 = v4;
      _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d camera=%5s, queueToUse=[%@]", buf, 0x30u);
    }
  }

LABEL_34:
  *(*(*(a1 + 48) + 8) + 24) = [(VCImageQueue *)v4 setVideoDestination:**(a1 + 56), *v22, *&v22[8], v23, v24];
  return pthread_mutex_unlock((*(a1 + 32) + 480));
}

- (void)beginPreviewToPIPAnimation
{
  v13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315650;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCVideoCaptureServer beginPreviewToPIPAnimation]";
      v11 = 1024;
      v12 = 4047;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d ", &v7, 0x1Cu);
    }
  }

  if (self->pendingWidth == 1280 && self->pendingHeight == 720)
  {
    [self->_localVideoAttributes ratio];
    if (v5 == 768.0)
    {
      [self->_localVideoAttributes ratio];
      if (v6 == 1024.0)
      {
        self->resize = 1;
      }
    }
  }
}

- (void)endPreviewToPIPAnimation
{
  v11 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = v3;
      v7 = 2080;
      v8 = "[VCVideoCaptureServer endPreviewToPIPAnimation]";
      v9 = 1024;
      v10 = 4055;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d ", &v5, 0x1Cu);
    }
  }

  [(VCVideoCaptureServer *)self changeCameraToPendingSettingsWithReset:1];
}

- (void)beginPIPToPreviewAnimation
{
  v11 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = v3;
      v7 = 2080;
      v8 = "[VCVideoCaptureServer beginPIPToPreviewAnimation]";
      v9 = 1024;
      v10 = 4066;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d ", &v5, 0x1Cu);
    }
  }

  [(VCVideoCaptureServer *)self changeCameraToPendingSettingsWithReset:0];
}

- (void)endPIPToPreviewAnimation
{
  v11 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = v3;
      v7 = 2080;
      v8 = "[VCVideoCaptureServer endPIPToPreviewAnimation]";
      v9 = 1024;
      v10 = 4077;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d ", &v5, 0x1Cu);
    }
  }

  [(VCVideoCaptureServer *)self resetCameraToPreviewSettingsForced:1];
}

- (BOOL)supportsPortraitResolution
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  avCapture = self->avCapture;

  return [(VCVideoSource *)avCapture supportsPortraitResolution];
}

- (void)setCameraPerClientRequest:(id)request
{
  v23 = *MEMORY[0x1E69E9840];
  if (+[VCHardwareSettings supportsFrontCameraFullBleedCapture](VCHardwareSettings, "supportsFrontCameraFullBleedCapture") && [request isEqualToString:@"com.apple.avfoundation.avcapturedevice.built-in_video:4"] && objc_msgSend(MEMORY[0x1E69870A0], "deviceWithUniqueID:", @"com.apple.avfoundation.avcapturedevice.built-in_video:8"))
  {
    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      request = @"com.apple.avfoundation.avcapturedevice.built-in_video:8";
    }

    else
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      request = @"com.apple.avfoundation.avcapturedevice.built-in_video:8";
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136315906;
        v16 = v5;
        v17 = 2080;
        v18 = "[VCVideoCaptureServer setCameraPerClientRequest:]";
        v19 = 1024;
        v20 = 4101;
        v21 = 2112;
        v22 = @"com.apple.avfoundation.avcapturedevice.built-in_video:8";
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d Use camera=%@ when available", &v15, 0x26u);
      }
    }
  }

  if ([MEMORY[0x1E69870A0] deviceWithUniqueID:request])
  {
    if (self->_followSystemCamera)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          followSystemCamera = self->_followSystemCamera;
          v15 = 136315906;
          v16 = v7;
          v17 = 2080;
          v18 = "[VCVideoCaptureServer setCameraPerClientRequest:]";
          v19 = 1024;
          v20 = 4109;
          v21 = 1024;
          LODWORD(v22) = followSystemCamera;
          v10 = "VCVideoCaptureServer [%s] %s:%d Not setting yet because _followSystemCamera=%d, instead wait for KVO notification";
          v11 = v8;
          v12 = 34;
LABEL_16:
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, &v15, v12);
        }
      }
    }

    else
    {
      [(VCVideoCaptureServer *)self setCaptureCameraWithToken:[(VCVideoSourceTokenManager *)self->_tokenManager tokenForDeviceName:request sourceType:1]];
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315650;
      v16 = v13;
      v17 = 2080;
      v18 = "[VCVideoCaptureServer setCameraPerClientRequest:]";
      v19 = 1024;
      v20 = 4105;
      v10 = "VCVideoCaptureServer [%s] %s:%d ignoring because captureDevice is nil";
      v11 = v14;
      v12 = 28;
      goto LABEL_16;
    }
  }
}

- (void)setSystemPreferredAsLocalCamera
{
  v18 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->captureServerQueue);
  systemPreferredCamera = [MEMORY[0x1E69870A0] systemPreferredCamera];
  if (systemPreferredCamera)
  {
    uniqueID = [systemPreferredCamera uniqueID];
    v5.var0.var0 = [(VCVideoSourceTokenManager *)self->_tokenManager tokenForDeviceName:uniqueID sourceType:1];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315906;
        v11 = v6;
        v12 = 2080;
        v13 = "[VCVideoCaptureServer setSystemPreferredAsLocalCamera]";
        v14 = 1024;
        v15 = 4127;
        v16 = 2112;
        v17 = uniqueID;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d systemPreferredCamera=%@", &v10, 0x26u);
      }
    }

    [(VCVideoCaptureServer *)self dispatchedSetCaptureCameraWithToken:v5.var0.var1];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315650;
      v11 = v8;
      v12 = 2080;
      v13 = "[VCVideoCaptureServer setSystemPreferredAsLocalCamera]";
      v14 = 1024;
      v15 = 4122;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d systemPreferredCamera is nil", &v10, 0x1Cu);
    }
  }
}

- (void)startPreviewWithWidth:(int)width height:(int)height frameRate:(int)rate
{
  v14 = *MEMORY[0x1E69E9840];
  [(VCVideoCaptureServer *)self reconnectClientLayerFront:1];
  [(VCVideoCaptureServer *)self reconnectClientLayerFront:0];
  captureServerQueue = self->captureServerQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__VCVideoCaptureServer_startPreviewWithWidth_height_frameRate___block_invoke;
  v10[3] = &unk_1E85F3908;
  v10[4] = self;
  widthCopy = width;
  heightCopy = height;
  rateCopy = rate;
  dispatch_async(captureServerQueue, v10);
}

void __63__VCVideoCaptureServer_startPreviewWithWidth_height_frameRate___block_invoke(uint64_t a1)
{
  v52 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = *(*(a1 + 32) + 426);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v3 == 1)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v42 = v5;
        v43 = 2080;
        v44 = "[VCVideoCaptureServer startPreviewWithWidth:height:frameRate:]_block_invoke";
        v45 = 1024;
        v46 = 4143;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d Preview is already running", buf, 0x1Cu);
      }
    }

    [*v2 updatePreviewState];
    return;
  }

  if (ErrorLogLevelForModule >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = *v2;
      v10 = *(*v2 + 108);
      *buf = 136316162;
      v42 = v7;
      v43 = 2080;
      v44 = "[VCVideoCaptureServer startPreviewWithWidth:height:frameRate:]_block_invoke";
      v45 = 1024;
      v46 = 4147;
      v47 = 2048;
      *v48 = v9;
      *&v48[8] = 1024;
      *v49 = v10;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d self %p, current sourceToken=0x%x", buf, 0x2Cu);
    }
  }

  pthread_mutex_lock((*v2 + 480));
  [*(*v2 + 48) start];
  [*(*v2 + 49) start];
  pthread_mutex_unlock((*v2 + 480));
  v11 = *v2;
  if (*(*v2 + 38))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(*v2 + 2);
        v15 = *(*v2 + 3);
        v16 = *(*v2 + 4);
        *buf = 136316418;
        v42 = v12;
        v43 = 2080;
        v44 = "[VCVideoCaptureServer startPreviewWithWidth:height:frameRate:]_block_invoke";
        v45 = 1024;
        v46 = 4185;
        v47 = 1024;
        *v48 = v14;
        *&v48[4] = 1024;
        *&v48[6] = v15;
        *v49 = 1024;
        *&v49[2] = v16;
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d %dx%d@%d", buf, 0x2Eu);
      }
    }

    v17 = [*(*v2 + 38) setWidth:*(*v2 + 2) height:*(*v2 + 3) frameRate:*(*v2 + 4)];
    if ((v17 & 0x80000000) != 0)
    {
      v18 = v17;
      v19 = *v2;
      v20 = @"avCaptureSetCaptureOptionsFail";
LABEL_31:
      [v19 handleAVCaptureError:v18 domain:v20];
      return;
    }
  }

  else
  {
    v22 = *(a1 + 40);
    v21 = *(a1 + 44);
    v39 = v21;
    v40 = v22;
    v23 = *(a1 + 48);
    v38 = v23;
    if (!v22 || !v21 || !v23)
    {
      [v11 previewVideoWidth:&v40 height:&v39 frameRate:&v38];
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v24 = VRTraceErrorLogLevelToCSTR();
        v25 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          v42 = v24;
          v43 = 2080;
          v44 = "[VCVideoCaptureServer startPreviewWithWidth:height:frameRate:]_block_invoke";
          v45 = 1024;
          v46 = 4163;
          v47 = 1024;
          *v48 = v40;
          *&v48[4] = 1024;
          *&v48[6] = v39;
          *v49 = 1024;
          *&v49[2] = v38;
          _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d Using preview settings=%dx%d@%d", buf, 0x2Eu);
        }
      }
    }

    if (([*v2 createVideoCaptureWithWidth:v40 height:v39 frameRate:v38 useBackFacingCamera:0] & 0x80000000) != 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __63__VCVideoCaptureServer_startPreviewWithWidth_height_frameRate___block_invoke_cold_1();
        }
      }

      return;
    }

    dispatch_resume(*(*v2 + 6));
    *(*v2 + 10) = 0;
    *(*v2 + 11) = 0;
    v26 = v39;
    *(*v2 + 2) = v40;
    *(*v2 + 3) = v26;
    v27 = v38;
    *(*v2 + 7) = v38;
    v28 = *v2;
    if (!*(*v2 + 4))
    {
      v28[4] = v27;
      v28 = *v2;
    }

    [v28 setCurrentFrameRate:?];
  }

  [*v2 updateImageQueueFrameRate:*(*v2 + 4)];
  v29 = [*(*v2 + 38) startPreview];
  v30 = v29;
  if ((v29 & 0x80000000) != 0 && v29 != -2146893775)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __63__VCVideoCaptureServer_startPreviewWithWidth_height_frameRate___block_invoke_cold_2();
      }
    }

    v19 = *v2;
    v20 = @"avCaptureStartPreviewFail";
    v18 = v30;
    goto LABEL_31;
  }

  if (v29 != -2146893775)
  {
    *(*v2 + 96) = 0;
    *(*v2 + 47) = 0;
  }

  pthread_mutex_lock((*v2 + 480));
  [*v2 setUpImageRotationConverter];
  if (objc_opt_respondsToSelector())
  {
    v31 = [*(*v2 + 38) isInternalCamera] ^ 1;
  }

  else
  {
    v31 = 0;
  }

  *(*v2 + 431) = v31;
  [*(*v2 + 48) setIsExternalCamera:*(*v2 + 431)];
  [*(*v2 + 49) setIsExternalCamera:*(*v2 + 431)];
  pthread_mutex_unlock((*v2 + 480));
  if ([*(*v2 + 13) count])
  {
    [*(*v2 + 38) startCaptureWithWidth:*(*v2 + 8) height:*(*v2 + 9) frameRate:*(*v2 + 4)];
  }

  *(*v2 + 426) = 1;
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v32 = VRTraceErrorLogLevelToCSTR();
    v33 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v34 = *(*v2 + 2);
      v35 = *(*v2 + 3);
      v36 = *(*v2 + 4);
      v37 = *(*v2 + 426);
      *buf = 136316674;
      v42 = v32;
      v43 = 2080;
      v44 = "[VCVideoCaptureServer startPreviewWithWidth:height:frameRate:]_block_invoke";
      v45 = 1024;
      v46 = 4222;
      v47 = 1024;
      *v48 = v34;
      *&v48[4] = 1024;
      *&v48[6] = v35;
      *v49 = 1024;
      *&v49[2] = v36;
      v50 = 1024;
      v51 = v37;
      _os_log_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d preview-started %dx%d @ %d, _isPreviewRunning=%d", buf, 0x34u);
    }
  }
}

- (void)pausePreview
{
  v3[5] = *MEMORY[0x1E69E9840];
  self->falteredRenderingtimeStamp = 0.0;
  captureServerQueue = self->captureServerQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __36__VCVideoCaptureServer_pausePreview__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(captureServerQueue, v3);
}

void __36__VCVideoCaptureServer_pausePreview__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v19 = v2;
      v20 = 2080;
      v21 = "[VCVideoCaptureServer pausePreview]_block_invoke";
      v22 = 1024;
      v23 = 4230;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d ", buf, 0x1Cu);
    }
  }

  v4 = *(a1 + 32);
  if (v4[38])
  {
    v5 = [v4 canStopPreview];
    v6 = [*(*(a1 + 32) + 304) stop:v5];
    if (v5)
    {
      *(*(a1 + 32) + 426) = 0;
    }

    v7 = *(a1 + 32);
    if (v6 < 0)
    {
      [v7 handleAVCaptureError:? domain:?];
    }

    else
    {
      pthread_mutex_lock((v7 + 480));
      [*(*(a1 + 32) + 384) pause];
      [*(*(a1 + 32) + 392) pause];
      pthread_mutex_unlock((*(a1 + 32) + 480));
      v8 = *(a1 + 32);
      v9 = *(v8 + 272);
      if (*(v8 + 360))
      {
        v10 = v17;
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __36__VCVideoCaptureServer_pausePreview__block_invoke_367;
        v17[3] = &unk_1E85F3778;
        v17[4] = v8;
      }

      else
      {
        v10 = &__block_literal_global_371;
      }

      dispatch_async(v9, v10);
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      v12 = MEMORY[0x1E6986650];
      if (ErrorLogLevelForModule > 6)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *v12;
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v19 = v13;
          v20 = 2080;
          v21 = "[VCVideoCaptureServer pausePreview]_block_invoke_3";
          v22 = 1024;
          v23 = 4268;
          _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d completed", buf, 0x1Cu);
        }
      }

      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *v12;
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v19 = v15;
          v20 = 2080;
          v21 = "[VCVideoCaptureServer pausePreview]_block_invoke";
          v22 = 1024;
          v23 = 4269;
          _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d preview-paused", buf, 0x1Cu);
        }
      }
    }
  }

  else
  {
    [v4 updatePreviewState];
  }
}

uint64_t __36__VCVideoCaptureServer_pausePreview__block_invoke_367(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(*(a1 + 32) + 360);

    return [v3 didPausePreview];
  }

  return result;
}

uint64_t __36__VCVideoCaptureServer_pausePreview__block_invoke_2()
{
  v0 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];

  return [v0 sendMessageAsync:"previewDidPause" arguments:0];
}

- (void)stopPreview
{
  v4[5] = *MEMORY[0x1E69E9840];
  captureServerQueue = self->captureServerQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__VCVideoCaptureServer_stopPreview__block_invoke;
  v4[3] = &unk_1E85F3778;
  v4[4] = self;
  dispatch_async(captureServerQueue, v4);
  self->falteredRenderingtimeStamp = 0.0;
  self->resize = 0;
}

void __35__VCVideoCaptureServer_stopPreview__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v3 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v14 = 136315906;
      v15 = v4;
      v16 = 2080;
      v17 = "[VCVideoCaptureServer stopPreview]_block_invoke";
      v18 = 1024;
      v19 = 4276;
      v20 = 2048;
      v21 = v6;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d self %p", &v14, 0x26u);
    }
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 304);
  if (v8)
  {
    [v8 stop:1];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(*(a1 + 32) + 304) invalidate];
    }

    *(*(a1 + 32) + 304) = 0;
    [*(a1 + 32) setCFAvailabilityChange:0];
    dispatch_suspend(*(*(a1 + 32) + 48));
    v7 = *(a1 + 32);
  }

  pthread_mutex_lock((v7 + 480));
  [*(a1 + 32) tearDownImageRotationConverter];

  *(*(a1 + 32) + 384) = 0;
  *(*(a1 + 32) + 392) = 0;
  pthread_mutex_unlock((*(a1 + 32) + 480));
  [*(*(a1 + 32) + 448) setRatio:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  *(*(a1 + 32) + 8) = 0;
  *(*(a1 + 32) + 12) = 0;
  *(*(a1 + 32) + 16) = 0;
  *(*(a1 + 32) + 28) = 0;
  *(*(a1 + 32) + 426) = 0;
  if (VRTraceGetErrorLogLevelForModule() > 6)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(*(a1 + 32) + 426);
      v14 = 136315906;
      v15 = v9;
      v16 = 2080;
      v17 = "[VCVideoCaptureServer stopPreview]_block_invoke";
      v18 = 1024;
      v19 = 4308;
      v20 = 1024;
      LODWORD(v21) = v11;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d _isPreviewRunning=%d", &v14, 0x22u);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315650;
      v15 = v12;
      v16 = 2080;
      v17 = "[VCVideoCaptureServer stopPreview]_block_invoke";
      v18 = 1024;
      v19 = 4309;
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d preview-stopped", &v14, 0x1Cu);
    }
  }
}

- (void)setPauseCapture:(BOOL)capture
{
  captureCopy = capture;
  v9 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    captureClientQueue = self->captureClientQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__VCVideoCaptureServer_setPauseCapture___block_invoke;
    block[3] = &unk_1E85F37A0;
    block[4] = self;
    v8 = captureCopy;
    dispatch_async(captureClientQueue, block);
    screenHealthMonitor = self->screenHealthMonitor;
    if (captureCopy)
    {
      dispatch_suspend(screenHealthMonitor);
    }

    else
    {
      dispatch_resume(screenHealthMonitor);
    }
  }
}

void __40__VCVideoCaptureServer_setPauseCapture___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 312) setPauseCapture:*(a1 + 40)];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v6 = 136315906;
      if (v4)
      {
        v5 = "Paused";
      }

      else
      {
        v5 = "Resumed";
      }

      v7 = v2;
      v8 = 2080;
      v9 = "[VCVideoCaptureServer setPauseCapture:]_block_invoke";
      v10 = 1024;
      v11 = 4322;
      v12 = 2080;
      v13 = v5;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d %s screen capture", &v6, 0x26u);
    }
  }
}

- (void)startCaptureWithWidth:(int)width height:(int)height frameRate:(int)rate
{
  v28 = *MEMORY[0x1E69E9840];
  self->_encodingWidth = width;
  self->_encodingHeight = height;
  [VCVideoCaptureServer startPreviewWithWidth:"startPreviewWithWidth:height:frameRate:" height:? frameRate:?];
  if (height * width * rate)
  {
    captureServerQueue = self->captureServerQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__VCVideoCaptureServer_startCaptureWithWidth_height_frameRate___block_invoke;
    block[3] = &unk_1E85F3908;
    block[4] = self;
    rateCopy = rate;
    widthCopy = width;
    heightCopy = height;
    dispatch_async(captureServerQueue, block);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v17 = v10;
      v18 = 2080;
      v19 = "[VCVideoCaptureServer startCaptureWithWidth:height:frameRate:]";
      v20 = 1024;
      v21 = 4344;
      v22 = 1024;
      widthCopy2 = width;
      v24 = 1024;
      heightCopy2 = height;
      v26 = 1024;
      rateCopy2 = rate;
      _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, "VCVideoCaptureServer [%s] %s:%d received invalid settings %dx%d@%dfps, returning early", buf, 0x2Eu);
    }
  }
}

void __63__VCVideoCaptureServer_startCaptureWithWidth_height_frameRate___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 304))
  {
    if ([*(v2 + 104) count])
    {
      *(*(a1 + 32) + 28) = *(a1 + 40);
      v3 = [*(a1 + 32) getCappedFrameRate:?];
      v4 = [*(*(a1 + 32) + 304) startCaptureWithWidth:*(a1 + 44) height:*(a1 + 48) frameRate:v3];
      v5 = *(a1 + 32);
      if (v4 == -2146893775 && *(v5 + 16) != v3)
      {
        [v5 setCurrentFrameRate:v3];
        v5 = *(a1 + 32);
      }

      *(v5 + 429) = 1;
      *(*(a1 + 32) + 8) = *(a1 + 44);
      *(*(a1 + 32) + 12) = *(a1 + 48);
      *(*(a1 + 32) + 16) = v3;
      [*(a1 + 32) updateImageQueueFrameRate:*(*(a1 + 32) + 16)];
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(a1 + 44);
          v8 = *(a1 + 48);
          v10 = *(a1 + 40);
          *buf = 136316674;
          v22 = v6;
          v23 = 2080;
          v24 = "[VCVideoCaptureServer startCaptureWithWidth:height:frameRate:]_block_invoke";
          v25 = 1024;
          v26 = 4385;
          v27 = 1024;
          v28 = v9;
          v29 = 1024;
          v30 = v8;
          v31 = 1024;
          v32 = v10;
          v33 = 1024;
          v34 = v3;
          v11 = "VCVideoCaptureServer [%s] %s:%d capture-started, video settings width=%d height=%d rate=%dfps cappedFrameRate=%dfps";
          v12 = v7;
          v13 = 52;
LABEL_15:
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
        }
      }
    }

    else
    {
      v20 = 0;
      v19 = 0;
      [*(a1 + 32) previewVideoWidth:&v20 + 4 height:&v20 frameRate:&v19];
      [*(a1 + 32) dispatchedSetCaptureWidth:HIDWORD(v20) height:v20 rate:v19];
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(a1 + 32);
          v17 = v16[2];
          v18 = v16[3];
          LODWORD(v16) = v16[4];
          *buf = 136316418;
          v22 = v14;
          v23 = 2080;
          v24 = "[VCVideoCaptureServer startCaptureWithWidth:height:frameRate:]_block_invoke";
          v25 = 1024;
          v26 = 4359;
          v27 = 1024;
          v28 = v17;
          v29 = 1024;
          v30 = v18;
          v31 = 1024;
          v32 = v16;
          v11 = "VCVideoCaptureServer [%s] %s:%d Skip startCapture and reset to preview width=%d height=%d and framerate=%d";
          v12 = v15;
          v13 = 46;
          goto LABEL_15;
        }
      }
    }
  }

  else
  {

    [v2 updatePreviewState];
  }
}

- (void)stopCapture
{
  v3[5] = *MEMORY[0x1E69E9840];
  captureServerQueue = self->captureServerQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__VCVideoCaptureServer_stopCapture__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(captureServerQueue, v3);
}

void __35__VCVideoCaptureServer_stopCapture__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCVideoCaptureServer-stopCapture");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 136315906;
      v21 = v2;
      v22 = 2080;
      v23 = "[VCVideoCaptureServer stopCapture]_block_invoke";
      v24 = 1024;
      v25 = 4391;
      v26 = 2048;
      *v27 = v4;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d @:@ VCVideoCaptureServer-stopCapture (%p)", buf, 0x26u);
    }
  }

  v5 = *(a1 + 32);
  if (v5[38])
  {
    v6 = [v5 canStopPreview];
    v7 = [*(*(a1 + 32) + 304) stop:v6];
    if (v6)
    {
      *(*(a1 + 32) + 426) = 0;
    }

    else
    {
      v19 = 0;
      v18 = 0;
      [*(a1 + 32) previewVideoWidth:&v19 + 4 height:&v19 frameRate:&v18];
      v8 = v19;
      *(*(a1 + 32) + 28) = v18;
      [*(a1 + 32) dispatchedSetCaptureWidth:HIDWORD(v19) height:v8 rate:?];
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(a1 + 32);
          v12 = v11[2];
          v13 = v11[3];
          LODWORD(v11) = v11[4];
          *buf = 136316418;
          v21 = v9;
          v22 = 2080;
          v23 = "[VCVideoCaptureServer stopCapture]_block_invoke";
          v24 = 1024;
          v25 = 4409;
          v26 = 1024;
          *v27 = v12;
          *&v27[4] = 1024;
          *&v27[6] = v13;
          v28 = 1024;
          v29 = v11;
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d Resetting preview width=%d height=%d and framerate=%d", buf, 0x2Eu);
        }
      }
    }

    v14 = *MEMORY[0x1E695F060];
    *(*(a1 + 32) + 200) = *MEMORY[0x1E695F060];
    *(*(a1 + 32) + 216) = v14;
    v15 = *(a1 + 32);
    if ((v7 & 0x80000000) != 0)
    {
      [v15 handleAVCaptureError:v7 domain:@"avCaptureStopFail"];
    }

    else
    {
      v15[429] = 0;
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v21 = v16;
          v22 = 2080;
          v23 = "[VCVideoCaptureServer stopCapture]_block_invoke";
          v24 = 1024;
          v25 = 4422;
          _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d capture-stopped", buf, 0x1Cu);
        }
      }
    }
  }
}

- (void)setCaptureWidth:(int)width height:(int)height rate:(int)rate forced:(BOOL)forced
{
  v12 = *MEMORY[0x1E69E9840];
  captureServerQueue = self->captureServerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__VCVideoCaptureServer_setCaptureWidth_height_rate_forced___block_invoke;
  v7[3] = &unk_1E85F4C28;
  forcedCopy = forced;
  widthCopy = width;
  heightCopy = height;
  rateCopy = rate;
  v7[4] = self;
  dispatch_async(captureServerQueue, v7);
}

void __59__VCVideoCaptureServer_setCaptureWidth_height_rate_forced___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 52);
      v5 = *(a1 + 40);
      v6 = *(a1 + 44);
      v7 = *(a1 + 48);
      v8 = 136316674;
      v9 = v2;
      v10 = 2080;
      v11 = "[VCVideoCaptureServer setCaptureWidth:height:rate:forced:]_block_invoke";
      v12 = 1024;
      v13 = 4448;
      v14 = 1024;
      v15 = v4;
      v16 = 1024;
      v17 = v5;
      v18 = 1024;
      v19 = v6;
      v20 = 1024;
      v21 = v7;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d forced %d, %dx%d@%d", &v8, 0x34u);
    }
  }

  if (*(a1 + 52) == 1)
  {
    [*(a1 + 32) setCaptureWidth:*(a1 + 40) height:*(a1 + 44) rate:*(a1 + 48)];
  }

  else
  {
    *(*(a1 + 32) + 64) = *(a1 + 40);
    *(*(a1 + 32) + 68) = *(a1 + 44);
    *(*(a1 + 32) + 72) = *(a1 + 48);
  }
}

- (void)dispatchedSetCaptureWidth:(int)width height:(int)height rate:(int)rate
{
  v27 = *MEMORY[0x1E69E9840];
  avCapture = self->avCapture;
  if (avCapture)
  {
    v7 = *&rate;
    if (self->currentWidth == width && self->currentHeight == height)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v15 = 136316418;
          v16 = v10;
          v17 = 2080;
          v18 = "[VCVideoCaptureServer dispatchedSetCaptureWidth:height:rate:]";
          v19 = 1024;
          v20 = 4468;
          v21 = 1024;
          widthCopy2 = width;
          v23 = 1024;
          heightCopy2 = height;
          v25 = 1024;
          v26 = v7;
          v12 = "VCVideoCaptureServer [%s] %s:%d already at requested dimensions=%dx%d@%d";
LABEL_11:
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v12, &v15, 0x2Eu);
        }
      }
    }

    else
    {
      v13 = [(VCVideoSource *)avCapture setWidth:*&width height:*&height frameRate:*&rate];
      if ((v13 & 0x80000000) != 0)
      {

        [(VCVideoCaptureServer *)self handleAVCaptureError:v13 domain:@"avCaptureSetCaptureOptionsFail"];
      }

      else
      {
        self->currentWidth = width;
        self->currentHeight = height;
        [(VCVideoCaptureServer *)self setCurrentFrameRate:v7];
        [(VCVideoCaptureServer *)self updateImageQueueFrameRate:self->currentFrameRate];
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v14 = VRTraceErrorLogLevelToCSTR();
          v11 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v15 = 136316418;
            v16 = v14;
            v17 = 2080;
            v18 = "[VCVideoCaptureServer dispatchedSetCaptureWidth:height:rate:]";
            v19 = 1024;
            v20 = 4482;
            v21 = 1024;
            widthCopy2 = width;
            v23 = 1024;
            heightCopy2 = height;
            v25 = 1024;
            v26 = v7;
            v12 = "VCVideoCaptureServer [%s] %s:%d changed to=%dx%d@%dfps";
            goto LABEL_11;
          }
        }
      }
    }
  }
}

- (void)setCaptureWidth:(int)width height:(int)height rate:(int)rate
{
  v18 = *MEMORY[0x1E69E9840];
  if (height * width * rate)
  {
    captureServerQueue = self->captureServerQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__VCVideoCaptureServer_setCaptureWidth_height_rate___block_invoke;
    block[3] = &unk_1E85F3908;
    block[4] = self;
    widthCopy = width;
    heightCopy = height;
    rateCopy = rate;
    dispatch_async(captureServerQueue, block);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v13 = v6;
      v14 = 2080;
      v15 = "[VCVideoCaptureServer setCaptureWidth:height:rate:]";
      v16 = 1024;
      v17 = 4487;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d received invalid settings, returning", buf, 0x1Cu);
    }
  }
}

- (void)resetCameraToPreviewSettingsForced:(BOOL)forced
{
  forcedCopy = forced;
  v8 = *MEMORY[0x1E69E9840];
  v6 = -1431655766;
  v7 = -1431655766;
  v5 = -1431655766;
  [(VCVideoCaptureServer *)self previewVideoWidth:&v7 height:&v6 frameRate:&v5];
  [(VCVideoCaptureServer *)self setCaptureWidth:v7 height:v6 rate:v5 forced:forcedCopy];
}

- (BOOL)cameraSupportsWidth:(int)width height:(int)height
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  captureServerQueue = self->captureServerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__VCVideoCaptureServer_cameraSupportsWidth_height___block_invoke;
  v7[3] = &unk_1E85F3930;
  v7[4] = self;
  v7[5] = &v10;
  widthCopy = width;
  heightCopy = height;
  dispatch_sync(captureServerQueue, v7);
  v5 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v5;
}

uint64_t __51__VCVideoCaptureServer_cameraSupportsWidth_height___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 304) cameraSupportsFormatWidth:*(a1 + 48) height:*(a1 + 52)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setCameraZoomAvailable:(BOOL)available currentZoomFactor:(double)factor maxZoomFactor:(double)zoomFactor
{
  availableCopy = available;
  v18[5] = *MEMORY[0x1E69E9840];
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v10 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:availableCopy];
  v11 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v12 = factor;
  v13 = [v11 initWithFloat:v12];
  v14 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v15 = zoomFactor;
  v16 = [v14 initWithFloat:v15];
  [v9 setObject:v10 forKeyedSubscript:@"previewCameraZoomAvailabilty"];
  [v9 setObject:v13 forKeyedSubscript:@"previewCameraZoomFactor"];
  [v9 setObject:v16 forKeyedSubscript:@"previewCameraZoomMaxFactor"];
  captureServerQueue = self->captureServerQueue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __79__VCVideoCaptureServer_setCameraZoomAvailable_currentZoomFactor_maxZoomFactor___block_invoke;
  v18[3] = &unk_1E85F3778;
  v18[4] = v9;
  dispatch_async(captureServerQueue, v18);
}

uint64_t __79__VCVideoCaptureServer_setCameraZoomAvailable_currentZoomFactor_maxZoomFactor___block_invoke(uint64_t a1)
{
  v2 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];
  v3 = *(a1 + 32);

  return [v2 sendMessageAsync:"previewCameraZoomAvailablilty" arguments:v3];
}

- (void)setCFAvailabilityChange:(BOOL)change
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"previewCameraCinematicFraming";
  v8[0] = [MEMORY[0x1E696AD98] numberWithBool:change];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  captureServerQueue = self->captureServerQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__VCVideoCaptureServer_setCFAvailabilityChange___block_invoke;
  v6[3] = &unk_1E85F3778;
  v6[4] = v4;
  dispatch_async(captureServerQueue, v6);
}

uint64_t __48__VCVideoCaptureServer_setCFAvailabilityChange___block_invoke(uint64_t a1)
{
  v2 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];
  v3 = *(a1 + 32);

  return [v2 sendMessageAsync:"previewCameraCinematicFramingAvailablilty" arguments:v3];
}

- (__CFDictionary)copyReportingStatsForCaptureSource:(int)source
{
  v23 = *MEMORY[0x1E69E9840];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    if (source < 0xB)
    {
      captureServerQueue = self->captureServerQueue;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __59__VCVideoCaptureServer_copyReportingStatsForCaptureSource___block_invoke_2;
      v11[3] = &unk_1E85F3908;
      sourceCopy = source;
      v11[4] = self;
      v11[5] = Mutable;
      v7 = v11;
    }

    else
    {
      captureServerQueue = self->_streamInputQueue;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __59__VCVideoCaptureServer_copyReportingStatsForCaptureSource___block_invoke;
      v13[3] = &unk_1E85F3908;
      v13[4] = self;
      v13[5] = Mutable;
      sourceCopy2 = source;
      v7 = v13;
    }

    dispatch_sync(captureServerQueue, v7);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v16 = v8;
      v17 = 2080;
      v18 = "[VCVideoCaptureServer copyReportingStatsForCaptureSource:]";
      v19 = 1024;
      v20 = 4540;
      v21 = 1024;
      sourceCopy3 = source;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d Failed to create the reporting stats dictionary. captureSourceID=%d", buf, 0x22u);
    }
  }

  return Mutable;
}

void __59__VCVideoCaptureServer_copyReportingStatsForCaptureSource___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 48);
  if (v1 <= 0xA)
  {
    if (((1 << v1) & 0x7F5) != 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v3 = VRTraceErrorLogLevelToCSTR();
        v4 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v5 = *(a1 + 48);
          v10 = 136315906;
          v11 = v3;
          v12 = 2080;
          v13 = "[VCVideoCaptureServer copyReportingStatsForCaptureSource:]_block_invoke_2";
          v14 = 1024;
          v15 = 4568;
          v16 = 1024;
          v17 = v5;
          _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d Requesting reporting stats for unsupported captureSourceID=%d", &v10, 0x22u);
        }
      }
    }

    else if (v1 == 1)
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);

      [v6 addScreenStatsToDict:v7];
    }

    else if (objc_opt_respondsToSelector())
    {
      v8 = *(a1 + 40);
      v9 = *(*(a1 + 32) + 304);

      [v9 getReportingStats:v8];
    }
  }
}

- (__CFDictionary)copyRealtimeStatsDictionary
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (objc_opt_respondsToSelector())
  {
    [(VCVideoSource *)self->avCapture getReportingStats:Mutable];
  }

  [(VCVideoCaptureServer *)self addScreenStatsToDict:Mutable];
  return Mutable;
}

- (__CFDictionary)copyInitialStatsDictionary
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  captureServerQueue = self->captureServerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__VCVideoCaptureServer_copyInitialStatsDictionary__block_invoke;
  block[3] = &unk_1E85F3868;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(captureServerQueue, block);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __50__VCVideoCaptureServer_copyInitialStatsDictionary__block_invoke(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(*(a1 + 32) + 304);
    v4 = *(*(*(a1 + 40) + 8) + 24);

    return [v3 retrieveInitialReportingStats:v4];
  }

  return result;
}

- (void)addStreamInputStatsToDict:(__CFDictionary *)dict captureSource:(int)source
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&source];
  v7 = [(NSMutableDictionary *)self->_streamInputCaptureSources objectForKeyedSubscript:v6];
  if (v7)
  {
    v8 = -[NSMutableDictionary objectForKeyedSubscript:](self->_streamInputs, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "streamInputID")}]);
    if (v8)
    {
      reportingStats = [v8 reportingStats];

      VCUtil_AppendFromDictionary(dict, reportingStats);
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315906;
      v13 = v10;
      v14 = 2080;
      v15 = "[VCVideoCaptureServer addStreamInputStatsToDict:captureSource:]";
      v16 = 1024;
      v17 = 4603;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d Stream input capture source doesn't exist. captureSourceID=%@", &v12, 0x26u);
    }
  }
}

- (void)addScreenStatsToDict:(__CFDictionary *)dict
{
  v14 = *MEMORY[0x1E69E9840];
  screenShareCaptureConfig = self->_screenShareCaptureConfig;
  if (screenShareCaptureConfig)
  {
    v5 = [-[NSMutableDictionary objectForKeyedSubscript:](screenShareCaptureConfig objectForKeyedSubscript:{@"ScreenCaptureIsWindowed", "BOOLValue"}];
    v6 = v5 ^ 1u;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = "YES";
        *v10 = 136315906;
        *&v10[4] = v7;
        *&v10[12] = 2080;
        *&v10[14] = "[VCVideoCaptureServer addScreenStatsToDict:]";
        if (v5)
        {
          v9 = "NO";
        }

        *&v10[22] = 1024;
        v11 = 4617;
        v12 = 2080;
        v13 = v9;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d isFullScreen=%s", v10, 0x26u);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  CFDictionaryAddValue(dict, @"ScreenSharingIsFullScreen", [MEMORY[0x1E696AD98] numberWithBool:{v6, *v10, *&v10[16]}]);
}

- (void)updatePreviewState
{
  block[5] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF20]);
  v4 = [v3 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", self->_isPreviewRunning), @"previewState", 0}];
  delegateNotificationQueue = self->delegateNotificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__VCVideoCaptureServer_updatePreviewState__block_invoke;
  block[3] = &unk_1E85F3778;
  block[4] = v4;
  dispatch_async(delegateNotificationQueue, block);
}

uint64_t __42__VCVideoCaptureServer_updatePreviewState__block_invoke(uint64_t a1)
{
  v2 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];
  v3 = *(a1 + 32);

  return [v2 sendMessageAsync:"updatePreviewState" arguments:v3];
}

- (BOOL)setUpSensitiveContentAnalyzerWithParticipantUUID:(id)d
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  captureServerQueue = self->captureServerQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __73__VCVideoCaptureServer_setUpSensitiveContentAnalyzerWithParticipantUUID___block_invoke;
  v6[3] = &unk_1E85F6638;
  v6[4] = self;
  v6[5] = d;
  v6[6] = &v7;
  dispatch_sync(captureServerQueue, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __73__VCVideoCaptureServer_setUpSensitiveContentAnalyzerWithParticipantUUID___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 840) endAnalysis];

  result = [*(a1 + 32) newSensitiveContentAnalyzerWithParticipantUUID:*(a1 + 40)];
  *(*(a1 + 32) + 840) = result;
  *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 32) + 840) != 0;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v3 = *(a1 + 32);
      v4 = *(v3 + 304);
      v5 = *(v3 + 840);

      return [v4 attachSensitiveContentAnalyzer:v5];
    }
  }

  return result;
}

- (id)newSensitiveContentAnalyzerWithParticipantUUID:(id)d
{
  v34 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v5 = [objc_alloc(MEMORY[0x1E697B680]) initWithParticipantUUID:d options:1 error:&v21];
  if (v5)
  {
    v6 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __71__VCVideoCaptureServer_newSensitiveContentAnalyzerWithParticipantUUID___block_invoke;
    v20[3] = &unk_1E85F8DB8;
    v20[4] = v6;
    [v5 setAnalysisChangedHandler:v20];
    if (objc_opt_class() != self)
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [(VCVideoCaptureServer *)self performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          v23 = v12;
          v24 = 2080;
          v25 = "[VCVideoCaptureServer newSensitiveContentAnalyzerWithParticipantUUID:]";
          v26 = 1024;
          v27 = 4674;
          v28 = 2112;
          dCopy2 = v7;
          v30 = 2048;
          selfCopy2 = self;
          v32 = 2112;
          dCopy = d;
          v11 = "VCVideoCaptureServer [%s] %s:%d %@(%p) SCVideoStreamAnalyzer created for participant=%@";
          v14 = v13;
LABEL_23:
          v16 = 58;
          goto LABEL_24;
        }
      }

      return v5;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return v5;
    }

    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return v5;
    }

    *buf = 136315906;
    v23 = v9;
    v24 = 2080;
    v25 = "[VCVideoCaptureServer newSensitiveContentAnalyzerWithParticipantUUID:]";
    v26 = 1024;
    v27 = 4674;
    v28 = 2112;
    dCopy2 = d;
    v11 = "VCVideoCaptureServer [%s] %s:%d SCVideoStreamAnalyzer created for participant=%@";
LABEL_18:
    v14 = v10;
    v16 = 38;
LABEL_24:
    _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v11, buf, v16);
    return v5;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return v5;
    }

    v15 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return v5;
    }

    *buf = 136315906;
    v23 = v15;
    v24 = 2080;
    v25 = "[VCVideoCaptureServer newSensitiveContentAnalyzerWithParticipantUUID:]";
    v26 = 1024;
    v27 = 4676;
    v28 = 2112;
    dCopy2 = v21;
    v11 = "VCVideoCaptureServer [%s] %s:%d SCVideoStreamAnalyzer is not enabled=%@";
    goto LABEL_18;
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [(VCVideoCaptureServer *)self performSelector:sel_logPrefix];
  }

  else
  {
    v8 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v23 = v17;
      v24 = 2080;
      v25 = "[VCVideoCaptureServer newSensitiveContentAnalyzerWithParticipantUUID:]";
      v26 = 1024;
      v27 = 4676;
      v28 = 2112;
      dCopy2 = v8;
      v30 = 2048;
      selfCopy2 = self;
      v32 = 2112;
      dCopy = v21;
      v11 = "VCVideoCaptureServer [%s] %s:%d %@(%p) SCVideoStreamAnalyzer is not enabled=%@";
      v14 = v18;
      goto LABEL_23;
    }
  }

  return v5;
}

void __71__VCVideoCaptureServer_newSensitiveContentAnalyzerWithParticipantUUID___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    __71__VCVideoCaptureServer_newSensitiveContentAnalyzerWithParticipantUUID___block_invoke_cold_1();
  }

  else if (a2)
  {
    v20 = @"previewSensitivityAnalysis";
    v21[0] = [a2 dataRepresentation];
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v5 = [*(a1 + 32) strong];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v5)
    {
      if (ErrorLogLevelForModule >= 8)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        v9 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315907;
            v13 = v7;
            v14 = 2080;
            v15 = "[VCVideoCaptureServer newSensitiveContentAnalyzerWithParticipantUUID:]_block_invoke";
            v16 = 1024;
            v17 = 4667;
            v18 = 2081;
            v19 = "Sensitive content analysis changed for camera capture";
            _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d %{private}s", buf, 0x26u);
          }
        }

        else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          __71__VCVideoCaptureServer_newSensitiveContentAnalyzerWithParticipantUUID___block_invoke_cold_2();
        }
      }

      v10 = *(v5 + 272);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __71__VCVideoCaptureServer_newSensitiveContentAnalyzerWithParticipantUUID___block_invoke_403;
      block[3] = &unk_1E85F3778;
      block[4] = v4;
      dispatch_async(v10, block);
    }

    else
    {
      __71__VCVideoCaptureServer_newSensitiveContentAnalyzerWithParticipantUUID___block_invoke_cold_3(ErrorLogLevelForModule);
    }
  }

  else
  {
    __71__VCVideoCaptureServer_newSensitiveContentAnalyzerWithParticipantUUID___block_invoke_cold_4();
  }
}

uint64_t __71__VCVideoCaptureServer_newSensitiveContentAnalyzerWithParticipantUUID___block_invoke_403(uint64_t a1)
{
  v2 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];
  v3 = *(a1 + 32);

  return [v2 sendMessageAsync:"previewDidDetectSensitiveContent" arguments:v3];
}

- (void)endSensitiveContentAnalysis
{
  v3[5] = *MEMORY[0x1E69E9840];
  captureServerQueue = self->captureServerQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__VCVideoCaptureServer_endSensitiveContentAnalysis__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_sync(captureServerQueue, v3);
}

void __51__VCVideoCaptureServer_endSensitiveContentAnalysis__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 840) endAnalysis];

  *(*(a1 + 32) + 840) = 0;
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315650;
        v12 = v3;
        v13 = 2080;
        v14 = "[VCVideoCaptureServer endSensitiveContentAnalysis]_block_invoke";
        v15 = 1024;
        v16 = 4687;
        v5 = "VCVideoCaptureServer [%s] %s:%d SCVideoStreamAnalyzer released";
        v6 = v4;
        v7 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, v5, &v11, v7);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v2 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        v11 = 136316162;
        v12 = v8;
        v13 = 2080;
        v14 = "[VCVideoCaptureServer endSensitiveContentAnalysis]_block_invoke";
        v15 = 1024;
        v16 = 4687;
        v17 = 2112;
        v18 = v2;
        v19 = 2048;
        v20 = v10;
        v5 = "VCVideoCaptureServer [%s] %s:%d %@(%p) SCVideoStreamAnalyzer released";
        v6 = v9;
        v7 = 48;
        goto LABEL_11;
      }
    }
  }
}

- (void)endSensitiveContentAnalyzerInterruption
{
  v3[5] = *MEMORY[0x1E69E9840];
  captureServerQueue = self->captureServerQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __63__VCVideoCaptureServer_endSensitiveContentAnalyzerInterruption__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(captureServerQueue, v3);
}

uint64_t __63__VCVideoCaptureServer_endSensitiveContentAnalyzerInterruption__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 136315650;
        *&v12[4] = v3;
        *&v12[12] = 2080;
        *&v12[14] = "[VCVideoCaptureServer endSensitiveContentAnalyzerInterruption]_block_invoke";
        *&v12[22] = 1024;
        LODWORD(v13) = 4693;
        v5 = "VCVideoCaptureServer [%s] %s:%d SCVideoStreamAnalyzer continueStream";
        v6 = v4;
        v7 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, v5, v12, v7);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v2 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        *v12 = 136316162;
        *&v12[4] = v8;
        *&v12[12] = 2080;
        *&v12[14] = "[VCVideoCaptureServer endSensitiveContentAnalyzerInterruption]_block_invoke";
        *&v12[22] = 1024;
        LODWORD(v13) = 4693;
        WORD2(v13) = 2112;
        *(&v13 + 6) = v2;
        HIWORD(v13) = 2048;
        v14 = v10;
        v5 = "VCVideoCaptureServer [%s] %s:%d %@(%p) SCVideoStreamAnalyzer continueStream";
        v6 = v9;
        v7 = 48;
        goto LABEL_11;
      }
    }
  }

  return [*(*(a1 + 32) + 840) continueStream];
}

- (BOOL)onVideoFrame:(opaqueCMSampleBuffer *)frame frameTime:(id *)time attribute:(id *)attribute
{
  v11 = *MEMORY[0x1E69E9840];
  if (attribute->var1)
  {
    var3 = attribute->var3;
    var2 = attribute->var2;
    var4 = attribute->var4;
    v10 = *time;
    VCVideoCaptureServer_OnCaptureVideoFrame(self, frame, &v10, var3, var2, var4);
  }

  else
  {
    var5 = attribute->var5;
    v10 = *time;
    [(VCVideoCaptureServer *)self onCaptureScreenFrame:frame frameTime:&v10 orientation:var5];
  }

  return 1;
}

- (void)sourceFrameRateDidChange:(unsigned int)change
{
  v6 = *MEMORY[0x1E69E9840];
  captureServerQueue = self->captureServerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__VCVideoCaptureServer_sourceFrameRateDidChange___block_invoke;
  block[3] = &unk_1E85F38B8;
  block[4] = self;
  changeCopy = change;
  dispatch_async(captureServerQueue, block);
}

void __49__VCVideoCaptureServer_sourceFrameRateDidChange___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 16) = *(a1 + 40);
  [*(a1 + 32) updateImageQueueFrameRate:*(*(a1 + 32) + 16)];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(a1 + 32) + 16);
      *buf = 136315906;
      v10 = v2;
      v11 = 2080;
      v12 = "[VCVideoCaptureServer sourceFrameRateDidChange:]_block_invoke";
      v13 = 1024;
      v14 = 4719;
      v15 = 1024;
      v16 = v4;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d setting camera framerate to %d", buf, 0x22u);
    }
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 240);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__VCVideoCaptureServer_sourceFrameRateDidChange___block_invoke_406;
  v7[3] = &unk_1E85F38B8;
  v7[4] = v5;
  v8 = *(a1 + 40);
  dispatch_async(v6, v7);
}

uint64_t __49__VCVideoCaptureServer_sourceFrameRateDidChange___block_invoke_406(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 104);
  result = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) sourceFrameRateDidChange:*(a1 + 40)];
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (void)setRemoteDeviceOrientation:(int)orientation
{
  v18 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v11 = v5;
      v12 = 2080;
      v13 = "[VCVideoCaptureServer setRemoteDeviceOrientation:]";
      v14 = 1024;
      v15 = 4730;
      v16 = 1024;
      orientationCopy = orientation;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d remoteDeviceOrientation=%d", buf, 0x22u);
    }
  }

  captureServerQueue = self->captureServerQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__VCVideoCaptureServer_setRemoteDeviceOrientation___block_invoke;
  v8[3] = &unk_1E85F38B8;
  v8[4] = self;
  orientationCopy2 = orientation;
  dispatch_async(captureServerQueue, v8);
}

uint64_t __51__VCVideoCaptureServer_setRemoteDeviceOrientation___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 724) = *(a1 + 40);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(*(a1 + 32) + 304);
    v4 = *(a1 + 40);

    return [v3 setRemoteDeviceOrientation:v4];
  }

  return result;
}

- (int)remoteDeviceOrientation
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  captureServerQueue = self->captureServerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__VCVideoCaptureServer_remoteDeviceOrientation__block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(captureServerQueue, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __VCVideoCaptureServer_IsCaptureFullBleedPreferred_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 304);
  if (v3)
  {
    result = [v3 isCaptureFullBleedPreferred];
  }

  else
  {
    result = *(v2 + 436) == 1 && +[VCHardwareSettings supportsFrontCameraFullBleedCapture];
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)addDeviceStateDelegate:(id)delegate
{
  block[6] = *MEMORY[0x1E69E9840];
  if (delegate)
  {
    captureClientQueue = self->captureClientQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__VCVideoCaptureServer_addDeviceStateDelegate___block_invoke;
    block[3] = &unk_1E85F37F0;
    block[4] = self;
    block[5] = delegate;
    dispatch_async(captureClientQueue, block);
  }
}

uint64_t __47__VCVideoCaptureServer_addDeviceStateDelegate___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 728);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (!v3)
  {
    return [*(*(a1 + 32) + 728) addObject:{objc_msgSend(MEMORY[0x1E6986630], "weakObjectHolderWithObject:", *(a1 + 40))}];
  }

  v4 = v3;
  v5 = *v10;
LABEL_3:
  v6 = 0;
  while (1)
  {
    if (*v10 != v5)
    {
      objc_enumerationMutation(v2);
    }

    result = [*(*(&v9 + 1) + 8 * v6) strong];
    if (result == *(a1 + 40))
    {
      return result;
    }

    if (v4 == ++v6)
    {
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
      if (v4)
      {
        goto LABEL_3;
      }

      return [*(*(a1 + 32) + 728) addObject:{objc_msgSend(MEMORY[0x1E6986630], "weakObjectHolderWithObject:", *(a1 + 40))}];
    }
  }
}

- (void)removeDeviceStateDelegate:(id)delegate
{
  block[6] = *MEMORY[0x1E69E9840];
  if (delegate)
  {
    captureClientQueue = self->captureClientQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__VCVideoCaptureServer_removeDeviceStateDelegate___block_invoke;
    block[3] = &unk_1E85F37F0;
    block[4] = self;
    block[5] = delegate;
    dispatch_sync(captureClientQueue, block);
  }
}

void __50__VCVideoCaptureServer_removeDeviceStateDelegate___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(*(a1 + 32) + 728);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (![v8 strong] || objc_msgSend(v8, "strong") == *(a1 + 40))
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v5);
  }

  [*(*(a1 + 32) + 728) minusSet:v2];
}

- (void)notifyDeviceStateDelegatesWithOrientation:(int)orientation
{
  v6 = *MEMORY[0x1E69E9840];
  captureClientQueue = self->captureClientQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__VCVideoCaptureServer_notifyDeviceStateDelegatesWithOrientation___block_invoke;
  block[3] = &unk_1E85F38B8;
  block[4] = self;
  orientationCopy = orientation;
  dispatch_async(captureClientQueue, block);
}

uint64_t __66__VCVideoCaptureServer_notifyDeviceStateDelegatesWithOrientation___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 728);
  result = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [objc_msgSend(*(*(&v8 + 1) + 8 * v6++) "strong")];
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (void)dispatchedUpdateRemoteScreenAttributes:(int)attributes forceUpdate:(BOOL)update
{
  updateCopy = update;
  v27 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v8 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v20 = v9;
      v21 = 2080;
      v22 = "[VCVideoCaptureServer dispatchedUpdateRemoteScreenAttributes:forceUpdate:]";
      v23 = 1024;
      v24 = 4799;
      v25 = 1024;
      attributesCopy = attributes;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d remoteDeviceOrientation=%d", buf, 0x22u);
    }
  }

  v18 = 0;
  v11 = [*(+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton") + 448)];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v20 = v12;
      v21 = 2080;
      v22 = "[VCVideoCaptureServer dispatchedUpdateRemoteScreenAttributes:forceUpdate:]";
      v23 = 1024;
      v24 = 4802;
      v25 = 1024;
      attributesCopy = v11;
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d localDeviceOrientation=%d", buf, 0x22u);
    }
  }

  avCapture = self->avCapture;
  if (avCapture)
  {
    remoteSupportsFullScreenReceive = [(VCVideoSource *)avCapture isCaptureFullBleedPreferred];
  }

  else
  {
    remoteSupportsFullScreenReceive = self->_remoteSupportsFullScreenReceive;
  }

  VideoUtil_CreateTxRemoteScreenAttributes(v11, v11, attributes, attributes, updateCopy, remoteSupportsFullScreenReceive & 1, &v18, self->_remoteScreenAspectRatios.portrait.width, self->_remoteScreenAspectRatios.portrait.height, self->_remoteScreenAspectRatios.landscape.width, self->_remoteScreenAspectRatios.landscape.height, self->_remoteExpectedAspectRatios.portrait.width, self->_remoteExpectedAspectRatios.portrait.height, self->_remoteExpectedAspectRatios.landscape.width, self->_remoteExpectedAspectRatios.landscape.height, self->_remoteExpectedFullScreenAspectRatios.portrait.width, self->_remoteExpectedFullScreenAspectRatios.portrait.height, self->_remoteExpectedFullScreenAspectRatios.landscape.width, self->_remoteExpectedFullScreenAspectRatios.landscape.height);
  if (v18)
  {
    delegateNotificationQueue = self->delegateNotificationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__VCVideoCaptureServer_dispatchedUpdateRemoteScreenAttributes_forceUpdate___block_invoke;
    block[3] = &unk_1E85F37F0;
    block[4] = v18;
    block[5] = self;
    dispatch_async(delegateNotificationQueue, block);
  }
}

void __75__VCVideoCaptureServer_dispatchedUpdateRemoteScreenAttributes_forceUpdate___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(*(a1 + 40) + 832);
      v7 = 136316162;
      v8 = v2;
      v9 = 2080;
      v10 = "[VCVideoCaptureServer dispatchedUpdateRemoteScreenAttributes:forceUpdate:]_block_invoke";
      v11 = 1024;
      v12 = 4822;
      v13 = 2112;
      v14 = v4;
      v15 = 1024;
      v16 = v5;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d Calling VCRemoteVideoManager_RemoteScreenAttributesDidChange() with remoteScreenAttributes=%@, localPreviewStreamToken=%d", &v7, 0x2Cu);
    }
  }

  v6 = VCRemoteVideoManager_DefaultManager();
  VCRemoteVideoManager_RemoteScreenAttributesDidChange(v6, *(a1 + 32), *(*(a1 + 40) + 832));
}

uint64_t __VCVideoCaptureServer_UpdateRemoteScreenAttributes_block_invoke(uint64_t a1)
{
  v2 = +[VCVideoCaptureServer VCVideoCaptureServerSingleton];
  v3 = *(a1 + 32);
  v4 = *(a1 + 36);

  return [v2 dispatchedUpdateRemoteScreenAttributes:v3 forceUpdate:v4];
}

- (void)didChangeThermalLevel:(int)level
{
  v6 = *MEMORY[0x1E69E9840];
  if (self->_newThermalLevel != level)
  {
    self->_newThermalLevel = level;
    streamInputQueue = self->_streamInputQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__VCVideoCaptureServer_didChangeThermalLevel___block_invoke;
    block[3] = &unk_1E85F38B8;
    block[4] = self;
    levelCopy = level;
    dispatch_async(streamInputQueue, block);
  }
}

uint64_t __46__VCVideoCaptureServer_didChangeThermalLevel___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(*(a1 + 32) + 552) allValues];
  result = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) thermalLevelDidChange:*(a1 + 40)];
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (tagVCAspectRatios)remoteScreenAspectRatios
{
  width = self->_remoteScreenAspectRatios.portrait.width;
  height = self->_remoteScreenAspectRatios.portrait.height;
  v4 = self->_remoteScreenAspectRatios.landscape.width;
  v5 = self->_remoteScreenAspectRatios.landscape.height;
  result.landscape.height = v5;
  result.landscape.width = v4;
  result.portrait.height = height;
  result.portrait.width = width;
  return result;
}

- (tagVCAspectRatios)remoteExpectedAspectRatios
{
  width = self->_remoteExpectedAspectRatios.portrait.width;
  height = self->_remoteExpectedAspectRatios.portrait.height;
  v4 = self->_remoteExpectedAspectRatios.landscape.width;
  v5 = self->_remoteExpectedAspectRatios.landscape.height;
  result.landscape.height = v5;
  result.landscape.width = v4;
  result.portrait.height = height;
  result.portrait.width = width;
  return result;
}

- (tagVCAspectRatios)remoteExpectedFullScreenAspectRatios
{
  width = self->_remoteExpectedFullScreenAspectRatios.portrait.width;
  height = self->_remoteExpectedFullScreenAspectRatios.portrait.height;
  v4 = self->_remoteExpectedFullScreenAspectRatios.landscape.width;
  v5 = self->_remoteExpectedFullScreenAspectRatios.landscape.height;
  result.landscape.height = v5;
  result.landscape.width = v4;
  result.portrait.height = height;
  result.portrait.width = width;
  return result;
}

void ___VCVideoCaptureServer_SendSnapshotFromFrame_block_invoke(uint64_t a1)
{
  block[5] = *MEMORY[0x1E69E9840];
  v2 = [VideoUtil convertPixelBuffer:*(a1 + 40) toImageType:0 withAssetIdentifier:0 cameraStatusBits:0 allowTimeMetaData:1];
  CVPixelBufferRelease(*(a1 + 40));
  v3 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v2, @"snapShotFrame", 0}];
  if (v3)
  {
    v4 = *(*(a1 + 32) + 272);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___VCVideoCaptureServer_SendSnapshotFromFrame_block_invoke_865;
    block[3] = &unk_1E85F3778;
    block[4] = v3;
    dispatch_async(v4, block);
  }

  else
  {
    ___VCVideoCaptureServer_SendSnapshotFromFrame_block_invoke_cold_1();
  }
}

uint64_t ___VCVideoCaptureServer_SendSnapshotFromFrame_block_invoke_865(uint64_t a1)
{
  v2 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];
  v3 = *(a1 + 32);

  return [v2 sendMessageAsync:"previewDidGetSnapShot" arguments:v3];
}

uint64_t ___VCVideoCaptureServer_DidReceiveFirstPreviewFrame_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 360))
  {
    v2 = *(v1 + 368);
    if (v2)
    {
      return v2(*(v1 + 360), *(result + 40));
    }
  }

  return result;
}

uint64_t ___VCVideoCaptureServer_DidReceiveFirstPreviewFrame_block_invoke_871(uint64_t a1)
{
  v2 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];
  v3 = *(a1 + 32);

  return [v2 sendMessageAsync:"previewDidReceiveFirstFrame" arguments:v3];
}

void ___VCVideoCaptureServer_ProcessPreviewFrameSizeChange_block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  v2 = [VideoAttributes alloc];
  v3 = *(a1 + 60);
  v4 = *(a1 + 40);
  v5 = *(a1 + 44);
  [*(*(a1 + 32) + 448) contentsRect];
  LODWORD(v6) = 1.0;
  v11 = [(VideoAttributes *)v2 initWithCameraStatusBits:v3 aspectRatio:*(a1 + 48) contentsRect:v4 scaleFactor:v5 frameOrientationReference:v7, v8, v9, v10, v6];
  if ([*(a1 + 32) shouldSendVideoAttributeCallback:v11])
  {
    v12 = *(*(a1 + 32) + 360);
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v12)
    {
      if (ErrorLogLevelForModule >= 8)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x1E6986650];
        v16 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = *(a1 + 52);
            v18 = *(a1 + 56);
            v19 = *(a1 + 40);
            v20 = *(a1 + 44);
            *buf = 136316674;
            v44 = v14;
            v45 = 2080;
            v46 = "_VCVideoCaptureServer_ProcessPreviewFrameSizeChange_block_invoke";
            v47 = 1024;
            v48 = 1901;
            v49 = 1024;
            v50 = v17;
            v51 = 1024;
            v52 = v18;
            v53 = 1024;
            v54 = v19;
            v55 = 1024;
            v56 = v20;
            _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d notifying app of frame size change from %dx%d to %dx%d", buf, 0x34u);
          }
        }

        else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v33 = *(a1 + 52);
          v34 = *(a1 + 56);
          v35 = *(a1 + 40);
          v36 = *(a1 + 44);
          *buf = 136316674;
          v44 = v14;
          v45 = 2080;
          v46 = "_VCVideoCaptureServer_ProcessPreviewFrameSizeChange_block_invoke";
          v47 = 1024;
          v48 = 1901;
          v49 = 1024;
          v50 = v33;
          v51 = 1024;
          v52 = v34;
          v53 = 1024;
          v54 = v35;
          v55 = 1024;
          v56 = v36;
          _os_log_debug_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEBUG, "VCVideoCaptureServer [%s] %s:%d notifying app of frame size change from %dx%d to %dx%d", buf, 0x34u);
        }
      }

      v28 = *(a1 + 32);
      v29 = *(v28 + 272);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___VCVideoCaptureServer_ProcessPreviewFrameSizeChange_block_invoke_873;
      block[3] = &unk_1E85F37F0;
      block[4] = v28;
      block[5] = v11;
      dispatch_async(v29, block);
    }

    else
    {
      if (ErrorLogLevelForModule >= 8)
      {
        v21 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x1E6986650];
        v23 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = *(a1 + 52);
            v25 = *(a1 + 56);
            v26 = *(a1 + 40);
            v27 = *(a1 + 44);
            *buf = 136316674;
            v44 = v21;
            v45 = 2080;
            v46 = "_VCVideoCaptureServer_ProcessPreviewFrameSizeChange_block_invoke_2";
            v47 = 1024;
            v48 = 1910;
            v49 = 1024;
            v50 = v24;
            v51 = 1024;
            v52 = v25;
            v53 = 1024;
            v54 = v26;
            v55 = 1024;
            v56 = v27;
            _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d notifying clients of frame size change from %dx%d to %dx%d", buf, 0x34u);
          }
        }

        else if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v37 = *(a1 + 52);
          v38 = *(a1 + 56);
          v39 = *(a1 + 40);
          v40 = *(a1 + 44);
          *buf = 136316674;
          v44 = v21;
          v45 = 2080;
          v46 = "_VCVideoCaptureServer_ProcessPreviewFrameSizeChange_block_invoke";
          v47 = 1024;
          v48 = 1910;
          v49 = 1024;
          v50 = v37;
          v51 = 1024;
          v52 = v38;
          v53 = 1024;
          v54 = v39;
          v55 = 1024;
          v56 = v40;
          _os_log_debug_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEBUG, "VCVideoCaptureServer [%s] %s:%d notifying clients of frame size change from %dx%d to %dx%d", buf, 0x34u);
        }
      }

      v30 = [(VideoAttributes *)v11 copyEncodedDictionary];
      v31 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v30, @"localVideoAttributes", 0}];
      v32 = *(*(a1 + 32) + 272);
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = ___VCVideoCaptureServer_ProcessPreviewFrameSizeChange_block_invoke_875;
      v41[3] = &unk_1E85F3778;
      v41[4] = v31;
      dispatch_async(v32, v41);
    }
  }

  else
  {
    ___VCVideoCaptureServer_ProcessPreviewFrameSizeChange_block_invoke_cold_1();
  }
}

uint64_t ___VCVideoCaptureServer_ProcessPreviewFrameSizeChange_block_invoke_873(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 360);

    return [v4 didChangeLocalVideoAttributes:v3];
  }

  return result;
}

uint64_t ___VCVideoCaptureServer_ProcessPreviewFrameSizeChange_block_invoke_875(uint64_t a1)
{
  v2 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];
  v3 = *(a1 + 32);

  return [v2 sendMessageAsync:"previewDidLocalVideoAttributesChange" arguments:v3];
}

void ___VCVideoCaptureServer_UpdateLocalVideoAttributesOrientation_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 448) setOrientation:*(*(a1 + 32) + 464)];
  *(*(a1 + 32) + 460) = 0;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315650;
      v5 = v2;
      v6 = 2080;
      v7 = "_VCVideoCaptureServer_UpdateLocalVideoAttributesOrientation_block_invoke";
      v8 = 1024;
      v9 = 1682;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d _pendingOrientationChange=NO", &v4, 0x1Cu);
    }
  }
}

uint64_t ___VCVideoCaptureServer_ProcessCaptureSampleBuffer_block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    v4 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v2;
        *&buf[12] = 2080;
        *&buf[14] = "_VCVideoCaptureServer_ProcessCaptureSampleBuffer_block_invoke";
        *&buf[22] = 1024;
        v39 = 1798;
        _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d sending frame to VideoConference", buf, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      ___VCVideoCaptureServer_ProcessCaptureSampleBuffer_block_invoke_cold_1();
    }
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = *(*(a1 + 32) + 104);
  v6 = [v5 countByEnumeratingWithState:&v34 objects:v33 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v35;
    *&v7 = 136315650;
    v23 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v34 + 1) + 8 * i);
        if ((objc_opt_respondsToSelector() & 1) != 0 && ([v11 prepareVideoFrame:*(a1 + 40)] & 1) == 0 && VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v12 = VRTraceErrorLogLevelToCSTR();
          v13 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = v23;
            *&buf[4] = v12;
            *&buf[12] = 2080;
            *&buf[14] = "_VCVideoCaptureServer_ProcessCaptureSampleBuffer_block_invoke";
            *&buf[22] = 1024;
            v39 = 1805;
            _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, "VCVideoCaptureServer [%s] %s:%d prepareVideoFrame returned an error", buf, 0x1Cu);
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v34 objects:v33 count:16];
    }

    while (v8);
  }

  v14 = *(a1 + 72);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v15 = *(*(a1 + 32) + 104);
  v16 = [v15 countByEnumeratingWithState:&v29 objects:v28 count:{16, v23}];
  if (v16)
  {
    v17 = v16;
    v18 = *v30;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v29 + 1) + 8 * j);
        v21 = *(a1 + 40);
        *buf = *(a1 + 48);
        *&buf[16] = *(a1 + 64);
        v24[0] = 0;
        v24[1] = 0;
        v25 = v14;
        v26 = 0;
        v27 = 0;
        [v20 onVideoFrame:v21 frameTime:buf attribute:v24];
      }

      v17 = [v15 countByEnumeratingWithState:&v29 objects:v28 count:16];
    }

    while (v17);
  }

  return FigSampleBufferRelease();
}

- (void)setUpImageRotationConverter
{
  if (!self->_skipPreviewRotation && !self->_previewImageRotationConverter)
  {
    v3 = [[VCImageRotationConverter alloc] initWithRotationAngle:90 width:self->_defaultPortraitAspectRatio.width height:self->_defaultPortraitAspectRatio.height formatType:self->_defaultCapturePixelFormat];
    self->_previewImageRotationConverter = v3;
    if (!v3 && VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_34())
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_9_0();
        _os_log_error_impl(v4, v5, v6, v7, v8, 0x1Cu);
      }
    }
  }
}

- (id)videoRuleForClient:(id)client
{
  dispatch_assert_queue_V2(self->captureClientQueue);
  if (!client)
  {
    return 0;
  }

  result = [client clientCaptureRule];
  if (!result)
  {
    result = [MEMORY[0x1E696AD98] numberWithUnsignedLong:client];
    if (result)
    {
      v6 = result;
      cameraSinkVideoRules = self->_cameraSinkVideoRules;

      return [(NSMutableDictionary *)cameraSinkVideoRules objectForKeyedSubscript:v6];
    }
  }

  return result;
}

- (void)updateCaptureWidth:(int *)width height:(int *)height frameRate:(int *)rate withVideoRule:(id)rule
{
  dispatch_assert_queue_V2(self->captureClientQueue);
  if (rule)
  {
    if ([rule iWidth] < *width)
    {
      *width = [rule iWidth];
    }

    if ([rule iHeight] < *height)
    {
      *height = [rule iHeight];
    }

    [rule fRate];
    if (v10 < *rate)
    {
      [rule fRate];
      *rate = v11;
    }
  }
}

- (void)dispatchedUpdateCaptureRuleForClient:(id)client width:(int)width height:(int)height frameRate:(float)rate
{
  v7 = *&height;
  v8 = *&width;
  v22 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->captureClientQueue);
  if (client)
  {
    v11 = [VCVideoRule alloc];
    *&v12 = rate;
    v15 = [(VCVideoRule *)v11 initWithFrameWidth:v8 frameHeight:v7 frameRate:v12];
    if (v15)
    {
      -[NSMutableDictionary setObject:forKeyedSubscript:](self->_cameraSinkVideoRules, "setObject:forKeyedSubscript:", v15, [MEMORY[0x1E696AD98] numberWithUnsignedLong:client]);
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (OUTLINED_FUNCTION_34())
      {
        *buf = 136315650;
        v17 = v13;
        v18 = 2080;
        v19 = "[VCVideoCaptureServer dispatchedUpdateCaptureRuleForClient:width:height:frameRate:]";
        v20 = 1024;
        v21 = 2771;
        _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, "VCVideoCaptureServer [%s] %s:%d Failed to allocate video rule", buf, 0x1Cu);
      }
    }
  }
}

void __70__VCVideoCaptureServer_deregisterForVideoFramesFromSource_withClient___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48) - 1;
  if (v1 >= 3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_34())
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_9_0();
        _os_log_error_impl(v10, v11, v12, v13, v14, 0x1Cu);
      }
    }
  }

  else
  {
    v3 = qword_1DBD4F710[v1];
    v4 = *(a1 + 32);
    v5 = *(v4 + v3);
    if (v5 && [*(v4 + v3) containsObject:*(a1 + 40)])
    {
      [*(*(a1 + 32) + 128) setObject:0 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLong:", *(a1 + 40))}];
      [v5 removeObject:*(a1 + 40)];
      v6 = *(a1 + 48);
      if ((v6 - 1) >= 2)
      {
        if (v6 == 3 && ![*(*(a1 + 32) + 104) count])
        {
          v15 = *(a1 + 32);

          [v15 stopCapture];
        }
      }

      else if (![*(*(a1 + 32) + 112) count])
      {
        v7 = *(*(a1 + 32) + 312);
        if (v7)
        {
          [v7 stop:1];

          *(*(a1 + 32) + 312) = 0;
          *(*(a1 + 32) + 24) = 0;
          *(*(a1 + 32) + 20) = 0;
          v8 = *(a1 + 32);
          if ((*(v8 + 427) & 1) == 0)
          {
            dispatch_suspend(*(v8 + 56));
            v8 = *(a1 + 32);
          }

          if (*(v8 + 360))
          {
            v9 = objc_opt_respondsToSelector();
            v8 = *(a1 + 32);
            if (v9)
            {
              [*(v8 + 360) didStopCapture];
              v8 = *(a1 + 32);
            }
          }

          [v8 sendBiomeEventIsStarting:0];
        }
      }
    }
  }
}

- (void)init
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, "VCVideoCaptureServer [%s] %s:%d done initialization of singleton", v2, v3, v4, v5, v6);
}

void __28__VCVideoCaptureServer_init__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)isAirPlayXPCHelper
{
  OUTLINED_FUNCTION_16_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_17_11();
}

void __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVideoCaptureServer [%s] %s:%d VCCameraPreview not found. Cannot start preview before initialize.", v2, v3, v4, v5, v6);
}

void __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_79_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVideoCaptureServer [%s] %s:%d VCCameraPreview not found. Cannot pause preview before initialize.", v2, v3, v4, v5, v6);
}

void __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_109_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_29_9();
}

void __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_109_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_29_9();
}

void __47__VCVideoCaptureServer_registerBlocksForServer__block_invoke_109_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_29_9();
}

- (void)createVideoCaptureWithWidth:height:frameRate:useBackFacingCamera:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)handleAVCaptureError:error:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, "VCVideoCaptureServer [%s] %s:%d notifying app of acvapture error", v2, v3, v4, v5, v6);
}

- (void)handleAVCaptureError:error:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, "VCVideoCaptureServer [%s] %s:%d notifying clients of avcapture error", v2, v3, v4, v5, v6);
}

- (void)handleAVCaptureError:error:.cold.3()
{
  OUTLINED_FUNCTION_49(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void __51__VCVideoCaptureServer_handleCaptureEvent_subType___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8_6(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void __51__VCVideoCaptureServer_handleCaptureEvent_subType___block_invoke_cold_2(uint64_t a1, id *a2)
{
  [*a2 UTF8String];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

void __51__VCVideoCaptureServer_handleCaptureEvent_subType___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_8_6(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void __60__VCVideoCaptureServer_registerCaptureClientForScreenShare___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVideoCaptureServer [%s] %s:%d Attempting to register a nil client", v2, v3, v4, v5, v6);
}

- (void)deregisterCaptureClientForScreenShare:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVideoCaptureServer [%s] %s:%d Attempting to deregister a nil client", v2, v3, v4, v5, v6);
}

void __60__VCVideoCaptureServer_registerSystemAudioConfig_forSource___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void __62__VCVideoCaptureServer_deregisterSystemAudioConfig_forSource___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)dispatchedStartSystemAudioForClientKey:(uint64_t)a3 forSource:(uint64_t)a4 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_37();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_30();
  a12 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v23 = VRTraceErrorLogLevelToCSTR();
    v24 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(a9) = 136315906;
      *(&a9 + 4) = v23;
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      *(&a11 + 6) = v20;
      _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d System audio capture already started for clientKey=%@.", &a9, 0x26u);
    }
  }

  OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_36();
}

- (void)dispatchedStartSystemAudioForClientKey:forSource:.cold.2()
{
  OUTLINED_FUNCTION_16_2();
  v4 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      v3 = 2605;
      _os_log_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d Not starting system audio capture until screen capture has started.", v2, 0x1Cu);
    }
  }

  *v0 = 1;
  OUTLINED_FUNCTION_20();
}

- (void)dispatchedStartSystemAudioForClientKey:forSource:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)dispatchedStartSystemAudioForClientKey:forSource:.cold.4()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_30();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_36();
}

- (void)dispatchedStartSystemAudioForClientKey:forSource:.cold.5()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_30();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_36();
}

- (void)dispatchedStopSystemAudioForClientKey:forSource:.cold.1()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)dispatchedStopSystemAudioForClientKey:(_BYTE *)a1 forSource:.cold.2(_BYTE *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    v2 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      v4 = 2628;
      _os_log_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d System audio capture already stopped.", v3, 0x1Cu);
    }
  }

  *a1 = 1;
}

- (void)setupScreenCaptureForSource:(int)a1 config:.cold.1(int a1)
{
  if (a1 >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }
}

- (void)registerForVideoFramesFromSource:sourceConfig:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVideoCaptureServer [%s] %s:%d Invalid VCCaptureSource", v2, v3, v4, v5, v6);
}

void __68__VCVideoCaptureServer_isClientRegisteredForVideoFrames_fromSource___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVideoCaptureServer [%s] %s:%d Invalid VCCaptureSource", v2, v3, v4, v5, v6);
}

void __66__VCVideoCaptureServer_setScreenCaptureFrameRate_captureSourceID___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVideoCaptureServer [%s] %s:%d Failed to set screen capture frame rate", v2, v3, v4, v5, v6);
}

void __66__VCVideoCaptureServer_setScreenCaptureFrameRate_captureSourceID___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVideoCaptureServer [%s] %s:%d No screen capture object found", v2, v3, v4, v5, v6);
}

- (void)setUpScreenVideoCaptureSource:.cold.1()
{
  OUTLINED_FUNCTION_8_6(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)setUpScreenVideoCaptureSource:(uint64_t)a1 .cold.2(uint64_t a1, id *a2)
{
  [*a2 count];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)setUpScreenVideoCaptureSource:(uint64_t)a3 .cold.3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_37();
  a20 = v24;
  a21 = v25;
  v27 = v26;
  OUTLINED_FUNCTION_30();
  a13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v28 = VRTraceErrorLogLevelToCSTR();
    v29 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      LODWORD(a9) = 136315650;
      *(&a9 + 4) = v28;
      OUTLINED_FUNCTION_0();
      a11 = 3111;
      _os_log_error_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_ERROR, "VCVideoCaptureServer [%s] %s:%d Failed to create screen capture object (iOS)", &a9, 0x1Cu);
    }
  }

  *v27 = 0;
  *v22 = 0;
  *v21 = v23;
  OUTLINED_FUNCTION_36();
}

- (void)setUpScreenVideoCaptureSource:.cold.4()
{
  OUTLINED_FUNCTION_37();
  v2 = v1;
  OUTLINED_FUNCTION_16_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
    }
  }

  *v2 = 0;
  *v0 = 0;
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_36();
}

void __48__VCVideoCaptureServer_startScreenShareCapture___block_invoke_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void __48__VCVideoCaptureServer_startScreenShareCapture___block_invoke_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void __47__VCVideoCaptureServer_stopScreenShareCapture___block_invoke_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)updateScreenCapture:withConfig:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __55__VCVideoCaptureServer_updateScreenCapture_withConfig___block_invoke_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void __55__VCVideoCaptureServer_updateScreenCapture_withConfig___block_invoke_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)setupStreamInputs
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void __60__VCVideoCaptureServer_registerVideoSink_withCaptureSource___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_49(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void __62__VCVideoCaptureServer_unregisterVideoSink_withCaptureSource___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_49(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void __59__VCVideoCaptureServer_suspendVideoSink_withCaptureSource___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_49(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void __58__VCVideoCaptureServer_resumeVideoSink_withCaptureSource___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_49(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void __74__VCVideoCaptureServer_registerStreamInputCaptureSourceWithConfiguration___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_20();
}

void __74__VCVideoCaptureServer_registerStreamInputCaptureSourceWithConfiguration___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *v0 = v1;
}

void __74__VCVideoCaptureServer_registerStreamInputCaptureSourceWithConfiguration___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_37();
  v1 = v0;
  v3 = v2;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
    }
  }

  *v1 = v3;
  OUTLINED_FUNCTION_36();
}

void __74__VCVideoCaptureServer_registerStreamInputCaptureSourceWithConfiguration___block_invoke_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_20();
}

void __78__VCVideoCaptureServer_unregisterStreamInputCaptureSourceWithCaptureSourceID___block_invoke_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

- (void)internalRegisterStreamInput:(void *)a1 .cold.1(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      [a1 streamInputID];
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)internalRegisterStreamInput:.cold.2()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)internalRegisterStreamInput:.cold.3()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)internalUnregisterStreamInput:(void *)a1 .cold.1(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      [a1 streamInputID];
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)internalUnregisterStreamInput:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)internalUnregisterStreamInput:.cold.3()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_18();
}

void __48__VCVideoCaptureServer_setLocalVideoAttributes___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, "VCVideoCaptureServer [%s] %s:%d notifying app of video attributes change", v2, v3, v4, v5, v6);
}

void __48__VCVideoCaptureServer_setLocalVideoAttributes___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, "VCVideoCaptureServer [%s] %s:%d notifying clients of video attributes change", v2, v3, v4, v5, v6);
}

void __49__VCVideoCaptureServer_setLocalScreenAttributes___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, "VCVideoCaptureServer [%s] %s:%d notifying app of video attributes change", v2, v3, v4, v5, v6);
}

void __49__VCVideoCaptureServer_setLocalScreenAttributes___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, "VCVideoCaptureServer [%s] %s:%d notifying clients of video attributes change", v2, v3, v4, v5, v6);
}

- (void)dispatchedSetCaptureCameraWithToken:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVideoCaptureServer [%s] %s:%d Invalid cameraUID", v2, v3, v4, v5, v6);
}

- (void)setBoundsForRemoteLayerWithFacing:frameRect:fenceHandle:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)setLocalVideoDestination:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVideoCaptureServer [%s] %s:%d Invalid VCLocalDestinationConfig config", v2, v3, v4, v5, v6);
}

void __49__VCVideoCaptureServer_setLocalVideoDestination___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __63__VCVideoCaptureServer_startPreviewWithWidth_height_frameRate___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVideoCaptureServer [%s] %s:%d error creating AVCapture handle", v2, v3, v4, v5, v6);
}

void __63__VCVideoCaptureServer_startPreviewWithWidth_height_frameRate___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_8_6(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Eu);
}

void __71__VCVideoCaptureServer_newSensitiveContentAnalyzerWithParticipantUUID___block_invoke_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_22_7();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x30u);
    }
  }
}

void __71__VCVideoCaptureServer_newSensitiveContentAnalyzerWithParticipantUUID___block_invoke_cold_2()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v3 = v0;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_22_7();
  v4 = "Sensitive content analysis changed for camera capture";
  _os_log_debug_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_DEBUG, "VCVideoCaptureServer [%s] %s:%d %{private}s", v2, 0x26u);
}

void __71__VCVideoCaptureServer_newSensitiveContentAnalyzerWithParticipantUUID___block_invoke_cold_3(int a1)
{
  if (a1 >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_22_7();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
    }
  }
}

void __71__VCVideoCaptureServer_newSensitiveContentAnalyzerWithParticipantUUID___block_invoke_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_22_7();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void ___VCVideoCaptureServer_SendSnapshotFromFrame_block_invoke_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void ___VCVideoCaptureServer_ProcessPreviewFrameSizeChange_block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      v2 = 1897;
      _os_log_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEFAULT, "VCVideoCaptureServer [%s] %s:%d Skip sending", v1, 0x1Cu);
    }
  }
}

void ___VCVideoCaptureServer_ProcessCaptureSampleBuffer_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_11(&dword_1DB56E000, v0, v1, "VCVideoCaptureServer [%s] %s:%d sending frame to VideoConference", v2, v3, v4, v5, v6);
}

@end