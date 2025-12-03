@interface AVFlashlight
+ (BOOL)hasFlashlight;
+ (void)initialize;
- (AVFlashlight)init;
- (BOOL)isAvailable;
- (BOOL)isOverheated;
- (BOOL)setFlashlightLevel:(float)level withError:(id *)error;
- (BOOL)turnPowerOnWithError:(id *)error;
- (float)beamWidth;
- (float)flashlightLevel;
- (void)_handleNotification:(id)notification payload:(id)payload;
- (void)_reconnectToServer;
- (void)_setupFlashlight;
- (void)_teardownFlashlight;
- (void)dealloc;
- (void)setBeamWidth:(float)width;
- (void)turnPowerOff;
@end

@implementation AVFlashlight

- (BOOL)isOverheated
{
  FigSimpleMutexLock();
  LOBYTE(self) = self->_internal->overheated;
  FigSimpleMutexUnlock();
  return self;
}

- (BOOL)isAvailable
{
  FigSimpleMutexLock();
  LOBYTE(self) = self->_internal->available;
  FigSimpleMutexUnlock();
  return self;
}

- (void)turnPowerOff
{
  if (dword_1ED806880)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  flashlight = self->_internal->flashlight;
  if (flashlight)
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v5)
    {
      v5(flashlight);
    }
  }

  FigSimpleMutexUnlock();
}

+ (BOOL)hasFlashlight
{
  if (hasFlashlight_onceToken != -1)
  {
    +[AVFlashlight hasFlashlight];
  }

  return hasFlashlight_hasFlashlight;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

uint64_t __29__AVFlashlight_hasFlashlight__block_invoke()
{
  result = MGGetBoolAnswer();
  hasFlashlight_hasFlashlight = result;
  return result;
}

- (void)_setupFlashlight
{
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (AVCaptureIsRunningInMediaserverd())
  {
    if (FigFlashlightCreate())
    {
LABEL_8:
      [AVFlashlight _setupFlashlight];
      return;
    }
  }

  else if (FigFlashlightRemoteCreate())
  {
    v3 = 2;
    while (1)
    {
      usleep(0x3D090u);
      if (!FigFlashlightRemoteCreate())
      {
        break;
      }

      if (!--v3)
      {
        goto LABEL_8;
      }
    }
  }

  v4 = [MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  [v4 addListenerWithWeakReference:self->_internal->weakReference callback:avflashlightNotification name:*MEMORY[0x1E69909D0] object:self->_internal->flashlight flags:0];
  [v4 addListenerWithWeakReference:self->_internal->weakReference callback:avflashlightNotification name:*MEMORY[0x1E69909E8] object:self->_internal->flashlight flags:0];
  [v4 addListenerWithWeakReference:self->_internal->weakReference callback:avflashlightNotification name:*MEMORY[0x1E69909E0] object:self->_internal->flashlight flags:0];
  [v4 addListenerWithWeakReference:self->_internal->weakReference callback:avflashlightNotification name:*MEMORY[0x1E69909D8] object:self->_internal->flashlight flags:0];
  internal = self->_internal;
  v6 = *MEMORY[0x1E69909F0];
  weakReference = internal->weakReference;
  flashlight = internal->flashlight;

  [v4 addListenerWithWeakReference:weakReference callback:avflashlightNotification name:v6 object:flashlight flags:0];
}

- (void)_teardownFlashlight
{
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (self->_internal->flashlight)
  {
    v3 = [MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    internal = self->_internal;
    weakReference = internal->weakReference;
    [v3 removeListenerWithWeakReference:weakReference callback:avflashlightNotification name:*MEMORY[0x1E69909D0] object:internal->flashlight];
    [v3 removeListenerWithWeakReference:weakReference callback:avflashlightNotification name:*MEMORY[0x1E69909E8] object:self->_internal->flashlight];
    [v3 removeListenerWithWeakReference:weakReference callback:avflashlightNotification name:*MEMORY[0x1E69909E0] object:self->_internal->flashlight];
    [v3 removeListenerWithWeakReference:weakReference callback:avflashlightNotification name:*MEMORY[0x1E69909D8] object:self->_internal->flashlight];
    [v3 removeListenerWithWeakReference:weakReference callback:avflashlightNotification name:*MEMORY[0x1E69909F0] object:self->_internal->flashlight];
    flashlight = self->_internal->flashlight;
    if (flashlight)
    {
      CFRelease(flashlight);
      self->_internal->flashlight = 0;
    }
  }
}

- (AVFlashlight)init
{
  if (!+[AVFlashlight hasFlashlight])
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];

    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v11);
    }

    NSLog(&cfstr_SuppressingExc.isa, v11);
    return 0;
  }

  v13.receiver = self;
  v13.super_class = AVFlashlight;
  v3 = [(AVFlashlight *)&v13 init];
  if (v3)
  {
    v3->_internal = objc_alloc_init(AVFlashlightInternal);
    v3->_internal->weakReference = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:v3];
    v3->_internal->lock = FigSimpleMutexCreate();
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v3->_internal->serverReconnectQueue = dispatch_queue_create("com.apple.avfoundation.avflashlight-server-reconnect", v4);
    FigSimpleMutexLock();
    [(AVFlashlight *)v3 _setupFlashlight];
    *&v3->_internal->available = 1;
    flashlight = v3->_internal->flashlight;
    if (flashlight)
    {
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 72);
      if (v6)
      {
        v6(flashlight);
      }
    }

    v3->_internal->flashlightLevel = 0.0;
    v3->_internal->minBeamWidth = AVGestaltGetFloatAnswer(@"AVGQTorchMinBeamWidth");
    FloatAnswer = AVGestaltGetFloatAnswer(@"AVGQTorchMaxBeamWidth");
    v8 = 0;
    v3->_internal->maxBeamWidth = FloatAnswer;
    internal = v3->_internal;
    if (internal->minBeamWidth > 0.0)
    {
      v8 = internal->maxBeamWidth > 0.0;
    }

    internal->beamWidthControlSupported = v8;
    v10 = v3->_internal;
    if (v10->beamWidthControlSupported && v10->minBeamWidth > v10->maxBeamWidth)
    {
      v10->beamWidthControlSupported = 0;
      v10 = v3->_internal;
    }

    v10->beamWidth = v10->minBeamWidth;
    FigSimpleMutexUnlock();
    if (!v3->_internal->flashlight)
    {

      return 0;
    }
  }

  return v3;
}

- (void)dealloc
{
  if (self->_internal)
  {
    FigSimpleMutexLock();
    [(AVFlashlight *)self _teardownFlashlight];
    FigSimpleMutexUnlock();
    FigSimpleMutexDestroy();
  }

  v3.receiver = self;
  v3.super_class = AVFlashlight;
  [(AVFlashlight *)&v3 dealloc];
}

- (BOOL)turnPowerOnWithError:(id *)error
{
  if (dword_1ED806880)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  flashlight = self->_internal->flashlight;
  if (flashlight)
  {
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v7)
    {
      v8 = v7(flashlight);
    }

    else
    {
      v8 = -12782;
    }
  }

  else
  {
    v8 = -16450;
  }

  FigSimpleMutexUnlock();
  if (error && v8)
  {
    *error = AVLocalizedErrorWithUnderlyingOSStatus();
  }

  return v8 == 0;
}

- (BOOL)setFlashlightLevel:(float)level withError:(id *)error
{
  if (dword_1ED806880)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (level != 3.4028e38 && (level < 0.0 || level > 1.0))
  {
    v9 = 0;
    if (error)
    {
      *error = AVLocalizedError();
    }

    return v9;
  }

  FigSimpleMutexLock();
  internal = self->_internal;
  flashlightLevel = internal->flashlightLevel;
  v12 = flashlightLevel != 1.0 || level != 3.4028e38;
  v13 = flashlightLevel != level && v12;
  if (!v13)
  {
    goto LABEL_24;
  }

  flashlight = internal->flashlight;
  if (!flashlight)
  {
    if (!error)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v15 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v15 || v15(flashlight, level))
  {
    if (error)
    {
LABEL_23:
      *error = AVLocalizedErrorWithUnderlyingOSStatus();
    }

LABEL_24:
    v9 = !v13;
    FigSimpleMutexUnlock();
    return v9;
  }

  if (level == 3.4028e38)
  {
    v17 = self->_internal->flashlight;
    v18 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    level = 0.0;
    if (v18)
    {
      level = v18(v17);
    }
  }

  FigSimpleMutexUnlock();
  [(AVFlashlight *)self willChangeValueForKey:@"flashlightLevel"];
  FigSimpleMutexLock();
  self->_internal->flashlightLevel = level;
  FigSimpleMutexUnlock();
  [(AVFlashlight *)self didChangeValueForKey:@"flashlightLevel"];
  return 1;
}

- (float)flashlightLevel
{
  FigSimpleMutexLock();
  flashlightLevel = self->_internal->flashlightLevel;
  FigSimpleMutexUnlock();
  return flashlightLevel;
}

- (void)setBeamWidth:(float)width
{
  internal = self->_internal;
  if (internal->beamWidthControlSupported)
  {
    if (internal->minBeamWidth <= width && internal->maxBeamWidth >= width)
    {
      if (dword_1ED806880)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigSimpleMutexLock();
      v11 = self->_internal;
      if (v11->beamWidth != width && (flashlight = v11->flashlight) != 0 && (minBeamWidth = v11->minBeamWidth, maxBeamWidth = v11->maxBeamWidth, (v15 = *(*(CMBaseObjectGetVTable() + 16) + 56)) != 0))
      {
        v16 = v15(flashlight, (width - minBeamWidth) / (maxBeamWidth - minBeamWidth));
        FigSimpleMutexUnlock();
        if (!v16)
        {
          [(AVFlashlight *)self willChangeValueForKey:@"beamWidth"];
          FigSimpleMutexLock();
          self->_internal->beamWidth = width;
          FigSimpleMutexUnlock();
          [(AVFlashlight *)self didChangeValueForKey:@"beamWidth"];
        }
      }

      else
      {
        FigSimpleMutexUnlock();
      }

      return;
    }

    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695DA20];
  }

  else
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D920];
  }

  v9 = [v7 exceptionWithName:v8 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v9);
  }

  NSLog(&cfstr_SuppressingExc.isa, v9);
}

- (float)beamWidth
{
  FigSimpleMutexLock();
  beamWidth = self->_internal->beamWidth;
  FigSimpleMutexUnlock();
  return beamWidth;
}

- (void)_handleNotification:(id)notification payload:(id)payload
{
  FigSimpleMutexLock();
  internal = self->_internal;
  available = internal->available;
  overheated = internal->overheated;
  flashlightLevel = internal->flashlightLevel;
  beamWidth = internal->beamWidth;
  if ([notification isEqualToString:*MEMORY[0x1E69909D0]])
  {
    v12 = [objc_msgSend(payload objectForKeyedSubscript:{*MEMORY[0x1E69909C8]), "BOOLValue"}];
    if (v12)
    {
      v13 = flashlightLevel;
    }

    else
    {
      v13 = 0.0;
    }

    goto LABEL_5;
  }

  if ([notification isEqualToString:*MEMORY[0x1E69909E8]])
  {
    v14 = [objc_msgSend(payload objectForKeyedSubscript:{*MEMORY[0x1E69909C8]), "BOOLValue"}];
    v12 = available;
LABEL_8:
    v13 = flashlightLevel;
    goto LABEL_9;
  }

  if ([notification isEqualToString:*MEMORY[0x1E69909E0]])
  {
    [objc_msgSend(payload objectForKeyedSubscript:{*MEMORY[0x1E69909C8]), "floatValue"}];
    v13 = v16;
    v12 = available;
LABEL_5:
    v14 = overheated;
LABEL_9:
    v15 = beamWidth;
    goto LABEL_10;
  }

  if (![notification isEqualToString:*MEMORY[0x1E69909D8]])
  {
    v12 = available;
    v14 = overheated;
    goto LABEL_8;
  }

  [objc_msgSend(payload objectForKeyedSubscript:{*MEMORY[0x1E69909C8]), "floatValue"}];
  v15 = self->_internal->minBeamWidth + (v17 * (self->_internal->maxBeamWidth - self->_internal->minBeamWidth));
  v12 = available;
  v14 = overheated;
  v13 = flashlightLevel;
LABEL_10:
  FigSimpleMutexUnlock();
  if (v13 != flashlightLevel)
  {
    [(AVFlashlight *)self willChangeValueForKey:@"flashlightLevel"];
  }

  if (v15 != beamWidth)
  {
    [(AVFlashlight *)self willChangeValueForKey:@"beamWidth"];
  }

  if (available != v12)
  {
    [(AVFlashlight *)self willChangeValueForKey:@"available"];
  }

  if (overheated != v14)
  {
    [(AVFlashlight *)self willChangeValueForKey:@"overheated"];
  }

  FigSimpleMutexLock();
  self->_internal->flashlightLevel = v13;
  self->_internal->beamWidth = v15;
  self->_internal->available = v12;
  self->_internal->overheated = v14;
  FigSimpleMutexUnlock();
  if (overheated != v14)
  {
    [(AVFlashlight *)self didChangeValueForKey:@"overheated"];
  }

  if (available != v12)
  {
    [(AVFlashlight *)self didChangeValueForKey:@"available"];
  }

  if (v13 != flashlightLevel)
  {
    [(AVFlashlight *)self didChangeValueForKey:@"flashlightLevel"];
  }

  if (v15 != beamWidth)
  {

    [(AVFlashlight *)self didChangeValueForKey:@"BeamWidth"];
  }
}

- (void)_reconnectToServer
{
  FigSimpleMutexLock();
  flashlightLevel = self->_internal->flashlightLevel;
  FigSimpleMutexUnlock();
  v4 = block;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__AVFlashlight__reconnectToServer__block_invoke;
  block[3] = &unk_1E786EC08;
  block[4] = self;
  if (flashlightLevel <= 0.0)
  {
    v5 = 0;
  }

  else
  {
    v4 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, block);
    v5 = v4;
  }

  dispatch_async(self->_internal->serverReconnectQueue, v4);
}

uint64_t __34__AVFlashlight__reconnectToServer__block_invoke(uint64_t a1)
{
  FigSimpleMutexLock();
  [*(a1 + 32) _teardownFlashlight];
  [*(a1 + 32) _setupFlashlight];
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v2 + 44);
    if (v4 > 0.0)
    {
      v5 = *(v2 + 36);
      v6 = *(v2 + 40);
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v7)
      {
        v7(v3, (v4 - v5) / (v6 - v5));
      }
    }

    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 28);
    if (v9 > 0.0)
    {
      v10 = *(v8 + 16);
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v11)
      {
        v11(v10, v9);
      }
    }

    v12 = *(*(*(a1 + 32) + 8) + 16);
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v13)
    {
      v13(v12);
    }
  }

  return FigSimpleMutexUnlock();
}

@end