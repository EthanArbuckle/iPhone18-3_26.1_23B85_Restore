@interface CMCameraWorkoutSession
- (CMCameraWorkoutSession)initWithOptions:(id)options;
- (id).cxx_construct;
- (id)stats;
- (void)_feed2DSkeleton:(id)skeleton localMachtime:(double)machtime globalMachtime:(double)globalMachtime;
- (void)_feed3DLiftedSkeleton:(id)skeleton localMachtime:(double)machtime globalMachtime:(double)globalMachtime;
- (void)_feed3DRetargetedSkeleton:(id)skeleton localMachtime:(double)machtime globalMachtime:(double)globalMachtime;
- (void)_feedAccel:(const Sample *)accel;
- (void)_feedAccessoryConfig:(const Config *)config;
- (void)_feedAccessoryInEarStatus:(int)status;
- (void)_feedDeviceMotion:(const Sample *)motion;
- (void)_feedGyro:(const Sample *)gyro;
- (void)_feedGyroTemperature:(const Temperature *)temperature;
- (void)_feedHeadAccessoryDeviceMotion:(id)motion;
- (void)dealloc;
- (void)feedBodyMetrics:(id)metrics;
- (void)feedFacePose:(id)pose;
- (void)feedFitnessMachineSample:(id)sample;
- (void)feedHeartRateReference:(unsigned __int16)reference localMachtime:(double)machtime globalMachtime:(double)globalMachtime;
- (void)feedSkeleton:(id)skeleton;
- (void)feedWatchActiveCalories:(float)calories localMachtime:(double)machtime globalMachtime:(double)globalMachtime;
- (void)feedWatchBasalCalories:(float)calories localMachtime:(double)machtime globalMachtime:(double)globalMachtime;
- (void)feedWatchHeartRate:(float)rate confidence:(float)confidence localMachtime:(double)machtime globalMachtime:(double)globalMachtime;
- (void)feedWorkoutEvent:(id)event;
- (void)flushMsl;
- (void)logCounters;
- (void)start;
- (void)stop;
@end

@implementation CMCameraWorkoutSession

- (CMCameraWorkoutSession)initWithOptions:(id)options
{
  v64 = *MEMORY[0x1E69E9840];
  v55.receiver = self;
  v55.super_class = CMCameraWorkoutSession;
  v4 = [(CMCameraWorkoutSession *)&v55 init];
  v6 = v4;
  if (options && v4)
  {
    v7 = objc_msgSend_objectForKeyedSubscript_(options, v5, @"kCMCameraWorkoutSessionMSLPrefix");
    v9 = objc_msgSend_cStringUsingEncoding_(v7, v8, 1);
    v11 = objc_msgSend_objectForKeyedSubscript_(options, v10, @"kCMCameraWorkoutSessionMSLPath");
    v13 = objc_msgSend_cStringUsingEncoding_(v11, v12, 1);
    v15 = objc_msgSend_objectForKeyedSubscript_(options, v14, @"kCMCameraWorkoutSessionLogAirPodsDM");
    v6->_logAirpodsDM = objc_msgSend_BOOLValue(v15, v16, v17);
    v19 = objc_msgSend_objectForKeyedSubscript_(options, v18, @"kCMCameraWorkoutSessionLogDM");
    v6->_logDM = objc_msgSend_BOOLValue(v19, v20, v21);
    v23 = objc_msgSend_objectForKeyedSubscript_(options, v22, @"kCMCameraWorkoutSessionLogAccel");
    v6->_logAccel = objc_msgSend_BOOLValue(v23, v24, v25);
    v27 = objc_msgSend_objectForKeyedSubscript_(options, v26, @"kCMCameraWorkoutSessionLogGyro");
    v6->_logGyro = objc_msgSend_BOOLValue(v27, v28, v29);
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A460);
    }

    v30 = qword_1EAFE27B8;
    if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
    {
      v33 = objc_msgSend_description(options, v31, v32);
      *buf = 138412290;
      *v61 = v33;
      _os_log_impl(&dword_19B41C000, v30, OS_LOG_TYPE_DEFAULT, "[camera] options:%@", buf, 0xCu);
    }

    v34 = sub_19B420058();
    if (*(v34 + 160) > 1 || *(v34 + 164) > 1 || *(v34 + 168) > 1 || *(v34 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A460);
      }

      v37 = objc_msgSend_description(options, v35, v36);
      v56 = 138412290;
      *v57 = v37;
      v38 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMCameraWorkoutSession initWithOptions:]", "CoreLocation: %s\n", v38);
      if (v38 != buf)
      {
        free(v38);
      }
    }

    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A460);
    }

    v39 = qword_1EAFE27B8;
    if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
    {
      logAirpodsDM = v6->_logAirpodsDM;
      logDM = v6->_logDM;
      logAccel = v6->_logAccel;
      logGyro = v6->_logGyro;
      *buf = 67109888;
      *v61 = logAirpodsDM;
      *&v61[4] = 1024;
      *&v61[6] = logDM;
      LOWORD(v62) = 1024;
      *(&v62 + 2) = logAccel;
      HIWORD(v62) = 1024;
      v63 = logGyro;
      _os_log_impl(&dword_19B41C000, v39, OS_LOG_TYPE_DEFAULT, "[camera] Logging,airpodsDM,%d,DM,%d,accel,%d,gyro,%d", buf, 0x1Au);
    }

    v44 = sub_19B420058();
    if (*(v44 + 160) > 1 || *(v44 + 164) > 1 || *(v44 + 168) > 1 || *(v44 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A460);
      }

      v45 = v6->_logAirpodsDM;
      v46 = v6->_logDM;
      v47 = v6->_logAccel;
      v48 = v6->_logGyro;
      v56 = 67109888;
      *v57 = v45;
      *&v57[4] = 1024;
      *&v57[6] = v46;
      LOWORD(v58) = 1024;
      *(&v58 + 2) = v47;
      HIWORD(v58) = 1024;
      v59 = v48;
      v49 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMCameraWorkoutSession initWithOptions:]", "CoreLocation: %s\n", v49);
      if (v49 != buf)
      {
        free(v49);
      }
    }

    v6->_audioAccessoryManager = objc_opt_new();
    if (v9 && v13)
    {
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A460);
      }

      v50 = qword_1EAFE27B8;
      if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136380931;
        *v61 = v9;
        *&v61[8] = 2081;
        v62 = v13;
        _os_log_impl(&dword_19B41C000, v50, OS_LOG_TYPE_DEFAULT, "[camera] Logging MSL prefix:%{private}s path:%{private}s", buf, 0x16u);
      }

      v51 = sub_19B420058();
      if (*(v51 + 160) > 1 || *(v51 + 164) > 1 || *(v51 + 168) > 1 || *(v51 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2780 != -1)
        {
          dispatch_once(&qword_1EAFE2780, &unk_1F0E2A460);
        }

        v56 = 136380931;
        *v57 = v9;
        *&v57[8] = 2081;
        v58 = v13;
        v52 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMCameraWorkoutSession initWithOptions:]", "CoreLocation: %s\n", v52);
        if (v52 != buf)
        {
          free(v52);
        }
      }

      operator new();
    }
  }

  v53 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)dealloc
{
  objc_msgSend_stop(self, a2, v2);
  v4.receiver = self;
  v4.super_class = CMCameraWorkoutSession;
  [(CMCameraWorkoutSession *)&v4 dealloc];
}

- (void)start
{
  v43 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2780 != -1)
  {
    dispatch_once(&qword_1EAFE2780, &unk_1F0E2A460);
  }

  v3 = qword_1EAFE27B8;
  if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "[camera] Starting session]", buf, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A460);
    }

    LOWORD(v36) = 0;
    v7 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMCameraWorkoutSession start]", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  if (self->_logDM && !self->_deviceMotionDispatcher)
  {
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A460);
    }

    v8 = qword_1EAFE27B8;
    if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEFAULT, "[camera] Starting source DM", buf, 2u);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A460);
      }

      LOWORD(v36) = 0;
      v10 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMCameraWorkoutSession start]", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    v11 = [CLDeviceMotionProperties alloc];
    objc_msgSend_initWithMode_(v11, v12, 7);
    operator new();
  }

  if (self->_logAccel)
  {
    operator new();
  }

  if (self->_logGyro)
  {
    operator new();
  }

  if (self->_logAirpodsDM)
  {
    if (objc_msgSend__isAudioAccessoryDeviceMotionAvailable(self->_audioAccessoryManager, v5, v6))
    {
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A460);
      }

      v13 = qword_1EAFE27B8;
      if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_DEFAULT, "[camera] Starting accessory DM", buf, 2u);
      }

      v14 = sub_19B420058();
      if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2780 != -1)
        {
          dispatch_once(&qword_1EAFE2780, &unk_1F0E2A460);
        }

        LOWORD(v36) = 0;
        v17 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMCameraWorkoutSession start]", "CoreLocation: %s\n", v17);
        if (v17 != buf)
        {
          free(v17);
        }
      }

      audioAccessoryManager = self->_audioAccessoryManager;
      v19 = objc_msgSend_mainQueue(MEMORY[0x1E696ADC8], v15, v16);
      objc_msgSend__startAudioAccessoryDeviceMotionStatusUpdatesToQueue_withHandler_(audioAccessoryManager, v20, v19, &unk_1F0E28040);
      objc_msgSend__setAudioAccessoryDeviceMotionUpdateInterval_(self->_audioAccessoryManager, v21, v22, 0.0199999996);
      *buf = 0;
      v38 = buf;
      v39 = 0x3052000000;
      v40 = sub_19B428B20;
      v41 = sub_19B42908C;
      selfCopy2 = self;
      v23 = self->_audioAccessoryManager;
      v26 = objc_msgSend_mainQueue(MEMORY[0x1E696ADC8], v24, v25);
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = sub_19B762DD0;
      v35[3] = &unk_1E7535D00;
      v35[4] = buf;
      objc_msgSend__startAudioAccessoryDeviceMotionUpdatesToQueue_lowLatencyMode_withHandler_(v23, v27, v26, 0, v35);
      _Block_object_dispose(buf, 8);
    }

    else
    {
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A460);
      }

      v28 = qword_1EAFE27B8;
      if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v28, OS_LOG_TYPE_ERROR, "[camera] audio accessory not available", buf, 2u);
      }

      v29 = sub_19B420058();
      if ((*(v29 + 160) & 0x80000000) == 0 || (*(v29 + 164) & 0x80000000) == 0 || (*(v29 + 168) & 0x80000000) == 0 || *(v29 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2780 != -1)
        {
          dispatch_once(&qword_1EAFE2780, &unk_1F0E2A460);
        }

        LOWORD(v36) = 0;
        v30 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMCameraWorkoutSession start]", "CoreLocation: %s\n", v30);
        if (v30 != buf)
        {
          free(v30);
        }
      }
    }
  }

  v31 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
  self->_logCountersTimer = v31;
  dispatch_source_set_timer(v31, 0, 0x3B9ACA00uLL, 0x5F5E100uLL);
  *buf = 0;
  v38 = buf;
  v39 = 0x3052000000;
  v40 = sub_19B428B20;
  v41 = sub_19B42908C;
  selfCopy2 = self;
  logCountersTimer = self->_logCountersTimer;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_19B762DEC;
  handler[3] = &unk_1E7533730;
  handler[4] = buf;
  dispatch_source_set_event_handler(logCountersTimer, handler);
  dispatch_activate(self->_logCountersTimer);
  _Block_object_dispose(buf, 8);
  v33 = *MEMORY[0x1E69E9840];
}

- (void)logCounters
{
  v38 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2780 != -1)
  {
    dispatch_once(&qword_1EAFE2780, &unk_1F0E2A460);
  }

  v3 = qword_1EAFE27B8;
  if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = atomic_load(&self->_accelCount.__a_.__a_value);
    v5 = atomic_load(&self->_gyroCount.__a_.__a_value);
    v6 = atomic_load(&self->_dmCount.__a_.__a_value);
    v7 = atomic_load(&self->_airpodsDmCount.__a_.__a_value);
    v8 = atomic_load(&self->_skeletonCount.__a_.__a_value);
    v9 = atomic_load(&self->_facePoseCount.__a_.__a_value);
    v10 = atomic_load(&self->_watchActiveCalorieCount.__a_.__a_value);
    v11 = atomic_load(&self->_watchHeartRateCount.__a_.__a_value);
    v12 = atomic_load(&self->_heartRateReferenceCount.__a_.__a_value);
    v13 = atomic_load(&self->_fitnessMachineSampleCount.__a_.__a_value);
    v15[0] = 68291586;
    v15[1] = 0;
    v16 = 2082;
    v17 = "";
    v18 = 1026;
    v19 = v4;
    v20 = 1026;
    v21 = v5;
    v22 = 1026;
    v23 = v6;
    v24 = 1026;
    v25 = v7;
    v26 = 1026;
    v27 = v8;
    v28 = 1026;
    v29 = v9;
    v30 = 1026;
    v31 = v10;
    v32 = 1026;
    v33 = v11;
    v34 = 1026;
    v35 = v12;
    v36 = 1026;
    v37 = v13;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:[camera] total count, accel:%{public}u, gyro:%{public}u, dm:%{public}u, airpodsDm:%{public}u, skeleton:%{public}u, facePose:%{public}u, watchActiveCalorie:%{public}u, watchHeartRate:%{public}u, heartRateReference:%{public}u, fitnessMachineSample:%{public}u}", v15, 0x4Eu);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)stop
{
  if (self->_deviceMotionDispatcher)
  {
    v4 = sub_19B424AE0();
    sub_19B425248(v4, self->_deviceMotionDispatcher);
    deviceMotionDispatcher = self->_deviceMotionDispatcher;
    if (deviceMotionDispatcher)
    {
      (*(deviceMotionDispatcher->var0 + 1))(deviceMotionDispatcher);
    }

    self->_deviceMotionDispatcher = 0;
  }

  if (self->_accelerometerDispatcher)
  {
    v6 = sub_19B4249E4();
    sub_19B426A14(v6, 0, self->_accelerometerDispatcher);
    accelerometerDispatcher = self->_accelerometerDispatcher;
    if (accelerometerDispatcher)
    {
      (*(accelerometerDispatcher->var0 + 1))(accelerometerDispatcher);
    }

    self->_accelerometerDispatcher = 0;
  }

  if (self->_gyroDispatcher)
  {
    v8 = sub_19B42AD98();
    sub_19B426A14(v8, 0, self->_gyroDispatcher);
    gyroDispatcher = self->_gyroDispatcher;
    if (gyroDispatcher)
    {
      (*(gyroDispatcher->var0 + 1))(gyroDispatcher);
    }

    self->_gyroDispatcher = 0;
  }

  if (self->_gyroTemperatureDispatcher)
  {
    v10 = sub_19B42AD98();
    sub_19B426A14(v10, 1, self->_gyroTemperatureDispatcher);
    gyroTemperatureDispatcher = self->_gyroTemperatureDispatcher;
    if (gyroTemperatureDispatcher)
    {
      (*(gyroTemperatureDispatcher->var0 + 1))(gyroTemperatureDispatcher);
    }

    self->_gyroTemperatureDispatcher = 0;
  }

  logCountersTimer = self->_logCountersTimer;
  if (logCountersTimer)
  {
    dispatch_source_cancel(logCountersTimer);
    self->_logCountersTimer = 0;
  }

  audioAccessoryManager = self->_audioAccessoryManager;

  MEMORY[0x1EEE66B58](audioAccessoryManager, sel__stopAudioAccessoryDeviceMotionUpdates, v2);
}

- (id)stats
{
  v36[10] = *MEMORY[0x1E69E9840];
  v35[0] = @"accelCount";
  v3 = MEMORY[0x1E696AD98];
  v4 = atomic_load(&self->_accelCount.__a_.__a_value);
  v36[0] = objc_msgSend_numberWithUnsignedInt_(v3, a2, v4);
  v35[1] = @"gyroCount";
  v5 = MEMORY[0x1E696AD98];
  v6 = atomic_load(&self->_gyroCount.__a_.__a_value);
  v36[1] = objc_msgSend_numberWithUnsignedInt_(v5, v7, v6);
  v35[2] = @"dmCount";
  v8 = MEMORY[0x1E696AD98];
  v9 = atomic_load(&self->_dmCount.__a_.__a_value);
  v36[2] = objc_msgSend_numberWithUnsignedInt_(v8, v10, v9);
  v35[3] = @"airpodsDmCount";
  v11 = MEMORY[0x1E696AD98];
  v12 = atomic_load(&self->_airpodsDmCount.__a_.__a_value);
  v36[3] = objc_msgSend_numberWithUnsignedInt_(v11, v13, v12);
  v35[4] = @"skeletonCount";
  v14 = MEMORY[0x1E696AD98];
  v15 = atomic_load(&self->_skeletonCount.__a_.__a_value);
  v36[4] = objc_msgSend_numberWithUnsignedInt_(v14, v16, v15);
  v35[5] = @"facePoseCount";
  v17 = MEMORY[0x1E696AD98];
  v18 = atomic_load(&self->_facePoseCount.__a_.__a_value);
  v36[5] = objc_msgSend_numberWithUnsignedInt_(v17, v19, v18);
  v35[6] = @"watchCalorieCount";
  v20 = MEMORY[0x1E696AD98];
  v21 = atomic_load(&self->_watchActiveCalorieCount.__a_.__a_value);
  v36[6] = objc_msgSend_numberWithUnsignedInt_(v20, v22, v21);
  v35[7] = @"watchHeartRateCount";
  v23 = MEMORY[0x1E696AD98];
  v24 = atomic_load(&self->_watchHeartRateCount.__a_.__a_value);
  v36[7] = objc_msgSend_numberWithUnsignedInt_(v23, v25, v24);
  v35[8] = @"heartRateReferenceCount";
  v26 = MEMORY[0x1E696AD98];
  v27 = atomic_load(&self->_heartRateReferenceCount.__a_.__a_value);
  v36[8] = objc_msgSend_numberWithUnsignedInt_(v26, v28, v27);
  v35[9] = @"fitnessMachineSampleCount";
  v29 = MEMORY[0x1E696AD98];
  v30 = atomic_load(&self->_fitnessMachineSampleCount.__a_.__a_value);
  v36[9] = objc_msgSend_numberWithUnsignedInt_(v29, v31, v30);
  result = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v32, v36, v35, 10);
  v34 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)feedSkeleton:(id)skeleton
{
  v5 = objc_msgSend_skeleton2D(skeleton, a2, skeleton);
  objc_msgSend_localMachtime(skeleton, v6, v7);
  v9 = v8;
  objc_msgSend_globalMachtime(skeleton, v10, v11);
  objc_msgSend__feed2DSkeleton_localMachtime_globalMachtime_(self, v12, v5, v9, v13);
  v16 = objc_msgSend_skeleton3DLifted(skeleton, v14, v15);
  objc_msgSend_localMachtime(skeleton, v17, v18);
  v20 = v19;
  objc_msgSend_globalMachtime(skeleton, v21, v22);
  objc_msgSend__feed3DLiftedSkeleton_localMachtime_globalMachtime_(self, v23, v16, v20, v24);
  v27 = objc_msgSend_skeleton3DRetargeted(skeleton, v25, v26);
  objc_msgSend_localMachtime(skeleton, v28, v29);
  v31 = v30;
  objc_msgSend_globalMachtime(skeleton, v32, v33);
  objc_msgSend__feed3DRetargetedSkeleton_localMachtime_globalMachtime_(self, v34, v27, v31, v35);
  atomic_fetch_add(&self->_skeletonCount, 1u);
}

- (void)_feed2DSkeleton:(id)skeleton localMachtime:(double)machtime globalMachtime:(double)globalMachtime
{
  v30[33] = *MEMORY[0x1E69E9840];
  if (self->_logger.__ptr_)
  {
    if (objc_msgSend_count(skeleton, a2, skeleton, *&machtime, *&globalMachtime))
    {
      v8 = 0;
      do
      {
        v9 = objc_msgSend_objectAtIndexedSubscript_(skeleton, v7, v8);
        v12 = objc_msgSend_type(v9, v10, v11);
        v14 = objc_msgSend_objectAtIndexedSubscript_(skeleton, v13, v8);
        objc_msgSend_position(v14, v15, v16);
        v30[v12 + 2] = v17;
        v19 = objc_msgSend_objectAtIndexedSubscript_(skeleton, v18, v8);
        objc_msgSend_confidence(v19, v20, v21);
        *(&v30[21] + v12) = v22;
        v24 = objc_msgSend_objectAtIndexedSubscript_(skeleton, v23, v8);
        *(&v30[30] + v12 + 4) = objc_msgSend_visible(v24, v25, v26);
        ++v8;
      }

      while (objc_msgSend_count(skeleton, v27, v28) > v8);
    }

    sub_19B5C6D58(self->_logger.__ptr_, v30);
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)_feed3DLiftedSkeleton:(id)skeleton localMachtime:(double)machtime globalMachtime:(double)globalMachtime
{
  if (self->_logger.__ptr_)
  {
    if (objc_msgSend_count(skeleton, a2, skeleton, *&machtime, *&globalMachtime))
    {
      v8 = 0;
      do
      {
        v9 = objc_msgSend_objectAtIndexedSubscript_(skeleton, v7, v8);
        v12 = objc_msgSend_type(v9, v10, v11);
        v14 = objc_msgSend_objectAtIndexedSubscript_(skeleton, v13, v8);
        objc_msgSend_position(v14, v15, v16);
        *&v20[2 * v12 + 2] = v17;
        ++v8;
      }

      while (objc_msgSend_count(skeleton, v18, v19) > v8);
    }

    sub_19B5C714C(self->_logger.__ptr_, v20);
  }
}

- (void)_feed3DRetargetedSkeleton:(id)skeleton localMachtime:(double)machtime globalMachtime:(double)globalMachtime
{
  if (self->_logger.__ptr_)
  {
    if (objc_msgSend_count(skeleton, a2, skeleton, *&machtime, *&globalMachtime))
    {
      v9 = 0;
      do
      {
        v10 = objc_msgSend_objectAtIndexedSubscript_(skeleton, v7, v9);
        v13 = objc_msgSend_type(v10, v11, v12);
        v15 = objc_msgSend_objectAtIndexedSubscript_(skeleton, v14, v9);
        objc_msgSend_position(v15, v16, v17);
        *&v26[2 * v13 + 2] = v18;
        v20 = objc_msgSend_objectAtIndexedSubscript_(skeleton, v19, v9);
        objc_msgSend_quaternion(v20, v21, v22);
        *&v26[2 * v13 + 52] = v23;
        ++v9;
      }

      while (objc_msgSend_count(skeleton, v24, v25) > v9);
    }

    sub_19B5C7440(self->_logger.__ptr_, v26, v8);
  }
}

- (void)feedFacePose:(id)pose
{
  objc_msgSend_rotation(pose, a2, pose);
  v11 = v10 + (*_Q0.i32 + *&v8.i32[1]);
  if (v11 >= 0.0)
  {
    v20 = sqrtf(v11 + 1.0);
    *&v21 = v20 + v20;
    v22 = vrecpe_f32(v21);
    v23 = vmul_f32(v22, vrecps_f32(v21, v22));
    v24 = vmul_f32(v23, vrecps_f32(v21, v23)).f32[0];
    v30 = (*&v8.i32[2] - *&v9.i32[1]) * v24;
    v9.i32[1] = _Q0.i32[1];
    v31 = vmul_n_f32(vsub_f32(v9, *&vzip2q_s32(_Q0, vuzp1q_s32(_Q0, v8))), v24);
    v32 = *&v21 * 0.25;
  }

  else if (*_Q0.i32 < *&v8.i32[1] || *_Q0.i32 < v10)
  {
    v13 = 1.0 - *_Q0.i32;
    if (*&v8.i32[1] >= v10)
    {
      v33 = sqrtf(*&v8.i32[1] + (v13 - v10));
      v34.f32[0] = v33 + v33;
      v35 = vrecpe_f32(v34.u32[0]);
      v36 = vmul_f32(v35, vrecps_f32(v34.u32[0], v35));
      v37 = vmul_f32(v36, vrecps_f32(v34.u32[0], v36)).f32[0];
      v30 = (*&_Q0.i32[1] + *v8.i32) * v37;
      v34.f32[1] = *&v8.i32[2] + *&v9.i32[1];
      __asm { FMOV            V0.2S, #0.25 }

      *&_Q0.i32[1] = v37;
      v31 = vmul_f32(v34, *_Q0.i8);
      v32 = (*v9.i32 - *&_Q0.i32[2]) * v37;
    }

    else
    {
      v14 = sqrtf(v10 + (v13 - *&v8.i32[1]));
      *&v15 = v14 + v14;
      v16 = vrecpe_f32(v15);
      v17 = vmul_f32(v16, vrecps_f32(v15, v16));
      v18.f32[0] = vmul_f32(v17, vrecps_f32(v15, v17)).f32[0];
      v30 = (*&_Q0.i32[2] + *v9.i32) * v18.f32[0];
      v19.i32[1] = v15;
      v32 = (*&_Q0.i32[1] - *v8.i32) * v18.f32[0];
      v18.i32[1] = 0.25;
      v19.f32[0] = *&v8.i32[2] + *&v9.i32[1];
      v31 = vmul_f32(v19, v18);
    }
  }

  else
  {
    v25 = sqrtf(*_Q0.i32 + ((1.0 - *&v8.i32[1]) - v10));
    *&v26 = v25 + v25;
    v27 = vrecpe_f32(v26);
    v28 = vmul_f32(v27, vrecps_f32(v26, v27));
    v29 = vmul_f32(v28, vrecps_f32(v26, v28)).f32[0];
    v30 = *&v26 * 0.25;
    v31 = vmul_n_f32(vadd_f32(*&vextq_s8(_Q0, _Q0, 4uLL), vzip1_s32(*v8.i8, v9)), v29);
    v32 = (*&v8.i32[2] - *&v9.i32[1]) * v29;
  }

  objc_msgSend_localMachtime(pose, v5, v6);
  v146[0] = v41;
  objc_msgSend_localMachtime(pose, v42, v43);
  v146[1] = v44;
  v146[2] = 0x100000002;
  *&v146[3] = v30;
  v147 = vcvtq_f64_f32(v31);
  v148 = v32;
  objc_msgSend_translation(pose, v45, v46);
  v133 = v47;
  objc_msgSend_translation(pose, v48, v49);
  v149 = __PAIR64__(v50, v133);
  objc_msgSend_translation(pose, v51, v52);
  v150 = v53;
  v151 = 0;
  v153 = 0;
  v152 = 0;
  objc_msgSend_gaze(pose, v54, v55);
  v134 = v56;
  objc_msgSend_gaze(pose, v57, v58);
  v154 = __PAIR64__(v59, v134);
  objc_msgSend_gaze(pose, v60, v61);
  v135 = v62;
  objc_msgSend_leftEyePosition(pose, v63, v64);
  v155 = vzip2q_s32(v135, vuzp1q_s32(v135, v65)).u64[0];
  objc_msgSend_leftEyePosition(pose, v66, v67);
  v156 = v68;
  objc_msgSend_leftEyePosition(pose, v69, v70);
  v136 = v71;
  objc_msgSend_rightEyePosition(pose, v72, v73);
  v157 = vzip2q_s32(v136, vuzp1q_s32(v136, v74)).u64[0];
  objc_msgSend_rightEyePosition(pose, v75, v76);
  v158 = v77;
  objc_msgSend_rightEyePosition(pose, v78, v79);
  v159 = v80;
  v160 = 0;
  v161 = 0;
  v162 = 0;
  v143 = 0;
  objc_msgSend_confidence(pose, v81, v82);
  v140 = v83;
  v141 = objc_msgSend_tooDark(pose, v84, v85);
  v142 = objc_msgSend_sensorCovered(pose, v86, v87);
  v144 = objc_msgSend_failureCode(pose, v88, v89);
  objc_msgSend_roll(pose, v90, v91);
  v145 = v92;
  __src = 0;
  v138 = 0;
  v139 = 0;
  v95 = objc_msgSend_blendShapeWeights(pose, v93, v94);
  if (objc_msgSend_count(v95, v96, v97))
  {
    for (i = 0; ; ++i)
    {
      v101 = objc_msgSend_blendShapeWeights(pose, v98, v99);
      if (objc_msgSend_count(v101, v102, v103) <= i)
      {
        break;
      }

      v106 = objc_msgSend_blendShapeWeights(pose, v104, v105);
      v108 = objc_msgSend_objectAtIndexedSubscript_(v106, v107, i);
      objc_msgSend_floatValue(v108, v109, v110);
      v112 = v138;
      if (v138 >= v139)
      {
        v114 = __src;
        v115 = v138 - __src;
        v116 = (v138 - __src) >> 2;
        v117 = v116 + 1;
        if ((v116 + 1) >> 62)
        {
          sub_19B5BE690();
        }

        v118 = v139 - __src;
        if ((v139 - __src) >> 1 > v117)
        {
          v117 = v118 >> 1;
        }

        if (v118 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v119 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v119 = v117;
        }

        if (v119)
        {
          sub_19B4C4FA8(&__src, v119);
        }

        *(4 * v116) = v111;
        v113 = 4 * v116 + 4;
        memcpy(0, v114, v115);
        v120 = __src;
        __src = 0;
        v138 = v113;
        v139 = 0;
        if (v120)
        {
          operator delete(v120);
        }
      }

      else
      {
        *v138 = v111;
        v113 = (v112 + 4);
      }

      v138 = v113;
    }

    ptr = self->_logger.__ptr_;
    objc_msgSend_localMachtime(pose, v104, v105);
    v123 = v122;
    objc_msgSend_globalMachtime(pose, v124, v125);
    sub_19B5C80E0(ptr, &__src, v123, v126);
  }

  v127 = self->_logger.__ptr_;
  objc_msgSend_localMachtime(pose, v98, v99);
  v129 = v128;
  objc_msgSend_globalMachtime(pose, v130, v131);
  sub_19B5C77B8(v127, v146, &v140, v129, v132);
  atomic_fetch_add(&self->_facePoseCount, 1u);
  if (__src)
  {
    v138 = __src;
    operator delete(__src);
  }
}

- (void)feedWatchActiveCalories:(float)calories localMachtime:(double)machtime globalMachtime:(double)globalMachtime
{
  ptr = self->_logger.__ptr_;
  if (ptr)
  {
    sub_19B5C7C44(ptr, calories, machtime, globalMachtime);
  }

  atomic_fetch_add(&self->_watchActiveCalorieCount, 1u);
}

- (void)feedWatchBasalCalories:(float)calories localMachtime:(double)machtime globalMachtime:(double)globalMachtime
{
  ptr = self->_logger.__ptr_;
  if (ptr)
  {
    sub_19B5C7D8C(ptr, calories, machtime, globalMachtime);
  }

  atomic_fetch_add(&self->_watchBasalCalorieCount, 1u);
}

- (void)feedWatchHeartRate:(float)rate confidence:(float)confidence localMachtime:(double)machtime globalMachtime:(double)globalMachtime
{
  ptr = self->_logger.__ptr_;
  if (ptr)
  {
    sub_19B5C7ED4(ptr, rate, confidence, machtime, globalMachtime);
  }

  atomic_fetch_add(&self->_watchHeartRateCount, 1u);
}

- (void)feedHeartRateReference:(unsigned __int16)reference localMachtime:(double)machtime globalMachtime:(double)globalMachtime
{
  ptr = self->_logger.__ptr_;
  if (ptr)
  {
    sub_19B5C93F0(ptr, reference, machtime, globalMachtime);
  }

  atomic_fetch_add(&self->_heartRateReferenceCount, 1u);
}

- (void)feedWorkoutEvent:(id)event
{
  v27 = *MEMORY[0x1E69E9840];
  if (self->_logger.__ptr_)
  {
    v5 = objc_msgSend_eventType(event, a2, event);
    if (v5 >= 6)
    {
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A460);
      }

      v9 = qword_1EAFE27B8;
      if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = objc_msgSend_eventType(event, v10, v11);
        _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_DEFAULT, "[camera] Received unsupported event: %d", buf, 8u);
      }

      v12 = sub_19B420058();
      if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2780 != -1)
        {
          dispatch_once(&qword_1EAFE2780, &unk_1F0E2A460);
        }

        objc_msgSend_eventType(event, v13, v14);
        v15 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMCameraWorkoutSession feedWorkoutEvent:]", "CoreLocation: %s\n", v15);
        if (v15 != buf)
        {
          free(v15);
        }
      }

      v8 = 23;
    }

    else
    {
      v8 = *&asc_19B7BD818[8 * v5];
    }

    objc_msgSend_localMachtime(event, v6, v7);
    *buf = v16;
    objc_msgSend_localMachtime(event, v17, v18);
    v25 = v19;
    v26 = objc_msgSend_workoutType(event, v20, v21);
    v24 = v8;
    sub_19B5C9534(self->_logger.__ptr_, buf);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)feedBodyMetrics:(id)metrics
{
  if (self->_logger.__ptr_)
  {
    *v23 = 0u;
    v5 = objc_msgSend_biologicalSex(metrics, a2, metrics, 0, 0, 0, 0, 0, 0, 0, *&v23[12]);
    if (v5 <= 3)
    {
      v22[1] = v5;
    }

    objc_msgSend_heightMeters(metrics, v6, v7);
    *&v8 = v8;
    v22[2] = LODWORD(v8);
    objc_msgSend_weightKG(metrics, v9, v10);
    *&v11 = v11;
    v22[3] = LODWORD(v11);
    objc_msgSend_vo2max(metrics, v12, v13);
    *&v14 = v14;
    v22[4] = LODWORD(v14);
    *&v22[5] = objc_msgSend_age(metrics, v15, v16);
    v23[4] = objc_msgSend_betaBlockerUse(metrics, v17, v18);
    ptr = self->_logger.__ptr_;
    objc_msgSend_localMachtime(metrics, v20, v21);
    sub_19B5C8478(ptr, v22);
  }
}

- (void)feedFitnessMachineSample:(id)sample
{
  if (self->_logger.__ptr_)
  {
    objc_msgSend_localMachtime(sample, a2, sample);
    v70[0] = v5;
    objc_msgSend_globalMachtime(sample, v6, v7);
    v70[1] = v8;
    objc_msgSend_elapsedTime(sample, v9, v10);
    v70[2] = v11;
    objc_msgSend_energy(sample, v12, v13);
    v71 = v14;
    objc_msgSend_treadmillDistance(sample, v15, v16);
    v72 = v17;
    objc_msgSend_indoorBikeDistance(sample, v18, v19);
    v73 = v20;
    objc_msgSend_crossTrainerDistance(sample, v21, v22);
    v74 = v23;
    v75 = objc_msgSend_floors(sample, v24, v25);
    v76 = objc_msgSend_stepCount(sample, v26, v27);
    objc_msgSend_strideCount(sample, v28, v29);
    v77 = v30;
    objc_msgSend_instantaneousSpeed(sample, v31, v32);
    v78 = v33;
    objc_msgSend_averageSpeed(sample, v34, v35);
    v79 = v36;
    objc_msgSend_instantaneousPace(sample, v37, v38);
    v80 = v39;
    objc_msgSend_averagePace(sample, v40, v41);
    v81 = v42;
    objc_msgSend_elevationGain(sample, v43, v44);
    v82 = v45;
    objc_msgSend_inclination(sample, v46, v47);
    v83 = v48;
    objc_msgSend_resistanceLevel(sample, v49, v50);
    v84 = v51;
    objc_msgSend_instantaneousPower(sample, v52, v53);
    v85 = v54;
    objc_msgSend_averagePower(sample, v55, v56);
    v86 = v57;
    objc_msgSend_instantaneousCadence(sample, v58, v59);
    v87 = v60;
    objc_msgSend_averageCadence(sample, v61, v62);
    v88 = v63;
    objc_msgSend_instantaneousHeartRate(sample, v64, v65);
    v89 = v66;
    objc_msgSend_averageHeartRate(sample, v67, v68);
    v90 = v69;
    sub_19B5C96C4(self->_logger.__ptr_, v70);
  }

  atomic_fetch_add(&self->_fitnessMachineSampleCount, 1u);
}

- (void)_feedAccessoryConfig:(const Config *)config
{
  ptr = self->_logger.__ptr_;
  if (ptr)
  {
    sub_19B5C8A00(ptr, config);
  }
}

- (void)_feedAccessoryInEarStatus:(int)status
{
  ptr = self->_logger.__ptr_;
  if (ptr)
  {
    v5 = mach_continuous_time();
    v6 = sub_19B41E070(v5);

    sub_19B5C88D4(ptr, status, v6);
  }
}

- (void)_feedDeviceMotion:(const Sample *)motion
{
  ptr = self->_logger.__ptr_;
  if (ptr)
  {
    sub_19B5C8C48(ptr, &motion->timestamp, 7);
  }

  atomic_fetch_add(&self->_dmCount, 1u);
}

- (void)_feedAccel:(const Sample *)accel
{
  ptr = self->_logger.__ptr_;
  if (ptr)
  {
    sub_19B5C8FB4(ptr, accel);
  }

  atomic_fetch_add(&self->_accelCount, 1u);
}

- (void)_feedGyro:(const Sample *)gyro
{
  ptr = self->_logger.__ptr_;
  if (ptr)
  {
    sub_19B5C9108(ptr, gyro);
  }

  atomic_fetch_add(&self->_gyroCount, 1u);
}

- (void)_feedGyroTemperature:(const Temperature *)temperature
{
  ptr = self->_logger.__ptr_;
  if (ptr)
  {
    sub_19B5C92E4(ptr, temperature);
  }
}

- (void)_feedHeadAccessoryDeviceMotion:(id)motion
{
  ptr = self->_logger.__ptr_;
  if (ptr)
  {
    sub_19B5C85E4(ptr, motion);
  }

  atomic_fetch_add(&self->_airpodsDmCount, 1u);
}

- (void)flushMsl
{
  ptr = self->_logger.__ptr_;
  if (ptr)
  {
    sub_19B5C83C8(ptr);
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 72) = 0u;
  *(self + 88) = 0u;
  *(self + 100) = 0u;
  return self;
}

@end