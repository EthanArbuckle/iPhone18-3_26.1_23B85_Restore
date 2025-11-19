@interface AVCaptureFigAudioDevice
+ (id)_devicesWithPriorRegisteredDevices:(id)a3;
+ (id)_newFigCaptureSources;
+ (void)_reconnectDevices:(id)a3;
+ (void)initialize;
- (AVCaptureFigAudioDevice)init;
- (BOOL)_currentAudioInputRouteIsBuiltInMic;
- (BOOL)_systemHasAudioInputDevice;
- (BOOL)isAudioCaptureModeSupported:(int64_t)a3;
- (BOOL)isAudioInputRouteBuiltInMic;
- (BOOL)isBuiltInStereoAudioCaptureSupported;
- (BOOL)isConnected;
- (BOOL)isWindNoiseRemovalSupported;
- (OpaqueCMClock)deviceClock;
- (id)_copyFigCaptureSourceProperty:(__CFString *)a3;
- (id)_currentAudioInputDeviceLocalizedName:(id)a3;
- (id)_initWithFigCaptureSource:(OpaqueFigCaptureSource *)a3;
- (id)clientAudioClockDeviceUID;
- (id)figCaptureSourceAudioSettingsForSessionPreset:(id)a3;
- (id)localizedName;
- (id)preferredIOBufferDuration;
- (int64_t)fallbackAudioCaptureModeIfApplicableForCurrentRoute:(int64_t)a3;
- (void)_handleNotification:(__CFString *)a3 payload:(id)a4;
- (void)_reconnectToFigCaptureSource:(OpaqueFigCaptureSource *)a3;
- (void)_setFigCaptureSource:(OpaqueFigCaptureSource *)a3;
- (void)_updateStateForInputDevice:(id)a3;
- (void)audioInputDeviceDidChangeHandler:(id)a3;
- (void)audioServicesWereResetHandler:(id)a3;
- (void)dealloc;
- (void)setAllowsBluetoothHighQualityRecording:(BOOL)a3;
@end

@implementation AVCaptureFigAudioDevice

- (id)localizedName
{
  dispatch_group_wait(self->_audioRoutesInfoFirstQueryGroup, 0xFFFFFFFFFFFFFFFFLL);
  os_unfair_lock_lock(&self->_localizedNameLock);
  v3 = self->_localizedName;
  os_unfair_lock_unlock(&self->_localizedNameLock);
  return v3;
}

+ (id)_newFigCaptureSources
{
  if (AVCaptureIsRunningInMediaserverd())
  {

    return FigCaptureSourceCopySources();
  }

  else
  {

    return FigCaptureSourceRemoteCopyCaptureSources();
  }
}

- (BOOL)isConnected
{
  dispatch_group_wait(self->_audioRoutesInfoFirstQueryGroup, 0xFFFFFFFFFFFFFFFFLL);
  os_unfair_lock_lock(&self->_isConnectedLock);
  isConnected = self->_isConnected;
  os_unfair_lock_unlock(&self->_isConnectedLock);
  return isConnected;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (OpaqueCMClock)deviceClock
{
  if (!AVCaptureAudiomxdSupportEnabled())
  {
    v4 = [(AVCaptureFigAudioDevice *)self _copyFigCaptureSourceProperty:*MEMORY[0x1E6990668]];
    if (v4)
    {
      goto LABEL_6;
    }

    return 0;
  }

  sharedAVAudioSessionClock = self->_sharedAVAudioSessionClock;
  if (!sharedAVAudioSessionClock)
  {
    [MEMORY[0x1E6958460] sharedInstance];
    FigAudioSessionClockCreateForAVAudioSession();
    sharedAVAudioSessionClock = self->_sharedAVAudioSessionClock;
    if (!sharedAVAudioSessionClock)
    {
      return 0;
    }
  }

  v4 = CFRetain(sharedAVAudioSessionClock);
LABEL_6:

  return CFAutorelease(v4);
}

- (BOOL)isWindNoiseRemovalSupported
{
  v2 = [(NSDictionary *)self->_attributes objectForKeyedSubscript:*MEMORY[0x1E69902E8]];

  return [v2 BOOLValue];
}

- (id)clientAudioClockDeviceUID
{
  v2 = [(NSString *)self->_clientAudioClockDeviceUID copy];

  return v2;
}

- (id)preferredIOBufferDuration
{
  v2 = [(NSNumber *)self->_preferredIOBufferDuration copy];

  return v2;
}

+ (id)_devicesWithPriorRegisteredDevices:(id)a3
{
  v22 = [MEMORY[0x1E695DF70] array];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = +[AVCaptureFigAudioDevice _newFigCaptureSources];
  v4 = [obj countByEnumeratingWithState:&v30 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v31;
    v19 = *MEMORY[0x1E69905E0];
    v18 = *MEMORY[0x1E695E480];
    v21 = *MEMORY[0x1E6990298];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v31 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v30 + 1) + 8 * i);
        if ([a3 count])
        {
          v28 = 0;
          v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v9)
          {
            v9(v8, v19, v18, &v28);
          }

          v10 = [v28 objectForKeyedSubscript:v21];

          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v11 = [a3 countByEnumeratingWithState:&v24 objects:v23 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v25;
LABEL_11:
            v14 = 0;
            while (1)
            {
              if (*v25 != v13)
              {
                objc_enumerationMutation(a3);
              }

              v15 = *(*(&v24 + 1) + 8 * v14);
              if ([objc_msgSend(v15 "uniqueID")])
              {
                break;
              }

              if (v12 == ++v14)
              {
                v12 = [a3 countByEnumeratingWithState:&v24 objects:v23 count:16];
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

        v16 = [[AVCaptureFigAudioDevice alloc] _initWithFigCaptureSource:v8];
LABEL_20:
        [v22 addObject:v16];
      }

      v5 = [obj countByEnumeratingWithState:&v30 objects:v29 count:16];
    }

    while (v5);
  }

  return v22;
}

+ (void)_reconnectDevices:(id)a3
{
  if (AVCaptureIsRunningInMediaserverd())
  {
    v4 = FigCaptureSourceCopySources();
  }

  else
  {
    v4 = FigCaptureSourceRemoteCopyCaptureSources();
  }

  v5 = v4;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = [v4 countByEnumeratingWithState:&v29 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v21 = *v30;
    v19 = *MEMORY[0x1E69905E0];
    v18 = *MEMORY[0x1E695E480];
    v8 = *MEMORY[0x1E6990298];
    obj = v5;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v27 = 0;
        v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v11)
        {
          v11(v10, v19, v18, &v27);
        }

        v12 = [v27 objectForKeyedSubscript:{v8, v18, v19}];

        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v13 = [a3 countByEnumeratingWithState:&v23 objects:v22 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v24;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v24 != v15)
              {
                objc_enumerationMutation(a3);
              }

              if (v12)
              {
                v17 = *(*(&v23 + 1) + 8 * j);
                if ([objc_msgSend(v17 "uniqueID")])
                {
                  [v17 _reconnectToFigCaptureSource:v10];
                  goto LABEL_22;
                }
              }
            }

            v14 = [a3 countByEnumeratingWithState:&v23 objects:v22 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

LABEL_22:
      }

      v5 = obj;
      v7 = [obj countByEnumeratingWithState:&v29 objects:v28 count:16];
    }

    while (v7);
  }
}

- (AVCaptureFigAudioDevice)init
{
  v7.receiver = self;
  v7.super_class = AVCaptureFigAudioDevice;
  v2 = [(AVCaptureDevice *)&v7 init];
  if (v2)
  {
    v3 = v2;
    if (getCameraCaptureLegacyLog_cameraCaptureLegacyLogOnceToken_5 != -1)
    {
      [AVCaptureFigAudioDevice init];
    }

    v4 = getCameraCaptureLegacyLog_cameraCaptureLegacyLog_5;
    if (os_log_type_enabled(getCameraCaptureLegacyLog_cameraCaptureLegacyLog_5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A917C000, v4, OS_LOG_TYPE_DEFAULT, "[AVCaptureDevice init] - Cannot directly instantiate a AVCaptureDevice object.", v6, 2u);
    }
  }

  return 0;
}

- (id)_initWithFigCaptureSource:(OpaqueFigCaptureSource *)a3
{
  v9.receiver = self;
  v9.super_class = AVCaptureFigAudioDevice;
  v4 = [(AVCaptureDevice *)&v9 initSubclass];
  if (v4)
  {
    *(v4 + 19) = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:v4];
    *(v4 + 5) = dispatch_queue_create("com.apple.avfoundation.audiocapturedevice.source_queue", 0);
    *(v4 + 20) = dispatch_semaphore_create(0);
    [v4 _setFigCaptureSource:a3];
    *(v4 + 7) = [v4 _copyFigCaptureSourceProperty:*MEMORY[0x1E69905E0]];
    *(v4 + 96) = 0;
    *(v4 + 25) = 0;
    *(v4 + 105) = 0;
    *(v4 + 27) = 0;
    *(v4 + 15) = FigDispatchQueueCreateWithPriority();
    *(v4 + 32) = 0;
    v5 = dispatch_group_create();
    *(v4 + 17) = v5;
    dispatch_group_enter(v5);
    v6 = *(v4 + 15);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__AVCaptureFigAudioDevice__initWithFigCaptureSource___block_invoke;
    block[3] = &unk_1E786EC08;
    block[4] = v4;
    dispatch_async(v6, block);
  }

  return v4;
}

void __53__AVCaptureFigAudioDevice__initWithFigCaptureSource___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 80) = [objc_alloc(MEMORY[0x1E6958460]) initAuxiliarySession];
  v2 = *(a1 + 32);
  if (*(v2 + 192))
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  [*(v2 + 80) setCategory:*MEMORY[0x1E6958060] withOptions:v3 error:0];
  *(*(a1 + 32) + 72) = [MEMORY[0x1E69587D8] sharedSystemAudioInputContext];
  *(*(a1 + 32) + 64) = [objc_alloc(MEMORY[0x1E69587E8]) initWithDeviceFeatures:1];
  [*(*(a1 + 32) + 64) setAudioSessionID:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(*(*(a1 + 32) + 80), "opaqueSessionID"))}];
  [*(*(a1 + 32) + 64) setDiscoveryMode:2 forClientIdentifiers:MEMORY[0x1E695E0F0]];
  *(*(a1 + 32) + 104) = [*(a1 + 32) _systemHasAudioInputDevice];
  *(*(a1 + 32) + 144) = [*(a1 + 32) _currentAudioInputRouteIsBuiltInMic];
  *(*(a1 + 32) + 112) = [*(a1 + 32) _currentAudioInputDeviceLocalizedName:*(*(a1 + 32) + 56)];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:*(a1 + 32) selector:sel_audioInputDeviceDidChangeHandler_ name:*MEMORY[0x1E6958650] object:*(*(a1 + 32) + 72)];
  [v4 addObserver:*(a1 + 32) selector:sel_audioServicesWereResetHandler_ name:*MEMORY[0x1E6958128] object:*(*(a1 + 32) + 80)];
  v5 = *(*(a1 + 32) + 136);

  dispatch_group_leave(v5);
}

- (void)dealloc
{
  [(AVCaptureFigAudioDevice *)self _setFigCaptureSource:0];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

  dispatch_release(self->_audioRoutesInfoFirstQueryGroup);
  sharedAVAudioSessionClock = self->_sharedAVAudioSessionClock;
  if (sharedAVAudioSessionClock)
  {
    CFRelease(sharedAVAudioSessionClock);
  }

  v4.receiver = self;
  v4.super_class = AVCaptureFigAudioDevice;
  [(AVCaptureDevice *)&v4 dealloc];
}

- (void)_setFigCaptureSource:(OpaqueFigCaptureSource *)a3
{
  fcsQueue = self->_fcsQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__AVCaptureFigAudioDevice__setFigCaptureSource___block_invoke;
  v4[3] = &unk_1E786ECD0;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(fcsQueue, v4);
}

void *__48__AVCaptureFigAudioDevice__setFigCaptureSource___block_invoke(void *result)
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
        v12 = 0;
        v4 = *(v3[4] + 48);
        v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v5)
        {
          if (!v5(v4, *MEMORY[0x1E6990880], *MEMORY[0x1E695E480], &v12) && v12 != 0)
          {
            v7 = [v12 intValue];
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

      [objc_msgSend(MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:{CMNotificationCenterGetDefaultLocalCenter()), "removeListenerWithWeakReference:callback:name:object:", *(v3[4] + 152), fad_figCaptureSourceNotificationHandler, 0, *(v3[4] + 48)}];
      v11 = *(v3[4] + 48);
      if (v11)
      {
        CFRelease(v11);
        *(v3[4] + 48) = 0;
      }
    }

    result = v3[5];
    if (result)
    {
      *(v3[4] + 48) = CFRetain(result);
      return [objc_msgSend(MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:{CMNotificationCenterGetDefaultLocalCenter()), "addListenerWithWeakReference:callback:name:object:flags:", *(v3[4] + 152), fad_figCaptureSourceNotificationHandler, 0, v3[5], 0}];
    }
  }

  return result;
}

- (id)figCaptureSourceAudioSettingsForSessionPreset:(id)a3
{
  v4 = [(NSDictionary *)self->_attributes objectForKeyedSubscript:*MEMORY[0x1E69900A8]];

  return [v4 objectForKeyedSubscript:a3];
}

- (BOOL)isBuiltInStereoAudioCaptureSupported
{
  v2 = [(NSDictionary *)self->_attributes objectForKeyedSubscript:*MEMORY[0x1E69900D8]];

  return [v2 BOOLValue];
}

- (BOOL)isAudioCaptureModeSupported:(int64_t)a3
{
  if (a3 > 3)
  {
    v5 = a3 == 6 || a3 == 7;
    v6 = a3 == 4 || a3 == 5;
    if (a3 <= 5)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    if (a3 > 1)
    {
      if (a3 != 2)
      {
        return 1;
      }

      attributes = self->_attributes;
      v4 = MEMORY[0x1E69900F0];
    }

    else
    {
      if (!a3)
      {
        return 1;
      }

      if (a3 != 1)
      {
        return 0;
      }

      attributes = self->_attributes;
      v4 = MEMORY[0x1E69900D8];
    }

    v8 = [(NSDictionary *)attributes objectForKeyedSubscript:*v4];

    return [v8 BOOLValue];
  }
}

- (int64_t)fallbackAudioCaptureModeIfApplicableForCurrentRoute:(int64_t)a3
{
  v3 = a3;
  if ((a3 | 4) == 6 && ![(AVCaptureFigAudioDevice *)self isAudioInputRouteBuiltInMic])
  {
    if (dword_1ED806960)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return 0;
  }

  return v3;
}

- (BOOL)isAudioInputRouteBuiltInMic
{
  dispatch_group_wait(self->_audioRoutesInfoFirstQueryGroup, 0xFFFFFFFFFFFFFFFFLL);
  os_unfair_lock_lock(&self->_audioRoutesInfoLock);
  audioInputRouteIsBuiltInMic = self->_audioInputRouteIsBuiltInMic;
  os_unfair_lock_unlock(&self->_audioRoutesInfoLock);
  return audioInputRouteIsBuiltInMic;
}

- (void)setAllowsBluetoothHighQualityRecording:(BOOL)a3
{
  audioRoutesInfoUpdateQueue = self->_audioRoutesInfoUpdateQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__AVCaptureFigAudioDevice_setAllowsBluetoothHighQualityRecording___block_invoke;
  v4[3] = &unk_1E786EE40;
  v5 = a3;
  v4[4] = self;
  dispatch_async(audioRoutesInfoUpdateQueue, v4);
}

uint64_t __66__AVCaptureFigAudioDevice_setAllowsBluetoothHighQualityRecording___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(result + 32);
  if (v1 != *(v2 + 192))
  {
    v3 = result;
    if (dword_1ED806960)
    {
      v10 = 0;
      v9 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      LOBYTE(v1) = *(v3 + 40);
      v2 = *(v3 + 32);
    }

    *(v2 + 192) = v1;
    if (*(v3 + 40))
    {
      v5 = 0x80000;
    }

    else
    {
      v5 = 0;
    }

    [*(*(v3 + 32) + 80) setCategory:*MEMORY[0x1E6958060] withOptions:v5 error:{0, v7, v8}];
    result = [objc_msgSend(MEMORY[0x1E6958460] "sharedInstance")];
    if ((result & 1) == 0 && (*(v3 + 40) & 1) == 0)
    {
      v6 = *(*(v3 + 32) + 88);
      result = [v6 deviceType];
      if (!result)
      {
        result = [v6 supportsHighQualityContentCapture];
        if (result)
        {
          result = [v6 isHighQualityContentCaptureEnabled];
          if (result)
          {

            *(*(v3 + 32) + 88) = 0;
            return [*(v3 + 32) _updateStateForInputDevice:0];
          }
        }
      }
    }
  }

  return result;
}

- (id)_copyFigCaptureSourceProperty:(__CFString *)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__11;
  fcsQueue = self->_fcsQueue;
  v11 = __Block_byref_object_dispose__11;
  v12 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__AVCaptureFigAudioDevice__copyFigCaptureSourceProperty___block_invoke;
  block[3] = &unk_1E7870018;
  block[5] = &v7;
  block[6] = a3;
  block[4] = self;
  dispatch_sync(fcsQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __57__AVCaptureFigAudioDevice__copyFigCaptureSourceProperty___block_invoke(void *a1)
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

- (BOOL)_currentAudioInputRouteIsBuiltInMic
{
  committedInputDevice = self->_committedInputDevice;
  if (committedInputDevice)
  {
    LOBYTE(v3) = [(AVInputDevice *)self->_committedInputDevice deviceType]== 2 && [(AVInputDevice *)committedInputDevice deviceSubType]== 1;
  }

  else
  {
    v4 = [(AVInputDeviceDiscoverySession *)self->_inputDeviceDiscoverySession availableInputDevices];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = [v4 countByEnumeratingWithState:&v10 objects:v9 count:16];
    if (v3)
    {
      v5 = *v11;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(v4);
          }

          v7 = *(*(&v10 + 1) + 8 * i);
          if ([v7 deviceType] == 2 && objc_msgSend(v7, "deviceSubType") == 1)
          {
            LOBYTE(v3) = 1;
            goto LABEL_16;
          }
        }

        v3 = [v4 countByEnumeratingWithState:&v10 objects:v9 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
    if (![v4 count])
    {
      LOBYTE(v3) = fad_isRunningOnDeviceClass(@"iPhone") || fad_isRunningOnDeviceClass(@"iPad");
    }
  }

  return v3;
}

- (BOOL)_systemHasAudioInputDevice
{
  if (self->_committedInputDevice || [-[AVInputDeviceDiscoverySession availableInputDevices](self->_inputDeviceDiscoverySession "availableInputDevices")] > 0 || fad_isRunningOnDeviceClass(@"iPhone"))
  {
    return 1;
  }

  return fad_isRunningOnDeviceClass(@"iPad");
}

- (id)_currentAudioInputDeviceLocalizedName:(id)a3
{
  if (self->_committedInputDevice)
  {
    committedInputDevice = self->_committedInputDevice;

    return [(AVInputDevice *)committedInputDevice deviceName];
  }

  else
  {
    v17 = v3;
    v18 = v4;
    v7 = [(AVInputDeviceDiscoverySession *)self->_inputDeviceDiscoverySession availableInputDevices];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    result = [v7 countByEnumeratingWithState:&v13 objects:v12 count:16];
    if (result)
    {
      v8 = result;
      v9 = *v14;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v13 + 1) + 8 * v10);
          if ([v11 deviceType] == 2 && objc_msgSend(v11, "deviceSubType") == 1)
          {
            return [v11 deviceName];
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        result = [v7 countByEnumeratingWithState:&v13 objects:v12 count:16];
        v8 = result;
        if (result)
        {
          continue;
        }

        break;
      }
    }
  }

  return result;
}

- (void)audioInputDeviceDidChangeHandler:(id)a3
{
  v4 = [objc_msgSend(a3 "object")];
  audioRoutesInfoUpdateQueue = self->_audioRoutesInfoUpdateQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__AVCaptureFigAudioDevice_audioInputDeviceDidChangeHandler___block_invoke;
  v6[3] = &unk_1E786EAA8;
  v6[4] = self;
  v6[5] = v4;
  dispatch_sync(audioRoutesInfoUpdateQueue, v6);
}

- (void)_updateStateForInputDevice:(id)a3
{
  if (!_FigIsCurrentDispatchQueue())
  {
    [AVCaptureFigAudioDevice _updateStateForInputDevice:];
  }

  if (dword_1ED806960)
  {
    v60 = 0;
    v59 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = [(AVInputDeviceDiscoverySession *)self->_inputDeviceDiscoverySession availableInputDevices:v34];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v55 objects:v54 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v56;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v56 != v9)
        {
          objc_enumerationMutation(obj);
        }

        if (dword_1ED806960)
        {
          v11 = *(*(&v55 + 1) + 8 * i);
          v60 = 0;
          v59 = OS_LOG_TYPE_DEFAULT;
          v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v13 = v60;
          if (os_log_type_enabled(v12, v59))
          {
            v14 = v13;
          }

          else
          {
            v14 = v13 & 0xFFFFFFFE;
          }

          if (v14)
          {
            v15 = _inputDeviceString(v11);
            v48 = 136315906;
            v49 = "[AVCaptureFigAudioDevice _updateStateForInputDevice:]";
            v50 = 2048;
            v51 = self;
            v52 = 1024;
            v53[0] = v8;
            LOWORD(v53[1]) = 2112;
            *(&v53[1] + 2) = v15;
            LODWORD(v37) = 38;
            v35 = &v48;
            _os_log_send_and_compose_impl();
            ++v8;
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      v7 = [obj countByEnumeratingWithState:&v55 objects:v54 count:16];
    }

    while (v7);
  }

  v16 = a3;
  if (a3 || !self->_committedInputDevice)
  {
    goto LABEL_20;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v21 = [obj countByEnumeratingWithState:&v44 objects:v43 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v45;
    while (2)
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v45 != v23)
        {
          objc_enumerationMutation(obj);
        }

        if ([(AVInputDevice *)self->_committedInputDevice isEqualToInputDevice:*(*(&v44 + 1) + 8 * j), v35, v37])
        {
          if (dword_1ED806960)
          {
            v60 = 0;
            v59 = OS_LOG_TYPE_DEFAULT;
            v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v29 = v60;
            if (os_log_type_enabled(v28, v59))
            {
              v30 = v29;
            }

            else
            {
              v30 = v29 & 0xFFFFFFFE;
            }

            if (v30)
            {
              v48 = 136315394;
              v49 = "[AVCaptureFigAudioDevice _updateStateForInputDevice:]";
              v50 = 2048;
              v51 = self;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          return;
        }
      }

      v22 = [obj countByEnumeratingWithState:&v44 objects:v43 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }
  }

  if ([obj count])
  {
    if (dword_1ED806960)
    {
      v60 = 0;
      v59 = OS_LOG_TYPE_DEFAULT;
      v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v26 = v60;
      if (os_log_type_enabled(v25, v59))
      {
        v27 = v26;
      }

      else
      {
        v27 = v26 & 0xFFFFFFFE;
      }

      if (!v27)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }
  }

  else if (dword_1ED806960)
  {
    v60 = 0;
    v59 = OS_LOG_TYPE_DEFAULT;
    v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v32 = v60;
    if (os_log_type_enabled(v31, v59))
    {
      v33 = v32;
    }

    else
    {
      v33 = v32 & 0xFFFFFFFE;
    }

    if (!v33)
    {
      goto LABEL_51;
    }

LABEL_49:
    v48 = 136315394;
    v49 = "[AVCaptureFigAudioDevice _updateStateForInputDevice:]";
    v50 = 2048;
    v51 = self;
    _os_log_send_and_compose_impl();
LABEL_51:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v16 = 0;
  }

LABEL_20:
  v17 = v16;

  self->_committedInputDevice = v16;
  v18 = [(AVCaptureFigAudioDevice *)self _currentAudioInputDeviceLocalizedName:self->_attributes];
  v19 = [(AVCaptureFigAudioDevice *)self _currentAudioInputRouteIsBuiltInMic];
  v20 = [(AVCaptureFigAudioDevice *)self _systemHasAudioInputDevice];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__AVCaptureFigAudioDevice__updateStateForInputDevice___block_invoke;
  block[3] = &unk_1E7876628;
  block[4] = self;
  block[5] = v18;
  v41 = v19;
  v42 = v20;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __54__AVCaptureFigAudioDevice__updateStateForInputDevice___block_invoke(uint64_t a1)
{
  if (([objc_msgSend(*(a1 + 32) "localizedName")] & 1) == 0)
  {
    if (dword_1ED806960)
    {
      v21 = 0;
      v20 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [*(a1 + 32) willChangeValueForKey:{@"localizedName", v13, v14}];
    os_unfair_lock_lock((*(a1 + 32) + 108));
    v3 = *(a1 + 40);

    *(*(a1 + 32) + 112) = *(a1 + 40);
    os_unfair_lock_unlock((*(a1 + 32) + 108));
    [*(a1 + 32) didChangeValueForKey:@"localizedName"];
  }

  if (*(a1 + 48) != [*(a1 + 32) isAudioInputRouteBuiltInMic])
  {
    if (dword_1ED806960)
    {
      v21 = 0;
      v20 = OS_LOG_TYPE_DEFAULT;
      v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [*(a1 + 32) willChangeValueForKey:{@"audioInputRouteIsBuiltInMic", v13, v14, *v15}];
    os_unfair_lock_lock((*(a1 + 32) + 128));
    *(*(a1 + 32) + 144) = *(a1 + 48);
    os_unfair_lock_unlock((*(a1 + 32) + 128));
    [*(a1 + 32) didChangeValueForKey:@"audioInputRouteIsBuiltInMic"];
  }

  result = [*(a1 + 32) isConnected];
  if (*(a1 + 49) != result)
  {
    if (dword_1ED806960)
    {
      v6 = result;
      v21 = 0;
      v20 = OS_LOG_TYPE_DEFAULT;
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v8 = v21;
      if (os_log_type_enabled(v7, v20))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
        v10 = *(a1 + 32);
        v11 = *(a1 + 49);
        *v15 = 136315906;
        *&v15[4] = "[AVCaptureFigAudioDevice _updateStateForInputDevice:]_block_invoke";
        *&v15[12] = 2048;
        *&v15[14] = v10;
        v16 = 1024;
        v17 = v6;
        v18 = 1024;
        v19 = v11;
        LODWORD(v14) = 34;
        v13 = v15;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (*(a1 + 49))
      {
        goto LABEL_19;
      }
    }

    else if (*(a1 + 49))
    {
LABEL_19:
      v12 = @"AVCaptureDeviceWasConnectedNotification";
      *(*(a1 + 32) + 105) = 0;
      goto LABEL_20;
    }

    v12 = @"AVCaptureDeviceWasDisconnectedNotification";
LABEL_20:
    [*(a1 + 32) willChangeValueForKey:{@"connected", v13, v14}];
    os_unfair_lock_lock((*(a1 + 32) + 100));
    *(*(a1 + 32) + 104) = *(a1 + 49);
    os_unfair_lock_unlock((*(a1 + 32) + 100));
    [*(a1 + 32) didChangeValueForKey:@"connected"];
    return [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  return result;
}

- (void)audioServicesWereResetHandler:(id)a3
{
  audioRoutesInfoUpdateQueue = self->_audioRoutesInfoUpdateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__AVCaptureFigAudioDevice_audioServicesWereResetHandler___block_invoke;
  block[3] = &unk_1E786EC08;
  block[4] = self;
  dispatch_async(audioRoutesInfoUpdateQueue, block);
}

uint64_t __57__AVCaptureFigAudioDevice_audioServicesWereResetHandler___block_invoke(uint64_t a1)
{
  if (dword_1ED806960)
  {
    v37 = 0;
    v36 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *(a1 + 32);
  if (*(v3 + 192))
  {
    v4 = 0x80000;
  }

  else
  {
    v4 = 0;
  }

  [*(v3 + 80) setCategory:*MEMORY[0x1E6958060] withOptions:v4 error:{0, v21, v23}];
  [*(*(a1 + 32) + 64) setAudioSessionID:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(*(*(a1 + 32) + 80), "opaqueSessionID"))}];
  v5 = [*(*(a1 + 32) + 64) availableInputDevices];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v32 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
LABEL_8:
    v9 = 0;
    while (1)
    {
      if (*v33 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v32 + 1) + 8 * v9);
      if ([v10 deviceType] == 2 && objc_msgSend(v10, "deviceSubType") == 1)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v32 objects:v31 count:16];
        if (v7)
        {
          goto LABEL_8;
        }

        goto LABEL_17;
      }
    }

    if (v10)
    {
      return [*(a1 + 32) _updateStateForInputDevice:{v10, v22, v24}];
    }
  }

LABEL_17:
  result = [v5 count];
  if (result)
  {
    result = [v5 objectAtIndexedSubscript:0];
    v10 = result;
    if (dword_1ED806960)
    {
      v37 = 0;
      v36 = OS_LOG_TYPE_DEFAULT;
      v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v13 = v37;
      if (os_log_type_enabled(v12, v36))
      {
        v14 = v13;
      }

      else
      {
        v14 = v13 & 0xFFFFFFFE;
      }

      if (v14)
      {
        v15 = *(a1 + 32);
        v16 = _inputDeviceString(v10);
        v25 = 136315650;
        v26 = "[AVCaptureFigAudioDevice audioServicesWereResetHandler:]_block_invoke";
        v27 = 2048;
        v28 = v15;
        v29 = 2112;
        v30 = v16;
        LODWORD(v24) = 32;
        v22 = &v25;
        _os_log_send_and_compose_impl();
      }

      result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v10)
    {
      return [*(a1 + 32) _updateStateForInputDevice:{v10, v22, v24}];
    }
  }

  if (dword_1ED806960)
  {
    v37 = 0;
    v36 = OS_LOG_TYPE_DEFAULT;
    v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v18 = v37;
    if (os_log_type_enabled(v17, v36))
    {
      v19 = v18;
    }

    else
    {
      v19 = v18 & 0xFFFFFFFE;
    }

    if (v19)
    {
      v20 = *(a1 + 32);
      v25 = 136315394;
      v26 = "[AVCaptureFigAudioDevice audioServicesWereResetHandler:]_block_invoke";
      v27 = 2048;
      v28 = v20;
      _os_log_send_and_compose_impl();
    }

    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

- (void)_reconnectToFigCaptureSource:(OpaqueFigCaptureSource *)a3
{
  v5 = [(AVCaptureFigAudioDevice *)self _copyFigCaptureSourceProperty:*MEMORY[0x1E6990888]];
  if (v5 == *MEMORY[0x1E695E4D0])
  {
    dispatch_semaphore_wait(self->_serverConnectionDiedSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  [(AVCaptureFigAudioDevice *)self _setFigCaptureSource:a3];
}

- (void)_handleNotification:(__CFString *)a3 payload:(id)a4
{
  if (CFEqual(a3, *MEMORY[0x1E6990540]))
  {
    v5 = [(AVCaptureFigAudioDevice *)self _copyFigCaptureSourceProperty:*MEMORY[0x1E6990888]];
    if (v5 != *MEMORY[0x1E695E4C0])
    {
      v6 = v5;
      dispatch_semaphore_signal(self->_serverConnectionDiedSemaphore);
      if (v6)
      {

        CFRelease(v6);
      }
    }
  }
}

@end