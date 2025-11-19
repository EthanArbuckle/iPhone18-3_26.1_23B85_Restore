@interface AVCaptureSession
+ (BOOL)_isConfiguringProperty:(id)a3 forDevice:(id)a4;
+ (BOOL)_isDeviceInputInSpatialAudioMode:(id)a3;
+ (id)allSessionPresets;
+ (void)_finishConfiguringProperty:(id)a3 forDevice:(id)a4;
+ (void)_startConfiguringProperty:(id)a3 forDevice:(id)a4;
+ (void)initialize;
- (AVCaptureSession)init;
- (AVCaptureSession)initWithAssumedIdentity:(id)a3;
- (AVCaptureSession)initWithMediaEnvironment:(id)a3;
- (AVCaptureSessionControlsDelegate)controlsDelegate;
- (AVCaptureSessionPreset)sessionPreset;
- (BOOL)_addConnection:(id)a3 exceptionReason:(id *)a4;
- (BOOL)_addInputWithNoConnections:(id)a3 exceptionReason:(id *)a4;
- (BOOL)_addOutputWithNoConnections:(id)a3 exceptionReason:(id *)a4;
- (BOOL)_addVideoPreviewLayer:(id)a3 exceptionReason:(id *)a4;
- (BOOL)_addVideoPreviewLayerWithNoConnection:(id)a3 exceptionReason:(id *)a4;
- (BOOL)_buildAndRunGraph:(BOOL)a3;
- (BOOL)_canAddConnection:(id)a3 failureReason:(id *)a4;
- (BOOL)_canAddControl:(id)a3 failureReason:(id *)a4;
- (BOOL)_canAddInput:(id)a3 failureReason:(id *)a4;
- (BOOL)_canAddOutput:(id)a3 failureReason:(id *)a4;
- (BOOL)_canAddVideoPreviewLayer:(id)a3 failureReason:(id *)a4;
- (BOOL)_getSmartStyleRenderingSupported;
- (BOOL)_sessionHasRecordingFileOutput;
- (BOOL)_shouldAutomaticallyAddConnection:(id)a3;
- (BOOL)_startFigCaptureSession;
- (BOOL)_validateAudioConfiguration:(id *)a3;
- (BOOL)_validateCinematicVideoConfiguration:(id *)a3;
- (BOOL)_validateProResRawVideoConfiguration:(id *)a3;
- (BOOL)canAddConnection:(AVCaptureConnection *)connection;
- (BOOL)canAddControl:(id)a3;
- (BOOL)canAddInput:(AVCaptureInput *)input;
- (BOOL)canAddOutput:(AVCaptureOutput *)output;
- (BOOL)canSetSessionPreset:(AVCaptureSessionPreset)preset;
- (BOOL)controlsDelegateCanReceiveAutoFocusLockedCallback;
- (BOOL)isBeingConfiguredOnCurrentThread;
- (BOOL)isManualDeferredStartSupported;
- (BOOL)isMultitaskingCameraAccessSupported;
- (BOOL)isOverCost:(id *)a3;
- (BOOL)isSystemStyleEnabled;
- (BOOL)isValidSystemStyle:(id)a3;
- (BOOL)likelyToRecordProResMovies;
- (BOOL)requestNANDBandwidthToStartMovieFileRecording:(id)a3 outputFileURL:(id)a4 videoCodecType:(id)a5;
- (BOOL)smartStyleRenderingEnabled;
- (BOOL)supportsControls;
- (BOOL)videoHDREnabledForDevice:(id)a3 format:(id)a4 sessionPreset:(id)a5;
- (CMClockRef)synchronizationClock;
- (NSArray)connections;
- (NSArray)controls;
- (NSArray)inputs;
- (NSArray)outputs;
- (OS_dispatch_queue)controlsDelegateCallbackQueue;
- (float)_encoderCost;
- (float)_memoryCost;
- (float)_nandCost;
- (float)_totalHardwareCost;
- (float)_videoAndMovieOutputCost;
- (id)_connectionsForNewInputPort:(id)a3;
- (id)_connectionsForNewOutput:(id)a3;
- (id)_connectionsForNewVideoPreviewLayer:(id)a3;
- (id)_devicesProvidingDepthData;
- (id)_figCaptureSessionConfiguration;
- (id)_initWithMediaEnvironment:(id)a3;
- (id)_livePortSetsByDeviceInput;
- (id)_outputWithClass:(Class)a3 forSourceDevice:(id)a4;
- (id)_outputsWithClass:(Class)a3 forSourceDevice:(id)a4;
- (id)activeSmartStyle;
- (id)description;
- (id)deviceFormatForSessionPreset:(id)a3 device:(id)a4;
- (id)liveSessionConnectedVideoCaptureDevices;
- (id)mediaEnvironment;
- (id)sessionVideoCaptureDevices;
- (id)smartStyle;
- (id)systemSmartStyle;
- (id)valueForUndefinedKey:(id)a3;
- (int)_createFigCaptureSession;
- (int)_getMovieFileOutputNANDDataRate:(id)a3;
- (int)_invokeClientCompositingCallbackForSinkID:(id)a3 settingsID:(int64_t)a4 compositingData:(id)a5;
- (int)_stopFigCaptureSession;
- (int64_t)smartStyleControlMode;
- (unsigned)_computeMemoryUsageForOutputs;
- (void)_activateControlsOverlayIfNecessary;
- (void)_addFakeOutputsIfNeededForCenterStageToSessionConfiguration:(id)a3;
- (void)_beginConfiguration;
- (void)_commitConfiguration;
- (void)_createFigCaptureSession;
- (void)_didRunDeferredStart;
- (void)_handleBackgroundBlurActiveChangedForDevice:(id)a3;
- (void)_handleBackgroundReplacementActiveChangedForDevice:(id)a3;
- (void)_handleCaptureServerConnectionDiedNotification;
- (void)_handleCenterStageActiveChangedForDevice:(id)a3;
- (void)_handleConfigurationCommittedNotificationWithPayload:(id)a3;
- (void)_handleConfigurationDidBecomeLiveNotificationWithPayload:(id)a3;
- (void)_handleDidStartRunningNotificationWithPayload:(id)a3;
- (void)_handleDidStopRunningNotificationWithPayload:(id)a3;
- (void)_handleNotification:(id)a3 payload:(id)a4;
- (void)_handleReactionEffectsActiveChangedForDevice:(id)a3;
- (void)_handleStudioLightingActiveChangedForDevice:(id)a3;
- (void)_handleVideoEffectFrameRateThrottling:(id)a3;
- (void)_invalidateControlsOverlay;
- (void)_makeConfigurationLive:(id)a3;
- (void)_notifyMediaServicesError;
- (void)_notifySessionStarted;
- (void)_notifySessionStopped;
- (void)_postRuntimeError:(id)a3;
- (void)_rebuildGraph;
- (void)_reconnectAfterServerConnectionDied;
- (void)_removeAllPreviewLayers;
- (void)_removeConnection:(id)a3;
- (void)_removeConnectionsForInputPort:(id)a3;
- (void)_removeInput:(id)a3;
- (void)_removeVideoPreviewLayer:(id)a3;
- (void)_setAudioInputDeviceHighQualityBluetoothEnabled:(BOOL)a3;
- (void)_setInterrupted:(BOOL)a3 withReason:(int)a4 interruptor:(id)a5;
- (void)_setMultitaskingCameraAccessEnabled:(BOOL)a3;
- (void)_setRunning:(BOOL)a3;
- (void)_setSynchronizationClock:(OpaqueCMClock *)a3;
- (void)_stopAndTearDownGraph;
- (void)_teardownFigCaptureSession;
- (void)_updateCameraCalibrationDataDeliveryEnabledForSourceDevice:(id)a3;
- (void)_updateConstantColorEnabledForSourceDevice:(id)a3;
- (void)_updateControlsOverlay;
- (void)_updateDepthDataDeliveryEnabledForSourceDevice:(id)a3;
- (void)_updateDeviceActiveFormatsAndActiveConnections;
- (void)_updateHardwareCost;
- (void)_updateMultiCamClientCompositingCallback;
- (void)_updateSmartStyleRenderingStatusWithSkipRebuildGraph:(BOOL)a3;
- (void)_updateVideoHDREnabledForDevice:(id)a3 forceResetVideoHDRSuspended:(BOOL)a4;
- (void)_willRunDeferredStart;
- (void)addConnection:(AVCaptureConnection *)connection;
- (void)addControl:(id)a3;
- (void)addInput:(AVCaptureInput *)input;
- (void)addInputWithNoConnections:(AVCaptureInput *)input;
- (void)addOutput:(AVCaptureOutput *)output;
- (void)addOutputWithNoConnections:(AVCaptureOutput *)output;
- (void)beginConfiguration;
- (void)cancelForegroundAutoResumeAfterDate:(id)a3;
- (void)commitConfiguration;
- (void)dealloc;
- (void)determineSynchronizationClock;
- (void)displaySmartStylesOptOutAlert;
- (void)handleControlsOverlay:(id)a3 didChangeActiveControl:(id)a4;
- (void)handleControlsOverlay:(id)a3 didChangeFocusLocked:(BOOL)a4;
- (void)handleControlsOverlay:(id)a3 didChangeInterfaceReduced:(BOOL)a4;
- (void)handleControlsOverlay:(id)a3 didChangeVisibility:(BOOL)a4 activeControl:(id)a5;
- (void)handleVideoInputDevice:(id)a3 activeDepthDataFormatChanged:(id)a4;
- (void)handleVideoInputDevice:(id)a3 activeFormatChanged:(id)a4;
- (void)movieFileOutputStoppedRecording:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeConnection:(AVCaptureConnection *)connection;
- (void)removeControl:(id)a3;
- (void)removeInput:(AVCaptureInput *)input;
- (void)removeOutput:(AVCaptureOutput *)output;
- (void)runDeferredStartWhenNeeded;
- (void)saveSystemStyleOverrideToDefaults:(id)a3;
- (void)setAutomaticallyConfiguresApplicationAudioSession:(BOOL)automaticallyConfiguresApplicationAudioSession;
- (void)setAutomaticallyConfiguresCaptureDeviceForWideColor:(BOOL)automaticallyConfiguresCaptureDeviceForWideColor;
- (void)setAutomaticallyRunsDeferredStart:(BOOL)a3;
- (void)setConfiguresApplicationAudioSessionForBluetoothHighQualityRecording:(BOOL)a3;
- (void)setConfiguresApplicationAudioSessionToMixWithOthers:(BOOL)a3;
- (void)setContinuityCameraClientDeviceClass:(int)a3;
- (void)setContinuityCameraIsWired:(BOOL)a3;
- (void)setControlsDelegate:(id)a3 queue:(id)a4;
- (void)setDeferredStartDelegate:(id)a3 deferredStartDelegateCallbackQueue:(id)a4;
- (void)setMultitaskingCameraAccessEnabled:(BOOL)multitaskingCameraAccessEnabled;
- (void)setSessionPreset:(AVCaptureSessionPreset)sessionPreset;
- (void)setSmartStyle:(id)a3;
- (void)setSmartStyleControlMode:(int64_t)a3;
- (void)setSuppressVideoEffects:(BOOL)a3;
- (void)setSystemStyleEnabled:(BOOL)a3;
- (void)setUsesApplicationAudioSession:(BOOL)usesApplicationAudioSession;
- (void)startRunning;
- (void)stopRunning;
@end

@implementation AVCaptureSession

+ (void)initialize
{
  if (objc_opt_class() == a1 || objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();
    fig_note_initialize_category_with_default_work_cf();
    if (initialize_sActiveSessionsToken != -1)
    {
      +[AVCaptureSession initialize];
    }
  }

  objc_opt_class();
}

id __30__AVCaptureSession_initialize__block_invoke()
{
  sActiveSessions = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  result = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
  sCaptureDevicePropertiesBeingConfiguredByASession_ByDevice = result;
  return result;
}

- (AVCaptureSession)init
{
  if (dword_1ED8069A0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!AVCaptureClientHasEntitlement(AVCaptureEntitlementWebBrowserEngineRendering))
  {
    return [(AVCaptureSession *)self _initWithMediaEnvironment:0];
  }

  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:{0, AVCaptureEntitlementWebBrowserEngineRendering}];

  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v4);
  }

  NSLog(&cfstr_SuppressingExc.isa, v4);
  return 0;
}

- (BOOL)isMultitaskingCameraAccessSupported
{
  if (AVCaptureClientHasEntitlement(AVCaptureEntitlementMultitaskingCameraAccess))
  {
    return 1;
  }

  if (AVGestaltGetBoolAnswer(@"AVGQCaptureMultitaskingCameraAccessVoipAppsSupported"))
  {
    v3 = [MEMORY[0x1E6963620] bundleRecordForCurrentProcess];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([objc_msgSend(v3 "UIBackgroundModes")])
    {
      return 1;
    }
  }

  return MGGetBoolAnswer();
}

- (int)_createFigCaptureSession
{
  v10 = 0;
  if (self->_internal->figCaptureSession)
  {
    [AVCaptureSession _createFigCaptureSession];
    return 0;
  }

  else
  {
    if (AVCaptureIsRunningInMediaserverd())
    {
      AVCaptureGetCurrentProcessAuditToken(v9);
      v3 = FigCaptureSessionCreate();
    }

    else
    {
      FigCaptureSessionRemoteCreate();
      v7 = 1;
      do
      {
        v3 = FigCaptureSessionRemoteCreate();
        usleep(0x3D090u);
        v8 = v7 & 1;
        v7 = 0;
      }

      while ((v8 & 1) != 0);
    }

    if (v3)
    {
      [(AVCaptureSession *)v3 _createFigCaptureSession];
      return v9[0];
    }

    else
    {
      v4 = [MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
      weakReference = self->_internal->weakReference;
      [v4 addListenerWithWeakReference:weakReference callback:avcaptureFigCaptureSessionNotification name:*MEMORY[0x1E698FD20] object:v10 flags:0];
      [v4 addListenerWithWeakReference:weakReference callback:avcaptureFigCaptureSessionNotification name:*MEMORY[0x1E698FD28] object:v10 flags:0];
      [v4 addListenerWithWeakReference:weakReference callback:avcaptureFigCaptureSessionNotification name:*MEMORY[0x1E698FD48] object:v10 flags:0];
      [v4 addListenerWithWeakReference:weakReference callback:avcaptureFigCaptureSessionNotification name:*MEMORY[0x1E698FD38] object:v10 flags:0];
      [v4 addListenerWithWeakReference:weakReference callback:avcaptureFigCaptureSessionNotification name:*MEMORY[0x1E698FD40] object:v10 flags:0];
      [v4 addListenerWithWeakReference:weakReference callback:avcaptureFigCaptureSessionNotification name:*MEMORY[0x1E698FD50] object:v10 flags:0];
      [v4 addListenerWithWeakReference:weakReference callback:avcaptureFigCaptureSessionNotification name:*MEMORY[0x1E698FD30] object:v10 flags:0];
      result = 0;
      self->_internal->figCaptureSession = v10;
    }
  }

  return result;
}

- (BOOL)isSystemStyleEnabled
{
  if (AVCaptureClientIsCameraOrDerivative())
  {
    return 1;
  }

  return AVCaptureClientIsFigCam();
}

- (void)_beginConfiguration
{
  FigSimpleMutexLock();
  if (!atomic_fetch_add_explicit(&self->_internal->beginConfigRefCount, 1u, memory_order_relaxed))
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [(AVCaptureSession *)self sessionVideoCaptureDevices];
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v10 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          if ([v8 lockForConfiguration:0])
          {
            [v8 setCachesFigCaptureSourceConfigurationChanges:1];
            [v8 unlockForConfiguration];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v10 count:16];
      }

      while (v5);
    }

    self->_internal->threadWhichBeganConfiguration = [MEMORY[0x1E696AF00] currentThread];
  }

  FigSimpleMutexUnlock();
  if (dword_1ED8069A0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (id)sessionVideoCaptureDevices
{
  v3 = [MEMORY[0x1E695DF70] array];
  internal = self->_internal;
  objc_sync_enter(internal);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  inputs = self->_internal->inputs;
  v6 = [(NSMutableArray *)inputs countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v6)
  {
    v7 = *v15;
    v8 = *MEMORY[0x1E6987608];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(inputs);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v10 device];
          if ([v11 hasMediaType:v8])
          {
            [v3 addObject:v11];
          }
        }
      }

      v6 = [(NSMutableArray *)inputs countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v6);
  }

  objc_sync_exit(internal);
  return v3;
}

- (void)_updateMultiCamClientCompositingCallback
{
  internal = self->_internal;
  if (internal->figCaptureSession)
  {
    connections = internal->connections;
    v8 = OUTLINED_FUNCTION_4_3(self, a2, v2, v3, v4, v5);
    if (!v8)
    {
      goto LABEL_13;
    }

    v9 = v8;
    v10 = MEMORY[0];
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (MEMORY[0] != v10)
        {
          objc_enumerationMutation(connections);
        }

        v12 = *(8 * i);
        [v12 output];
        objc_opt_class();
        v13 = OUTLINED_FUNCTION_0_10();
        v14 = [v12 output];
        if ((v13 & 1) == 0)
        {
          objc_opt_class();
          v15 = OUTLINED_FUNCTION_0_10();
          if ((v15 & 1) == 0)
          {
            continue;
          }

          v14 = [v12 output];
        }

        v15 = [v14 isMultiCamClientCompositingEnabled];
        if (v15)
        {
          goto LABEL_13;
        }
      }

      v9 = OUTLINED_FUNCTION_4_3(v15, v16, v17, v18, v19, v20);
      if (!v9)
      {
LABEL_13:
        FigCaptureSessionRemoteSetClientCompositingSinkCallback();
        return;
      }
    }
  }
}

- (void)_updateControlsOverlay
{
  internal = self->_internal;
  objc_sync_enter(internal);
  v4 = [(AVWeakReference *)self->_internal->weakReferenceControlsDelegate referencedObject];
  obj = [(NSMutableArray *)self->_internal->controls copy];
  v5 = self->_internal->controlsOverlay;
  objc_sync_exit(internal);
  if (v4)
  {
    v16 = v5;
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = [(AVCaptureSession *)self liveSessionConnectedVideoCaptureDevices];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = [obj countByEnumeratingWithState:&v22 objects:v21 count:16];
    if (!v8)
    {
      goto LABEL_17;
    }

    v9 = v8;
    v10 = *v23;
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v20;
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v14 = __42__AVCaptureSession__updateControlsOverlay__block_invoke;
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v19;
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v14 = __42__AVCaptureSession__updateControlsOverlay__block_invoke_2;
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v18;
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v14 = __42__AVCaptureSession__updateControlsOverlay__block_invoke_3;
LABEL_13:
          v13[2] = v14;
          v13[3] = &unk_1E7875FC0;
          v13[4] = v12;
          if ([v7 indexOfObjectPassingTest:?] == 0x7FFFFFFFFFFFFFFFLL)
          {
            continue;
          }
        }

        [v6 addObject:v12];
      }

      v9 = [obj countByEnumeratingWithState:&v22 objects:v21 count:16];
      if (!v9)
      {
LABEL_17:
        [(AVCaptureControlsOverlay *)v16 updateControls:v6];
        return;
      }
    }
  }

  if ([obj count])
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (void)_commitConfiguration
{
  v3 = objc_autoreleasePoolPush();
  FigSimpleMutexLock();
  internal = self->_internal;
  beginConfigRefCount = internal->beginConfigRefCount;
  if (beginConfigRefCount < 1)
  {
    v6 = internal->beginConfigRefCount;
  }

  else
  {
    v6 = atomic_fetch_add_explicit(&internal->beginConfigRefCount, 0xFFFFFFFF, memory_order_relaxed) - 1;
    atomic_fetch_add_explicit(&self->_internal->graphRebuildFromCommitConfigRefCount, 1u, memory_order_relaxed);
  }

  FigSimpleMutexUnlock();
  if (dword_1ED8069A0)
  {
    v23 = 0;
    v22 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (beginConfigRefCount >= 1)
  {
    [(AVCaptureSession *)self _buildAndRunGraph:v6 > 0, v15, v16];
    [(AVCaptureSession *)self determineSynchronizationClock];
    FigSimpleMutexLock();
    atomic_fetch_add_explicit(&self->_internal->graphRebuildFromCommitConfigRefCount, 0xFFFFFFFF, memory_order_relaxed);
    v8 = self->_internal;
    if (!v8->beginConfigRefCount && !v8->graphRebuildFromCommitConfigRefCount)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v9 = [(AVCaptureSession *)self sessionVideoCaptureDevices];
      v10 = [v9 countByEnumeratingWithState:&v18 objects:v17 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v19;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v19 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v18 + 1) + 8 * i);
            if ([v14 lockForConfiguration:0])
            {
              [v14 setCachesFigCaptureSourceConfigurationChanges:0];
              [v14 unlockForConfiguration];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v18 objects:v17 count:16];
        }

        while (v11);
      }
    }

    FigSimpleMutexUnlock();
  }

  objc_autoreleasePoolPop(v3);
}

- (void)_updateDeviceActiveFormatsAndActiveConnections
{
  obj = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  inputs = self->_internal->inputs;
  v4 = [(NSMutableArray *)inputs countByEnumeratingWithState:&v132 objects:v131 count:16];
  v5 = MEMORY[0x1E6987608];
  if (v4)
  {
    v6 = v4;
    v7 = *v133;
    v8 = *MEMORY[0x1E6987608];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v133 != v7)
        {
          objc_enumerationMutation(inputs);
        }

        v10 = *(*(&v132 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v10 device];
          if ([v11 hasMediaType:v8])
          {
            if (([obj containsObject:v11] & 1) == 0)
            {
              [obj addObject:v11];
            }
          }
        }
      }

      v6 = [(NSMutableArray *)inputs countByEnumeratingWithState:&v132 objects:v131 count:16];
    }

    while (v6);
  }

  self->_internal->videoInputDeviceUsed = [obj count] != 0;
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v74 = [obj countByEnumeratingWithState:&v127 objects:v126 count:16];
  if (v74)
  {
    v73 = *v128;
    v78 = *(MEMORY[0x1E6960C88] + 12);
    v77 = *(MEMORY[0x1E6960C88] + 16);
    v76 = *(MEMORY[0x1E6960C80] + 12);
    v75 = *(MEMORY[0x1E6960C80] + 16);
    v12 = *v5;
    v13 = *MEMORY[0x1E69875A0];
    v69 = *MEMORY[0x1E69875C0];
    v70 = *MEMORY[0x1E69875A0];
    v72 = self;
    do
    {
      v14 = 0;
      do
      {
        if (*v128 != v73)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v127 + 1) + 8 * v14);
        v16 = [(AVCaptureSession *)self deviceFormatForSessionPreset:self->_internal->sessionPreset device:v15];
        v17 = [(AVCaptureSession *)self _outputWithClass:objc_opt_class() forSourceDevice:v15];
        if (v17)
        {
          if (AVGestaltGetBoolAnswer(@"AVGQCaptureMFOSupportsPhotoFormats"))
          {
            v18 = 1;
          }

          else
          {
            v18 = [v16 isPhotoFormat] ^ 1;
          }

          v83 = v18;
        }

        else
        {
          v83 = 0;
        }

        v19 = [(AVCaptureSession *)self _outputsWithClass:objc_opt_class() forSourceDevice:v15];
        v20 = [v19 count];
        BoolAnswer = AVGestaltGetBoolAnswer(@"AVGQCaptureMultipleVideoDataOutputsSupported");
        v90 = v17;
        if (v17)
        {
          v22 = BoolAnswer;
        }

        else
        {
          v22 = 1;
        }

        if (v20)
        {
          v23 = v22;
        }

        else
        {
          v23 = 0;
        }

        CMFormatDescriptionGetMediaSubType([objc_msgSend(v15 "activeFormat")]);
        v24 = [(AVCaptureSession *)self _outputWithClass:objc_opt_class() forSourceDevice:v15];
        if ([v15 activeColorSpace] == 3 || objc_msgSend(v15, "activeColorSpace") == 4)
        {
          v82 = 0;
        }

        else
        {
          v82 = FigCapturePixelFormatIsPackedBayerRaw() ^ 1;
        }

        v87 = [(AVCaptureSession *)self _outputWithClass:objc_opt_class() forSourceDevice:v15];
        v88 = v24;
        v89 = v14;
        if ([v15 activeColorSpace] == 3 || objc_msgSend(v15, "activeColorSpace") == 4)
        {
          v81 = 0;
        }

        else
        {
          v81 = FigCapturePixelFormatIsPackedBayerRaw() ^ 1;
        }

        v86 = [(AVCaptureSession *)self _outputsWithClass:objc_opt_class() forSourceDevice:0];
        v25 = [v86 count];
        v26 = v25 != 0;
        if (v90 && v25)
        {
          v26 = AVGestaltGetBoolAnswer(@"AVGQCaptureSimultaneousADOMFOVDOOutputsSupported");
        }

        if ((AVGestaltGetBoolAnswer(@"AVGQCaptureADOSupportsAudioCaptureWithPhotoFormats") & 1) == 0)
        {
          v26 = v26 & ([v16 isPhotoFormat] ^ 1);
        }

        v85 = [(AVCaptureSession *)self _outputWithClass:objc_opt_class() forSourceDevice:v15];
        if (v85 && (([v16 isStreamingDisparitySupported] & 1) != 0 || objc_msgSend(v16, "isStreamingDepthSupported")) && (objc_msgSend(objc_msgSend(v16, "figCaptureSourceVideoFormat"), "isStreamingDepthOnlyPrivatelySupported") & 1) == 0)
        {
          if (CMVideoFormatDescriptionGetDimensions([v16 formatDescription]).width >= 2561 && objc_msgSend(v15, "_isBravoVariant"))
          {
            v125 = 0u;
            v124 = 0u;
            v123 = 0u;
            v122 = 0u;
            v31 = [v19 countByEnumeratingWithState:&v122 objects:v121 count:16];
            if (v31)
            {
              v32 = v31;
              v33 = *v123;
              v97 = 1;
              do
              {
                for (j = 0; j != v32; ++j)
                {
                  if (*v123 != v33)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v97 &= [*(*(&v122 + 1) + 8 * j) deliversPreviewSizedOutputBuffers];
                }

                v32 = [v19 countByEnumeratingWithState:&v122 objects:v121 count:16];
              }

              while (v32);
            }

            else
            {
              v97 = 1;
            }

            if (v83)
            {
              v97 &= [(NSString *)self->_internal->sessionPreset isEqual:@"AVCaptureSessionPresetPhoto"];
            }

            v13 = v70;
          }

          else
          {
            v97 = 1;
          }
        }

        else
        {
          v97 = 0;
        }

        v27 = [objc_msgSend(objc_msgSend(v16 "supportedColorSpaces")];
        if (self->_internal->automaticallyConfiguresCaptureDeviceForWideColor && [v15 isWideColorSupported] && (objc_msgSend(objc_opt_class(), "_isConfiguringProperty:forDevice:", @"activeColorSpace", v15) & 1) == 0)
        {
          v79 = v27;
          [objc_msgSend(v16 "figCaptureSourceVideoFormat")];
          IsTenBit = FigCapturePixelFormatIsTenBit();
          [objc_msgSend(v16 "figCaptureSourceVideoFormat")];
          IsPackedBayerRaw = FigCapturePixelFormatIsPackedBayerRaw();
          v30 = IsPackedBayerRaw;
          if ((IsTenBit & 1) == 0 && (IsPackedBayerRaw & 1) == 0 && (![(AVCaptureSession *)self _outputWithClass:objc_opt_class() forSourceDevice:v15]|| ((v83 | v23) & 1) != 0 && ![(NSString *)self->_internal->sessionPreset isEqualToString:@"AVCaptureSessionPresetPhoto"]))
          {
            goto LABEL_73;
          }

          if (([v16 isWideColorSupported] & 1) == 0 && (-[NSString isEqual:](self->_internal->sessionPreset, "isEqual:", @"AVCaptureSessionPresetInputPriority") & 1) == 0)
          {
            v94 = [v15 deviceFormatForSessionPreset:self->_internal->sessionPreset sourceVideoFormat:875704422];
            if ([v94 isWideColorSupported])
            {
              v16 = v94;
              [objc_msgSend(v94 "figCaptureSourceVideoFormat")];
              IsTenBit = FigCapturePixelFormatIsTenBit();
              [objc_msgSend(v94 "figCaptureSourceVideoFormat")];
              v30 = FigCapturePixelFormatIsPackedBayerRaw();
            }
          }

          if ([v16 isWideColorSupported])
          {
            if ([objc_msgSend(v16 "supportedColorSpaces")] & v30)
            {
              v27 = 4;
            }

            else if ([objc_msgSend(v16 "supportedColorSpaces")] & v30)
            {
              v27 = 3;
            }

            else if ([objc_msgSend(v16 "supportedColorSpaces")] & IsTenBit)
            {
              v27 = 2;
            }

            else
            {
              v27 = v79;
              if ([objc_msgSend(v16 "supportedColorSpaces")])
              {
                v27 = 1;
              }
            }
          }

          else
          {
LABEL_73:
            v27 = v79;
          }
        }

        v80 = v27;
        v84 = [v16 isEqual:{objc_msgSend(v15, "activeFormat")}];
        if (v84)
        {
          if (-[NSMutableArray containsObject:](self->_internal->devicesToResetVideoZoomFactorAndMinMaxFrameDurations, "containsObject:", v15) && [v15 lockForConfiguration:0])
          {
            v120 = **&MEMORY[0x1E6960C70];
            v95 = *&v120.value;
            epoch = v120.epoch;
            [v15 setActiveVideoMaxFrameDuration:&v120];
            *&v120.value = v95;
            v120.epoch = epoch;
            [v15 setActiveVideoMinFrameDuration:&v120];
            [(AVCaptureSession *)self _updateDepthDataDeliveryEnabledForSourceDevice:v15];
            [v15 _resetDefaultVideoZoomFactor];
            [(NSMutableArray *)self->_internal->devicesToResetVideoZoomFactorAndMinMaxFrameDurations removeObject:v15];
            [v15 unlockForConfiguration];
          }
        }

        else
        {
          [objc_opt_class() _startConfiguringProperty:@"activeFormat" forDevice:v15];
          [objc_opt_class() _startConfiguringProperty:@"activeColorSpace" forDevice:v15];
          if ([v15 lockForConfiguration:0])
          {
            [v15 _setActiveFormat:v16 resetVideoZoomFactorAndMinMaxFrameDurations:-[NSMutableArray containsObject:](self->_internal->devicesToResetVideoZoomFactorAndMinMaxFrameDurations sessionPreset:"containsObject:", v15), self->_internal->sessionPreset];
            [(NSMutableArray *)self->_internal->devicesToResetVideoZoomFactorAndMinMaxFrameDurations removeObject:v15];
            [v15 unlockForConfiguration];
          }

          [objc_opt_class() _finishConfiguringProperty:@"activeColorSpace" forDevice:v15];
          [objc_opt_class() _finishConfiguringProperty:@"activeFormat" forDevice:v15];
        }

        if ([v15 isActiveVideoMinFrameDurationSet] && (objc_msgSend(v15, "isActiveVideoMaxFrameDurationSet") & 1) != 0)
        {
          v36 = 0;
          v37 = 0;
        }

        else
        {
          value = *MEMORY[0x1E6960C88];
          timescale = *(MEMORY[0x1E6960C88] + 8);
          v116 = *MEMORY[0x1E6960C80];
          v117 = *(MEMORY[0x1E6960C80] + 8);
          v112 = 0u;
          v113 = 0u;
          v114 = 0u;
          v115 = 0u;
          connections = self->_internal->connections;
          v39 = [(NSMutableArray *)connections countByEnumeratingWithState:&v112 objects:v111 count:16];
          flags = v78;
          v91 = v77;
          v96 = v76;
          v93 = v75;
          if (v39)
          {
            v40 = v39;
            v41 = *v113;
            flags = v78;
            v91 = v77;
            v96 = v76;
            v93 = v75;
            do
            {
              for (k = 0; k != v40; ++k)
              {
                if (*v113 != v41)
                {
                  objc_enumerationMutation(connections);
                }

                v43 = *(*(&v112 + 1) + 8 * k);
                if ([v43 sourceDevice] == v15 && objc_msgSend(objc_msgSend(v43, "mediaType"), "isEqual:", v12))
                {
                  if (([v15 isActiveVideoMinFrameDurationSet] & 1) == 0)
                  {
                    if ([v43 isVideoMinFrameDurationSet])
                    {
                      memset(&v120, 0, sizeof(v120));
                      if (v43)
                      {
                        [v43 _videoMinFrameDuration];
                        if (v120.flags)
                        {
                          time1 = v120;
                          time2.value = value;
                          time2.timescale = timescale;
                          time2.flags = flags;
                          time2.epoch = v91;
                          if (CMTimeCompare(&time1, &time2) < 0)
                          {
                            value = v120.value;
                            flags = v120.flags;
                            timescale = v120.timescale;
                            v91 = v120.epoch;
                          }
                        }
                      }
                    }
                  }

                  if (([v15 isActiveVideoMaxFrameDurationSet] & 1) == 0)
                  {
                    if ([v43 isVideoMaxFrameDurationSet])
                    {
                      memset(&v120, 0, sizeof(v120));
                      if (v43)
                      {
                        [v43 _videoMaxFrameDuration];
                        if (v120.flags)
                        {
                          time1 = v120;
                          time2.value = v116;
                          time2.timescale = v117;
                          time2.flags = v96;
                          time2.epoch = v93;
                          if (CMTimeCompare(&time1, &time2) >= 1)
                          {
                            v116 = v120.value;
                            v96 = v120.flags;
                            v117 = v120.timescale;
                            v93 = v120.epoch;
                          }
                        }
                      }
                    }
                  }
                }
              }

              v40 = [(NSMutableArray *)connections countByEnumeratingWithState:&v112 objects:v111 count:16];
            }

            while (v40);
          }

          v44 = flags;
          v45 = flags & 5;
          v46 = v96;
          if (v45 == 5 && (v96 & 9) == 9)
          {
            v36 = 0;
            v37 = 0;
            self = v72;
            v13 = v70;
          }

          else
          {
            memset(&v120, 0, sizeof(v120));
            v47 = [v15 activeFormat];
            v13 = v70;
            if (v47)
            {
              [v47 lowestSupportedVideoFrameDuration];
            }

            else
            {
              memset(&v120, 0, sizeof(v120));
            }

            memset(&time1, 0, sizeof(time1));
            v48 = [v15 activeFormat];
            self = v72;
            if (v48)
            {
              [v48 highestSupportedVideoFrameDuration];
            }

            else
            {
              memset(&time1, 0, sizeof(time1));
            }

            v49 = v93;
            v50 = v96 & 9;
            if (v45 != 5)
            {
              time2.value = value;
              time2.timescale = timescale;
              time2.flags = flags;
              v51 = v91;
              time2.epoch = v91;
              v108 = v120;
              if (CMTimeCompare(&time2, &v108) < 0)
              {
                value = v120.value;
                v44 = v120.flags;
                timescale = v120.timescale;
                v51 = v120.epoch;
              }

              time2.value = value;
              time2.timescale = timescale;
              time2.flags = v44;
              time2.epoch = v51;
              v108 = time1;
              if (CMTimeCompare(&time2, &v108) >= 1)
              {
                value = time1.value;
                v44 = time1.flags;
                timescale = time1.timescale;
                v51 = time1.epoch;
              }

              time2.value = value;
              time2.timescale = timescale;
              time2.flags = v44;
              time2.epoch = v51;
              [v15 _setActiveVideoMinFrameDuration:&time2];
              v49 = v93;
              self = v72;
              v50 = v96 & 9;
            }

            v36 = v45 != 5;
            if (v50 != 9)
            {
              time2.value = v116;
              time2.timescale = v117;
              time2.flags = v96;
              time2.epoch = v49;
              v108 = time1;
              v52 = v93;
              if (CMTimeCompare(&time2, &v108) >= 1)
              {
                v116 = time1.value;
                v46 = time1.flags;
                v117 = time1.timescale;
                v52 = time1.epoch;
              }

              time2.value = v116;
              time2.timescale = v117;
              time2.flags = v46;
              time2.epoch = v52;
              v108 = v120;
              if (CMTimeCompare(&time2, &v108) < 0)
              {
                v116 = v120.value;
                v46 = v120.flags;
                v117 = v120.timescale;
                v52 = v120.epoch;
              }

              time2.value = v116;
              time2.timescale = v117;
              time2.flags = v46;
              time2.epoch = v52;
              [v15 _setActiveVideoMaxFrameDuration:&time2];
              v50 = v96 & 9;
            }

            v37 = v50 != 9;
          }
        }

        v53 = [v15 isActiveVideoMinFrameDurationSet];
        if (!v36 && (v53 & 1) == 0 && ((v37 | [v15 isActiveVideoMaxFrameDurationSet]) & 1) == 0 && (objc_msgSend(v15, "isPortraitEffectActive") & 1) == 0 && (objc_msgSend(v15, "isStudioLightActive") & 1) == 0 && (objc_msgSend(v15, "isBackgroundReplacementActive") & 1) == 0 && (objc_msgSend(v15, "isCenterStageActive") & 1) == 0)
        {
          memset(&v120, 0, sizeof(v120));
          v54 = [v15 activeFormat];
          if (v54)
          {
            [v54 defaultActiveMinFrameDurationForSessionPreset:self->_internal->sessionPreset];
          }

          else
          {
            memset(&v120, 0, sizeof(v120));
          }

          memset(&time1, 0, sizeof(time1));
          v55 = [v15 activeFormat];
          if (v55)
          {
            [v55 defaultActiveMaxFrameDurationForSessionPreset:self->_internal->sessionPreset];
          }

          else
          {
            memset(&time1, 0, sizeof(time1));
          }

          if (v97)
          {
            [objc_msgSend(objc_msgSend(objc_msgSend(v15 "activeDepthDataFormat")];
            v57 = v56;
            v58 = v120.timescale / v120.value;
            v59 = v58 <= v56 ? 1 : v58 / v57;
            CMTimeMake(&time2, 1, v59 * v57);
            v120 = time2;
            time2 = time1;
            v108 = v120;
            if (CMTimeCompare(&time2, &v108) < 0)
            {
              time1 = v120;
            }
          }

          time2 = v120;
          [v15 _setActiveVideoMinFrameDuration:&time2];
          time2 = time1;
          [v15 _setActiveVideoMaxFrameDuration:&time2];
        }

        if (self->_internal->automaticallyConfiguresCaptureDeviceForWideColor && [v15 isWideColorSupported] && objc_msgSend(v15, "lockForConfiguration:", 0))
        {
          if ([v15 activeColorSpace] != v80)
          {
            v60 = [objc_msgSend(v15 "activeFormat")];
            if ([v60 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", v80)}])
            {
              [objc_opt_class() _startConfiguringProperty:@"activeColorSpace" forDevice:v15];
              [v15 setActiveColorSpace:v80];
              [objc_opt_class() _finishConfiguringProperty:@"activeColorSpace" forDevice:v15];
            }
          }

          [v15 unlockForConfiguration];
        }

        [(AVCaptureSession *)self _updateVideoHDREnabledForDevice:v15 forceResetVideoHDRSuspended:v84 ^ 1u];
        if (v90)
        {
          [v90 setConnectionsActive:v83];
        }

        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        v61 = [v19 countByEnumeratingWithState:&v104 objects:v103 count:16];
        if (v61)
        {
          v62 = v61;
          v63 = *v105;
          do
          {
            for (m = 0; m != v62; ++m)
            {
              if (*v105 != v63)
              {
                objc_enumerationMutation(v19);
              }

              [objc_msgSend(*(*(&v104 + 1) + 8 * m) connectionWithMediaType:{v12), "_setActive:", v23}];
            }

            v62 = [v19 countByEnumeratingWithState:&v104 objects:v103 count:16];
          }

          while (v62);
        }

        if (v86)
        {
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v65 = [v86 countByEnumeratingWithState:&v99 objects:v98 count:16];
          if (v65)
          {
            v66 = v65;
            v67 = *v100;
            do
            {
              for (n = 0; n != v66; ++n)
              {
                if (*v100 != v67)
                {
                  objc_enumerationMutation(v86);
                }

                [objc_msgSend(*(*(&v99 + 1) + 8 * n) connectionWithMediaType:{v13), "_setActive:", v26}];
              }

              v66 = [v86 countByEnumeratingWithState:&v99 objects:v98 count:16];
            }

            while (v66);
          }
        }

        if (v85)
        {
          [objc_msgSend(v85 connectionWithMediaType:{v69), "_setActive:", v97}];
        }

        if (v88)
        {
          [objc_msgSend(v88 connectionWithMediaType:{v12), "_setActive:", v82}];
        }

        if (v87)
        {
          [objc_msgSend(v87 connectionWithMediaType:{v12), "_setActive:", v81}];
        }

        v14 = v89 + 1;
      }

      while (v89 + 1 != v74);
      v74 = [obj countByEnumeratingWithState:&v127 objects:v126 count:16];
    }

    while (v74);
  }
}

- (BOOL)_getSmartStyleRenderingSupported
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    isKindOfClass = [-[AVCaptureSession sessionVideoCaptureDevices](self "sessionVideoCaptureDevices")];
    if (isKindOfClass >= 2)
    {
      isKindOfClass = AVCaptureClientIsContinuityCapture();
      if (!isKindOfClass)
      {
        return isKindOfClass;
      }
    }
  }

  inputs = self->_internal->inputs;
  v12 = OUTLINED_FUNCTION_5_1(isKindOfClass, v4, v5, v6, v7, v8, v9, v10, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84);
  if (v12)
  {
    v13 = v12;
    v14 = MEMORY[0];
    v15 = *MEMORY[0x1E6987608];
LABEL_6:
    v16 = 0;
    while (1)
    {
      if (MEMORY[0] != v14)
      {
        objc_enumerationMutation(inputs);
      }

      v17 = *(8 * v16);
      objc_opt_class();
      v18 = OUTLINED_FUNCTION_0_10();
      if (v18)
      {
        v26 = [v17 device];
        v18 = [v26 hasMediaType:v15];
        if (v18)
        {
          break;
        }
      }

      if (v13 == ++v16)
      {
        v13 = OUTLINED_FUNCTION_5_1(v18, v19, v20, v21, v22, v23, v24, v25, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85);
        if (v13)
        {
          goto LABEL_6;
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    v26 = 0;
  }

  LODWORD(isKindOfClass) = [objc_msgSend(v26 "activeFormat")];
  if (!isKindOfClass)
  {
    return isKindOfClass;
  }

  LODWORD(isKindOfClass) = [objc_msgSend(v26 "activeFormat")];
  if (!isKindOfClass)
  {
    return isKindOfClass;
  }

  if (([v26 imageControlMode] - 4) < 3)
  {
    goto LABEL_17;
  }

  outputs = self->_internal->outputs;
  OUTLINED_FUNCTION_1_13();
  v28 = [NSMutableArray countByEnumeratingWithState:"countByEnumeratingWithState:objects:count:" objects:? count:?];
  if (!v28)
  {
    v30 = 0;
    v31 = 0;
    goto LABEL_39;
  }

  v29 = v28;
  v30 = 0;
  v31 = 0;
  v32 = MEMORY[0];
  do
  {
    for (i = 0; i != v29; ++i)
    {
      if (MEMORY[0] != v32)
      {
        objc_enumerationMutation(outputs);
      }

      v34 = *(8 * i);
      if (v30)
      {
        if (!v31)
        {
          goto LABEL_30;
        }
      }

      else
      {
        objc_opt_class();
        if (OUTLINED_FUNCTION_0_10())
        {
          v30 = v34;
        }

        else
        {
          v30 = 0;
        }

        if (!v31)
        {
LABEL_30:
          objc_opt_class();
          if (OUTLINED_FUNCTION_0_10())
          {
            v31 = v34;
          }

          else
          {
            v31 = 0;
          }

          if (!v31)
          {
            continue;
          }
        }
      }

      if (v30)
      {
        goto LABEL_39;
      }
    }

    OUTLINED_FUNCTION_1_13();
    v29 = [NSMutableArray countByEnumeratingWithState:"countByEnumeratingWithState:objects:count:" objects:? count:?];
  }

  while (v29);
LABEL_39:
  if (([v30 isSpatialVideoCaptureEnabled] & 1) == 0)
  {
    LOBYTE(isKindOfClass) = [v31 isSpatialPhotoCaptureEnabled] ^ 1;
    return isKindOfClass;
  }

LABEL_17:
  LOBYTE(isKindOfClass) = 0;
  return isKindOfClass;
}

- (void)_updateHardwareCost
{
  v3 = objc_autoreleasePoolPush();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(AVCaptureSession *)self connections];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v15 count:16];
  v6 = 0.0;
  if (v5)
  {
    v7 = v5;
    v14 = self;
    v8 = 0;
    v9 = *v17;
    v10 = *MEMORY[0x1E6987608];
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 isActive])
        {
          if ([objc_msgSend(v12 "mediaType")])
          {
            [v12 output];
            objc_opt_class();
            if (objc_opt_isKindOfClass() & 1) != 0 || ([v12 output], objc_opt_class(), (objc_opt_isKindOfClass()))
            {
              if (v8 >= 1)
              {
                self = v14;
                [(AVCaptureSession *)v14 _totalHardwareCost];
                v6 = v13;
                goto LABEL_16;
              }

              v8 = 1;
            }
          }
        }
      }

      v7 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }

    self = v14;
  }

LABEL_16:
  if (v6 != self->_internal->hardwareCost)
  {
    [(AVCaptureSession *)self willChangeValueForKey:@"hardwareCost"];
    self->_internal->hardwareCost = v6;
    [(AVCaptureSession *)self didChangeValueForKey:@"hardwareCost"];
  }

  objc_autoreleasePoolPop(v3);
}

- (NSArray)connections
{
  internal = self->_internal;
  objc_sync_enter(internal);
  v4 = [MEMORY[0x1E695DEC8] arrayWithArray:self->_internal->connections];
  objc_sync_exit(internal);
  return v4;
}

- (id)_figCaptureSessionConfiguration
{
  v3 = objc_alloc_init(MEMORY[0x1E698F7D8]);
  ++_figCaptureSessionConfiguration_uniqueConfigurationID;
  [v3 setConfigurationID:?];
  [v3 setClientExpectsCameraMountedInLandscapeOrientation:AVCaptureClientExpectsCameraMountedInLandscapeOrientation()];
  [v3 setSessionPreset:{-[AVCaptureSession sessionPreset](self, "sessionPreset")}];
  [v3 setUsesAppAudioSession:self->_internal->usesApplicationAudioSession];
  [v3 setConfiguresAppAudioSession:self->_internal->automaticallyConfiguresApplicationAudioSession];
  if ([v3 usesAppAudioSession])
  {
    [v3 setConfiguresAppAudioSessionToMixWithOthers:self->_internal->configuresApplicationAudioSessionToMixWithOthers];
    [v3 setConfiguresAppAudioSessionForBluetoothHighQualityRecording:self->_internal->configuresApplicationAudioSessionForBluetoothHighQualityRecording];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    inputs = self->_internal->inputs;
    v5 = [(NSMutableArray *)inputs countByEnumeratingWithState:&v36 objects:v35 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v37;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v37 != v7)
          {
            objc_enumerationMutation(inputs);
          }

          v9 = *(*(&v36 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = [v9 device];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v10 setAllowsBluetoothHighQualityRecording:self->_internal->configuresApplicationAudioSessionForBluetoothHighQualityRecording];
            }
          }
        }

        v6 = [(NSMutableArray *)inputs countByEnumeratingWithState:&v36 objects:v35 count:16];
      }

      while (v6);
    }
  }

  [v3 setAllowedToRunInMultitaskingMode:self->_internal->authorizedToUseCameraInMultipleForegroundAppLayout];
  [v3 setTccIdentity:self->_internal->tccIdentity];
  objc_opt_class();
  [v3 setMultiCamSession:objc_opt_isKindOfClass() & 1];
  [v3 setXctestAuthorizedToStealDevice:self->_internal->xctestAuthorizedToStealDevice];
  [v3 setContinuityCameraIsWired:self->_internal->continuityCameraIsWired];
  [v3 setContinuityCameraClientDeviceClass:self->_internal->continuityCameraClientDeviceClass];
  v11 = [MEMORY[0x1E6963620] bundleRecordForCurrentProcess];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 setClientIsVOIP:{objc_msgSend(objc_msgSend(v11, "UIBackgroundModes"), "containsObject:", @"voip"}];
  }

  [v3 setSuppressVideoEffects:self->_internal->suppressVideoEffects];
  [v3 setCheckIfFileAlreadyExistForMFO:self->_internal->checkIfFileAlreadyExistForMFO];
  [v3 setSmartStyleRenderingEnabled:self->_internal->smartStyleRenderingEnabled];
  if ([v3 smartStyleRenderingEnabled])
  {
    [v3 setSmartStyleControlMode:{-[AVCaptureSession smartStyleControlMode](self, "smartStyleControlMode")}];
    [v3 setSmartStyle:0];
    smartStyleSetByClient = self->_internal->smartStyleSetByClient;
    if (smartStyleSetByClient)
    {
      v13 = MEMORY[0x1E698F7E0];
      v14 = [(AVCaptureSmartStyle *)smartStyleSetByClient cast];
      [(AVCaptureSmartStyle *)smartStyleSetByClient intensity];
      v16 = v15;
      [(AVCaptureSmartStyle *)smartStyleSetByClient toneBias];
      v18 = v17;
      [(AVCaptureSmartStyle *)smartStyleSetByClient colorBias];
      LODWORD(v20) = v19;
      LODWORD(v21) = v16;
      LODWORD(v22) = v18;
      [v3 setSmartStyle:{objc_msgSend(v13, "styleWithCast:intensity:toneBias:colorBias:", v14, v21, v22, v20)}];
    }
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  connections = self->_internal->connections;
  v24 = [(NSMutableArray *)connections countByEnumeratingWithState:&v31 objects:v30 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v32;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v32 != v26)
        {
          objc_enumerationMutation(connections);
        }

        v28 = [*(*(&v31 + 1) + 8 * j) figCaptureConnectionConfigurationForSessionPreset:self->_internal->sessionPreset allConnections:self->_internal->connections];
        if ([v28 mediaType] == 1685091432 && objc_msgSend(objc_msgSend(v28, "sourceConfiguration"), "isCinematicVideoCaptureEnabled"))
        {
          objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"AVCaptureDepthDataOutput cannot be used in conjunction with Cinematic Video capture." userInfo:0]);
        }

        if (v28)
        {
          [v3 addConnectionConfiguration:v28];
          [objc_msgSend(v28 "sourceConfiguration")];
        }
      }

      v25 = [(NSMutableArray *)connections countByEnumeratingWithState:&v31 objects:v30 count:16];
    }

    while (v25);
  }

  [(AVCaptureSession *)self _addFakeOutputsIfNeededForCenterStageToSessionConfiguration:v3];
  [v3 setAutomaticallyRunsDeferredStart:self->_internal->automaticallyRunsDeferredStart];
  return v3;
}

- (AVCaptureSessionPreset)sessionPreset
{
  internal = self->_internal;
  objc_sync_enter(internal);
  v4 = self->_internal->sessionPreset;
  objc_sync_exit(internal);
  return v4;
}

- (void)_removeAllPreviewLayers
{
  if ([(NSPointerArray *)self->_internal->videoPreviewLayers count])
  {
    v3 = [(NSPointerArray *)self->_internal->videoPreviewLayers copy];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v8 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v9 + 1) + 8 * v7++) setSession:0];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v8 count:16];
      }

      while (v5);
    }
  }
}

- (void)beginConfiguration
{
  if (dword_1ED8069A0)
  {
    v7 = 0;
    v6 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(AVCaptureSession *)self _beginConfiguration:v4];
}

- (NSArray)inputs
{
  internal = self->_internal;
  objc_sync_enter(internal);
  v4 = [MEMORY[0x1E695DEC8] arrayWithArray:self->_internal->inputs];
  objc_sync_exit(internal);
  return v4;
}

- (void)commitConfiguration
{
  if (dword_1ED8069A0)
  {
    v8 = 0;
    v7 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v6[0] = 0;
  if (![(AVCaptureSession *)self _validateAudioConfiguration:v6, v4, v5]|| ![(AVCaptureSession *)self _validateCinematicVideoConfiguration:v6])
  {
    goto LABEL_9;
  }

  if ([(AVCaptureSession *)self _validateProResRawVideoConfiguration:v6])
  {
    [(AVCaptureSession *)self _commitConfiguration];
    return;
  }

  if (!AVGestaltGetBoolAnswer(@"AVGQCaptureProResRawVDORotationAndMirroringSupported"))
  {
LABEL_9:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v6[0] userInfo:0]);
  }

  [(AVCaptureSession *)self _postRuntimeError:AVLocalizedError()];
}

- (NSArray)outputs
{
  internal = self->_internal;
  objc_sync_enter(internal);
  v4 = [MEMORY[0x1E695DEC8] arrayWithArray:self->_internal->outputs];
  objc_sync_exit(internal);
  return v4;
}

- (id)liveSessionConnectedVideoCaptureDevices
{
  v3 = [MEMORY[0x1E695DF70] array];
  obj = self->_internal;
  objc_sync_enter(obj);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  connections = self->_internal->connections;
  v5 = [(NSMutableArray *)connections countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v5)
  {
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(connections);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 isLive])
        {
          if ([v8 sourceDevice])
          {
            v11[0] = MEMORY[0x1E69E9820];
            v11[1] = 3221225472;
            v11[2] = __59__AVCaptureSession_liveSessionConnectedVideoCaptureDevices__block_invoke;
            v11[3] = &unk_1E7875FC0;
            v11[4] = v8;
            if ([v3 indexOfObjectPassingTest:v11] == 0x7FFFFFFFFFFFFFFFLL)
            {
              [v3 addObject:{objc_msgSend(v8, "sourceDevice")}];
            }
          }
        }
      }

      v5 = [(NSMutableArray *)connections countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v5);
  }

  objc_sync_exit(obj);
  return v3;
}

- (BOOL)supportsControls
{
  if (!_os_feature_enabled_impl() || !_os_feature_enabled_impl())
  {
    return 0;
  }

  return MGGetBoolAnswer();
}

+ (id)allSessionPresets
{
  result = allSessionPresets_doablePresets;
  if (!allSessionPresets_doablePresets)
  {
    result = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"AVCaptureSessionPresetPhoto", @"AVCaptureSessionPresetPhoto2592x1936", @"AVCaptureSessionPreset3840x2160", @"AVCaptureSessionPresetHigh", @"AVCaptureSessionPresetHigh60", @"AVCaptureSessionPresetMedium", @"AVCaptureSessionPresetLow", @"AVCaptureSessionPreset352x288", @"AVCaptureSessionPreset640x480", @"AVCaptureSessionPreset1280x720", @"AVCaptureSessionPreset1920x1080", @"AVCaptureSessionPresetiFrame960x540", @"AVCaptureSessionPresetiFrame1280x720", @"AVCaptureSessionPresetInputPriority", @"AVCaptureSessionPresetVoicemailGreeting", 0}];
    allSessionPresets_doablePresets = result;
  }

  return result;
}

- (NSArray)controls
{
  internal = self->_internal;
  objc_sync_enter(internal);
  v4 = [MEMORY[0x1E695DEC8] arrayWithArray:self->_internal->controls];
  objc_sync_exit(internal);
  return v4;
}

- (void)_rebuildGraph
{
  [(AVCaptureSession *)self _updateHardwareCost];
  [(AVCaptureSession *)self _beginConfiguration];

  [(AVCaptureSession *)self _commitConfiguration];
}

- (BOOL)likelyToRecordProResMovies
{
  v3 = [MEMORY[0x1E695DFA8] setWithArray:{+[AVCaptureOutput supportedProResCodecTypes](AVCaptureOutput, "supportedProResCodecTypes")}];
  [v3 addObjectsFromArray:{+[AVCaptureOutput supportedProResRawCodecTypes](AVCaptureOutput, "supportedProResRawCodecTypes")}];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(AVCaptureSession *)self connections];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (!v5)
  {
    return v5;
  }

  v6 = v5;
  v7 = *v16;
  v8 = *MEMORY[0x1E69874C0];
  while (2)
  {
    v9 = 0;
    do
    {
      if (*v16 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v10 = [*(*(&v15 + 1) + 8 * v9) output];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v10 availableVideoCodecTypesForAssetWriterWithOutputFileType:v8];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_12;
        }

        v11 = [v10 availableVideoCodecTypes];
      }

      if (v11)
      {
        v12 = [MEMORY[0x1E695DFD8] setWithArray:v11];
        goto LABEL_13;
      }

LABEL_12:
      v12 = 0;
LABEL_13:
      if ([v12 intersectsSet:v3])
      {
        LOBYTE(v5) = 1;
        return v5;
      }

      ++v9;
    }

    while (v6 != v9);
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v14 count:16];
    v6 = v5;
    if (v5)
    {
      continue;
    }

    return v5;
  }
}

uint64_t __59__AVCaptureSession_liveSessionConnectedVideoCaptureDevices__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueID];
  v4 = [objc_msgSend(*(a1 + 32) "sourceDevice")];

  return [v3 isEqualToString:v4];
}

- (void)startRunning
{
  if (dword_1ED8069A0)
  {
    v11 = 0;
    v10 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  internal = self->_internal;
  objc_sync_enter(internal);
  if ([(AVCaptureSession *)self isBeingConfigured])
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
    objc_sync_exit(internal);
  }

  else
  {
    v6 = [(AVCaptureSession *)self isRunning];
    objc_sync_exit(internal);
    if (!v6)
    {
      v9[0] = 0;
      if (![(AVCaptureSession *)self _validateAudioConfiguration:v9]|| ![(AVCaptureSession *)self _validateCinematicVideoConfiguration:v9])
      {
        goto LABEL_14;
      }

      if ([(AVCaptureSession *)self _validateProResRawVideoConfiguration:v9])
      {
        [(AVCaptureSession *)self _setRunning:1];
        return;
      }

      if (!AVGestaltGetBoolAnswer(@"AVGQCaptureProResRawVDORotationAndMirroringSupported"))
      {
LABEL_14:
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v9[0] userInfo:{0, v7, v8}]);
      }

      [(AVCaptureSession *)self _postRuntimeError:AVLocalizedError()];
    }
  }
}

- (BOOL)_startFigCaptureSession
{
  [(AVCaptureSession *)self isRunning];
  self->_internal->figCaptureSessionStarted = 1;
  internal = self->_internal;
  objc_sync_enter(internal);
  figCaptureSession = self->_internal->figCaptureSession;
  if (figCaptureSession)
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v5)
    {
      v5(figCaptureSession);
    }

    else
    {
      v18 = *MEMORY[0x1E698FC40];
      v19 = &unk_1F1CEA1D8;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }
  }

  objc_sync_exit(internal);

  self->_internal->stopError = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  inputs = self->_internal->inputs;
  v7 = [(NSMutableArray *)inputs countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(inputs);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [objc_msgSend(v11 "device")];
        }
      }

      v8 = [(NSMutableArray *)inputs countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v8);
  }

  return 1;
}

- (BOOL)isBeingConfiguredOnCurrentThread
{
  FigSimpleMutexLock();
  internal = self->_internal;
  if (internal->beginConfigRefCount < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = -[NSThread isEqual:](internal->threadWhichBeganConfiguration, "isEqual:", [MEMORY[0x1E696AF00] currentThread]);
  }

  FigSimpleMutexUnlock();
  return v4;
}

- (void)_notifySessionStarted
{
  if (!self->_internal->running)
  {
    [(AVCaptureSession *)self willChangeValueForKey:@"running"];
    self->_internal->running = 1;
    [(AVCaptureSession *)self _activateControlsOverlayIfNecessary];
    [(AVCaptureSession *)self didChangeValueForKey:@"running"];
    if (dword_1ED8069A0)
    {
      v7 = 0;
      v6 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
  }
}

- (void)_activateControlsOverlayIfNecessary
{
  v3 = [(AVCaptureSession *)self sessionVideoCaptureDevices];
  internal = self->_internal;
  objc_sync_enter(internal);
  v5 = self->_internal;
  if (v5->running && (-[NSMutableArray count](v5->controls, "count") || -[AVCaptureSession controlsDelegateCanReceiveAutoFocusLockedCallback](self, "controlsDelegateCanReceiveAutoFocusLockedCallback")) && [v3 count])
  {
    [(AVCaptureControlsOverlay *)self->_internal->controlsOverlay activate];
  }

  objc_sync_exit(internal);
}

- (id)_initWithMediaEnvironment:(id)a3
{
  v13.receiver = self;
  v13.super_class = AVCaptureSession;
  v4 = [(AVCaptureSession *)&v13 init];
  if (v4)
  {
    v5 = objc_alloc_init(AVCaptureSessionInternal);
    v4->_internal = v5;
    if (!v5)
    {

      return 0;
    }

    v4->_internal->weakReference = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:v4];
    v4->_internal->runLoopCondition = objc_alloc_init(MEMORY[0x1E6988120]);
    v4->_internal->sessionPreset = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:@"AVCaptureSessionPresetHigh"];
    v4->_internal->mediaEnvironment = [a3 copy];
    v4->_internal->inputs = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4->_internal->outputs = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4->_internal->controls = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4->_internal->controlsOverlay = [[AVCaptureControlsOverlay alloc] initWithSession:v4];
    v4->_internal->videoPreviewLayers = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    v4->_internal->connections = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4->_internal->committedAVCaptureSessionConfigurations = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4->_internal->automaticallyConfiguresApplicationAudioSession = 1;
    v4->_internal->configuresApplicationAudioSessionToMixWithOthers = 0;
    v4->_internal->configuresApplicationAudioSessionForBluetoothHighQualityRecording = 0;
    v4->_internal->automaticallyConfiguresCaptureDeviceForWideColor = 1;
    v4->_internal->usesApplicationAudioSession = AVGestaltGetBoolAnswer(@"AVGQCaptureSessionUsesAppAudioSessionByDefault");
    v4->_internal->notifiesOnMainThread = 1;
    v4->_internal->devicesToResetVideoZoomFactorAndMinMaxFrameDurations = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = [(AVCaptureSession *)v4 isMultitaskingCameraAccessSupported];
    HasEntitlement = 0;
    if (v6)
    {
      HasEntitlement = AVCaptureClientHasEntitlement(AVCaptureEntitlementMultitaskingCameraAccess);
    }

    v4->_internal->authorizedToUseCameraInMultipleForegroundAppLayout = HasEntitlement;
    v4->_internal->greenTeaLogger = ct_green_tea_logger_create();
    v4->_internal->checkIfFileAlreadyExistForMFO = AVGestaltGetBoolAnswer(@"AVGQCaptureCheckIfFileAlreadyExistForMFO");
    if ((AVCaptureIsRunningInMediaserverd() & 1) == 0)
    {
      weakReference = v4->_internal->weakReference;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __46__AVCaptureSession__initWithMediaEnvironment___block_invoke;
      v12[3] = &unk_1E7875F20;
      v12[4] = weakReference;
      v4->_internal->captureServerConnectionDiedSemaphore = dispatch_semaphore_create(0);
      v4->_internal->serverConnectionDiedNotificationToken = [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
      +[AVCaptureDevice _registerOnceForServerConnectionDiedNotification];
    }

    v4->_internal->figCaptureSourceConfigChangeCacheMutex = FigReentrantMutexCreate();
    [(AVCaptureSession *)v4 _createFigCaptureSession];
    v9 = sActiveSessions;
    objc_sync_enter(sActiveSessions);
    [sActiveSessions addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithNonretainedObject:", v4)}];
    objc_sync_exit(v9);
    v4->_internal->_devicesObservingVideoZoomFactor = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4->_internal->continuityCameraIsWired = 0;
    v4->_internal->continuityCameraClientDeviceClass = 0;
    v4->_internal->clientIsVOIP = 0;
    v4->_internal->suppressVideoEffects = 0;
    v4->_internal->recordingMovieFileOutputs = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4->_internal->recordingMovieFileOutputsLock._os_unfair_lock_opaque = 0;
    v4->_internal->smartStyleControlMode = 0;
    [(AVCaptureSession *)v4 isApplicationOptedOutByDefaultToSmartStyles];
    v4->_internal->smartStyleRenderingOptedOut = ![(AVCaptureSession *)v4 isSystemStyleEnabled];
    v4->_internal->deferredStartDelegateStorage = objc_alloc_init(MEMORY[0x1E69881A0]);
    if (AVCaptureSessionIsDeferredStartSupported_onceToken != -1)
    {
      [AVCaptureSession _initWithMediaEnvironment:];
    }

    v4->_internal->automaticallyRunsDeferredStart = AVCaptureSessionIsDeferredStartSupported_deferredStartSupported;
  }

  if (dword_1ED8069A0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v4;
}

uint64_t __46__AVCaptureSession__initWithMediaEnvironment___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) referencedObject];

  return [v1 _handleCaptureServerConnectionDiedNotification];
}

- (AVCaptureSession)initWithAssumedIdentity:(id)a3
{
  if (dword_1ED8069A0)
  {
    v11 = 0;
    v10 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v6 = [(AVCaptureSession *)self _initWithMediaEnvironment:0, v8, v9];
  if (v6)
  {
    v6->_internal->tccIdentity = a3;
  }

  return v6;
}

- (AVCaptureSession)initWithMediaEnvironment:(id)a3
{
  if (dword_1ED8069A0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (AVCaptureClientHasEntitlement(AVCaptureEntitlementWebBrowserEngineRendering))
  {
    return [(AVCaptureSession *)self _initWithMediaEnvironment:a3];
  }

  v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:{0, AVCaptureEntitlementWebBrowserEngineRendering}];

  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v7);
  }

  NSLog(&cfstr_SuppressingExc.isa, v7);
  return 0;
}

- (void)dealloc
{
  if (dword_1ED8069A0)
  {
    v21 = 0;
    v20 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (self->_internal)
  {
    v4 = sActiveSessions;
    objc_sync_enter(sActiveSessions);
    [sActiveSessions removeObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithNonretainedObject:", self)}];
    objc_sync_exit(v4);
    [(AVRunLoopCondition *)self->_internal->runLoopCondition signal];
    [(AVCaptureSession *)self _beginConfiguration];
    while (1)
    {
      v5 = [(AVCaptureSession *)self inputs:v12];
      if (![(NSArray *)v5 count])
      {
        break;
      }

      [(AVCaptureSession *)self removeInput:[(NSArray *)v5 firstObject]];
    }

    while (1)
    {
      v6 = [(AVCaptureSession *)self outputs];
      if (![(NSArray *)v6 count])
      {
        break;
      }

      [(AVCaptureSession *)self removeOutput:[(NSArray *)v6 firstObject]];
    }

    [(AVCaptureSession *)self _makeConfigurationLive:0];
    [(AVCaptureSession *)self _teardownFigCaptureSession];
    if ((AVCaptureIsRunningInMediaserverd() & 1) == 0)
    {
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    }

    FigSimpleMutexDestroy();

    ct_green_tea_logger_destroy();
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    devicesObservingVideoZoomFactor = self->_internal->_devicesObservingVideoZoomFactor;
    v8 = [(NSMutableArray *)devicesObservingVideoZoomFactor countByEnumeratingWithState:&v16 objects:v15 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(devicesObservingVideoZoomFactor);
          }

          [*(*(&v16 + 1) + 8 * i) removeObserver:self forKeyPath:@"videoZoomFactor" context:AVCaptureSessionVideoInputDeviceVideoZoomFactorChangedContext];
        }

        v9 = [(NSMutableArray *)devicesObservingVideoZoomFactor countByEnumeratingWithState:&v16 objects:v15 count:16];
      }

      while (v9);
    }
  }

  v14.receiver = self;
  v14.super_class = AVCaptureSession;
  [(AVCaptureSession *)&v14 dealloc:v12];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = [v3 stringWithFormat:@"<%@: %p [%@]>", NSStringFromClass(v4), self, -[AVCaptureSession sessionPreset](self, "sessionPreset")];
  internal = self->_internal;
  objc_sync_enter(internal);
  v7 = [MEMORY[0x1E695DEC8] arrayWithArray:{-[AVCaptureSessionConfiguration connections](self->_internal->liveAVCaptureSessionConfiguration, "connections")}];
  objc_sync_exit(internal);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v20 = [v7 countByEnumeratingWithState:&v27 objects:v26 count:16];
  if (v20)
  {
    obj = v7;
    v19 = *v28;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v10 = [v9 inputPorts];
        if ([v9 output])
        {
          v11 = [v9 output];
        }

        else
        {
          v11 = [v9 videoPreviewLayer];
        }

        v12 = v11;
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v13 = [v10 countByEnumeratingWithState:&v22 objects:v21 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v23;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v23 != v15)
              {
                objc_enumerationMutation(v10);
              }

              [v5 appendFormat:@"\n\t%@[%@] -> %@", objc_msgSend(*(*(&v22 + 1) + 8 * j), "input"), objc_msgSend(*(*(&v22 + 1) + 8 * j), "mediaType"), v12];
            }

            v14 = [v10 countByEnumeratingWithState:&v22 objects:v21 count:16];
          }

          while (v14);
        }
      }

      v20 = [obj countByEnumeratingWithState:&v27 objects:v26 count:16];
    }

    while (v20);
  }

  return v5;
}

- (BOOL)canSetSessionPreset:(AVCaptureSessionPreset)preset
{
  obj = self->_internal;
  objc_sync_enter(obj);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  inputs = self->_internal->inputs;
  v5 = [(NSMutableArray *)inputs countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (v5)
  {
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(inputs);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = 0u;
          v21 = 0u;
          v18 = 0u;
          v19 = 0u;
          v9 = [v8 ports];
          v10 = [v9 countByEnumeratingWithState:&v18 objects:v17 count:16];
          if (v10)
          {
            v11 = *v19;
LABEL_9:
            v12 = 0;
            while (1)
            {
              if (*v19 != v11)
              {
                objc_enumerationMutation(v9);
              }

              if ([*(*(&v18 + 1) + 8 * v12) isEnabled])
              {
                break;
              }

              if (v10 == ++v12)
              {
                v10 = [v9 countByEnumeratingWithState:&v18 objects:v17 count:16];
                if (v10)
                {
                  goto LABEL_9;
                }

                goto LABEL_18;
              }
            }

            v13 = [v8 device];
            if (v13 && ([v13 supportsAVCaptureSessionPreset:preset] & 1) == 0)
            {
              objc_sync_exit(obj);
              return 0;
            }
          }
        }

LABEL_18:
        ;
      }

      v5 = [(NSMutableArray *)inputs countByEnumeratingWithState:&v23 objects:v22 count:16];
    }

    while (v5);
  }

  objc_sync_exit(obj);
  return [+[AVCaptureSession allSessionPresets](AVCaptureSession "allSessionPresets")];
}

- (void)setSessionPreset:(AVCaptureSessionPreset)sessionPreset
{
  if (dword_1ED8069A0)
  {
    v12 = 0;
    v11 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([(AVCaptureSession *)self canSetSessionPreset:sessionPreset, v9, v10])
  {
    internal = self->_internal;
    objc_sync_enter(internal);
    if ([(NSString *)sessionPreset isEqualToString:self->_internal->sessionPreset])
    {
      objc_sync_exit(internal);
    }

    else
    {
      [(AVCaptureSession *)self _beginConfiguration];
      v8 = [(NSString *)sessionPreset copy];

      self->_internal->sessionPreset = v8;
      objc_sync_exit(internal);
      if (![(NSString *)sessionPreset isEqualToString:@"AVCaptureSessionPresetInputPriority"])
      {
        [(NSMutableArray *)self->_internal->devicesToResetVideoZoomFactorAndMinMaxFrameDurations addObjectsFromArray:[(AVCaptureSession *)self sessionVideoCaptureDevices]];
      }

      [(AVCaptureSession *)self _commitConfiguration];
    }
  }

  else
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:{0, sessionPreset}];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v7);
    }

    NSLog(&cfstr_SuppressingExc.isa, v7);
  }
}

+ (BOOL)_isDeviceInputInSpatialAudioMode:(id)a3
{
  v3 = [a3 connectionWithMediaType:*MEMORY[0x1E69875A0]];
  if (v3)
  {
    LOBYTE(v3) = [objc_msgSend(v3 "sourceDeviceInput")] == 2;
  }

  return v3;
}

- (BOOL)_validateAudioConfiguration:(id *)a3
{
  v34 = [MEMORY[0x1E695DF70] array];
  v4 = [MEMORY[0x1E695DFA8] set];
  v32 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F1CEA5C0];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v6 = [(AVCaptureSession *)self outputs];
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v36 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v37;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v36 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v5 addObject:v11];
          v12 = v4;
          v13 = v5;
          [v34 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(v11, "spatialAudioChannelLayoutTag"))}];
          v14 = MEMORY[0x1E696AD98];
          v15 = [v11 spatialAudioChannelLayoutTag];
          v16 = v14;
          v5 = v13;
          v4 = v12;
          [v12 addObject:{objc_msgSend(v16, "numberWithUnsignedInt:", v15)}];
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v36 objects:v35 count:16];
    }

    while (v8);
  }

  if (![v5 count])
  {
    return 1;
  }

  v17 = +[AVCaptureSession _isDeviceInputInSpatialAudioMode:](AVCaptureSession, "_isDeviceInputInSpatialAudioMode:", [v5 objectAtIndexedSubscript:0]);
  v18 = [v5 count];
  if (v17)
  {
    v19 = self;
    if (v18 >= 3)
    {
      v20 = MEMORY[0x1E696AEC0];
      v30 = [v5 description];
      v31 = [(AVCaptureSession *)self description];
      v21 = @"Too many audio outputs %@ configured for AVCaptureMultichannelAudioModeFirstOrderAmbisonics audio mode, session %@, the maximum is 2";
LABEL_28:
      v27 = v20;
      goto LABEL_29;
    }

    v26 = [v34 count];
    if (v26 != [v4 count])
    {
      v20 = MEMORY[0x1E696AEC0];
      v30 = [(AVCaptureSession *)self description];
      v31 = v5;
      v21 = @"One or more AVCaptureAudioDataOutputs contain duplicate values for the spatialAudioChannelLayoutTag property. One or the other must be either kAudioChannelLayoutTag_Stereo or(kAudioChannelLayoutTag_HOA_ACN_SN3D | 4) but not both. Session: %@, outputs: %@";
      goto LABEL_28;
    }

    [v4 minusSet:v32];
    if ([v4 count])
    {
      v24 = MEMORY[0x1E696AEC0];
      v30 = [(AVCaptureSession *)self description];
      v31 = [v4 description];
      v21 = @"When the device input's multichannelAudioMode is set to AVCaptureMultichannelAudioModeFirstOrderAmbisonics, the AVCaptureAudioDataOutput spatialAudioChannelLayoutTag property must be either kAudioChannelLayoutTag_Stereo or(kAudioChannelLayoutTag_HOA_ACN_SN3D | 4) for session %@. Invalid AVAudioChannelLayoutTags: %@";
      goto LABEL_24;
    }
  }

  else
  {
    v19 = self;
    if (v18 >= 2)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v20 = MEMORY[0x1E696AEC0];
        v30 = [v5 description];
        v31 = [(AVCaptureSession *)self description];
        v21 = @"Too many audio outputs %@ configured for session %@, the maximum is 1 when not in spatial audio mode";
        goto LABEL_28;
      }
    }

    if ([objc_msgSend(v5 objectAtIndexedSubscript:{0), "spatialAudioChannelLayoutTag"}] != -65536)
    {
      v20 = MEMORY[0x1E696AEC0];
      v30 = [v5 description];
      v31 = [(AVCaptureSession *)self description];
      v21 = @"Invalid spatialAudioChannelLayoutTag property value %@, it must be kAudioChannelLayoutTag_Unknown with the input device's configured audio mode, session: %@";
      goto LABEL_28;
    }
  }

  v22 = [v5 objectAtIndexedSubscript:0];
  v23 = [objc_msgSend(v22 connectionWithMediaType:{*MEMORY[0x1E69875A0]), "sourceDeviceInput"}];
  if (![v23 remoteIOOutputFormat] || !objc_msgSend(v23, "multichannelAudioMode"))
  {
    return 1;
  }

  v24 = MEMORY[0x1E696AEC0];
  v30 = [(AVCaptureSession *)v19 description];
  v21 = @"multichannelAudioMode must be set to None to override the AURemoteIO output format, session: %@";
LABEL_24:
  v27 = v24;
LABEL_29:
  v28 = [v27 stringWithFormat:v21, v30, v31];
  v25 = 0;
  if (a3 && v28)
  {
    v25 = 0;
    *a3 = v28;
  }

  return v25;
}

- (BOOL)_validateCinematicVideoConfiguration:(id *)a3
{
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [(AVCaptureSession *)self outputs];
  v23 = [(NSArray *)obj countByEnumeratingWithState:&v30 objects:v29 count:16];
  if (v23)
  {
    v21 = a3;
    v4 = *v31;
    v5 = *MEMORY[0x1E69875C0];
    v6 = *MEMORY[0x1E69875D8];
    do
    {
      v7 = 0;
      do
      {
        if (*v31 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v30 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v9 = [v8 connections];
          v10 = [v9 countByEnumeratingWithState:&v25 objects:v24 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v26;
            while (2)
            {
              v13 = v4;
              for (i = 0; i != v11; ++i)
              {
                if (*v26 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v15 = *(*(&v25 + 1) + 8 * i);
                if ([objc_msgSend(v15 "mediaType")] && (objc_msgSend(objc_msgSend(v15, "sourceDeviceInput"), "isCinematicVideoCaptureEnabled") & 1) != 0)
                {
                  LOBYTE(v17) = 0;
                  v18 = @"AVCaptureDepthDataOutput is not supported when its input's cinematicVideoCaptureEnabled is set to true.";
                  goto LABEL_27;
                }

                if ([objc_msgSend(v15 "mediaType")] && objc_msgSend(objc_msgSend(v15, "sourceDeviceInput"), "isCinematicVideoCaptureEnabled"))
                {
                  v19 = [MEMORY[0x1E695DFA8] setWithArray:{objc_msgSend(v8, "metadataObjectTypes")}];
                  [v19 removeObject:@"videoPreviewHistogram"];
                  v17 = [objc_msgSend(MEMORY[0x1E695DFD8] setWithArray:{objc_msgSend(v8, "requiredMetadataObjectTypesForCinematicVideoCapture")), "isEqualToSet:", v19}];
                  if (v17)
                  {
                    v18 = 0;
                  }

                  else
                  {
                    v18 = @"When Cinematic Video is enabled, AVCaptureMetadataOutput's metadataObjectTypes must match requiredMetadataObjectTypesForCinematicVideoCapture.";
                  }

LABEL_27:
                  if (v21 && v18)
                  {
                    *v21 = v18;
                  }

                  return v17;
                }
              }

              v11 = [v9 countByEnumeratingWithState:&v25 objects:v24 count:16];
              v4 = v13;
              if (v11)
              {
                continue;
              }

              break;
            }
          }
        }

        ++v7;
      }

      while (v7 != v23);
      v16 = [(NSArray *)obj countByEnumeratingWithState:&v30 objects:v29 count:16];
      LOBYTE(v17) = 1;
      v23 = v16;
    }

    while (v16);
  }

  else
  {
    LOBYTE(v17) = 1;
  }

  return v17;
}

- (BOOL)_validateProResRawVideoConfiguration:(id *)a3
{
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = [(AVCaptureSession *)self outputs];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v27 objects:v26 count:16];
  if (!v5)
  {
    return 1;
  }

  v6 = v5;
  v20 = a3;
  v7 = *v28;
  v8 = *MEMORY[0x1E6987608];
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v28 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v27 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        continue;
      }

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v11 = [v10 connections];
      v12 = [v11 countByEnumeratingWithState:&v22 objects:v21 count:16];
      if (!v12)
      {
        continue;
      }

      v13 = v12;
      v14 = *v23;
      while (2)
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v22 + 1) + 8 * j);
          [objc_msgSend(objc_msgSend(objc_msgSend(v16 "sourceDevice")];
          if (FigCapturePixelFormatIsPackedBayerRaw() && [objc_msgSend(v16 "mediaType")])
          {
            [v16 videoRotationAngle];
            if (v17 == 0.0)
            {
              if (([v16 isVideoMirrored] & 1) == 0)
              {
                continue;
              }

              v19 = @"ProRes Raw format doesn't support mirroring.";
            }

            else
            {
              v19 = @"ProRes Raw format only supports rotation angle of 0.";
            }

            result = 0;
            if (v20)
            {
              *v20 = v19;
            }

            return result;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v22 objects:v21 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v6 = [(NSArray *)v4 countByEnumeratingWithState:&v27 objects:v26 count:16];
    result = 1;
  }

  while (v6);
  return result;
}

- (BOOL)isOverCost:(id *)a3
{
  [(AVCaptureSession *)self hardwareCost];
  v5 = v4;
  if (a3 && v4 > 1.0)
  {
    *a3 = AVLocalizedError();
  }

  return v5 > 1.0;
}

- (void)determineSynchronizationClock
{
  internal = self->_internal;
  objc_sync_enter(internal);
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v36 = self;
  connections = self->_internal->connections;
  v4 = [(NSMutableArray *)connections countByEnumeratingWithState:&v71 objects:v70 count:16];
  if (!v4)
  {
LABEL_19:
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    obj = v36->_internal->connections;
    v15 = [(NSMutableArray *)obj countByEnumeratingWithState:&v61 objects:v60 count:16, internal];
    if (!v15)
    {
LABEL_43:
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v26 = v36->_internal->connections;
      v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v45 objects:v44 count:16];
      if (v27)
      {
        v28 = *v46;
        while (2)
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v46 != v28)
            {
              objc_enumerationMutation(v26);
            }

            v30 = *(*(&v45 + 1) + 8 * i);
            if ([v30 isActive])
            {
              if (([v30 isTrulyDisabled] & 1) == 0)
              {
                v42 = 0u;
                v43 = 0u;
                v40 = 0u;
                v41 = 0u;
                v31 = [v30 inputPorts];
                v32 = [v31 countByEnumeratingWithState:&v40 objects:v39 count:16];
                if (v32)
                {
                  v33 = *v41;
LABEL_52:
                  v34 = 0;
                  while (1)
                  {
                    if (*v41 != v33)
                    {
                      objc_enumerationMutation(v31);
                    }

                    v14 = [objc_msgSend(*(*(&v40 + 1) + 8 * v34) "input")];
                    if (v14)
                    {
                      goto LABEL_62;
                    }

                    if (v32 == ++v34)
                    {
                      v32 = [v31 countByEnumeratingWithState:&v40 objects:v39 count:16];
                      if (v32)
                      {
                        goto LABEL_52;
                      }

                      break;
                    }
                  }
                }
              }
            }
          }

          v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v45 objects:v44 count:16];
          v14 = 0;
          if (v27)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_62;
    }

    v38 = *v62;
    v16 = *MEMORY[0x1E6987608];
LABEL_21:
    v17 = 0;
LABEL_22:
    if (*v62 != v38)
    {
      objc_enumerationMutation(obj);
    }

    v18 = *(*(&v61 + 1) + 8 * v17);
    if ([v18 isTrulyDisabled])
    {
      goto LABEL_41;
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v19 = [v18 inputPorts];
    v20 = [v19 countByEnumeratingWithState:&v56 objects:v55 count:16];
    if (!v20)
    {
      goto LABEL_41;
    }

    v21 = *v57;
LABEL_27:
    v22 = 0;
    while (1)
    {
      if (*v57 != v21)
      {
        objc_enumerationMutation(v19);
      }

      v23 = *(*(&v56 + 1) + 8 * v22);
      if ([objc_msgSend(v23 "mediaType")])
      {
        [v23 input];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = [v23 input];
          v25 = v24;
          if (v24)
          {
            [v24 activeLockedVideoFrameDuration];
            if ((v53 & 0x100000000) != 0 || ([v25 activeExternalSyncVideoFrameDuration], (v50 & 0x100000000) != 0))
            {
              v14 = [objc_msgSend(v23 "input")];
              if (v14)
              {
                goto LABEL_62;
              }

LABEL_41:
              if (++v17 == v15)
              {
                v15 = [(NSMutableArray *)obj countByEnumeratingWithState:&v61 objects:v60 count:16];
                if (!v15)
                {
                  goto LABEL_43;
                }

                goto LABEL_21;
              }

              goto LABEL_22;
            }
          }

          else
          {
            v52 = 0;
            v53 = 0;
            v54 = 0;
            v50 = 0;
            v51 = 0;
            v49 = 0;
          }
        }
      }

      if (v20 == ++v22)
      {
        v20 = [v19 countByEnumeratingWithState:&v56 objects:v55 count:16];
        if (v20)
        {
          goto LABEL_27;
        }

        goto LABEL_41;
      }
    }
  }

  v5 = *v72;
  v6 = *MEMORY[0x1E69875A0];
LABEL_3:
  v7 = 0;
  while (1)
  {
    if (*v72 != v5)
    {
      objc_enumerationMutation(connections);
    }

    v8 = *(*(&v71 + 1) + 8 * v7);
    if (([v8 isTrulyDisabled] & 1) == 0)
    {
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v9 = [v8 inputPorts];
      v10 = [v9 countByEnumeratingWithState:&v66 objects:v65 count:16];
      if (v10)
      {
        break;
      }
    }

LABEL_17:
    if (++v7 == v4)
    {
      v4 = [(NSMutableArray *)connections countByEnumeratingWithState:&v71 objects:v70 count:16];
      if (!v4)
      {
        goto LABEL_19;
      }

      goto LABEL_3;
    }
  }

  v11 = *v67;
LABEL_9:
  v12 = 0;
  while (1)
  {
    if (*v67 != v11)
    {
      objc_enumerationMutation(v9);
    }

    v13 = *(*(&v66 + 1) + 8 * v12);
    if ([objc_msgSend(v13 "mediaType")])
    {
      break;
    }

    if (v10 == ++v12)
    {
      v10 = [v9 countByEnumeratingWithState:&v66 objects:v65 count:16];
      if (!v10)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    }
  }

  v14 = [objc_msgSend(v13 "input")];
  if (!v14)
  {
    goto LABEL_17;
  }

LABEL_62:
  objc_sync_exit(internal);
  [(AVCaptureSession *)v36 _setSynchronizationClock:v14];
}

- (BOOL)_canAddInput:(id)a3 failureReason:(id *)a4
{
  if (a3)
  {
    if ([a3 session] == self)
    {
      v11 = @"An AVCaptureInput instance may not be added more than once to a session";
    }

    else if ([a3 session])
    {
      v11 = @"An AVCaptureInput instance may not be added to more than one session";
    }

    else if ([a3 isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(a3, "isMemberOfClass:", objc_opt_class()))
    {
      internal = self->_internal;
      objc_sync_enter(internal);
      if (([(NSMutableArray *)self->_internal->inputs containsObject:a3]& 1) != 0)
      {
        v11 = @"An AVCaptureInput instance may not be added more than once to a session";
      }

      else
      {
        if ([a3 isMemberOfClass:objc_opt_class()])
        {
          inputs = self->_internal->inputs;
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v12[2] = __47__AVCaptureSession__canAddInput_failureReason___block_invoke;
          v12[3] = &unk_1E7875F48;
          v12[4] = a3;
          if ([(NSMutableArray *)inputs indexOfObjectPassingTest:v12]!= 0x7FFFFFFFFFFFFFFFLL)
          {
            objc_sync_exit(internal);
            v11 = @"Multiple audio/video AVCaptureInputs are not currently supported";
            goto LABEL_14;
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) == 0 || (v9 = -[AVCaptureSession sessionPreset](self, "sessionPreset"), ([objc_msgSend(a3 "device")]))
        {
          objc_sync_exit(internal);
          return 1;
        }

        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Can't add %@ because the device does not support %@ - Use -[AVCaptureDevice supportsAVCaptureSessionPreset:]", a3, v9];
      }

      objc_sync_exit(internal);
    }

    else
    {
      [AVCaptureSession _canAddInput:a3 failureReason:&v13];
      v11 = v13;
    }
  }

  else
  {
    v11 = @"Can't add a nil AVCaptureInput";
  }

LABEL_14:
  result = 0;
  if (a4)
  {
    if (v11)
    {
      result = 0;
      *a4 = v11;
    }
  }

  return result;
}

uint64_t __47__AVCaptureSession__canAddInput_failureReason___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isMemberOfClass:objc_opt_class()];
  if (result)
  {
    v8 = [a2 device];
    [*(a1 + 32) device];
    result = [v8 isMemberOfClass:objc_opt_class()];
    if (result)
    {
      result = 1;
      *a4 = 1;
    }
  }

  return result;
}

- (BOOL)canAddInput:(AVCaptureInput *)input
{
  v6 = 0;
  v3 = [(AVCaptureSession *)self _canAddInput:input failureReason:&v6];
  if (v6)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v3;
}

- (void)addInput:(AVCaptureInput *)input
{
  if (dword_1ED8069A0)
  {
    v32 = 0;
    v31 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(AVCaptureSession *)self _beginConfiguration:v17];
  obj = self->_internal;
  objc_sync_enter(obj);
  v30[0] = 0;
  if ([(AVCaptureSession *)self _addInputWithNoConnections:input exceptionReason:v30])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = [(AVCaptureInput *)input ports];
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v26 objects:v25 count:16];
    if (v7)
    {
      v8 = *v27;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [(AVCaptureSession *)self _connectionsForNewInputPort:*(*(&v26 + 1) + 8 * i)];
          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          v11 = [v10 countByEnumeratingWithState:&v21 objects:v20 count:16];
          if (v11)
          {
            v12 = *v22;
            while (2)
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v22 != v12)
                {
                  objc_enumerationMutation(v10);
                }

                v14 = *(*(&v21 + 1) + 8 * j);
                if ([(AVCaptureSession *)self _canAddConnection:v14 failureReason:0]&& ![(AVCaptureSession *)self _addConnection:v14 exceptionReason:v30])
                {
                  v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
                  [(AVCaptureSession *)self _commitConfiguration];
                  if (AVCaptureShouldThrowForAPIViolations())
                  {
                    objc_exception_throw(v16);
                  }

                  NSLog(&cfstr_SuppressingExc.isa, v16);
                  goto LABEL_25;
                }
              }

              v11 = [v10 countByEnumeratingWithState:&v21 objects:v20 count:16];
              if (v11)
              {
                continue;
              }

              break;
            }
          }
        }

        v7 = [(NSArray *)v6 countByEnumeratingWithState:&v26 objects:v25 count:16];
      }

      while (v7);
    }

    objc_sync_exit(obj);
    [(AVCaptureSession *)self _commitConfiguration];
  }

  else
  {
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    [(AVCaptureSession *)self _commitConfiguration];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v15);
    }

    NSLog(&cfstr_SuppressingExc.isa, v15);
LABEL_25:
    objc_sync_exit(obj);
  }
}

- (void)addInputWithNoConnections:(AVCaptureInput *)input
{
  if (dword_1ED8069A0)
  {
    v11 = 0;
    v10 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(AVCaptureSession *)self _beginConfiguration:v7];
  v9[0] = 0;
  if ([(AVCaptureSession *)self _addInputWithNoConnections:input exceptionReason:v9])
  {
    [(AVCaptureSession *)self _commitConfiguration];
  }

  else
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    [(AVCaptureSession *)self _commitConfiguration];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v6);
    }

    NSLog(&cfstr_SuppressingExc.isa, v6);
  }
}

- (BOOL)_addInputWithNoConnections:(id)a3 exceptionReason:(id *)a4
{
  v24 = 0;
  v7 = [(AVCaptureSession *)self _canAddInput:a3 failureReason:&v24];
  if (v7)
  {
    [(AVCaptureSession *)self willChangeValueForKey:@"inputs"];
    internal = self->_internal;
    objc_sync_enter(internal);
    [a3 setSession:self];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = [a3 ports];
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v19 count:16];
    if (v10)
    {
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v20 + 1) + 8 * i) addObserver:self forKeyPath:@"changeSeed" options:3 context:AVCaptureSessionInputPortChangedContext];
        }

        v10 = [v9 countByEnumeratingWithState:&v20 objects:v19 count:16];
      }

      while (v10);
    }

    [(NSMutableArray *)self->_internal->inputs addObject:a3];
    if ([a3 isMemberOfClass:objc_opt_class()])
    {
      v17 = *MEMORY[0x1E6960C70];
      v18 = *(MEMORY[0x1E6960C70] + 16);
      [a3 setVideoMinFrameDurationOverride:&v17];
      [a3 addObserver:self forKeyPath:@"sensitiveContentAnalyzerXPCObject" options:3 context:AVCaptureSessionInputSensitiveContentAnalyzerXPCObjectChangedContext];
      [a3 addObserver:self forKeyPath:@"sensitiveContentAnalyzerEnabled" options:3 context:AVCaptureSessionInputSensitiveContentAnalyzerEnabledChangedContext];
      [a3 addObserver:self forKeyPath:@"activeLockedVideoFrameDuration" options:3 context:AVCaptureSessionInputActiveLockedVideoFrameDurationChangedContext];
      [a3 addObserver:self forKeyPath:@"activeExternalSyncVideoFrameDuration" options:3 context:AVCaptureSessionInputActiveExternalSyncVideoFrameDurationChangedContext];
      v13 = [a3 device];
      [v13 addObserver:self forKeyPath:@"connected" options:3 context:AVCaptureSessionVideoInputDeviceConnectedChangedContext];
      [v13 addObserver:self forKeyPath:@"activeFormat" options:3 context:AVCaptureSessionVideoInputDeviceActiveFormatChangedContext];
      [v13 addObserver:self forKeyPath:@"activeDepthDataFormat" options:3 context:AVCaptureSessionVideoInputDeviceActiveDepthDataFormatChangedContext];
      [v13 addObserver:self forKeyPath:@"automaticallyAdjustsVideoHDREnabled" options:3 context:AVCaptureSessionVideoInputDeviceAutomaticallyAdjustsHDREnabledChangedContext];
      [v13 addObserver:self forKeyPath:@"videoHDREnabled" options:3 context:AVCaptureSessionVideoInputDeviceHDREnabledChangedContext];
      [v13 addObserver:self forKeyPath:@"activeColorSpace" options:3 context:AVCaptureSessionVideoInputDeviceActiveColorSpaceChangedContext];
      [v13 addObserver:self forKeyPath:@"lowLightVideoCaptureEnabled" options:3 context:AVCaptureSessionVideoInputDeviceLowLightVideoEnabledChangedContext];
      [v13 addObserver:self forKeyPath:@"geometricDistortionCorrectionEnabled" options:3 context:AVCaptureSessionVideoInputDeviceGeometricDistortionCorrectionEnabledChangedContext];
      [v13 addObserver:self forKeyPath:@"variableFrameRateVideoCaptureEnabled" options:3 context:AVCaptureSessionVideoInputDeviceVariableFrameRateVideoEnabledChangedContext];
      [v13 addObserver:self forKeyPath:@"videoStabilizationStrength" options:3 context:AVCaptureSessionVideoInputDeviceVideoStabilizationStrengthChangedContext];
      [v13 addObserver:self forKeyPath:@"centerStageActive" options:3 context:AVCaptureSessionVideoInputDeviceCenterStageActiveChangedContext];
      [v13 addObserver:self forKeyPath:@"backgroundBlurActive" options:3 context:AVCaptureSessionVideoInputDeviceBackgroundBlurActiveChangedContext];
      [v13 addObserver:self forKeyPath:@"studioLightActive" options:3 context:AVCaptureSessionVideoInputDeviceStudioLightingActiveChangedContext];
      [v13 addObserver:self forKeyPath:@"canPerformReactionEffects" options:3 context:AVCaptureSessionVideoInputDeviceReactionEffectsActiveChangedContext];
      [v13 addObserver:self forKeyPath:@"backgroundReplacementActive" options:3 context:AVCaptureSessionVideoInputDeviceBackgroundReplacementActiveChangedContext];
      [v13 addObserver:self forKeyPath:@"manualFramingEnabled" options:3 context:AVCaptureSessionVideoInputDeviceManualFramingEnabledChangedContext];
      [v13 addObserver:self forKeyPath:@"manualFramingPanningAngleX" options:3 context:&AVCaptureSessionVideoInputDeviceManualFramingEnabledChangedContext];
      [v13 addObserver:self forKeyPath:@"manualFramingPanningAngleY" options:3 context:AVCaptureSessionVideoInputDeviceManualFramingPanningAngleYChangedContext];
      [v13 addObserver:self forKeyPath:@"gazeSelectionEnabled" options:3 context:AVCaptureSessionVideoInputDeviceGazeSelectionEnabledChangedContext];
      [v13 addObserver:self forKeyPath:@"audioInputRouteIsBuiltInMic" options:3 context:AVCaptureSessionAudioInputDeviceIsBuiltInMicChangedContext];
      [v13 addObserver:self forKeyPath:@"dynamicAspectRatio" options:3 context:AVCaptureSessionVideoInputDeviceDynamicAspectRatioChangedContext];
      [v13 addObserver:self forKeyPath:@"cameraLensSmudgeDetectionEnabled" options:3 context:AVCaptureSessionVideoInputDeviceLensSmudgeDetectionEnabledChangedContext];
      if ([v13 hasMediaType:*MEMORY[0x1E6987608]])
      {
        [(NSMutableArray *)self->_internal->devicesToResetVideoZoomFactorAndMinMaxFrameDurations addObject:v13];
        if ([v13 lockForConfiguration:0])
        {
          [v13 setCachesFigCaptureSourceConfigurationChanges:1];
          [v13 unlockForConfiguration];
        }
      }

      if ([v13 hasMediaType:*MEMORY[0x1E69875A0]])
      {
        v14 = self->_internal;
        v15 = v14->configuresApplicationAudioSessionForBluetoothHighQualityRecording && v14->usesApplicationAudioSession;
        [(AVCaptureSession *)self _setAudioInputDeviceHighQualityBluetoothEnabled:v15];
      }
    }

    objc_sync_exit(internal);
    [(AVCaptureSession *)self didChangeValueForKey:@"inputs"];
  }

  else if (a4)
  {
    *a4 = v24;
  }

  return v7;
}

- (void)removeInput:(AVCaptureInput *)input
{
  if (dword_1ED8069A0)
  {
    v10 = 0;
    v9 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(AVCaptureSession *)self willChangeValueForKey:@"inputs", v7, v8];
  internal = self->_internal;
  objc_sync_enter(internal);
  if ([(NSMutableArray *)self->_internal->inputs containsObject:input])
  {
    [(AVCaptureSession *)self _beginConfiguration];
    [(AVCaptureSession *)self _removeInput:input];
    objc_sync_exit(internal);
    [(AVCaptureSession *)self didChangeValueForKey:@"inputs"];
    [(AVCaptureSession *)self _commitConfiguration];
  }

  else
  {
    objc_sync_exit(internal);
    [(AVCaptureSession *)self didChangeValueForKey:@"inputs"];
  }
}

- (void)_removeInput:(id)a3
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [a3 ports];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        [v10 removeObserver:self forKeyPath:@"changeSeed" context:AVCaptureSessionInputPortChangedContext];
        [(AVCaptureSession *)self _removeConnectionsForInputPort:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v7);
  }

  [a3 setSession:0];
  if ([a3 isMemberOfClass:objc_opt_class()])
  {
    [a3 removeObserver:self forKeyPath:@"sensitiveContentAnalyzerXPCObject" context:AVCaptureSessionInputSensitiveContentAnalyzerXPCObjectChangedContext];
    [a3 removeObserver:self forKeyPath:@"sensitiveContentAnalyzerEnabled" context:AVCaptureSessionInputSensitiveContentAnalyzerEnabledChangedContext];
    [a3 removeObserver:self forKeyPath:@"activeLockedVideoFrameDuration" context:AVCaptureSessionInputActiveLockedVideoFrameDurationChangedContext];
    [a3 removeObserver:self forKeyPath:@"activeExternalSyncVideoFrameDuration" context:AVCaptureSessionInputActiveExternalSyncVideoFrameDurationChangedContext];
    v11 = [a3 device];
    if ([v11 hasMediaType:*MEMORY[0x1E6987608]])
    {
      if ([v11 lockForConfiguration:0])
      {
        [v11 setCachesFigCaptureSourceConfigurationChanges:0];
        [v11 unlockForConfiguration];
      }
    }

    else if ([v11 hasMediaType:*MEMORY[0x1E69875A0]])
    {
      [(AVCaptureSession *)self _setAudioInputDeviceHighQualityBluetoothEnabled:0];
    }

    [v11 removeObserver:self forKeyPath:@"geometricDistortionCorrectionEnabled" context:AVCaptureSessionVideoInputDeviceGeometricDistortionCorrectionEnabledChangedContext];
    [v11 removeObserver:self forKeyPath:@"lowLightVideoCaptureEnabled" context:AVCaptureSessionVideoInputDeviceLowLightVideoEnabledChangedContext];
    [v11 removeObserver:self forKeyPath:@"variableFrameRateVideoCaptureEnabled" context:AVCaptureSessionVideoInputDeviceVariableFrameRateVideoEnabledChangedContext];
    [v11 removeObserver:self forKeyPath:@"videoStabilizationStrength" context:AVCaptureSessionVideoInputDeviceVideoStabilizationStrengthChangedContext];
    [v11 removeObserver:self forKeyPath:@"centerStageActive" context:AVCaptureSessionVideoInputDeviceCenterStageActiveChangedContext];
    [v11 removeObserver:self forKeyPath:@"backgroundBlurActive" context:AVCaptureSessionVideoInputDeviceBackgroundBlurActiveChangedContext];
    [v11 removeObserver:self forKeyPath:@"studioLightActive" context:AVCaptureSessionVideoInputDeviceStudioLightingActiveChangedContext];
    [v11 removeObserver:self forKeyPath:@"canPerformReactionEffects" context:AVCaptureSessionVideoInputDeviceReactionEffectsActiveChangedContext];
    [v11 removeObserver:self forKeyPath:@"backgroundReplacementActive" context:AVCaptureSessionVideoInputDeviceBackgroundReplacementActiveChangedContext];
    [v11 removeObserver:self forKeyPath:@"activeColorSpace" context:AVCaptureSessionVideoInputDeviceActiveColorSpaceChangedContext];
    [v11 removeObserver:self forKeyPath:@"videoHDREnabled" context:AVCaptureSessionVideoInputDeviceHDREnabledChangedContext];
    [v11 removeObserver:self forKeyPath:@"automaticallyAdjustsVideoHDREnabled" context:AVCaptureSessionVideoInputDeviceAutomaticallyAdjustsHDREnabledChangedContext];
    [v11 removeObserver:self forKeyPath:@"activeDepthDataFormat" context:AVCaptureSessionVideoInputDeviceActiveDepthDataFormatChangedContext];
    [v11 removeObserver:self forKeyPath:@"activeFormat" context:AVCaptureSessionVideoInputDeviceActiveFormatChangedContext];
    [v11 removeObserver:self forKeyPath:@"connected" context:AVCaptureSessionVideoInputDeviceConnectedChangedContext];
    [v11 removeObserver:self forKeyPath:@"manualFramingEnabled" context:AVCaptureSessionVideoInputDeviceManualFramingEnabledChangedContext];
    [v11 removeObserver:self forKeyPath:@"manualFramingPanningAngleX" context:&AVCaptureSessionVideoInputDeviceManualFramingEnabledChangedContext];
    [v11 removeObserver:self forKeyPath:@"manualFramingPanningAngleY" context:AVCaptureSessionVideoInputDeviceManualFramingPanningAngleYChangedContext];
    [v11 removeObserver:self forKeyPath:@"gazeSelectionEnabled" context:AVCaptureSessionVideoInputDeviceGazeSelectionEnabledChangedContext];
    [v11 removeObserver:self forKeyPath:@"audioInputRouteIsBuiltInMic" context:AVCaptureSessionAudioInputDeviceIsBuiltInMicChangedContext];
    [v11 removeObserver:self forKeyPath:@"dynamicAspectRatio" context:AVCaptureSessionVideoInputDeviceDynamicAspectRatioChangedContext];
    [v11 removeObserver:self forKeyPath:@"cameraLensSmudgeDetectionEnabled" context:AVCaptureSessionVideoInputDeviceLensSmudgeDetectionEnabledChangedContext];
  }

  [(NSMutableArray *)self->_internal->inputs removeObject:a3];
}

- (BOOL)_canAddOutput:(id)a3 failureReason:(id *)a4
{
  if (a3)
  {
    if ([a3 session])
    {
      v13 = @"An AVCaptureOutput instance may not be added to more than one session";
    }

    else
    {
      internal = self->_internal;
      objc_sync_enter(internal);
      if (([(NSMutableArray *)self->_internal->outputs containsObject:a3]& 1) != 0)
      {
        v13 = @"An AVCaptureOutput instance may not be added more than once to a session";
      }

      else
      {
        v8 = +[AVCaptureOutput allOutputSubclasses];
        outputs = self->_internal->outputs;
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __48__AVCaptureSession__canAddOutput_failureReason___block_invoke;
        v21[3] = &unk_1E7875F70;
        v21[4] = v8;
        v21[5] = a3;
        if ([(NSMutableArray *)outputs indexOfObjectPassingTest:v21]== 0x7FFFFFFFFFFFFFFFLL)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || !objc_opt_class() || (v19 = 0u, v20 = 0u, v17 = 0u, v18 = 0u, v10 = self->_internal->outputs, (v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v16 count:16]) == 0))
          {
LABEL_16:
            objc_sync_exit(internal);
            return 1;
          }

          v12 = *v18;
          v13 = @"AVCapturePhotoOutput and AVCaptureStillImageOutput may not both be used in a session";
LABEL_10:
          v14 = 0;
          while (1)
          {
            if (*v18 != v12)
            {
              objc_enumerationMutation(v10);
            }

            if (objc_opt_isKindOfClass())
            {
              break;
            }

            if (v11 == ++v14)
            {
              v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v16 count:16];
              if (v11)
              {
                goto LABEL_10;
              }

              goto LABEL_16;
            }
          }
        }

        else
        {
          v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot add output %@ to capture session %@ because more than one output of the same type is unsupported", objc_msgSend(a3, "description"), -[AVCaptureSession description](self, "description")];
          FigDebugAssert3();
        }
      }

      objc_sync_exit(internal);
    }
  }

  else
  {
    v13 = @"Can't add a nil AVCaptureOutput";
  }

  result = 0;
  if (a4)
  {
    if (v13)
    {
      result = 0;
      *a4 = v13;
    }
  }

  return result;
}

uint64_t __48__AVCaptureSession__canAddOutput_failureReason___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(a1 + 32);
  result = [v5 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v12;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_isKindOfClass())
        {
          if (!AVGestaltGetBoolAnswer(@"AVGQCaptureMultipleVideoDataOutputsSupported") || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            if (!AVGestaltGetBoolAnswer(@"AVGQCaptureMultipleAudioDataOutputsSupported") || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              result = 1;
              *a4 = 1;
              return result;
            }
          }
        }

        ++v9;
      }

      while (v7 != v9);
      result = [v5 countByEnumeratingWithState:&v11 objects:v10 count:16];
      v7 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (BOOL)canAddOutput:(AVCaptureOutput *)output
{
  v6 = 0;
  v3 = [(AVCaptureSession *)self _canAddOutput:output failureReason:&v6];
  if (v6)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v3;
}

- (void)addOutput:(AVCaptureOutput *)output
{
  if (dword_1ED8069A0)
  {
    v22 = 0;
    v21 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(AVCaptureSession *)self _beginConfiguration:v13];
  internal = self->_internal;
  objc_sync_enter(internal);
  v20[0] = 0;
  if ([(AVCaptureSession *)self _addOutputWithNoConnections:output exceptionReason:v20])
  {
    v7 = [(AVCaptureSession *)self _connectionsForNewOutput:output];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v15 count:16];
    if (v8)
    {
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          if ([(AVCaptureSession *)self _canAddConnection:v11 failureReason:0])
          {
            [(AVCaptureSession *)self _addConnection:v11 exceptionReason:v20];
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v16 objects:v15 count:16];
      }

      while (v8);
    }

    objc_sync_exit(internal);
    [(AVCaptureSession *)self _commitConfiguration];
  }

  else
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    [(AVCaptureSession *)self _commitConfiguration];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v12);
    }

    NSLog(&cfstr_SuppressingExc.isa, v12);
    objc_sync_exit(internal);
  }
}

- (void)addOutputWithNoConnections:(AVCaptureOutput *)output
{
  if (dword_1ED8069A0)
  {
    v11 = 0;
    v10 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(AVCaptureSession *)self _beginConfiguration:v7];
  v9[0] = 0;
  if ([(AVCaptureSession *)self _addOutputWithNoConnections:output exceptionReason:v9])
  {
    [(AVCaptureSession *)self _commitConfiguration];
  }

  else
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    [(AVCaptureSession *)self _commitConfiguration];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v6);
    }

    NSLog(&cfstr_SuppressingExc.isa, v6);
  }
}

- (BOOL)_addOutputWithNoConnections:(id)a3 exceptionReason:(id *)a4
{
  v10 = 0;
  v7 = [(AVCaptureSession *)self _canAddOutput:a3 failureReason:&v10];
  if (v7)
  {
    [(AVCaptureSession *)self willChangeValueForKey:@"outputs"];
    internal = self->_internal;
    objc_sync_enter(internal);
    [a3 setSession:self];
    [a3 addObserver:self forKeyPath:@"changeSeed" options:3 context:AVCaptureSessionOutputChangedContext];
    [(NSMutableArray *)self->_internal->outputs addObject:a3];
    objc_sync_exit(internal);
    [(AVCaptureSession *)self didChangeValueForKey:@"outputs"];
  }

  else if (a4)
  {
    *a4 = v10;
  }

  return v7;
}

- (void)removeOutput:(AVCaptureOutput *)output
{
  if (dword_1ED8069A0)
  {
    v19 = 0;
    v18 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(AVCaptureSession *)self willChangeValueForKey:@"outputs", v11, v12];
  internal = self->_internal;
  objc_sync_enter(internal);
  if ([(NSMutableArray *)self->_internal->outputs containsObject:output])
  {
    [(AVCaptureSession *)self _beginConfiguration];
    [(AVCaptureOutput *)output removeObserver:self forKeyPath:@"changeSeed" context:AVCaptureSessionOutputChangedContext];
    v7 = [(NSArray *)[(AVCaptureOutput *)output connections] copy];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v13 count:16];
    if (v8)
    {
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v7);
          }

          [(AVCaptureSession *)self _removeConnection:*(*(&v14 + 1) + 8 * i)];
        }

        v8 = [v7 countByEnumeratingWithState:&v14 objects:v13 count:16];
      }

      while (v8);
    }

    [(AVCaptureOutput *)output setSession:0];
    [(NSMutableArray *)self->_internal->outputs removeObject:output];
    objc_sync_exit(internal);
    [(AVCaptureSession *)self didChangeValueForKey:@"outputs"];
    [(AVCaptureSession *)self _commitConfiguration];
  }

  else
  {
    objc_sync_exit(internal);
    [(AVCaptureSession *)self didChangeValueForKey:@"outputs"];
  }
}

- (BOOL)_canAddVideoPreviewLayer:(id)a3 failureReason:(id *)a4
{
  if (!a3 && a4)
  {
    *a4 = @"Cannot add a nil video preview layer to a session";
  }

  return a3 != 0;
}

- (BOOL)_addVideoPreviewLayer:(id)a3 exceptionReason:(id *)a4
{
  if (dword_1ED8069A0)
  {
    v24 = 0;
    v23 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v22[0] = 0;
  if ([(AVCaptureSession *)self _canAddVideoPreviewLayer:a3 failureReason:v22, v15, v16])
  {
    internal = self->_internal;
    objc_sync_enter(internal);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(AVCaptureSession *)self _removeAllPreviewLayers];
    }

    if ([(NSArray *)[(NSPointerArray *)self->_internal->videoPreviewLayers allObjects] containsObject:a3])
    {
      objc_sync_exit(internal);
      return 1;
    }

    if ([(NSPointerArray *)self->_internal->videoPreviewLayers count]>= 2)
    {
      v22[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot add %@ to capture session %@ because it's already associated with one or more video preview layers. Use the AVCaptureVideoPreviewLayer WithNoConnections: method variants instead.", objc_msgSend(a3, "description"), -[AVCaptureSession description](self, "description")];
    }

    else
    {
      [(AVCaptureSession *)self beginConfiguration];
      [(NSPointerArray *)self->_internal->videoPreviewLayers addPointer:a3];
      v9 = [(AVCaptureSession *)self _connectionsForNewVideoPreviewLayer:a3];
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v10 = [v9 countByEnumeratingWithState:&v18 objects:v17 count:16];
      if (!v10)
      {
LABEL_18:
        [a3 addObserver:self forKeyPath:@"changeSeed" options:3 context:AVCaptureSessionOutputChangedContext];
        [(AVCaptureSession *)self _updateHardwareCost];
        objc_sync_exit(internal);
        [(AVCaptureSession *)self commitConfiguration];
        return 1;
      }

      v11 = *v19;
LABEL_11:
      v12 = 0;
      while (1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        if ([(AVCaptureSession *)self _canAddConnection:v13 failureReason:0])
        {
          if (![(AVCaptureSession *)self _addConnection:v13 exceptionReason:v22])
          {
            break;
          }
        }

        if (v10 == ++v12)
        {
          v10 = [v9 countByEnumeratingWithState:&v18 objects:v17 count:16];
          if (v10)
          {
            goto LABEL_11;
          }

          goto LABEL_18;
        }
      }
    }

    objc_sync_exit(internal);
  }

  result = 0;
  if (a4)
  {
    *a4 = v22[0];
  }

  return result;
}

- (BOOL)_addVideoPreviewLayerWithNoConnection:(id)a3 exceptionReason:(id *)a4
{
  if (dword_1ED8069A0)
  {
    v15 = 0;
    v14 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v13 = 0;
  v8 = [(AVCaptureSession *)self _canAddVideoPreviewLayer:a3 failureReason:&v13, v11, v12];
  if (v8)
  {
    internal = self->_internal;
    objc_sync_enter(internal);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(AVCaptureSession *)self _removeAllPreviewLayers];
    }

    if (![(NSArray *)[(NSPointerArray *)self->_internal->videoPreviewLayers allObjects] containsObject:a3])
    {
      [(NSPointerArray *)self->_internal->videoPreviewLayers addPointer:a3];
      [a3 addObserver:self forKeyPath:@"changeSeed" options:3 context:AVCaptureSessionOutputChangedContext];
    }

    objc_sync_exit(internal);
  }

  else if (a4)
  {
    *a4 = v13;
  }

  return v8;
}

- (void)_removeVideoPreviewLayer:(id)a3
{
  if (a3)
  {
    internal = self->_internal;
    objc_sync_enter(internal);
    [(AVCaptureSession *)self beginConfiguration];
    v6 = [a3 connection];
    if (v6)
    {
      [(AVCaptureSession *)self _removeConnection:v6];
    }

    for (i = 0; ; ++i)
    {
      v8 = [(NSPointerArray *)self->_internal->videoPreviewLayers count];
      videoPreviewLayers = self->_internal->videoPreviewLayers;
      if (i >= v8)
      {
        break;
      }

      v10 = [(NSPointerArray *)videoPreviewLayers pointerAtIndex:i];
      if (v10 == a3 || v10 == 0)
      {
        [(NSPointerArray *)self->_internal->videoPreviewLayers removePointerAtIndex:i];
      }
    }

    [(NSPointerArray *)videoPreviewLayers compact];
    [a3 removeObserver:self forKeyPath:@"changeSeed" context:AVCaptureSessionOutputChangedContext];
    objc_sync_exit(internal);

    [(AVCaptureSession *)self commitConfiguration];
  }
}

- (BOOL)_canAddConnection:(id)a3 failureReason:(id *)a4
{
  v36[0] = 0;
  internal = self->_internal;
  objc_sync_enter(internal);
  obj = internal;
  if ([(NSMutableArray *)self->_internal->connections containsObject:a3])
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    v10 = [v8 stringWithFormat:@"<%@: %p> already exists in this session", NSStringFromClass(v9), a3];
    goto LABEL_27;
  }

  if ([a3 output])
  {
    if ((-[NSMutableArray containsObject:](self->_internal->outputs, "containsObject:", [a3 output]) & 1) == 0)
    {
      v19 = MEMORY[0x1E696AEC0];
      v20 = objc_opt_class();
      v10 = [v19 stringWithFormat:@"<%@: %p> references an output unknown to this session", NSStringFromClass(v20), a3];
      goto LABEL_27;
    }

    if (([objc_msgSend(a3 "output")] & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if ([a3 videoPreviewLayer])
  {
    if (!-[NSArray containsObject:](-[NSPointerArray allObjects](self->_internal->videoPreviewLayers, "allObjects"), "containsObject:", [a3 videoPreviewLayer]))
    {
      v25 = MEMORY[0x1E696AEC0];
      v26 = objc_opt_class();
      v10 = [v25 stringWithFormat:@"<%@: %p> references a video preview layer unknown to this session", NSStringFromClass(v26), a3];
LABEL_27:
      v11 = a4;
LABEL_28:
      v18 = 0;
      v36[0] = v10;
      goto LABEL_29;
    }

    if (![objc_msgSend(a3 "videoPreviewLayer")])
    {
LABEL_34:
      v11 = a4;
      v18 = 0;
      goto LABEL_29;
    }
  }

  if (![a3 inputPorts])
  {
    v21 = MEMORY[0x1E696AEC0];
    v22 = objc_opt_class();
    v10 = [v21 stringWithFormat:@"<%@: %p> references an invalid port", NSStringFromClass(v22), a3];
    goto LABEL_27;
  }

  v11 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v13 = [a3 inputPorts];
  v14 = [v13 countByEnumeratingWithState:&v32 objects:v31 count:16];
  if (v14)
  {
    v15 = *v33;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v32 + 1) + 8 * i);
        if ((-[NSMutableArray containsObject:](self->_internal->inputs, "containsObject:", [v17 input]) & 1) == 0)
        {
          v23 = MEMORY[0x1E696AEC0];
          v24 = objc_opt_class();
          v10 = [v23 stringWithFormat:@"<%@: %p> references an input unknown to this session", NSStringFromClass(v24), a3];
          goto LABEL_28;
        }

        if ((isKindOfClass & 1) == 0 && [v17 sourcesFromConstituentDevice])
        {
          v28 = MEMORY[0x1E696AEC0];
          v29 = objc_opt_class();
          v10 = [v28 stringWithFormat:@"<%@: %p> references an input port from a constituent device -- Use AVCaptureMultiCamSession instead", NSStringFromClass(v29), a3];
          goto LABEL_28;
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v32 objects:v31 count:16];
      v18 = 1;
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v18 = 1;
  }

LABEL_29:
  objc_sync_exit(obj);
  if (v11 && v36[0])
  {
    *v11 = v36[0];
  }

  return v18;
}

- (BOOL)canAddConnection:(AVCaptureConnection *)connection
{
  v6 = 0;
  v3 = [(AVCaptureSession *)self _canAddConnection:connection failureReason:&v6];
  if (v6)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v3;
}

- (void)addConnection:(AVCaptureConnection *)connection
{
  if (dword_1ED8069A0)
  {
    v11 = 0;
    v10 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(AVCaptureSession *)self _beginConfiguration:v7];
  v9[0] = 0;
  if ([(AVCaptureSession *)self _addConnection:connection exceptionReason:v9])
  {
    [(AVCaptureSession *)self _commitConfiguration];
  }

  else
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    [(AVCaptureSession *)self _commitConfiguration];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v6);
    }

    NSLog(&cfstr_SuppressingExc.isa, v6);
  }
}

- (BOOL)_addConnection:(id)a3 exceptionReason:(id *)a4
{
  v5 = a3;
  v25 = 0;
  v7 = [(AVCaptureSession *)self _canAddConnection:a3 failureReason:&v25];
  if (!v7)
  {
    goto LABEL_18;
  }

  v8 = [v5 output];
  v9 = [v5 videoPreviewLayer];
  v10 = v9;
  if (v8)
  {
    v11 = @"connections";
    v9 = v8;
  }

  else
  {
    if (!v9)
    {
      goto LABEL_7;
    }

    v11 = @"connection";
  }

  [v9 willChangeValueForKey:v11];
LABEL_7:
  internal = self->_internal;
  objc_sync_enter(internal);
  [v5 setupObservers];
  v12 = v8;
  if (v8 || (v12 = v10) != 0)
  {
    v5 = [v12 addConnection:v5 error:0];
  }

  [(NSMutableArray *)self->_internal->connections addObject:v5];
  [v5 addObserver:self forKeyPath:@"changeSeed" options:3 context:AVCaptureSessionConnectionChangedContext];
  [v5 addObserver:self forKeyPath:@"active" options:3 context:AVCaptureSessionConnectionActiveChangedContext];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = [v5 inputPorts];
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (v14)
  {
    v15 = *v22;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v21 + 1) + 8 * i) addObserver:self forKeyPath:@"enabled" options:3 context:AVCaptureSessionConnectedInputPortEnabledChangedContext];
      }

      v14 = [v13 countByEnumeratingWithState:&v21 objects:v20 count:16];
    }

    while (v14);
  }

  [(AVCaptureSession *)self _updateHardwareCost];
  [(AVCaptureSession *)internal _addConnection:v8 exceptionReason:v10];
LABEL_18:
  if (a4)
  {
    v17 = v7;
  }

  else
  {
    v17 = 1;
  }

  if ((v17 & 1) == 0)
  {
    *a4 = v25;
  }

  return v7;
}

- (void)removeConnection:(AVCaptureConnection *)connection
{
  if (dword_1ED8069A0)
  {
    v9 = 0;
    v8 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(AVCaptureSession *)self _beginConfiguration:v6];
  [(AVCaptureSession *)self _removeConnection:connection];
  [(AVCaptureSession *)self _commitConfiguration];
}

- (void)_removeConnection:(id)a3
{
  v5 = [a3 output];
  v6 = [a3 videoPreviewLayer];
  internal = self->_internal;
  objc_sync_enter(internal);
  if (([(NSMutableArray *)self->_internal->connections containsObject:a3]& 1) != 0)
  {
    if (v5)
    {
      [v5 removeConnection:a3];
    }

    else
    {
      [v6 removeConnection:a3];
    }

    [a3 teardownObservers];
    [a3 removeObserver:self forKeyPath:@"changeSeed" context:AVCaptureSessionConnectionChangedContext];
    [a3 removeObserver:self forKeyPath:@"active" context:AVCaptureSessionConnectionActiveChangedContext];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = [a3 inputPorts];
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v12 count:16];
    if (v9)
    {
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v13 + 1) + 8 * i) removeObserver:self forKeyPath:@"enabled" context:AVCaptureSessionConnectedInputPortEnabledChangedContext];
        }

        v9 = [v8 countByEnumeratingWithState:&v13 objects:v12 count:16];
      }

      while (v9);
    }

    [(NSMutableArray *)self->_internal->connections removeObject:a3];
    [(AVCaptureSession *)self _updateHardwareCost];
  }

  objc_sync_exit(internal);
}

- (void)setControlsDelegate:(id)a3 queue:(id)a4
{
  if (!a3 || a4)
  {
    internal = self->_internal;
    objc_sync_enter(internal);
    [(AVCaptureSession *)self _beginConfiguration];
    weakReferenceControlsDelegate = self->_internal->weakReferenceControlsDelegate;
    if (weakReferenceControlsDelegate)
    {

      self->_internal->weakReferenceControlsDelegate = 0;
    }

    if (a3)
    {
      self->_internal->weakReferenceControlsDelegate = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:a3];
    }

    v10 = self->_internal;
    clientControlsQueue = v10->clientControlsQueue;
    if (clientControlsQueue != a4)
    {
      v10->clientControlsQueue = a4;
      if (a4)
      {
        dispatch_retain(a4);
      }

      if (clientControlsQueue)
      {
        dispatch_release(clientControlsQueue);
      }
    }

    [(AVCaptureSession *)self _commitConfiguration];

    objc_sync_exit(internal);
  }

  else
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v7);
    }

    NSLog(&cfstr_SuppressingExc.isa, v7);
  }
}

- (AVCaptureSessionControlsDelegate)controlsDelegate
{
  internal = self->_internal;
  objc_sync_enter(internal);
  v4 = [(AVWeakReference *)self->_internal->weakReferenceControlsDelegate referencedObject];
  objc_sync_exit(internal);
  return v4;
}

- (OS_dispatch_queue)controlsDelegateCallbackQueue
{
  internal = self->_internal;
  objc_sync_enter(internal);
  v4 = self->_internal->clientControlsQueue;
  objc_sync_exit(internal);

  return v4;
}

- (BOOL)_canAddControl:(id)a3 failureReason:(id *)a4
{
  if (![(AVCaptureSession *)self supportsControls])
  {
    v14 = @"The session doesn't support controls";
LABEL_41:
    v15 = v14;
    goto LABEL_32;
  }

  if (!a3)
  {
    v14 = @"Can't add a nil AVCaptureControl";
    goto LABEL_41;
  }

  if ([a3 session] == self)
  {
    v14 = @"An AVCaptureControl instance may not be added more than once to a session";
    goto LABEL_41;
  }

  if ([a3 session])
  {
    v14 = @"An AVCaptureControl instance may not be added to more than one session";
    goto LABEL_41;
  }

  if (![a3 actionQueue])
  {
    v14 = @"An AVCaptureControl instance cannot have a nil action queue";
    goto LABEL_41;
  }

  obj = self->_internal;
  objc_sync_enter(obj);
  if (([(NSMutableArray *)self->_internal->controls containsObject:a3]& 1) != 0)
  {
    v13 = @"An AVCaptureControl instance may not be added more than once to a session";
LABEL_30:
    v15 = v13;
  }

  else
  {
    v6 = [(NSMutableArray *)self->_internal->controls count];
    if (v6 >= [(AVCaptureSession *)self maxControlsCount])
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The session cannot have more than %lu controls", -[AVCaptureSession maxControlsCount](self, "maxControlsCount")];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v21 = 0u, v22 = 0u, v19 = 0u, v20 = 0u, controls = self->_internal->controls, (v8 = [(NSMutableArray *)controls countByEnumeratingWithState:&v19 objects:v18 count:16]) == 0))
      {
LABEL_27:
        objc_sync_exit(obj);
        return 1;
      }

      v15 = @"The session doesn't support having multiple AVCaptureSystemZoomSlider instances with the same device";
      v9 = *v20;
LABEL_13:
      v10 = 0;
      while (1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(controls);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && ([objc_msgSend(objc_msgSend(v11 "device")])
          {
            break;
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && ([objc_msgSend(objc_msgSend(v11 "device")])
          {
            v13 = @"The session doesn't support having multiple AVCaptureSystemExposureBiasSlider instances with the same device";
            goto LABEL_30;
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && ([objc_msgSend(objc_msgSend(v11 "device")])
          {
            v13 = @"The session doesn't support having multiple AVCaptureSystemLensSelector instances with the same device";
            goto LABEL_30;
          }
        }

        if (v8 == ++v10)
        {
          v8 = [(NSMutableArray *)controls countByEnumeratingWithState:&v19 objects:v18 count:16];
          if (v8)
          {
            goto LABEL_13;
          }

          goto LABEL_27;
        }
      }
    }
  }

  objc_sync_exit(obj);
LABEL_32:
  result = 0;
  if (a4)
  {
    if (v15)
    {
      result = 0;
      *a4 = v15;
    }
  }

  return result;
}

- (BOOL)canAddControl:(id)a3
{
  v6 = 0;
  v3 = [(AVCaptureSession *)self _canAddControl:a3 failureReason:&v6];
  if (v6)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v3;
}

- (void)addControl:(id)a3
{
  if (dword_1ED8069A0)
  {
    v12 = 0;
    v11 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(AVCaptureSession *)self _beginConfiguration:v8];
  internal = self->_internal;
  objc_sync_enter(internal);
  v10[0] = 0;
  if ([(AVCaptureSession *)self _canAddControl:a3 failureReason:v10])
  {
    [a3 setSession:self];
    [(NSMutableArray *)self->_internal->controls addObject:a3];
    objc_sync_exit(internal);
    [(AVCaptureSession *)self _commitConfiguration];
  }

  else
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    [(AVCaptureSession *)self _commitConfiguration];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v7);
    }

    NSLog(&cfstr_SuppressingExc.isa, v7);
    objc_sync_exit(internal);
  }
}

- (void)removeControl:(id)a3
{
  if (dword_1ED8069A0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  internal = self->_internal;
  objc_sync_enter(internal);
  if ([(NSMutableArray *)self->_internal->controls containsObject:a3])
  {
    [a3 setSession:0];
    [(AVCaptureSession *)self _beginConfiguration];
    [(NSMutableArray *)self->_internal->controls removeObject:a3];
    objc_sync_exit(internal);
    [(AVCaptureSession *)self _commitConfiguration];
  }

  else
  {
    objc_sync_exit(internal);
  }
}

- (void)_setInterrupted:(BOOL)a3 withReason:(int)a4 interruptor:(id)a5
{
  v7 = a3;
  [(AVCaptureSession *)self willChangeValueForKey:@"interrupted"];
  self->_internal->interrupted = v7;
  if (v7)
  {
    v9 = @"AVCaptureSessionWasInterruptedNotification";
  }

  else
  {
    v9 = @"AVCaptureSessionInterruptionEndedNotification";
  }

  if (!v7)
  {
    v11 = 0;
    v10 = 0;
    goto LABEL_36;
  }

  v10 = 0;
  if (a4 > 4)
  {
    if (a4 == 5)
    {
      v12 = 0;
      v10 = @"VideoDeviceNotAvailableWithMultipleForegroundApps";
      v13 = 4;
      goto LABEL_29;
    }

    if (a4 == 6)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v14 = [(AVCaptureSession *)self sessionVideoCaptureDevices];
      v15 = [v14 countByEnumeratingWithState:&v40 objects:v39 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v41;
        v10 = @"VideoDeviceNotAvailableDueToSystemPressure";
        v13 = 5;
        v27 = a5;
        while (2)
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v41 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v12 = [*(*(&v40 + 1) + 8 * i) systemPressureState];
            if ([objc_msgSend(v12 "level")])
            {
              a5 = v27;
              goto LABEL_29;
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v40 objects:v39 count:16];
          v12 = 0;
          a5 = v27;
          if (v16)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v12 = 0;
        v10 = @"VideoDeviceNotAvailableDueToSystemPressure";
        v13 = 5;
      }

      goto LABEL_29;
    }

    v11 = 0;
    if (a4 == 7)
    {
      v12 = 0;
      v10 = @"SensitiveContentMitigationActivated";
      v13 = 6;
      goto LABEL_29;
    }
  }

  else
  {
    if ((a4 - 2) < 2)
    {
      v12 = 0;
      v10 = @"AudioDeviceInUseByAnotherClient";
      v13 = 2;
      goto LABEL_29;
    }

    if (a4 == 1)
    {
      v13 = 1;
      v12 = 0;
      v10 = @"VideoDeviceNotAvailableInBackground";
      goto LABEL_29;
    }

    v11 = 0;
    if (a4 == 4)
    {
      v12 = 0;
      v10 = @"VideoDeviceInUseByAnotherClient";
      v13 = 3;
LABEL_29:
      v19 = [MEMORY[0x1E695DF90] dictionary];
      [v19 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", v13), @"AVCaptureSessionInterruptionReasonKey"}];
      [v19 setObject:v12 forKeyedSubscript:@"AVCaptureSessionInterruptionSystemPressureStateKey"];
      if (AVCaptureClientHasEntitlement(AVCaptureEntitlementCameraStolenInterruptor))
      {
        [v19 setObject:a5 forKeyedSubscript:@"AVCaptureSessionCameraStolenInterruptorKey"];
      }

      v11 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v19];
    }
  }

  if (self->_internal->videoInputDeviceUsed)
  {
    CTGreenTeaOsLogHandle = getCTGreenTeaOsLogHandle();
    if (CTGreenTeaOsLogHandle)
    {
      v21 = CTGreenTeaOsLogHandle;
      if (os_log_type_enabled(CTGreenTeaOsLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A917C000, v21, OS_LOG_TYPE_INFO, "Stopped camera session", buf, 2u);
      }
    }
  }

LABEL_36:
  if (dword_1ED8069A0)
  {
    v38 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v23 = v38;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v24 = v23;
    }

    else
    {
      v24 = v23 & 0xFFFFFFFE;
    }

    if (v24)
    {
      v28 = 136315906;
      v29 = "[AVCaptureSession _setInterrupted:withReason:interruptor:]";
      v30 = 2048;
      v31 = self;
      v32 = 2114;
      v33 = v9;
      v34 = 2114;
      v35 = v10;
      LODWORD(v26) = 42;
      v25 = &v28;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
  [(AVCaptureSession *)self didChangeValueForKey:@"interrupted"];
}

- (void)setMultitaskingCameraAccessEnabled:(BOOL)multitaskingCameraAccessEnabled
{
  v3 = multitaskingCameraAccessEnabled;
  if (multitaskingCameraAccessEnabled && ![(AVCaptureSession *)self isMultitaskingCameraAccessSupported])
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
  }

  else
  {

    [(AVCaptureSession *)self _setMultitaskingCameraAccessEnabled:v3];
  }
}

- (void)_setMultitaskingCameraAccessEnabled:(BOOL)a3
{
  if (self->_internal->authorizedToUseCameraInMultipleForegroundAppLayout != a3)
  {
    [(AVCaptureSession *)self _beginConfiguration];
    self->_internal->authorizedToUseCameraInMultipleForegroundAppLayout = a3;

    [(AVCaptureSession *)self _commitConfiguration];
  }
}

- (void)setUsesApplicationAudioSession:(BOOL)usesApplicationAudioSession
{
  if (self->_internal->usesApplicationAudioSession != usesApplicationAudioSession)
  {
    [(AVCaptureSession *)self _beginConfiguration];
    self->_internal->usesApplicationAudioSession = usesApplicationAudioSession;

    [(AVCaptureSession *)self _commitConfiguration];
  }
}

- (void)setAutomaticallyConfiguresApplicationAudioSession:(BOOL)automaticallyConfiguresApplicationAudioSession
{
  internal = self->_internal;
  if (internal->automaticallyConfiguresApplicationAudioSession != automaticallyConfiguresApplicationAudioSession)
  {
    internal->automaticallyConfiguresApplicationAudioSession = automaticallyConfiguresApplicationAudioSession;
    if (self->_internal->usesApplicationAudioSession)
    {
      [(AVCaptureSession *)self _beginConfiguration];

      [(AVCaptureSession *)self _commitConfiguration];
    }
  }
}

- (void)setConfiguresApplicationAudioSessionToMixWithOthers:(BOOL)a3
{
  internal = self->_internal;
  if (internal->configuresApplicationAudioSessionToMixWithOthers != a3)
  {
    internal->configuresApplicationAudioSessionToMixWithOthers = a3;
    if (self->_internal->usesApplicationAudioSession)
    {
      [(AVCaptureSession *)self _rebuildGraph];
    }
  }
}

- (void)setConfiguresApplicationAudioSessionForBluetoothHighQualityRecording:(BOOL)a3
{
  internal = self->_internal;
  if (internal->configuresApplicationAudioSessionForBluetoothHighQualityRecording != a3)
  {
    internal->configuresApplicationAudioSessionForBluetoothHighQualityRecording = a3;
    v5 = a3 && self->_internal->usesApplicationAudioSession;
    [(AVCaptureSession *)self _setAudioInputDeviceHighQualityBluetoothEnabled:v5];
    if (self->_internal->usesApplicationAudioSession)
    {

      [(AVCaptureSession *)self _rebuildGraph];
    }
  }
}

- (void)_setAudioInputDeviceHighQualityBluetoothEnabled:(BOOL)a3
{
  v3 = a3;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  inputs = self->_internal->inputs;
  v5 = [(NSMutableArray *)inputs countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(inputs);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v9 device];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v10 setAllowsBluetoothHighQualityRecording:v3];
          }
        }
      }

      v6 = [(NSMutableArray *)inputs countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v6);
  }
}

- (void)setAutomaticallyConfiguresCaptureDeviceForWideColor:(BOOL)automaticallyConfiguresCaptureDeviceForWideColor
{
  internal = self->_internal;
  if (internal->automaticallyConfiguresCaptureDeviceForWideColor != automaticallyConfiguresCaptureDeviceForWideColor)
  {
    internal->automaticallyConfiguresCaptureDeviceForWideColor = automaticallyConfiguresCaptureDeviceForWideColor;
    if (automaticallyConfiguresCaptureDeviceForWideColor)
    {
      [(AVCaptureSession *)self _beginConfiguration];

      [(AVCaptureSession *)self _commitConfiguration];
    }
  }
}

- (BOOL)isManualDeferredStartSupported
{
  if (AVCaptureSessionIsDeferredStartSupported_onceToken != -1)
  {
    AVCaptureSessionIsDeferredStartSupported_cold_1();
  }

  return AVCaptureSessionIsDeferredStartSupported_deferredStartSupported;
}

- (void)setAutomaticallyRunsDeferredStart:(BOOL)a3
{
  v3 = a3;
  if ([(AVCaptureSession *)self isManualDeferredStartSupported]|| v3)
  {
    if (self->_internal->automaticallyRunsDeferredStart != v3)
    {
      [(AVCaptureSession *)self _beginConfiguration];
      self->_internal->automaticallyRunsDeferredStart = v3;

      [(AVCaptureSession *)self _commitConfiguration];
    }
  }

  else
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Not allowed to set automaticallyRunsDeferredStart to NO if not supported" userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
  }
}

- (void)runDeferredStartWhenNeeded
{
  if (dword_1ED8069A0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  internal = self->_internal;
  if (internal->automaticallyRunsDeferredStart)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Can't call runDeferredStartWhenNeeded if automaticallyRunsDeferredStart is YES" userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
  }

  else
  {
    objc_sync_enter(self->_internal);
    figCaptureSession = self->_internal->figCaptureSession;
    if (figCaptureSession)
    {
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v7)
      {
        v7(figCaptureSession, *MEMORY[0x1E698FE08], MEMORY[0x1E695E118]);
      }
    }

    objc_sync_exit(internal);
  }
}

- (void)setDeferredStartDelegate:(id)a3 deferredStartDelegateCallbackQueue:(id)a4
{
  if (dword_1ED8069A0)
  {
    v12 = 0;
    v11 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a3)
  {
    a4 = 0;
    goto LABEL_8;
  }

  if (a4)
  {
LABEL_8:
    [(AVWeakReferencingDelegateStorage *)self->_internal->deferredStartDelegateStorage setDelegate:a3 queue:a4, v9, v10];
    return;
  }

  v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v8);
  }

  NSLog(&cfstr_SuppressingExc.isa, v8);
}

- (void)_willRunDeferredStart
{
  if (dword_1ED8069A0)
  {
    v9 = 0;
    v8 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  deferredStartDelegateStorage = self->_internal->deferredStartDelegateStorage;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__AVCaptureSession__willRunDeferredStart__block_invoke;
  v7[3] = &unk_1E7875F98;
  v7[4] = self;
  [(AVWeakReferencingDelegateStorage *)deferredStartDelegateStorage invokeDelegateCallbackWithBlock:v7, v5, v6];
}

- (void)_didRunDeferredStart
{
  if (dword_1ED8069A0)
  {
    v9 = 0;
    v8 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  deferredStartDelegateStorage = self->_internal->deferredStartDelegateStorage;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__AVCaptureSession__didRunDeferredStart__block_invoke;
  v7[3] = &unk_1E7875F98;
  v7[4] = self;
  [(AVWeakReferencingDelegateStorage *)deferredStartDelegateStorage invokeDelegateCallbackWithBlock:v7, v5, v6];
}

- (void)stopRunning
{
  if (dword_1ED8069A0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  internal = self->_internal;
  objc_sync_enter(internal);
  if ([(AVCaptureSession *)self isBeingConfigured])
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
  }

  else if ([(AVCaptureSession *)self isRunning]|| self->_internal->figCaptureSessionStarted)
  {
    objc_sync_exit(internal);
    [(AVCaptureSession *)self _setRunning:0];
    return;
  }

  objc_sync_exit(internal);
}

- (int)_stopFigCaptureSession
{
  [(AVCaptureSession *)self isRunning];
  v3 = [(AVCaptureSession *)self _stopError];
  [(AVRunLoopCondition *)self->_internal->runLoopCondition lock];
  self->_internal->waitingForFigCaptureSessionToStop = 1;
  internal = self->_internal;
  objc_sync_enter(internal);
  figCaptureSession = self->_internal->figCaptureSession;
  if (figCaptureSession)
  {
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v6)
    {
      v6(figCaptureSession);
    }

    else
    {
      *v22 = *MEMORY[0x1E698FC40];
      v23 = &unk_1F1CEA1D8;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:v22 count:1];
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }
  }

  objc_sync_exit(internal);
  [(AVRunLoopCondition *)self->_internal->runLoopCondition signal];
  runLoopCondition = self->_internal->runLoopCondition;
  v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:9.0];
  v9 = [(AVRunLoopCondition *)runLoopCondition waitUntilDate:v8 inMode:*MEMORY[0x1E6961580]];
  v10 = self->_internal;
  waitingForFigCaptureSessionToStop = v10->waitingForFigCaptureSessionToStop;
  if ((v9 & 1) == 0)
  {
    if (v10->waitingForFigCaptureSessionToStop)
    {
      v25 = 0;
      v24 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v14 = v25;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v24))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (!v15)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v25 = 0;
      v24 = OS_LOG_TYPE_DEFAULT;
      v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v17 = v25;
      if (os_log_type_enabled(v16, v24))
      {
        v18 = v17;
      }

      else
      {
        v18 = v17 & 0xFFFFFFFE;
      }

      if (!v18)
      {
        goto LABEL_20;
      }
    }

    *v22 = 136315394;
    *&v22[4] = "[AVCaptureSession _stopFigCaptureSession]";
    *&v22[12] = 2048;
    *&v22[14] = self;
    LODWORD(v21) = 22;
    v20 = v22;
    _os_log_send_and_compose_impl();
LABEL_20:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    self->_internal->waitingForFigCaptureSessionToStop = 0;
    v3 = AVLocalizedError();
    v12 = -11819;
    goto LABEL_21;
  }

  v10->waitingForFigCaptureSessionToStop = 0;
  if (waitingForFigCaptureSessionToStop)
  {
    v12 = -1;
  }

  else
  {
    v12 = 0;
    self->_internal->figCaptureSessionStarted = 0;
  }

LABEL_21:
  [(AVRunLoopCondition *)self->_internal->runLoopCondition unlock:v20];
  if (v3 && [v3 code] != -11806)
  {
    [(AVCaptureSession *)self _postRuntimeError:v3];
  }

  os_unfair_lock_lock(&self->_internal->recordingMovieFileOutputsLock);
  [(NSMutableArray *)self->_internal->recordingMovieFileOutputs removeAllObjects];
  os_unfair_lock_unlock(&self->_internal->recordingMovieFileOutputsLock);
  return v12;
}

- (void)_setRunning:(BOOL)a3
{
  v3 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  if (self->_internal->videoInputDeviceUsed && AVCaptureClientIsCameraOrDerivative() && v3)
  {
    if (avcs_platformSupportsDeferredProcessing_onceToken != -1)
    {
      [AVCaptureSession _setRunning:];
    }

    if (avcs_platformSupportsDeferredProcessing_answer == 1)
    {
      notify_post(*MEMORY[0x1E698F8F0]);
    }
  }

  internal = self->_internal;
  if (internal->running != v3 || internal->figCaptureSessionStarted && !v3)
  {
    [(AVCaptureSession *)self willChangeValueForKey:@"running"];
    v8 = self->_internal;
    if (v3)
    {
      v8->running = v3;
      v9 = [(AVCaptureSession *)self _buildAndRunGraph:[(AVCaptureSession *)self isBeingConfigured]];
      v10 = self->_internal;
      if (!v9)
      {
        v10->running = 0;
LABEL_39:
        [(AVCaptureSession *)self didChangeValueForKey:@"running"];
        goto LABEL_40;
      }

      if (v10->interrupted)
      {
        v10->running = 0;
      }

      else
      {
        if (dword_1ED8069A0)
        {
          v25 = 0;
          v24 = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
      }

      if (!self->_internal->videoInputDeviceUsed)
      {
        goto LABEL_39;
      }

      CTGreenTeaOsLogHandle = getCTGreenTeaOsLogHandle();
      if (!CTGreenTeaOsLogHandle)
      {
        goto LABEL_39;
      }

      v16 = CTGreenTeaOsLogHandle;
      if (!os_log_type_enabled(CTGreenTeaOsLogHandle, OS_LOG_TYPE_INFO))
      {
        goto LABEL_39;
      }

      *buf = 0;
      v17 = "Started camera session";
LABEL_38:
      _os_log_impl(&dword_1A917C000, v16, OS_LOG_TYPE_INFO, v17, buf, 2u);
      goto LABEL_39;
    }

    if (v8->figCaptureSessionStarted)
    {
      v11 = [(AVCaptureSession *)self _stopFigCaptureSession];
      if (v11 && v11 != -11819)
      {
        goto LABEL_26;
      }

      self->_internal->running = 0;
      if (!dword_1ED8069A0)
      {
LABEL_25:
        [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
LABEL_26:
        v14 = self->_internal;
        if (!v14->running && v14->interrupted)
        {
          [(AVCaptureSession *)self _setInterrupted:0 withReason:0 interruptor:0];
          v14 = self->_internal;
        }

        if (!v14->videoInputDeviceUsed)
        {
          goto LABEL_39;
        }

        v15 = getCTGreenTeaOsLogHandle();
        if (!v15)
        {
          goto LABEL_39;
        }

        v16 = v15;
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          goto LABEL_39;
        }

        *buf = 0;
        v17 = "Stopped camera session";
        goto LABEL_38;
      }
    }

    else
    {
      v8->running = 0;
      if (!dword_1ED8069A0)
      {
        goto LABEL_25;
      }
    }

    v25 = 0;
    v24 = 0;
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_25;
  }

LABEL_40:

  objc_autoreleasePoolPop(v5);
}

- (CMClockRef)synchronizationClock
{
  internal = self->_internal;
  objc_sync_enter(internal);
  synchronizationClock = self->_internal->synchronizationClock;
  if (synchronizationClock)
  {
    v5 = CFRetain(synchronizationClock);
    v6 = CFAutorelease(v5);
  }

  else
  {
    v6 = 0;
  }

  objc_sync_exit(internal);
  return v6;
}

- (void)_setSynchronizationClock:(OpaqueCMClock *)a3
{
  internal = self->_internal;
  objc_sync_enter(internal);
  if (self->_internal->synchronizationClock != a3)
  {
    [(AVCaptureSession *)self willChangeValueForKey:@"synchronizationClock"];
    [(AVCaptureSession *)self willChangeValueForKey:@"masterClock"];
    v6 = self->_internal;
    synchronizationClock = v6->synchronizationClock;
    v6->synchronizationClock = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (synchronizationClock)
    {
      CFRelease(synchronizationClock);
    }

    [(AVCaptureSession *)self didChangeValueForKey:@"masterClock"];
    [(AVCaptureSession *)self didChangeValueForKey:@"synchronizationClock"];
  }

  objc_sync_exit(internal);
}

- (float)_totalHardwareCost
{
  [(AVCaptureSession *)self _nandCost];
  if (v3 >= 0.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  if (FigCapturePlatformIdentifier() >= 6)
  {
    [(AVCaptureSession *)self _memoryCost];
    if (v4 <= v5)
    {
      v4 = v5;
    }

    [(AVCaptureSession *)self _encoderCost];
    if (v4 <= v6)
    {
      v4 = v6;
    }
  }

  [(AVCaptureSession *)self _videoAndMovieOutputCost];
  if (v4 > result)
  {
    return v4;
  }

  return result;
}

- (float)_nandCost
{
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = [(AVCaptureSession *)self connections];
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    v6 = *MEMORY[0x1E6987608];
    v7 = *MEMORY[0x1E6966130];
    v18 = *MEMORY[0x1E69874C0];
    v8 = *MEMORY[0x1E6987CB8];
    v9 = 0.0;
    while (1)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        if ([v11 isActive] && objc_msgSend(objc_msgSend(v11, "mediaType"), "isEqualToString:", v6))
        {
          v12 = [v11 output];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [objc_msgSend(objc_msgSend(v12 "videoSettings")];
            if (!FigCapturePixelFormatIs422())
            {
              continue;
            }

            v13 = [v12 availableVideoCodecTypesForAssetWriterWithOutputFileType:v18];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              continue;
            }

            v13 = [v12 availableVideoCodecTypes];
          }

          v14 = 0.0;
          if ([v13 containsObject:v8] && !+[AVExternalStorageDeviceDiscoverySession isSupported](AVExternalStorageDeviceDiscoverySession, "isSupported"))
          {
            [(AVCaptureSession *)self _nandCostWithDataRate:[(AVCaptureSession *)self _getMovieFileOutputNANDDataRate:v11]];
            v14 = v15;
          }

          v9 = v9 + v14;
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v20 objects:v19 count:16];
      if (!v4)
      {
        return v9;
      }
    }
  }

  return 0.0;
}

- (id)mediaEnvironment
{
  v2 = self->_internal->mediaEnvironment;

  return v2;
}

- (void)movieFileOutputStoppedRecording:(id)a3
{
  os_unfair_lock_lock(&self->_internal->recordingMovieFileOutputsLock);
  if ([(NSMutableArray *)self->_internal->recordingMovieFileOutputs containsObject:a3])
  {
    [(NSMutableArray *)self->_internal->recordingMovieFileOutputs removeObject:a3];
  }

  p_recordingMovieFileOutputsLock = &self->_internal->recordingMovieFileOutputsLock;

  os_unfair_lock_unlock(p_recordingMovieFileOutputsLock);
}

- (int)_getMovieFileOutputNANDDataRate:(id)a3
{
  v28 = *MEMORY[0x1E6960C70];
  v4 = *(MEMORY[0x1E6960C70] + 12);
  v29 = *(MEMORY[0x1E6960C70] + 8);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = [a3 inputPorts];
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    v9 = *MEMORY[0x1E6987608];
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        if ([objc_msgSend(v11 "mediaType")])
        {
          v12 = [v11 input];
          if (v12)
          {
            [v12 videoMinFrameDurationOverride];
            LOBYTE(v4) = v22;
          }

          else
          {
            LOBYTE(v4) = 0;
            v18 = 0;
            v20 = 0;
          }

          v28 = v18;
          v29 = v20;
          goto LABEL_14;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v24 objects:v23 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
  v13 = [objc_msgSend(a3 "sourceDevice")];
  v14 = v13;
  v19 = 0;
  v21 = 0;
  if (v4)
  {
    v19 = v28;
    v21 = v29;
  }

  else if (v13)
  {
    [v13 lowestSupportedVideoFrameDuration];
  }

  Dimensions = CMVideoFormatDescriptionGetDimensions([v14 formatDescription]);
  v16 = AVCaptureConvertDimensionsForAspectRatio(Dimensions, [objc_msgSend(a3 "sourceDevice")], NAN);
  return ((v21 / v19) * (HIDWORD(v16) * v16));
}

- (float)_memoryCost
{
  v3 = FigCapturePlatformIdentifier();
  v4 = [(AVCaptureSession *)self _livePortSetsByDeviceInput];
  v40 = self;
  v41 = [(AVCaptureSession *)self _devicesProvidingDepthData];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v58 objects:v57 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v59;
    v8 = *MEMORY[0x1E6987608];
    if (v3 >= 6)
    {
      v9 = 1.0;
    }

    else
    {
      v9 = 1.25;
    }

    if (v3 <= 6)
    {
      v10 = 1.0;
    }

    else
    {
      v10 = 1.2;
    }

    v11 = 300;
    v42 = *MEMORY[0x1E6987608];
    v43 = *v59;
    do
    {
      v12 = 0;
      v44 = v6;
      do
      {
        if (*v59 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v58 + 1) + 8 * v12);
        v14 = [v13 device];
        if ([v14 hasMediaType:v8])
        {
          v15 = [v14 isVirtualDevice];
          v45 = v11;
          if (v15)
          {
            v16 = [v14 constituentDevices];
            v17 = [MEMORY[0x1E695DFA8] set];
            if ([v41 containsObject:v14])
            {
              if ([v14 deviceType] != @"AVCaptureDeviceTypeBuiltInLiDARDepthCamera")
              {
                v55 = 0u;
                v56 = 0u;
                v53 = 0u;
                v54 = 0u;
                v18 = [v14 constituentDevices];
                v19 = [v18 countByEnumeratingWithState:&v53 objects:v52 count:16];
                if (v19)
                {
                  v20 = v19;
                  v21 = *v54;
                  do
                  {
                    for (i = 0; i != v20; ++i)
                    {
                      if (*v54 != v21)
                      {
                        objc_enumerationMutation(v18);
                      }

                      [v17 addObject:{objc_msgSend(*(*(&v53 + 1) + 8 * i), "deviceType")}];
                    }

                    v20 = [v18 countByEnumeratingWithState:&v53 objects:v52 count:16];
                  }

                  while (v20);
                }
              }
            }
          }

          else
          {
            v17 = [MEMORY[0x1E695DFA8] set];
            v16 = 0;
          }

          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v23 = [obj objectForKeyedSubscript:v13];
          v24 = [v23 countByEnumeratingWithState:&v48 objects:v47 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v49;
            do
            {
              for (j = 0; j != v25; ++j)
              {
                if (*v49 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                v28 = *(*(&v48 + 1) + 8 * j);
                if (([v17 containsObject:{objc_msgSend(v28, "sourceDeviceType")}] & 1) == 0)
                {
                  [v17 addObject:{objc_msgSend(v28, "sourceDeviceType")}];
                }
              }

              v25 = [v23 countByEnumeratingWithState:&v48 objects:v47 count:16];
            }

            while (v25);
          }

          v29 = [v17 count];
          if (v15)
          {
            v30 = v45;
            if ([v17 containsObject:{objc_msgSend(v14, "deviceType")}])
            {
              v29 = (__PAIR128__(v29, [v16 count]) - v29) >> 64;
            }
          }

          else
          {
            v30 = v45;
          }

          v31 = [objc_msgSend(objc_msgSend(v14 "activeFormat")];
          v32 = [v14 isVideoHDREnabled] | v31;
          v33 = 5 * v29 + 2 * ([v16 count] - v29);
          v34 = [objc_msgSend(v14 "activeFormat")];
          v11 = v30 + ((v10 * (v9 * ((([objc_msgSend(v14 "activeFormat")] >> 32) * v34) << (v32 & 1)))) * 0.00000095367) * v33;
          v7 = v43;
          v6 = v44;
          v8 = v42;
        }

        ++v12;
      }

      while (v12 != v6);
      v6 = [obj countByEnumeratingWithState:&v58 objects:v57 count:16];
    }

    while (v6);
  }

  else
  {
    v11 = 300;
  }

  v35 = [(AVCaptureSession *)v40 _computeMemoryUsageForOutputs];
  v36 = [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")] >> 30;
  if (v36 >= 5)
  {
    if (v36 >= 7)
    {
      if (v36 >= 9)
      {
        v38 = 3800;
      }

      else
      {
        v38 = 3300;
      }

      v37 = v38;
    }

    else
    {
      v37 = 2100.0;
    }
  }

  else
  {
    v37 = 1800.0;
  }

  return (v35 + v11) / v37;
}

- (unsigned)_computeMemoryUsageForOutputs
{
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  obj = [(AVCaptureSession *)self connections];
  v75 = [(NSArray *)obj countByEnumeratingWithState:&v108 objects:v107 count:16];
  v2 = 0;
  if (v75)
  {
    v74 = *v109;
    v3 = *MEMORY[0x1E6987608];
    v78 = *MEMORY[0x1E69660B8];
    v79 = *MEMORY[0x1E6966208];
    v77 = *MEMORY[0x1E6966130];
    do
    {
      v4 = 0;
      do
      {
        if (*v109 != v74)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v108 + 1) + 8 * v4);
        v76 = v4;
        if ([v5 isActive])
        {
          v6 = [v5 output];
          objc_opt_class();
          v85 = v5;
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            v105 = 0u;
            v106 = 0u;
            v103 = 0u;
            v104 = 0u;
            v84 = [v5 inputPorts];
            v7 = [v84 countByEnumeratingWithState:&v103 objects:v102 count:16];
            if (!v7)
            {
              goto LABEL_83;
            }

            v8 = v7;
            v9 = *v104;
            v81 = *v104;
            v82 = v6;
            while (1)
            {
              v10 = 0;
              v83 = v8;
              do
              {
                if (*v104 != v9)
                {
                  objc_enumerationMutation(v84);
                }

                v11 = *(*(&v103 + 1) + 8 * v10);
                if ([objc_msgSend(v11 "mediaType")])
                {
                  v12 = [v11 input];
                  v13 = [objc_msgSend(v12 "videoDevice")];
                  v14 = [v13 figCaptureSourceVideoFormat];
                  Dimensions = CMVideoFormatDescriptionGetDimensions([v13 formatDescription]);
                  v100 = 0;
                  v99 = 0;
                  v101 = 0;
                  if (v12)
                  {
                    [v12 videoMinFrameDurationOverride];
                    if ((v97 & 0x100000000) != 0)
                    {
                      [v12 videoMinFrameDurationOverride];
                      goto LABEL_22;
                    }
                  }

                  else
                  {
                    v96 = 0;
                    v97 = 0;
                    v98 = 0;
                  }

                  if (v13)
                  {
                    [v13 lowestSupportedVideoFrameDuration];
                  }

                  else
                  {
                    v100 = 0;
                    v99 = 0;
                    v101 = 0;
                  }

LABEL_22:
                  v16 = v100;
                  v17 = v99;
                  v18 = [v5 clientRetainedBufferCount];
                  v19 = [v5 activeVideoStabilizationMode];
                  v20 = 0.0;
                  if (v19 > 2)
                  {
                    switch(v19)
                    {
                      case 3:
                        [v14 cinematicStabilizationExtendedLookAheadDuration];
                        v20 = v23;
                        [v14 stabilizationOverscanPercentageOverrideForCinematic];
                        if (v24 == 0.0)
                        {
                          v21 = 20.0;
                        }

                        else
                        {
                          v21 = v24;
                        }

                        break;
                      case 5:
                        [v14 cinematicStabilizationExtendedLookAheadDuration];
                        v20 = v25;
                        [v14 stabilizationOverscanPercentageOverrideForCinematicExtendedEnhanced];
                        if (v26 == 0.0)
                        {
                          v21 = 28.0;
                        }

                        else
                        {
                          v21 = v26;
                        }

                        break;
                      case 6:
                        v21 = 20.0;
                        break;
                      default:
                        v21 = 0.0;
                        break;
                    }

                    goto LABEL_45;
                  }

                  if (v19 == 1)
                  {
                    if ([v14 stabilizationTypeOverrideForStandard] != 1)
                    {
                      [v14 stabilizationOverscanPercentageOverrideForStandard];
                      if (v28 == 0.0)
                      {
                        v21 = 10.0;
                      }

                      else
                      {
                        v21 = v28;
                      }

                      goto LABEL_45;
                    }

                    v27 = 8;
                    v21 = 0.0;
                  }

                  else
                  {
                    v21 = 0.0;
                    if (v19 == 2)
                    {
                      [v14 stabilizationOverscanPercentageOverrideForCinematic];
                      if (v22 == 0.0)
                      {
                        v21 = 20.0;
                      }

                      else
                      {
                        v21 = v22;
                      }

                      v20 = 0.5;
                    }

LABEL_45:
                    v27 = (((v16 / v17) * v20) + 10.0);
                  }

                  v29 = [v14 format];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    if (FigCapturePlatformSupportsUniversalCompression())
                    {
                      [MEMORY[0x1E698F770] movieFileMaxLossyCompressionLevelForPixelFormat:v29];
                      goto LABEL_52;
                    }

                    if (FigCapturePlatformSupportsHTPC16x8Compression())
                    {
LABEL_52:
                      FigCaptureCompressedPixelFormatForPixelFormat();
                    }

                    width = Dimensions.width;
                    height = Dimensions.height;
                    v37 = v2 + ((((Dimensions.width * 16.5) * Dimensions.height) + 17.0) * 0.00000095367);
                    FigCapturePixelFormatBytesPerPixel();
                    v39 = (v18 + 11) * ((v38 * (Dimensions.height * Dimensions.width)) * 0.00000095367);
LABEL_57:
                    v41 = (v21 / 100.0) + 1.0;
                    v42 = (v41 * width);
                    v43 = (v41 * height);
                    v44 = [v14 sensorDimensions];
                    v45 = v42 <= v44;
                    if (v42 >= v44)
                    {
                      v42 = v44;
                    }

                    if (v45)
                    {
                      v46 = v43;
                    }

                    else
                    {
                      v46 = HIDWORD(v44);
                    }

                    FigCapturePixelFormatBytesPerPixel();
                    v48 = ((v47 * (v46 * v42)) * 0.00000095367);
                    v5 = v85;
                    [objc_msgSend(objc_msgSend(objc_msgSend(v85 "sourceDevice")];
                    if (FigCapturePixelFormatIsPackedBayerRaw())
                    {
                      v49 = 0;
                    }

                    else
                    {
                      v49 = v39;
                    }

                    v2 = v49 + v37 + v27 * v48;
                    v9 = v81;
                    v8 = v83;
                    goto LABEL_66;
                  }

                  v80 = v27;
                  v30 = v3;
                  v31 = v2;
                  v32 = [v82 videoSettings];
                  v33 = [objc_msgSend(v32 objectForKeyedSubscript:{v79), "intValue"}];
                  v34 = [objc_msgSend(v32 objectForKeyedSubscript:{v78), "intValue"}];
                  [objc_msgSend(v32 objectForKeyedSubscript:{v77), "intValue"}];
                  if (FigCapturePlatformSupportsUniversalCompression())
                  {
                    [MEMORY[0x1E698F770] videoDataMaxLossyCompressionLevel];
                    goto LABEL_55;
                  }

                  if (FigCapturePlatformSupportsHTPC16x8Compression())
                  {
LABEL_55:
                    FigCaptureCompressedPixelFormatForPixelFormat();
                  }

                  width = Dimensions.width;
                  FigCapturePixelFormatBytesPerPixel();
                  v39 = (v18 + 2) * ((v40 * (v34 * v33)) * 0.00000095367);
                  height = Dimensions.height;
                  v37 = v31;
                  v3 = v30;
                  v27 = v80;
                  goto LABEL_57;
                }

LABEL_66:
                ++v10;
              }

              while (v8 != v10);
              v8 = [v84 countByEnumeratingWithState:&v103 objects:v102 count:16];
              if (!v8)
              {
LABEL_83:
                if ([v5 videoPreviewLayer])
                {
                  v89 = 0u;
                  v90 = 0u;
                  v87 = 0u;
                  v88 = 0u;
                  v60 = [v5 inputPorts];
                  v61 = [v60 countByEnumeratingWithState:&v87 objects:v86 count:16];
                  if (v61)
                  {
                    v62 = v61;
                    v63 = *v88;
                    do
                    {
                      for (i = 0; i != v62; ++i)
                      {
                        if (*v88 != v63)
                        {
                          objc_enumerationMutation(v60);
                        }

                        v65 = *(*(&v87 + 1) + 8 * i);
                        if ([objc_msgSend(v65 "mediaType")])
                        {
                          v66 = [v65 input];
                          v67 = [objc_msgSend(v66 "videoDevice")];
                          v68 = [objc_msgSend(v67 "figCaptureSourceVideoFormat")];
                          if ([objc_msgSend(v67 "supportedDynamicAspectRatios")])
                          {
                            v69 = [objc_msgSend(v66 "videoDevice")];
                            [objc_msgSend(v67 "figCaptureSourceVideoFormat")];
                            v68 = AVCaptureConvertDimensionsForAspectRatio(v68, v69, v70);
                          }

                          [objc_msgSend(v67 "figCaptureSourceVideoFormat")];
                          if (FigCapturePlatformSupportsUniversalCompression())
                          {
                            [MEMORY[0x1E698F770] previewMaxLossyCompressionLevel];
                            FigCaptureCompressedPixelFormatForPixelFormat();
                          }

                          else if (FigCapturePlatformSupportsHTPC16x8Compression())
                          {
                            FigCaptureCompressedPixelFormatForPixelFormat();
                          }

                          FigCapturePixelFormatBytesPerPixel();
                          v2 += 6 * ((v71 * (HIDWORD(v68) * v68)) * 0.00000095367);
                        }
                      }

                      v62 = [v60 countByEnumeratingWithState:&v87 objects:v86 count:16];
                    }

                    while (v62);
                  }
                }

                goto LABEL_99;
              }
            }
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_83;
          }

          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v50 = [v5 inputPorts];
          v51 = [v50 countByEnumeratingWithState:&v92 objects:v91 count:16];
          if (!v51)
          {
            goto LABEL_83;
          }

          v52 = v51;
          v53 = *v93;
          while (2)
          {
            v54 = 0;
LABEL_73:
            if (*v93 != v53)
            {
              objc_enumerationMutation(v50);
            }

            v55 = *(*(&v92 + 1) + 8 * v54);
            if ([objc_msgSend(v55 "mediaType")])
            {
              v56 = [objc_msgSend(objc_msgSend(v55 "input")];
              if (FigCapturePlatformSupportsUniversalCompression())
              {
                [MEMORY[0x1E698F770] stillImageMaxLossyCompressionLevel];
                goto LABEL_79;
              }

              if (FigCapturePlatformSupportsHTPC16x8Compression())
              {
LABEL_79:
                FigCaptureCompressedPixelFormatForPixelFormat();
              }

              v99 = 0;
              [objc_msgSend(objc_msgSend(v56 "supportedMaxPhotoDimensions")];
              v57 = HIDWORD(v99);
              v58 = v99;
              FigCapturePixelFormatBytesPerPixel();
              v2 += 3 * ((v59 * (v57 * v58)) * 0.00000095367) + 120;
              v5 = v85;
            }

            if (v52 == ++v54)
            {
              v52 = [v50 countByEnumeratingWithState:&v92 objects:v91 count:16];
              if (!v52)
              {
                goto LABEL_83;
              }

              continue;
            }

            goto LABEL_73;
          }
        }

LABEL_99:
        v4 = v76 + 1;
      }

      while (v76 + 1 != v75);
      v75 = [(NSArray *)obj countByEnumeratingWithState:&v108 objects:v107 count:16];
    }

    while (v75);
  }

  return v2;
}

- (float)_encoderCost
{
  v2 = 8294400;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [(AVCaptureSession *)self connections];
  v25 = [(NSArray *)obj countByEnumeratingWithState:&v40 objects:v39 count:16];
  if (!v25)
  {
    v21 = 0.0;
    return v21 / (v2 * AVGestaltGetIntegerAnswerWithDefault(@"AVGQRearFacingCameraVideoCapture4kMaxFPS", 60));
  }

  v32 = 0;
  v24 = *v41;
  v3 = *MEMORY[0x1E6987608];
  v29 = *MEMORY[0x1E6966130];
  v28 = *MEMORY[0x1E6966208];
  v27 = *MEMORY[0x1E69660B8];
  do
  {
    v4 = 0;
    do
    {
      if (*v41 != v24)
      {
        objc_enumerationMutation(obj);
      }

      v5 = *(*(&v40 + 1) + 8 * v4);
      v26 = v4;
      if ([v5 isActive])
      {
        v6 = [v5 output];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        objc_opt_class();
        v8 = objc_opt_isKindOfClass();
        v9 = v8;
        v31 = isKindOfClass;
        if (isKindOfClass & 1) != 0 || (v8)
        {
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v10 = [v5 inputPorts];
          v11 = [v10 countByEnumeratingWithState:&v35 objects:v34 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v36;
            v30 = v6;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v36 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v35 + 1) + 8 * i);
                if ([objc_msgSend(v15 "mediaType")])
                {
                  v16 = [v15 input];
                  v17 = [objc_msgSend(v16 "videoDevice")];
                  if (v31)
                  {
                    CMFormatDescriptionGetMediaSubType([objc_msgSend(objc_msgSend(v16 "videoDevice")]);
                    LODWORD(v32) = v32 | FigCapturePixelFormatIsPackedBayerRaw();
                  }

                  Dimensions = CMVideoFormatDescriptionGetDimensions([v17 formatDescription]);
                  if (v9)
                  {
                    if ([v6 deliversPreviewSizedOutputBuffers])
                    {
                      continue;
                    }

                    v19 = [v6 videoSettings];
                    [objc_msgSend(v19 objectForKeyedSubscript:{v29), "intValue"}];
                    if (FigCapturePixelFormatIsUsedForProRes())
                    {
                      LODWORD(v32) = v32 | FigCapturePixelFormatIsPackedBayerRaw();
                      v20 = [objc_msgSend(v19 objectForKeyedSubscript:{v28), "intValue"}];
                      LODWORD(v19) = [objc_msgSend(v19 objectForKeyedSubscript:{v27), "intValue"}];
                      goto LABEL_22;
                    }

LABEL_29:
                    v6 = v30;
                    continue;
                  }

                  v20 = Dimensions;
                  v19 = HIDWORD(Dimensions);
LABEL_22:
                  if (v16)
                  {
                    [v16 videoMinFrameDurationOverride];
                    if (v33)
                    {
                      [v16 videoMinFrameDurationOverride];
LABEL_28:
                      HIDWORD(v32) += ((0 / 0) * (v20 * v19));
                      goto LABEL_29;
                    }
                  }

                  else
                  {
                    v33 = 0;
                  }

                  if (v17)
                  {
                    [v17 lowestSupportedVideoFrameDuration];
                  }

                  goto LABEL_28;
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v35 objects:v34 count:16];
            }

            while (v12);
          }
        }
      }

      v4 = v26 + 1;
    }

    while (v26 + 1 != v25);
    v25 = [(NSArray *)obj countByEnumeratingWithState:&v40 objects:v39 count:16];
  }

  while (v25);
  if (v32)
  {
    v2 = 12773376;
  }

  else
  {
    v2 = 8294400;
  }

  v21 = HIDWORD(v32);
  return v21 / (v2 * AVGestaltGetIntegerAnswerWithDefault(@"AVGQRearFacingCameraVideoCapture4kMaxFPS", 60));
}

- (float)_videoAndMovieOutputCost
{
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = [(AVCaptureSession *)self connections];
  v42 = [(NSArray *)obj countByEnumeratingWithState:&v61 objects:v60 count:16];
  if (v42)
  {
    v52 = 0;
    v2 = 0;
    v3 = 0;
    v41 = *v62;
    v4 = *MEMORY[0x1E6987608];
    v46 = *MEMORY[0x1E6966130];
    v45 = *MEMORY[0x1E6966208];
    v44 = *MEMORY[0x1E69660B8];
    while (1)
    {
      v5 = 0;
      do
      {
        if (*v62 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v61 + 1) + 8 * v5);
        v43 = v5;
        if ([v6 isActive])
        {
          v7 = [v6 output];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          objc_opt_class();
          v48 = v7;
          v9 = objc_opt_isKindOfClass();
          v10 = v9;
          if (isKindOfClass & 1) != 0 || (v9)
          {
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v51 = [v6 inputPorts];
            v11 = [v51 countByEnumeratingWithState:&v56 objects:v55 count:16];
            if (v11)
            {
              v12 = v11;
              v49 = v10;
              IsPackedBayerRaw = 0;
              v13 = *v57;
              v47 = isKindOfClass;
              do
              {
                v14 = 0;
                v50 = v12;
                do
                {
                  if (*v57 != v13)
                  {
                    objc_enumerationMutation(v51);
                  }

                  v15 = *(*(&v56 + 1) + 8 * v14);
                  if ([objc_msgSend(v15 "mediaType")])
                  {
                    v16 = v4;
                    v17 = v3;
                    v18 = v2;
                    v19 = [v15 input];
                    v20 = [objc_msgSend(v19 "videoDevice")];
                    Dimensions = CMVideoFormatDescriptionGetDimensions([v20 formatDescription]);
                    if (v19)
                    {
                      [v19 videoMinFrameDurationOverride];
                      if (v54)
                      {
                        [v19 videoMinFrameDurationOverride];
LABEL_21:
                        v22 = Dimensions.height * Dimensions.width;
                        if (isKindOfClass)
                        {
                          CMFormatDescriptionGetMediaSubType([objc_msgSend(objc_msgSend(v19 "videoDevice")]);
                          IsPackedBayerRaw = FigCapturePixelFormatIsPackedBayerRaw();
                        }

                        else if (v49)
                        {
                          v23 = [v48 videoSettings];
                          [objc_msgSend(v23 objectForKeyedSubscript:{v46), "intValue"}];
                          IsPackedBayerRaw = FigCapturePixelFormatIsPackedBayerRaw();
                          if ([v48 deliversPreviewSizedOutputBuffers] && (!objc_msgSend(v6, "activeVideoStabilizationMode") || objc_msgSend(v6, "activeVideoStabilizationMode") == 4))
                          {
                            v24 = [objc_msgSend(v23 objectForKeyedSubscript:{v45), "intValue"}];
                            v22 = [objc_msgSend(v23 objectForKeyedSubscript:{v44), "intValue"}] * v24;
                          }

                          isKindOfClass = v47;
                        }

                        v25 = ((0 / 0) * v22);
                        v26 = v18;
                        if ([v6 activeVideoStabilizationMode])
                        {
                          v27 = [v6 activeVideoStabilizationMode];
                          v28 = v52;
                          if (IsPackedBayerRaw)
                          {
                            v29 = 0;
                          }

                          else
                          {
                            v29 = v25;
                          }

                          v30 = v29 + v52;
                          if (v27 != 4)
                          {
                            v28 = v30;
                          }

                          v52 = v28;
                        }

                        v3 = v17 + v25;
                        v2 = v26 + 1;
                        v4 = v16;
                        v12 = v50;
                        goto LABEL_37;
                      }
                    }

                    else
                    {
                      v54 = 0;
                    }

                    if (v20)
                    {
                      [v20 lowestSupportedVideoFrameDuration];
                    }

                    goto LABEL_21;
                  }

LABEL_37:
                  ++v14;
                }

                while (v12 != v14);
                v12 = [v51 countByEnumeratingWithState:&v56 objects:v55 count:16];
              }

              while (v12);
            }
          }
        }

        v5 = v43 + 1;
      }

      while (v43 + 1 != v42);
      v42 = [(NSArray *)obj countByEnumeratingWithState:&v61 objects:v60 count:16];
      if (!v42)
      {
        v31 = v3;
        v32 = v2;
        v33 = v52;
        goto LABEL_43;
      }
    }
  }

  v33 = 0.0;
  v32 = 0.0;
  v31 = 0.0;
LABEL_43:
  if (AVGestaltGetIntegerAnswerWithDefault(@"AVGQRearFacingCameraVideoCapture4kMaxFPS", 0) <= 119)
  {
    v34 = 120;
  }

  else
  {
    v34 = 180;
  }

  if (FigCapturePlatformIdentifier() <= 10)
  {
    v35 = 8294400;
  }

  else
  {
    v35 = 15538176;
  }

  v36 = v31 / (v35 * v34);
  v37 = AVGestaltGetIntegerAnswerWithDefault(@"AVGQCaptureSessionMaxMultiCamRGBStreamsSupported", 1) + 1;
  if (v36 <= (v32 / v37))
  {
    v38 = v32 / v37;
  }

  else
  {
    v38 = v36;
  }

  result = v33 / (8294400 * AVGestaltGetIntegerAnswerWithDefault(@"AVGQRearFacingCameraVideoCapture4kMaxFPS", 60));
  if (v38 > result)
  {
    return v38;
  }

  return result;
}

- (id)_livePortSetsByDeviceInput
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(AVCaptureSession *)self connections];
  v17 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v24 count:16];
  if (v17)
  {
    v16 = *v26;
    do
    {
      v4 = 0;
      do
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = v4;
        v5 = *(*(&v25 + 1) + 8 * v4);
        if ([v5 isLive])
        {
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v6 = [v5 inputPorts];
          v7 = [v6 countByEnumeratingWithState:&v20 objects:v19 count:16];
          if (v7)
          {
            v8 = v7;
            v9 = *v21;
            do
            {
              for (i = 0; i != v8; ++i)
              {
                if (*v21 != v9)
                {
                  objc_enumerationMutation(v6);
                }

                v11 = *(*(&v20 + 1) + 8 * i);
                [v11 input];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v12 = [v11 input];
                  Value = CFDictionaryGetValue(Mutable, v12);
                  if (!Value)
                  {
                    Value = [MEMORY[0x1E695DFA8] set];
                    CFDictionaryAddValue(Mutable, v12, Value);
                  }

                  [Value addObject:v11];
                }
              }

              v8 = [v6 countByEnumeratingWithState:&v20 objects:v19 count:16];
            }

            while (v8);
          }
        }

        v4 = v18 + 1;
      }

      while (v18 + 1 != v17);
      v17 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v24 count:16];
    }

    while (v17);
  }

  return Mutable;
}

- (id)_devicesProvidingDepthData
{
  v3 = [MEMORY[0x1E695DF70] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(AVCaptureSession *)self connections];
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    v7 = *MEMORY[0x1E69875C0];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        [v9 output];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v10 = [v9 inputPorts];
          v11 = [v10 countByEnumeratingWithState:&v20 objects:v19 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v21;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v21 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v20 + 1) + 8 * j);
                if ([objc_msgSend(v15 "mediaType")])
                {
                  v16 = [v15 input];
                  if (([v3 containsObject:{objc_msgSend(v16, "device")}] & 1) == 0)
                  {
                    [v3 addObject:{objc_msgSend(v16, "device")}];
                  }
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v20 objects:v19 count:16];
            }

            while (v12);
          }
        }
      }

      v5 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v24 count:16];
    }

    while (v5);
  }

  return v3;
}

- (id)valueForUndefinedKey:(id)a3
{
  if ([a3 isEqualToString:@"masterClock"])
  {

    return [(AVCaptureSession *)self masterClock];
  }

  else if ([a3 isEqualToString:@"synchronizationClock"])
  {

    return [(AVCaptureSession *)self synchronizationClock];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = AVCaptureSession;
    return [(AVCaptureSession *)&v6 valueForUndefinedKey:a3];
  }
}

- (BOOL)videoHDREnabledForDevice:(id)a3 format:(id)a4 sessionPreset:(id)a5
{
  if ([a3 automaticallyAdjustsVideoHDREnabled])
  {
    if (!AVCaptureColorSpaceIsHDR([a3 activeColorSpace]))
    {

      return [a4 prefersVideoHDREnabledForSessionPreset:a5];
    }

    return 0;
  }

  if (![a4 isVideoHDRSupported])
  {
    return 0;
  }

  return [a3 isVideoHDREnabled];
}

- (void)handleVideoInputDevice:(id)a3 activeFormatChanged:(id)a4
{
  v7 = [a4 objectForKeyedSubscript:*MEMORY[0x1E696A500]];
  v8 = [a4 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
  v9 = [(AVCaptureSession *)self videoHDREnabledForDevice:a3 format:v8 sessionPreset:@"AVCaptureSessionPresetInputPriority"];
  if ([v7 isEqual:v8])
  {
    v10 = v9 ^ [a3 isVideoHDREnabled];
  }

  else
  {
    v10 = 1;
  }

  if (([objc_opt_class() _isConfiguringProperty:@"activeFormat" forDevice:a3] & 1) == 0)
  {
    if ([(NSString *)self->_internal->sessionPreset isEqualToString:@"AVCaptureSessionPresetInputPriority"])
    {
      if (!v10)
      {
        return;
      }
    }

    else
    {
      [(AVCaptureSession *)self willChangeValueForKey:@"sessionPreset"];
      internal = self->_internal;
      objc_sync_enter(internal);

      self->_internal->sessionPreset = [@"AVCaptureSessionPresetInputPriority" copy];
      objc_sync_exit(internal);
      [(AVCaptureSession *)self didChangeValueForKey:@"sessionPreset"];
      if ((v10 & 1) == 0)
      {
        return;
      }
    }

    [(AVCaptureSession *)self _rebuildGraph];
  }
}

- (void)handleVideoInputDevice:(id)a3 activeDepthDataFormatChanged:(id)a4
{
  v7 = [a4 objectForKeyedSubscript:*MEMORY[0x1E696A500]];
  v8 = [v7 isEqual:{objc_msgSend(a4, "objectForKeyedSubscript:", *MEMORY[0x1E696A4F0])}];
  if (([objc_opt_class() _isConfiguringProperty:@"activeFormat" forDevice:a3] & 1) == 0 && (v8 & 1) == 0)
  {

    [(AVCaptureSession *)self _rebuildGraph];
  }
}

- (BOOL)_sessionHasRecordingFileOutput
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(AVCaptureSession *)self outputs];
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ([v7 recordingInProgress])
        {
          LOBYTE(v3) = 1;
          return v3;
        }

        ++v6;
      }

      while (v4 != v6);
      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v9 count:16];
      v4 = v3;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (AVCaptureSessionInputPortChangedContext == a6 || AVCaptureSessionInputSensitiveContentAnalyzerXPCObjectChangedContext == a6 || AVCaptureSessionInputSensitiveContentAnalyzerEnabledChangedContext == a6 || AVCaptureSessionConnectionChangedContext == a6 || AVCaptureSessionOutputChangedContext == a6)
  {
LABEL_15:

    [(AVCaptureSession *)self _rebuildGraph:a3];
    return;
  }

  if (AVCaptureSessionVideoInputDeviceConnectedChangedContext == a6)
  {
    goto LABEL_60;
  }

  if (AVCaptureSessionVideoInputDeviceActiveFormatChangedContext == a6)
  {

    [(AVCaptureSession *)self handleVideoInputDevice:a4 activeFormatChanged:a5];
    return;
  }

  if (AVCaptureSessionVideoInputDeviceActiveDepthDataFormatChangedContext == a6)
  {

    [(AVCaptureSession *)self handleVideoInputDevice:a4 activeDepthDataFormatChanged:a5];
    return;
  }

  if (AVCaptureSessionVideoInputDeviceHDREnabledChangedContext == a6)
  {
    if ([objc_opt_class() _isConfiguringProperty:@"videoHDREnabled" forDevice:a4])
    {
      return;
    }

LABEL_60:
    v18 = [objc_msgSend(a5 objectForKeyedSubscript:{*MEMORY[0x1E696A500]), "BOOLValue"}];
    v19 = MEMORY[0x1E696A4F0];
    goto LABEL_61;
  }

  if (AVCaptureSessionVideoInputDeviceAutomaticallyAdjustsHDREnabledChangedContext == a6)
  {
    if (([objc_opt_class() _isConfiguringProperty:@"videoHDREnabled" forDevice:a4] & 1) == 0)
    {
      v20 = [objc_msgSend(a5 objectForKeyedSubscript:{*MEMORY[0x1E696A4F0]), "BOOLValue"}];
      if (([objc_msgSend(a5 objectForKeyedSubscript:{*MEMORY[0x1E696A500]), "BOOLValue"}] & 1) == 0)
      {
        if (v20)
        {

          [(AVCaptureSession *)self _updateVideoHDREnabledForDevice:a4 forceResetVideoHDRSuspended:1];
        }
      }
    }
  }

  else
  {
    if (AVCaptureSessionVideoInputDeviceActiveColorSpaceChangedContext == a6)
    {
      if ([objc_opt_class() _isConfiguringProperty:@"activeColorSpace" forDevice:a4])
      {
        return;
      }

      [(AVCaptureSession *)self _updateVideoHDREnabledForDevice:a4 forceResetVideoHDRSuspended:0];
      if (![objc_msgSend(a4 "activeFormat")])
      {
        return;
      }

      v21 = [objc_msgSend(a5 objectForKeyedSubscript:{*MEMORY[0x1E696A500]), "integerValue"}];
      if (v21 == [objc_msgSend(a5 objectForKeyedSubscript:{*MEMORY[0x1E696A4F0]), "integerValue"}])
      {
        return;
      }

      goto LABEL_15;
    }

    if (AVCaptureSessionVideoInputDeviceLowLightVideoEnabledChangedContext == a6)
    {
      goto LABEL_73;
    }

    if (AVCaptureSessionVideoInputDeviceGeometricDistortionCorrectionEnabledChangedContext == a6)
    {
LABEL_74:
      v18 = [objc_msgSend(a5 objectForKeyedSubscript:{*MEMORY[0x1E696A4F0]), "BOOLValue"}];
      v19 = MEMORY[0x1E696A500];
LABEL_61:
      if (v18 == [objc_msgSend(a5 objectForKeyedSubscript:{*v19), "BOOLValue"}])
      {
        return;
      }

      goto LABEL_15;
    }

    if (AVCaptureSessionVideoInputDeviceVariableFrameRateVideoEnabledChangedContext == a6)
    {
LABEL_73:
      if ([objc_opt_class() _isConfiguringProperty:@"activeFormat" forDevice:a4])
      {
        return;
      }

      goto LABEL_74;
    }

    if (AVCaptureSessionVideoInputDeviceVideoStabilizationStrengthChangedContext == a6)
    {
      if ([objc_opt_class() _isConfiguringProperty:@"activeFormat" forDevice:a4])
      {
        return;
      }

      v22 = [objc_msgSend(a5 objectForKeyedSubscript:{*MEMORY[0x1E696A4F0]), "integerValue"}];
      if ([objc_msgSend(a5 objectForKeyedSubscript:{*MEMORY[0x1E696A500]), "integerValue"}] == v22)
      {
        return;
      }

      goto LABEL_15;
    }

    if (AVCaptureSessionVideoInputDeviceCenterStageActiveChangedContext == a6)
    {
      if ([objc_opt_class() _isConfiguringProperty:@"activeFormat" forDevice:a4])
      {
        return;
      }

      v23 = [objc_msgSend(a5 objectForKeyedSubscript:{*MEMORY[0x1E696A4F0]), "BOOLValue"}];
      if (v23 == [objc_msgSend(a5 objectForKeyedSubscript:{*MEMORY[0x1E696A500]), "BOOLValue"}])
      {
        return;
      }

      [(AVCaptureSession *)self _handleCenterStageActiveChangedForDevice:a4];
      goto LABEL_15;
    }

    if (AVCaptureSessionVideoInputDeviceBackgroundBlurActiveChangedContext == a6)
    {
      if ([objc_opt_class() _isConfiguringProperty:@"activeFormat" forDevice:a4])
      {
        return;
      }

      v24 = [objc_msgSend(a5 objectForKeyedSubscript:{*MEMORY[0x1E696A4F0]), "BOOLValue"}];
      if (v24 == [objc_msgSend(a5 objectForKeyedSubscript:{*MEMORY[0x1E696A500]), "BOOLValue"}])
      {
        return;
      }

      [(AVCaptureSession *)self _handleBackgroundBlurActiveChangedForDevice:a4];
      goto LABEL_15;
    }

    if (AVCaptureSessionConnectionActiveChangedContext == a6 || AVCaptureSessionConnectedInputPortEnabledChangedContext == a6)
    {

      [(AVCaptureSession *)self _updateHardwareCost];
    }

    else
    {
      if (AVCaptureSessionVideoInputDeviceStudioLightingActiveChangedContext == a6)
      {
        if ([objc_opt_class() _isConfiguringProperty:@"activeFormat" forDevice:a4])
        {
          return;
        }

        v25 = [objc_msgSend(a5 objectForKeyedSubscript:{*MEMORY[0x1E696A4F0]), "BOOLValue"}];
        if (v25 == [objc_msgSend(a5 objectForKeyedSubscript:{*MEMORY[0x1E696A500]), "BOOLValue"}])
        {
          return;
        }

        [(AVCaptureSession *)self _handleStudioLightingActiveChangedForDevice:a4];
        goto LABEL_15;
      }

      if (AVCaptureSessionVideoInputDeviceReactionEffectsActiveChangedContext == a6)
      {
        if ([objc_opt_class() _isConfiguringProperty:@"activeFormat" forDevice:a4])
        {
          return;
        }

        v26 = [objc_msgSend(a5 objectForKeyedSubscript:{*MEMORY[0x1E696A4F0]), "BOOLValue"}];
        if (v26 == [objc_msgSend(a5 objectForKeyedSubscript:{*MEMORY[0x1E696A500]), "BOOLValue"}])
        {
          return;
        }

        [(AVCaptureSession *)self _handleReactionEffectsActiveChangedForDevice:a4];
        goto LABEL_15;
      }

      if (AVCaptureSessionVideoInputDeviceBackgroundReplacementActiveChangedContext == a6)
      {
        if ([objc_opt_class() _isConfiguringProperty:@"activeFormat" forDevice:a4])
        {
          return;
        }

        v27 = [objc_msgSend(a5 objectForKeyedSubscript:{*MEMORY[0x1E696A4F0]), "BOOLValue"}];
        if (v27 == [objc_msgSend(a5 objectForKeyedSubscript:{*MEMORY[0x1E696A500]), "BOOLValue"}])
        {
          return;
        }

        [(AVCaptureSession *)self _handleBackgroundReplacementActiveChangedForDevice:a4];
        goto LABEL_15;
      }

      if (AVCaptureSessionVideoInputDeviceVideoZoomFactorChangedContext == a6)
      {
        if (![a4 _isDepthDataDeliveryEnabled])
        {
          return;
        }

        [objc_msgSend(a5 objectForKeyedSubscript:{*MEMORY[0x1E696A4F0]), "floatValue"}];
        v29 = v28;
        [objc_msgSend(a5 objectForKeyedSubscript:{*MEMORY[0x1E696A500]), "floatValue"}];
        if (v30 == v29)
        {
          return;
        }

        goto LABEL_15;
      }

      if (AVCaptureSessionVideoInputDeviceManualFramingEnabledChangedContext == a6 || a6 == &AVCaptureSessionVideoInputDeviceManualFramingEnabledChangedContext || AVCaptureSessionVideoInputDeviceManualFramingPanningAngleYChangedContext == a6)
      {
        goto LABEL_74;
      }

      if (AVCaptureSessionVideoInputDeviceGazeSelectionEnabledChangedContext == a6)
      {
        goto LABEL_73;
      }

      if (AVCaptureSessionAudioInputDeviceIsBuiltInMicChangedContext == a6)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([(AVCaptureSession *)self _sessionHasRecordingFileOutput])
          {
            if (dword_1ED8069A0)
            {
              v69 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }

          else
          {
            internal = self->_internal;
            objc_sync_enter(internal);
            v71 = 0u;
            v72 = 0u;
            v73 = 0u;
            v74 = 0u;
            inputs = self->_internal->inputs;
            v41 = [(NSMutableArray *)inputs countByEnumeratingWithState:&v71 objects:v70 count:16];
            if (v41)
            {
              v42 = *v72;
              while (2)
              {
                for (i = 0; i != v41; ++i)
                {
                  if (*v72 != v42)
                  {
                    objc_enumerationMutation(inputs);
                  }

                  v44 = *(*(&v71 + 1) + 8 * i);
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) != 0 && [objc_msgSend(v44 "device")] && objc_msgSend(a4, "shouldAudioCaptureModeTriggerGraphRebuildOnAudioRouteChange:", objc_msgSend(v44, "audioCaptureMode")))
                  {
                    if (dword_1ED8069A0)
                    {
                      v69 = 0;
                      type = OS_LOG_TYPE_DEFAULT;
                      v50 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                      os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT);
                      fig_log_call_emit_and_clean_up_after_send_and_compose();
                    }

                    objc_sync_exit(internal);
                    goto LABEL_139;
                  }
                }

                v41 = [(NSMutableArray *)inputs countByEnumeratingWithState:&v71 objects:v70 count:16];
                if (v41)
                {
                  continue;
                }

                break;
              }
            }

            objc_sync_exit(internal);
          }
        }
      }

      else
      {
        if (AVCaptureSessionVideoInputDeviceDynamicAspectRatioChangedContext != a6)
        {
          if (AVCaptureSessionVideoInputDeviceLensSmudgeDetectionEnabledChangedContext != a6)
          {
            if (AVCaptureSessionInputActiveLockedVideoFrameDurationChangedContext == a6)
            {
              v61 = 0u;
              v62 = 0u;
              v59 = 0u;
              v60 = 0u;
              v45 = [(AVCaptureSession *)self inputs];
              v46 = [(NSArray *)v45 countByEnumeratingWithState:&v59 objects:v58 count:16];
              if (v46)
              {
                v47 = v46;
                v48 = *v60;
                do
                {
                  for (j = 0; j != v47; ++j)
                  {
                    if (*v60 != v48)
                    {
                      objc_enumerationMutation(v45);
                    }

                    [*(*(&v59 + 1) + 8 * j) updateSupportedProperties];
                  }

                  v47 = [(NSArray *)v45 countByEnumeratingWithState:&v59 objects:v58 count:16];
                }

                while (v47);
              }
            }

            else if (AVCaptureSessionInputActiveExternalSyncVideoFrameDurationChangedContext == a6)
            {
              v56 = 0u;
              v57 = 0u;
              v54 = 0u;
              v55 = 0u;
              v13 = [(AVCaptureSession *)self inputs];
              v14 = [(NSArray *)v13 countByEnumeratingWithState:&v54 objects:v53 count:16];
              if (v14)
              {
                v15 = v14;
                v16 = *v55;
                do
                {
                  for (k = 0; k != v15; ++k)
                  {
                    if (*v55 != v16)
                    {
                      objc_enumerationMutation(v13);
                    }

                    [*(*(&v54 + 1) + 8 * k) updateSupportedProperties];
                  }

                  v15 = [(NSArray *)v13 countByEnumeratingWithState:&v54 objects:v53 count:16];
                }

                while (v15);
              }
            }

            return;
          }

          goto LABEL_73;
        }

        if (([objc_opt_class() _isConfiguringProperty:@"activeFormat" forDevice:a4] & 1) == 0)
        {
          v32 = [a5 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
          v64 = 0u;
          v65 = 0u;
          if ([v32 isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}])
          {
            v32 = 0;
          }

          v66 = 0uLL;
          v67 = 0uLL;
          v33 = [(AVCaptureSession *)self connections];
          v34 = [(NSArray *)v33 countByEnumeratingWithState:&v64 objects:v63 count:16];
          if (v34)
          {
            v35 = v34;
            v36 = *v65;
            do
            {
              for (m = 0; m != v35; ++m)
              {
                if (*v65 != v36)
                {
                  objc_enumerationMutation(v33);
                }

                v38 = *(*(&v64 + 1) + 8 * m);
                if ([v38 sourceDevice] == a4)
                {
                  avcs_updateAVCaptureConnectionForAspectRatio(v38, v32);
                }
              }

              v35 = [(NSArray *)v33 countByEnumeratingWithState:&v64 objects:v63 count:16];
            }

            while (v35);
          }

          if (![(AVCaptureSession *)self isRunning])
          {
            [a4 drainDynamicAspectRatioCompletionHandlers];
          }

LABEL_139:
          [(AVCaptureSession *)self _rebuildGraph:v51];
        }
      }
    }
  }
}

- (void)_teardownFigCaptureSession
{
  internal = self->_internal;
  if (internal->figCaptureSession)
  {
    v4 = [MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    v5 = self->_internal;
    weakReference = v5->weakReference;
    [v4 removeListenerWithWeakReference:weakReference callback:avcaptureFigCaptureSessionNotification name:*MEMORY[0x1E698FD20] object:v5->figCaptureSession];
    [v4 removeListenerWithWeakReference:weakReference callback:avcaptureFigCaptureSessionNotification name:*MEMORY[0x1E698FD28] object:self->_internal->figCaptureSession];
    [v4 removeListenerWithWeakReference:weakReference callback:avcaptureFigCaptureSessionNotification name:*MEMORY[0x1E698FD48] object:self->_internal->figCaptureSession];
    [v4 removeListenerWithWeakReference:weakReference callback:avcaptureFigCaptureSessionNotification name:*MEMORY[0x1E698FD38] object:self->_internal->figCaptureSession];
    [v4 removeListenerWithWeakReference:weakReference callback:avcaptureFigCaptureSessionNotification name:*MEMORY[0x1E698FD40] object:self->_internal->figCaptureSession];
    [v4 removeListenerWithWeakReference:weakReference callback:avcaptureFigCaptureSessionNotification name:*MEMORY[0x1E698FD50] object:self->_internal->figCaptureSession];
    [v4 removeListenerWithWeakReference:weakReference callback:avcaptureFigCaptureSessionNotification name:*MEMORY[0x1E698FD30] object:self->_internal->figCaptureSession];
    if (AVCaptureIsRunningInMediaserverd())
    {
      figCaptureSession = self->_internal->figCaptureSession;
      if (figCaptureSession)
      {
        v8 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v8)
        {
          v8(figCaptureSession);
        }
      }
    }

    internal = self->_internal;
    v9 = internal->figCaptureSession;
    if (v9)
    {
      CFRelease(v9);
      self->_internal->figCaptureSession = 0;
      internal = self->_internal;
    }

    sessionConfig = internal->sessionConfig;
    if (sessionConfig)
    {

      self->_internal->sessionConfig = 0;
      internal = self->_internal;
    }
  }

  internal->figCaptureSessionRunning = 0;
  self->_internal->figCaptureSessionStarted = 0;

  [(AVCaptureSession *)self _setSynchronizationClock:0];
}

- (BOOL)_shouldAutomaticallyAddConnection:(id)a3
{
  v49 = 0;
  v5 = [objc_msgSend(a3 "output")];
  if (v5)
  {
    v6 = [a3 mediaType];
    if (v6 == *MEMORY[0x1E69875D0] && AVMediaTypeMetadataObjectAndAVMediaTypeMetadataAreDefined() || (v7 = [a3 mediaType], v7 == *MEMORY[0x1E69875C0]) && (objc_msgSend(a3, "output"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
LABEL_6:
      LOBYTE(v5) = 0;
    }

    else
    {
      v8 = [a3 mediaType];
      v9 = *MEMORY[0x1E6987608];
      if (v8 == *MEMORY[0x1E6987608] && (v10 = v8, [a3 output], objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v47 = 0u, v48 = 0u, v45 = 0u, v46 = 0u, v11 = objc_msgSend(a3, "inputPorts"), (v12 = objc_msgSend(v11, "countByEnumeratingWithState:objects:count:", &v45, v44, 16)) != 0))
      {
        v13 = v12;
        v14 = *v46;
        v27 = *v46;
        v28 = v11;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v46 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v45 + 1) + 8 * i);
            if ([objc_msgSend(v16 "mediaType")])
            {
              v42 = 0u;
              v43 = 0u;
              v40 = 0u;
              v41 = 0u;
              obj = [(AVCaptureSession *)self connections];
              v33 = [(NSArray *)obj countByEnumeratingWithState:&v40 objects:v39 count:16];
              if (v33)
              {
                v30 = v13;
                v31 = *v41;
                v29 = i;
                while (2)
                {
                  v17 = 0;
                  v18 = v31;
                  do
                  {
                    if (*v41 != v18)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v19 = *(*(&v40 + 1) + 8 * v17);
                    if ([v19 mediaType] == v10)
                    {
                      [v19 output];
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v37 = 0u;
                        v38 = 0u;
                        v35 = 0u;
                        v36 = 0u;
                        v20 = [v19 inputPorts];
                        v21 = [v20 countByEnumeratingWithState:&v35 objects:v34 count:16];
                        if (v21)
                        {
                          v22 = v21;
                          v23 = *v36;
LABEL_25:
                          v24 = 0;
                          while (1)
                          {
                            if (*v36 != v23)
                            {
                              objc_enumerationMutation(v20);
                            }

                            v25 = *(*(&v35 + 1) + 8 * v24);
                            if ([objc_msgSend(v25 "mediaType")])
                            {
                              if ([v25 isEqual:v16])
                              {
                                goto LABEL_6;
                              }
                            }

                            if (v22 == ++v24)
                            {
                              v22 = [v20 countByEnumeratingWithState:&v35 objects:v34 count:16];
                              v18 = v31;
                              if (v22)
                              {
                                goto LABEL_25;
                              }

                              break;
                            }
                          }
                        }
                      }
                    }

                    ++v17;
                  }

                  while (v17 != v33);
                  v14 = v27;
                  v11 = v28;
                  i = v29;
                  v13 = v30;
                  v33 = [(NSArray *)obj countByEnumeratingWithState:&v40 objects:v39 count:16];
                  if (v33)
                  {
                    continue;
                  }

                  break;
                }
              }
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v45 objects:v44 count:16];
          LOBYTE(v5) = 1;
        }

        while (v13);
      }

      else
      {
        LOBYTE(v5) = 1;
      }
    }
  }

  return v5;
}

- (id)_connectionsForNewInputPort:(id)a3
{
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = v5;
  if (a3)
  {
    v22 = v5;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    outputs = self->_internal->outputs;
    v8 = [(NSMutableArray *)outputs countByEnumeratingWithState:&v31 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v32;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v32 != v10)
          {
            objc_enumerationMutation(outputs);
          }

          v12 = *(*(&v31 + 1) + 8 * i);
          v29 = a3;
          v13 = +[AVCaptureConnection connectionWithInputPorts:output:](AVCaptureConnection, "connectionWithInputPorts:output:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1], v12);
          if ([(AVCaptureSession *)self _shouldAutomaticallyAddConnection:v13])
          {
            [v22 addObject:v13];
          }
        }

        v9 = [(NSMutableArray *)outputs countByEnumeratingWithState:&v31 objects:v30 count:16];
      }

      while (v9);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    videoPreviewLayers = self->_internal->videoPreviewLayers;
    v15 = [(NSPointerArray *)videoPreviewLayers countByEnumeratingWithState:&v25 objects:v24 count:16];
    v6 = v22;
    if (v15)
    {
      v16 = v15;
      v17 = *v26;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(videoPreviewLayers);
          }

          v19 = *(*(&v25 + 1) + 8 * j);
          v23 = 0;
          v20 = [AVCaptureConnection connectionWithInputPort:a3 videoPreviewLayer:v19];
          if ([v19 canAddConnection:v20 failureReason:&v23])
          {
            [v22 addObject:v20];
          }
        }

        v16 = [(NSPointerArray *)videoPreviewLayers countByEnumeratingWithState:&v25 objects:v24 count:16];
      }

      while (v16);
    }
  }

  return v6;
}

- (id)_connectionsForNewOutput:(id)a3
{
  v5 = [MEMORY[0x1E695DF70] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(AVCaptureSession *)self inputs];
  v17 = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (v17)
  {
    v16 = *v27;
    do
    {
      v6 = 0;
      do
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = v6;
        v7 = *(*(&v26 + 1) + 8 * v6);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v8 = [v7 ports];
        v9 = [v8 countByEnumeratingWithState:&v21 objects:v20 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v22;
          do
          {
            v12 = 0;
            do
            {
              if (*v22 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v19 = *(*(&v21 + 1) + 8 * v12);
              v13 = +[AVCaptureConnection connectionWithInputPorts:output:](AVCaptureConnection, "connectionWithInputPorts:output:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1], a3);
              if ([(AVCaptureSession *)self _shouldAutomaticallyAddConnection:v13])
              {
                [v5 addObject:v13];
              }

              ++v12;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v21 objects:v20 count:16];
          }

          while (v10);
        }

        v6 = v18 + 1;
      }

      while (v18 + 1 != v17);
      v17 = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v25 count:16];
    }

    while (v17);
  }

  return v5;
}

- (id)_connectionsForNewVideoPreviewLayer:(id)a3
{
  v5 = [MEMORY[0x1E695DF70] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(AVCaptureSession *)self inputs];
  v18 = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (v18)
  {
    v17 = *v27;
    do
    {
      v6 = 0;
      do
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v26 + 1) + 8 * v6);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v8 = [v7 ports];
        v9 = [v8 countByEnumeratingWithState:&v21 objects:v20 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v22;
          do
          {
            v12 = 0;
            do
            {
              if (*v22 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v21 + 1) + 8 * v12);
              v19 = 0;
              v14 = [AVCaptureConnection connectionWithInputPort:v13 videoPreviewLayer:a3];
              if ([a3 canAddConnection:v14 failureReason:&v19])
              {
                [v5 addObject:v14];
              }

              ++v12;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v21 objects:v20 count:16];
          }

          while (v10);
        }

        ++v6;
      }

      while (v6 != v18);
      v18 = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v25 count:16];
    }

    while (v18);
  }

  return v5;
}

- (void)_removeConnectionsForInputPort:(id)a3
{
  v5 = [(NSMutableArray *)self->_internal->connections copy];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v11 = [v10 inputPorts];
        v12 = [v11 countByEnumeratingWithState:&v18 objects:v17 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v19;
          do
          {
            v15 = 0;
            do
            {
              if (*v19 != v14)
              {
                objc_enumerationMutation(v11);
              }

              if ([*(*(&v18 + 1) + 8 * v15) isEqual:a3] && objc_msgSend(objc_msgSend(v10, "inputPorts"), "count") == 1)
              {
                [(AVCaptureSession *)self _removeConnection:v10];
              }

              ++v15;
            }

            while (v13 != v15);
            v13 = [v11 countByEnumeratingWithState:&v18 objects:v17 count:16];
          }

          while (v13);
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [obj countByEnumeratingWithState:&v23 objects:v22 count:16];
    }

    while (v7);
  }
}

- (void)_postRuntimeError:(id)a3
{
  if (dword_1ED8069A0)
  {
    v12 = 0;
    v11 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = @"AVCaptureSessionErrorKey";
  v10 = a3;
  [v6 postNotificationName:@"AVCaptureSessionRuntimeErrorNotification" object:self userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v10, &v9, 1)}];
}

- (void)_makeConfigurationLive:(id)a3
{
  internal = self->_internal;
  liveAVCaptureSessionConfiguration = internal->liveAVCaptureSessionConfiguration;
  if (liveAVCaptureSessionConfiguration)
  {
    [-[AVCaptureSessionConfiguration uniqueInputs:](internal->liveAVCaptureSessionConfiguration uniqueInputs:{a3), "makeObjectsPerformSelector:withObject:", sel_detachFromFigCaptureSession_, self->_internal->figCaptureSession}];
    [-[AVCaptureSessionConfiguration uniqueOutputs:](liveAVCaptureSessionConfiguration uniqueOutputs:{a3), "makeObjectsPerformSelector:withObject:", sel_detachFromFigCaptureSession_, self->_internal->figCaptureSession}];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v7 = [liveAVCaptureSessionConfiguration uniqueVideoPreviewLayers:a3];
    v8 = [v7 countByEnumeratingWithState:&v45 objects:v44 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v46;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v46 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v45 + 1) + 8 * i) detachFromFigCaptureSession:self->_internal->figCaptureSession];
        }

        v9 = [v7 countByEnumeratingWithState:&v45 objects:v44 count:16];
      }

      while (v9);
    }
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v12 = [a3 inputs];
  v13 = [v12 countByEnumeratingWithState:&v40 objects:v39 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v41;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v41 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v40 + 1) + 8 * j) attachToFigCaptureSession:self->_internal->figCaptureSession];
      }

      v14 = [v12 countByEnumeratingWithState:&v40 objects:v39 count:16];
    }

    while (v14);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v17 = [a3 outputs];
  v18 = [v17 countByEnumeratingWithState:&v35 objects:v34 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v36;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v36 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v35 + 1) + 8 * k) attachToFigCaptureSession:self->_internal->figCaptureSession];
      }

      v19 = [v17 countByEnumeratingWithState:&v35 objects:v34 count:16];
    }

    while (v19);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v22 = [a3 videoPreviewLayers];
  v23 = [v22 countByEnumeratingWithState:&v30 objects:v29 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v31;
    do
    {
      for (m = 0; m != v24; ++m)
      {
        if (*v31 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [*(*(&v30 + 1) + 8 * m) attachToFigCaptureSession:self->_internal->figCaptureSession];
      }

      v24 = [v22 countByEnumeratingWithState:&v30 objects:v29 count:16];
    }

    while (v24);
  }

  v27 = a3;

  self->_internal->liveAVCaptureSessionConfiguration = a3;
  if (dword_1ED8069A0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (void)_addFakeOutputsIfNeededForCenterStageToSessionConfiguration:(id)a3
{
  v4 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:517 valueOptions:0 capacity:2];
  v29 = a3;
  v30 = [MEMORY[0x1E695DF70] array];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v5 = [a3 connectionConfigurations];
  v6 = [v5 countByEnumeratingWithState:&v49 objects:v48 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v50;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v50 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v49 + 1) + 8 * i);
        v11 = [v10 sourceConfiguration];
        if (([v11 cinematicFramingEnabled] & 1) != 0 || objc_msgSend(v11, "manualCinematicFramingEnabled"))
        {
          v12 = [v4 objectForKey:{objc_msgSend(v11, "source")}];
          if (!v12)
          {
            v12 = [MEMORY[0x1E695DF70] array];
            [v4 setObject:v12 forKey:{objc_msgSend(v11, "source")}];
          }

          [v12 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v49 objects:v48 count:16];
    }

    while (v7);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v32 = [v4 countByEnumeratingWithState:&v44 objects:v43 count:16];
  if (v32)
  {
    v31 = *v45;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v45 != v31)
        {
          objc_enumerationMutation(v4);
        }

        v14 = [v4 objectForKey:*(*(&v44 + 1) + 8 * j)];
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v15 = [v14 countByEnumeratingWithState:&v39 objects:v38 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = 0;
          v18 = *v40;
LABEL_20:
          v19 = 0;
          while (1)
          {
            if (*v40 != v18)
            {
              objc_enumerationMutation(v14);
            }

            v20 = *(*(&v39 + 1) + 8 * v19);
            if (!v17)
            {
              if ([*(*(&v39 + 1) + 8 * v19) mediaType] == 1986618469)
              {
                v17 = v20;
              }

              else
              {
                v17 = 0;
              }
            }

            v21 = [objc_msgSend(v20 "sinkConfiguration")];
            if (v21 <= 6 && ((1 << v21) & 0x52) != 0)
            {
              break;
            }

            if (v16 == ++v19)
            {
              v16 = [v14 countByEnumeratingWithState:&v39 objects:v38 count:16];
              if (v16)
              {
                goto LABEL_20;
              }

              if (v17)
              {
                v23 = [v17 copy];
                [v23 setConnectionID:@"Fake AVCaptureMovieFileOutput video connection for cinematic framing"];
                [v23 setEnabled:1];
                v24 = objc_alloc_init(MEMORY[0x1E698F7B8]);
                [v24 setSinkID:@"Fake AVCaptureMovieFileOutput sink for cinematic framing"];
                [v23 setSinkConfiguration:v24];
                [v30 addObject:v23];
              }

              break;
            }
          }
        }
      }

      v32 = [v4 countByEnumeratingWithState:&v44 objects:v43 count:16];
    }

    while (v32);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v25 = [v30 countByEnumeratingWithState:&v34 objects:v33 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v35;
    do
    {
      for (k = 0; k != v26; ++k)
      {
        if (*v35 != v27)
        {
          objc_enumerationMutation(v30);
        }

        [v29 addConnectionConfiguration:*(*(&v34 + 1) + 8 * k)];
      }

      v26 = [v30 countByEnumeratingWithState:&v34 objects:v33 count:16];
    }

    while (v26);
  }
}

- (void)_handleCenterStageActiveChangedForDevice:(id)a3
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [(AVCaptureSession *)self outputs];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) handleCenterStageActiveChangedForDevice:a3];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v6);
  }
}

- (void)_handleBackgroundBlurActiveChangedForDevice:(id)a3
{
  [(AVCaptureSession *)self _handleVideoEffectFrameRateThrottling:?];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(AVCaptureSession *)self outputs];
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) handleBackgroundBlurActiveChangedForDevice:a3];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v7);
  }
}

- (void)_handleStudioLightingActiveChangedForDevice:(id)a3
{
  [(AVCaptureSession *)self _handleVideoEffectFrameRateThrottling:?];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(AVCaptureSession *)self outputs];
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) handleStudioLightingActiveChangedForDevice:a3];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v7);
  }
}

- (void)_handleReactionEffectsActiveChangedForDevice:(id)a3
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [(AVCaptureSession *)self outputs];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) handleReactionEffectsActiveChangedForDevice:a3];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v6);
  }
}

- (void)_handleBackgroundReplacementActiveChangedForDevice:(id)a3
{
  [(AVCaptureSession *)self _handleVideoEffectFrameRateThrottling:?];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(AVCaptureSession *)self outputs];
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) handleBackgroundReplacementActiveChangedForDevice:a3];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v7);
  }
}

- (void)_handleVideoEffectFrameRateThrottling:(id)a3
{
  v5 = MEMORY[0x1E6960C70];
  v19 = *MEMORY[0x1E6960C70];
  v20 = *(MEMORY[0x1E6960C70] + 8);
  if ([a3 isBackgroundBlurActive] & 1) != 0 || (objc_msgSend(a3, "isStudioLightActive"))
  {
    v6 = 1;
  }

  else
  {
    v6 = [a3 isBackgroundReplacementActive];
  }

  v7 = [a3 isActiveVideoMinFrameDurationSet];
  v8 = [a3 isActiveVideoMaxFrameDurationSet];
  if (v6)
  {
    v9 = *(v5 + 12);
    v10 = *(v5 + 16);
    if (a3)
    {
      [a3 activeVideoMinFrameDuration];
      v11 = HIDWORD(v17);
      v12 = v18;
    }

    else
    {
      v12 = 0;
      v11 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
    }

    v21 = v16;
    v22 = v17;
    if (v11)
    {
      goto LABEL_31;
    }

LABEL_20:
    if ((v9 & 1) == 0)
    {
      return;
    }

    goto LABEL_21;
  }

  v13 = v8;
  v14 = [a3 activeFormat];
  if (v14)
  {
    [v14 defaultActiveMinFrameDurationForSessionPreset:self->_internal->sessionPreset];
    v11 = HIDWORD(v17);
    v12 = v18;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  v21 = v16;
  v22 = v17;
  v15 = [a3 activeFormat];
  if (v15)
  {
    [v15 defaultActiveMaxFrameDurationForSessionPreset:self->_internal->sessionPreset];
    v9 = HIDWORD(v17);
    v10 = v18;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  v19 = v16;
  v20 = v17;
  if (v7)
  {
    if (a3)
    {
      [a3 activeVideoMinFrameDurationSetByClient];
      v11 = HIDWORD(v17);
      v12 = v18;
    }

    else
    {
      v12 = 0;
      v11 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
    }

    v21 = v16;
    v22 = v17;
    if (!v13)
    {
LABEL_19:
      if (v11)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }
  }

  else if (!v13)
  {
    goto LABEL_19;
  }

  if (a3)
  {
    [a3 activeVideoMaxFrameDurationSetByClient];
    v9 = HIDWORD(v17);
    v10 = v18;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  v19 = v16;
  v20 = v17;
  if ((v11 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_31:
  v16 = v21;
  v17 = __PAIR64__(v11, v22);
  v18 = v12;
  [a3 _setActiveVideoMinFrameDuration:&v16];
  if ((v9 & 1) == 0)
  {
    return;
  }

LABEL_21:
  v16 = v19;
  v17 = __PAIR64__(v9, v20);
  v18 = v10;
  [a3 _setActiveVideoMaxFrameDuration:&v16];
}

- (BOOL)_buildAndRunGraph:(BOOL)a3
{
  v5 = self;
  v61[0] = 0;
  if (dword_1ED8069A0)
  {
    v60 = 0;
    v59 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  internal = self->_internal;
  objc_sync_enter(internal);
  [(AVCaptureSession *)self _updateDeviceActiveFormatsAndActiveConnections];
  [(AVCaptureSession *)self _updateDepthDataDeliveryEnabledForAllConnectedSourceDevices];
  [(AVCaptureSession *)self _updateCameraCalibrationDataDeliveryEnabledForAllConnectedSourceDevices];
  [(AVCaptureSession *)self _updateConstantColorEnabledForAllConnectedSourceDevices];
  [(AVCaptureSession *)self _updateSmartStyleRenderingStatusWithSkipRebuildGraph:1];
  [(AVCaptureSession *)self _updateMultiCamClientCompositingCallback];
  if (!a3 && ![(AVCaptureSession *)self isBeingConfigured]&& ![(AVCaptureSession *)self isOverCost:v61])
  {
    v10 = [(AVCaptureSession *)self _figCaptureSessionConfiguration];
    v12 = [v10 configurationID];
    [v10 setConfigurationID:{-[FigCaptureSessionConfiguration configurationID](self->_internal->sessionConfig, "configurationID")}];
    if (dword_1ED8069A0)
    {
      v60 = 0;
      v59 = OS_LOG_TYPE_DEFAULT;
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v14 = v60;
      if (os_log_type_enabled(v13, v59))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (v15)
      {
        *v54 = 136315650;
        *&v54[4] = "[AVCaptureSession _buildAndRunGraph:]";
        *&v54[12] = 2048;
        *&v54[14] = self;
        *&v54[22] = 2048;
        v55 = v12;
        LODWORD(v52) = 32;
        v50 = v54;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v10 && ([v10 isEqual:self->_internal->sessionConfig] & 1) == 0)
    {
      [v10 setConfigurationID:v12];
      v17 = -[AVCaptureSessionConfiguration initWithConfigurationID:inputs:outputs:videoPreviewLayers:connections:]([AVCaptureSessionConfiguration alloc], "initWithConfigurationID:inputs:outputs:videoPreviewLayers:connections:", [v10 configurationID], self->_internal->inputs, self->_internal->outputs, self->_internal->videoPreviewLayers, self->_internal->connections);
      [(NSMutableArray *)self->_internal->committedAVCaptureSessionConfigurations addObject:v17];

      v9 = 1;
      if (self->_internal->running)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v16 = self->_internal;
      if (v16->running)
      {
        v9 = 0;
        v8 = 0;
        if (!v16->sessionConfig)
        {
LABEL_26:
          objc_sync_exit(internal);
          [(AVCaptureSession *)self _updateControlsOverlay];
          if (v8)
          {
            goto LABEL_27;
          }

          goto LABEL_7;
        }

LABEL_24:
        v8 = 1;
        goto LABEL_26;
      }

      v9 = 0;
    }

    v8 = 0;
    goto LABEL_26;
  }

  objc_sync_exit(internal);
  v8 = 0;
  v9 = 0;
  v10 = 0;
LABEL_7:
  if (!v9)
  {
    if (v61[0])
    {
      v11 = 0;
      goto LABEL_78;
    }

    goto LABEL_85;
  }

LABEL_27:
  [(AVRunLoopCondition *)self->_internal->runLoopCondition lock:v50];
  v18 = self->_internal;
  if (v8)
  {
    v19 = !v18->figCaptureSessionRunning;
    if (!v9)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v19 = 0;
    if (!v9)
    {
      goto LABEL_43;
    }
  }

  v18->waitingForFigCaptureSessionConfigurationToBecomeLive = v19 || v18->figCaptureSessionRunning;
  v20 = [v10 copy];
  if (dword_1ED8069A0)
  {
    v60 = 0;
    v59 = OS_LOG_TYPE_DEFAULT;
    v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v22 = v60;
    if (os_log_type_enabled(v21, v59))
    {
      v23 = v22;
    }

    else
    {
      v23 = v22 & 0xFFFFFFFE;
    }

    if (v23)
    {
      v24 = [v20 configurationID];
      *v54 = 136315906;
      *&v54[4] = "[AVCaptureSession _buildAndRunGraph:]";
      *&v54[12] = 2048;
      *&v54[14] = self;
      *&v54[22] = 2048;
      v55 = v24;
      v56 = 2114;
      v57 = v20;
      LODWORD(v53) = 42;
      v51 = v54;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v25 = self->_internal;
  objc_sync_enter(v25);
  figCaptureSession = self->_internal->figCaptureSession;
  if (figCaptureSession)
  {
    v27 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v27)
    {
      v27(figCaptureSession, v20);
    }

    else
    {
      *v54 = *MEMORY[0x1E698FC40];
      v58 = &unk_1F1CEA1D8;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:v54 count:{1, v51, v53}];
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }
  }

  self->_internal->sessionConfig = v10;
  objc_sync_exit(v25);

  v18 = self->_internal;
LABEL_43:
  if (v19)
  {
    v18->waitingForFigCaptureSessionToStart = 1;
    [(AVCaptureSession *)self _startFigCaptureSession];
    v18 = self->_internal;
  }

  if (!v18->waitingForFigCaptureSessionConfigurationToBecomeLive && !v18->waitingForFigCaptureSessionToStart)
  {
    v11 = 0;
    v34 = 1;
    goto LABEL_76;
  }

  add_explicit = atomic_fetch_add_explicit(&v18->graphRebuildSignalCount, 1uLL, memory_order_relaxed);
  [(AVRunLoopCondition *)self->_internal->runLoopCondition signal:v51];
  runLoopCondition = self->_internal->runLoopCondition;
  v30 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:9.0];
  v31 = [(AVRunLoopCondition *)runLoopCondition waitUntilDate:v30 inMode:*MEMORY[0x1E6961580]];
  v32 = self->_internal;
  if (v32->waitingForFigCaptureSessionConfigurationToBecomeLive)
  {
    if (v31)
    {
      waitingForFigCaptureSessionToStart = 1;
      goto LABEL_51;
    }

    v60 = 0;
    v59 = OS_LOG_TYPE_DEFAULT;
    v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v36 = v60;
    if (os_log_type_enabled(v35, v59))
    {
      v37 = v36;
    }

    else
    {
      v37 = v36 & 0xFFFFFFFE;
    }

    if (!v37)
    {
LABEL_75:
      v34 = 1;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v11 = -11819;
      goto LABEL_76;
    }

LABEL_74:
    *v54 = 136315394;
    *&v54[4] = "[AVCaptureSession _buildAndRunGraph:]";
    *&v54[12] = 2048;
    *&v54[14] = self;
    LODWORD(v53) = 22;
    v51 = v54;
    _os_log_send_and_compose_impl();
    goto LABEL_75;
  }

  waitingForFigCaptureSessionToStart = v32->waitingForFigCaptureSessionToStart;
  if ((v31 & 1) == 0)
  {
    if (v32->waitingForFigCaptureSessionToStart)
    {
      v60 = 0;
      v59 = OS_LOG_TYPE_DEFAULT;
      v38 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v39 = v60;
      if (os_log_type_enabled(v38, v59))
      {
        v40 = v39;
      }

      else
      {
        v40 = v39 & 0xFFFFFFFE;
      }

      if (!v40)
      {
        goto LABEL_75;
      }
    }

    else
    {
      v60 = 0;
      v59 = OS_LOG_TYPE_DEFAULT;
      v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v42 = v60;
      if (os_log_type_enabled(v41, v59))
      {
        v43 = v42;
      }

      else
      {
        v43 = v42 & 0xFFFFFFFE;
      }

      if (!v43)
      {
        goto LABEL_75;
      }
    }

    goto LABEL_74;
  }

LABEL_51:
  if (v32->graphRebuildSignalCount == add_explicit + 1)
  {
    waitingForFigCaptureSessionToStart = 0;
  }

  if (v32->figCaptureSessionRunning || ((v32->interrupted | waitingForFigCaptureSessionToStart) & 1) != 0)
  {
    v11 = 0;
    v34 = 1;
    if (waitingForFigCaptureSessionToStart)
    {
      goto LABEL_77;
    }
  }

  else
  {
    v34 = 0;
    v11 = 0;
    v32->figCaptureSessionStarted = 0;
  }

LABEL_76:
  self->_internal->waitingForFigCaptureSessionConfigurationToBecomeLive = 0;
  self->_internal->waitingForFigCaptureSessionToStart = 0;
LABEL_77:
  [(AVRunLoopCondition *)self->_internal->runLoopCondition unlock:v51];
  if (v61[0])
  {
LABEL_78:

    self->_internal->stopError = v61[0];
    if (dword_1ED8069A0)
    {
      v60 = 0;
      v59 = OS_LOG_TYPE_DEFAULT;
      v44 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v45 = v60;
      if (os_log_type_enabled(v44, v59))
      {
        v46 = v45;
      }

      else
      {
        v46 = v45 & 0xFFFFFFFE;
      }

      if (v46)
      {
        *v54 = 136315650;
        *&v54[4] = "[AVCaptureSession _buildAndRunGraph:]";
        *&v54[12] = 2048;
        *&v54[14] = self;
        *&v54[22] = 2114;
        v55 = v61[0];
        LODWORD(v52) = 32;
        v50 = v54;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_89;
  }

  if ((v34 & 1) == 0)
  {
LABEL_89:
    [(AVCaptureSession *)self _stopAndTearDownGraph:v50];
    stopError = self->_internal->stopError;
    if (v11 || stopError)
    {
      if (!stopError)
      {
        stopError = AVLocalizedErrorWithUnderlyingOSStatus();
      }

      [(AVCaptureSession *)self _postRuntimeError:stopError];
    }

    v47 = 0;
    goto LABEL_95;
  }

LABEL_85:
  if ([(AVCaptureSession *)self isRunning:v50])
  {
    [(AVCaptureSession *)self _activateControlsOverlayIfNecessary];
  }

  v47 = 1;
LABEL_95:

  return v47;
}

- (void)_stopAndTearDownGraph
{
  internal = self->_internal;
  if (internal->figCaptureSessionStarted)
  {
    FigCaptureSessionRemoteSetClientCompositingSinkCallback();
    [(AVCaptureSession *)self _stopFigCaptureSession];
  }

  else if (internal->running)
  {
    [(AVCaptureSession *)self _notifySessionStopped];
  }

  v4 = self->_internal;
  objc_sync_enter(v4);
  [(AVCaptureSession *)self _makeConfigurationLive:0];
  [(AVCaptureSession *)self _setSynchronizationClock:0];

  self->_internal->sessionConfig = 0;

  objc_sync_exit(v4);
}

- (id)_outputWithClass:(Class)a3 forSourceDevice:(id)a4
{
  v4 = [(AVCaptureSession *)self _outputsWithClass:a3 forSourceDevice:a4];

  return [v4 firstObject];
}

- (id)_outputsWithClass:(Class)a3 forSourceDevice:(id)a4
{
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = self->_internal->outputs;
  v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v25 objects:v24 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = 0;
  v18 = *v26;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v26 != v18)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v25 + 1) + 8 * i);
      if (objc_opt_isKindOfClass())
      {
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v10 = [v9 connections];
        v11 = [v10 countByEnumeratingWithState:&v20 objects:v19 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v21;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v21 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = [*(*(&v20 + 1) + 8 * j) sourceDevice];
              if (!a4 || v15 == a4)
              {
                if (!v7)
                {
                  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
                }

                [v7 addObject:v9];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v20 objects:v19 count:16];
          }

          while (v12);
        }
      }
    }

    v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v25 objects:v24 count:16];
  }

  while (v6);
  return v7;
}

- (void)_handleDidStartRunningNotificationWithPayload:(id)a3
{
  [objc_msgSend(a3 objectForKeyedSubscript:{*MEMORY[0x1E698FC40]), "intValue"}];
  [objc_msgSend(a3 objectForKeyedSubscript:{*MEMORY[0x1E698FC38]), "intValue"}];
  v5 = [a3 objectForKeyedSubscript:*MEMORY[0x1E698FCC0]];
  if (v5)
  {
    v6 = v5;
    if (dword_1ED8069A0)
    {
      v16 = 0;
      v15 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v13 = @"AVCapturePrewarmReasonKey";
    v14 = v6;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:{1, v11, v12}];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  internal = self->_internal;
  if (internal->interrupted)
  {
    [(AVCaptureSession *)self _setInterrupted:0 withReason:0 interruptor:0];
    internal = self->_internal;
  }

  [(AVRunLoopCondition *)internal->runLoopCondition lock];
  v10 = self->_internal;
  if (v10->waitingForFigCaptureSessionToStart)
  {
    v10->waitingForFigCaptureSessionToStart = 0;
    [(AVRunLoopCondition *)self->_internal->runLoopCondition signal];
    v10 = self->_internal;
  }

  v10->figCaptureSessionRunning = 1;
  [(AVRunLoopCondition *)self->_internal->runLoopCondition unlock];
  [(AVCaptureSession *)self _notifySessionStarted];
}

- (void)_notifySessionStopped
{
  if (self->_internal->running)
  {
    v10 = v2;
    v11 = v3;
    [(AVCaptureSession *)self willChangeValueForKey:@"running"];
    self->_internal->running = 0;
    [(AVCaptureSession *)self _invalidateControlsOverlay];
    [(AVCaptureSession *)self didChangeValueForKey:@"running"];
    if (dword_1ED8069A0)
    {
      v9 = 0;
      v8 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
  }
}

- (void)_handleDidStopRunningNotificationWithPayload:(id)a3
{
  v5 = [objc_msgSend(a3 objectForKeyedSubscript:{*MEMORY[0x1E698FC40]), "intValue"}];
  v6 = [objc_msgSend(a3 objectForKeyedSubscript:{*MEMORY[0x1E698FC38]), "intValue"}];
  v7 = [a3 objectForKeyedSubscript:*MEMORY[0x1E698FBD8]];
  v8 = 0;
  if (v5 > -16403)
  {
    if (v5 == -16402)
    {
      v10 = 1;
      [(AVCaptureSession *)self _setInterrupted:1 withReason:v6 interruptor:v7];
      v8 = -16402;
      goto LABEL_10;
    }

    v9 = -15545;
  }

  else
  {
    if (v5 == -16409)
    {
      v8 = 0;
      v10 = 1;
      goto LABEL_10;
    }

    v9 = -16406;
  }

  v10 = 0;
  if (v5 != v9)
  {
    v10 = 1;
    v8 = v5;
  }

LABEL_10:
  [(AVRunLoopCondition *)self->_internal->runLoopCondition lock];
  internal = self->_internal;
  waitingForFigCaptureSessionToStop = internal->waitingForFigCaptureSessionToStop;
  p_waitingForFigCaptureSessionToStop = &internal->waitingForFigCaptureSessionToStop;
  v13 = waitingForFigCaptureSessionToStop;
  if (waitingForFigCaptureSessionToStop)
  {
    v15 = 0;
LABEL_21:
    *p_waitingForFigCaptureSessionToStop = 0;
    [(AVRunLoopCondition *)self->_internal->runLoopCondition signal];
    goto LABEL_22;
  }

  if (v8)
  {
    if ((v8 + 16400) >= 0xFFFFFFFE)
    {
      goto LABEL_17;
    }
  }

  else if ((v10 & self->_internal->waitingForFigCaptureSessionToStart) != 1)
  {
LABEL_17:
    v15 = 0;
    goto LABEL_18;
  }

  v15 = AVLocalizedErrorWithUnderlyingOSStatus();
LABEL_18:
  v16 = self->_internal;
  if (v16->waitingForFigCaptureSessionToStart || v16->waitingForFigCaptureSessionConfigurationToBecomeLive)
  {
    v16->waitingForFigCaptureSessionToStart = 0;
    p_waitingForFigCaptureSessionToStop = &self->_internal->waitingForFigCaptureSessionConfigurationToBecomeLive;
    goto LABEL_21;
  }

LABEL_22:
  self->_internal->figCaptureSessionRunning = 0;
  [(AVRunLoopCondition *)self->_internal->runLoopCondition unlock];
  if (v15)
  {
    [(AVCaptureSession *)self _postRuntimeError:v15];
  }

  if (!v13)
  {
    [(AVCaptureSession *)self _notifySessionStopped];
    if ((v10 & 1) == 0)
    {
      [(AVCaptureSession *)self _setInterrupted:0 withReason:0 interruptor:0];

      [(AVCaptureSession *)self _notifyMediaServicesError];
    }
  }
}

- (void)_handleConfigurationCommittedNotificationWithPayload:(id)a3
{
  v5 = [objc_msgSend(a3 objectForKeyedSubscript:{*MEMORY[0x1E698FC40]), "intValue"}];
  v6 = [objc_msgSend(a3 objectForKeyedSubscript:{*MEMORY[0x1E698FBE8]), "longLongValue"}];
  internal = self->_internal;
  objc_sync_enter(internal);
  if (![(NSMutableArray *)self->_internal->committedAVCaptureSessionConfigurations count])
  {
    v30 = 0;
    v29 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  while (1)
  {
    if (![(NSMutableArray *)self->_internal->committedAVCaptureSessionConfigurations count:v18])
    {
      goto LABEL_15;
    }

    v9 = [(NSMutableArray *)self->_internal->committedAVCaptureSessionConfigurations objectAtIndexedSubscript:0];
    if ([v9 configurationID] > v6)
    {
      v30 = 0;
      v29 = OS_LOG_TYPE_DEFAULT;
      v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v11 = v30;
      if (os_log_type_enabled(v10, v29))
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 & 0xFFFFFFFE;
      }

      if (v12)
      {
        v23 = 136315650;
        v24 = "[AVCaptureSession _handleConfigurationCommittedNotificationWithPayload:]";
        v25 = 2048;
        v26 = self;
        v27 = 2048;
        v28 = v6;
        LODWORD(v19) = 32;
        v18 = &v23;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_15:
      objc_sync_exit(internal);
      if (!v5)
      {
        return;
      }

      goto LABEL_16;
    }

    if ([v9 configurationID] >= v6)
    {
      break;
    }

    [(NSMutableArray *)self->_internal->committedAVCaptureSessionConfigurations removeObject:v9];
  }

  if (!v5)
  {
    [(AVCaptureSession *)self _makeConfigurationLive:v9];
    [(NSMutableArray *)self->_internal->committedAVCaptureSessionConfigurations removeObject:v9];
    objc_sync_exit(internal);
    return;
  }

  objc_sync_exit(internal);
LABEL_16:
  [(AVRunLoopCondition *)self->_internal->runLoopCondition lock:v18];
  v13 = self->_internal;
  if (v13->waitingForFigCaptureSessionConfigurationToBecomeLive)
  {
    v13->waitingForFigCaptureSessionConfigurationToBecomeLive = 0;
    [(AVRunLoopCondition *)self->_internal->runLoopCondition signal];
    v13 = self->_internal;
  }

  [(AVRunLoopCondition *)v13->runLoopCondition unlock];
  if ([(AVCaptureSession *)self notifiesOnMainThread])
  {
    Main = CFRunLoopGetMain();
    v15 = *MEMORY[0x1E695E8D0];
    v22[0] = *MEMORY[0x1E6961580];
    v22[1] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__AVCaptureSession__handleConfigurationCommittedNotificationWithPayload___block_invoke;
    block[3] = &unk_1E78704A0;
    block[4] = self;
    v21 = v5;
    CFRunLoopPerformBlock(Main, v16, block);
    v17 = CFRunLoopGetMain();
    CFRunLoopWakeUp(v17);
  }

  else
  {
    [(AVCaptureSession *)self _postRuntimeError:AVLocalizedErrorWithUnderlyingOSStatus()];
  }
}

uint64_t __73__AVCaptureSession__handleConfigurationCommittedNotificationWithPayload___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = AVLocalizedErrorWithUnderlyingOSStatus();

  return [v1 _postRuntimeError:v2];
}

- (void)_handleConfigurationDidBecomeLiveNotificationWithPayload:(id)a3
{
  v4 = [objc_msgSend(a3 objectForKeyedSubscript:{*MEMORY[0x1E698FBE8]), "longLongValue"}];
  internal = self->_internal;
  objc_sync_enter(internal);
  if ([self->_internal->liveAVCaptureSessionConfiguration configurationID]== v4)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{-[NSArray count](-[AVCaptureSessionConfiguration inputs](self->_internal->liveAVCaptureSessionConfiguration, "inputs"), "count")}];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = [self->_internal->liveAVCaptureSessionConfiguration inputs];
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v24 objects:v23 count:16];
    if (v8)
    {
      v9 = *v25;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v24 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [v11 device];
            if (v12)
            {
              if (([v6 containsObject:v12] & 1) == 0)
              {
                [v6 addObject:v12];
              }
            }
          }
        }

        v8 = [(NSArray *)v7 countByEnumeratingWithState:&v24 objects:v23 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v6 = 0;
  }

  objc_sync_exit(internal);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = [v6 countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v6);
        }

        [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
      }

      v14 = [v6 countByEnumeratingWithState:&v19 objects:v18 count:16];
    }

    while (v14);
  }

  [(AVRunLoopCondition *)self->_internal->runLoopCondition lock];
  v17 = self->_internal;
  if (v17->waitingForFigCaptureSessionConfigurationToBecomeLive)
  {
    v17->waitingForFigCaptureSessionConfigurationToBecomeLive = 0;
    v17 = self->_internal;
    if (!v17->waitingForFigCaptureSessionToStart)
    {
      [(AVRunLoopCondition *)v17->runLoopCondition signal];
      v17 = self->_internal;
    }
  }

  [(AVRunLoopCondition *)v17->runLoopCondition unlock];
  [objc_opt_class() _writeDotStringToFile];
}

- (void)_notifyMediaServicesError
{
  v3 = AVLocalizedError();

  [(AVCaptureSession *)self _postRuntimeError:v3];
}

- (void)_handleCaptureServerConnectionDiedNotification
{
  dispatch_semaphore_wait(self->_internal->captureServerConnectionDiedSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v8 = __66__AVCaptureSession__handleCaptureServerConnectionDiedNotification__block_invoke;
  v9 = &unk_1E786EC08;
  v10 = self;
  if ([(AVCaptureSession *)self notifiesOnMainThread])
  {
    Main = CFRunLoopGetMain();
    v4 = *MEMORY[0x1E695E8D0];
    v6[0] = *MEMORY[0x1E6961580];
    v6[1] = v4;
    CFRunLoopPerformBlock(Main, [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2], block);
    v5 = CFRunLoopGetMain();
    CFRunLoopWakeUp(v5);
  }

  else
  {
    v8(block);
  }
}

- (void)_reconnectAfterServerConnectionDied
{
  [(AVRunLoopCondition *)self->_internal->runLoopCondition lock];
  internal = self->_internal;
  if (internal->waitingForFigCaptureSessionToStart || internal->waitingForFigCaptureSessionToStop || internal->waitingForFigCaptureSessionConfigurationToBecomeLive)
  {
    internal->waitingForFigCaptureSessionToStart = 0;
    self->_internal->waitingForFigCaptureSessionToStop = 0;
    self->_internal->waitingForFigCaptureSessionConfigurationToBecomeLive = 0;
    [(AVRunLoopCondition *)self->_internal->runLoopCondition signal];
    internal = self->_internal;
  }

  [(AVRunLoopCondition *)internal->runLoopCondition unlock];
  v4 = self->_internal;
  objc_sync_enter(v4);
  v5 = self->_internal->liveAVCaptureSessionConfiguration;
  [(NSArray *)[(AVCaptureSessionConfiguration *)v5 outputs] makeObjectsPerformSelector:sel_handleServerConnectionDeathForFigCaptureSession_ withObject:self->_internal->figCaptureSession];
  [(AVCaptureSession *)self _makeConfigurationLive:0];
  [(AVCaptureSession *)self _teardownFigCaptureSession];
  [(AVCaptureSession *)self _createFigCaptureSession];
  [(AVCaptureSession *)self _makeConfigurationLive:v5];

  [(AVCaptureSession *)self determineSynchronizationClock];
  objc_sync_exit(v4);
  v6 = self->_internal;
  if (v6->running || v6->interrupted)
  {
    [(AVCaptureSession *)self _notifySessionStopped];
    [(AVCaptureSession *)self _setInterrupted:0 withReason:0 interruptor:0];

    [(AVCaptureSession *)self _notifyMediaServicesError];
  }
}

- (void)_handleNotification:(id)a3 payload:(id)a4
{
  if ([a3 isEqualToString:*MEMORY[0x1E698FD38]])
  {

    [(AVCaptureSession *)self _handleDidStartRunningNotificationWithPayload:a4];
  }

  else if ([a3 isEqualToString:*MEMORY[0x1E698FD40]])
  {

    [(AVCaptureSession *)self _handleDidStopRunningNotificationWithPayload:a4];
  }

  else if ([a3 isEqualToString:*MEMORY[0x1E698FD20]])
  {

    [(AVCaptureSession *)self _handleConfigurationCommittedNotificationWithPayload:a4];
  }

  else if ([a3 isEqualToString:*MEMORY[0x1E698FD28]])
  {

    [(AVCaptureSession *)self _handleConfigurationDidBecomeLiveNotificationWithPayload:a4];
  }

  else if ([a3 isEqualToString:*MEMORY[0x1E698FD48]])
  {
    captureServerConnectionDiedSemaphore = self->_internal->captureServerConnectionDiedSemaphore;

    dispatch_semaphore_signal(captureServerConnectionDiedSemaphore);
  }

  else if ([a3 isEqualToString:*MEMORY[0x1E698FD50]])
  {

    [(AVCaptureSession *)self _willRunDeferredStart];
  }

  else if ([a3 isEqualToString:*MEMORY[0x1E698FD30]])
  {

    [(AVCaptureSession *)self _didRunDeferredStart];
  }
}

+ (BOOL)_isConfiguringProperty:(id)a3 forDevice:(id)a4
{
  v6 = sCaptureDevicePropertiesBeingConfiguredByASession_ByDevice;
  objc_sync_enter(sCaptureDevicePropertiesBeingConfiguredByASession_ByDevice);
  LOBYTE(a3) = [objc_msgSend(sCaptureDevicePropertiesBeingConfiguredByASession_ByDevice objectForKey:{a4), "objectForKeyedSubscript:", a3}] != 0;
  objc_sync_exit(v6);
  return a3;
}

+ (void)_startConfiguringProperty:(id)a3 forDevice:(id)a4
{
  v6 = sCaptureDevicePropertiesBeingConfiguredByASession_ByDevice;
  objc_sync_enter(sCaptureDevicePropertiesBeingConfiguredByASession_ByDevice);
  v7 = [sCaptureDevicePropertiesBeingConfiguredByASession_ByDevice objectForKey:a4];
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
    [sCaptureDevicePropertiesBeingConfiguredByASession_ByDevice setObject:v7 forKey:a4];
  }

  v8 = [objc_msgSend(v7 objectForKeyedSubscript:{a3), "unsignedIntValue"}];
  [v7 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", (v8 + 1)), a3}];

  objc_sync_exit(v6);
}

+ (void)_finishConfiguringProperty:(id)a3 forDevice:(id)a4
{
  v6 = sCaptureDevicePropertiesBeingConfiguredByASession_ByDevice;
  objc_sync_enter(sCaptureDevicePropertiesBeingConfiguredByASession_ByDevice);
  v7 = [sCaptureDevicePropertiesBeingConfiguredByASession_ByDevice objectForKey:a4];
  v8 = [objc_msgSend(v7 objectForKeyedSubscript:{a3), "unsignedIntValue"}];
  if (v8)
  {
    if (v8 == 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:(v8 - 1)];
    }

    [v7 setObject:v9 forKeyedSubscript:a3];
  }

  if (![v7 count])
  {
    [sCaptureDevicePropertiesBeingConfiguredByASession_ByDevice removeObjectForKey:a4];
  }

  objc_sync_exit(v6);
}

- (void)_updateDepthDataDeliveryEnabledForSourceDevice:(id)a3
{
  internal = self->_internal;
  objc_sync_enter(internal);
  obj = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:517 valueOptions:0 capacity:2];
  v40 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:517 valueOptions:0 capacity:2];
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  connections = self->_internal->connections;
  v5 = [(NSMutableArray *)connections countByEnumeratingWithState:&v60 objects:v59 count:16];
  if (v5)
  {
    v6 = *v61;
    v7 = *MEMORY[0x1E69875C0];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v61 != v6)
        {
          objc_enumerationMutation(connections);
        }

        v9 = *(*(&v60 + 1) + 8 * i);
        v10 = [v9 sourceDevice];
        v11 = v10;
        if ((!a3 || v10 == a3) && [v10 hasMediaType:v7] && (objc_msgSend(v9, "isTrulyDisabled") & 1) == 0 && (objc_msgSend(objc_msgSend(obj, "objectForKey:", v11), "BOOLValue") & 1) == 0)
        {
          if ([v9 output])
          {
            v12 = [v9 output];
          }

          else
          {
            v12 = [v9 videoPreviewLayer];
          }

          v13 = v12;
          if ([objc_msgSend(v9 "sourceDeviceInput")])
          {
LABEL_15:
            v14 = 0;
            v15 = 1;
LABEL_25:
            [obj setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", v15), v11}];
            [v40 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", v14), v11}];
            continue;
          }

          if (objc_opt_respondsToSelector())
          {
            v15 = [v13 isDepthDataDeliveryEnabled];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [v13 isVirtualDeviceConstituentPhotoDeliveryEnabled];
              goto LABEL_25;
            }
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              goto LABEL_15;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || (v16 = [v13 metadataObjectTypes], !objc_msgSend(v11, "activeDepthDataFormat")))
            {
              v14 = 0;
              v15 = 0;
              goto LABEL_25;
            }

            v15 = [v16 containsObject:@"trackedFaces"];
          }

          v14 = 0;
          goto LABEL_25;
        }
      }

      v5 = [(NSMutableArray *)connections countByEnumeratingWithState:&v60 objects:v59 count:16];
    }

    while (v5);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v17 = [obj countByEnumeratingWithState:&v55 objects:v54 count:{16, internal}];
  if (v17)
  {
    v38 = *v56;
    do
    {
      v39 = v17;
      for (j = 0; j != v39; ++j)
      {
        if (*v56 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v55 + 1) + 8 * j);
        v20 = [objc_msgSend(obj objectForKey:{v19), "BOOLValue"}];
        v42 = [objc_msgSend(v40 objectForKey:{v19), "BOOLValue"}];
        if ((v20 & [objc_msgSend(v19 "activeFormat")]) == 1)
        {
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v21 = [(AVCaptureSession *)self inputs];
          v22 = [(NSArray *)v21 countByEnumeratingWithState:&v50 objects:v49 count:16];
          if (v22)
          {
            v23 = *v51;
            while (2)
            {
              for (k = 0; k != v22; ++k)
              {
                if (*v51 != v23)
                {
                  objc_enumerationMutation(v21);
                }

                v25 = *(*(&v50 + 1) + 8 * k);
                objc_opt_class();
                if (objc_opt_isKindOfClass() & 1) != 0 && [objc_msgSend(objc_msgSend(v25 "device")] && (objc_msgSend(v25, "isCinematicVideoCaptureEnabled"))
                {
                  v26 = 1;
                  goto LABEL_47;
                }
              }

              v22 = [(NSArray *)v21 countByEnumeratingWithState:&v50 objects:v49 count:16];
              if (v22)
              {
                continue;
              }

              break;
            }
          }

          v26 = 0;
LABEL_47:
          v27 = [(AVCaptureSession *)self _outputWithClass:objc_opt_class() forSourceDevice:v19];
          if (v27 && [v27 isDepthCaptureEnabled])
          {
            v37 = self->_internal;
            objc_sync_enter(v37);
            v45 = 0u;
            v46 = 0u;
            v47 = 0u;
            v48 = 0u;
            videoPreviewLayers = self->_internal->videoPreviewLayers;
            v29 = [(NSPointerArray *)videoPreviewLayers countByEnumeratingWithState:&v45 objects:v44 count:16];
            if (v29)
            {
              v30 = *v46;
              while (2)
              {
                for (m = 0; m != v29; ++m)
                {
                  if (*v46 != v30)
                  {
                    objc_enumerationMutation(videoPreviewLayers);
                  }

                  v32 = *(*(&v45 + 1) + 8 * m);
                  if ([objc_msgSend(v32 "connection")] == v19 && objc_msgSend(v32, "isDepthDataDeliveryEnabled") && (objc_msgSend(v32, "isFilterRenderingEnabled") & 1) != 0)
                  {
                    v26 = 1;
                    goto LABEL_61;
                  }
                }

                v29 = [(NSPointerArray *)videoPreviewLayers countByEnumeratingWithState:&v45 objects:v44 count:16];
                if (v29)
                {
                  continue;
                }

                break;
              }
            }

LABEL_61:
            objc_sync_exit(v37);
          }
        }

        else
        {
          v26 = 0;
        }

        [v19 _setCinematicVideoEnabled:v26];
        [v19 _setDepthDataDeliveryEnabled:v20];
        [v19 _setContinuousZoomWithDepthDisallowed:v42];
        v33 = v26 | v20 & ([objc_msgSend(v19 "activeFormat")] ^ 1 | v42) ^ 1;
        devicesObservingVideoZoomFactor = self->_internal->_devicesObservingVideoZoomFactor;
        if (v33)
        {
          if ([(NSMutableArray *)devicesObservingVideoZoomFactor containsObject:v19])
          {
            [v19 removeObserver:self forKeyPath:@"videoZoomFactor" context:AVCaptureSessionVideoInputDeviceVideoZoomFactorChangedContext];
            [(NSMutableArray *)self->_internal->_devicesObservingVideoZoomFactor removeObject:v19];
          }
        }

        else if (([(NSMutableArray *)devicesObservingVideoZoomFactor containsObject:v19]& 1) == 0)
        {
          [v19 addObserver:self forKeyPath:@"videoZoomFactor" options:3 context:AVCaptureSessionVideoInputDeviceVideoZoomFactorChangedContext];
          [(NSMutableArray *)self->_internal->_devicesObservingVideoZoomFactor addObject:v19];
        }
      }

      v17 = [obj countByEnumeratingWithState:&v55 objects:v54 count:16];
    }

    while (v17);
  }

  objc_sync_exit(v36);
}

- (void)_updateCameraCalibrationDataDeliveryEnabledForSourceDevice:(id)a3
{
  obj = self->_internal;
  objc_sync_enter(obj);
  v5 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:517 valueOptions:0 capacity:2];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  inputs = self->_internal->inputs;
  v7 = [(NSMutableArray *)inputs countByEnumeratingWithState:&v34 objects:v33 count:16];
  if (v7)
  {
    v8 = *v35;
    v9 = MEMORY[0x1E695E110];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(inputs);
        }

        v11 = *(*(&v34 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v5 setObject:v9 forKey:{objc_msgSend(v11, "device")}];
        }
      }

      v7 = [(NSMutableArray *)inputs countByEnumeratingWithState:&v34 objects:v33 count:16];
    }

    while (v7);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  connections = self->_internal->connections;
  v13 = [(NSMutableArray *)connections countByEnumeratingWithState:&v29 objects:v28 count:16];
  if (v13)
  {
    v14 = *v30;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(connections);
        }

        v16 = *(*(&v29 + 1) + 8 * j);
        v17 = [v16 sourceDevice];
        v18 = v17;
        if ((!a3 || v17 == a3) && ([objc_msgSend(v5 objectForKey:{v17), "BOOLValue"}] & 1) == 0)
        {
          [v16 output];
          objc_opt_class();
          [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", objc_opt_isKindOfClass() & 1), v18}];
        }
      }

      v13 = [(NSMutableArray *)connections countByEnumeratingWithState:&v29 objects:v28 count:16];
    }

    while (v13);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v19 = [v5 countByEnumeratingWithState:&v24 objects:v23 count:16];
  if (v19)
  {
    v20 = *v25;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v24 + 1) + 8 * k) _setCameraCalibrationDataDeliveryEnabled:{objc_msgSend(objc_msgSend(v5, "objectForKey:", *(*(&v24 + 1) + 8 * k)), "BOOLValue")}];
      }

      v19 = [v5 countByEnumeratingWithState:&v24 objects:v23 count:16];
    }

    while (v19);
  }

  objc_sync_exit(obj);
}

- (void)_updateConstantColorEnabledForSourceDevice:(id)a3
{
  obj = self->_internal;
  objc_sync_enter(obj);
  v5 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:517 valueOptions:0 capacity:2];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  inputs = self->_internal->inputs;
  v7 = [(NSMutableArray *)inputs countByEnumeratingWithState:&v37 objects:v36 count:16];
  if (v7)
  {
    v8 = *v38;
    v9 = MEMORY[0x1E695E110];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(inputs);
        }

        v11 = *(*(&v37 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v5 setObject:v9 forKey:{objc_msgSend(v11, "device")}];
        }
      }

      v7 = [(NSMutableArray *)inputs countByEnumeratingWithState:&v37 objects:v36 count:16];
    }

    while (v7);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  connections = self->_internal->connections;
  v13 = [(NSMutableArray *)connections countByEnumeratingWithState:&v32 objects:v31 count:16];
  if (v13)
  {
    v14 = *v33;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(connections);
        }

        v16 = *(*(&v32 + 1) + 8 * j);
        v17 = [v16 sourceDevice];
        v18 = v17;
        if ((!a3 || v17 == a3) && ([objc_msgSend(v5 objectForKey:{v17), "BOOLValue"}] & 1) == 0)
        {
          if ([v16 output])
          {
            v19 = [v16 output];
          }

          else
          {
            v19 = [v16 videoPreviewLayer];
          }

          v20 = v19;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v21 = [v20 isConstantColorEnabled];
          }

          else
          {
            v21 = 0;
          }

          [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", v21), v18}];
        }
      }

      v13 = [(NSMutableArray *)connections countByEnumeratingWithState:&v32 objects:v31 count:16];
    }

    while (v13);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v22 = [v5 countByEnumeratingWithState:&v27 objects:v26 count:16];
  if (v22)
  {
    v23 = *v28;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v27 + 1) + 8 * k) _setConstantColorEnabled:{objc_msgSend(objc_msgSend(v5, "objectForKey:", *(*(&v27 + 1) + 8 * k)), "BOOLValue")}];
      }

      v22 = [v5 countByEnumeratingWithState:&v27 objects:v26 count:16];
    }

    while (v22);
  }

  objc_sync_exit(obj);
}

- (void)_updateVideoHDREnabledForDevice:(id)a3 forceResetVideoHDRSuspended:(BOOL)a4
{
  v4 = a4;
  v6 = -[AVCaptureSession videoHDREnabledForDevice:format:sessionPreset:](self, "videoHDREnabledForDevice:format:sessionPreset:", a3, [a3 activeFormat], self->_internal->sessionPreset);
  [objc_opt_class() _startConfiguringProperty:@"videoHDREnabled" forDevice:a3];
  [a3 _setVideoHDREnabled:v6 forceResetVideoHDRSuspended:v4];
  v7 = objc_opt_class();

  [v7 _finishConfiguringProperty:@"videoHDREnabled" forDevice:a3];
}

- (void)_updateSmartStyleRenderingStatusWithSkipRebuildGraph:(BOOL)a3
{
  internal = self->_internal;
  objc_sync_enter(internal);
  self->_internal->smartStyleRenderingSupported = [(AVCaptureSession *)self _getSmartStyleRenderingSupported];
  v6 = self->_internal;
  if (v6->running && v6->smartStyleRenderingOptedOutDefault)
  {
    [(AVCaptureSession *)self displaySmartStylesOptOutAlert];
    v6 = self->_internal;
  }

  v7 = v6->smartStyleRenderingSupported && !v6->smartStyleRenderingOptedOut;
  v8 = v7;
  smartStyleRenderingEnabled = v6->smartStyleRenderingEnabled;
  v6->smartStyleRenderingEnabled = v7;
  objc_sync_exit(internal);
  if (smartStyleRenderingEnabled != v8 && !a3)
  {

    [(AVCaptureSession *)self _rebuildGraph];
  }
}

uint64_t __60__AVCaptureSession__updateMultiCamClientCompositingCallback__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v17 = [*(a1 + 32) referencedObject];
  v18 = [[AVCaptureMultiCamClientCompositingData alloc] _initWithPrimarySampleBuffer:a4 primaryGainMapSampleBuffer:a5 secondarySampleBuffer:a6 secondaryGainMapSampleBuffer:a7 outputSampleBuffer:a8 outputGainMapSampleBuffer:a9];
  v19 = [v17 _invokeClientCompositingCallbackForSinkID:a2 settingsID:a3 compositingData:v18];
  if (a10)
  {
    *a10 = [v18 compositingMetadata];
  }

  return v19;
}

- (void)_invalidateControlsOverlay
{
  internal = self->_internal;
  objc_sync_enter(internal);
  [(AVCaptureControlsOverlay *)self->_internal->controlsOverlay invalidate];

  objc_sync_exit(internal);
}

uint64_t __42__AVCaptureSession__updateControlsOverlay__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueID];
  v4 = [objc_msgSend(*(a1 + 32) "device")];

  return [v3 isEqualToString:v4];
}

uint64_t __42__AVCaptureSession__updateControlsOverlay__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueID];
  v4 = [objc_msgSend(*(a1 + 32) "device")];

  return [v3 isEqualToString:v4];
}

uint64_t __42__AVCaptureSession__updateControlsOverlay__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueID];
  v4 = [objc_msgSend(*(a1 + 32) "device")];

  return [v3 isEqualToString:v4];
}

- (void)handleControlsOverlay:(id)a3 didChangeVisibility:(BOOL)a4 activeControl:(id)a5
{
  internal = self->_internal;
  objc_sync_enter(internal);
  v10 = self->_internal;
  controlsOverlay = v10->controlsOverlay;
  if (controlsOverlay == a3)
  {
    v12 = [(AVWeakReference *)v10->weakReferenceControlsDelegate referencedObject];
    v13 = self->_internal->clientControlsQueue;
    v14 = self->_internal->weakReference;
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v12 = 0;
  }

  objc_sync_exit(internal);
  if (controlsOverlay == a3 && v13 != 0 && v12 != 0)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __76__AVCaptureSession_handleControlsOverlay_didChangeVisibility_activeControl___block_invoke;
    v17[3] = &unk_1E7876010;
    v17[4] = v14;
    v17[5] = v12;
    v18 = a4;
    v17[6] = a5;
    dispatch_async(v13, v17);
  }
}

- (void)handleControlsOverlay:(id)a3 didChangeInterfaceReduced:(BOOL)a4
{
  internal = self->_internal;
  objc_sync_enter(internal);
  v8 = self->_internal;
  controlsOverlay = v8->controlsOverlay;
  if (controlsOverlay == a3)
  {
    v10 = [(AVWeakReference *)v8->weakReferenceControlsDelegate referencedObject];
    v11 = self->_internal->clientControlsQueue;
    v12 = self->_internal->weakReference;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v10 = 0;
  }

  objc_sync_exit(internal);
  if (controlsOverlay == a3 && v11 != 0 && v10 != 0)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__AVCaptureSession_handleControlsOverlay_didChangeInterfaceReduced___block_invoke;
    block[3] = &unk_1E7875C20;
    v16 = a4;
    block[4] = v12;
    block[5] = v10;
    dispatch_async(v11, block);
  }
}

- (void)handleControlsOverlay:(id)a3 didChangeActiveControl:(id)a4
{
  internal = self->_internal;
  objc_sync_enter(internal);
  v8 = self->_internal;
  if (v8->controlsOverlay == a3 && ([(NSMutableArray *)v8->controls containsObject:a4]& 1) != 0)
  {
    v9 = [(AVWeakReference *)self->_internal->weakReferenceControlsDelegate referencedObject];
    v10 = self->_internal->clientControlsQueue;
    v11 = self->_internal->weakReference;
    v12 = 0;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v9 = 0;
    v12 = 1;
  }

  objc_sync_exit(internal);
  if ((v12 & 1) == 0 && v10 && v9 && ((AVCaptureClientIsCameraOrDerivative() & 1) != 0 || AVCaptureClientIsInternalTestTool()))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__AVCaptureSession_handleControlsOverlay_didChangeActiveControl___block_invoke;
    block[3] = &unk_1E786EFD0;
    block[4] = v11;
    block[5] = v9;
    block[6] = a4;
    dispatch_async(v10, block);
  }
}

- (BOOL)controlsDelegateCanReceiveAutoFocusLockedCallback
{
  if ((AVCaptureClientIsCameraOrDerivative() & 1) == 0 && !AVCaptureClientIsInternalTestTool())
  {
    goto LABEL_29;
  }

  internal = self->_internal;
  objc_sync_enter(internal);
  v4 = [(AVWeakReference *)self->_internal->weakReferenceControlsDelegate referencedObject];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    objc_sync_exit(internal);
LABEL_29:
    v14 = 0;
    v6 = 0;
    v5 = 0;
    goto LABEL_27;
  }

  v5 = [(NSMutableArray *)self->_internal->inputs copy];
  v6 = [(NSMutableArray *)self->_internal->outputs copy];
  objc_sync_exit(internal);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    v10 = *MEMORY[0x1E69875C0];
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v12 connectionWithMediaType:v10];
          if (v13)
          {
            if ([v13 isActive])
            {
              v14 = 0;
              goto LABEL_16;
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v27 objects:v26 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_16:
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = [v5 countByEnumeratingWithState:&v22 objects:v21 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    while (2)
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v5);
        }

        v19 = *(*(&v22 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ([v19 isCinematicVideoCaptureEnabled])
        {
          v14 = 0;
          goto LABEL_27;
        }
      }

      v16 = [v5 countByEnumeratingWithState:&v22 objects:v21 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

LABEL_27:

  return v14;
}

- (void)handleControlsOverlay:(id)a3 didChangeFocusLocked:(BOOL)a4
{
  internal = self->_internal;
  objc_sync_enter(internal);
  v8 = self->_internal;
  controlsOverlay = v8->controlsOverlay;
  if (controlsOverlay == a3)
  {
    v10 = [(AVWeakReference *)v8->weakReferenceControlsDelegate referencedObject];
    v11 = self->_internal->clientControlsQueue;
    v12 = self->_internal->weakReference;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v10 = 0;
  }

  objc_sync_exit(internal);
  if (controlsOverlay == a3 && v11 != 0 && v10 != 0)
  {
    if ([(AVCaptureSession *)self controlsDelegateCanReceiveAutoFocusLockedCallback])
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __63__AVCaptureSession_handleControlsOverlay_didChangeFocusLocked___block_invoke;
      block[3] = &unk_1E7875C20;
      block[4] = v12;
      block[5] = v10;
      v16 = a4;
      dispatch_async(v11, block);
    }
  }
}

- (void)cancelForegroundAutoResumeAfterDate:(id)a3
{
  [a3 timeIntervalSinceReferenceDate];
  v5 = v4;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  if (dword_1ED8069A0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  internal = self->_internal;
  objc_sync_enter(internal);
  figCaptureSession = self->_internal->figCaptureSession;
  if (figCaptureSession)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v10)
    {
      v10(figCaptureSession, *MEMORY[0x1E698FE00], v9);
    }
  }

  objc_sync_exit(internal);
}

- (void)setSmartStyleControlMode:(int64_t)a3
{
  if (dword_1ED8069A0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  internal = self->_internal;
  objc_sync_enter(internal);
  self->_internal->smartStyleControlMode = a3;
  objc_sync_exit(internal);
}

- (int64_t)smartStyleControlMode
{
  internal = self->_internal;
  objc_sync_enter(internal);
  smartStyleControlMode = self->_internal->smartStyleControlMode;
  objc_sync_exit(internal);
  return smartStyleControlMode;
}

- (BOOL)smartStyleRenderingEnabled
{
  v2 = self;
  internal = self->_internal;
  objc_sync_enter(internal);
  LOBYTE(v2) = v2->_internal->smartStyleRenderingEnabled;
  objc_sync_exit(internal);
  return v2;
}

- (void)setSmartStyle:(id)a3
{
  internal = self->_internal;
  objc_sync_enter(internal);
  v6 = self->_internal;
  if (!v6->smartStyleRenderingOptedOut && ([a3 isEqual:v6->smartStyleSetByClient] & 1) == 0)
  {

    self->_internal->smartStyleSetByClient = a3;
    if (![(AVCaptureSession *)self isBeingConfigured])
    {
      if (a3)
      {
        v7 = MEMORY[0x1E698F7E0];
        v8 = [a3 cast];
        [a3 intensity];
        v10 = v9;
        [a3 toneBias];
        v12 = v11;
        [a3 colorBias];
        LODWORD(v14) = v13;
        LODWORD(v15) = v10;
        LODWORD(v16) = v12;
        a3 = [v7 styleWithCast:v8 intensity:v15 toneBias:v16 colorBias:v14];
      }

      figCaptureSession = self->_internal->figCaptureSession;
      if (figCaptureSession)
      {
        v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v18)
        {
          v18(figCaptureSession, *MEMORY[0x1E698FE10], a3);
        }
      }
    }
  }

  objc_sync_exit(internal);
}

- (id)smartStyle
{
  internal = self->_internal;
  objc_sync_enter(internal);
  v4 = self->_internal->smartStyleSetByClient;
  objc_sync_exit(internal);
  return v4;
}

- (void)saveSystemStyleOverrideToDefaults:(id)a3
{
  internal = self->_internal;
  objc_sync_enter(internal);
  if (!self->_internal->smartStyleRenderingOptedOut && ![(AVCaptureSession *)self isBeingConfigured])
  {
    if (a3)
    {
      v6 = MEMORY[0x1E698F7E0];
      v7 = [a3 cast];
      [a3 intensity];
      v9 = v8;
      [a3 toneBias];
      v11 = v10;
      [a3 colorBias];
      LODWORD(v13) = v12;
      LODWORD(v14) = v9;
      LODWORD(v15) = v11;
      a3 = [v6 styleWithCast:v7 intensity:v14 toneBias:v15 colorBias:v13];
    }

    figCaptureSession = self->_internal->figCaptureSession;
    if (figCaptureSession)
    {
      v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v17)
      {
        v17(figCaptureSession, *MEMORY[0x1E698FE18], a3);
      }
    }
  }

  objc_sync_exit(internal);
}

- (id)systemSmartStyle
{
  v3 = AVCaptureClientPreferencesDomain();
  SystemStyle = AVSmartStyleSettingsGetSystemStyle(v3);
  if (![(AVCaptureSession *)self isValidSystemStyle:SystemStyle])
  {
    SystemStyle = AVSmartStyleSettingsGetSystemStyle(AVSmartStyleSettingsSystemStyle);
  }

  if (SystemStyle)
  {
    return SystemStyle;
  }

  return +[AVCaptureSmartStyle identityStyle];
}

- (id)activeSmartStyle
{
  internal = self->_internal;
  objc_sync_enter(internal);
  v4 = self->_internal;
  if (v4->smartStyleRenderingOptedOut)
  {
    v5 = +[AVCaptureSmartStyle identityStyle];
  }

  else
  {
    smartStyleSetByClient = v4->smartStyleSetByClient;
    if (smartStyleSetByClient)
    {
      v5 = smartStyleSetByClient;
    }

    else
    {
      v5 = [(AVCaptureSession *)self systemSmartStyle];
    }
  }

  v7 = v5;
  objc_sync_exit(internal);
  return v7;
}

- (void)displaySmartStylesOptOutAlert
{
  v3 = AVCaptureClientPreferencesDomain();
  HasShownOptOutMessagePreferenceKey = AVSmartStyleSettingsSystemStyleHasShownOptOutMessagePreferenceKey(v3);
  if (![AVCaptureProprietaryDefaultsSingleton objectForKey:HasShownOptOutMessagePreferenceKey])
  {
    internal = self->_internal;
    objc_sync_enter(internal);
    if (self->_internal->smartStyleAlertBundleName)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"“%@” Would Like To Turn Off Camera Styles", self->_internal->smartStyleAlertBundleName];
      smartStyleAlertOptOutDescription = self->_internal->smartStyleAlertOptOutDescription;
      v8 = *MEMORY[0x1E695EE60];
      v18[0] = *MEMORY[0x1E695EE58];
      v18[1] = v8;
      v19[0] = v6;
      v19[1] = smartStyleAlertOptOutDescription;
      v9 = *MEMORY[0x1E695EE70];
      v18[2] = *MEMORY[0x1E695EE78];
      v18[3] = v9;
      v19[2] = @"Turn Off";
      v19[3] = @"Cancel";
      v18[4] = *MEMORY[0x1E695EE68];
      v19[4] = MEMORY[0x1E695E118];
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:5];
      error = 0;
      v11 = CFUserNotificationCreate(*MEMORY[0x1E695E480], 0.0, 2uLL, &error, v10);
      v12 = v11;
      if (v11)
      {
        if (error)
        {
          v13 = 1;
        }

        else
        {
          responseFlags = 0;
          v14 = CFUserNotificationReceiveResponse(v11, 0.0, &responseFlags);
          error = v14;
          v13 = (responseFlags & 3) != 0 || v14 != 0;
        }

        CFRelease(v12);
      }

      else
      {
        v13 = 1;
      }

      self->_internal->smartStyleRenderingOptedOut = !v13;
      objc_sync_exit(internal);
      [AVCaptureProprietaryDefaultsSingleton setObject:MEMORY[0x1E695E118] forKey:HasShownOptOutMessagePreferenceKey];
      [(AVCaptureSession *)self setSystemStyleEnabled:v13];
    }

    else
    {

      objc_sync_exit(internal);
    }
  }
}

- (void)setSystemStyleEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = AVCaptureClientPreferencesDomain();

  AVSmartStyleSettingsSetSystemStyleEnabledForBundleID(v3, v4);
}

- (BOOL)isValidSystemStyle:(id)a3
{
  if (a3)
  {
    return [a3 isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}] ^ 1;
  }

  else
  {
    return 0;
  }
}

- (int)_invokeClientCompositingCallbackForSinkID:(id)a3 settingsID:(int64_t)a4 compositingData:(id)a5
{
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [(AVCaptureSession *)self connections];
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    v12 = *MEMORY[0x1E6987608];
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        if ([objc_msgSend(objc_msgSend(v14 "output")] && objc_msgSend(v14, "mediaType") == v12)
        {
          LODWORD(v9) = [objc_msgSend(v14 "output")];
          return v9;
        }

        ++v13;
      }

      while (v10 != v13);
      v9 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v16 count:16];
      v10 = v9;
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  return v9;
}

- (id)deviceFormatForSessionPreset:(id)a3 device:(id)a4
{
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [(AVCaptureSession *)self connections];
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (!v7)
  {
    goto LABEL_30;
  }

  v8 = v7;
  v9 = 0;
  MediaSubType = 0;
  v11 = *v20;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v20 != v11)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v19 + 1) + 8 * i);
      if ([v13 sourceDevice] == a4 && objc_msgSend(objc_msgSend(v13, "output"), "hasRequiredOutputFormatForConnection:", v13))
      {
        v14 = [objc_msgSend(v13 "output")];
        v15 = FigCaptureUncompressedPixelFormatForPixelFormat();
        if (v15 <= 1111970368)
        {
          if (v15 == 875704422)
          {
            v16 = 2;
          }

          else
          {
            if (v15 != 875704438)
            {
              goto LABEL_19;
            }

            v16 = 1;
          }
        }

        else
        {
          switch(v15)
          {
            case 1111970369:
              v16 = 5;
              break;
            case 2016686640:
              v16 = 3;
              break;
            case 2016686642:
              v16 = 4;
              break;
            default:
LABEL_19:
              v16 = 0;
              break;
          }
        }

        if (v16 <= v9)
        {
          MediaSubType = MediaSubType;
        }

        else
        {
          v9 = v16;
          MediaSubType = v14;
        }

        continue;
      }
    }

    v8 = [(NSArray *)v6 countByEnumeratingWithState:&v19 objects:v18 count:16];
  }

  while (v8);
  if (MediaSubType)
  {
    goto LABEL_26;
  }

LABEL_30:
  if ([a3 isEqualToString:@"AVCaptureSessionPresetPhoto"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"AVCaptureSessionPresetPhoto2592x1936"))
  {
LABEL_32:
    MediaSubType = 875704422;
    return [a4 deviceFormatForSessionPreset:a3 sourceVideoFormat:MediaSubType];
  }

  if (![a3 isEqualToString:@"AVCaptureSessionPresetInputPriority"])
  {
    goto LABEL_38;
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType([objc_msgSend(a4 "activeFormat")]);
LABEL_26:
  if (MediaSubType <= 2016686639)
  {
    if (MediaSubType == 875704422 || MediaSubType == 1111970369)
    {
      goto LABEL_32;
    }

    goto LABEL_38;
  }

  if (MediaSubType != 2016686640 && MediaSubType != 2016686642)
  {
LABEL_38:
    MediaSubType = 875704438;
  }

  return [a4 deviceFormatForSessionPreset:a3 sourceVideoFormat:MediaSubType];
}

- (void)setContinuityCameraIsWired:(BOOL)a3
{
  if (self->_internal->continuityCameraIsWired != a3)
  {
    [(AVCaptureSession *)self _beginConfiguration];
    self->_internal->continuityCameraIsWired = a3;

    [(AVCaptureSession *)self _commitConfiguration];
  }
}

- (void)setContinuityCameraClientDeviceClass:(int)a3
{
  if (self->_internal->continuityCameraClientDeviceClass != a3)
  {
    [(AVCaptureSession *)self _beginConfiguration];
    self->_internal->continuityCameraClientDeviceClass = a3;

    [(AVCaptureSession *)self _commitConfiguration];
  }
}

- (void)setSuppressVideoEffects:(BOOL)a3
{
  if (self->_internal->suppressVideoEffects != a3)
  {
    [(AVCaptureSession *)self _beginConfiguration];
    [(AVCaptureSession *)self willChangeValueForKey:@"suppressVideoEffects"];
    self->_internal->suppressVideoEffects = a3;
    [(AVCaptureSession *)self didChangeValueForKey:@"suppressVideoEffects"];

    [(AVCaptureSession *)self _commitConfiguration];
  }
}

- (BOOL)requestNANDBandwidthToStartMovieFileRecording:(id)a3 outputFileURL:(id)a4 videoCodecType:(id)a5
{
  [(NSMutableArray *)self->_internal->recordingMovieFileOutputs removeObject:?];
  if (![a5 isEqualToString:*MEMORY[0x1E6987CC0]] || FigFileIsFileOnExternalStorageDevice())
  {
    return 1;
  }

  os_unfair_lock_lock(&self->_internal->recordingMovieFileOutputsLock);
  v8 = *MEMORY[0x1E6987608];
  v9 = -[AVCaptureSession _getMovieFileOutputNANDDataRate:](self, "_getMovieFileOutputNANDDataRate:", [a3 connectionWithMediaType:*MEMORY[0x1E6987608]]);
  recordingMovieFileOutputs = self->_internal->recordingMovieFileOutputs;
  OUTLINED_FUNCTION_1_13();
  v11 = [NSMutableArray countByEnumeratingWithState:"countByEnumeratingWithState:objects:count:" objects:? count:?];
  if (v11)
  {
    v12 = v11;
    v13 = MEMORY[0];
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (MEMORY[0] != v13)
        {
          objc_enumerationMutation(recordingMovieFileOutputs);
        }

        v9 += -[AVCaptureSession _getMovieFileOutputNANDDataRate:](self, "_getMovieFileOutputNANDDataRate:", [*(8 * i) connectionWithMediaType:v8]);
      }

      OUTLINED_FUNCTION_1_13();
      v12 = [NSMutableArray countByEnumeratingWithState:"countByEnumeratingWithState:objects:count:" objects:? count:?];
    }

    while (v12);
  }

  v15 = v9 < 283392001;
  if (v9 <= 283392000)
  {
    [(NSMutableArray *)self->_internal->recordingMovieFileOutputs addObject:a3];
  }

  os_unfair_lock_unlock(&self->_internal->recordingMovieFileOutputsLock);
  return v15;
}

uint64_t __76__AVCaptureSession_handleControlsOverlay_didChangeVisibility_activeControl___block_invoke(uint64_t a1)
{
  result = OUTLINED_FUNCTION_6_1(a1);
  if (!result)
  {
    return result;
  }

  if (AVCaptureClientIsCameraOrDerivative())
  {
    if (*(v1 + 56) == 1)
    {
      v3 = 1;
LABEL_6:
      result = [OUTLINED_FUNCTION_2_6() sessionControlsDidBecomeActive:?];
      if (*(v1 + 48))
      {
        if (v3)
        {
          result = objc_opt_respondsToSelector();
          if (result)
          {
            v5 = OUTLINED_FUNCTION_3_5();

            return [v5 session:? didChangeActiveControl:?];
          }
        }
      }

      return result;
    }

LABEL_14:
    if (objc_opt_respondsToSelector())
    {
      [OUTLINED_FUNCTION_3_5() session:? didChangeActiveControl:?];
    }

    goto LABEL_16;
  }

  IsInternalTestTool = AVCaptureClientIsInternalTestTool();
  v3 = IsInternalTestTool;
  if (*(v1 + 56))
  {
    goto LABEL_6;
  }

  if (IsInternalTestTool)
  {
    goto LABEL_14;
  }

LABEL_16:
  v6 = OUTLINED_FUNCTION_2_6();

  return [v6 sessionControlsDidBecomeInactive:?];
}

uint64_t __68__AVCaptureSession_handleControlsOverlay_didChangeInterfaceReduced___block_invoke(uint64_t a1)
{
  result = OUTLINED_FUNCTION_6_1(a1);
  if (result)
  {
    if (*(v1 + 48) == 1)
    {
      result = objc_opt_respondsToSelector();
      if (result)
      {
        v3 = OUTLINED_FUNCTION_2_6();

        return [v3 sessionControlsWillEnterFullscreenAppearance:?];
      }
    }

    else
    {
      result = objc_opt_respondsToSelector();
      if (result)
      {
        v4 = OUTLINED_FUNCTION_2_6();

        return [v4 sessionControlsWillExitFullscreenAppearance:?];
      }
    }
  }

  return result;
}

uint64_t __65__AVCaptureSession_handleControlsOverlay_didChangeActiveControl___block_invoke(uint64_t a1)
{
  result = OUTLINED_FUNCTION_6_1(a1);
  if (result)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_3_5();

      return [v2 session:? didChangeActiveControl:?];
    }
  }

  return result;
}

uint64_t __63__AVCaptureSession_handleControlsOverlay_didChangeFocusLocked___block_invoke(uint64_t a1)
{
  result = OUTLINED_FUNCTION_6_1(a1);
  if (result)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v2 = OUTLINED_FUNCTION_3_5();

      return [v2 session:? controlsDidChangeAutoFocusLocked:?];
    }
  }

  return result;
}

- (uint64_t)_canAddInput:(uint64_t)a1 failureReason:(uint64_t *)a2 .cold.1(uint64_t a1, uint64_t *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  result = [v3 stringWithFormat:@"<%@> is an unsupported AVCaptureInput type", NSStringFromClass(v4)];
  *a2 = result;
  return result;
}

- (uint64_t)_addConnection:(void *)a3 exceptionReason:(void *)a4 .cold.1(void *a1, char a2, void *a3, void *a4)
{
  result = objc_sync_exit(a1);
  if (a2)
  {
    if (!a4)
    {
      return result;
    }

    v8 = @"connection";
    v9 = a4;
  }

  else
  {
    v8 = @"connections";
    v9 = a3;
  }

  return [v9 didChangeValueForKey:v8];
}

- (void)_createFigCaptureSession
{
  FigDebugAssert3();
  if (*a2)
  {
    CFRelease(*a2);
  }

  *a3 = a1;
}

@end