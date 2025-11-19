@interface AVCaptureExternalDisplayConfigurator
+ (void)initialize;
+ (void)registerConfigurator:(id)a3 withDisplayIdentifier:(id)a4;
- (AVCaptureExternalDisplayConfigurator)initWithDevice:(id)a3 previewLayer:(id)a4 configuration:(id)a5;
- (BOOL)externalDisplayAndCaptureDeviceSynchronized;
- (void)_configureExternalDisplay;
- (void)_configureExternalDisplayColorspace;
- (void)_configureExternalDisplayFrameRate;
- (void)_deviceColorspaceChangeMonitorConfigure;
- (void)_deviceColorspaceChangeMonitorTeardown;
- (void)_deviceFramerateChangedMonitorConfigure;
- (void)_deviceFramerateChangedMonitorTeardown;
- (void)_dispatchConfiguration;
- (void)_displayConfigurationChangedMonitorConfigure;
- (void)_displayConfigurationChangedMonitorTeardown;
- (void)_externalDisplayConfigurationChangedHandler;
- (void)_getConfigurationWithCompletion:(id)a3;
- (void)_makeInActive;
- (void)_setup;
- (void)dealloc;
- (void)dispatchConfiguration;
- (void)externalDisplayConfigurationChangedNotification:(id)a3;
- (void)externalDisplayLayerObserver:(id)a3 visibiltyChanged:(BOOL)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)registerSelfForDisplay:(id)a3;
- (void)stop;
@end

@implementation AVCaptureExternalDisplayConfigurator

+ (void)registerConfigurator:(id)a3 withDisplayIdentifier:(id)a4
{
  if (registerConfigurator_withDisplayIdentifier__onceToken == -1)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    +[AVCaptureExternalDisplayConfigurator registerConfigurator:withDisplayIdentifier:];
    if (a4)
    {
LABEL_3:
      v6 = objc_opt_class();
      objc_sync_enter(v6);
      v7 = [registerConfigurator_withDisplayIdentifier__configuratorRegistry objectForKey:a4];
      if (v7)
      {
        v8 = [v7 referencedObject];
        v9 = v8;
        if (v8)
        {
          if ([v8 isActive])
          {
            if (dword_1EB3859D8)
            {
              v16 = 0;
              v15 = 0;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            [v9 _makeInActive];
          }
        }
      }

      if (dword_1EB3859D8)
      {
        v16 = 0;
        v15 = 0;
        v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [registerConfigurator_withDisplayIdentifier__configuratorRegistry setObject:*(a3 + 1) forKey:{a4, v13, v14}];
      objc_sync_exit(v6);
      return;
    }
  }

  if (dword_1EB3859D8)
  {
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

id __83__AVCaptureExternalDisplayConfigurator_registerConfigurator_withDisplayIdentifier___block_invoke()
{
  result = objc_alloc_init(MEMORY[0x1E695DF90]);
  registerConfigurator_withDisplayIdentifier__configuratorRegistry = result;
  return result;
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

- (AVCaptureExternalDisplayConfigurator)initWithDevice:(id)a3 previewLayer:(id)a4 configuration:(id)a5
{
  if (a3)
  {
    if (a4)
    {
      if ([a5 shouldMatchFrameRate] && !+[AVCaptureExternalDisplayConfigurator isMatchingFrameRateSupported](AVCaptureExternalDisplayConfigurator, "isMatchingFrameRateSupported"))
      {
        v11 = MEMORY[0x1E695DF30];
        v12 = *MEMORY[0x1E695D940];
      }

      else if ([a5 bypassColorSpaceConversion] && !+[AVCaptureExternalDisplayConfigurator isBypassingColorSpaceConversionSupported](AVCaptureExternalDisplayConfigurator, "isBypassingColorSpaceConversionSupported"))
      {
        v11 = MEMORY[0x1E695DF30];
        v12 = *MEMORY[0x1E695D940];
      }

      else
      {
        [a5 preferredResolution];
        if (CMVideoDimensionsAreEqual())
        {
          goto LABEL_8;
        }

        if (+[AVCaptureExternalDisplayConfigurator isPreferredResolutionSupported])
        {
          if (([a5 preferredResolution] & 0x80000000) == 0 && (objc_msgSend(a5, "preferredResolution") & 0x8000000000000000) == 0)
          {
LABEL_8:
            v22.receiver = self;
            v22.super_class = AVCaptureExternalDisplayConfigurator;
            v9 = [(AVCaptureExternalDisplayConfigurator *)&v22 init];
            if (v9)
            {
              v9->_configuratorWeakReference = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:v9];
              v9->_deviceWeakReference = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:a3];
              v9->_previewLayerWeakReference = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:a4];
              v9->_queue = dispatch_queue_create("com.apple.avcaptureexternaldisplayconfigurator", 0);
              v9->_configuration = a5;
              v9->_identifier = objc_alloc_init(MEMORY[0x1E696AFB0]);
              if (dword_1EB3859D8)
              {
                v21 = 0;
                v20 = 0;
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              [(AVCaptureExternalDisplayConfigurator *)v9 _displayConfigurationChangedMonitorConfigure:v17];
              [(AVCaptureExternalDisplayConfigurator *)v9 _deviceColorspaceChangeMonitorConfigure];
              [(AVCaptureExternalDisplayConfigurator *)v9 _deviceFramerateChangedMonitorConfigure];
              v9->_active = 1;
              v15 = [[AVCaptureVisibilityHelperLayer alloc] initWithDelegate:v9];
              v9->_observationLayer = v15;
              [a4 addSublayer:v15];
              if ([a4 context])
              {
                queue = v9->_queue;
                block[0] = MEMORY[0x1E69E9820];
                block[1] = 3221225472;
                block[2] = __82__AVCaptureExternalDisplayConfigurator_initWithDevice_previewLayer_configuration___block_invoke;
                block[3] = &unk_1E786EC08;
                block[4] = v9;
                dispatch_async(queue, block);
              }
            }

            return v9;
          }

          v11 = MEMORY[0x1E695DF30];
          v12 = *MEMORY[0x1E695D940];
        }

        else
        {
          v11 = MEMORY[0x1E695DF30];
          v12 = *MEMORY[0x1E695D940];
        }
      }
    }

    else
    {
      v11 = MEMORY[0x1E695DF30];
      v12 = *MEMORY[0x1E695D940];
    }
  }

  else
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
  }

  v13 = [v11 exceptionWithName:v12 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];

  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v13);
  }

  NSLog(&cfstr_SuppressingExc.isa, v13);
  return 0;
}

- (void)_setup
{
  if (dword_1EB3859D8)
  {
    v9 = 0;
    v8 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  configuratorWeakReference = self->_configuratorWeakReference;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__AVCaptureExternalDisplayConfigurator__setup__block_invoke;
  v7[3] = &unk_1E786EDC8;
  v7[4] = configuratorWeakReference;
  [(AVCaptureExternalDisplayConfigurator *)self _getConfigurationWithCompletion:v7, v5, v6];
}

void *__46__AVCaptureExternalDisplayConfigurator__setup__block_invoke(uint64_t a1, void *a2)
{
  result = [*(a1 + 32) referencedObject];
  if (!result)
  {
LABEL_8:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = result;
  if (!a2)
  {
    if (!dword_1EB3859D8)
    {
      return result;
    }

    goto LABEL_8;
  }

  [result registerSelfForDisplay:{objc_msgSend(a2, "hardwareIdentifier")}];

  return [v4 dispatchConfiguration];
}

- (void)dealloc
{
  if (dword_1EB3859D8)
  {
    v10 = 0;
    v9 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(AVCaptureExternalDisplayConfigurator *)self _deviceColorspaceChangeMonitorTeardown:v6];
  [(AVCaptureExternalDisplayConfigurator *)self _deviceFramerateChangedMonitorTeardown];
  [(AVCaptureExternalDisplayConfigurator *)self _displayConfigurationChangedMonitorTeardown];
  configurationBlock = self->_configurationBlock;
  if (configurationBlock)
  {
    dispatch_block_cancel(configurationBlock);
  }

  configurationTimeoutBlock = self->_configurationTimeoutBlock;
  if (configurationTimeoutBlock)
  {
    dispatch_block_cancel(configurationTimeoutBlock);
  }

  [(AVCaptureExternalDisplayConfigurator *)self previewLayer];
  if (objc_opt_respondsToSelector())
  {
    [(CALayer *)[(AVCaptureExternalDisplayConfigurator *)self previewLayer] setAllowsColorMatching:1];
  }

  [(AVCaptureExternalDisplayConfigurator *)self _makeInActive];
  [(AVCaptureVisibilityHelperLayer *)self->_observationLayer removeFromSuperlayer];

  v8.receiver = self;
  v8.super_class = AVCaptureExternalDisplayConfigurator;
  [(AVCaptureExternalDisplayConfigurator *)&v8 dealloc];
}

- (void)_deviceColorspaceChangeMonitorConfigure
{
  if (dword_1EB3859D8)
  {
    v7 = 0;
    v6 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([(AVCaptureExternalDisplayConfiguration *)self->_configuration bypassColorSpaceConversion:v4])
  {
    if (![(AVCaptureExternalDisplayConfigurator *)self observingDeviceColorspace])
    {
      [(AVCaptureDevice *)[(AVCaptureExternalDisplayConfigurator *)self device] addObserver:self forKeyPath:@"activeColorSpace" options:1 context:&AVCaptureExternalPreviewLayerConfiguratorActiveColorSpaceChangedContext];
      [(AVCaptureExternalDisplayConfigurator *)self setObservingDeviceColorspace:1];
    }
  }
}

- (void)_deviceColorspaceChangeMonitorTeardown
{
  if (dword_1EB3859D8)
  {
    v7 = 0;
    v6 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([(AVCaptureExternalDisplayConfigurator *)self observingDeviceColorspace:v4])
  {
    [(AVCaptureDevice *)[(AVCaptureExternalDisplayConfigurator *)self device] removeObserver:self forKeyPath:@"activeColorSpace"];
    [(AVCaptureExternalDisplayConfigurator *)self setObservingDeviceColorspace:0];
  }
}

- (void)_displayConfigurationChangedMonitorConfigure
{
  if (dword_1EB3859D8)
  {
    v7 = 0;
    v6 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
}

- (void)_displayConfigurationChangedMonitorTeardown
{
  if (dword_1EB3859D8)
  {
    v7 = 0;
    v6 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
}

- (void)_deviceFramerateChangedMonitorConfigure
{
  if (dword_1EB3859D8)
  {
    v7 = 0;
    v6 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([(AVCaptureExternalDisplayConfiguration *)self->_configuration shouldMatchFrameRate:v4])
  {
    if (![(AVCaptureExternalDisplayConfigurator *)self observingDeviceFramerate])
    {
      [(AVCaptureDevice *)[(AVCaptureExternalDisplayConfigurator *)self device] addObserver:self forKeyPath:@"activeVideoMinFrameDuration" options:1 context:&AVCaptureExternalPreviewLayerConfiguratorMinFrameDurationChangedContext];
      [(AVCaptureExternalDisplayConfigurator *)self setObservingDeviceFramerate:1];
    }
  }
}

- (void)_deviceFramerateChangedMonitorTeardown
{
  if (dword_1EB3859D8)
  {
    v7 = 0;
    v6 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([(AVCaptureExternalDisplayConfigurator *)self observingDeviceFramerate:v4])
  {
    [(AVCaptureDevice *)[(AVCaptureExternalDisplayConfigurator *)self device] removeObserver:self forKeyPath:@"activeVideoMinFrameDuration"];
    [(AVCaptureExternalDisplayConfigurator *)self setObservingDeviceFramerate:0];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  configuratorWeakReference = self->_configuratorWeakReference;
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __87__AVCaptureExternalDisplayConfigurator_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v8[3] = &unk_1E786EDF0;
  v8[4] = configuratorWeakReference;
  v8[5] = a4;
  v8[6] = a3;
  v8[7] = a6;
  dispatch_async(queue, v8);
}

uint64_t __87__AVCaptureExternalDisplayConfigurator_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) referencedObject];
  if (!v2)
  {
    v11 = 0;
    v10 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = v2;
  result = [*(a1 + 40) isEqual:{objc_msgSend(v2, "device")}];
  if (!result)
  {
    return result;
  }

  if (dword_1EB3859D8)
  {
    v11 = 0;
    v10 = 0;
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = *(a1 + 56);
  if (v7 == AVCaptureExternalPreviewLayerConfiguratorActiveColorSpaceChangedContext)
  {
    result = [v3[5] bypassColorSpaceConversion];
    if (result)
    {
      return [v3 _dispatchConfiguration];
    }

    v7 = *(a1 + 56);
  }

  if (v7 == AVCaptureExternalPreviewLayerConfiguratorMinFrameDurationChangedContext)
  {
    result = [v3[5] shouldMatchFrameRate];
    if (result)
    {
      return [v3 _dispatchConfiguration];
    }
  }

  return result;
}

- (void)registerSelfForDisplay:(id)a3
{
  if (a3)
  {
    configuratorWeakReference = self->_configuratorWeakReference;
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__AVCaptureExternalDisplayConfigurator_registerSelfForDisplay___block_invoke;
    block[3] = &unk_1E786EAA8;
    block[4] = configuratorWeakReference;
    block[5] = a3;
    dispatch_async(queue, block);
  }

  else if (dword_1EB3859D8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

uint64_t __63__AVCaptureExternalDisplayConfigurator_registerSelfForDisplay___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) referencedObject];
  if (v2)
  {
    v3 = v2;
    result = [v2 registered];
    if ((result & 1) == 0)
    {
      [AVCaptureExternalDisplayConfigurator registerConfigurator:v3 withDisplayIdentifier:*(a1 + 40)];

      return [v3 setRegistered:1];
    }
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

- (void)dispatchConfiguration
{
  configuratorWeakReference = self->_configuratorWeakReference;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__AVCaptureExternalDisplayConfigurator_dispatchConfiguration__block_invoke;
  block[3] = &unk_1E786EC08;
  block[4] = configuratorWeakReference;
  dispatch_async(queue, block);
}

uint64_t __61__AVCaptureExternalDisplayConfigurator_dispatchConfiguration__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) referencedObject];
  if (v1)
  {

    return [v1 _dispatchConfiguration];
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (void)_dispatchConfiguration
{
  dispatch_assert_queue_V2(self->_queue);
  if (![(AVCaptureExternalDisplayConfigurator *)self isActive]|| ![(AVCaptureExternalDisplayConfigurator *)self registered])
  {
    if (!dword_1EB3859D8)
    {
      return;
    }

    goto LABEL_7;
  }

  if (self->_configurationBlock)
  {
    if (!dword_1EB3859D8)
    {
      return;
    }

LABEL_7:
    v19 = 0;
    v18 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return;
  }

  configuratorWeakReference = self->_configuratorWeakReference;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__AVCaptureExternalDisplayConfigurator__dispatchConfiguration__block_invoke;
  block[3] = &unk_1E786EC08;
  block[4] = configuratorWeakReference;
  v5 = dispatch_block_create(0, block);
  self->_configurationBlock = v5;
  if (dword_1EB3859D8)
  {
    v19 = 0;
    v18 = OS_LOG_TYPE_DEFAULT;
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v7 = v19;
    if (os_log_type_enabled(v6, v18))
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 & 0xFFFFFFFE;
    }

    if (v8)
    {
      configurationBlock = self->_configurationBlock;
      v12 = 136315650;
      v13 = "[AVCaptureExternalDisplayConfigurator _dispatchConfiguration]";
      v14 = 2114;
      v15 = self;
      v16 = 2114;
      v17 = configurationBlock;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v10 = self->_configurationBlock;
  }

  else
  {
    v10 = v5;
  }

  dispatch_async(self->_queue, v10);
}

uint64_t __62__AVCaptureExternalDisplayConfigurator__dispatchConfiguration__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) referencedObject];
  if (v1)
  {
    v1[6] = 0;
    if (v1[7])
    {

      return [v1 setRetryConfiguration:1];
    }

    else
    {

      return [v1 _configureExternalDisplay];
    }
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (void)_configureExternalDisplay
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(AVCaptureExternalDisplayConfigurator *)self externalDisplayAndCaptureDeviceSynchronized];
  if (dword_1EB3859D8)
  {
    v9 = 0;
    v8 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!v3)
  {
    [(AVCaptureExternalDisplayConfigurator *)self _configureExternalDisplayColorspace];
    [(AVCaptureExternalDisplayConfigurator *)self _configureExternalDisplayFrameRate];
    configuratorWeakReference = self->_configuratorWeakReference;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__AVCaptureExternalDisplayConfigurator__configureExternalDisplay__block_invoke;
    block[3] = &unk_1E786EC08;
    block[4] = configuratorWeakReference;
    self->_configurationTimeoutBlock = dispatch_block_create(0, block);
    v6 = dispatch_time(0, 7000000000);
    dispatch_after(v6, self->_queue, self->_configurationTimeoutBlock);
  }
}

uint64_t __65__AVCaptureExternalDisplayConfigurator__configureExternalDisplay__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) referencedObject];
  if (v1)
  {
    v2 = v1;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return [v2 _externalDisplayConfigurationChangedHandler];
  }

  else
  {
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (void)externalDisplayConfigurationChangedNotification:(id)a3
{
  v4 = [a3 userInfo];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v5 = getUISSDisplayConfigurationAffectedContextIDsKeySymbolLoc_ptr;
  v21 = getUISSDisplayConfigurationAffectedContextIDsKeySymbolLoc_ptr;
  if (!getUISSDisplayConfigurationAffectedContextIDsKeySymbolLoc_ptr)
  {
    v14[5] = MEMORY[0x1E69E9820];
    v14[6] = 3221225472;
    v14[7] = __getUISSDisplayConfigurationAffectedContextIDsKeySymbolLoc_block_invoke;
    v14[8] = &unk_1E786EC30;
    v15 = &v18;
    v6 = UIKitServicesLibrary_0();
    v19[3] = dlsym(v6, "UISSDisplayConfigurationAffectedContextIDsKey");
    getUISSDisplayConfigurationAffectedContextIDsKeySymbolLoc_ptr = *(v15[1] + 24);
    v5 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v5)
  {
    [AVCaptureExternalDisplayConfigurator externalDisplayConfigurationChangedNotification:];
  }

  v7 = [v4 objectForKey:*v5];
  v8 = [-[CALayer context](-[AVCaptureExternalDisplayConfigurator previewLayer](self "previewLayer")];
  if ([v7 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v8)}])
  {
    if (dword_1EB3859D8)
    {
      v17 = 0;
      v16 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    configuratorWeakReference = self->_configuratorWeakReference;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __88__AVCaptureExternalDisplayConfigurator_externalDisplayConfigurationChangedNotification___block_invoke;
    v14[3] = &unk_1E786EDC8;
    v14[4] = configuratorWeakReference;
    [(AVCaptureExternalDisplayConfigurator *)self _getConfigurationWithCompletion:v14, v12, v13];
  }

  else if (dword_1EB3859D8)
  {
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

void __88__AVCaptureExternalDisplayConfigurator_externalDisplayConfigurationChangedNotification___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) referencedObject];
  if (v4)
  {
    v5 = *(v4 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __88__AVCaptureExternalDisplayConfigurator_externalDisplayConfigurationChangedNotification___block_invoke_75;
    block[3] = &unk_1E786EAA8;
    block[4] = *(a1 + 32);
    block[5] = a2;
    dispatch_async(v5, block);
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

uint64_t __88__AVCaptureExternalDisplayConfigurator_externalDisplayConfigurationChangedNotification___block_invoke_75(uint64_t a1)
{
  v2 = [*(a1 + 32) referencedObject];
  if (v2)
  {
    v3 = v2;
    if (dword_1EB3859D8)
    {
      v11 = 0;
      v10 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      [v6 refreshRate];
      [v3 setActiveExternalDisplayFrameRate:?];
    }

    return [v3 _externalDisplayConfigurationChangedHandler];
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (void)_getConfigurationWithCompletion:(id)a3
{
  v4 = [-[CALayer context](-[AVCaptureExternalDisplayConfigurator previewLayer](self "previewLayer")];
  if (v4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__AVCaptureExternalDisplayConfigurator__getConfigurationWithCompletion___block_invoke;
    block[3] = &unk_1E786EE18;
    v7 = v4;
    block[4] = a3;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    if (dword_1EB3859D8)
    {
      v9 = 0;
      v8 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    (*(a3 + 2))(a3, 0);
  }
}

uint64_t __72__AVCaptureExternalDisplayConfigurator__getConfigurationWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v3 = getUISDisplayConfigurationForContextIDSymbolLoc_ptr;
  v9 = getUISDisplayConfigurationForContextIDSymbolLoc_ptr;
  if (!getUISDisplayConfigurationForContextIDSymbolLoc_ptr)
  {
    v4 = UIKitServicesLibrary_0();
    v7[3] = dlsym(v4, "UISDisplayConfigurationForContextID");
    getUISDisplayConfigurationForContextIDSymbolLoc_ptr = v7[3];
    v3 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v3)
  {
    __72__AVCaptureExternalDisplayConfigurator__getConfigurationWithCompletion___block_invoke_cold_1();
  }

  v3(v2);
  return (*(*(a1 + 32) + 16))();
}

- (void)_externalDisplayConfigurationChangedHandler
{
  dispatch_assert_queue_V2(self->_queue);
  if (dword_1EB3859D8)
  {
    v18 = 0;
    v17 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  configurationTimeoutBlock = self->_configurationTimeoutBlock;
  if (configurationTimeoutBlock)
  {
    dispatch_block_cancel(configurationTimeoutBlock);

    self->_configurationTimeoutBlock = 0;
  }

  if ([(AVCaptureExternalDisplayConfigurator *)self retryConfiguration:v9])
  {
    [(AVCaptureExternalDisplayConfigurator *)self _dispatchConfiguration];
  }

  if (dword_1EB3859D8)
  {
    v18 = 0;
    v17 = OS_LOG_TYPE_DEFAULT;
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v6 = v18;
    if (os_log_type_enabled(v5, v17))
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFE;
    }

    if (v7)
    {
      v8 = [(AVCaptureExternalDisplayConfigurator *)self externalDisplayAndCaptureDeviceSynchronized];
      v11 = 136315650;
      v12 = "[AVCaptureExternalDisplayConfigurator _externalDisplayConfigurationChangedHandler]";
      v13 = 2114;
      v14 = self;
      v15 = 1026;
      v16 = v8;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (BOOL)externalDisplayAndCaptureDeviceSynchronized
{
  v3 = [(AVCaptureExternalDisplayConfigurator *)self device];
  if (v3)
  {
    [(AVCaptureDevice *)v3 activeVideoMinFrameDuration];
    v4 = v13;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v4 = 0.0;
    v14 = 0;
  }

  v5 = [(AVCaptureExternalDisplayConfigurator *)self device];
  if (v5)
  {
    [(AVCaptureDevice *)v5 activeVideoMinFrameDuration];
    v6 = v9;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v6 = 0.0;
    v11 = 0;
  }

  result = 1;
  if ([(AVCaptureExternalDisplayConfiguration *)self->_configuration shouldMatchFrameRate:v9])
  {
    [(AVCaptureExternalDisplayConfigurator *)self activeExternalDisplayFrameRate];
    if (v7 != round(v4 / v6 * 1000.0) / 1000.0)
    {
      return 0;
    }
  }

  return result;
}

- (void)_configureExternalDisplayColorspace
{
  if ([(AVCaptureExternalDisplayConfiguration *)self->_configuration bypassColorSpaceConversion])
  {
    [(AVCaptureExternalDisplayConfigurator *)self previewLayer];
    if (objc_opt_respondsToSelector())
    {
      configuratorWeakReference = self->_configuratorWeakReference;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __75__AVCaptureExternalDisplayConfigurator__configureExternalDisplayColorspace__block_invoke;
      block[3] = &unk_1E786EC08;
      block[4] = configuratorWeakReference;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

uint64_t __75__AVCaptureExternalDisplayConfigurator__configureExternalDisplayColorspace__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) referencedObject];
  if (v1)
  {
    v2 = v1;
    if (dword_1EB3859D8)
    {
      v9 = 0;
      v8 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return [objc_msgSend(v2 previewLayer];
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (void)_configureExternalDisplayFrameRate
{
  if ([(AVCaptureExternalDisplayConfiguration *)self->_configuration shouldMatchFrameRate])
  {
    v3 = [(AVWeakReference *)self->_previewLayerWeakReference referencedObject];
    if (v3)
    {
      v4 = v3;
      v5 = [(AVCaptureExternalDisplayConfigurator *)self device];
      if (v5)
      {
        [(AVCaptureDevice *)v5 activeVideoMinFrameDuration];
        v6 = v21;
      }

      else
      {
        v20 = 0;
        v21 = 0;
        v6 = 0.0;
        v22 = 0;
      }

      v7 = [(AVCaptureExternalDisplayConfigurator *)self device];
      if (v7)
      {
        [(AVCaptureDevice *)v7 activeVideoMinFrameDuration];
        v8 = v17;
      }

      else
      {
        v17 = 0;
        v18 = 0;
        v8 = 0.0;
        v19 = 0;
      }

      v13[0] = 0;
      v13[1] = v13;
      v13[2] = 0x3052000000;
      v13[3] = __Block_byref_object_copy__1;
      v13[4] = __Block_byref_object_dispose__1;
      v13[5] = getFBSMutableDisplayConfigurationRequestClass_softClass;
      if (!getFBSMutableDisplayConfigurationRequestClass_softClass)
      {
        *v23 = MEMORY[0x1E69E9820];
        *&v23[8] = 3221225472;
        *&v23[16] = __getFBSMutableDisplayConfigurationRequestClass_block_invoke;
        v24 = &unk_1E786EC30;
        v25 = v13;
        __getFBSMutableDisplayConfigurationRequestClass_block_invoke(v23);
      }

      _Block_object_dispose(v13, 8);
      v9 = objc_opt_new();
      [v9 setRefreshRate:round(v6 / v8 * 1000.0) / 1000.0];
      [v9 setOverscanCompensation:0];
      if (objc_opt_respondsToSelector())
      {
        [v9 setDisableFrameDoubling:1];
      }

      [(AVCaptureExternalDisplayConfiguration *)self->_configuration preferredResolution];
      if (!CMVideoDimensionsAreEqual())
      {
        [v9 setNativePixelSize:{-[AVCaptureExternalDisplayConfiguration preferredResolution](self->_configuration, "preferredResolution"), (-[AVCaptureExternalDisplayConfiguration preferredResolution](self->_configuration, "preferredResolution") >> 32)}];
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __74__AVCaptureExternalDisplayConfigurator__configureExternalDisplayFrameRate__block_invoke;
      block[3] = &unk_1E786EAA8;
      block[4] = v4;
      block[5] = v9;
      dispatch_async(MEMORY[0x1E69E96A0], block);
      if (dword_1EB3859D8)
      {
        v15 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v11 = v15;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
        {
          v12 = v11;
        }

        else
        {
          v12 = v11 & 0xFFFFFFFE;
        }

        if (v12)
        {
          *v23 = 136315650;
          *&v23[4] = "[AVCaptureExternalDisplayConfigurator _configureExternalDisplayFrameRate]";
          *&v23[12] = 2114;
          *&v23[14] = self;
          *&v23[22] = 2112;
          v24 = v9;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }
}

uint64_t __74__AVCaptureExternalDisplayConfigurator__configureExternalDisplayFrameRate__block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "context")];
  v3 = [*(a1 + 40) copy];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v4 = getUISRequestDisplayConfigurationForContextIDSymbolLoc_ptr;
  v10 = getUISRequestDisplayConfigurationForContextIDSymbolLoc_ptr;
  if (!getUISRequestDisplayConfigurationForContextIDSymbolLoc_ptr)
  {
    v5 = UIKitServicesLibrary_0();
    v8[3] = dlsym(v5, "UISRequestDisplayConfigurationForContextID");
    getUISRequestDisplayConfigurationForContextIDSymbolLoc_ptr = v8[3];
    v4 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v4)
  {
    __74__AVCaptureExternalDisplayConfigurator__configureExternalDisplayFrameRate__block_invoke_cold_1();
  }

  return v4(v2, v3);
}

- (void)_makeInActive
{
  if (dword_1EB3859D8)
  {
    v7 = 0;
    v6 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(AVCaptureExternalDisplayConfigurator *)self setActive:0, v4, v5];
}

- (void)stop
{
  configuratorWeakReference = self->_configuratorWeakReference;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__AVCaptureExternalDisplayConfigurator_stop__block_invoke;
  block[3] = &unk_1E786EC08;
  block[4] = configuratorWeakReference;
  dispatch_async(queue, block);
}

uint64_t __44__AVCaptureExternalDisplayConfigurator_stop__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) referencedObject];
  if (v1)
  {

    return [v1 _makeInActive];
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (void)externalDisplayLayerObserver:(id)a3 visibiltyChanged:(BOOL)a4
{
  if (dword_1EB3859D8)
  {
    v12 = 0;
    v11 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  configuratorWeakReference = self->_configuratorWeakReference;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__AVCaptureExternalDisplayConfigurator_externalDisplayLayerObserver_visibiltyChanged___block_invoke;
  block[3] = &unk_1E786EE40;
  block[4] = configuratorWeakReference;
  v10 = a4;
  dispatch_async(queue, block);
}

uint64_t __86__AVCaptureExternalDisplayConfigurator_externalDisplayLayerObserver_visibiltyChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) referencedObject];
  if (v2)
  {
    v3 = v2;
    result = [v2 registered];
    if ((result & 1) == 0 && *(a1 + 40) == 1)
    {

      return [v3 _setup];
    }
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

- (void)externalDisplayConfigurationChangedNotification:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"NSString *getUISSDisplayConfigurationAffectedContextIDsKey(void)") description:{@"AVCaptureExternalDisplayConfigurator.m", 45, @"%s", dlerror()}];
  __break(1u);
}

void __72__AVCaptureExternalDisplayConfigurator__getConfigurationWithCompletion___block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"FBSDisplayConfiguration *AVUISDisplayConfigurationForContextID(uint32_t)") description:{@"AVCaptureExternalDisplayConfigurator.m", 41, @"%s", dlerror()}];
  __break(1u);
}

void __74__AVCaptureExternalDisplayConfigurator__configureExternalDisplayFrameRate__block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void AVUISRequestDisplayConfigurationForContextID(uint32_t description:{FBSDisplayConfigurationRequest *)"), @"AVCaptureExternalDisplayConfigurator.m", 40, @"%s", dlerror()}];
  __break(1u);
}

@end