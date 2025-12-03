@interface CMMotionContextSession
- (CMMotionContextSession)initWithOptions:(id)options;
- (id).cxx_construct;
- (uint64_t)feedARKitWorldPoseWithTimestamp:(int8x16_t)timestamp pose:(int32x4_t)pose status:(__n128)status;
- (void)enableMLModel:(BOOL)model;
- (void)enterDistractedViewingSession:(int)session;
- (void)exitDistractedViewingSession:(int)session;
- (void)feedAccessoryConfig:(const Config *)config;
- (void)feedAudioAccessoryIMU:(const void *)u;
- (void)feedGPSLocationWithTimestamp:(double)timestamp course:(double)course speed:(double)speed latitude:(double)latitude longitude:(double)longitude horizontalAccuracy:(double)accuracy;
- (void)feedSourceDeviceIMU:(const Sample *)u;
- (void)initLoggerWithPrefix:(id)prefix filePath:(id)path;
- (void)notifyMotionContextClient:(int)client;
- (void)notifyPdrClient:(const void *)client;
- (void)notifyStepCountClient:(const void *)client;
- (void)setAlgType:(int)type;
- (void)setSpeedEstType:(int)type;
- (void)setTrackingClientMode:(int)mode;
- (void)start;
- (void)startMotionContextUpdatesToQueue:(id)queue andHandler:(id)handler;
- (void)startPdrUpdatesToQueue:(id)queue andHandler:(id)handler;
- (void)startStepCountUpdatesToQueue:(id)queue andHandler:(id)handler;
- (void)stop;
@end

@implementation CMMotionContextSession

- (CMMotionContextSession)initWithOptions:(id)options
{
  v39 = *MEMORY[0x1E69E9840];
  v34.receiver = self;
  v34.super_class = CMMotionContextSession;
  v4 = [(CMMotionContextSession *)&v34 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 3194) = 0;
    *(v4 + 12904) = 0u;
    v4[12780] = 1;
    v4[12944] = 0;
    *(v4 + 1620) = 0;
    *(v4 + 1607) = 0;
    *(v4 + 811) = 0u;
    *(v4 + 3248) = 0;
    v6 = mach_continuous_time();
    v5->_currentTime = sub_19B41E070(v6);
    v5->_inDVEvent = 0;
    v5->_lastTrackingDisableRoute = 0;
    if (options)
    {
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
      }

      v7 = qword_1EAFE2A60;
      if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        optionsCopy = options;
        _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "[CMMotionContextSession] Options dictionary: %@", buf, 0xCu);
      }

      v8 = sub_19B420058();
      if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2A58 != -1)
        {
          dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
        }

        v35 = 138412290;
        optionsCopy2 = options;
        v10 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionContextSession initWithOptions:]", "CoreLocation: %s\n", v10);
        if (v10 != buf)
        {
          free(v10);
        }
      }

      if (objc_msgSend_valueForKey_(options, v9, @"kCMMotionContextSessionLogMSL"))
      {
        v12 = objc_msgSend_objectForKeyedSubscript_(options, v11, @"kCMMotionContextSessionLogMSL");
        v15 = objc_msgSend_BOOLValue(v12, v13, v14);
        v5->_logMSL = v15;
        if (v15)
        {
          v16 = objc_msgSend_objectForKeyedSubscript_(options, v11, @"kCMMotionContextSessionMSLFilePath");
          if (objc_msgSend_valueForKey_(options, v17, @"kCMMotionContextSessionMSLFilePrefix"))
          {
            v19 = objc_msgSend_objectForKeyedSubscript_(options, v18, @"kCMMotionContextSessionMSLFilePrefix");
            v21 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v20, @"Spatial_%@", v19);
          }

          else
          {
            v21 = @"MotionContext";
          }

          if (qword_1EAFE2A58 != -1)
          {
            dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
          }

          v22 = qword_1EAFE2A60;
          if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            optionsCopy = v21;
            _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_DEFAULT, "[CMMotionContextSession] MSL file prefix: %@", buf, 0xCu);
          }

          v23 = sub_19B420058();
          if (*(v23 + 160) > 1 || *(v23 + 164) > 1 || *(v23 + 168) > 1 || *(v23 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2A58 != -1)
            {
              dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
            }

            v35 = 138412290;
            optionsCopy2 = v21;
            v25 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionContextSession initWithOptions:]", "CoreLocation: %s\n", v25);
            if (v25 != buf)
            {
              free(v25);
            }
          }

          objc_msgSend_initLoggerWithPrefix_filePath_(v5, v24, v21, v16);
        }
      }

      if (objc_msgSend_valueForKey_(options, v11, @"kCMMotionContextSessionUseMLModel"))
      {
        v27 = objc_msgSend_objectForKeyedSubscript_(options, v26, @"kCMMotionContextSessionUseMLModel");
        if (objc_msgSend_BOOLValue(v27, v28, v29))
        {
          objc_msgSend_UTF8String(@"/System/Library/PrivateFrameworks/CoreMotionModels.framework/HumanMotionModels/hml.espresso/hml.mlmodelc", v30, v31);
          operator new();
        }
      }
    }
  }

  v32 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)start
{
  v12 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  if (qword_1EAFE2A58 != -1)
  {
    dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
  }

  v3 = qword_1EAFE2A60;
  if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "Starting CMMotionContextSession", buf, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
    }

    v5 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionContextSession start]", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  if (!self->_analyticsTracker.__ptr_)
  {
    operator new();
  }

  if (!self->_deviceMotionDispatcher.__ptr_)
  {
    v6 = [CLDeviceMotionProperties alloc];
    objc_msgSend_initWithMode_(v6, v7, 7);
    operator new();
  }

  if (!self->_accessoryDeviceMotionConfigDispatcher.__ptr_)
  {
    operator new();
  }

  if (!self->_accessoryDeviceMotionDispatcher.__ptr_)
  {
    *(sub_19B6D6344() + 28) = 1;
    operator new();
  }

  ptr = self->hmlModel.__ptr_;
  if (ptr)
  {
    *(ptr + 1560) = 0;
    *(ptr + 194) = 0;
  }

  *&self->_totalSessionTime = 0;
  v9 = mach_continuous_time();
  self->_currentTime = sub_19B41E070(v9);
  objc_sync_exit(self);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)stop
{
  v23 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  if (qword_1EAFE2A58 != -1)
  {
    dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
  }

  v3 = qword_1EAFE2A60;
  if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "Stopping CMMotionContextSession", buf, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
    }

    v5 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionContextSession stop]", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  if (self->_deviceMotionDispatcher.__ptr_)
  {
    v6 = sub_19B424AE0();
    sub_19B425248(v6, self->_deviceMotionDispatcher.__ptr_);
    ptr = self->_deviceMotionDispatcher.__ptr_;
    self->_deviceMotionDispatcher.__ptr_ = 0;
    if (ptr)
    {
      (*(ptr->var0 + 1))(ptr);
    }
  }

  if (self->_accessoryDeviceMotionConfigDispatcher.__ptr_)
  {
    v8 = sub_19B6D6344();
    sub_19B426A14(v8, 2, self->_accessoryDeviceMotionConfigDispatcher.__ptr_);
    v9 = self->_accessoryDeviceMotionConfigDispatcher.__ptr_;
    self->_accessoryDeviceMotionConfigDispatcher.__ptr_ = 0;
    if (v9)
    {
      (*(v9->var0 + 1))(v9);
    }
  }

  if (self->_accessoryDeviceMotionDispatcher.__ptr_)
  {
    v10 = sub_19B6D6344();
    sub_19B426A14(v10, 1, self->_accessoryDeviceMotionDispatcher.__ptr_);
    v11 = self->_accessoryDeviceMotionDispatcher.__ptr_;
    self->_accessoryDeviceMotionDispatcher.__ptr_ = 0;
    if (v11)
    {
      (*(v11->var0 + 1))(v11);
    }
  }

  v12 = self->_analyticsTracker.__ptr_;
  if (v12)
  {
    auxSampleCounter = self->_auxSampleCounter;
    if (auxSampleCounter)
    {
      v14 = self->_totalSessionTime / auxSampleCounter;
      if (v14 < 0.04)
      {
        sub_19B6E3368(v12);
LABEL_39:
        v19 = self->_analyticsTracker.__ptr_;
        self->_analyticsTracker.__ptr_ = 0;
        if (v19)
        {
          MEMORY[0x19EAE76F0](v19, 0x1000C406BA0FAAELL);
        }

        goto LABEL_41;
      }
    }

    else
    {
      v14 = 3.4028e38;
    }

    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
    }

    v15 = qword_1EAFE2A60;
    v16 = v14;
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      v22 = v16;
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_DEFAULT, "Not sending invalid CA metrics due to aux sample drops. avgAuxInterval %{public}f\n", buf, 0xCu);
    }

    v17 = sub_19B420058();
    if (*(v17 + 160) > 1 || *(v17 + 164) > 1 || *(v17 + 168) > 1 || *(v17 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
      }

      v18 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionContextSession stop]", "CoreLocation: %s\n", v18);
      if (v18 != buf)
      {
        free(v18);
      }
    }

    goto LABEL_39;
  }

LABEL_41:
  objc_sync_exit(self);
  v20 = *MEMORY[0x1E69E9840];
}

- (void)setAlgType:(int)type
{
  v10 = *MEMORY[0x1E69E9840];
  self->_pdr.fAlgType = type;
  if (qword_1EAFE2A58 != -1)
  {
    dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
  }

  v4 = qword_1EAFE2A60;
  if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    typeCopy = type;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "[CMPdr] Setting Pdr algoType to %d\n", buf, 8u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
    }

    v6 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMPdr::setAlgType(Pdr::AlgType)", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setSpeedEstType:(int)type
{
  v15 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2A58 != -1)
  {
    dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
  }

  v5 = qword_1EAFE2A60;
  if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    typeCopy2 = type;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "Setting Pdr speed estimator to %d\n", buf, 8u);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
    }

    v7 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionContextSession setSpeedEstType:]", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  if (!self->_pdr.fAlgType)
  {
    ptr = self->_pdr.fPdrEstimatorOnHead.__ptr_;
    if (ptr)
    {
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
      }

      v9 = qword_1EAFE2A60;
      if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        typeCopy2 = type;
        _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_DEFAULT, "[DoTEstimator] Setting speedType, %d\n", buf, 8u);
      }

      v10 = sub_19B420058();
      if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2A58 != -1)
        {
          dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
        }

        v11 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMPdrEstimatorOnHead::setSpeedEstimationType(Pdr::SpeedEstimationType)", "CoreLocation: %s\n", v11);
        if (v11 != buf)
        {
          free(v11);
        }
      }

      *(ptr + 14) = type;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)enableMLModel:(BOOL)model
{
  if (self->_enableMLModel != model)
  {
    modelCopy = model;
    objc_sync_enter(self);
    self->_enableMLModel = modelCopy;
    if (self->hmlModel.__ptr_)
    {
      if (!modelCopy)
      {
        sub_19B5C1D50(&self->hmlModel, 0);
      }
    }

    else if (modelCopy)
    {
      objc_msgSend_UTF8String(@"/System/Library/PrivateFrameworks/CoreMotionModels.framework/HumanMotionModels/hml.espresso/hml.mlmodelc", v5, v6);
      operator new();
    }

    objc_sync_exit(self);
  }
}

- (void)enterDistractedViewingSession:(int)session
{
  v12 = *MEMORY[0x1E69E9840];
  self->_lastTrackingDisableRoute = session;
  if ((session | 2) == 3)
  {
    self->_inDVEvent = 1;
    *&self->_distanceTravelledPerDVEvent = 0;
    v5 = mach_continuous_time();
    self->_distractedViewingEnterTime = sub_19B41E070(v5);
    self->_initialPosition = self->_result.position;
    self->_initialHeadingDegrees = self->_result.directionOfTravelDegrees;
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
    }

    v6 = qword_1EAFE2A60;
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      sessionCopy = session;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "[CMMotionContextSession] entered DV event via route %d", buf, 8u);
    }

    v7 = sub_19B420058();
    if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
      }

      v8 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionContextSession enterDistractedViewingSession:]", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)exitDistractedViewingSession:(int)session
{
  v46 = *MEMORY[0x1E69E9840];
  if ((self->_lastTrackingDisableRoute | 2) == 3 && (session - 1) <= 1)
  {
    ptr = self->_analyticsTracker.__ptr_;
    if (*ptr != -1)
    {
      ++*ptr;
    }

    v6 = mach_continuous_time();
    v7 = sub_19B41E070(v6);
    v8 = self->_result.position.elements[0] - self->_initialPosition.elements[0];
    v9 = sqrt(v8 * v8 + (self->_result.position.elements[1] - self->_initialPosition.elements[1]) * (self->_result.position.elements[1] - self->_initialPosition.elements[1]));
    distanceTravelledPerDVEvent = self->_distanceTravelledPerDVEvent;
    v11 = 0.0;
    v12 = 0.0;
    if (distanceTravelledPerDVEvent != 0.0)
    {
      v12 = (v9 / distanceTravelledPerDVEvent);
    }

    v13 = self->_result.directionOfTravelDegrees - self->_initialHeadingDegrees;
    v14 = v7 - self->_distractedViewingEnterTime;
    if (v14 > 0.0)
    {
      v11 = (self->_stepCountPerDVEvent / v14);
    }

    v15 = self->_analyticsTracker.__ptr_;
    v16 = v9;
    v18 = *(v15 + 3);
    v17 = *(v15 + 4);
    if (v17 <= v16)
    {
      v17 = v16;
    }

    if (v18 >= v16)
    {
      v18 = v16;
    }

    *(v15 + 3) = v18;
    *(v15 + 4) = v17;
    *(v15 + 5) = *(v15 + 5) + v16;
    ++*(v15 + 12);
    v19 = distanceTravelledPerDVEvent;
    v21 = *(v15 + 7);
    v20 = *(v15 + 8);
    if (v20 <= v19)
    {
      v20 = v19;
    }

    if (v21 >= v19)
    {
      v21 = v19;
    }

    *(v15 + 7) = v21;
    *(v15 + 8) = v20;
    *(v15 + 9) = *(v15 + 9) + v19;
    ++*(v15 + 20);
    v23 = *(v15 + 11);
    v22 = *(v15 + 12);
    if (v22 <= v12)
    {
      v22 = v12;
    }

    if (v23 >= v12)
    {
      v23 = v12;
    }

    *(v15 + 11) = v23;
    *(v15 + 12) = v22;
    *(v15 + 13) = v12 + *(v15 + 13);
    ++*(v15 + 28);
    v24 = v13;
    v26 = *(v15 + 15);
    v25 = *(v15 + 16);
    if (v25 <= v24)
    {
      v25 = v24;
    }

    if (v26 >= v24)
    {
      v26 = v24;
    }

    *(v15 + 15) = v26;
    *(v15 + 16) = v25;
    *(v15 + 17) = *(v15 + 17) + v24;
    ++*(v15 + 36);
    stepCountPerDVEvent = self->_stepCountPerDVEvent;
    v29 = *(v15 + 19);
    v28 = *(v15 + 20);
    if (v28 <= stepCountPerDVEvent)
    {
      v28 = self->_stepCountPerDVEvent;
    }

    if (v29 >= stepCountPerDVEvent)
    {
      v29 = self->_stepCountPerDVEvent;
    }

    *(v15 + 19) = v29;
    *(v15 + 20) = v28;
    *(v15 + 21) = *(v15 + 21) + stepCountPerDVEvent;
    ++*(v15 + 44);
    v31 = *(v15 + 23);
    v30 = *(v15 + 24);
    if (v30 <= v11)
    {
      v30 = v11;
    }

    if (v31 >= v11)
    {
      v31 = v11;
    }

    *(v15 + 23) = v31;
    *(v15 + 24) = v30;
    *(v15 + 25) = v11 + *(v15 + 25);
    ++*(v15 + 52);
    v32 = v14;
    v34 = *(v15 + 31);
    v33 = *(v15 + 32);
    if (v33 <= v32)
    {
      v33 = v32;
    }

    if (v34 >= v32)
    {
      v34 = v32;
    }

    *(v15 + 31) = v34;
    *(v15 + 32) = v33;
    *(v15 + 33) = *(v15 + 33) + v32;
    ++*(v15 + 68);
    self->_inDVEvent = 0;
    if (self->_lastTrackingDisableRoute == 1)
    {
      v35 = (v15 + 4);
      v36 = *(v15 + 1);
    }

    else
    {
      v35 = (v15 + 8);
      v36 = *(v15 + 2);
    }

    if (v36 != -1)
    {
      *v35 = v36 + 1;
    }

    if (session == 1)
    {
      v39 = *(v15 + 3);
      v37 = (v15 + 12);
      v38 = v39;
    }

    else
    {
      v40 = *(v15 + 4);
      v37 = (v15 + 16);
      v38 = v40;
    }

    if (v38 != -1)
    {
      *v37 = v38 + 1;
    }

    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
    }

    v41 = qword_1EAFE2A60;
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v41, OS_LOG_TYPE_DEFAULT, "[CMMotionContextSession] stop logging CA metrics for a DV event.", buf, 2u);
    }

    v42 = sub_19B420058();
    if (*(v42 + 160) > 1 || *(v42 + 164) > 1 || *(v42 + 168) > 1 || *(v42 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
      }

      v43 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionContextSession exitDistractedViewingSession:]", "CoreLocation: %s\n", v43);
      if (v43 != buf)
      {
        free(v43);
      }
    }
  }

  v44 = *MEMORY[0x1E69E9840];
}

- (void)setTrackingClientMode:(int)mode
{
  ptr = self->_analyticsTracker.__ptr_;
  if (ptr)
  {
    *(ptr + 79) = mode;
  }
}

- (void)initLoggerWithPrefix:(id)prefix filePath:(id)path
{
  v17 = *MEMORY[0x1E69E9840];
  if (prefix)
  {
    objc_msgSend_cStringUsingEncoding_(prefix, a2, 1);
    objc_msgSend_cStringUsingEncoding_(path, v5, 1);
    operator new();
  }

  if (qword_1EAFE2A58 != -1)
  {
    dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
  }

  v6 = qword_1EAFE2A60;
  if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_FAULT))
  {
    *buf = 68289539;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    v14 = "assert";
    v15 = 2081;
    v16 = "prefix";
    _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:No prefix provided, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
    }
  }

  v7 = qword_1EAFE2A60;
  if (os_signpost_enabled(qword_1EAFE2A60))
  {
    *buf = 68289539;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    v14 = "assert";
    v15 = 2081;
    v16 = "prefix";
    _os_signpost_emit_with_name_impl(&dword_19B41C000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "No prefix provided", "{msg%{public}.0s:No prefix provided, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
    }
  }

  v8 = qword_1EAFE2A60;
  if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_INFO))
  {
    *buf = 68289539;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    v14 = "assert";
    v15 = 2081;
    v16 = "prefix";
    _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:No prefix provided, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  abort_report_np();
  __break(1u);
}

- (void)notifyStepCountClient:(const void *)client
{
  if (self->_stepCountClientHandler)
  {
    if (self->_stepCountClientQueue)
    {
      objc_sync_enter(self);
      stepCountClientHandler = self->_stepCountClientHandler;
      stepCountClientQueue = self->_stepCountClientQueue;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = sub_19B5C2774;
      v7[3] = &unk_1E7532AD8;
      v7[4] = stepCountClientHandler;
      v7[5] = client;
      dispatch_sync(stepCountClientQueue, v7);
      objc_sync_exit(self);
    }
  }
}

- (void)notifyPdrClient:(const void *)client
{
  if (self->_pdrClientQueue)
  {
    if (self->_pdrClientHandler)
    {
      objc_sync_enter(self);
      pdrClientHandler = self->_pdrClientHandler;
      pdrClientQueue = self->_pdrClientQueue;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = sub_19B5C2834;
      v7[3] = &unk_1E7532AD8;
      v7[4] = pdrClientHandler;
      v7[5] = client;
      dispatch_sync(pdrClientQueue, v7);
      objc_sync_exit(self);
    }
  }
}

- (void)notifyMotionContextClient:(int)client
{
  if (self->_motionContextClientHandler)
  {
    if (self->_motionContextClientQueue)
    {
      objc_sync_enter(self);
      motionContextClientHandler = self->_motionContextClientHandler;
      motionContextClientQueue = self->_motionContextClientQueue;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = sub_19B5C2904;
      v7[3] = &unk_1E7532AB0;
      v7[4] = motionContextClientHandler;
      clientCopy = client;
      dispatch_sync(motionContextClientQueue, v7);
      objc_sync_exit(self);
    }
  }
}

- (void)startStepCountUpdatesToQueue:(id)queue andHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2A58 != -1)
  {
    dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
  }

  v7 = qword_1EAFE2A60;
  if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "[CMMotionContextSession] Starting push updates", buf, 2u);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) <= 1 && *(v8 + 164) <= 1 && *(v8 + 168) <= 1 && !*(v8 + 152))
  {
    goto LABEL_12;
  }

  bzero(buf, 0x65CuLL);
  if (qword_1EAFE2A58 != -1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v9 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionContextSession startStepCountUpdatesToQueue:andHandler:]", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }

LABEL_12:
    if (!queue)
    {
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
      }

      v13 = qword_1EAFE2A60;
      handler = "queue";
      if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        v21 = 2082;
        v22 = "assert";
        v23 = 2081;
        v24 = "queue";
        _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CMMotionContextSession] client queue is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1EAFE2A58 != -1)
        {
          dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
        }
      }

      v14 = qword_1EAFE2A60;
      if (os_signpost_enabled(qword_1EAFE2A60))
      {
        *buf = 68289539;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        v21 = 2082;
        v22 = "assert";
        v23 = 2081;
        v24 = "queue";
        _os_signpost_emit_with_name_impl(&dword_19B41C000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CMMotionContextSession] client queue is nil", "{msg%{public}.0s:[CMMotionContextSession] client queue is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1EAFE2A58 != -1)
        {
          dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
        }
      }

      self = qword_1EAFE2A60;
      if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        v21 = 2082;
        v22 = "assert";
        v23 = 2081;
        v24 = "queue";
        _os_log_impl(&dword_19B41C000, &self->super, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CMMotionContextSession] client queue is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      goto LABEL_40;
    }

    if (handler)
    {
      break;
    }

    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
    }

    v15 = qword_1EAFE2A60;
    queue = "assert";
    handler = "handler";
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2082;
      v22 = "assert";
      v23 = 2081;
      v24 = "handler";
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CMMotionContextSession] client handler is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
      }
    }

    v16 = qword_1EAFE2A60;
    if (os_signpost_enabled(qword_1EAFE2A60))
    {
      *buf = 68289539;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2082;
      v22 = "assert";
      v23 = 2081;
      v24 = "handler";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CMMotionContextSession] client handler is nil", "{msg%{public}.0s:[CMMotionContextSession] client handler is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
      }
    }

    self = qword_1EAFE2A60;
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2082;
      v22 = "assert";
      v23 = 2081;
      v24 = "handler";
      _os_log_impl(&dword_19B41C000, &self->super, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CMMotionContextSession] client handler is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

LABEL_40:
    abort_report_np();
    __break(1u);
LABEL_41:
    dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
  }

  objc_sync_enter(self);
  stepCountClientQueue = self->_stepCountClientQueue;
  if (stepCountClientQueue)
  {
    dispatch_release(stepCountClientQueue);
  }

  stepCountClientHandler = self->_stepCountClientHandler;
  if (stepCountClientHandler)
  {
    _Block_release(stepCountClientHandler);
  }

  self->_stepCountClientQueue = queue;
  dispatch_retain(queue);
  self->_stepCountClientHandler = _Block_copy(handler);
  objc_sync_exit(self);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)startPdrUpdatesToQueue:(id)queue andHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2A58 != -1)
  {
    dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
  }

  v7 = qword_1EAFE2A60;
  if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "[CMMotionContextSession] Starting push updates", buf, 2u);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) <= 1 && *(v8 + 164) <= 1 && *(v8 + 168) <= 1 && !*(v8 + 152))
  {
    goto LABEL_12;
  }

  bzero(buf, 0x65CuLL);
  if (qword_1EAFE2A58 != -1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v9 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionContextSession startPdrUpdatesToQueue:andHandler:]", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }

LABEL_12:
    if (!queue)
    {
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
      }

      v13 = qword_1EAFE2A60;
      handler = "queue";
      if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        v21 = 2082;
        v22 = "assert";
        v23 = 2081;
        v24 = "queue";
        _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CMMotionContextSession] client queue is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1EAFE2A58 != -1)
        {
          dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
        }
      }

      v14 = qword_1EAFE2A60;
      if (os_signpost_enabled(qword_1EAFE2A60))
      {
        *buf = 68289539;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        v21 = 2082;
        v22 = "assert";
        v23 = 2081;
        v24 = "queue";
        _os_signpost_emit_with_name_impl(&dword_19B41C000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CMMotionContextSession] client queue is nil", "{msg%{public}.0s:[CMMotionContextSession] client queue is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1EAFE2A58 != -1)
        {
          dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
        }
      }

      self = qword_1EAFE2A60;
      if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        v21 = 2082;
        v22 = "assert";
        v23 = 2081;
        v24 = "queue";
        _os_log_impl(&dword_19B41C000, &self->super, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CMMotionContextSession] client queue is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      goto LABEL_40;
    }

    if (handler)
    {
      break;
    }

    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
    }

    v15 = qword_1EAFE2A60;
    queue = "assert";
    handler = "handler";
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2082;
      v22 = "assert";
      v23 = 2081;
      v24 = "handler";
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CMMotionContextSession] client handler is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
      }
    }

    v16 = qword_1EAFE2A60;
    if (os_signpost_enabled(qword_1EAFE2A60))
    {
      *buf = 68289539;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2082;
      v22 = "assert";
      v23 = 2081;
      v24 = "handler";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CMMotionContextSession] client handler is nil", "{msg%{public}.0s:[CMMotionContextSession] client handler is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
      }
    }

    self = qword_1EAFE2A60;
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2082;
      v22 = "assert";
      v23 = 2081;
      v24 = "handler";
      _os_log_impl(&dword_19B41C000, &self->super, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CMMotionContextSession] client handler is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

LABEL_40:
    abort_report_np();
    __break(1u);
LABEL_41:
    dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
  }

  objc_sync_enter(self);
  pdrClientQueue = self->_pdrClientQueue;
  if (pdrClientQueue)
  {
    dispatch_release(pdrClientQueue);
  }

  pdrClientHandler = self->_pdrClientHandler;
  if (pdrClientHandler)
  {
    _Block_release(pdrClientHandler);
  }

  self->_pdrClientQueue = queue;
  dispatch_retain(queue);
  self->_pdrClientHandler = _Block_copy(handler);
  objc_sync_exit(self);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)startMotionContextUpdatesToQueue:(id)queue andHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2A58 != -1)
  {
    dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
  }

  v7 = qword_1EAFE2A60;
  if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "[CMMotionContextSession] Starting push updates", buf, 2u);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) <= 1 && *(v8 + 164) <= 1 && *(v8 + 168) <= 1 && !*(v8 + 152))
  {
    goto LABEL_12;
  }

  bzero(buf, 0x65CuLL);
  if (qword_1EAFE2A58 != -1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v9 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionContextSession startMotionContextUpdatesToQueue:andHandler:]", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }

LABEL_12:
    if (!queue)
    {
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
      }

      v13 = qword_1EAFE2A60;
      handler = "queue";
      if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        v21 = 2082;
        v22 = "assert";
        v23 = 2081;
        v24 = "queue";
        _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CMMotionContextSession] client queue is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1EAFE2A58 != -1)
        {
          dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
        }
      }

      v14 = qword_1EAFE2A60;
      if (os_signpost_enabled(qword_1EAFE2A60))
      {
        *buf = 68289539;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        v21 = 2082;
        v22 = "assert";
        v23 = 2081;
        v24 = "queue";
        _os_signpost_emit_with_name_impl(&dword_19B41C000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CMMotionContextSession] client queue is nil", "{msg%{public}.0s:[CMMotionContextSession] client queue is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1EAFE2A58 != -1)
        {
          dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
        }
      }

      self = qword_1EAFE2A60;
      if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        v21 = 2082;
        v22 = "assert";
        v23 = 2081;
        v24 = "queue";
        _os_log_impl(&dword_19B41C000, &self->super, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CMMotionContextSession] client queue is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      goto LABEL_40;
    }

    if (handler)
    {
      break;
    }

    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
    }

    v15 = qword_1EAFE2A60;
    queue = "assert";
    handler = "handler";
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2082;
      v22 = "assert";
      v23 = 2081;
      v24 = "handler";
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CMMotionContextSession] client handler is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
      }
    }

    v16 = qword_1EAFE2A60;
    if (os_signpost_enabled(qword_1EAFE2A60))
    {
      *buf = 68289539;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2082;
      v22 = "assert";
      v23 = 2081;
      v24 = "handler";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CMMotionContextSession] client handler is nil", "{msg%{public}.0s:[CMMotionContextSession] client handler is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
      }
    }

    self = qword_1EAFE2A60;
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2082;
      v22 = "assert";
      v23 = 2081;
      v24 = "handler";
      _os_log_impl(&dword_19B41C000, &self->super, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CMMotionContextSession] client handler is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

LABEL_40:
    abort_report_np();
    __break(1u);
LABEL_41:
    dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
  }

  objc_sync_enter(self);
  motionContextClientQueue = self->_motionContextClientQueue;
  if (motionContextClientQueue)
  {
    dispatch_release(motionContextClientQueue);
  }

  motionContextClientHandler = self->_motionContextClientHandler;
  if (motionContextClientHandler)
  {
    _Block_release(motionContextClientHandler);
  }

  self->_motionContextClientQueue = queue;
  dispatch_retain(queue);
  self->_motionContextClientHandler = _Block_copy(handler);
  objc_sync_exit(self);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)feedSourceDeviceIMU:(const Sample *)u
{
  if (self->_logMSL)
  {
    sub_19B5E5DB4(self->_logger.__ptr_, &u->timestamp);
  }
}

- (void)feedAudioAccessoryIMU:(const void *)u
{
  v3 = MEMORY[0x1EEE9AC00](self, a2, u);
  v5 = v4;
  v6 = v3;
  v112 = *MEMORY[0x1E69E9840];
  if (*(v3 + 16) == 1)
  {
    sub_19B5E57B8(*(v3 + 8), v4);
  }

  v7 = *(v5 + 64);
  v8 = v7 - *(v6 + 12864);
  *(v6 + 12856) = *(v6 + 12856) + v8;
  *v92 = v7;
  v92[1] = *(v5 + 16);
  v9 = *(v5 + 24);
  v94 = *(v5 + 40);
  v10 = *(v5 + 48);
  v93 = v9;
  v95 = v10;
  v96 = *v5;
  sub_19B70A928(v6 + 6744, v92, &v89);
  sub_19B67D91C(v6 + 48, v92, &v91, &v85, v11);
  v13 = v85;
  *(v6 + 12800) = *v86;
  v14 = *&v86[16];
  v15 = v87;
  *(v6 + 12816) = *&v86[16];
  *(v6 + 12832) = v15;
  *(v6 + 12848) = v88;
  *(v6 + 12784) = v13;
  if (*(v6 + 12996) == 1)
  {
    v16 = *(v6 + 12952);
    v17 = v8;
    v19 = *(v16 + 280);
    v18 = *(v16 + 288);
    if (v18 <= v8)
    {
      v18 = v8;
    }

    if (v19 >= v17)
    {
      v19 = v8;
    }

    *(v16 + 280) = v19;
    *(v16 + 288) = v18;
    *(v16 + 296) = *(v16 + 296) + v17;
    ++*(v16 + 304);
    v20 = *&v87;
    v22 = *(v16 + 216);
    v21 = *(v16 + 224);
    if (v21 <= *&v87)
    {
      v21 = *&v87;
    }

    if (v22 >= *&v87)
    {
      v22 = *&v87;
    }

    *(v16 + 216) = v22;
    *(v16 + 224) = v21;
    *v14.i64 = v20 + *(v16 + 232);
    *(v16 + 232) = v14.i64[0];
    ++*(v16 + 240);
  }

  if (*(v6 + 12936))
  {
    v84[0] = sub_19B66BFF4(v5, v14);
    v84[1] = v23;
    v84[2] = v24;
    v84[3] = v25;
    v26 = sub_19B66C1A4(v84, *(v5 + 40), *(v5 + 44), *(v5 + 48));
    v28 = v27;
    v30 = v29;
    LODWORD(v81) = sub_19B66C1A4(v84, *(v5 + 16), *(v5 + 20), *(v5 + 24));
    *(&v81 + 4) = __PAIR64__(v32, v31);
    *(&v81 + 3) = v26;
    v82 = v28;
    v83 = v30;
    v33 = *(v5 + 64);
    if (sub_19B659D88(*(v6 + 12936), &v81, &v79))
    {
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
      }

      v34 = qword_1EAFE2A60;
      if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        v99 = v79.f32[0];
        v100 = 2048;
        v101 = v79.f32[1];
        v102 = 2048;
        v103 = v80;
        _os_log_impl(&dword_19B41C000, v34, OS_LOG_TYPE_DEFAULT, "[CMMotionContextSession] HML model predict velocity,.x,%.3f,.y,%.3f,.z,%.3f", buf, 0x20u);
      }

      v35 = sub_19B420058();
      if (*(v35 + 160) > 1 || *(v35 + 164) > 1 || *(v35 + 168) > 1 || *(v35 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2A58 != -1)
        {
          dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
        }

        *v97 = 134218496;
        *&v97[4] = v79.f32[0];
        *&v97[12] = 2048;
        *&v97[14] = v79.f32[1];
        *&v97[22] = 2048;
        *&v97[24] = v80;
        v36 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionContextSession feedAudioAccessoryIMU:]", "CoreLocation: %s\n", v36);
        if (v36 != buf)
        {
          free(v36);
        }
      }

      if (*(v6 + 16) == 1)
      {
        v37 = *(v6 + 8);
        v38 = v79;
        v39 = v80;
        v40 = *(v5 + 64);
        v41 = v37[1];
        *v97 = v37 + 1;
        (*(v41 + 16))(v37 + 1);
        *&v97[16] = 256;
        if (*v37)
        {
          sub_19B517F80(buf);
          sub_19B531DD8(buf);
          Current = CFAbsoluteTimeGetCurrent();
          v109 |= 1u;
          v104 = Current;
          v43 = v107;
          *(v107 + 40) |= 1u;
          *(v43 + 32) = v40;
          __src = vcvtq_f64_f32(v38);
          v111 = v39;
          sub_19B5C60E8((v107 + 8), &__src, &v112, 3uLL);
          sub_19B50AF20(*v37, buf);
          sub_19B51DBD4(buf);
        }

        (*(v37[1] + 24))(v37 + 1);
      }
    }
  }

  v44 = v89;
  if (*(v6 + 12776) != v89)
  {
    *(v6 + 12776) = v89;
    objc_msgSend_notifyMotionContextClient_(v6, v12, v44);
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
    }

    v45 = qword_1EAFE2A60;
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
    {
      v46 = *(v6 + 12776);
      *buf = 67109120;
      LODWORD(v99) = v46;
      _os_log_impl(&dword_19B41C000, v45, OS_LOG_TYPE_DEFAULT, "[CMMotionContextSession] MotionContext state changes to %u ", buf, 8u);
    }

    v47 = sub_19B420058();
    if (*(v47 + 160) > 1 || *(v47 + 164) > 1 || *(v47 + 168) > 1 || *(v47 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
      }

      v48 = *(v6 + 12776);
      *v97 = 67109120;
      *&v97[4] = v48;
      v49 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionContextSession feedAudioAccessoryIMU:]", "CoreLocation: %s\n", v49);
      if (v49 != buf)
      {
        free(v49);
      }
    }
  }

  if (v85 == 1)
  {
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
    }

    v50 = qword_1EAFE2A60;
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      v99 = *&v86[8];
      v100 = 2048;
      v101 = *&v86[16];
      _os_log_impl(&dword_19B41C000, v50, OS_LOG_TYPE_DEBUG, "[cmMotionContext] notifying step count: %2.2f,%2.2f\n", buf, 0x16u);
    }

    v51 = sub_19B420058();
    if (*(v51 + 160) > 1 || *(v51 + 164) > 1 || *(v51 + 168) > 1 || *(v51 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
      }

      *v97 = 134218240;
      *&v97[4] = *&v86[8];
      *&v97[12] = 2048;
      *&v97[14] = *&v86[16];
      v53 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionContextSession feedAudioAccessoryIMU:]", "CoreLocation: %s\n", v53);
      if (v53 != buf)
      {
        free(v53);
      }
    }

    objc_msgSend_notifyStepCountClient_(v6, v52, &v85);
    ++*(v6 + 12964);
  }

  v54 = *&v86[8] - *(v6 + 12904);
  v55 = *&v86[16] - *(v6 + 12912);
  if ((*(v6 + 12780) & 1) != 0 || sqrt(v54 * v54 + v55 * v55) > 0.3)
  {
    objc_msgSend_notifyPdrClient_(v6, v12, &v85);
    *(v6 + 12904) = *&v86[8];
    *(v6 + 12780) = 0;
    if (*(v6 + 12996) == 1)
    {
      v56 = sqrt(v54 * v54 + v55 * v55) + *(v6 + 12960);
      *(v6 + 12960) = v56;
    }
  }

  if (*(v6 + 16) == 1)
  {
    v57 = *(v6 + 8);
    v58 = *(v6 + 776);
    v59 = v57[1];
    *v97 = v57 + 1;
    (*(v59 + 16))(v57 + 1);
    *&v97[16] = 256;
    if (*v57)
    {
      sub_19B517F80(buf);
      sub_19B531D48(buf);
      v60 = CFAbsoluteTimeGetCurrent();
      v109 |= 1u;
      v104 = v60;
      v61 = v106;
      *(v106 + 12) |= 1u;
      *(v61 + 8) = v58;
      sub_19B50AF20(*v57, buf);
      sub_19B51DBD4(buf);
    }

    (*(v57[1] + 24))(v57 + 1);
    v62 = *(v6 + 8);
    v63 = v62[1];
    *v97 = v62 + 1;
    (*(v63 + 16))(v62 + 1);
    *&v97[16] = 256;
    if (*v62)
    {
      sub_19B517F80(buf);
      sub_19B531CB8(buf);
      v64 = CFAbsoluteTimeGetCurrent();
      v109 |= 1u;
      v104 = v64;
      v65 = v105;
      v66 = v89;
      *(v105 + 28) |= 2u;
      *(v65 + 24) = v66;
      v67 = v105;
      v68 = v90;
      *(v105 + 28) |= 1u;
      *(v67 + 16) = v68;
      sub_19B57C55C(v105);
      v69 = *(v105 + 8);
      *(v69 + 20) |= 2u;
      *(v69 + 16) = 0;
      v70 = v91;
      v71 = *(v105 + 8);
      *(v71 + 20) |= 1u;
      *(v71 + 8) = v70;
      sub_19B50AF20(*v62, buf);
      sub_19B51DBD4(buf);
    }

    (*(v62[1] + 24))(v62 + 1);
    v72 = *(v6 + 8);
    v78 = *&v86[8];
    v73 = v92[0];
    v74 = v72[1];
    *&__src.f64[0] = v72 + 1;
    (*(v74 + 16))(v72 + 1);
    LOWORD(v111) = 256;
    if (*v72)
    {
      sub_19B517F80(buf);
      sub_19B531A78(buf);
      v75 = CFAbsoluteTimeGetCurrent();
      v109 |= 1u;
      v104 = v75;
      v76 = v108;
      *(v108 + 64) |= 1u;
      *(v76 + 56) = v73;
      *v97 = vcvtq_f64_f32(*(&v87 + 8));
      *&v97[16] = vcvtq_f64_f32(v88);
      sub_19B5C60E8((v108 + 8), v97, buf, 4uLL);
      *v97 = vcvtq_f64_f32(vcvt_f32_f64(v78));
      *&v97[16] = 0;
      sub_19B5C60E8((v108 + 32), v97, &v97[24], 3uLL);
      sub_19B50AF20(*v72, buf);
      sub_19B51DBD4(buf);
    }

    (*(v72[1] + 24))(v72 + 1);
  }

  *(v6 + 12864) = *(v5 + 64);
  ++*(v6 + 12860);
  v77 = *MEMORY[0x1E69E9840];
}

- (void)feedAccessoryConfig:(const Config *)config
{
  v61 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2A58 != -1)
  {
    dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
  }

  v5 = qword_1EAFE2A60;
  if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
  {
    var0 = config->var0;
    var3 = config->var3;
    *buf = 67240963;
    *&buf[4] = var0;
    *&buf[8] = 2081;
    *&buf[10] = config->var1;
    v54 = 2081;
    var2 = config->var2;
    v56 = 1026;
    v57 = var3;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "[CMMotionContextSession] Received accessoryDeviceMotion config. side,%{public}d,configuration,%{private}s,serialNumber,%{private}s,hardwareModel,%{public}d", buf, 0x22u);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
    }

    v48 = config->var0;
    v50 = config->var3;
    v9 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionContextSession feedAccessoryConfig:]", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  objc_sync_enter(self);
  v10 = config->var3;
  if (v10 > 3)
  {
    if (v10 == 4)
    {
      if (config->var0 == 2)
      {
        v11 = &xmmword_19B7B7574;
        goto LABEL_68;
      }

      if (config->var0 == 1)
      {
        v11 = &xmmword_19B7B7564;
        goto LABEL_68;
      }

      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
      }

      v41 = qword_1EAFE2A60;
      if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v41, OS_LOG_TYPE_ERROR, "[CMMotionContextSession] Error -- config side for kAccessoryHardwareModelB494 must be 1 or 2.", buf, 2u);
      }

      v42 = sub_19B420058();
      if ((*(v42 + 160) & 0x80000000) != 0 && (*(v42 + 164) & 0x80000000) != 0 && (*(v42 + 168) & 0x80000000) != 0 && !*(v42 + 152))
      {
        goto LABEL_98;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A58 == -1)
      {
        goto LABEL_132;
      }

      goto LABEL_143;
    }

    if (v10 != 5)
    {
      if (v10 == 6)
      {
        v11 = &xmmword_19B7B7534;
        goto LABEL_68;
      }

      goto LABEL_38;
    }

    if (config->var0 != 2)
    {
      if (config->var0 != 1)
      {
        if (qword_1EAFE2A58 != -1)
        {
          dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
        }

        v45 = qword_1EAFE2A60;
        if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v45, OS_LOG_TYPE_ERROR, "[CMMotionContextSession] Error -- config side for kAccessoryHardwareModelB698 must be 1 or 2.", buf, 2u);
        }

        v46 = sub_19B420058();
        if ((*(v46 + 160) & 0x80000000) != 0 && (*(v46 + 164) & 0x80000000) != 0 && (*(v46 + 168) & 0x80000000) != 0 && !*(v46 + 152))
        {
          goto LABEL_98;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2A58 == -1)
        {
          goto LABEL_132;
        }

        goto LABEL_143;
      }

LABEL_54:
      v11 = &xmmword_19B7B7584;
      goto LABEL_68;
    }

LABEL_55:
    v11 = &xmmword_19B7B7594;
    goto LABEL_68;
  }

  switch(v10)
  {
    case 1:
      if (config->var0 != 2)
      {
        if (config->var0 != 1)
        {
          if (qword_1EAFE2A58 != -1)
          {
            dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
          }

          v12 = qword_1EAFE2A60;
          if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_ERROR, "[CMMotionContextSession] Error -- config side for kAccessoryHardwareModelB298 must be 1 or 2.", buf, 2u);
          }

          v13 = sub_19B420058();
          if ((*(v13 + 160) & 0x80000000) != 0 && (*(v13 + 164) & 0x80000000) != 0 && (*(v13 + 168) & 0x80000000) != 0 && !*(v13 + 152))
          {
            goto LABEL_98;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2A58 == -1)
          {
            goto LABEL_132;
          }

          goto LABEL_143;
        }

        goto LABEL_54;
      }

      goto LABEL_55;
    case 2:
      v11 = &xmmword_19B7B7524;
      goto LABEL_68;
    case 3:
      if (config->var0 == 2)
      {
        v11 = &xmmword_19B7B7554;
        goto LABEL_68;
      }

      if (config->var0 == 1)
      {
        v11 = &xmmword_19B7B7544;
LABEL_68:
        *buf = *v11;
        sub_19B41E130(buf, *buf);
        v47 = *buf;
        v49 = *&buf[8];
        v14 = *&buf[12];
        goto LABEL_69;
      }

      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
      }

      v43 = qword_1EAFE2A60;
      if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v43, OS_LOG_TYPE_ERROR, "[CMMotionContextSession] Error -- config side for kAccessoryHardwareModelB688 must be 1 or 2.", buf, 2u);
      }

      v44 = sub_19B420058();
      if ((*(v44 + 160) & 0x80000000) != 0 && (*(v44 + 164) & 0x80000000) != 0 && (*(v44 + 168) & 0x80000000) != 0 && !*(v44 + 152))
      {
        goto LABEL_98;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A58 == -1)
      {
LABEL_132:
        __p.n128_u16[0] = 0;
        v24 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionContextSession feedAccessoryConfig:]", "CoreLocation: %s\n", v24);
LABEL_96:
        if (v24 != buf)
        {
          free(v24);
        }

        goto LABEL_98;
      }

LABEL_143:
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
      goto LABEL_132;
  }

LABEL_38:
  if (!config->var6)
  {
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
    }

    v20 = qword_1EAFE2A60;
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_ERROR))
    {
      v21 = config->var3;
      *buf = 67240192;
      *&buf[4] = v21;
      _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_ERROR, "[CMMotionContextSession] Error -- No H2H transformation for model %{public}d", buf, 8u);
    }

    v22 = sub_19B420058();
    if ((*(v22 + 160) & 0x80000000) == 0 || (*(v22 + 164) & 0x80000000) == 0 || (*(v22 + 168) & 0x80000000) == 0 || *(v22 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
      }

      v23 = config->var3;
      __p.n128_u32[0] = 67240192;
      __p.n128_u32[1] = v23;
      v24 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionContextSession feedAccessoryConfig:]", "CoreLocation: %s\n", v24);
      goto LABEL_96;
    }

    goto LABEL_98;
  }

  v47 = *config->var7.elements;
  v49 = config->var7.elements[2];
  v14 = config->var7.elements[3];
  if (qword_1EAFE2A58 != -1)
  {
    dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
  }

  v15 = qword_1EAFE2A60;
  if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
  {
    v16 = config->var3;
    *buf = 67240192;
    *&buf[4] = v16;
    _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_DEFAULT, "[CMMotionContextSession] Use the H2H transformation from IORegistry for model %{public}d", buf, 8u);
  }

  v17 = sub_19B420058();
  if (*(v17 + 160) > 1 || *(v17 + 164) > 1 || *(v17 + 168) > 1 || *(v17 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
    }

    v18 = config->var3;
    __p.n128_u32[0] = 67240192;
    __p.n128_u32[1] = v18;
    v19 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionContextSession feedAccessoryConfig:]", "CoreLocation: %s\n", v19);
    if (v19 != buf)
    {
      free(v19);
    }
  }

LABEL_69:
  *&self->_accessoryActivity.fAccessoryStepDetector.fHeadsetOrientation.elements[2] = v47;
  *self->_accessoryActivity.fAccessoryStepDetector.fStepModel.timeSinceLastStepSecRatio = v49;
  *(self->_accessoryActivity.fAccessoryStepDetector.fStepModel.timeSinceLastStepSecRatio + 1) = v14;
  ptr = self->_accessoryActivity.fSitStandDetector.__ptr_;
  if (ptr)
  {
    *(ptr + 76) = v47;
    *(ptr + 21) = v49;
    *(ptr + 22) = v14;
  }

  self->_anon_31e0[0] = 1;
  if (qword_1EAFE2A58 != -1)
  {
    dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
  }

  v26 = qword_1EAFE2A60;
  if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_DEFAULT, "[CMPdr] This should only be called if using accessoryDM.", buf, 2u);
  }

  v27 = sub_19B420058();
  if (*(v27 + 160) > 1 || *(v27 + 164) > 1 || *(v27 + 168) > 1 || *(v27 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
    }

    __p.n128_u16[0] = 0;
    v28 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMPdr::setHeadsetOrientation(const CMOQuaternion &)", "CoreLocation: %s\n", v28);
    if (v28 != buf)
    {
      free(v28);
    }
  }

  v29 = self->_pdr.fPdrEstimatorOnHead.__ptr_;
  if (!v29)
  {
    operator new();
  }

  *(v29 + 1) = v47;
  *(v29 + 4) = v49;
  *(v29 + 5) = v14;
  *(v29 + 24) = 1;
  if (qword_1EAFE2A58 != -1)
  {
    dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
  }

  v30 = qword_1EAFE2A60;
  if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v30, OS_LOG_TYPE_DEFAULT, "[CMMotionContextSession] Setting H2H transform", buf, 2u);
  }

  v31 = sub_19B420058();
  if (*(v31 + 160) > 1 || *(v31 + 164) > 1 || *(v31 + 168) > 1 || *(v31 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E28DA0);
    }

    __p.n128_u16[0] = 0;
    v24 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionContextSession feedAccessoryConfig:]", "CoreLocation: %s\n", v24);
    goto LABEL_96;
  }

LABEL_98:
  objc_sync_exit(self);
  if (self->_logMSL)
  {
    v32 = self->_logger.__ptr_;
    if (*v32)
    {
      (*(*(v32 + 1) + 16))(v32 + 8);
      sub_19B517F80(buf);
      sub_19B532D98(buf);
      Current = CFAbsoluteTimeGetCurrent();
      v60 |= 1u;
      v59 = Current;
      sub_19B4CEB20(v58);
      v34 = *(v58 + 32);
      v35 = config->var0;
      *(v34 + 36) |= 2u;
      *(v34 + 28) = v35;
      v36 = *(v58 + 32);
      sub_19B428B50(&__p, config->var1);
      sub_19B5C62E0(v36, &__p);
      if (v52 < 0)
      {
        operator delete(__p.n128_u64[0]);
      }

      v37 = *(v58 + 32);
      sub_19B428B50(&__p, config->var2);
      sub_19B5C6334(v37, &__p);
      if (v52 < 0)
      {
        operator delete(__p.n128_u64[0]);
      }

      v38 = *(v58 + 32);
      v39 = config->var3;
      *(v38 + 36) |= 1u;
      *(v38 + 24) = v39;
      sub_19B50AF20(*v32, buf);
      sub_19B51DBD4(buf);
      (*(*(v32 + 1) + 24))(v32 + 8);
    }
  }

  v40 = *MEMORY[0x1E69E9840];
}

- (uint64_t)feedARKitWorldPoseWithTimestamp:(int8x16_t)timestamp pose:(int32x4_t)pose status:(__n128)status
{
  v60 = *MEMORY[0x1E69E9840];
  if (*(result + 16) == 1)
  {
    v10 = status.n128_f32[2] + (*timestamp.i32 + *&pose.i32[1]);
    if (v10 >= 0.0)
    {
      v19 = sqrtf(v10 + 1.0);
      *&v20 = v19 + v19;
      v21 = vrecpe_f32(v20);
      v22 = vmul_f32(v21, vrecps_f32(v20, v21));
      v23.i32[0] = vmul_f32(v22, vrecps_f32(v20, v22)).u32[0];
      v34 = vmul_n_f32(vsub_f32(vzip1_s32(*&vextq_s8(pose, pose, 8uLL), status.n128_u64[0]), vext_s8(status.n128_u64[0], *&vextq_s8(timestamp, timestamp, 8uLL), 4uLL)), v23.f32[0]);
      v24.f32[0] = *&timestamp.i32[1] - *pose.i32;
      v24.i32[1] = v20;
      v23.i32[1] = 0.25;
      v36 = vmul_f32(v24, v23);
    }

    else if (*timestamp.i32 < *&pose.i32[1] || *timestamp.i32 < status.n128_f32[2])
    {
      v12 = 1.0 - *timestamp.i32;
      if (*&pose.i32[1] >= status.n128_f32[2])
      {
        v37 = sqrtf(*&pose.i32[1] + (v12 - status.n128_f32[2]));
        *&v38 = v37 + v37;
        v39 = vrecpe_f32(v38);
        v40 = vmul_f32(v39, vrecps_f32(v38, v39));
        v41.i32[0] = vmul_f32(v40, vrecps_f32(v38, v40)).u32[0];
        v40.f32[0] = *&timestamp.i32[1] + *pose.i32;
        v40.i32[1] = v38;
        v36 = vmul_n_f32(vext_s8(vadd_f32(status.n128_u64[0], vdup_laneq_s32(pose, 2)), vsub_f32(status.n128_u64[0], *&vextq_s8(timestamp, timestamp, 8uLL)), 4uLL), v41.f32[0]);
        v41.i32[1] = 0.25;
        v34 = vmul_f32(v40, v41);
      }

      else
      {
        v13 = sqrtf(status.n128_f32[2] + (v12 - *&pose.i32[1]));
        v14.f32[0] = v13 + v13;
        v15 = vrecpe_f32(v14.u32[0]);
        v16 = vmul_f32(v15, vrecps_f32(v14.u32[0], v15));
        LODWORD(v17) = vmul_f32(v16, vrecps_f32(v14.u32[0], v16)).u32[0];
        v34 = vmul_n_f32(vadd_f32(vzip1_s32(*&vextq_s8(timestamp, timestamp, 8uLL), *&vextq_s8(pose, pose, 8uLL)), status.n128_u64[0]), v17);
        v14.f32[1] = *&timestamp.i32[1] - *pose.i32;
        __asm { FMOV            V1.2S, #0.25 }

        _D1.f32[1] = v17;
        v36 = vmul_f32(v14, _D1);
      }
    }

    else
    {
      v25 = sqrtf(*timestamp.i32 + ((1.0 - *&pose.i32[1]) - status.n128_f32[2]));
      v26.f32[0] = v25 + v25;
      v27 = vrecpe_f32(v26.u32[0]);
      v28 = vmul_f32(v27, vrecps_f32(v26.u32[0], v27));
      LODWORD(v29) = vmul_f32(v28, vrecps_f32(v26.u32[0], v28)).u32[0];
      v26.f32[1] = *&timestamp.i32[1] + *pose.i32;
      __asm { FMOV            V5.2S, #0.25 }

      _D5.f32[1] = v29;
      v34 = vmul_f32(v26, _D5);
      v35.i32[0] = vadd_f32(*&vextq_s8(timestamp, timestamp, 8uLL), status.n128_u64[0]).u32[0];
      v35.i32[1] = vsub_f32(vdup_laneq_s32(pose, 2), *&status).i32[1];
      v36 = vmul_n_f32(v35, v29);
    }

    v42 = *(result + 8);
    v43 = v42[1];
    v56 = v42 + 1;
    (*(v43 + 16))(v42 + 1);
    v57 = 256;
    if (*v42)
    {
      sub_19B517F80(v52);
      sub_19B531C28(v52);
      Current = CFAbsoluteTimeGetCurrent();
      v55 |= 1u;
      v54 = Current;
      v45 = v53;
      *(v53 + 56) |= 1u;
      *(v45 + 32) = a2;
      v46 = v53;
      *(v53 + 56) |= 4u;
      *(v46 + 44) = a6.n128_u32[0];
      v47 = v53;
      *(v53 + 56) |= 8u;
      *(v47 + 48) = a6.n128_u32[1];
      v48 = v53;
      *(v53 + 56) |= 0x10u;
      *(v48 + 52) = a6.n128_u32[2];
      __src[0] = vcvtq_f64_f32(v34);
      __src[1] = vcvtq_f64_f32(v36);
      sub_19B5C60E8((v53 + 8), __src, v59, 4uLL);
      v49 = v53;
      *(v53 + 56) |= 2u;
      *(v49 + 40) = a8;
      sub_19B50AF20(*v42, v52);
      sub_19B51DBD4(v52);
    }

    result = (*(v42[1] + 24))(v42 + 1);
  }

  v50 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)feedGPSLocationWithTimestamp:(double)timestamp course:(double)course speed:(double)speed latitude:(double)latitude longitude:(double)longitude horizontalAccuracy:(double)accuracy
{
  if (self->_logMSL)
  {
    ptr = self->_logger.__ptr_;
    v15 = *(ptr + 1);
    v26 = ptr + 8;
    (*(v15 + 16))(ptr + 8, a2);
    v27 = 256;
    if (*ptr)
    {
      sub_19B517F80(v23);
      sub_19B532AC8(v23);
      Current = CFAbsoluteTimeGetCurrent();
      v25 |= 1u;
      *&v23[87] = Current;
      v17 = v24;
      *(v24 + 180) |= 0x800u;
      *(v17 + 96) = timestamp;
      v18 = v24;
      *(v24 + 180) |= 2u;
      *(v18 + 16) = course;
      v19 = v24;
      *(v24 + 180) |= 0x200u;
      *(v19 + 80) = speed;
      v20 = v24;
      *(v24 + 180) |= 0x40u;
      *(v20 + 56) = latitude;
      v21 = v24;
      *(v24 + 180) |= 0x80u;
      *(v21 + 64) = longitude;
      v22 = v24;
      *(v24 + 180) |= 0x20u;
      *(v22 + 48) = accuracy;
      sub_19B50AF20(*ptr, v23);
      sub_19B51DBD4(v23);
    }

    (*(*(ptr + 1) + 24))(ptr + 8);
  }
}

- (id).cxx_construct
{
  self->_logger.__ptr_ = 0;
  self->_deviceMotionDispatcher.__ptr_ = 0;
  *&self->_accessoryDeviceMotionDispatcher.__ptr_ = 0u;
  sub_19B66DC40(&self->_pdr);
  self->_pdr.fAlgType = 0;
  *&self->_pdr.fDirectionalityDetector._lastStartImpulseTimestamp = 0u;
  self->_pdr.fDirectionalityDetector._lastStepDirectionRadians = NAN;
  self->_pdr.fDirectionalityDetector._lastPosition = 0u;
  *&self->_pdr.fDirectionalityDetector._inertialBuffer.fHeadAndSize.fHead = 0xF500000000;
  *&self->_pdr.fPdrEstimatorOnHead.__ptr_ = 0u;
  *&self->_pdr.fPdrEstimatorHandSwing.__ptr_ = 0u;
  sub_19B70A498(&self->_accessoryActivity, 1);
  self->_result.step = 0;
  self->_result.startImpulse = NAN;
  self->_result.endImpulse = NAN;
  *&self->_result.stepsCount = 0;
  *self->_result.attitude.elements = 0;
  self->_result.speedMps = 0.0;
  *&self->_result.attitude.elements[2] = 0x3F80000000000000;
  self->hmlModel.__ptr_ = 0;
  self->_analyticsTracker.__ptr_ = 0;
  return self;
}

@end