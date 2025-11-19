@interface CMWakeGestureManager
+ (BOOL)hasSlowBootArgs;
+ (BOOL)isWakeGestureAvailable;
+ (id)sharedManager;
+ (id)stringForGestureState:(int64_t)a3;
+ (id)stringForMode:(unsigned __int8)a3;
+ (id)stringForNotification:(unsigned __int8)a3;
+ (id)stringForStartPose:(unsigned __int8)a3;
+ (id)stringForViewPose:(unsigned __int8)a3;
+ (int64_t)toState:(unsigned __int8)a3;
+ (unsigned)toRaw:(int64_t)a3;
- (BOOL)setNightStandWakeEnabled:(BOOL)a3 withConfiguration:(int64_t)a4;
- (BOOL)simulateGestureWithDelay:(double)a3 Duration:(double)a4;
- (CMWakeGestureManager)initWithQueue:(id)a3;
- (void)dealloc;
- (void)invokeDelegateWithState:(int64_t)a3;
- (void)loadPreferences;
- (void)logWakeLatency;
- (void)onBacklightServiceUpdated:(unsigned int)a3;
- (void)onNotificationControl:(id)a3;
- (void)onPowerStateUpdated:(const Sample *)a3;
- (void)onWakeUpdated:(const Sample *)a3;
- (void)playAlert;
- (void)reenableDetectedStateRecognition;
- (void)setBacklightState:(int64_t)a3;
- (void)setDelegate:(id)a3;
- (void)simulateGesture:(int64_t)a3 after:(double)a4;
- (void)startWakeGestureUpdates;
- (void)stopWakeGestureUpdates;
@end

@implementation CMWakeGestureManager

+ (id)sharedManager
{
  if (qword_1ED71CB00 != -1)
  {
    dispatch_once(&qword_1ED71CB00, &unk_1F0E291E0);
  }

  return qword_1ED71CB08;
}

+ (BOOL)isWakeGestureAvailable
{
  v10 = *MEMORY[0x1E69E9840];
  if (!sub_19B7915DC())
  {
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
    }

    v5 = qword_1ED71C798;
    if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "WakeGesture does not run on this platform", buf, 2u);
    }

    v6 = sub_19B420058();
    if (*(v6 + 160) <= 1 && *(v6 + 164) <= 1 && *(v6 + 168) <= 1 && !*(v6 + 152))
    {
      goto LABEL_26;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
    }

    v4 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "+[CMWakeGestureManager isWakeGestureAvailable]", "CoreLocation: %s\n");
    goto LABEL_24;
  }

  sub_19B421798();
  if (!sub_19B4426E4())
  {
    result = 1;
    goto LABEL_28;
  }

  if (qword_1ED71C790 != -1)
  {
    dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
  }

  v2 = qword_1ED71C798;
  if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_FAULT, "wake gesture should not be default-enabled on iPad", buf, 2u);
  }

  v3 = sub_19B420058();
  if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
    }

    v4 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "+[CMWakeGestureManager isWakeGestureAvailable]", "CoreLocation: %s\n");
LABEL_24:
    if (v4 != buf)
    {
      free(v4);
    }
  }

LABEL_26:
  result = 0;
LABEL_28:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

+ (BOOL)hasSlowBootArgs
{
  if (qword_1EAFE38C0 != -1)
  {
    dispatch_once(&qword_1EAFE38C0, &unk_1F0E28C00);
  }

  return byte_1EAFE2FA8;
}

- (void)setDelegate:(id)a3
{
  objc_storeWeak(&self->fUpdatedDelegate, a3);
  fDispatchQ = self->fDispatchQ;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B61E6A8;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_async(fDispatchQ, block);
}

- (CMWakeGestureManager)initWithQueue:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = CMWakeGestureManager;
  v3 = [(CMWakeGestureManager *)&v9 init];
  if (sub_19B7915DC())
  {
    if (v3)
    {
      operator new();
    }
  }

  else
  {
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
    }

    v4 = qword_1ED71C798;
    if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "Could not create instance of CLGestureService. Is wake gesture supported on this platform?", buf, 2u);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C790 != -1)
      {
        dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
      }

      LOWORD(v10) = 0;
      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMWakeGestureManager initWithQueue:]", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    v3 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)dealloc
{
  objc_msgSend_stopWakeGestureUpdates(self, a2, v2);
  fDispatchQ = self->fDispatchQ;
  if (fDispatchQ)
  {
    dispatch_release(fDispatchQ);
    self->fDispatchQ = 0;
  }

  fLockScreenToken = self->fLockScreenToken;
  if (fLockScreenToken != -1)
  {
    notify_cancel(fLockScreenToken);
  }

  v6.receiver = self;
  v6.super_class = CMWakeGestureManager;
  [(CMWakeGestureManager *)&v6 dealloc];
}

- (void)startWakeGestureUpdates
{
  v14 = *MEMORY[0x1E69E9840];
  if (sub_19B7915DC())
  {
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
    }

    v3 = qword_1ED71C798;
    if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "Start Wake Gesture Updates", buf, 2u);
    }

    v4 = sub_19B420058();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C790 != -1)
      {
        dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
      }

      v12 = 0;
      v5 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWakeGestureManager startWakeGestureUpdates]", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }

    fDispatchQ = self->fDispatchQ;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B61F87C;
    block[3] = &unk_1E7532988;
    block[4] = self;
    dispatch_async(fDispatchQ, block);
  }

  else
  {
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
    }

    v7 = qword_1ED71C798;
    if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Unable to start wake gesture updates, service does not exist", buf, 2u);
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C790 != -1)
      {
        dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
      }

      v12 = 0;
      v9 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMWakeGestureManager startWakeGestureUpdates]", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)stopWakeGestureUpdates
{
  v14 = *MEMORY[0x1E69E9840];
  if (sub_19B7915DC())
  {
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
    }

    v3 = qword_1ED71C798;
    if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "Stop Wake Gesture Updates", buf, 2u);
    }

    v4 = sub_19B420058();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C790 != -1)
      {
        dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
      }

      v12 = 0;
      v5 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWakeGestureManager stopWakeGestureUpdates]", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }

    fDispatchQ = self->fDispatchQ;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B61FD78;
    block[3] = &unk_1E7532988;
    block[4] = self;
    dispatch_sync(fDispatchQ, block);
  }

  else
  {
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
    }

    v7 = qword_1ED71C798;
    if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Unable to start wake gesture updates, service does not exist", buf, 2u);
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C790 != -1)
      {
        dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
      }

      v12 = 0;
      v9 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMWakeGestureManager stopWakeGestureUpdates]", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setBacklightState:(int64_t)a3
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->fIsRunningInPrimaryProcess)
  {
    v5 = (a3 - 1) < 2;
    Current = -1.0;
    if ((a3 - 1) <= 1)
    {
      Current = CFAbsoluteTimeGetCurrent();
    }

    self->fLastDisplayOnTime = Current;
    fIsDisplayActive = v5;
    if (self->fIsDisplayActive != v5)
    {
      v8 = sub_19B420D84();
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = sub_19B6200D4;
      v17[3] = &unk_1E75333D0;
      v18 = v5;
      sub_19B421668(v8, v17);
      fIsDisplayActive = self->fIsDisplayActive;
    }

    self->fIsDisplayActive = v5;
    fDispatchQ = self->fDispatchQ;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B620298;
    block[3] = &unk_1E75333F8;
    v15 = v5;
    v16 = fIsDisplayActive;
    block[4] = self;
    block[5] = a3;
    dispatch_async(fDispatchQ, block);
  }

  else
  {
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
    }

    v10 = qword_1ED71C798;
    if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_FAULT, "Only set backlight from primary process.", buf, 2u);
    }

    v11 = sub_19B420058();
    if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C790 != -1)
      {
        dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
      }

      v19 = 0;
      v12 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMWakeGestureManager setBacklightState:]", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

+ (int64_t)toState:(unsigned __int8)a3
{
  if ((a3 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_19B7B9AD8[(a3 - 1)];
  }
}

+ (unsigned)toRaw:(int64_t)a3
{
  v3 = 0x2030100u >> (8 * a3);
  if (a3 >= 4)
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 3;
}

- (BOOL)simulateGestureWithDelay:(double)a3 Duration:(double)a4
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  fDispatchQ = self->fDispatchQ;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B6205A4;
  block[3] = &unk_1E7533420;
  block[4] = &v8;
  *&block[5] = a3;
  *&block[6] = a4;
  dispatch_async(fDispatchQ, block);
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (void)simulateGesture:(int64_t)a3 after:(double)a4
{
  fDispatchQ = self->fDispatchQ;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B6206DC;
  block[3] = &unk_1E7533448;
  block[4] = self;
  block[5] = a3;
  *&block[6] = a4;
  dispatch_async(fDispatchQ, block);
}

- (BOOL)setNightStandWakeEnabled:(BOOL)a3 withConfiguration:(int64_t)a4
{
  v5 = a3;
  v34 = *MEMORY[0x1E69E9840];
  self->fNightStandModeEnabled = 0;
  if (a3)
  {
    self->fNightStandModeEnabled = 1;
    if (a4 == 1)
    {
      LOBYTE(fNightStandThreshold) = 24;
    }

    else if (a4 == 2)
    {
      LOBYTE(fNightStandThreshold) = 10;
    }

    else
    {
      fNightStandThreshold = self->fNightStandThreshold;
    }

    v8 = 3;
  }

  else
  {
    v8 = 0;
    LOBYTE(fNightStandThreshold) = 0;
  }

  if (qword_1ED71C790 != -1)
  {
    dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
  }

  v9 = qword_1ED71C798;
  if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240960;
    v27 = v8;
    v28 = 1026;
    v29 = v5;
    v30 = 2050;
    v31 = a4;
    v32 = 1026;
    v33 = fNightStandThreshold;
    _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_DEFAULT, "Setting night stand mode on phone,%{public}d,enable,%{public}d,config,%{public}ld,option,%{public}d", buf, 0x1Eu);
  }

  v10 = sub_19B420058();
  if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
    }

    v18 = 67240960;
    v19 = v8;
    v20 = 1026;
    v21 = v5;
    v22 = 2050;
    v23 = a4;
    v24 = 1026;
    v25 = fNightStandThreshold;
    v11 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWakeGestureManager setNightStandWakeEnabled:withConfiguration:]", "CoreLocation: %s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  fDispatchQ = self->fDispatchQ;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B620BD4;
  block[3] = &unk_1E7533468;
  v16 = v8;
  v17 = fNightStandThreshold;
  dispatch_async(fDispatchQ, block);
  v13 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)invokeDelegateWithState:(int64_t)a3
{
  fDispatchQ = self->fDispatchQ;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B620DFC;
  v4[3] = &unk_1E7533490;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(fDispatchQ, v4);
}

- (void)loadPreferences
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = sub_19B420D84();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = sub_19B438CCC(v4, "EnableWakeGestureLatencyAlert", &self->fEnableLatencyAlert);
  if (v5)
  {
    sub_19B41FFEC(v5);
  }

  if ((v6 & 1) == 0)
  {
    self->fEnableLatencyAlert = 0;
  }

  v7 = sub_19B420D84();
  v8 = *(v7 + 24);
  v9 = *(v7 + 32);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = sub_19B432FD8(v8, "WakeGestureLatencyAlertThreshold", &self->fLatencyAlertThreshold);
  if (v9)
  {
    sub_19B41FFEC(v9);
  }

  if ((v10 & 1) == 0)
  {
    self->fLatencyAlertThreshold = 500;
  }

  v11 = sub_19B420D84();
  v12 = *(v11 + 24);
  v13 = *(v11 + 32);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = sub_19B438CCC(v12, "EnableWakeGestureHaptic", &self->fEnableAudioAlert);
  if (v13)
  {
    sub_19B41FFEC(v13);
  }

  if ((v14 & 1) == 0)
  {
    self->fEnableAudioAlert = 0;
  }

  if (qword_1ED71C790 != -1)
  {
    dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
  }

  v15 = qword_1ED71C798;
  if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_INFO))
  {
    fEnableLatencyAlert = self->fEnableLatencyAlert;
    fLatencyAlertThreshold = self->fLatencyAlertThreshold;
    fEnableAudioAlert = self->fEnableAudioAlert;
    *buf = 67109632;
    v26 = fEnableLatencyAlert;
    v27 = 1024;
    v28 = fLatencyAlertThreshold;
    v29 = 1024;
    v30 = fEnableAudioAlert;
    _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_INFO, "Loaded Preferences. Latency Alert: %d, Latency Threshold: %d, Audio Alert: %d", buf, 0x14u);
  }

  v19 = sub_19B420058();
  if (*(v19 + 160) > 1 || *(v19 + 164) > 1 || *(v19 + 168) > 1 || *(v19 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
    }

    v22 = self->fEnableLatencyAlert;
    v23 = self->fLatencyAlertThreshold;
    v24 = self->fEnableAudioAlert;
    v20 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWakeGestureManager loadPreferences]", "CoreLocation: %s\n", v20);
    if (v20 != buf)
    {
      free(v20);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)playAlert
{
  v7 = *MEMORY[0x1E69E9840];
  if (MEMORY[0x1EEE767A0] && self->fIsRunningInPrimaryProcess)
  {
    dispatch_async(self->fDispatchQ, &unk_1F0E27DA0);
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
    }

    v2 = qword_1ED71C798;
    if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEBUG, "Vibrate", buf, 2u);
    }

    v3 = sub_19B420058();
    if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C790 != -1)
      {
        dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
      }

      v4 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWakeGestureManager playAlert]", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)logWakeLatency
{
  v33 = *MEMORY[0x1E69E9840];
  if (self->fIsRunningInPrimaryProcess)
  {
    v19 = 8;
    v20 = 0;
    sysctlbyname("machdep.wake_abstime", &v20, &v19, 0, 0);
    v3 = IORegistryEntrySearchCFProperty(self->backlightService, "IOService", @"displayOnTimestamp", *MEMORY[0x1E695E480], 1u);
    if (v3)
    {
      v4 = sub_19B41E070(v20);
      v7 = objc_msgSend_unsignedLongLongValue(v3, v5, v6);
      v8 = sub_19B41E070(v7);
      v9 = ((v4 - self->fWakePacketTimestamp) * 1000.0);
      v10 = ((v8 - v4) * 1000.0);
      hasSlowBootArgs = objc_msgSend_hasSlowBootArgs(CMWakeGestureManager, v11, v12);
      if (qword_1ED71C790 != -1)
      {
        dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
      }

      v14 = qword_1ED71C798;
      if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109632;
        v28 = hasSlowBootArgs;
        v29 = 2048;
        v30 = v9;
        v31 = 2048;
        v32 = v10;
        _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_DEFAULT, "hasSlowBootArgs,%d,gesture2xnu,%llu,xnu2Backlight,%llu", buf, 0x1Cu);
      }

      v15 = sub_19B420058();
      if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C790 != -1)
        {
          dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
        }

        v21 = 67109632;
        v22 = hasSlowBootArgs;
        v23 = 2048;
        v24 = v9;
        v25 = 2048;
        v26 = v10;
        v16 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWakeGestureManager logWakeLatency]", "CoreLocation: %s\n", v16);
        if (v16 != buf)
        {
          free(v16);
        }
      }

      if ((hasSlowBootArgs & 1) == 0)
      {
        AnalyticsSendEventLazy();
      }

      if (self->fEnableLatencyAlert && v9 + v10 > self->fLatencyAlertThreshold)
      {
        v17 = CFStringCreateWithFormat(0, 0, @"Slow boot-args? %d\ngesture2xnu: %llums\nxnu2Backlight: %llums", hasSlowBootArgs, v9, v10);
        CFUserNotificationDisplayNotice(0.0, 0, 0, 0, 0, @"Wake Delay", v17, 0);
        CFRelease(v17);
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

+ (id)stringForNotification:(unsigned __int8)a3
{
  if (a3 > 8u)
  {
    return &stru_1F0E3D7A0;
  }

  else
  {
    return off_1E7533570[a3];
  }
}

+ (id)stringForMode:(unsigned __int8)a3
{
  if (a3 > 3u)
  {
    return &stru_1F0E3D7A0;
  }

  else
  {
    return off_1E75335B8[a3];
  }
}

+ (id)stringForStartPose:(unsigned __int8)a3
{
  if (a3 > 8u)
  {
    return &stru_1F0E3D7A0;
  }

  else
  {
    return off_1E75335D8[a3];
  }
}

+ (id)stringForViewPose:(unsigned __int8)a3
{
  if (a3 > 9u)
  {
    return &stru_1F0E3D7A0;
  }

  else
  {
    return off_1E7533620[a3];
  }
}

- (void)onNotificationControl:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_userInfo(a3, a2, a3);
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"CMSendWakeGestureState");
  if (v6)
  {
    v9 = objc_msgSend_intValue(v6, v7, v8);
    v10 = v9;
    if (v9 < 6)
    {
      if (qword_1ED71C790 != -1)
      {
        dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
      }

      v16 = qword_1ED71C798;
      if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_INFO))
      {
        *buf = 67240192;
        LODWORD(v22) = v9;
        _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_INFO, "Gesture state updated to %{public}d", buf, 8u);
      }

      v17 = sub_19B420058();
      if (*(v17 + 160) > 1 || *(v17 + 164) > 1 || *(v17 + 168) > 1 || *(v17 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C790 != -1)
        {
          dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
        }

        v19 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWakeGestureManager onNotificationControl:]", "CoreLocation: %s\n", v19);
        if (v19 != buf)
        {
          free(v19);
        }
      }

      objc_msgSend_invokeDelegateWithState_(self, v18, v10);
    }

    else
    {
      if (qword_1ED71C790 != -1)
      {
        dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
      }

      v11 = qword_1ED71C798;
      if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_FAULT))
      {
        *buf = 134349056;
        v22 = v9;
        _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_FAULT, "Gesture state %{public}zd is invalid!", buf, 0xCu);
      }

      v12 = sub_19B420058();
      if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C790 == -1)
        {
LABEL_20:
          v15 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "[CMWakeGestureManager onNotificationControl:]", "CoreLocation: %s\n", v15);
          if (v15 != buf)
          {
            free(v15);
          }

          goto LABEL_35;
        }

LABEL_40:
        dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
        goto LABEL_20;
      }
    }
  }

  else
  {
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
    }

    v13 = qword_1ED71C798;
    if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_FAULT, "Invalid CMSendWakeGestureNotification payload!", buf, 2u);
    }

    v14 = sub_19B420058();
    if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C790 == -1)
      {
        goto LABEL_20;
      }

      goto LABEL_40;
    }
  }

LABEL_35:
  v20 = *MEMORY[0x1E69E9840];
}

- (void)onWakeUpdated:(const Sample *)a3
{
  v5 = *&a3->timestamp;
  v6 = *&a3->acceleration.x;
  v12[0] = *v6;
  *(v12 + 12) = *(v6 + 12);
  objc_initWeak(&location, self);
  fDispatchQ = self->fDispatchQ;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B622178;
  block[3] = &unk_1E7533500;
  objc_copyWeak(v9, &location);
  block[4] = self;
  v10[0] = v12[0];
  *(v10 + 12) = *(v12 + 12);
  v9[1] = *&v5;
  v9[2] = a3;
  dispatch_async(fDispatchQ, block);
  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

- (void)onPowerStateUpdated:(const Sample *)a3
{
  if (LODWORD(a3->timestamp) == -536870272 || LODWORD(a3->timestamp) == -536870288)
  {
    v10[5] = v3;
    v10[6] = v4;
    objc_initWeak(v10, self);
    fDispatchQ = self->fDispatchQ;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B622DF8;
    block[3] = &unk_1E7533528;
    objc_copyWeak(&v9, v10);
    block[4] = self;
    dispatch_async(fDispatchQ, block);
    objc_destroyWeak(&v9);
    objc_destroyWeak(v10);
  }
}

- (void)onBacklightServiceUpdated:(unsigned int)a3
{
  objc_initWeak(&location, self);
  fDispatchQ = self->fDispatchQ;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B622EE8;
  v6[3] = &unk_1E7533550;
  objc_copyWeak(&v7, &location);
  v8 = a3;
  v6[4] = self;
  dispatch_async(fDispatchQ, v6);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)reenableDetectedStateRecognition
{
  fDispatchQ = self->fDispatchQ;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B62303C;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_async(fDispatchQ, block);
}

+ (id)stringForGestureState:(int64_t)a3
{
  if (a3 > 5)
  {
    return @"Invalid";
  }

  else
  {
    return off_1E7535F98[a3];
  }
}

@end