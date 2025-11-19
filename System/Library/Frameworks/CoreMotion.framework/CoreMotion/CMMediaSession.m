@interface CMMediaSession
+ (double)defaultFaceToDevicePitchAngle;
- (AudioAccessorySample)_getLastAudioAccessorySample;
- (BOOL)_disallowOpportunisticAnchorTrackingForFTClients:(int)a3 clientMode:(int)a4;
- (BOOL)_start;
- (BOOL)_startPoseUpdatesToQueue:(id)a3 andHandler:(id)a4;
- (id).cxx_construct;
- (id)_initWithOptions:(id)a3;
- (int)_createPoseFromListenerOrientation:(const ListenerOrientation *)a3 Pose:(id *)a4;
- (int)_mapCMMediaSessionClientModeToRelDMClientMode:(int64_t)a3;
- (unint64_t)_getAuxSampleTimestamp:(const void *)a3 currentTime:(double)a4;
- (void)_disableLoggingForReplay;
- (void)_enableLoggingForReplayWithFilenamePrefix:(id)a3 filePath:(id)a4;
- (void)_feedAccessoryConfig:(const Config *)a3;
- (void)_feedAccessoryDeviceMotion:(const void *)a3;
- (void)_feedAccessoryInEarStatus:(const int *)a3;
- (void)_feedActiveAudioRouteChangedEvent;
- (void)_feedAdaptiveLatencyJitterBufferLevel;
- (void)_feedDisplayCount:(unsigned int)a3;
- (void)_feedFaceKitData:(id)a3 timestamp:(double)a4;
- (void)_feedLidAngle:(double)a3;
- (void)_feedPoseAnchor:(const Sample *)a3 facePoseError:(id *)a4 lidAngleDeg:(float)a5;
- (void)_feedPredictorEstimates;
- (void)_feedScreenUnlockedEvent:(BOOL)a3;
- (void)_feedSourceDeviceIMU:(const Sample *)a3;
- (void)_logEvent:(id)a3;
- (void)_notifyClientHandler;
- (void)_readFrontCameraToDisplayCenterOffset;
- (void)_setFixedTransforms:(const CMOQuaternion *)a3;
- (void)_startDefaultsPreferenceUpdater;
- (void)_startHeadTracking;
- (void)_startJitterBufferLevelMonitor;
- (void)_startJitterBufferLevelRetryTimer;
- (void)_stop;
- (void)_stopDefaultsPreferenceUpdater;
- (void)_stopHeadTracking;
- (void)_stopJitterBufferLevelMonitor;
- (void)_stopJitterBufferLevelRetryTimer;
- (void)_triggerUserInteractedWithDeviceEvent;
- (void)_updateAnchorIntervalSettings;
- (void)_updateCameraControllerParameters;
- (void)_updateClientMode:(int64_t)a3;
- (void)_updateMinQuiescentPeriodForBTZ;
- (void)_updateTrackingScheme:(int64_t)a3;
- (void)_updateTrackingSchemeSettings;
- (void)_updateUseFwdPredictionUserSettings;
- (void)_updateUseHeadToHeadsetTransformationEstimator;
- (void)_updateUserSettings;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation CMMediaSession

+ (double)defaultFaceToDevicePitchAngle
{
  if ((atomic_load_explicit(&qword_1ED71CB38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71CB38))
  {
    sub_19B421798();
    v3 = sub_19B4426E4();
    v4 = 0.0;
    if (v3)
    {
      v4 = -20.0;
    }

    qword_1ED71CB30 = *&v4;
    __cxa_guard_release(&qword_1ED71CB38);
  }

  return *&qword_1ED71CB30;
}

- (void)_enableLoggingForReplayWithFilenamePrefix:(id)a3 filePath:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  self->_logForReplay = 1;
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
  }

  v7 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v14 = a4;
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_INFO, "[CMMediaSession] Logging to: %{private}@", buf, 0xCu);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v10 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _enableLoggingForReplayWithFilenamePrefix:filePath:]", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  objc_msgSend_setMcLogPath_(self, v9, a4);
  objc_msgSend_cStringUsingEncoding_(a3, v11, 1);
  objc_msgSend_cStringUsingEncoding_(a4, v12, 1);
  operator new();
}

- (void)_disableLoggingForReplay
{
  self->_logForReplay = 0;
  v2 = self->_headTrackingService.__ptr_ + 36864;
  v3 = *(self->_headTrackingService.__ptr_ + 4720);
  if (v3)
  {
    *(v3 + 7592) = 0;
  }

  v4 = *(v2 + 113);
  if (v4)
  {
    *(v4 + 5952) = 0;
  }

  sub_19B5C6594(&self->_logger, 0);
}

- (int)_createPoseFromListenerOrientation:(const ListenerOrientation *)a3 Pose:(id *)a4
{
  v57 = *MEMORY[0x1E69E9840];
  var1 = a3->var1;
  v6 = *(self->_headTrackingService.__ptr_ + 678);
  timestamp = self->_lastAudioAccessorySample.timestamp;
  lastListenerOrientationGenerationTimestampSeconds = self->_lastListenerOrientationGenerationTimestampSeconds;
  lastPresentationTimestamp = self->_lastPresentationTimestamp;
  var2 = a3->var2;
  if (self->_inEarStatus == 4)
  {
    v11 = a3->var2;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v12 = objc_msgSend_returnDefaultPose(self, a2, a3);
  }

  else
  {
    v12 = 1;
  }

  if (objc_msgSend_returnRandomPose(self, a2, a3))
  {
    v15 = objc_msgSend_returnDefaultPose(self, v13, v14) ^ 1;
  }

  else
  {
    v15 = 0;
  }

  ptr = self->_headTrackingService.__ptr_;
  v17 = *(ptr + 16082);
  v18 = *(*(ptr + 4717) + 112);
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(var1, var1)))))
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v19 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_ERROR, "[CMMediaSession] quaternion has nans. Replacing with identity quaternion.", buf, 2u);
    }

    v20 = sub_19B420058();
    if ((*(v20 + 160) & 0x80000000) == 0 || (*(v20 + 164) & 0x80000000) == 0 || (*(v20 + 168) & 0x80000000) == 0 || *(v20 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      LOWORD(v45) = 0;
      v21 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _createPoseFromListenerOrientation:Pose:]", "CoreLocation: %s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }
    }

LABEL_23:
    v22 = xmmword_19B7B7990;
    v23 = 0uLL;
    if (v15)
    {
      goto LABEL_24;
    }

    goto LABEL_27;
  }

  if (v12)
  {
    goto LABEL_23;
  }

  v22 = vcvt_hight_f64_f32(var1);
  v23 = vcvtq_f64_f32(*var1.elements);
  if (v15)
  {
LABEL_24:
    v24 = arc4random_uniform(0x1E8481u) + -1000000.0;
    v25 = arc4random_uniform(0x1E8481u) + -1000000.0;
    v26 = arc4random_uniform(0x1E8481u);
    v27 = 0;
    v28 = v24;
    v29 = v25;
    v30 = v26 + -1000000.0;
    v45 = v28;
    v46 = v29;
    v47 = v30;
    v31 = 0.0;
    do
    {
      v31 = v31 + (*(&v45 + v27) * *(&v45 + v27));
      v27 += 4;
    }

    while (v27 != 12);
    v32 = sqrtf(v31);
    v33 = v28 / v32;
    v34 = v29 / v32;
    v35 = v30 / v32;
    v36 = (arc4random_uniform(0x8CA0u) / 100.0) * 0.017453;
    v45 = v33 * v36;
    v46 = v34 * v36;
    v47 = v35 * v36;
    sub_19B66C264(buf, &v45);
    v22 = vcvt_hight_f64_f32(*buf);
    v23 = vcvtq_f64_f32(*buf);
  }

LABEL_27:
  v42 = v22;
  v44 = v23;
  if ((v17 & (v18 != 2)) != 0)
  {
    v37 = 114;
  }

  else
  {
    v37 = 113;
  }

  v38 = [CMPose alloc];
  *buf = vextq_s8(v42, v44, 8uLL);
  v49 = vextq_s8(v44, v42, 8uLL);
  v51 = 0;
  v52 = 0;
  v50 = 0;
  v53 = v6 * 0.000001;
  v54 = timestamp;
  v55 = lastListenerOrientationGenerationTimestampSeconds;
  v56 = lastPresentationTimestamp * 0.000001;
  *a4 = objc_msgSend_initWithPose_timestamp_(v38, v39, buf, v11);
  v40 = *MEMORY[0x1E69E9840];
  return v37;
}

- (BOOL)_disallowOpportunisticAnchorTrackingForFTClients:(int)a3 clientMode:(int)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3 == 1 && (a4 & 0xFFFFFFFE) == 2;
  v5 = v4;
  if (v4)
  {
    self->_scheme = 0;
    ptr = self->_headTrackingService.__ptr_;
    if (ptr)
    {
      sub_19B690FE4(ptr, 0);
    }

    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v7 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Disallow opportunisticAnchor tracking for FT clients.", buf, 2u);
    }

    v8 = sub_19B420058();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v9 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _disallowOpportunisticAnchorTrackingForFTClients:clientMode:]", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

- (int)_mapCMMediaSessionClientModeToRelDMClientMode:(int64_t)a3
{
  if ((a3 - 1) < 4)
  {
    return a3;
  }

  else
  {
    return 0;
  }
}

- (void)_readFrontCameraToDisplayCenterOffset
{
  v39 = *MEMORY[0x1E69E9840];
  p_offsetFromDisplayCenterToFrontCameraInSourceFrameMeters = &self->_offsetFromDisplayCenterToFrontCameraInSourceFrameMeters;
  *self->_offsetFromDisplayCenterToFrontCameraInSourceFrameMeters.elements = 0;
  self->_offsetFromDisplayCenterToFrontCameraInSourceFrameMeters.elements[2] = 0.0;
  v4 = MGCopyAnswer();
  if (!v4)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v10 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Anchor offset from display center is not available. Defaulting to zero.", buf, 2u);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) <= 1 && *(v11 + 164) <= 1 && *(v11 + 168) <= 1 && !*(v11 + 152))
    {
      goto LABEL_38;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

LABEL_35:
    v9 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _readFrontCameraToDisplayCenterOffset]", "CoreLocation: %s\n");
LABEL_36:
    if (v9 != buf)
    {
      free(v9);
    }

    goto LABEL_38;
  }

  v5 = v4;
  v6 = CFGetTypeID(v4);
  if (v6 == CFArrayGetTypeID() && CFArrayGetCount(v5) > 1)
  {
    v12 = v5;
    v14 = objc_msgSend_objectAtIndexedSubscript_(v12, v13, 0);
    objc_msgSend_floatValue(v14, v15, v16);
    v29 = v17;
    v19 = objc_msgSend_objectAtIndexedSubscript_(v12, v18, 1);
    objc_msgSend_floatValue(v19, v20, v21);
    v22.i32[1] = v29;
    *p_offsetFromDisplayCenterToFrontCameraInSourceFrameMeters->elements = vmul_f32(v22, vdup_n_s32(0x3A83126Fu));
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v23 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      v24 = (self->_offsetFromDisplayCenterToFrontCameraInSourceFrameMeters.elements[0] * 1000.0);
      v25 = (self->_offsetFromDisplayCenterToFrontCameraInSourceFrameMeters.elements[1] * 1000.0);
      v26 = (self->_offsetFromDisplayCenterToFrontCameraInSourceFrameMeters.elements[2] * 1000.0);
      *buf = 134349568;
      v34 = v24;
      v35 = 2050;
      v36 = v25;
      v37 = 2050;
      v38 = v26;
      _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Anchor offset from display center x: %{public}.1f mm, y: %{public}.1f mm, z: %{public}.1f mm", buf, 0x20u);
    }

    v27 = sub_19B420058();
    if (*(v27 + 160) <= 1 && *(v27 + 164) <= 1 && *(v27 + 168) <= 1 && !*(v27 + 152))
    {
      goto LABEL_38;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v30 = (self->_offsetFromDisplayCenterToFrontCameraInSourceFrameMeters.elements[0] * 1000.0);
    v31 = (self->_offsetFromDisplayCenterToFrontCameraInSourceFrameMeters.elements[1] * 1000.0);
    v32 = (self->_offsetFromDisplayCenterToFrontCameraInSourceFrameMeters.elements[2] * 1000.0);
    goto LABEL_35;
  }

  CFRelease(v5);
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
  }

  v7 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_ERROR, "[CMMediaSession] Anchor offset from display center data has wrong type. Defaulting to zero.", buf, 2u);
  }

  v8 = sub_19B420058();
  if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v9 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _readFrontCameraToDisplayCenterOffset]", "CoreLocation: %s\n");
    goto LABEL_36;
  }

LABEL_38:
  v28 = *MEMORY[0x1E69E9840];
}

- (id)_initWithOptions:(id)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v51.receiver = self;
  v51.super_class = CMMediaSession;
  v5 = [(CMMediaSession *)&v51 init];
  v6 = v5;
  if (v5)
  {
    v5[72] = 0;
    *(v5 + 213) = 0;
    *(v5 + 89) = 0;
    *(v5 + 520) = 0u;
    *(v5 + 536) = 0u;
    *(v5 + 545) = 0u;
    *(v5 + 13) = 0xBFF0000000000000;
    *(v5 + 14) = 0x1FFFFFFFFLL;
    *(v5 + 19) = 0;
    *(v5 + 20) = 0;
    *(v5 + 86) = 0;
    *(v5 + 15) = 0;
    v5[128] = 0;
    *(v5 + 170) = 1089470464;
    *(v5 + 104) = objc_alloc_init(CMDeviceOrientationManager);
    v6[210] = 0;
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v7 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      *&buf[4] = a3;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Creating CMMediaSession with options: %{private}@", buf, 0xCu);
    }

    v8 = sub_19B420058();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v52 = 138477827;
      v53 = a3;
      v10 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _initWithOptions:]", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    if (a3)
    {
      if (objc_msgSend_valueForKey_(a3, v9, @"CMMediaSessionClientMode"))
      {
        v12 = objc_msgSend_objectForKeyedSubscript_(a3, v11, @"CMMediaSessionClientMode");
        v15 = objc_msgSend_intValue(v12, v13, v14);
        v17 = objc_msgSend__mapCMMediaSessionClientModeToRelDMClientMode_(v6, v16, v15);
        v6[86] = v17;
        v6[19] = v17;
      }

      if (objc_msgSend_valueForKey_(a3, v11, @"AlwaysOnAnchor"))
      {
        v19 = objc_msgSend_objectForKeyedSubscript_(a3, v18, @"AlwaysOnAnchor");
        if (objc_msgSend_BOOLValue(v19, v20, v21))
        {
          v6[20] = 2;
        }
      }

      if (objc_msgSend_valueForKey_(a3, v18, @"OpportunisticAnchor"))
      {
        v23 = objc_msgSend_objectForKeyedSubscript_(a3, v22, @"OpportunisticAnchor");
        if (objc_msgSend_BOOLValue(v23, v24, v25))
        {
          v6[20] = 1;
        }
      }

      if (objc_msgSend_valueForKey_(a3, v22, @"TrackingScheme"))
      {
        v27 = objc_msgSend_objectForKeyedSubscript_(a3, v26, @"TrackingScheme");
        if (objc_msgSend_intValue(v27, v28, v29))
        {
          v30 = objc_msgSend_objectForKeyedSubscript_(a3, v26, @"TrackingScheme");
          v33 = objc_msgSend_intValue(v30, v31, v32);
          if (v33 <= 3)
          {
            v6[20] = v33;
          }
        }
      }

      if (objc_msgSend_valueForKey_(a3, v26, @"AnchorRateHz"))
      {
        v35 = objc_msgSend_objectForKeyedSubscript_(a3, v34, @"AnchorRateHz");
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v49 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v36, v37);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v49, v50, a2, v6, @"CMMediaSession.mm", 651, @"Invalid parameter not satisfying: %@", @"[AnchorRateHzValue isKindOfClass:[NSNumber class]]");
        }

        objc_msgSend_floatValue(v35, v36, v37);
        *(v6 + 83) = (1000000.0 / v38);
      }

      if (objc_msgSend_valueForKey_(a3, v34, @"OnlineHeadToHeadsetTransformationEstimator"))
      {
        v40 = objc_msgSend_objectForKeyedSubscript_(a3, v39, @"OnlineHeadToHeadsetTransformationEstimator");
        if (objc_msgSend_BOOLValue(v40, v41, v42))
        {
          *(v6 + 100) = 1;
        }
      }
    }

    v6[62] = -1;
    *(v6 + 33) = 0;
    v6[70] = -1;
    *(v6 + 77) = objc_opt_new();
    if ((objc_msgSend_isActivityAvailable(CMMotionActivityManager, v43, v44) & 1) != 0 || objc_msgSend_isActivityLiteAvailable(CMMotionActivityManager, v45, v46))
    {
      *(v6 + 75) = objc_opt_new();
    }

    *(v6 + 76) = objc_opt_new();
    operator new();
  }

  v47 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)dealloc
{
  if (self->_started)
  {
    objc_msgSend__stop(self, a2, v2);
  }

  objc_msgSend__disableLoggingForReplay(self, a2, v2);

  v4.receiver = self;
  v4.super_class = CMMediaSession;
  [(CMMediaSession *)&v4 dealloc];
}

- (BOOL)_start
{
  v33 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  started = self->_started;
  if (!started)
  {
    self->_started = 1;
    objc_sync_exit(self);
    if (!self->_accessoryDeviceMotionConfigDispatcher.__ptr_)
    {
      operator new();
    }

    objc_msgSend__startDefaultsPreferenceUpdater(self, v7, v8);
    if (!self->_accessoryDeviceMotionInEarStatusDispatcher.__ptr_)
    {
      operator new();
    }

    objc_sync_enter(self);
    sub_19B6D6344();
    v9 = sub_19B74FC3C();
    if (v9 == 5)
    {
      v10 = 4;
    }

    else
    {
      v10 = v9;
    }

    if (self->_inEarStatusGatingEnabled)
    {
      v11 = v10;
    }

    else
    {
      v11 = 4;
    }

    self->_inEarStatus = v11;
    if (self->_logForReplay)
    {
      ptr = self->_logger.__ptr_;
      v13 = mach_continuous_time();
      v14 = sub_19B41E070(v13);
      sub_19B5E7BFC(ptr, v11, v14);
    }

    objc_sync_exit(self);
    if (self->_inEarStatus == 4 && (sub_19B6D6344(), v15 = sub_19B7851B0(), sub_19B787CB8(v15)))
    {
      v16 = sub_19B420D84();
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = sub_19B63DBB0;
      v30[3] = &unk_1E7532988;
      v30[4] = self;
      sub_19B420C9C(v16, v30);
    }

    else
    {
      sub_19B6D6344();
      v19 = sub_19B7851B0();
      v20 = sub_19B787CB8(v19);
      objc_msgSend__notifyClientHandler(self, v21, v22);
      if (v20)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v23 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] #Warning Not starting head tracking because one bud is out of ear!", buf, 2u);
        }

        v24 = sub_19B420058();
        if (*(v24 + 160) <= 1 && *(v24 + 164) <= 1 && *(v24 + 168) <= 1 && !*(v24 + 152))
        {
          goto LABEL_54;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v31 = 0;
        v25 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _start]", "CoreLocation: %s\n", v25);
      }

      else
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v26 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_ERROR, "[CMMediaSession] Not starting head tracking because the connected device is not supported!", buf, 2u);
        }

        v27 = sub_19B420058();
        if ((*(v27 + 160) & 0x80000000) != 0 && (*(v27 + 164) & 0x80000000) != 0 && (*(v27 + 168) & 0x80000000) != 0 && !*(v27 + 152))
        {
          goto LABEL_54;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v31 = 0;
        v25 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _start]", "CoreLocation: %s\n", v25);
      }

      if (v25 != buf)
      {
        free(v25);
      }
    }

LABEL_54:
    objc_msgSend__startJitterBufferLevelMonitor(self, v17, v18);
    goto LABEL_55;
  }

  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
  }

  v4 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] _start is called multiple times", buf, 2u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v31 = 0;
    v6 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _start]", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  objc_sync_exit(self);
LABEL_55:
  v28 = *MEMORY[0x1E69E9840];
  return !started;
}

- (void)_startHeadTracking
{
  v55 = *MEMORY[0x1E69E9840];
  if (!self->_analyticsTracker.__ptr_)
  {
    operator new();
  }

  v3 = mach_continuous_time();
  self->_sessionStartTime = sub_19B41E070(v3);
  sub_19B6A7EE8(self->_analyticsTracker.__ptr_, @"sessionDuration");
  sub_19B6A7EE8(self->_analyticsTracker.__ptr_ + 30, @"auxAndSrcQuiescent");
  sessionStartTime = self->_sessionStartTime;
  self->_lastInBTZTime = sessionStartTime;
  self->_lastAccessoryDMTime = sessionStartTime;
  self->_previousTrackingEnabled = 1;
  self->_lastDistractedViewingStartTime = 0.0;
  ptr = self->_analyticsTracker.__ptr_;
  if (ptr)
  {
    *(ptr + 559) = self->_analyticsClientMode;
  }

  if (sub_19B424AE0() && !self->_disable2IMU && !self->_deviceMotionDispatcher.__ptr_)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v6 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Starting source DM", buf, 2u);
    }

    v7 = sub_19B420058();
    if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v53 = 0;
      v8 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }

    v9 = [CLDeviceMotionProperties alloc];
    objc_msgSend_initWithMode_(v9, v10, 3);
    operator new();
  }

  if (!self->_accessoryDeviceMotionDispatcher.__ptr_)
  {
    *(sub_19B6D6344() + 28) = 1;
    *(sub_19B6D6344() + 420) = self->_analyticsClientMode;
    operator new();
  }

  if (!self->_accessoryMonitorDispatcher.__ptr_)
  {
    v11 = sub_19B7851B0();
    if (!sub_19B787D0C(v11))
    {
      operator new();
    }
  }

  sub_19B6A7EE8(self->_analyticsTracker.__ptr_ + 42, @"durationOfSessionHeadtracked");
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = sub_19B63E730;
  v52[3] = &unk_1E7533A18;
  v52[4] = self;
  if (objc_msgSend_isActivityAvailable(CMMotionActivityManager, v12, v13) && !self->_disable2IMU)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v20 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Starting Motion Activity updates", buf, 2u);
    }

    v21 = sub_19B420058();
    if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v53 = 0;
      v23 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]", "CoreLocation: %s\n", v23);
      if (v23 != buf)
      {
        free(v23);
      }
    }

    objc_msgSend_startActivityUpdatesToQueue_withHandler_(self->_activityManager, v22, self->_activityQueue, v52);
  }

  else if (objc_msgSend_isActivityLiteAvailable(CMMotionActivityManager, v14, v15) && !self->_disable2IMU)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v24 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Starting Motion Activity Lite updates", buf, 2u);
    }

    v25 = sub_19B420058();
    if (*(v25 + 160) > 1 || *(v25 + 164) > 1 || *(v25 + 168) > 1 || *(v25 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v53 = 0;
      v27 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]", "CoreLocation: %s\n", v27);
      if (v27 != buf)
      {
        free(v27);
      }
    }

    objc_msgSend_startActivityLiteUpdatesToQueue_withHandler_(self->_activityManager, v26, self->_activityQueue, v52);
  }

  else
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v16 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Motion Activity or Activity Lite updates are not available", buf, 2u);
    }

    v17 = sub_19B420058();
    if (*(v17 + 160) > 1 || *(v17 + 164) > 1 || *(v17 + 168) > 1 || *(v17 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v53 = 0;
      v19 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startHeadTracking]", "CoreLocation: %s\n", v19);
      if (v19 != buf)
      {
        free(v19);
      }
    }
  }

  headphoneActivityManager = self->_headphoneActivityManager;
  activityQueue = self->_activityQueue;
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = sub_19B64048C;
  v51[3] = &unk_1E7533A68;
  v51[4] = self;
  objc_msgSend_startStatusUpdatesToQueue_withHandler_(headphoneActivityManager, v18, activityQueue, v51);
  mcSession = self->_mcSession;
  if (mcSession)
  {
    goto LABEL_69;
  }

  if (self->_motionContextSessonEnabled)
  {
    v34 = objc_opt_new();
    v36 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v35, self->_logForReplay);
    objc_msgSend_setObject_forKeyedSubscript_(v34, v37, v36, @"kCMMotionContextSessionLogMSL");
    if (self->_logForReplay)
    {
      v40 = objc_msgSend_mcLogPath(self, v38, v39);
      objc_msgSend_setObject_forKeyedSubscript_(v34, v41, v40, @"kCMMotionContextSessionMSLFilePath");
    }

    v42 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v38, self->_humanMotionLearningModelEnabled);
    objc_msgSend_setObject_forKeyedSubscript_(v34, v43, v42, @"kCMMotionContextSessionUseMLModel");
    v44 = [CMMotionContextSession alloc];
    mcSession = objc_msgSend_initWithOptions_(v44, v45, v34);
    self->_mcSession = mcSession;
    if (mcSession)
    {
LABEL_69:
      objc_msgSend_start(mcSession, v30, v31);
      objc_msgSend_setTrackingClientMode_(self->_mcSession, v33, *(self->_headTrackingService.__ptr_ + 3));
    }
  }

  deviceOrientationManager = self->_deviceOrientationManager;
  v47 = objc_msgSend_mainQueue(MEMORY[0x1E696ADC8], v30, v31);
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = sub_19B643168;
  v50[3] = &unk_1E7533A90;
  v50[4] = self;
  objc_msgSend_startDeviceOrientationUpdatesToQueue_withHandler_(deviceOrientationManager, v48, v47, v50);
  v49 = *MEMORY[0x1E69E9840];
}

- (void)_triggerUserInteractedWithDeviceEvent
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B6431F8;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B420C9C(v3, v4);
}

- (BOOL)_startPoseUpdatesToQueue:(id)a3 andHandler:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
  }

  v7 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Starting push updates", buf, 2u);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) <= 1 && *(v8 + 164) <= 1 && *(v8 + 168) <= 1 && !*(v8 + 152))
  {
    goto LABEL_12;
  }

  bzero(buf, 0x65CuLL);
  if (qword_1EAFE2998 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v9 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _startPoseUpdatesToQueue:andHandler:]", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }

LABEL_12:
    if (!a3)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v14 = off_1EAFE29A0;
      a4 = "queue";
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        v19 = 0;
        v20 = 2082;
        v21 = "";
        v22 = 2082;
        v23 = "assert";
        v24 = 2081;
        v25 = "queue";
        _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CMMediaSession] client queue is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }
      }

      v15 = off_1EAFE29A0;
      if (os_signpost_enabled(off_1EAFE29A0))
      {
        *buf = 68289539;
        v19 = 0;
        v20 = 2082;
        v21 = "";
        v22 = 2082;
        v23 = "assert";
        v24 = 2081;
        v25 = "queue";
        _os_signpost_emit_with_name_impl(&dword_19B41C000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CMMediaSession] client queue is nil", "{msg%{public}.0s:[CMMediaSession] client queue is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }
      }

      self = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        v19 = 0;
        v20 = 2082;
        v21 = "";
        v22 = 2082;
        v23 = "assert";
        v24 = 2081;
        v25 = "queue";
        _os_log_impl(&dword_19B41C000, &self->super, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CMMediaSession] client queue is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      goto LABEL_36;
    }

    if (a4)
    {
      break;
    }

    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v16 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2082;
      v23 = "assert";
      v24 = 2081;
      v25 = "handler";
      _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CMMediaSession] client handler is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }
    }

    v17 = off_1EAFE29A0;
    if (os_signpost_enabled(off_1EAFE29A0))
    {
      *buf = 68289539;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2082;
      v23 = "assert";
      v24 = 2081;
      v25 = "handler";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CMMediaSession] client handler is nil", "{msg%{public}.0s:[CMMediaSession] client handler is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }
    }

    self = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2082;
      v23 = "assert";
      v24 = 2081;
      v25 = "handler";
      _os_log_impl(&dword_19B41C000, &self->super, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CMMediaSession] client handler is nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

LABEL_36:
    abort_report_np();
LABEL_37:
    dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
  }

  self->_clientQueue = a3;
  dispatch_retain(a3);
  self->_clientHandler = _Block_copy(a4);
  result = objc_msgSend__start(self, v10, v11);
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_stopHeadTracking
{
  v79 = *MEMORY[0x1E69E9840];
  v3 = mach_continuous_time();
  v4 = sub_19B41E070(v3);
  p_analyticsTracker = &self->_analyticsTracker;
  ptr = self->_analyticsTracker.__ptr_;
  if (ptr)
  {
    v7 = self->_headTrackingService.__ptr_ + 12288;
    if ((*(self->_headTrackingService.__ptr_ + 16064) & 1) == 0 && *(ptr + 3) > 0.0)
    {
      v8 = v4 - self->_lastInBTZTime;
      v9 = *(ptr + 85);
      if (v9 <= v8)
      {
        v9 = v4 - self->_lastInBTZTime;
      }

      *(ptr + 85) = v9;
      v10 = *(ptr + 84);
      if (v10 >= v8)
      {
        v10 = v8;
      }

      *(ptr + 84) = v10;
      *(ptr + 86) = v8 + *(ptr + 86);
      ++*(ptr + 174);
    }

    v11 = v4 - self->_lastAccessoryDMTime;
    v12 = *(ptr + 81);
    if (v12 <= v11)
    {
      v12 = v4 - self->_lastAccessoryDMTime;
    }

    *(ptr + 81) = v12;
    v13 = *(ptr + 80);
    if (v13 >= v11)
    {
      v13 = v11;
    }

    *(ptr + 80) = v13;
    *(ptr + 82) = v11 + *(ptr + 82);
    ++*(ptr + 166);
    if (!self->_previousTrackingEnabled && v7[3794] == 1)
    {
      v14 = v4 - self->_lastDistractedViewingStartTime;
      v15 = *(ptr + 105);
      if (v15 <= v14)
      {
        v15 = v14;
      }

      *(ptr + 105) = v15;
      v16 = *(ptr + 104);
      if (v16 >= v14)
      {
        v16 = v14;
      }

      *(ptr + 104) = v16;
      *(ptr + 106) = v14 + *(ptr + 106);
      ++*(ptr + 214);
      v17 = *(ptr + 493);
      if (v17 != -1)
      {
        *(ptr + 493) = v17 + 1;
      }
    }

    sub_19B6A80D8(ptr, @"sessionDuration");
    v18 = p_analyticsTracker->__ptr_;
    if (*(p_analyticsTracker->__ptr_ + 24) > 0.0)
    {
      sub_19B6A80D8(p_analyticsTracker->__ptr_ + 24, &stru_1F0E3D7A0);
      v18 = p_analyticsTracker->__ptr_;
    }

    if (*(v18 + 26) > 0.0)
    {
      sub_19B6A80D8(v18 + 26, &stru_1F0E3D7A0);
      v18 = p_analyticsTracker->__ptr_;
    }

    if (*(v18 + 28) > 0.0)
    {
      sub_19B6A80D8(v18 + 28, &stru_1F0E3D7A0);
      v18 = p_analyticsTracker->__ptr_;
    }

    if (*(v18 + 30) > 0.0)
    {
      sub_19B6A80D8(v18 + 30, &stru_1F0E3D7A0);
      v18 = p_analyticsTracker->__ptr_;
    }

    if (*(v18 + 34) > 0.0)
    {
      sub_19B6A80D8(v18 + 34, &stru_1F0E3D7A0);
      v18 = p_analyticsTracker->__ptr_;
    }

    if (*(v18 + 36) > 0.0)
    {
      sub_19B6A80D8(v18 + 36, &stru_1F0E3D7A0);
      v18 = p_analyticsTracker->__ptr_;
    }

    v19 = self->_headTrackingService.__ptr_;
    *(v18 + 2168) = *(v19 + 2354);
    *(v18 + 2184) = *(v19 + 2355);
    if (*(v18 + 54) > 0.0)
    {
      sub_19B6A80D8(v18 + 54, &stru_1F0E3D7A0);
      v18 = p_analyticsTracker->__ptr_;
    }

    if (*(v18 + 56) > 0.0)
    {
      sub_19B6A80D8(v18 + 56, &stru_1F0E3D7A0);
      v18 = p_analyticsTracker->__ptr_;
    }

    if (*(v18 + 58) > 0.0)
    {
      sub_19B6A80D8(v18 + 58, &stru_1F0E3D7A0);
      v18 = p_analyticsTracker->__ptr_;
    }

    if (*(v18 + 60) > 0.0)
    {
      sub_19B6A80D8(v18 + 60, &stru_1F0E3D7A0);
      v18 = p_analyticsTracker->__ptr_;
    }

    if (*(v18 + 62) > 0.0)
    {
      sub_19B6A80D8(v18 + 62, &stru_1F0E3D7A0);
      v18 = p_analyticsTracker->__ptr_;
    }

    if (*(v18 + 64) > 0.0)
    {
      sub_19B6A80D8(v18 + 64, &stru_1F0E3D7A0);
      v18 = p_analyticsTracker->__ptr_;
    }

    if (*(v18 + 66) > 0.0)
    {
      sub_19B6A80D8(v18 + 66, &stru_1F0E3D7A0);
      v18 = p_analyticsTracker->__ptr_;
    }

    if (*(v18 + 68) > 0.0)
    {
      sub_19B6A80D8(v18 + 68, &stru_1F0E3D7A0);
      v18 = p_analyticsTracker->__ptr_;
    }

    if (*(v18 + 70) > 0.0)
    {
      sub_19B6A80D8(v18 + 70, &stru_1F0E3D7A0);
      v18 = p_analyticsTracker->__ptr_;
    }

    if (*(v18 + 72) > 0.0)
    {
      sub_19B6A80D8(v18 + 72, &stru_1F0E3D7A0);
      v18 = p_analyticsTracker->__ptr_;
    }

    if (*(v18 + 74) > 0.0)
    {
      sub_19B6A80D8(v18 + 74, &stru_1F0E3D7A0);
      v18 = p_analyticsTracker->__ptr_;
    }

    if (*(v18 + 76) > 0.0)
    {
      sub_19B6A80D8(v18 + 76, &stru_1F0E3D7A0);
      v18 = p_analyticsTracker->__ptr_;
    }

    if (*(v18 + 78) > 0.0)
    {
      sub_19B6A80D8(v18 + 78, &stru_1F0E3D7A0);
    }

    if (self->_firstAccessoryDMTime == 0.0)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v20 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
      {
        v21 = *(p_analyticsTracker->__ptr_ + 1);
        *buf = 134217984;
        v78 = v21;
        _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_ERROR, "[CMMediaSession] No accessory DM received during entire session of %.3f seconds", buf, 0xCu);
      }

      v22 = sub_19B420058();
      if ((*(v22 + 160) & 0x80000000) == 0 || (*(v22 + 164) & 0x80000000) == 0 || (*(v22 + 168) & 0x80000000) == 0 || *(v22 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v23 = *(p_analyticsTracker->__ptr_ + 1);
        v75 = 134217984;
        v76 = v23;
        v24 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _stopHeadTracking]", "CoreLocation: %s\n", v24);
        if (v24 != buf)
        {
          free(v24);
        }
      }

      *(p_analyticsTracker->__ptr_ + 268) = *(p_analyticsTracker->__ptr_ + 1);
    }

    if (self->_firstValidPoseTime == 0.0)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v25 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
      {
        v26 = *(p_analyticsTracker->__ptr_ + 1);
        *buf = 134217984;
        v78 = v26;
        _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_ERROR, "[CMMediaSession] No valid pose available during entire session of %.3f seconds", buf, 0xCu);
      }

      v27 = sub_19B420058();
      if ((*(v27 + 160) & 0x80000000) == 0 || (*(v27 + 164) & 0x80000000) == 0 || (*(v27 + 168) & 0x80000000) == 0 || *(v27 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v28 = *(p_analyticsTracker->__ptr_ + 1);
        v75 = 134217984;
        v76 = v28;
        v29 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _stopHeadTracking]", "CoreLocation: %s\n", v29);
        if (v29 != buf)
        {
          free(v29);
        }
      }

      v30 = p_analyticsTracker->__ptr_;
      *(p_analyticsTracker->__ptr_ + 269) = *(p_analyticsTracker->__ptr_ + 1);
    }

    else
    {
      v30 = p_analyticsTracker->__ptr_;
    }

    v34 = *(self->_headTrackingService.__ptr_ + 4717);
    *(v30 + 254) = *(v34 + 128);
    v35 = *(v34 + 136);
    *(v30 + 1036) = *(v34 + 148);
    *(v30 + 64) = v35;
    v36 = *(self->_headTrackingService.__ptr_ + 4717);
    v37 = (self->_analyticsTracker.__ptr_ + 1056);
    v38 = *(v36 + 168);
    *(v37 + 12) = *(v36 + 180);
    *v37 = v38;
    v39 = *(self->_headTrackingService.__ptr_ + 4717);
    v40 = (self->_analyticsTracker.__ptr_ + 1088);
    v41 = *(v39 + 200);
    *(v40 + 12) = *(v39 + 212);
    *v40 = v41;
    v42 = *(self->_headTrackingService.__ptr_ + 4717);
    v43 = (self->_analyticsTracker.__ptr_ + 1120);
    v44 = *(v42 + 232);
    *(v43 + 12) = *(v42 + 244);
    *v43 = v44;
    v45 = (self->_analyticsTracker.__ptr_ + 1152);
    v46 = *(*(self->_headTrackingService.__ptr_ + 4717) + 264);
    *(v45 + 12) = *(*(self->_headTrackingService.__ptr_ + 4717) + 276);
    *v45 = v46;
    v47 = self->_analyticsTracker.__ptr_;
    _Q0 = *(*(self->_headTrackingService.__ptr_ + 4717) + 360);
    *(v47 + 132) = *(*(self->_headTrackingService.__ptr_ + 4717) + 376);
    *(v47 + 131) = _Q0;
    v49 = self->_analyticsTracker.__ptr_;
    v50 = self->_headTrackingService.__ptr_;
    *(v49 + 568) = *(v50 + 4014);
    *(v49 + 569) = self->_orientationCounter;
    *(v49 + 560) = self->_scheme;
    if (*v50)
    {
      *&_Q0 = *v50;
      *&_Q0 = vdiv_f32(vcvt_f32_s32(*(v50 + 4)), vdup_lane_s32(*&_Q0, 0));
    }

    else
    {
      __asm { FMOV            V0.2S, #-1.0 }
    }

    *(v49 + 2284) = _Q0;
    sub_19B5CA124(v49);
  }

  else
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v31 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v31, OS_LOG_TYPE_ERROR, "Calling _stop and analytics tracker hasn't been created. Called without _start?", buf, 2u);
    }

    v32 = sub_19B420058();
    if ((*(v32 + 160) & 0x80000000) == 0 || (*(v32 + 164) & 0x80000000) == 0 || (*(v32 + 168) & 0x80000000) == 0 || *(v32 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      LOWORD(v75) = 0;
      v33 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _stopHeadTracking]", "CoreLocation: %s\n", v33);
      if (v33 != buf)
      {
        free(v33);
      }
    }
  }

  objc_sync_enter(self);
  sub_19B6444CC(&self->_analyticsTracker.__ptr_, 0);
  objc_sync_exit(self);
  activityManager = self->_activityManager;
  if (activityManager)
  {
    objc_msgSend_stopActivityUpdates(activityManager, v55, v56);
  }

  if (self->_headphoneActivityManager)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v58 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v58, OS_LOG_TYPE_DEFAULT, "[CMMediaSession][HeadsetActivity] Stopping headphone status and activity updates", buf, 2u);
    }

    v59 = sub_19B420058();
    if (*(v59 + 160) > 1 || *(v59 + 164) > 1 || *(v59 + 168) > 1 || *(v59 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      LOWORD(v75) = 0;
      v62 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _stopHeadTracking]", "CoreLocation: %s\n", v62);
      if (v62 != buf)
      {
        free(v62);
      }
    }

    objc_msgSend_stopStatusUpdates(self->_headphoneActivityManager, v60, v61);
    activityQueue = self->_activityQueue;
    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = sub_19B644544;
    v74[3] = &unk_1E7532988;
    v74[4] = self;
    objc_msgSend_addOperationWithBlock_(activityQueue, v64, v74);
  }

  if (self->_deviceMotionDispatcher.__ptr_)
  {
    v65 = sub_19B424AE0();
    sub_19B425248(v65, self->_deviceMotionDispatcher.__ptr_);
    v66 = self->_deviceMotionDispatcher.__ptr_;
    self->_deviceMotionDispatcher.__ptr_ = 0;
    if (v66)
    {
      (*(v66->var0 + 1))(v66);
    }
  }

  if (self->_accessoryDeviceMotionDispatcher.__ptr_)
  {
    v67 = sub_19B6D6344();
    sub_19B426A14(v67, 1, self->_accessoryDeviceMotionDispatcher.__ptr_);
    v68 = self->_accessoryDeviceMotionDispatcher.__ptr_;
    self->_accessoryDeviceMotionDispatcher.__ptr_ = 0;
    if (v68)
    {
      (*(v68->var0 + 1))(v68);
    }

    v69 = self->_headTrackingService.__ptr_;
    if (v69)
    {
      sub_19B690B4C(v69, 1);
    }

    sub_19B644550(&self->_unsyncedAuxHelper, 1);
  }

  if (self->_accessoryMonitorDispatcher.__ptr_)
  {
    v70 = sub_19B60BFA4();
    sub_19B426A14(v70, 0, self->_accessoryMonitorDispatcher.__ptr_);
    v71 = self->_accessoryMonitorDispatcher.__ptr_;
    self->_accessoryMonitorDispatcher.__ptr_ = 0;
    if (v71)
    {
      (*(v71->var0 + 1))(v71);
    }
  }

  mcSession = self->_mcSession;
  if (mcSession)
  {
    objc_msgSend_stop(mcSession, v55, v56);
  }

  objc_msgSend_stopDeviceOrientationUpdates(self->_deviceOrientationManager, v55, v56);
  v73 = *MEMORY[0x1E69E9840];
}

- (void)_stop
{
  v24 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  if (self->_started)
  {
    self->_started = 0;
    objc_sync_exit(self);
    objc_msgSend__stopJitterBufferLevelMonitor(self, v3, v4);
    if (self->_accessoryDeviceMotionInEarStatusDispatcher.__ptr_)
    {
      v5 = sub_19B6D6344();
      sub_19B426A14(v5, 4, self->_accessoryDeviceMotionInEarStatusDispatcher.__ptr_);
      ptr = self->_accessoryDeviceMotionInEarStatusDispatcher.__ptr_;
      self->_accessoryDeviceMotionInEarStatusDispatcher.__ptr_ = 0;
      if (ptr)
      {
        (*(ptr->var0 + 1))(ptr);
      }
    }

    v7 = sub_19B420D84();
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_19B644BB4;
    v21[3] = &unk_1E7532988;
    v21[4] = self;
    sub_19B420C9C(v7, v21);
    objc_sync_enter(self);
    objc_msgSend__stopDefaultsPreferenceUpdater(self, v8, v9);
    if (self->_clientQueue)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v10 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Stopping push updates", buf, 2u);
      }

      v11 = sub_19B420058();
      if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v22 = 0;
        v12 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _stop]", "CoreLocation: %s\n", v12);
        if (v12 != buf)
        {
          free(v12);
        }
      }

      dispatch_release(self->_clientQueue);
      self->_clientQueue = 0;
      _Block_release(self->_clientHandler);
      self->_clientHandler = 0;
    }

    objc_sync_exit(self);
    if (self->_accessoryDeviceMotionConfigDispatcher.__ptr_)
    {
      v13 = sub_19B6D6344();
      v15 = self->_accessoryDeviceMotionConfigDispatcher.__ptr_;
      p_accessoryDeviceMotionConfigDispatcher = &self->_accessoryDeviceMotionConfigDispatcher;
      sub_19B426A14(v13, 2, v15);
      v16 = p_accessoryDeviceMotionConfigDispatcher->__ptr_;
      p_accessoryDeviceMotionConfigDispatcher->__ptr_ = 0;
      if (v16)
      {
        (*(v16->var0 + 1))(v16);
      }
    }
  }

  else
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v17 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] _stop is called multiple times", buf, 2u);
    }

    v18 = sub_19B420058();
    if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v22 = 0;
      v19 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _stop]", "CoreLocation: %s\n", v19);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    objc_sync_exit(self);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_updateMinQuiescentPeriodForBTZ
{
  v16 = *MEMORY[0x1E69E9840];
  ptr = self->_motionSettings.__ptr_;
  *buf = 0;
  if (sub_19B43D4DC(ptr, @"TempestMinQuiescentPeriodForBTZ", buf))
  {
    v4 = *buf;
  }

  else
  {
    v4 = 5.0;
  }

  if (vabdd_f64(v4, self->_minQuiescentPeriodForBTZ) > 0.0001)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v5 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      minQuiescentPeriodForBTZ = self->_minQuiescentPeriodForBTZ;
      *buf = 134218240;
      *&buf[4] = v4;
      v14 = 2048;
      v15 = minQuiescentPeriodForBTZ;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] minQuiescentPeriodForBTZ new: %f old: %f", buf, 0x16u);
    }

    v7 = sub_19B420058();
    if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v12 = self->_minQuiescentPeriodForBTZ;
      v8 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _updateMinQuiescentPeriodForBTZ]", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }

    v9 = self->_headTrackingService.__ptr_;
    v10 = v4;
    *(v9 + 3981) = v10;
    *(v9 + 3980) = v10;
    self->_minQuiescentPeriodForBTZ = v4;
    if (self->_logForReplay)
    {
      sub_19B5E7638(self->_logger.__ptr_, "kRelDmMinQuiescentPeriodForBTZ", v4);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_updateUseFwdPredictionUserSettings
{
  v26 = *MEMORY[0x1E69E9840];
  ptr = self->_motionSettings.__ptr_;
  buf[0] = 0;
  v4 = sub_19B439A40(ptr, @"TempestPreferenceFwdPredictorEnabled", buf);
  v5 = buf[0] & 1 | ((v4 & 1) == 0);
  if (self->_userSettingFwdPredictorEnabled != v5)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v6 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      userSettingFwdPredictorEnabled = self->_userSettingFwdPredictorEnabled;
      *buf = 67109376;
      *&buf[4] = userSettingFwdPredictorEnabled;
      *&buf[8] = 1024;
      *&buf[10] = v5;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Changed _userSettingFwdPredictorEnabled from %d to %d.", buf, 0xEu);
    }

    v8 = sub_19B420058();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v22 = self->_userSettingFwdPredictorEnabled;
      v9 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _updateUseFwdPredictionUserSettings]", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    *(self->_headTrackingService.__ptr_ + 16084) = v5;
    self->_userSettingFwdPredictorEnabled = v5;
  }

  v10 = self->_motionSettings.__ptr_;
  *buf = 0;
  if (sub_19B43D4DC(v10, @"TempestPreferenceRenderingOverheadSeconds", buf))
  {
    v11 = *buf;
    v12 = v11;
  }

  else
  {
    v12 = 0.04;
  }

  if (v12 != self->_renderingOverheadSeconds)
  {
    if (v12 < 0.0 || v12 >= 1.0)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v14 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_ERROR, "[CMMediaSession] renderingOverheadSeconds should usually be positive and less than 1 sec", buf, 2u);
      }

      v15 = sub_19B420058();
      if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v16 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _updateUseFwdPredictionUserSettings]", "CoreLocation: %s\n", v16);
        if (v16 != buf)
        {
          free(v16);
        }
      }
    }

    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v17 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      renderingOverheadSeconds = self->_renderingOverheadSeconds;
      *buf = 134349312;
      *&buf[4] = v12;
      *&buf[12] = 2050;
      v25 = renderingOverheadSeconds;
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] renderingOverheadSeconds new: %{public}.3f old: %{public}.3f", buf, 0x16u);
    }

    v19 = sub_19B420058();
    if (*(v19 + 160) > 1 || *(v19 + 164) > 1 || *(v19 + 168) > 1 || *(v19 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v23 = self->_renderingOverheadSeconds;
      v20 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _updateUseFwdPredictionUserSettings]", "CoreLocation: %s\n", v20);
      if (v20 != buf)
      {
        free(v20);
      }
    }

    self->_renderingOverheadSeconds = v12;
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_updateTrackingSchemeSettings
{
  ptr = self->_motionSettings.__ptr_;
  v8 = 0;
  v4 = sub_19B43304C(ptr, @"TrackingScheme", &v8);
  v6 = v8;
  if (v4)
  {
    v7 = v8 == 4;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    self->_hasUserDefaultTrackingScheme = 1;
    objc_msgSend__setTrackingSchemeInternal_(self, v5, v6);
  }
}

- (void)_updateAnchorIntervalSettings
{
  v17 = *MEMORY[0x1E69E9840];
  ptr = self->_motionSettings.__ptr_;
  *buf = 0;
  v4 = sub_19B43D4DC(ptr, @"AnchorRateHz", buf);
  v5 = *buf;
  v6 = 1.0 / v5 * 1000000.0;
  if (v4)
  {
    v7 = v6;
  }

  else
  {
    v7 = 33333;
  }

  if (self->_anchorUpdateIntervalUs != v7)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v8 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      anchorUpdateIntervalUs = self->_anchorUpdateIntervalUs;
      *buf = 134349312;
      *&buf[4] = v7;
      v15 = 2050;
      v16 = anchorUpdateIntervalUs;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] anchorUpdateIntervalUs new: %{public}llu old: %{public}llu", buf, 0x16u);
    }

    v10 = sub_19B420058();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v13 = self->_anchorUpdateIntervalUs;
      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _updateAnchorIntervalSettings]", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    self->_anchorUpdateIntervalUs = v7;
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_updateUseHeadToHeadsetTransformationEstimator
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = (*(self->_headTrackingService.__ptr_ + 14) - 1) < 2;
  ptr = self->_motionSettings.__ptr_;
  buf[0] = 0;
  v5 = sub_19B439A40(ptr, @"OnlineHeadToHeadsetTransformationEstimator", buf);
  v6 = buf[0];
  if (!v5)
  {
    v6 = v3;
  }

  v7 = v6 & 1;
  if (self->_useHeadToHeadsetTransformationEstimator != v7)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v8 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      useHeadToHeadsetTransformationEstimator = self->_useHeadToHeadsetTransformationEstimator;
      *buf = 67240448;
      v15 = useHeadToHeadsetTransformationEstimator;
      v16 = 1026;
      v17 = v7;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Changed _useHeadToHeadsetTransformationEstimator from %{public}d to %{public}d.", buf, 0xEu);
    }

    v10 = sub_19B420058();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v13 = self->_useHeadToHeadsetTransformationEstimator;
      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _updateUseHeadToHeadsetTransformationEstimator]", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    sub_19B6911D0(self->_headTrackingService.__ptr_, v7);
    self->_useHeadToHeadsetTransformationEstimator = v7;
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_updateCameraControllerParameters
{
  v24 = *MEMORY[0x1E69E9840];
  ptr = self->_motionSettings.__ptr_;
  *buf = 0;
  if (sub_19B43D4DC(ptr, @"PeriodicCameraBurstPulseWidthSeconds", buf))
  {
    v4 = *buf;
  }

  else
  {
    v4 = 2.0;
  }

  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
  }

  v5 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    cameraControllerPeriodicBurstPulseWidthSeconds = self->_cameraControllerPeriodicBurstPulseWidthSeconds;
    *buf = 134349312;
    *&buf[4] = v4;
    v22 = 2050;
    v23 = cameraControllerPeriodicBurstPulseWidthSeconds;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] cameraControllerPeriodicBurstPulseWidthSeconds new: %{public}f old: %{public}f", buf, 0x16u);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v19 = self->_cameraControllerPeriodicBurstPulseWidthSeconds;
    v8 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _updateCameraControllerParameters]", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  self->_cameraControllerPeriodicBurstPulseWidthSeconds = v4;
  v9 = self->_motionSettings.__ptr_;
  *buf = 0;
  if (sub_19B43D4DC(v9, @"PeriodicCameraBurstTotalWidthSeconds", buf))
  {
    v10 = *buf;
  }

  else
  {
    v10 = 5.0;
  }

  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
  }

  v11 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    cameraControllerPeriodicBurstTotalWidthSeconds = self->_cameraControllerPeriodicBurstTotalWidthSeconds;
    *buf = 134349312;
    *&buf[4] = v10;
    v22 = 2050;
    v23 = cameraControllerPeriodicBurstTotalWidthSeconds;
    _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] cameraControllerPeriodicBurstTotalWidthSeconds new: %{public}f old: %{public}f", buf, 0x16u);
  }

  v13 = sub_19B420058();
  if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v20 = self->_cameraControllerPeriodicBurstTotalWidthSeconds;
    v14 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _updateCameraControllerParameters]", "CoreLocation: %s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  if (v10 >= v4)
  {
    self->_cameraControllerPeriodicBurstTotalWidthSeconds = v10;
  }

  else
  {
    *&self->_cameraControllerPeriodicBurstPulseWidthSeconds = 0x40A0000040000000;
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v15 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349312;
      *&buf[4] = 0x4000000000000000;
      v22 = 2050;
      v23 = 5.0;
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Overriding cameraControllerPeriodicBurstParameters with defaults : %{public}f : %{public}f", buf, 0x16u);
    }

    v16 = sub_19B420058();
    if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v17 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _updateCameraControllerParameters]", "CoreLocation: %s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_updateUserSettings
{
  v81 = *MEMORY[0x1E69E9840];
  sub_19B432E80(self->_motionSettings.__ptr_);
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
  }

  v3 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109376;
    v78 = objc_msgSend_returnDefaultPose(self, v4, v5);
    v79 = 1024;
    v80 = objc_msgSend_returnRandomPose(self, v6, v7);
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "[CMMediaSession] checking default and random pose preferences. Current defaultPose: %d, randomPose: %d", buf, 0xEu);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    objc_msgSend_returnDefaultPose(self, v9, v10);
    objc_msgSend_returnRandomPose(self, v11, v12);
    v13 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _updateUserSettings]", "CoreLocation: %s\n", v13);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  ptr = self->_motionSettings.__ptr_;
  buf[0] = 0;
  v15 = sub_19B439A40(ptr, @"TempestReturnDefaultPose", buf);
  v16 = (v15 & buf[0]);
  v17 = self->_motionSettings.__ptr_;
  buf[0] = 0;
  v18 = sub_19B439A40(v17, @"TempestReturnRandomPose", buf);
  v19 = (v18 & buf[0]);
  if (v16 != objc_msgSend_returnDefaultPose(self, v20, v21) || v19 != objc_msgSend_returnRandomPose(self, v22, v23))
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v24 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v78 = v16;
      v79 = 1024;
      v80 = v19;
      _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Return default/random pose preferences changed: defaultPose: %d, randomPose: %d", buf, 0xEu);
    }

    v25 = sub_19B420058();
    if (*(v25 + 160) > 1 || *(v25 + 164) > 1 || *(v25 + 168) > 1 || *(v25 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v27 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _updateUserSettings]", "CoreLocation: %s\n", v27);
      if (v27 != buf)
      {
        free(v27);
      }
    }

    objc_msgSend_setReturnDefaultPose_(self, v26, v16);
    objc_msgSend_setReturnRandomPose_(self, v28, v19);
    if (objc_msgSend_returnDefaultPose(self, v29, v30))
    {
      objc_msgSend__logEvent_(self, v31, @"Returning default pose");
      if (objc_msgSend_returnRandomPose(self, v33, v34))
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v35 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v35, OS_LOG_TYPE_ERROR, "[CMMediaSession] returning default pose overrides returning random pose preferences", buf, 2u);
        }

        v36 = sub_19B420058();
        if ((*(v36 + 160) & 0x80000000) == 0 || (*(v36 + 164) & 0x80000000) == 0 || (*(v36 + 168) & 0x80000000) == 0 || *(v36 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v37 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _updateUserSettings]", "CoreLocation: %s\n", v37);
          if (v37 != buf)
          {
            free(v37);
          }
        }
      }
    }

    else if (objc_msgSend_returnRandomPose(self, v31, v32))
    {
      objc_msgSend__logEvent_(self, v38, @"Returning random pose");
    }

    else
    {
      objc_msgSend__logEvent_(self, v38, @"Returning pose");
    }
  }

  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
  }

  v39 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
  {
    v42 = objc_msgSend_alwaysNotify50HzPose(self, v40, v41);
    *buf = 67109120;
    v78 = v42;
    _os_log_impl(&dword_19B41C000, v39, OS_LOG_TYPE_DEBUG, "[CMMediaSession] checking always notify pose preference. Current alwaysNotify50HzPose: %d", buf, 8u);
  }

  v43 = sub_19B420058();
  if (*(v43 + 160) > 1 || *(v43 + 164) > 1 || *(v43 + 168) > 1 || *(v43 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    objc_msgSend_alwaysNotify50HzPose(self, v44, v45);
    v46 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _updateUserSettings]", "CoreLocation: %s\n", v46);
    if (v46 != buf)
    {
      free(v46);
    }
  }

  v47 = self->_motionSettings.__ptr_;
  buf[0] = 0;
  v48 = sub_19B439A40(v47, @"TempestAlwaysNotify50HzPose", buf);
  v49 = (v48 & buf[0]);
  if (objc_msgSend_alwaysNotify50HzPose(self, v50, v51) != v49)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v52 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v78 = v49;
      _os_log_impl(&dword_19B41C000, v52, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] always notify 50Hz pose preferences changed: alwaysNotify50HzPose: %d", buf, 8u);
    }

    v53 = sub_19B420058();
    if (*(v53 + 160) > 1 || *(v53 + 164) > 1 || *(v53 + 168) > 1 || *(v53 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v55 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _updateUserSettings]", "CoreLocation: %s\n", v55);
      if (v55 != buf)
      {
        free(v55);
      }
    }

    objc_msgSend_setAlwaysNotify50HzPose_(self, v54, v49);
    if (objc_msgSend_alwaysNotify50HzPose(self, v56, v57))
    {
      objc_msgSend__logEvent_(self, v58, @"Always notify 50Hz pose");
    }

    else
    {
      objc_msgSend__logEvent_(self, v58, @"Only notify pose if valid and hasChanged");
    }
  }

  v59 = self->_motionSettings.__ptr_;
  buf[0] = 0;
  v60 = sub_19B439A40(v59, @"TempestVerboseLogging", buf);
  self->_verboseLogging = v60 & buf[0];
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
  }

  v61 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    verboseLogging = self->_verboseLogging;
    *buf = 67240192;
    v78 = verboseLogging;
    _os_log_impl(&dword_19B41C000, v61, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] verbose logging enabled: %{public}d", buf, 8u);
  }

  v63 = sub_19B420058();
  if (*(v63 + 160) > 1 || *(v63 + 164) > 1 || *(v63 + 168) > 1 || *(v63 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v76 = self->_verboseLogging;
    v66 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _updateUserSettings]", "CoreLocation: %s\n", v66);
    if (v66 != buf)
    {
      free(v66);
    }
  }

  objc_msgSend__updateMinQuiescentPeriodForBTZ(self, v64, v65);
  objc_msgSend__updateUseFwdPredictionUserSettings(self, v67, v68);
  objc_msgSend__updateTrackingSchemeSettings(self, v69, v70);
  objc_msgSend__updateAnchorIntervalSettings(self, v71, v72);
  objc_msgSend__updateUseHeadToHeadsetTransformationEstimator(self, v73, v74);
  v75 = *MEMORY[0x1E69E9840];
}

- (void)_startDefaultsPreferenceUpdater
{
  if (!self->_motionDefaults)
  {
    v13 = v5;
    v14 = v4;
    v15 = v3;
    v16 = v2;
    v17 = v6;
    v18 = v7;
    v9 = objc_alloc(MEMORY[0x1E695E000]);
    v11 = 0;
    self->_motionDefaults = objc_msgSend_initWithSuiteName_(v9, v10, @"com.apple.CoreMotion");
    do
    {
      objc_msgSend_addObserver_forKeyPath_options_context_(self->_motionDefaults, v12, self, off_1E7533AB0[v11++], 1, self->_motionDefaults, v13, v14, v15, v16, v17, v18);
    }

    while (v11 != 10);
  }
}

- (void)_stopDefaultsPreferenceUpdater
{
  if (self->_motionDefaults)
  {
    for (i = 0; i != 10; ++i)
    {
      objc_msgSend_removeObserver_forKeyPath_(self->_motionDefaults, a2, self, off_1E7533AB0[i]);
    }

    self->_motionDefaults = 0;
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (self->_motionDefaults == a6)
  {

    objc_msgSend__updateUserSettings(self, a2, a3, a4, a5);
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = CMMediaSession;
    [(CMMediaSession *)&v8 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)_startJitterBufferLevelMonitor
{
  self->_jitterBufferLevel = -1;
  objc_msgSend__startJitterBufferLevelRetryTimer(self, a2, v2);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_19B646A28;
  handler[3] = &unk_1E7533B08;
  handler[4] = self;
  notify_register_dispatch("com.apple.bluetooth.AdaptiveJitterBufferChanged", &self->_jitterBufferLevelNotificationToken, MEMORY[0x1E69E96A0], handler);
}

- (void)_stopJitterBufferLevelMonitor
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B646AB8;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  notify_cancel(self->_jitterBufferLevelNotificationToken);
}

- (void)_startJitterBufferLevelRetryTimer
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B646B34;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_stopJitterBufferLevelRetryTimer
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  jitterBufferLevelInitialUpdateTimer = self->_jitterBufferLevelInitialUpdateTimer;
  if (jitterBufferLevelInitialUpdateTimer)
  {
    dispatch_source_cancel(jitterBufferLevelInitialUpdateTimer);
    dispatch_release(self->_jitterBufferLevelInitialUpdateTimer);
    self->_jitterBufferLevelInitialUpdateTimer = 0;
  }
}

- (void)_notifyClientHandler
{
  v93 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  if (self->_clientQueue && self->_clientHandler)
  {
    objc_msgSend__feedPredictorEstimates(self, v3, v4);
    ptr = self->_headTrackingService.__ptr_;
    v81 = *(ptr + 3451);
    v6 = *(ptr + 27576);
    v78 = *(ptr + 27560);
    v7 = *(ptr + 27592);
    v79 = v6;
    v80 = v7;
    v77 = 0;
    v11 = objc_msgSend__createPoseFromListenerOrientation_Pose_(self, v8, &v78, &v77);
    if (self->_analyticsTracker.__ptr_ && (*(self->_headTrackingService.__ptr_ + 16082) & 1) == 0)
    {
      objc_msgSend_machAbsTimestamp(v77, v9, v10);
      v13 = v12;
      objc_msgSend_consumedAuxTimestamp(v77, v14, v15);
      v17 = self->_analyticsTracker.__ptr_;
      v18 = *(v17 + 117);
      v19 = v13 <= v16 + 0.5;
      v20 = 1.0;
      if (!v19)
      {
        v20 = 0.0;
      }

      if (v18 <= v20)
      {
        v18 = v20;
      }

      *(v17 + 117) = v18;
      v21 = *(v17 + 116);
      if (v21 >= v20)
      {
        v21 = v20;
      }

      *(v17 + 116) = v21;
      *(v17 + 118) = v20 + *(v17 + 118);
      ++*(v17 + 238);
    }

    v22 = v81 & BYTE1(v81);
    v23 = self->_notify50HzPoseDecimator + 1;
    self->_notify50HzPoseDecimator = v23;
    if (v23 == 4)
    {
      self->_notify50HzPoseDecimator = 0;
      if (v22)
      {
LABEL_16:
        if (self->_logForReplay)
        {
          v91 = 0u;
          v92 = 0u;
          buf = vmulq_f64(vcvtq_f64_u64(v80), vdupq_n_s64(0x3EB0C6F7A0B5ED8DuLL));
          v86 = vcvtq_f64_f32(*&v79);
          v85 = *(&v79 + 3);
          v89 = vcvtq_f64_f32(*&v78);
          v87 = *(&v79 + 2);
          v88 = *(&v78 + 3);
          v90 = *(&v78 + 2);
          objc_msgSend_consumedAuxTimestamp(v77, v9, v10);
          *&v91 = v24;
          objc_msgSend_receivedAuxTimestamp(v77, v25, v26);
          *(&v91 + 1) = v27;
          objc_msgSend_machAbsTimestamp(v77, v28, v29);
          *&v92 = v30;
          objc_msgSend_presentationTimestamp(v77, v31, v32);
          *(&v92 + 1) = v33;
          sub_19B5E69A4(self->_logger.__ptr_, &buf);
        }

        if (self->_firstValidPoseTime == 0.0)
        {
          v34 = mach_continuous_time();
          v35 = sub_19B41E070(v34);
          self->_firstValidPoseTime = v35;
          v36 = self->_analyticsTracker.__ptr_;
          if (v36)
          {
            *(v36 + 269) = v35 - self->_sessionStartTime;
          }

          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v37 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
          {
            v38 = self->_firstValidPoseTime - self->_sessionStartTime;
            LODWORD(buf.f64[0]) = 134217984;
            *(buf.f64 + 4) = v38;
            _os_log_impl(&dword_19B41C000, v37, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] First non unit quaternion pose after %.3f seconds", &buf, 0xCu);
          }

          v39 = sub_19B420058();
          if (*(v39 + 160) > 1 || *(v39 + 164) > 1 || *(v39 + 168) > 1 || *(v39 + 152))
          {
            bzero(&buf, 0x65CuLL);
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
            }

            v40 = self->_firstValidPoseTime - self->_sessionStartTime;
            v82 = 134217984;
            v83 = v40;
            v41 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _notifyClientHandler]", "CoreLocation: %s\n", v41);
            if (v41 != &buf)
            {
              free(v41);
            }
          }
        }

        v42 = self->_analyticsTracker.__ptr_;
        if (v42 && (*(self->_headTrackingService.__ptr_ + 16082) & 1) == 0)
        {
          objc_msgSend_machAbsTimestamp(v77, v9, v10);
          v44 = v43;
          objc_msgSend_consumedAuxTimestamp(v77, v45, v46);
          v48 = v44 - v47;
          v49 = *(v42 + 121);
          if (v49 <= v48)
          {
            v49 = v48;
          }

          *(v42 + 121) = v49;
          v50 = *(v42 + 120);
          if (v50 >= v48)
          {
            v50 = v48;
          }

          *(v42 + 120) = v50;
          *(v42 + 122) = v48 + *(v42 + 122);
          ++*(v42 + 246);
        }

        printPoseTimer = self->_printPoseTimer;
        v52 = mach_continuous_time();
        if (printPoseTimer < sub_19B41E070(v52))
        {
          v53 = mach_continuous_time();
          self->_printPoseTimer = sub_19B41E070(v53) + 5.0;
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v54 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf.f64[0]) = 138543362;
            *(buf.f64 + 4) = v77;
            _os_log_impl(&dword_19B41C000, v54, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] %{public}@", &buf, 0xCu);
          }

          v55 = sub_19B420058();
          if (*(v55 + 160) > 1 || *(v55 + 164) > 1 || *(v55 + 168) > 1 || *(v55 + 152))
          {
            bzero(&buf, 0x65CuLL);
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
            }

            v82 = 138543362;
            v83 = *&v77;
            v56 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _notifyClientHandler]", "CoreLocation: %s\n", v56);
            if (v56 != &buf)
            {
              free(v56);
            }
          }

          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v57 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
          {
            accessoryIMUSampleRate = self->_accessoryIMUSampleRate;
            LODWORD(buf.f64[0]) = 67174657;
            HIDWORD(buf.f64[0]) = accessoryIMUSampleRate;
            _os_log_impl(&dword_19B41C000, v57, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] current accessory samples per second: %{private}d", &buf, 8u);
          }

          v59 = sub_19B420058();
          if (*(v59 + 160) > 1 || *(v59 + 164) > 1 || *(v59 + 168) > 1 || *(v59 + 152))
          {
            bzero(&buf, 0x65CuLL);
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
            }

            v60 = self->_accessoryIMUSampleRate;
            v82 = 67174657;
            LODWORD(v83) = v60;
            v61 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _notifyClientHandler]", "CoreLocation: %s\n", v61);
            if (v61 != &buf)
            {
              free(v61);
            }
          }
        }

        clientQueue = self->_clientQueue;
        clientHandler = self->_clientHandler;
        v75[0] = MEMORY[0x1E69E9820];
        v75[1] = 3221225472;
        v75[2] = sub_19B6479B4;
        v75[3] = &unk_1E7533B30;
        v75[4] = v77;
        v75[5] = clientHandler;
        v76 = v11;
        v64 = v75;
LABEL_81:
        dispatch_async(clientQueue, v64);
        goto LABEL_82;
      }

      v22 = objc_msgSend_alwaysNotify50HzPose(self, v9, v10);
    }

    if (v22)
    {
      goto LABEL_16;
    }

    if (self->_inEarStatus != 4)
    {
      v65 = self->_printPoseTimer;
      v66 = mach_continuous_time();
      if (v65 < sub_19B41E070(v66))
      {
        v67 = mach_continuous_time();
        self->_printPoseTimer = sub_19B41E070(v67) + 5.0;
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v68 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.f64[0]) = 138543362;
          *(buf.f64 + 4) = v77;
          _os_log_impl(&dword_19B41C000, v68, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] %{public}@", &buf, 0xCu);
        }

        v69 = sub_19B420058();
        if (*(v69 + 160) > 1 || *(v69 + 164) > 1 || *(v69 + 168) > 1 || *(v69 + 152))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v82 = 138543362;
          v83 = *&v77;
          v70 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _notifyClientHandler]", "CoreLocation: %s\n", v70);
          if (v70 != &buf)
          {
            free(v70);
          }
        }
      }

      clientQueue = self->_clientQueue;
      v71 = self->_clientHandler;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_19B6479CC;
      block[3] = &unk_1E7533B30;
      block[4] = v77;
      block[5] = v71;
      v74 = v11;
      v64 = block;
      goto LABEL_81;
    }
  }

LABEL_82:
  objc_sync_exit(self);
  v72 = *MEMORY[0x1E69E9840];
}

- (void)_feedSourceDeviceIMU:(const Sample *)a3
{
  v31 = *MEMORY[0x1E69E9840];
  if (self->_started)
  {
    v5 = self->_accessorySampleTimer + 1.0;
    v6 = mach_continuous_time();
    if (v5 < sub_19B41E070(v6))
    {
      self->_accessoryIMUSampleRate = self->_accessorySamplesPerSecond;
      self->_accessorySamplesPerSecond = 0;
      v7 = mach_continuous_time();
      self->_accessorySampleTimer = sub_19B41E070(v7);
    }

    v28 = vdup_n_s32(0x37E5D90Du);
    v29 = 937810189;
    v8.f32[0] = sub_19B420740(&a3->acceleration.x);
    v10 = v9 + *&a3[2].timestamp;
    v8.i32[1] = v11;
    v26 = vadd_f32(*&a3[1].acceleration.z, v8);
    v27 = v10;
    v8.i32[0] = LODWORD(a3[2].acceleration.y);
    v24 = *(&a3[2].timestamp + 4);
    v25 = v8.i32[0];
    v12 = vcvt_hight_f32_f64(vcvt_f32_f64(*&a3->acceleration.x), *&a3[1].timestamp);
    v23 = vextq_s8(v12, v12, 4uLL);
    sub_19B41E130(&v23, v23);
    objc_sync_enter(self);
    if ((WORD1(a3[5].timestamp) & 0x100) != 0)
    {
      v21 = (a3->timestamp * 1000000.0);
      self->_lastSourceTimestampMicroSeconds = v21;
      sub_19B693044(self->_headTrackingService.__ptr_, &v23, &v26, &v24, &v28, v21);
    }

    else
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v13 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Not feeding SrcDM due to uninitialized DM status.", buf, 2u);
      }

      v14 = sub_19B420058();
      if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v17 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedSourceDeviceIMU:]", "CoreLocation: %s\n", v17);
        if (v17 != buf)
        {
          free(v17);
        }
      }
    }

    if (self->_logForReplay)
    {
      sub_19B5E5DB4(self->_logger.__ptr_, &a3->timestamp);
    }

    objc_msgSend__notifyClientHandler(self, v15, v16);
    objc_sync_exit(self);
  }

  else
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v18 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_DEBUG, "[CMMediaSession] Ignoring _feedSourceDeviceIMU call that occurred after _stop was called.", buf, 2u);
    }

    v19 = sub_19B420058();
    if (*(v19 + 160) > 1 || *(v19 + 164) > 1 || *(v19 + 168) > 1 || *(v19 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v23.i16[0] = 0;
      v20 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedSourceDeviceIMU:]", "CoreLocation: %s\n", v20);
      if (v20 != buf)
      {
        free(v20);
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)_feedDisplayCount:(unsigned int)a3
{
  v35 = *MEMORY[0x1E69E9840];
  if (self->_started)
  {
    if (self->_displayCount != a3)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v5 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        displayCount = self->_displayCount;
        *buf = 67240448;
        v32 = displayCount;
        v33 = 1026;
        v34 = a3;
        _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Display count changed: from %{public}d, to %{public}u", buf, 0xEu);
      }

      v7 = sub_19B420058();
      if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v29 = self->_displayCount;
        v8 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedDisplayCount:]", "CoreLocation: %s\n", v8);
        if (v8 != buf)
        {
          free(v8);
        }
      }

      ptr = self->_headTrackingService.__ptr_;
      if (!ptr)
      {
        goto LABEL_70;
      }

      if (a3 <= 1)
      {
        if (a3 != 1)
        {
LABEL_70:
          self->_displayCount = a3;
          goto LABEL_71;
        }

        lidAngle = self->_lidAngle;
        if (lidAngle < 0.0 || lidAngle >= 25.0)
        {
          schemePrev = self->_schemePrev;
          if (schemePrev)
          {
            sub_19B690FE4(ptr, schemePrev);
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
            }

            v23 = off_1EAFE29A0;
            if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
            {
              v24 = self->_schemePrev;
              *buf = 67240192;
              v32 = v24;
              _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] External display detached, change tracking scheme back to %{public}d", buf, 8u);
            }

            v25 = sub_19B420058();
            if (*(v25 + 160) > 1 || *(v25 + 164) > 1 || *(v25 + 168) > 1 || *(v25 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE2998 != -1)
              {
                dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
              }

              v30 = self->_schemePrev;
              v26 = _os_log_send_and_compose_impl();
              sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedDisplayCount:]", "CoreLocation: %s\n", v26);
              if (v26 != buf)
              {
                free(v26);
              }
            }

            v27 = self->_analyticsTracker.__ptr_;
            if (v27 && *(v27 + 52) > 0.0)
            {
              sub_19B6A80D8(v27 + 52, &stru_1F0E3D7A0);
            }
          }

          goto LABEL_70;
        }
      }

      v10 = *(ptr + 14);
      self->_schemePrev = v10;
      if (v10)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v11 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] External display attached, change tracking scheme to IMUOnly", buf, 2u);
        }

        v12 = sub_19B420058();
        if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v13 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedDisplayCount:]", "CoreLocation: %s\n", v13);
          if (v13 != buf)
          {
            free(v13);
          }
        }

        sub_19B690FE4(self->_headTrackingService.__ptr_, 0);
      }

      v14 = self->_analyticsTracker.__ptr_;
      if (v14)
      {
        maxDisplayCount = self->_maxDisplayCount;
        if (maxDisplayCount < a3)
        {
          v16 = 0;
          v17 = *(v14 + 511);
          do
          {
            if (v17 != -1)
            {
              *(v14 + 511) = ++v17;
              maxDisplayCount = self->_maxDisplayCount;
            }

            ++v16;
          }

          while (v16 < a3 - maxDisplayCount);
          self->_maxDisplayCount = a3;
        }

        sub_19B6A7EE8(v14 + 52, @"externalScreenDuration");
      }

      goto LABEL_70;
    }
  }

  else
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v18 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_DEBUG, "[CMMediaSession] Ignoring _feedDisplayCount call that occurred after _stop was called.", buf, 2u);
    }

    v19 = sub_19B420058();
    if (*(v19 + 160) > 1 || *(v19 + 164) > 1 || *(v19 + 168) > 1 || *(v19 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v20 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedDisplayCount:]", "CoreLocation: %s\n", v20);
      if (v20 != buf)
      {
        free(v20);
      }
    }
  }

LABEL_71:
  v28 = *MEMORY[0x1E69E9840];
}

- (void)_feedLidAngle:(double)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_started)
  {
    self->_lidAngle = a3;
  }

  else
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v3 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "[CMMediaSession] Ignoring _feedLidAngle call that occurred after _stop was called.", buf, 2u);
    }

    v4 = sub_19B420058();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v5 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedLidAngle:]", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_feedActiveAudioRouteChangedEvent
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_started)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v3 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Active audio route changed, reloading JBL", buf, 2u);
    }

    v4 = sub_19B420058();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v7 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedActiveAudioRouteChangedEvent]", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    objc_msgSend__startJitterBufferLevelRetryTimer(self, v5, v6);
  }

  else
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v8 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEBUG, "[CMMediaSession] Ignoring _feedActiveAudioRouteChangedEvent call that occurred after _stop was called.", buf, 2u);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v10 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedActiveAudioRouteChangedEvent]", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_feedFaceKitData:(id)a3 timestamp:(double)a4
{
  v229 = *MEMORY[0x1E69E9840];
  if (!self->_started)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v18 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_DEBUG, "[CMMediaSession] Ignoring _feedFaceKitData call that occurred after _stop was called.", buf, 2u);
    }

    v19 = sub_19B420058();
    if (*(v19 + 160) > 1 || *(v19 + 164) > 1 || *(v19 + 168) > 1 || *(v19 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      LOWORD(v208) = 0;
      v20 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedFaceKitData:timestamp:]", "CoreLocation: %s\n", v20);
      goto LABEL_20;
    }

    goto LABEL_84;
  }

  v200 = objc_msgSend_objectForKeyedSubscript_(a3, a2, @"rm_camera_id");
  v7 = objc_msgSend_objectForKeyedSubscript_(a3, v6, @"rm_tracked_faces");
  v9 = objc_msgSend_objectForKeyedSubscript_(a3, v8, @"rm_number_of_detected_faces");
  if (v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = &unk_1F0E6A4E0;
  }

  if (self->_analyticsTracker.__ptr_)
  {
    if (objc_msgSend_intValue(v12, v10, v11) <= 1)
    {
      v21 = objc_msgSend_intValue(v12, v13, v14);
      ptr = self->_analyticsTracker.__ptr_;
      if (v21 >= 1 || (v16 = *(ptr + 521), v16 == -1))
      {
LABEL_26:
        v22 = *(ptr + 522);
        if (v22 != -1)
        {
          *(ptr + 522) = v22 + 1;
        }

        goto LABEL_28;
      }

      v17 = (ptr + 2084);
    }

    else
    {
      ptr = self->_analyticsTracker.__ptr_;
      v16 = *(ptr + 520);
      if (v16 == -1)
      {
        goto LABEL_26;
      }

      v17 = (ptr + 2080);
    }

    *v17 = v16 + 1;
    goto LABEL_26;
  }

LABEL_28:
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
  }

  v23 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67240704;
    *&buf[4] = objc_msgSend_unsignedIntValue(v200, v24, v25);
    *&buf[8] = 2050;
    *&buf[10] = objc_msgSend_count(v7, v26, v27);
    *&buf[18] = 1026;
    *&buf[20] = objc_msgSend_intValue(v12, v28, v29);
    _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_DEBUG, "[CMMediaSession][Cam %{public}u] Received %{public}lu faces of %{public}d detected faces", buf, 0x18u);
  }

  v30 = sub_19B420058();
  if (*(v30 + 160) > 1 || *(v30 + 164) > 1 || *(v30 + 168) > 1 || *(v30 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v208 = 67240704;
    v209 = objc_msgSend_unsignedIntValue(v200, v33, v34);
    *v210 = 2050;
    *&v210[2] = objc_msgSend_count(v7, v35, v36);
    *&v210[10] = 1026;
    v211 = objc_msgSend_intValue(v12, v37, v38);
    v39 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedFaceKitData:timestamp:]", "CoreLocation: %s\n", v39);
    if (v39 != buf)
    {
      free(v39);
    }
  }

  Object = objc_msgSend_firstObject(v7, v31, v32);
  v42 = Object;
  if (Object)
  {
    v43 = objc_msgSend_objectForKeyedSubscript_(Object, v41, @"raw_data");
    v45 = objc_msgSend_objectForKeyedSubscript_(v43, v44, @"pose");
    v47 = objc_msgSend_objectForKeyedSubscript_(v45, v46, @"rotation");
    v49 = objc_msgSend_objectForKeyedSubscript_(v45, v48, @"translation");
    v51 = objc_msgSend_objectForKeyedSubscript_(v43, v50, @"data_failure");
    v53 = objc_msgSend_objectForKeyedSubscript_(v51, v52, @"image_too_dark");
    v55 = objc_msgSend_objectForKeyedSubscript_(v51, v54, @"sensor_covered");
    v198 = objc_msgSend_objectForKeyedSubscript_(v42, v56, @"failure_type");
    v58 = objc_msgSend_objectForKeyedSubscript_(v42, v57, @"confidence_level");
    v60 = objc_msgSend_objectForKeyedSubscript_(v42, v59, @"AngleInfoRoll");
    if (v47 && v49)
    {
      v62 = v60;
      v63 = objc_msgSend_objectAtIndexedSubscript_(v47, v61, 0);
      v65 = objc_msgSend_objectAtIndexedSubscript_(v63, v64, 0);
      objc_msgSend_floatValue(v65, v66, v67);
      v69 = v68;
      v71 = objc_msgSend_objectAtIndexedSubscript_(v47, v70, 1);
      v73 = objc_msgSend_objectAtIndexedSubscript_(v71, v72, 0);
      objc_msgSend_floatValue(v73, v74, v75);
      v77 = v76;
      v79 = objc_msgSend_objectAtIndexedSubscript_(v47, v78, 2);
      v81 = objc_msgSend_objectAtIndexedSubscript_(v79, v80, 0);
      objc_msgSend_floatValue(v81, v82, v83);
      v85 = v84;
      v87 = objc_msgSend_objectAtIndexedSubscript_(v47, v86, 0);
      v89 = objc_msgSend_objectAtIndexedSubscript_(v87, v88, 1);
      objc_msgSend_floatValue(v89, v90, v91);
      v93 = v92;
      v95 = objc_msgSend_objectAtIndexedSubscript_(v47, v94, 1);
      v97 = objc_msgSend_objectAtIndexedSubscript_(v95, v96, 1);
      objc_msgSend_floatValue(v97, v98, v99);
      v101 = v100;
      v103 = objc_msgSend_objectAtIndexedSubscript_(v47, v102, 2);
      v105 = objc_msgSend_objectAtIndexedSubscript_(v103, v104, 1);
      objc_msgSend_floatValue(v105, v106, v107);
      v109 = v108;
      v111 = objc_msgSend_objectAtIndexedSubscript_(v47, v110, 0);
      v113 = objc_msgSend_objectAtIndexedSubscript_(v111, v112, 2);
      objc_msgSend_floatValue(v113, v114, v115);
      v117 = v116;
      v119 = objc_msgSend_objectAtIndexedSubscript_(v47, v118, 1);
      v121 = objc_msgSend_objectAtIndexedSubscript_(v119, v120, 2);
      objc_msgSend_floatValue(v121, v122, v123);
      v125 = v124;
      v127 = objc_msgSend_objectAtIndexedSubscript_(v47, v126, 2);
      v129 = objc_msgSend_objectAtIndexedSubscript_(v127, v128, 2);
      objc_msgSend_floatValue(v129, v130, v131);
      v208 = v69;
      v209 = v77;
      *v210 = v85;
      *&v210[4] = v93;
      *&v210[8] = v101;
      v211 = v109;
      v212 = v117;
      v213 = v125;
      v214 = v132.i32[0];
      v203.i64[0] = 0;
      v203.i64[1] = 0x3F80000000000000;
      v133 = sub_19B66D1AC(&v203, &v208, v132);
      v135 = objc_msgSend_objectAtIndexedSubscript_(v49, v134, 0, v133);
      objc_msgSend_floatValue(v135, v136, v137);
      v197 = v138;
      v140 = objc_msgSend_objectAtIndexedSubscript_(v49, v139, 1);
      objc_msgSend_floatValue(v140, v141, v142);
      v196 = v143;
      v145 = objc_msgSend_objectAtIndexedSubscript_(v49, v144, 2);
      objc_msgSend_floatValue(v145, v146, v147);
      v201 = vmul_f32(__PAIR64__(v196, v197), vdup_n_s32(0x3A83126Fu));
      v202 = v148 * 0.001;
      v151.f32[0] = objc_msgSend_intValue(v58, v149, v150);
      v152 = v151.f32[0] / 1000.0;
      v153 = self->_analyticsTracker.__ptr_;
      if (v153)
      {
        v154 = v152;
        v155 = *(v153 + 213);
        if (v155 <= v152)
        {
          v155 = v152;
        }

        *(v153 + 213) = v155;
        v156 = *(v153 + 212);
        if (v156 >= v154)
        {
          v156 = v152;
        }

        *(v153 + 212) = v156;
        *v151.i64 = *(v153 + 214) + v154;
        *(v153 + 214) = v151.i64[0];
        ++*(v153 + 430);
      }

      if ((atomic_load_explicit(qword_1ED71CB40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_1ED71CB40))
      {
        xmmword_1ED71CB50 = xmmword_19B7BA0A0;
        sub_19B41E130(&xmmword_1ED71CB50, xmmword_19B7BA0A0);
        __cxa_guard_release(qword_1ED71CB40);
      }

      v203.i32[0] = sub_19B66BF70(&xmmword_1ED71CB50, v203.f32, v151);
      *(v203.i64 + 4) = __PAIR64__(v158, v157);
      v203.i32[3] = v159;
      v162 = sub_19B66C1A4(&xmmword_1ED71CB50, *&v201, *(&v201 + 1), v202);
      v164 = v163;
      v166 = v165;
      v167 = 0;
      v201 = __PAIR64__(v163, LODWORD(v162));
      v202 = v165;
      v168 = 0.0;
      do
      {
        v168 = v168 + (*(&v201 + v167) * *(&v201 + v167));
        v167 += 4;
      }

      while (v167 != 12);
      v169 = self->_analyticsTracker.__ptr_;
      v170 = sqrtf(v168);
      if (v169)
      {
        v171 = v170;
        v172 = *(v169 + 237);
        if (v172 <= v170)
        {
          v172 = v170;
        }

        *(v169 + 237) = v172;
        v173 = *(v169 + 236);
        if (v173 >= v171)
        {
          v173 = v170;
        }

        *(v169 + 236) = v173;
        *(v169 + 238) = *(v169 + 238) + v171;
        ++*(v169 + 478);
      }

      if (v170 >= 0.1)
      {
        v204 = LODWORD(v152);
        LOBYTE(v205) = objc_msgSend_BOOLValue(v53, v160, v161);
        BYTE1(v205) = objc_msgSend_BOOLValue(v55, v178, v179);
        HIDWORD(v205) = objc_msgSend_intValue(v198, v180, v181);
        objc_msgSend_doubleValue(v62, v182, v183);
        *(v207 + 2) = v184;
        v228 = 0;
        *buf = CFAbsoluteTimeGetCurrent();
        *&buf[8] = a4;
        *&buf[16] = 0x100000002;
        v216 = v203.f32[3];
        v217 = vcvtq_f64_f32(*v203.f32);
        v218 = v203.f32[2];
        v219 = v162;
        v220 = v164;
        v221 = v166;
        v222 = 0u;
        v223 = 0u;
        v224 = 0u;
        v225 = 0u;
        v226 = objc_msgSend_unsignedIntValue(v200, v185, v186);
        v227 = 0;
        LODWORD(v228) = objc_msgSend_intValue(v12, v187, v188);
        lidAngle = self->_lidAngle;
        *&lidAngle = lidAngle;
        objc_msgSend__feedPoseAnchor_facePoseError_lidAngleDeg_(self, v190, buf, &v204, lidAngle);
        v193 = self->_analyticsTracker.__ptr_;
        if (v193)
        {
          v194 = objc_msgSend_intValue(v12, v191, v192);
          if (*(v193 + 2280) < v194)
          {
            *(v193 + 2280) = v194;
          }
        }
      }

      else
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v174 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349312;
          *&buf[4] = (v170 * 100.0);
          *&buf[12] = 2050;
          *&buf[14] = 0x4024000000000000;
          _os_log_impl(&dword_19B41C000, v174, OS_LOG_TYPE_DEBUG, "[CMMediaSession] Ignore anchor since distance: %{public}.1f cm is under the %{public}.1f cm threshold.", buf, 0x16u);
        }

        v175 = sub_19B420058();
        if (*(v175 + 160) > 1 || *(v175 + 164) > 1 || *(v175 + 168) > 1 || *(v175 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v204 = 134349312;
          v205 = (v170 * 100.0);
          v206 = 2050;
          v207[0] = 0x4024000000000000;
          v20 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedFaceKitData:timestamp:]", "CoreLocation: %s\n", v20);
LABEL_20:
          if (v20 != buf)
          {
            free(v20);
          }
        }
      }
    }

    else if (self->_inEarStatus == 4)
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v176 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v176, OS_LOG_TYPE_ERROR, "[CMMediaSession] Rotation matrix or translation is missing", buf, 2u);
      }

      v177 = sub_19B420058();
      if ((*(v177 + 160) & 0x80000000) == 0 || (*(v177 + 164) & 0x80000000) == 0 || (*(v177 + 168) & 0x80000000) == 0 || *(v177 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        LOWORD(v208) = 0;
        v20 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _feedFaceKitData:timestamp:]", "CoreLocation: %s\n", v20);
        goto LABEL_20;
      }
    }
  }

LABEL_84:
  v195 = *MEMORY[0x1E69E9840];
}

- (void)_feedPoseAnchor:(const Sample *)a3 facePoseError:(id *)a4 lidAngleDeg:(float)a5
{
  v152 = *MEMORY[0x1E69E9840];
  if (self->_started)
  {
    if (a3 && a4)
    {
      v8 = *&a3[4].acceleration.z;
      v137 = *&a3[4].timestamp;
      v138 = v8;
      v139 = *&a3[5].acceleration.x;
      timestamp = a3[6].timestamp;
      v9 = *&a3[2].timestamp;
      v133 = *&a3[1].acceleration.x;
      v134 = v9;
      v10 = *&a3[3].acceleration.x;
      v135 = *&a3[2].acceleration.z;
      v136 = v10;
      v11 = *&a3->acceleration.z;
      v131 = *&a3->timestamp;
      v132 = v11;
      sub_19B421798();
      if (sub_19B4426E4())
      {
        v13 = vcvt_hight_f32_f64(vcvt_f32_f64(*&a3[1].timestamp), *&a3[1].acceleration.z);
        *buf = vextq_s8(v13, v13, 4uLL);
        v14 = sub_19B41E130(buf, *buf);
        v15 = sub_19B66BF70(&self->_cameraToSourceAlignment, buf, v14);
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v24 = sub_19B66C1A4(self->_cameraToSourceAlignment.elements, a3[2].acceleration.x, a3[2].acceleration.y, a3[2].acceleration.z);
        *v12.i64 = v15;
        v25 = v17;
        v26 = v19;
        *(&v133 + 1) = v17;
        *&v134 = v19;
        v27 = v21;
        *(&v132 + 1) = v21;
        *&v133 = v15;
      }

      else
      {
        v25 = *(&v133 + 1);
        v26 = *&v134;
        v27 = *(&v132 + 1);
        v12.i64[0] = v133;
        v22 = *(&v134 + 3);
        v24 = *(&v134 + 2);
        v23 = *&v135;
      }

      v121 = v22;
      v123 = v23;
      *v130 = v24;
      *&v130[1] = v22;
      *&v130[2] = v23;
      v114 = *v12.i64;
      v115 = v25;
      v12.f32[0] = *v12.i64;
      *&v33 = v25;
      v112 = v27;
      v113 = v26;
      *&v34 = v26;
      *&v35 = v27;
      v129.i64[0] = __PAIR64__(v33, v12.u32[0]);
      v129.i64[1] = __PAIR64__(v35, v34);
      sub_19B41E130(&v129, v12);
      v36 = v129.i64[1];
      v37 = v129.i64[0];
      v120 = atan2f(((v129.f32[0] * v129.f32[2]) - (v129.f32[3] * v129.f32[1])) + ((v129.f32[0] * v129.f32[2]) - (v129.f32[3] * v129.f32[1])), (((v129.f32[1] * v129.f32[1]) + (v129.f32[0] * v129.f32[0])) * -2.0) + 1.0) * -57.296;
      v38 = -180.0;
      if (v120 < 0.0)
      {
        v38 = 180.0;
      }

      v119 = v38;
      v39 = ((*&v37 * *(&v36 + 1)) + (*(&v37 + 1) * *&v36)) + ((*&v37 * *(&v36 + 1)) + (*(&v37 + 1) * *&v36));
      v40 = -1.0;
      v41 = v39 <= -1.0;
      v42 = v39 < 1.0 || v39 <= -1.0;
      if (v39 >= 1.0)
      {
        v41 = 1;
      }

      if (!v42)
      {
        v40 = 1.0;
      }

      if (v41)
      {
        v39 = v40;
      }

      v118 = asinf(v39);
      v43 = atan2f(((*&v37 * *(&v37 + 1)) - (*(&v36 + 1) * *&v36)) + ((*&v37 * *(&v37 + 1)) - (*(&v36 + 1) * *&v36)), (((*&v36 * *&v36) + (*&v37 * *&v37)) * -2.0) + 1.0);
      v44 = v43 * -57.296;
      v45 = v24 + self->_offsetFromDisplayCenterToFrontCameraInSourceFrameMeters.elements[0];
      v46 = v121 + self->_offsetFromDisplayCenterToFrontCameraInSourceFrameMeters.elements[1];
      v47 = v123 + self->_offsetFromDisplayCenterToFrontCameraInSourceFrameMeters.elements[2];
      *(&v134 + 2) = v45;
      *(&v134 + 3) = v46;
      *&v135 = v47;
      v48 = (v43 * -57.296) < 0.0;
      if ((v43 * -57.296) >= 0.0)
      {
        v49 = 1;
      }

      else
      {
        v49 = -1;
      }

      v50 = -(v43 * -57.296);
      if (!v48)
      {
        v50 = v44;
      }

      v51 = 0;
      if (v50 > 60.0)
      {
        v52 = v44;
        do
        {
          ++v51;
          v44 = v52 + (-v49 * 90.0);
          v53 = -v44;
          if (v44 >= 0.0)
          {
            v53 = v44;
          }

          v54 = v53 <= 60.0;
          v52 = v44;
        }

        while (!v54);
      }

      v126 = 0;
      v127 = ((v51 * v49) * -90.0) * 0.017453;
      sub_19B66C264(&v125, &v126);
      v122 = v46;
      v124 = v45;
      v117 = v47;
      v55 = sub_19B66C1A4(v125.f32, v45, v46, v47);
      v58 = v57;
      *v128 = v55;
      *&v128[1] = v57;
      *&v128[2] = v56;
      if (v56 <= 0.0000001)
      {
        v59 = 90.0;
      }

      else
      {
        v59 = (atan2f(v55, v56) * 57.296);
      }

      v60 = 0;
      v61 = v118 * 57.296;
      v62 = 0.0;
      do
      {
        v62 = v62 + (*&v128[v60] * *&v128[v60]);
        ++v60;
      }

      while (v60 != 3);
      if (sqrtf(v62) <= 0.0000001)
      {
        v65 = 90.0;
      }

      else
      {
        v63 = 0;
        v64 = 0.0;
        do
        {
          v64 = v64 + (*&v128[v63] * *&v128[v63]);
          ++v63;
        }

        while (v63 != 3);
        v65 = ((acosf(v58 / sqrtf(v64)) * -57.296) + 90.0);
      }

      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v66 = off_1EAFE29A0;
      v67 = (v120 + v119);
      v68 = v61;
      v69 = v44;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134219008;
        *&buf[4] = (v120 + v119);
        *&buf[12] = 2048;
        *&buf[14] = v61;
        *&buf[22] = 2048;
        *&buf[24] = v44;
        v148 = 2048;
        v149 = v59;
        v150 = 2048;
        v151 = v65;
        _os_log_impl(&dword_19B41C000, v66, OS_LOG_TYPE_DEBUG, "[CMMediaSession] Face Yaw: %f, Pitch: %f, Roll: %f, User HorizontalAngle: %f, VerticalAngle: %f", buf, 0x34u);
      }

      v70 = sub_19B420058();
      if (*(v70 + 160) > 1 || *(v70 + 164) > 1 || *(v70 + 168) > 1 || *(v70 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v141 = 134219008;
        *v142 = (v120 + v119);
        *&v142[8] = 2048;
        *&v142[10] = v61;
        *&v142[18] = 2048;
        *&v142[20] = v44;
        v143 = 2048;
        v144 = v59;
        v145 = 2048;
        v146 = v65;
        v71 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedPoseAnchor:facePoseError:lidAngleDeg:]", "CoreLocation: %s\n", v71);
        if (v71 != buf)
        {
          free(v71);
        }
      }

      ptr = self->_analyticsTracker.__ptr_;
      if (ptr)
      {
        v73 = 0;
        v74 = 0.0;
        do
        {
          v74 = v74 + (*&v130[v73] * *&v130[v73]);
          ++v73;
        }

        while (v73 != 3);
        v75 = sqrtf(v74);
        v76 = *(ptr + 197);
        if (v76 <= v75)
        {
          v76 = v75;
        }

        *(ptr + 197) = v76;
        v77 = *(ptr + 196);
        if (v77 >= v75)
        {
          v77 = v75;
        }

        *(ptr + 196) = v77;
        *(ptr + 198) = *(ptr + 198) + v75;
        ++*(ptr + 398);
        v78 = *(ptr + 201);
        if (v78 <= v67)
        {
          v78 = (v120 + v119);
        }

        *(ptr + 201) = v78;
        v79 = *(ptr + 200);
        if (v79 >= v67)
        {
          v79 = (v120 + v119);
        }

        *(ptr + 200) = v79;
        *(ptr + 202) = *(ptr + 202) + v67;
        ++*(ptr + 406);
        v80 = *(ptr + 205);
        if (v80 <= v68)
        {
          v80 = v61;
        }

        *(ptr + 205) = v80;
        v81 = *(ptr + 204);
        if (v81 >= v68)
        {
          v81 = v61;
        }

        *(ptr + 204) = v81;
        *(ptr + 206) = *(ptr + 206) + v68;
        ++*(ptr + 414);
        v82 = *(ptr + 209);
        if (v82 <= v69)
        {
          v82 = v44;
        }

        *(ptr + 209) = v82;
        v83 = *(ptr + 208);
        if (v83 >= v69)
        {
          v83 = v44;
        }

        *(ptr + 208) = v83;
        *(ptr + 210) = *(ptr + 210) + v69;
        ++*(ptr + 422);
        v84 = *(ptr + 217);
        if (v84 <= v59)
        {
          v84 = v59;
        }

        *(ptr + 217) = v84;
        v85 = *(ptr + 216);
        if (v85 >= v59)
        {
          v85 = v59;
        }

        *(ptr + 216) = v85;
        *(ptr + 218) = v59 + *(ptr + 218);
        ++*(ptr + 438);
        v86 = *(ptr + 221);
        if (v86 <= v65)
        {
          v86 = v65;
        }

        *(ptr + 221) = v86;
        v87 = *(ptr + 220);
        if (v87 >= v65)
        {
          v87 = v65;
        }

        *(ptr + 220) = v87;
        *(ptr + 222) = v65 + *(ptr + 222);
        ++*(ptr + 446);
      }

      objc_sync_enter(self);
      if (self->_logForReplay)
      {
        sub_19B5E6104(self->_logger.__ptr_, &v131, a4, self->_lidAngle);
      }

      *&v90 = v122;
      *&v89 = v124;
      *&v91 = v117;
      if (self->_simulateCameraOnOffRequest && self->_scheme == 1 && !self->_bypassCameraController && *(self->_headTrackingService.__ptr_ + 27752) != 1)
      {
        goto LABEL_141;
      }

      v93 = (*&a3->acceleration.x * 1000000.0);
      if (a4->var3 || a4->var0 <= 0.799)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v101 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
        {
          var3 = a4->var3;
          var0 = a4->var0;
          *buf = 67109632;
          *&buf[4] = var3;
          *&buf[8] = 2048;
          *&buf[10] = var0;
          *&buf[18] = 2048;
          *&buf[20] = v93;
          _os_log_impl(&dword_19B41C000, v101, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] anchor is IGNORED due to failure or low confidence. failureCode: %u, confidence: %f, timestamp: %llu", buf, 0x1Cu);
        }

        v104 = sub_19B420058();
        if (*(v104 + 160) > 1 || *(v104 + 164) > 1 || *(v104 + 168) > 1 || *(v104 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v105 = a4->var3;
          v106 = a4->var0;
          v141 = 67109632;
          *v142 = v105;
          *&v142[4] = 2048;
          *&v142[6] = v106;
          *&v142[14] = 2048;
          *&v142[16] = v93;
          v107 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedPoseAnchor:facePoseError:lidAngleDeg:]", "CoreLocation: %s\n", v107);
          if (v107 != buf)
          {
            free(v107);
          }
        }

        if (a4->var3)
        {
          v97 = self->_analyticsTracker.__ptr_;
          if (v97)
          {
            v108 = *(v97 + 513);
            if (v108 != -1)
            {
              *(v97 + 513) = v108 + 1;
            }

            goto LABEL_139;
          }

          goto LABEL_141;
        }

        v97 = self->_analyticsTracker.__ptr_;
        if (a4->var0 <= 0.799)
        {
          if (v97)
          {
            v109 = *(v97 + 514);
            if (v109 != -1)
            {
              *(v97 + 514) = v109 + 1;
            }

            goto LABEL_139;
          }

          goto LABEL_141;
        }
      }

      else
      {
        *&v92 = a5;
        objc_msgSend_feedPoseAnchorWithAttitude_position_lidAngleDeg_numberOfDetectedFaces_timestampUs_(self, v88, LODWORD(a3[6].timestamp), v93, v114, v115, v113, v112, v89, v90, v91, v92);
        v94 = mach_absolute_time();
        v95 = sub_19B41E070(v94);
        v96 = v93 * 0.000001;
        v97 = self->_analyticsTracker.__ptr_;
        if (v95 >= v96)
        {
          if (v97)
          {
            v98 = v95 - v96;
            v99 = *(v97 + 177);
            if (v99 <= v98)
            {
              v99 = v98;
            }

            *(v97 + 177) = v99;
            v100 = *(v97 + 176);
            if (v100 >= v98)
            {
              v100 = v98;
            }

            *(v97 + 176) = v100;
            *(v97 + 178) = v98 + *(v97 + 178);
            ++*(v97 + 358);
            goto LABEL_139;
          }

          goto LABEL_141;
        }
      }

      if (v97)
      {
LABEL_139:
        v110 = *(v97 + 512);
        if (v110 != -1)
        {
          *(v97 + 512) = v110 + 1;
        }
      }

LABEL_141:
      objc_sync_exit(self);
      goto LABEL_142;
    }

    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v31 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v31, OS_LOG_TYPE_ERROR, "[CMMediaSession] Missing face sample or error.", buf, 2u);
    }

    v32 = sub_19B420058();
    if ((*(v32 + 160) & 0x80000000) == 0 || (*(v32 + 164) & 0x80000000) == 0 || (*(v32 + 168) & 0x80000000) == 0 || *(v32 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      LOWORD(v131) = 0;
      v30 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _feedPoseAnchor:facePoseError:lidAngleDeg:]", "CoreLocation: %s\n", v30);
LABEL_27:
      if (v30 != buf)
      {
        free(v30);
      }
    }
  }

  else
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v28 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v28, OS_LOG_TYPE_DEBUG, "[CMMediaSession] Ignoring _feedPoseAnchor call that occurred after _stop was called.", buf, 2u);
    }

    v29 = sub_19B420058();
    if (*(v29 + 160) > 1 || *(v29 + 164) > 1 || *(v29 + 168) > 1 || *(v29 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      LOWORD(v131) = 0;
      v30 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedPoseAnchor:facePoseError:lidAngleDeg:]", "CoreLocation: %s\n", v30);
      goto LABEL_27;
    }
  }

LABEL_142:
  v111 = *MEMORY[0x1E69E9840];
}

- (unint64_t)_getAuxSampleTimestamp:(const void *)a3 currentTime:(double)a4
{
  v41 = *MEMORY[0x1E69E9840];
  if (*(a3 + 27) == 2)
  {
    v7 = (*(a3 + 8) * 1000000.0);
    if (self->_lastAudioAccessorySample.timeSyncStatus != 2)
    {
      v8 = sub_19B73A068(&self->_unsyncedAuxHelper, *(a3 + 7), self->_lastSourceTimestampMicroSeconds);
      sub_19B644550(&self->_unsyncedAuxHelper, 1);
      v9 = (v7 - v8) * 0.001;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v10 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v40 = v9;
        _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEFAULT, "[CMMediaSession]  Timesync: Switching to use time-synced timestamp. diffMilliSeconds = %f", buf, 0xCu);
      }

      v11 = sub_19B420058();
      if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v12 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _getAuxSampleTimestamp:currentTime:]", "CoreLocation: %s\n", v12);
        if (v12 != buf)
        {
          free(v12);
        }
      }

      v13 = -v9;
      if (v9 >= 0.0)
      {
        v13 = v9;
      }

      if (v13 > 60.0)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v14 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v40 = v9;
          _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_ERROR, "[CMMediaSession]  Timesync: large discrepency (imeSynced - unTimesynced). MS = %f", buf, 0xCu);
        }

        v15 = sub_19B420058();
        if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v16 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _getAuxSampleTimestamp:currentTime:]", "CoreLocation: %s\n", v16);
          if (v16 != buf)
          {
            free(v16);
          }
        }
      }

      v17 = a4 - self->_firstAccessoryDMTime;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v18 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v40 = v17;
        _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Timesync: First timesynced sample received after %.3f seconds", buf, 0xCu);
      }

      v19 = sub_19B420058();
      if (*(v19 + 160) > 1 || *(v19 + 164) > 1 || *(v19 + 168) > 1 || *(v19 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v20 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _getAuxSampleTimestamp:currentTime:]", "CoreLocation: %s\n", v20);
        if (v20 != buf)
        {
          free(v20);
        }
      }

      if (v17 > 10.0)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v21 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v40 = v17;
          _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_ERROR, "[CMMediaSession]  Timesync: timesync arrived very late, gap %.3f seconds", buf, 0xCu);
        }

        v22 = sub_19B420058();
        if ((*(v22 + 160) & 0x80000000) == 0 || (*(v22 + 164) & 0x80000000) == 0 || (*(v22 + 168) & 0x80000000) == 0 || *(v22 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v23 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _getAuxSampleTimestamp:currentTime:]", "CoreLocation: %s\n", v23);
          if (v23 != buf)
          {
            free(v23);
          }
        }
      }

      if (self->_lastTimesyncLostTime > 0.0)
      {
        v24 = mach_continuous_time();
        v25 = sub_19B41E070(v24);
        lastTimesyncLostTime = self->_lastTimesyncLostTime;
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v27 = v25 - lastTimesyncLostTime;
        v28 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v40 = v27;
          _os_log_impl(&dword_19B41C000, v28, OS_LOG_TYPE_DEFAULT, "[CMMediaSession]  Timesync: Experienced loss of timesync during session. gap = %f", buf, 0xCu);
        }

        v29 = sub_19B420058();
        if (*(v29 + 160) > 1 || *(v29 + 164) > 1 || *(v29 + 168) > 1 || *(v29 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v30 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _getAuxSampleTimestamp:currentTime:]", "CoreLocation: %s\n", v30);
          if (v30 != buf)
          {
            free(v30);
          }
        }

        self->_lastTimesyncLostTime = 0.0;
      }
    }
  }

  else
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v31 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v31, OS_LOG_TYPE_INFO, "[CMMediaSession] Timesync: Using unsynced timestamp.", buf, 2u);
    }

    v32 = sub_19B420058();
    if (*(v32 + 160) > 1 || *(v32 + 164) > 1 || *(v32 + 168) > 1 || *(v32 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v33 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _getAuxSampleTimestamp:currentTime:]", "CoreLocation: %s\n", v33);
      if (v33 != buf)
      {
        free(v33);
      }
    }

    v7 = sub_19B73A068(&self->_unsyncedAuxHelper, *(a3 + 7), self->_lastSourceTimestampMicroSeconds);
    if (self->_lastAudioAccessorySample.timeSyncStatus == 2)
    {
      self->_lastTimesyncLostTime = a4;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v34 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v34, OS_LOG_TYPE_ERROR, "[CMMediaSession]  Timesync: Lost timesync in the middle of session. ", buf, 2u);
      }

      v35 = sub_19B420058();
      if ((*(v35 + 160) & 0x80000000) == 0 || (*(v35 + 164) & 0x80000000) == 0 || (*(v35 + 168) & 0x80000000) == 0 || *(v35 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v36 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _getAuxSampleTimestamp:currentTime:]", "CoreLocation: %s\n", v36);
        if (v36 != buf)
        {
          free(v36);
        }
      }
    }
  }

  v37 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)_feedAccessoryDeviceMotion:(const void *)a3
{
  v356 = *MEMORY[0x1E69E9840];
  if (!self->_started)
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v24 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_DEBUG, "[CMMediaSession] Ignoring _feedAccessoryDeviceMotion call that occurred after _stop was called.", buf, 2u);
    }

    v25 = sub_19B420058();
    if (*(v25 + 160) > 1 || *(v25 + 164) > 1 || *(v25 + 168) > 1 || *(v25 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      *v333 = 0;
      v26 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v26);
      if (v26 != buf)
      {
        free(v26);
      }
    }

    goto LABEL_683;
  }

  v5 = mach_continuous_time();
  v6 = sub_19B41E070(v5);
  if (self->_firstAccessoryDMTime == 0.0)
  {
    self->_firstAccessoryDMTime = v6;
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v7 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_firstAccessoryDMTime - self->_sessionStartTime;
      *buf = 134217984;
      *&buf[4] = v8;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] First accessory DM received after %.3f seconds", buf, 0xCu);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v10 = self->_firstAccessoryDMTime - self->_sessionStartTime;
      *v333 = 134217984;
      *&v333[4] = v10;
      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    ptr = self->_analyticsTracker.__ptr_;
    if (ptr)
    {
      *(ptr + 268) = self->_firstAccessoryDMTime - self->_sessionStartTime;
      sub_19B6A7EE8(ptr + 32, @"auxGyroBiasConvergenceDuration");
    }
  }

  v13 = self->_analyticsTracker.__ptr_;
  if (v13)
  {
    v14 = 0;
    v15 = *(a3 + 7);
    if (v15 < 0.0)
    {
      v15 = -v15;
    }

    do
    {
      v16 = *(a3 + v14 + 32);
      if (v16 < 0.0)
      {
        v16 = -v16;
      }

      if (v16 > v15)
      {
        v15 = v16;
      }

      v14 += 4;
    }

    while (v14 != 8);
    if (v15 < 0.000007 && *(v13 + 32) > 0.0)
    {
      sub_19B6A80D8(v13 + 32, &stru_1F0E3D7A0);
      v13 = self->_analyticsTracker.__ptr_;
    }

    v17 = v6 - self->_lastAccessoryDMTime;
    v18 = *(v13 + 81);
    if (v18 <= v17)
    {
      v18 = v6 - self->_lastAccessoryDMTime;
    }

    *(v13 + 81) = v18;
    v19 = *(v13 + 80);
    if (v19 >= v17)
    {
      v19 = v17;
    }

    *(v13 + 80) = v19;
    *(v13 + 82) = v17 + *(v13 + 82);
    ++*(v13 + 166);
  }

  self->_lastAccessoryDMTime = v6;
  ++self->_accessorySamplesPerSecond;
  fSize = self->_unsyncedAuxHelper.auxAndSrcSensorTimeOffsetBuffer.fHeadAndSize.fSize;
  fCapacity = self->_unsyncedAuxHelper.auxAndSrcSensorTimeOffsetBuffer.fCapacity;
  fHead = self->_unsyncedAuxHelper.auxAndSrcSensorTimeOffsetBuffer.fHeadAndSize.fHead;
  if (fHead + fSize >= fCapacity)
  {
    v23 = self->_unsyncedAuxHelper.auxAndSrcSensorTimeOffsetBuffer.fCapacity;
  }

  else
  {
    v23 = 0;
  }

  *&self->_unsyncedAuxHelper.auxAndSrcSensorTimeOffsetBuffer.fBuffer[8 * (fHead + fSize - v23)] = *(a3 + 9) + -0.0350000001 + *(a3 + 7) * -0.000001;
  if (fCapacity <= fSize)
  {
    if (fHead + 1 < fCapacity)
    {
      LOWORD(fCapacity) = 0;
    }

    self->_unsyncedAuxHelper.auxAndSrcSensorTimeOffsetBuffer.fHeadAndSize.fHead = fHead + 1 - fCapacity;
  }

  else
  {
    self->_unsyncedAuxHelper.auxAndSrcSensorTimeOffsetBuffer.fHeadAndSize.fSize = fSize + 1;
  }

  *v333 = *(a3 + 2);
  *&v333[8] = *(a3 + 6);
  v27.f32[0] = sub_19B447000(a3);
  v29 = v28 + *(a3 + 12);
  v27.i32[1] = v30;
  v334 = vadd_f32(*(a3 + 40), v27);
  v335 = v29;
  v336 = *(a3 + 10);
  v337 = *(a3 + 22);
  v338 = *(a3 + 28);
  v31 = *(a3 + 24);
  v339 = *(a3 + 9);
  v340 = v31;
  v341 = *(a3 + 23);
  v342 = *a3;
  AuxSampleTimestamp_currentTime = objc_msgSend__getAuxSampleTimestamp_currentTime_(self, v32, a3, v6);
  objc_sync_enter(self);
  v34 = self->_headTrackingService.__ptr_;
  if (*(v34 + 14) == 1)
  {
    if (self->_simulateCameraOnOffRequest)
    {
      LOBYTE(v35) = 1;
      if (self->_requestingCameraOn)
      {
        goto LABEL_100;
      }
    }

    else
    {
      v35 = *(v34 + 27752);
      if (self->_requestingCameraOn == v35)
      {
        goto LABEL_100;
      }

      if (!*(v34 + 27752))
      {
        v42 = self->_analyticsTracker.__ptr_;
        if (v42 && *(v42 + 48) > 0.0)
        {
          sub_19B6A80D8(v42 + 48, &stru_1F0E3D7A0);
        }

        goto LABEL_100;
      }
    }

    lastRequestingCameraTimestampUs = self->_lastRequestingCameraTimestampUs;
    if (lastRequestingCameraTimestampUs)
    {
      v37 = self->_analyticsTracker.__ptr_;
      if (!v37)
      {
        goto LABEL_99;
      }

      v38 = (AuxSampleTimestamp_currentTime - lastRequestingCameraTimestampUs) * 0.000001;
      v39 = v38;
      v40 = *(v37 + 153);
      if (v40 <= v39)
      {
        v40 = v39;
      }

      *(v37 + 153) = v40;
      v41 = *(v37 + 152);
      if (v41 >= v39)
      {
        v41 = v39;
      }

      *(v37 + 152) = v41;
      *(v37 + 154) = *(v37 + 154) + v39;
      ++*(v37 + 310);
      sub_19B6A7EE8(v37 + 48, @"cameraOnDuration");
    }

    else
    {
      sessionStartTime = self->_sessionStartTime;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v44 = v6 - sessionStartTime;
      v45 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349056;
        *&buf[4] = v44;
        _os_log_impl(&dword_19B41C000, v45, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Requested first face pose anchor.timeToFirstFacePoseRequestInSessionSeconds: %{public}.1f s", buf, 0xCu);
      }

      v46 = sub_19B420058();
      if (*(v46 + 160) > 1 || *(v46 + 164) > 1 || *(v46 + 168) > 1 || *(v46 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        *v355 = 134349056;
        *&v355[4] = v44;
        v47 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v47);
        if (v47 != buf)
        {
          free(v47);
        }
      }
    }

    v48 = self->_analyticsTracker.__ptr_;
    if (v48)
    {
      v49 = *(v48 + 510);
      if (v49 != -1)
      {
        *(v48 + 510) = v49 + 1;
      }

      v50 = self->_headTrackingService.__ptr_;
      if (*(v50 + 27765) == 1)
      {
        v51 = *(v48 + 515);
        if (v51 != -1)
        {
          v52 = (v48 + 2060);
LABEL_98:
          *v52 = v51 + 1;
        }
      }

      else if (*(v50 + 27764) == 1)
      {
        v51 = *(v48 + 516);
        if (v51 != -1)
        {
          v52 = (v48 + 2064);
          goto LABEL_98;
        }
      }

      else
      {
        v53 = *(v50 + 16052);
        if (v53 == 2)
        {
          v51 = *(v48 + 519);
          if (v51 != -1)
          {
            v52 = (v48 + 2076);
            goto LABEL_98;
          }
        }

        else if (v53 == 3)
        {
          v51 = *(v48 + 517);
          if (v51 != -1)
          {
            v52 = (v48 + 2068);
            goto LABEL_98;
          }
        }

        else
        {
          v51 = *(v48 + 518);
          if (v51 != -1)
          {
            v52 = (v48 + 2072);
            goto LABEL_98;
          }
        }
      }
    }

LABEL_99:
    self->_lastRequestingCameraTimestampUs = AuxSampleTimestamp_currentTime;
    self->_firstFacePoseInCameraRequestTimestampUs = 0;
LABEL_100:
    self->_requestingCameraOn = v35;
    v34 = self->_headTrackingService.__ptr_;
    v54 = *(v34 + 27752);
    if (!*(v34 + 6942) && *(v34 + 27752))
    {
      *(v34 + 3472) = AuxSampleTimestamp_currentTime;
    }

    *(v34 + 6942) = v54;
  }

  if ((*(a3 + 26) & 0x100) != 0)
  {
    if (sub_19B6B00F0(v34 + 37776, v333, AuxSampleTimestamp_currentTime))
    {
      sub_19B6B09D8(v34 + 37776, buf);
      v58 = sub_19B6B0BF4(v34 + 37776);
      v59 = (v34 + 37744);
      v60 = *(v34 + 4720);
      if (v60)
      {
        *v355 = *sub_19B606534(v34 + 80);
        sub_19B608394(v60, buf, v58);
      }

      else
      {
        v61 = *(v34 + 4721);
        if (v61)
        {
          sub_19B5D6F10(v61, buf, v58 * 0.000001);
        }
      }

      if (*(v34 + 37752) == 1)
      {
        v62 = *v59;
        if (*v59)
        {
          memset(v355, 0, 44);
          *&v355[44] = 1065353216;
          sub_19B41E130(&v355[32], 0);
          *v355 = v58 / 1000000.0;
          *&v355[8] = *buf;
          *&v355[16] = *&buf[8];
          v63.f32[0] = sub_19B447000(&v347[4]);
          v63.i32[1] = v64;
          *&v355[20] = vsub_f32(*&buf[12], v63);
          *&v355[28] = *&buf[20] - v65;
          *&v355[32] = *&v347[4];
          sub_19B667230(v62, v355);
        }
      }

      sub_19B6F653C(v34, buf, v58);
    }

    sub_19B695170(v34, v333, AuxSampleTimestamp_currentTime);
    v66 = sub_19B66C1A4(v342.elements, 0.0, 0.0, -1.0);
    v69.f32[0] = acosf(fmaxf(fminf((v68 + (v67 * 0.0)) + (v66 * 0.0), 1.0), -1.0));
    v70 = v69.f32[0];
    v71 = self->_headTrackingService.__ptr_;
    if (self->_scheme == 1)
    {
      v72.f32[0] = sub_19B651B48(v71 + 4238, v69);
    }

    else
    {
      v76 = sub_19B606534(v71 + 80);
      v72.i32[0] = *v76;
      v73 = v76[1];
      v74 = v76[2];
      v75 = v76[3];
    }

    v331 = __PAIR64__(v73, v72.u32[0]);
    v332 = __PAIR64__(v75, v74);
    *buf = sub_19B66BFF4(&v331, v72);
    *&buf[4] = v77;
    *&buf[8] = v78;
    *&buf[12] = v79;
    v80 = sub_19B66C1A4(buf, 0.0, 1.0, 0.0);
    v81 = v70 * 57.296;
    v84 = acosf(fmaxf(fminf((v83 + (v82 * 0.0)) + (v80 * 0.0), 1.0), -1.0)) * 57.296;
    v85 = v81 + v84;
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v86 = off_1EAFE29A0;
    v87 = v81;
    v88 = v84;
    v89 = v85;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349568;
      *&buf[4] = v87;
      *&buf[12] = 2050;
      *&buf[14] = v88;
      *&buf[22] = 2050;
      *&buf[24] = v85;
      _os_log_impl(&dword_19B41C000, v86, OS_LOG_TYPE_DEBUG, "[CMMediaSession] Stem gravity angle: %{public}f, Stem faceY angle: %{public}f, FaceY gravity angle: %{public}f.", buf, 0x20u);
    }

    v90 = sub_19B420058();
    if (*(v90 + 160) > 1 || *(v90 + 164) > 1 || *(v90 + 168) > 1 || *(v90 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      *v355 = 134349568;
      *&v355[4] = v87;
      *&v355[12] = 2050;
      *&v355[14] = v88;
      *&v355[22] = 2050;
      *&v355[24] = v85;
      v91 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v91);
      if (v91 != buf)
      {
        free(v91);
      }
    }

    v92 = self->_analyticsTracker.__ptr_;
    if (v92)
    {
      v93 = *(v92 + 225);
      if (v93 <= v87)
      {
        v93 = v87;
      }

      *(v92 + 225) = v93;
      v94 = *(v92 + 224);
      if (v94 >= v87)
      {
        v94 = v87;
      }

      *(v92 + 224) = v94;
      *(v92 + 226) = *(v92 + 226) + v87;
      ++*(v92 + 454);
      v95 = *(v92 + 229);
      if (v95 <= v89)
      {
        v95 = v85;
      }

      *(v92 + 229) = v95;
      v96 = *(v92 + 228);
      if (v96 >= v89)
      {
        v96 = v85;
      }

      *(v92 + 228) = v96;
      *(v92 + 230) = *(v92 + 230) + v89;
      ++*(v92 + 462);
      v97 = *(v92 + 233);
      if (v97 <= v88)
      {
        v97 = v88;
      }

      *(v92 + 233) = v97;
      v98 = *(v92 + 232);
      if (v98 >= v88)
      {
        v98 = v88;
      }

      *(v92 + 232) = v98;
      *(v92 + 234) = *(v92 + 234) + v88;
      ++*(v92 + 470);
    }
  }

  else
  {
    if (*(v34 + 16088) == 1)
    {
      sub_19B690B4C(v34, 1);
    }

    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v55 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v55, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Not feeding AuxDM due to uninitialized DM status.", buf, 2u);
    }

    v56 = sub_19B420058();
    if (*(v56 + 160) > 1 || *(v56 + 164) > 1 || *(v56 + 168) > 1 || *(v56 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      *v355 = 0;
      v57 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v57);
      if (v57 != buf)
      {
        free(v57);
      }
    }
  }

  if (self->_logForReplay)
  {
    sub_19B5E57B8(self->_logger.__ptr_, a3);
    v99 = self->_headTrackingService.__ptr_;
    if (*(v99 + 16088) == 1)
    {
      *&v355[8] = *(v99 + 4025);
      *v355 = *(v99 + 16092);
      v100 = 24;
      if (*(v99 + 16080))
      {
        v100 = 40;
      }

      *&v355[12] = *(v99 + v100 + 16092);
      v331 = 0;
      v332 = 0x3F80000000000000;
      v327 = 0;
      v328 = 0;
      sub_19B69A3C4(v99, &v331, &v329, &v328, &v327);
      v101 = self->_headTrackingService.__ptr_;
      *buf = v328;
      *&buf[8] = v327;
      *&buf[16] = v329;
      *&buf[28] = *v355;
      *&buf[24] = v330;
      v344 = *&v355[8];
      v345 = *(v99 + 2013);
      v346 = *(v99 + 4028);
      *v347 = *&v355[12];
      v347[16] = *(v101 + 16064);
      v347[17] = *(v101 + 16080);
      v102.f64[0] = *(v101 + 1998);
      v102.f64[1] = *(v101 + 2000);
      v348 = vcvt_hight_f32_f64(vcvt_f32_f64(*(v101 + 998)), v102);
      v349 = *(v101 + 62);
      v350 = *(v101 + 27752);
      v351 = *(v101 + 16083);
      v352 = *(v101 + 16082);
      v353 = *(v101 + 3);
      v354 = *(v101 + 16);
      sub_19B5E6440(self->_logger.__ptr_, buf);
    }
  }

  objc_sync_exit(self);
  v104 = *(a3 + 1);
  v103 = *(a3 + 2);
  self->_lastAudioAccessorySample.auxDM.quaternion = *a3;
  *self->_lastAudioAccessorySample.auxDM.rotationRate.elements = v104;
  *&self->_lastAudioAccessorySample.auxDM.biasCovariance.elements[1] = v103;
  v105 = *(a3 + 6);
  v107 = *(a3 + 3);
  v106 = *(a3 + 4);
  *self->_lastAudioAccessorySample.filteredAcceleration.elements = *(a3 + 5);
  *&self->_lastAudioAccessorySample.quiescentMode = v105;
  *&self->_lastAudioAccessorySample.auxDM.userAcceleration.elements[2] = v107;
  *&self->_lastAudioAccessorySample.timestamp = v106;
  v109 = *(a3 + 8);
  v108 = *(a3 + 9);
  v110 = *(a3 + 7);
  *&self->_lastAudioAccessorySample.isIEDEnabled = *(a3 + 80);
  *self->_lastAudioAccessorySample.gyroBias = v109;
  *&self->_lastAudioAccessorySample.sourceTimestampToMachContinuous = v108;
  *&self->_lastAudioAccessorySample.btcTimestamp = v110;
  v111 = self->_analyticsTracker.__ptr_;
  if (v111)
  {
    v112 = self->_headTrackingService.__ptr_;
    v113 = *(v111 + 113);
    v114 = 0.0;
    if (*(v112 + 678) == AuxSampleTimestamp_currentTime)
    {
      v114 = 1.0;
    }

    if (v113 <= v114)
    {
      v113 = v114;
    }

    *(v111 + 113) = v113;
    v115 = *(v111 + 112);
    if (v115 >= v114)
    {
      v115 = v114;
    }

    *(v111 + 112) = v115;
    *(v111 + 114) = v114 + *(v111 + 114);
    ++*(v111 + 230);
    if (self->_previousBTZState != *(v112 + 16064))
    {
      if (*(v112 + 16064))
      {
        sub_19B6A7EE8(v111 + 2, @"BTZDuration");
        v116 = self->_analyticsTracker.__ptr_;
        *v108.i64 = v6 - self->_lastInBTZTime;
        v117 = *(v116 + 85);
        if (v117 <= *v108.i64)
        {
          v117 = v6 - self->_lastInBTZTime;
        }

        *(v116 + 85) = v117;
        v118 = *(v116 + 84);
        if (v118 >= *v108.i64)
        {
          v118 = *v108.i64;
        }

        *(v116 + 84) = v118;
        *(v116 + 86) = *v108.i64 + *(v116 + 86);
        ++*(v116 + 174);
        lastAngleBetweenCurrentBoresightToDefault = self->_lastAngleBetweenCurrentBoresightToDefault;
        if (lastAngleBetweenCurrentBoresightToDefault < 0.0)
        {
          lastAngleBetweenCurrentBoresightToDefault = -lastAngleBetweenCurrentBoresightToDefault;
        }

        v120 = lastAngleBetweenCurrentBoresightToDefault;
        v121 = *(v116 + 109);
        if (v121 <= v120)
        {
          v121 = v120;
        }

        *(v116 + 109) = v121;
        v122 = *(v116 + 108);
        if (v122 >= v120)
        {
          v122 = v120;
        }

        *(v116 + 108) = v122;
        *(v116 + 110) = *(v116 + 110) + v120;
        ++*(v116 + 222);
      }

      else
      {
        if (*(v111 + 2) > 0.0)
        {
          sub_19B6A80D8(v111 + 2, &stru_1F0E3D7A0);
        }

        self->_lastInBTZTime = v6;
      }

      v112 = self->_headTrackingService.__ptr_;
      self->_previousBTZState = *(v112 + 16064);
    }

    v123 = *(v112 + 16083);
    if (self->_previousCTState == v123)
    {
LABEL_187:
      self->_previousCTState = v123;
      v124 = self->_headTrackingService.__ptr_;
      if (*(v124 + 27784))
      {
        v125 = *(v124 + 33637);
        if (self->_previousCTBodyTurnState == v125)
        {
          goto LABEL_245;
        }

        v126 = (self->_analyticsTracker.__ptr_ + 352);
        if (*(v124 + 33637))
        {
          sub_19B6A7EE8(v126, @"CTBodyTurnDuration");
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v127 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_19B41C000, v127, OS_LOG_TYPE_INFO, "[CMMediaSession] Entering CT body turn state.", buf, 2u);
          }

          v128 = sub_19B420058();
          if (*(v128 + 160) <= 1 && *(v128 + 164) <= 1 && *(v128 + 168) <= 1 && !*(v128 + 152))
          {
            goto LABEL_244;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 == -1)
          {
LABEL_242:
            *v355 = 0;
            v152 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v152);
            if (v152 != buf)
            {
              free(v152);
            }

LABEL_244:
            self->_previousCTBodyTurnState = v125;
            v124 = self->_headTrackingService.__ptr_;
LABEL_245:
            if (*(v124 + 12192))
            {
              v153 = *(v124 + 12224);
              if (self->_previousHeadTurnState == v153)
              {
                goto LABEL_274;
              }

              v154 = (self->_analyticsTracker.__ptr_ + 368);
              if (*(v124 + 12224))
              {
                sub_19B6A7EE8(v154, @"HeadTurnDuration");
                if (qword_1EAFE2998 != -1)
                {
                  dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                }

                v155 = off_1EAFE29A0;
                if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_19B41C000, v155, OS_LOG_TYPE_INFO, "[CMMediaSession] Entering head turn state.", buf, 2u);
                }

                v156 = sub_19B420058();
                if (*(v156 + 160) <= 1 && *(v156 + 164) <= 1 && *(v156 + 168) <= 1 && !*(v156 + 152))
                {
                  goto LABEL_273;
                }

                bzero(buf, 0x65CuLL);
                if (qword_1EAFE2998 == -1)
                {
LABEL_271:
                  *v355 = 0;
                  v159 = _os_log_send_and_compose_impl();
                  sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v159);
                  if (v159 != buf)
                  {
                    free(v159);
                  }

LABEL_273:
                  self->_previousHeadTurnState = v153;
                  v124 = self->_headTrackingService.__ptr_;
LABEL_274:
                  v160 = *(v124 + 16080);
                  if (self->_previousTracking1IMU == v160)
                  {
                    goto LABEL_319;
                  }

                  v161 = self->_analyticsTracker.__ptr_;
                  if (v160)
                  {
                    sub_19B6A7EE8(v161 + 14, @"in1IMUDuration");
                    v162 = self->_analyticsTracker.__ptr_;
                    if (*(v162 + 10) > 0.0)
                    {
                      sub_19B6A80D8(v162 + 10, &stru_1F0E3D7A0);
                      v162 = self->_analyticsTracker.__ptr_;
                    }

                    v164 = *(v162 + 12);
                    v163 = (v162 + 96);
                    if (v164 > 0.0)
                    {
                      sub_19B6A80D8(v163, &stru_1F0E3D7A0);
                    }

                    goto LABEL_315;
                  }

                  sub_19B6A80D8(v161 + 14, @"in1IMUDuration");
                  v169 = self->_analyticsTracker.__ptr_;
                  v171 = *(v169 + 18);
                  v170 = (v169 + 144);
                  if (v171 > 0.0)
                  {
                    sub_19B6A80D8(v170, &stru_1F0E3D7A0);
                  }

                  previousMotionActivityType = self->_previousMotionActivityType;
                  if (previousMotionActivityType > 51)
                  {
                    if (previousMotionActivityType != 52 && previousMotionActivityType != 56)
                    {
LABEL_313:
                      if ((previousMotionActivityType & 0xFFFFFFFE) != 0xA)
                      {
                        if (previousMotionActivityType <= 0x29 && ((1 << previousMotionActivityType) & 0x20000000110) != 0)
                        {
                          sub_19B6A7EE8(self->_analyticsTracker.__ptr_ + 12, @"srcPedestrian2IMUDuration");
                        }

                        goto LABEL_315;
                      }
                    }
                  }

                  else
                  {
                    if (!previousMotionActivityType)
                    {
                      goto LABEL_315;
                    }

                    if (previousMotionActivityType != 5)
                    {
                      goto LABEL_313;
                    }
                  }

                  sub_19B6A7EE8(self->_analyticsTracker.__ptr_ + 10, @"inVehicle2IMUDuration");
LABEL_315:
                  if (self->_previousTracking1IMU != -1)
                  {
                    v182 = self->_analyticsTracker.__ptr_;
                    v183 = *(v182 + 492);
                    if (v183 != -1)
                    {
                      *(v182 + 492) = v183 + 1;
                    }
                  }

                  v124 = self->_headTrackingService.__ptr_;
                  self->_previousTracking1IMU = *(v124 + 16080);
LABEL_319:
                  if (self->_previousTrackingEnabled)
                  {
                    if (*(v124 + 16082))
                    {
                      sub_19B6A80D8(self->_analyticsTracker.__ptr_ + 42, @"durationOfSessionHeadtracked");
                      lastDistractedViewingEndTime = self->_lastDistractedViewingEndTime;
                      if (lastDistractedViewingEndTime > 0.0)
                      {
                        v186 = self->_analyticsTracker.__ptr_;
                        v187 = v6 - lastDistractedViewingEndTime;
                        v188 = *(v186 + 149);
                        if (v188 <= v187)
                        {
                          v188 = v187;
                        }

                        *(v186 + 149) = v188;
                        v189 = *(v186 + 148);
                        if (v189 >= v187)
                        {
                          v189 = v187;
                        }

                        *(v186 + 148) = v189;
                        *(v186 + 150) = v187 + *(v186 + 150);
                        ++*(v186 + 302);
                      }

                      v190 = *(*(self->_headTrackingService.__ptr_ + 4717) + 112);
                      objc_msgSend_enterDistractedViewingSession_(self->_mcSession, v184, v190);
                      switch(v190)
                      {
                        case 3u:
                          v191 = self->_analyticsTracker.__ptr_;
                          v204 = *(v191 + 505);
                          if (v204 != -1)
                          {
                            *(v191 + 505) = v204 + 1;
                          }

                          break;
                        case 2u:
                          v202 = self->_analyticsTracker.__ptr_;
                          v203 = *(v202 + 506);
                          if (v203 != -1)
                          {
                            *(v202 + 506) = v203 + 1;
                          }

                          sub_19B6A7EE8(v202 + 40, @"durationOfSessionDisabledDueToJBL");
                          goto LABEL_368;
                        case 1u:
                          v191 = self->_analyticsTracker.__ptr_;
                          v192 = *(v191 + 504);
                          if (v192 != -1)
                          {
                            *(v191 + 504) = v192 + 1;
                          }

                          break;
                        default:
                          if (qword_1EAFE2998 != -1)
                          {
                            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                          }

                          v205 = off_1EAFE29A0;
                          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 67240192;
                            *&buf[4] = v190;
                            _os_log_impl(&dword_19B41C000, v205, OS_LOG_TYPE_ERROR, "[CMMediaSession] CALogger received invalid disable route: %{public}d", buf, 8u);
                          }

                          v206 = sub_19B420058();
                          if ((*(v206 + 160) & 0x80000000) == 0 || (*(v206 + 164) & 0x80000000) == 0 || (*(v206 + 168) & 0x80000000) == 0 || *(v206 + 152))
                          {
                            bzero(buf, 0x65CuLL);
                            if (qword_1EAFE2998 != -1)
                            {
                              dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                            }

                            *v355 = 67240192;
                            *&v355[4] = v190;
                            v207 = _os_log_send_and_compose_impl();
                            sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v207);
                            if (v207 != buf)
                            {
                              free(v207);
                            }
                          }

                          goto LABEL_368;
                      }

                      sub_19B6A7EE8(v191 + 38, @"durationOfSessionDisabledDueToWalking");
LABEL_368:
                      self->_lastTrackingDisableRoute = v190;
                      v208 = 304;
LABEL_412:
                      *(&self->super.isa + v208) = v6;
                      v124 = self->_headTrackingService.__ptr_;
                      v193 = *(v124 + 16082) ^ 1;
                      goto LABEL_413;
                    }

                    v193 = 1;
LABEL_413:
                    self->_previousTrackingEnabled = v193 & 1;
                    if (!self->_previousSrcMoving)
                    {
                      if (!*(v124 + 1332))
                      {
                        goto LABEL_418;
                      }

                      v228 = 0.0;
                      v229 = -12;
                      do
                      {
                        v228 = v228 + (*(v124 + v229 + 5292) * *(v124 + v229 + 5292));
                        v229 += 4;
                      }

                      while (v229);
                      if (sqrtf(v228) > 0.34907)
                      {
LABEL_418:
                        if (qword_1EAFE2998 != -1)
                        {
                          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                        }

                        v230 = off_1EAFE29A0;
                        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
                        {
                          *buf = 0;
                          _os_log_impl(&dword_19B41C000, v230, OS_LOG_TYPE_INFO, "[CMMediaSession] Src started moving", buf, 2u);
                        }

                        v231 = sub_19B420058();
                        if (*(v231 + 160) > 1 || *(v231 + 164) > 1 || *(v231 + 168) > 1 || *(v231 + 152))
                        {
                          bzero(buf, 0x65CuLL);
                          if (qword_1EAFE2998 != -1)
                          {
                            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                          }

                          *v355 = 0;
                          v232 = _os_log_send_and_compose_impl();
                          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v232);
                          if (v232 != buf)
                          {
                            free(v232);
                          }
                        }

                        sub_19B6A7EE8(self->_analyticsTracker.__ptr_ + 26, @"srcMoving");
                        if (*(self->_analyticsTracker.__ptr_ + 30) > 0.0)
                        {
                          sub_19B6A80D8(self->_analyticsTracker.__ptr_ + 30, &stru_1F0E3D7A0);
                        }

                        v124 = self->_headTrackingService.__ptr_;
                        if (!*(v124 + 1350))
                        {
                          goto LABEL_436;
                        }

                        v233 = 0.0;
                        v234 = -12;
                        do
                        {
                          v233 = v233 + (*(v124 + v234 + 5364) * *(v124 + v234 + 5364));
                          v234 += 4;
                        }

                        while (v234);
                        if (sqrtf(v233) > 0.34907)
                        {
LABEL_436:
                          if (qword_1EAFE2998 != -1)
                          {
                            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                          }

                          v235 = off_1EAFE29A0;
                          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
                          {
                            *buf = 0;
                            _os_log_impl(&dword_19B41C000, v235, OS_LOG_TYPE_INFO, "[CMMediaSession] Aux and src started moving", buf, 2u);
                          }

                          v236 = sub_19B420058();
                          if (*(v236 + 160) > 1 || *(v236 + 164) > 1 || *(v236 + 168) > 1 || *(v236 + 152))
                          {
                            bzero(buf, 0x65CuLL);
                            if (qword_1EAFE2998 != -1)
                            {
                              dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                            }

                            *v355 = 0;
                            v237 = _os_log_send_and_compose_impl();
                            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v237);
                            if (v237 != buf)
                            {
                              free(v237);
                            }
                          }

                          sub_19B6A7EE8(self->_analyticsTracker.__ptr_ + 28, @"auxAndSrcMoving");
                          v124 = self->_headTrackingService.__ptr_;
                        }
                      }
                    }

                    if (!self->_previousAuxMoving)
                    {
                      if (!*(v124 + 1350))
                      {
                        goto LABEL_454;
                      }

                      v238 = 0.0;
                      v239 = -12;
                      do
                      {
                        v238 = v238 + (*(v124 + v239 + 5364) * *(v124 + v239 + 5364));
                        v239 += 4;
                      }

                      while (v239);
                      if (sqrtf(v238) > 0.34907)
                      {
LABEL_454:
                        if (qword_1EAFE2998 != -1)
                        {
                          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                        }

                        v240 = off_1EAFE29A0;
                        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
                        {
                          *buf = 0;
                          _os_log_impl(&dword_19B41C000, v240, OS_LOG_TYPE_INFO, "[CMMediaSession] Aux started moving", buf, 2u);
                        }

                        v241 = sub_19B420058();
                        if (*(v241 + 160) > 1 || *(v241 + 164) > 1 || *(v241 + 168) > 1 || *(v241 + 152))
                        {
                          bzero(buf, 0x65CuLL);
                          if (qword_1EAFE2998 != -1)
                          {
                            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                          }

                          *v355 = 0;
                          v242 = _os_log_send_and_compose_impl();
                          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v242);
                          if (v242 != buf)
                          {
                            free(v242);
                          }
                        }

                        sub_19B6A7EE8(self->_analyticsTracker.__ptr_ + 24, @"auxMoving");
                        if (*(self->_analyticsTracker.__ptr_ + 30) > 0.0)
                        {
                          sub_19B6A80D8(self->_analyticsTracker.__ptr_ + 30, &stru_1F0E3D7A0);
                        }

                        v124 = self->_headTrackingService.__ptr_;
                        if (!*(v124 + 1332))
                        {
                          goto LABEL_472;
                        }

                        v243 = 0.0;
                        v244 = -12;
                        do
                        {
                          v243 = v243 + (*(v124 + v244 + 5292) * *(v124 + v244 + 5292));
                          v244 += 4;
                        }

                        while (v244);
                        if (sqrtf(v243) > 0.34907)
                        {
LABEL_472:
                          if (qword_1EAFE2998 != -1)
                          {
                            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                          }

                          v245 = off_1EAFE29A0;
                          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
                          {
                            *buf = 0;
                            _os_log_impl(&dword_19B41C000, v245, OS_LOG_TYPE_INFO, "[CMMediaSession] Aux and src started moving", buf, 2u);
                          }

                          v246 = sub_19B420058();
                          if (*(v246 + 160) > 1 || *(v246 + 164) > 1 || *(v246 + 168) > 1 || *(v246 + 152))
                          {
                            bzero(buf, 0x65CuLL);
                            if (qword_1EAFE2998 != -1)
                            {
                              dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                            }

                            *v355 = 0;
                            v247 = _os_log_send_and_compose_impl();
                            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v247);
                            if (v247 != buf)
                            {
                              free(v247);
                            }
                          }

                          sub_19B6A7EE8(self->_analyticsTracker.__ptr_ + 28, @"auxAndSrcMoving");
                          v124 = self->_headTrackingService.__ptr_;
                        }
                      }
                    }

                    if (self->_previousSrcMoving)
                    {
                      if (*(v124 + 1332))
                      {
                        v248 = 0.0;
                        v249 = -12;
                        do
                        {
                          v248 = v248 + (*(v124 + v249 + 5292) * *(v124 + v249 + 5292));
                          v249 += 4;
                        }

                        while (v249);
                        if (sqrtf(v248) <= 0.34907)
                        {
                          if (qword_1EAFE2998 != -1)
                          {
                            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                          }

                          v250 = off_1EAFE29A0;
                          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
                          {
                            *buf = 0;
                            _os_log_impl(&dword_19B41C000, v250, OS_LOG_TYPE_INFO, "[CMMediaSession] Src stopped moving", buf, 2u);
                          }

                          v251 = sub_19B420058();
                          if (*(v251 + 160) > 1 || *(v251 + 164) > 1 || *(v251 + 168) > 1 || *(v251 + 152))
                          {
                            bzero(buf, 0x65CuLL);
                            if (qword_1EAFE2998 != -1)
                            {
                              dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                            }

                            *v355 = 0;
                            v252 = _os_log_send_and_compose_impl();
                            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v252);
                            if (v252 != buf)
                            {
                              free(v252);
                            }
                          }

                          sub_19B6A80D8(self->_analyticsTracker.__ptr_ + 26, @"srcMoving");
                          if (*(self->_analyticsTracker.__ptr_ + 28) > 0.0)
                          {
                            sub_19B6A80D8(self->_analyticsTracker.__ptr_ + 28, &stru_1F0E3D7A0);
                          }

                          v124 = self->_headTrackingService.__ptr_;
                          if (*(v124 + 1350))
                          {
                            v253 = 0.0;
                            v254 = -12;
                            do
                            {
                              v253 = v253 + (*(v124 + v254 + 5364) * *(v124 + v254 + 5364));
                              v254 += 4;
                            }

                            while (v254);
                            if (sqrtf(v253) <= 0.34907)
                            {
                              if (qword_1EAFE2998 != -1)
                              {
                                dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                              }

                              v255 = off_1EAFE29A0;
                              if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
                              {
                                *buf = 0;
                                _os_log_impl(&dword_19B41C000, v255, OS_LOG_TYPE_INFO, "[CMMediaSession] Aux and src entered quiescence", buf, 2u);
                              }

                              v256 = sub_19B420058();
                              if (*(v256 + 160) > 1 || *(v256 + 164) > 1 || *(v256 + 168) > 1 || *(v256 + 152))
                              {
                                bzero(buf, 0x65CuLL);
                                if (qword_1EAFE2998 != -1)
                                {
                                  dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                                }

                                *v355 = 0;
                                v257 = _os_log_send_and_compose_impl();
                                sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v257);
                                if (v257 != buf)
                                {
                                  free(v257);
                                }
                              }

                              sub_19B6A7EE8(self->_analyticsTracker.__ptr_ + 30, @"auxAndSrcQuiescent");
                              v124 = self->_headTrackingService.__ptr_;
                            }
                          }
                        }
                      }
                    }

                    if (self->_previousAuxMoving)
                    {
                      if (*(v124 + 1350))
                      {
                        v258 = 0.0;
                        v259 = -12;
                        do
                        {
                          v258 = v258 + (*(v124 + v259 + 5364) * *(v124 + v259 + 5364));
                          v259 += 4;
                        }

                        while (v259);
                        if (sqrtf(v258) <= 0.34907)
                        {
                          if (qword_1EAFE2998 != -1)
                          {
                            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                          }

                          v260 = off_1EAFE29A0;
                          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
                          {
                            *buf = 0;
                            _os_log_impl(&dword_19B41C000, v260, OS_LOG_TYPE_INFO, "[CMMediaSession] Aux stopped moving", buf, 2u);
                          }

                          v261 = sub_19B420058();
                          if (*(v261 + 160) > 1 || *(v261 + 164) > 1 || *(v261 + 168) > 1 || *(v261 + 152))
                          {
                            bzero(buf, 0x65CuLL);
                            if (qword_1EAFE2998 != -1)
                            {
                              dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                            }

                            *v355 = 0;
                            v262 = _os_log_send_and_compose_impl();
                            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v262);
                            if (v262 != buf)
                            {
                              free(v262);
                            }
                          }

                          sub_19B6A80D8(self->_analyticsTracker.__ptr_ + 24, @"auxMoving");
                          if (*(self->_analyticsTracker.__ptr_ + 28) > 0.0)
                          {
                            sub_19B6A80D8(self->_analyticsTracker.__ptr_ + 28, &stru_1F0E3D7A0);
                          }

                          v124 = self->_headTrackingService.__ptr_;
                          if (*(v124 + 1332))
                          {
                            v263 = 0.0;
                            v264 = -12;
                            do
                            {
                              v263 = v263 + (*(v124 + v264 + 5292) * *(v124 + v264 + 5292));
                              v264 += 4;
                            }

                            while (v264);
                            if (sqrtf(v263) <= 0.34907)
                            {
                              if (qword_1EAFE2998 != -1)
                              {
                                dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                              }

                              v265 = off_1EAFE29A0;
                              if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
                              {
                                *buf = 0;
                                _os_log_impl(&dword_19B41C000, v265, OS_LOG_TYPE_INFO, "[CMMediaSession] Aux and src entered quiescence", buf, 2u);
                              }

                              v266 = sub_19B420058();
                              if (*(v266 + 160) > 1 || *(v266 + 164) > 1 || *(v266 + 168) > 1 || *(v266 + 152))
                              {
                                bzero(buf, 0x65CuLL);
                                if (qword_1EAFE2998 != -1)
                                {
                                  dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                                }

                                *v355 = 0;
                                v267 = _os_log_send_and_compose_impl();
                                sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v267);
                                if (v267 != buf)
                                {
                                  free(v267);
                                }
                              }

                              sub_19B6A7EE8(self->_analyticsTracker.__ptr_ + 30, @"auxAndSrcQuiescent");
                              v124 = self->_headTrackingService.__ptr_;
                            }
                          }
                        }
                      }
                    }

                    if (*(v124 + 16))
                    {
                      v268 = *(v124 + 37697);
                      v269 = v268;
                      previousSteadyStatePedestrian = self->_previousSteadyStatePedestrian;
                      if (previousSteadyStatePedestrian || !v268)
                      {
LABEL_575:
                        if (previousSteadyStatePedestrian && (v269 & 1) == 0)
                        {
                          if (qword_1EAFE2998 != -1)
                          {
                            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                          }

                          v275 = off_1EAFE29A0;
                          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
                          {
                            *buf = 0;
                            _os_log_impl(&dword_19B41C000, v275, OS_LOG_TYPE_INFO, "[CMMediaSession] leaving steadyStatePedestrian", buf, 2u);
                          }

                          v276 = sub_19B420058();
                          if (*(v276 + 160) > 1 || *(v276 + 164) > 1 || *(v276 + 168) > 1 || *(v276 + 152))
                          {
                            bzero(buf, 0x65CuLL);
                            if (qword_1EAFE2998 != -1)
                            {
                              dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                            }

                            *v355 = 0;
                            v277 = _os_log_send_and_compose_impl();
                            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v277);
                            if (v277 != buf)
                            {
                              free(v277);
                            }
                          }

                          sub_19B6A80D8(self->_analyticsTracker.__ptr_ + 34, @"steadyStatePedestrianDuration");
                          if (*(self->_analyticsTracker.__ptr_ + 44) > 0.0)
                          {
                            sub_19B6A80D8(self->_analyticsTracker.__ptr_ + 44, &stru_1F0E3D7A0);
                          }

                          if (qword_1EAFE2998 != -1)
                          {
                            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                          }

                          v278 = off_1EAFE29A0;
                          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
                          {
                            *buf = 0;
                            _os_log_impl(&dword_19B41C000, v278, OS_LOG_TYPE_INFO, "[CMMediaSession] Exiting CT body turn state due to leaving steadyStatePedestrian.", buf, 2u);
                          }

                          v279 = sub_19B420058();
                          if (*(v279 + 160) > 1 || *(v279 + 164) > 1 || *(v279 + 168) > 1 || *(v279 + 152))
                          {
                            bzero(buf, 0x65CuLL);
                            if (qword_1EAFE2998 != -1)
                            {
                              dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                            }

                            *v355 = 0;
                            v280 = _os_log_send_and_compose_impl();
                            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v280);
                            if (v280 != buf)
                            {
                              free(v280);
                            }
                          }

                          v281 = self->_analyticsTracker.__ptr_;
                          if (*(v281 + 46) > 0.0)
                          {
                            sub_19B6A80D8(v281 + 46, &stru_1F0E3D7A0);
                          }

                          if (qword_1EAFE2998 != -1)
                          {
                            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                          }

                          v282 = off_1EAFE29A0;
                          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
                          {
                            *buf = 0;
                            _os_log_impl(&dword_19B41C000, v282, OS_LOG_TYPE_INFO, "[CMMediaSession] Exiting head turn state due to leaving steadyStatePedestrian.", buf, 2u);
                          }

                          v283 = sub_19B420058();
                          if (*(v283 + 160) > 1 || *(v283 + 164) > 1 || *(v283 + 168) > 1 || *(v283 + 152))
                          {
                            bzero(buf, 0x65CuLL);
                            if (qword_1EAFE2998 != -1)
                            {
                              dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                            }

                            *v355 = 0;
                            v284 = _os_log_send_and_compose_impl();
                            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v284);
                            if (v284 != buf)
                            {
                              free(v284);
                            }
                          }
                        }

                        v285 = self->_headTrackingService.__ptr_;
                        if (*(v285 + 16))
                        {
                          v286 = *(v285 + 37712);
                          v287 = v286;
                          previousKeepBoresightCentered = self->_previousKeepBoresightCentered;
                          if (previousKeepBoresightCentered || !v286)
                          {
                            goto LABEL_637;
                          }

                          if (qword_1EAFE2998 != -1)
                          {
                            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                          }

                          v289 = off_1EAFE29A0;
                          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
                          {
                            *buf = 0;
                            _os_log_impl(&dword_19B41C000, v289, OS_LOG_TYPE_INFO, "[CMMediaSession] entering keepBoresightCentered state.", buf, 2u);
                          }

                          v290 = sub_19B420058();
                          if (*(v290 + 160) > 1 || *(v290 + 164) > 1 || *(v290 + 168) > 1 || *(v290 + 152))
                          {
                            bzero(buf, 0x65CuLL);
                            if (qword_1EAFE2998 != -1)
                            {
                              dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                            }

                            *v355 = 0;
                            v291 = _os_log_send_and_compose_impl();
                            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v291);
                            if (v291 != buf)
                            {
                              free(v291);
                            }
                          }

                          v292 = self->_analyticsTracker.__ptr_;
                          v293 = *(v292 + 507);
                          if (v293 != -1)
                          {
                            *(v292 + 507) = v293 + 1;
                          }

                          sub_19B6A7EE8(v292 + 36, @"keepBoresightCenteredDueToDynamicsDuration");
                          sub_19B6A80D8(self->_analyticsTracker.__ptr_ + 42, @"durationOfSessionHeadtracked");
                          p_previousKeepBoresightCentered = &self->_previousKeepBoresightCentered;
                          v287 = v286;
                        }

                        else
                        {
                          v286 = 0;
                          v287 = 0;
                          p_previousKeepBoresightCentered = &self->_previousKeepBoresightCentered;
                        }

                        previousKeepBoresightCentered = *p_previousKeepBoresightCentered;
LABEL_637:
                        if (previousKeepBoresightCentered && (v287 & 1) == 0)
                        {
                          if (qword_1EAFE2998 != -1)
                          {
                            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                          }

                          v295 = off_1EAFE29A0;
                          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
                          {
                            *buf = 0;
                            _os_log_impl(&dword_19B41C000, v295, OS_LOG_TYPE_INFO, "[CMMediaSession] leaving keepBoresightCentered state.", buf, 2u);
                          }

                          v296 = sub_19B420058();
                          if (*(v296 + 160) > 1 || *(v296 + 164) > 1 || *(v296 + 168) > 1 || *(v296 + 152))
                          {
                            bzero(buf, 0x65CuLL);
                            if (qword_1EAFE2998 != -1)
                            {
                              dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                            }

                            *v355 = 0;
                            v297 = _os_log_send_and_compose_impl();
                            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v297);
                            if (v297 != buf)
                            {
                              free(v297);
                            }
                          }

                          sub_19B6A80D8(self->_analyticsTracker.__ptr_ + 36, @"keepBoresightCenteredDueToDynamicsDuration");
                          sub_19B6A7EE8(self->_analyticsTracker.__ptr_ + 42, @"durationOfSessionHeadtracked");
                        }

                        v298 = self->_headTrackingService.__ptr_;
                        if (*(v298 + 1350))
                        {
                          v299 = 0;
                          v300 = 0.0;
                          do
                          {
                            v300 = v300 + (*(v298 + v299 + 5352) * *(v298 + v299 + 5352));
                            v299 += 4;
                          }

                          while (v299 != 12);
                          v301 = sqrtf(v300) > 0.34907;
                        }

                        else
                        {
                          v301 = 1;
                        }

                        self->_previousAuxMoving = v301;
                        if (*(v298 + 1332))
                        {
                          v302 = 0;
                          v303 = 0.0;
                          do
                          {
                            v303 = v303 + (*(v298 + v302 + 5280) * *(v298 + v302 + 5280));
                            v302 += 4;
                          }

                          while (v302 != 12);
                          v304 = sqrtf(v303) > 0.34907;
                        }

                        else
                        {
                          v304 = 1;
                        }

                        self->_previousSrcMoving = v304;
                        self->_previousSteadyStatePedestrian = v268;
                        self->_previousKeepBoresightCentered = v286;
                        *buf = *(v298 + 16092);
                        *&buf[8] = *(v298 + 4025);
                        v305 = 24;
                        if (*(v298 + 16080))
                        {
                          v305 = 40;
                        }

                        *&buf[12] = *(v298 + v305 + 16092);
                        *buf = sub_19B604A8C(v298 + 80, buf, &buf[12]);
                        *&buf[4] = v306;
                        *&buf[8] = v307;
                        self->_lastAngleBetweenCurrentBoresightToDefault = sub_19B73888C(buf);
                        v308 = self->_headTrackingService.__ptr_;
                        v309 = *(v308 + 2005);
                        if (v309)
                        {
                          v310 = *(v308 + 4012);
                          if (v310 > 0.0)
                          {
                            lastResetCamControllerTimersTimestampUs = self->_lastResetCamControllerTimersTimestampUs;
                            if (lastResetCamControllerTimersTimestampUs)
                            {
                              v312 = v309 >= lastResetCamControllerTimersTimestampUs;
                              v313 = v309 - lastResetCamControllerTimersTimestampUs;
                              if (v313 != 0 && v312)
                              {
                                v314 = v313 * 0.000001;
                                v315 = v314 - v310;
                                v316 = self->_analyticsTracker.__ptr_;
                                v317 = v314;
                                v318 = *(v316 + 161);
                                if (v318 <= v317)
                                {
                                  v318 = v317;
                                }

                                *(v316 + 161) = v318;
                                v319 = *(v316 + 160);
                                if (v319 >= v317)
                                {
                                  v319 = v317;
                                }

                                *(v316 + 160) = v319;
                                *(v316 + 162) = *(v316 + 162) + v317;
                                ++*(v316 + 326);
                                v320 = v315;
                                v321 = *(v316 + 165);
                                if (v321 <= v320)
                                {
                                  v321 = v320;
                                }

                                *(v316 + 165) = v321;
                                v322 = *(v316 + 164);
                                if (v322 >= v320)
                                {
                                  v322 = v320;
                                }

                                *(v316 + 164) = v322;
                                *(v316 + 166) = *(v316 + 166) + v320;
                                ++*(v316 + 334);
                                v323 = v310;
                                v324 = *(v316 + 169);
                                if (v324 <= v323)
                                {
                                  v324 = v323;
                                }

                                *(v316 + 169) = v324;
                                v325 = *(v316 + 168);
                                if (v325 >= v323)
                                {
                                  v325 = v323;
                                }

                                *(v316 + 168) = v325;
                                *(v316 + 170) = *(v316 + 170) + v323;
                                ++*(v316 + 342);
                              }
                            }

                            self->_lastResetCamControllerTimersTimestampUs = v309;
                          }
                        }

                        goto LABEL_683;
                      }

                      if (qword_1EAFE2998 != -1)
                      {
                        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                      }

                      v271 = off_1EAFE29A0;
                      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_19B41C000, v271, OS_LOG_TYPE_INFO, "[CMMediaSession] entering steadyStatePedestrian", buf, 2u);
                      }

                      v272 = sub_19B420058();
                      if (*(v272 + 160) > 1 || *(v272 + 164) > 1 || *(v272 + 168) > 1 || *(v272 + 152))
                      {
                        bzero(buf, 0x65CuLL);
                        if (qword_1EAFE2998 != -1)
                        {
                          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                        }

                        *v355 = 0;
                        v273 = _os_log_send_and_compose_impl();
                        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v273);
                        if (v273 != buf)
                        {
                          free(v273);
                        }
                      }

                      sub_19B6A7EE8(self->_analyticsTracker.__ptr_ + 34, @"steadyStatePedestrianDuration");
                      p_previousSteadyStatePedestrian = &self->_previousSteadyStatePedestrian;
                      v269 = v268;
                    }

                    else
                    {
                      v268 = 0;
                      v269 = 0;
                      p_previousSteadyStatePedestrian = &self->_previousSteadyStatePedestrian;
                    }

                    previousSteadyStatePedestrian = *p_previousSteadyStatePedestrian;
                    goto LABEL_575;
                  }

                  if (*(v124 + 16082))
                  {
                    v193 = 0;
                    goto LABEL_413;
                  }

                  sub_19B6A7EE8(self->_analyticsTracker.__ptr_ + 42, @"durationOfSessionHeadtracked");
                  lastDistractedViewingStartTime = self->_lastDistractedViewingStartTime;
                  v196 = self->_analyticsTracker.__ptr_;
                  if (lastDistractedViewingStartTime > 0.0)
                  {
                    v197 = v6 - lastDistractedViewingStartTime;
                    v198 = *(v196 + 105);
                    if (v198 <= v197)
                    {
                      v198 = v197;
                    }

                    *(v196 + 105) = v198;
                    v199 = *(v196 + 104);
                    if (v199 >= v197)
                    {
                      v199 = v197;
                    }

                    *(v196 + 104) = v199;
                    *(v196 + 106) = v197 + *(v196 + 106);
                    ++*(v196 + 214);
                  }

                  v200 = *(v196 + 493);
                  if (v200 != -1)
                  {
                    *(v196 + 493) = v200 + 1;
                  }

                  lastTrackingDisableRoute = self->_lastTrackingDisableRoute;
                  if (lastTrackingDisableRoute > 1)
                  {
                    if (lastTrackingDisableRoute == 2)
                    {
                      sub_19B6A80D8(v196 + 40, @"durationOfSessionDisabledDueToJBL");
                      goto LABEL_381;
                    }

                    if (lastTrackingDisableRoute != 3)
                    {
                      goto LABEL_381;
                    }
                  }

                  else
                  {
                    if (!lastTrackingDisableRoute)
                    {
                      if (qword_1EAFE2998 != -1)
                      {
                        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                      }

                      v209 = off_1EAFE29A0;
                      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_19B41C000, v209, OS_LOG_TYPE_ERROR, "[CMMediaSession] We're ending an unknown disable route, something is wrong", buf, 2u);
                      }

                      v210 = sub_19B420058();
                      if ((*(v210 + 160) & 0x80000000) == 0 || (*(v210 + 164) & 0x80000000) == 0 || (*(v210 + 168) & 0x80000000) == 0 || *(v210 + 152))
                      {
                        bzero(buf, 0x65CuLL);
                        if (qword_1EAFE2998 != -1)
                        {
                          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                        }

                        *v355 = 0;
                        v211 = _os_log_send_and_compose_impl();
                        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v211);
                        if (v211 != buf)
                        {
                          free(v211);
                        }
                      }

LABEL_381:
                      v212 = *(*(self->_headTrackingService.__ptr_ + 4717) + 108);
                      objc_msgSend_exitDistractedViewingSession_(self->_mcSession, v194, v212);
                      if (v212 > 3)
                      {
                        switch(v212)
                        {
                          case 4:
                            v219 = self->_analyticsTracker.__ptr_;
                            v220 = *(v219 + 497);
                            if (v220 != -1)
                            {
                              *(v219 + 497) = v220 + 1;
                            }

                            goto LABEL_411;
                          case 5:
                            v226 = self->_analyticsTracker.__ptr_;
                            v227 = *(v226 + 498);
                            if (v227 != -1)
                            {
                              *(v226 + 498) = v227 + 1;
                            }

                            goto LABEL_411;
                          case 6:
                            v215 = self->_analyticsTracker.__ptr_;
                            v216 = *(v215 + 499);
                            if (v216 != -1)
                            {
                              *(v215 + 499) = v216 + 1;
                            }

                            goto LABEL_411;
                        }
                      }

                      else
                      {
                        switch(v212)
                        {
                          case 1:
                            v217 = self->_analyticsTracker.__ptr_;
                            v218 = *(v217 + 494);
                            if (v218 != -1)
                            {
                              *(v217 + 494) = v218 + 1;
                            }

                            goto LABEL_411;
                          case 2:
                            v224 = self->_analyticsTracker.__ptr_;
                            v225 = *(v224 + 495);
                            if (v225 != -1)
                            {
                              *(v224 + 495) = v225 + 1;
                            }

                            goto LABEL_411;
                          case 3:
                            v213 = self->_analyticsTracker.__ptr_;
                            v214 = *(v213 + 496);
                            if (v214 != -1)
                            {
                              *(v213 + 496) = v214 + 1;
                            }

LABEL_411:
                            v208 = 312;
                            goto LABEL_412;
                        }
                      }

                      if (qword_1EAFE2998 != -1)
                      {
                        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                      }

                      v221 = off_1EAFE29A0;
                      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 67240192;
                        *&buf[4] = v212;
                        _os_log_impl(&dword_19B41C000, v221, OS_LOG_TYPE_ERROR, "[CMMediaSession] CALogger received invalid re-enable route: %{public}d", buf, 8u);
                      }

                      v222 = sub_19B420058();
                      if ((*(v222 + 160) & 0x80000000) == 0 || (*(v222 + 164) & 0x80000000) == 0 || (*(v222 + 168) & 0x80000000) == 0 || *(v222 + 152))
                      {
                        bzero(buf, 0x65CuLL);
                        if (qword_1EAFE2998 != -1)
                        {
                          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                        }

                        *v355 = 67240192;
                        *&v355[4] = v212;
                        v223 = _os_log_send_and_compose_impl();
                        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _feedAccessoryDeviceMotion:]", "CoreLocation: %s\n", v223);
                        if (v223 != buf)
                        {
                          free(v223);
                        }
                      }

                      goto LABEL_411;
                    }

                    if (lastTrackingDisableRoute != 1)
                    {
                      goto LABEL_381;
                    }
                  }

                  sub_19B6A80D8(v196 + 38, @"durationOfSessionDisabledDueToWalking");
                  goto LABEL_381;
                }

LABEL_694:
                dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
                goto LABEL_271;
              }
            }

            else
            {
              if (!self->_previousHeadTurnState)
              {
                goto LABEL_274;
              }

              LOBYTE(v153) = 0;
              v154 = (self->_analyticsTracker.__ptr_ + 368);
            }

            if (*v154 > 0.0)
            {
              sub_19B6A80D8(v154, &stru_1F0E3D7A0);
            }

            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
            }

            v157 = off_1EAFE29A0;
            if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_19B41C000, v157, OS_LOG_TYPE_INFO, "[CMMediaSession] Exiting head turn state.", buf, 2u);
            }

            v158 = sub_19B420058();
            if (*(v158 + 160) <= 1 && *(v158 + 164) <= 1 && *(v158 + 168) <= 1 && !*(v158 + 152))
            {
              goto LABEL_273;
            }

            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2998 == -1)
            {
              goto LABEL_271;
            }

            goto LABEL_694;
          }

LABEL_693:
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          goto LABEL_242;
        }
      }

      else
      {
        if (!self->_previousCTBodyTurnState)
        {
          goto LABEL_245;
        }

        LOBYTE(v125) = 0;
        v126 = (self->_analyticsTracker.__ptr_ + 352);
      }

      if (*v126 > 0.0)
      {
        sub_19B6A80D8(v126, &stru_1F0E3D7A0);
      }

      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v150 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v150, OS_LOG_TYPE_INFO, "[CMMediaSession] Exiting CT body turn state.", buf, 2u);
      }

      v151 = sub_19B420058();
      if (*(v151 + 160) <= 1 && *(v151 + 164) <= 1 && *(v151 + 168) <= 1 && !*(v151 + 152))
      {
        goto LABEL_244;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 == -1)
      {
        goto LABEL_242;
      }

      goto LABEL_693;
    }

    if (!*(v112 + 16083))
    {
      v165 = mach_continuous_time();
      self->_lastExitCTTime = sub_19B41E070(v165);
      v166 = self->_analyticsTracker.__ptr_;
      if (*(v166 + 16) > 0.0)
      {
        sub_19B6A80D8(v166 + 16, &stru_1F0E3D7A0);
        v166 = self->_analyticsTracker.__ptr_;
      }

      if (*(v166 + 18) > 0.0)
      {
        sub_19B6A80D8(v166 + 18, &stru_1F0E3D7A0);
        v166 = self->_analyticsTracker.__ptr_;
      }

      if (*(v166 + 20) > 0.0)
      {
        sub_19B6A80D8(v166 + 20, &stru_1F0E3D7A0);
        v166 = self->_analyticsTracker.__ptr_;
      }

      v168 = *(v166 + 22);
      v167 = (v166 + 176);
      if (v168 > 0.0)
      {
        sub_19B6A80D8(v167, &stru_1F0E3D7A0);
      }

      goto LABEL_187;
    }

    v129 = self->_analyticsTracker.__ptr_;
    v130 = *(v129 + 488);
    if (v130 != -1)
    {
      *(v129 + 488) = v130 + 1;
    }

    v131 = self->_lastAngleBetweenCurrentBoresightToDefault;
    if (v131 < 0.0)
    {
      v131 = -v131;
    }

    *v108.i64 = v131;
    v132 = *(v129 + 93);
    if (v132 <= *v108.i64)
    {
      v132 = *v108.i64;
    }

    *(v129 + 93) = v132;
    v133 = *(v129 + 92);
    if (v133 >= *v108.i64)
    {
      v133 = *v108.i64;
    }

    *(v129 + 92) = v133;
    *v108.i64 = *(v129 + 94) + *v108.i64;
    *(v129 + 94) = v108.i64[0];
    ++*(v129 + 190);
    v134.f32[0] = sub_19B69A31C(v112, v108);
    v135 = v134.f32[0] < 0.0;
    p_headTrackingService = &self->_headTrackingService;
    v137.f32[0] = sub_19B69A31C(self->_headTrackingService.__ptr_, v134);
    if (v135)
    {
      v137.f32[0] = -v137.f32[0];
    }

    *v137.i64 = v137.f32[0];
    v138 = *(v129 + 97);
    if (v138 <= *v137.i64)
    {
      v138 = *v137.i64;
    }

    *(v129 + 97) = v138;
    v139 = *(v129 + 96);
    if (v139 >= *v137.i64)
    {
      v139 = *v137.i64;
    }

    *(v129 + 96) = v139;
    *v137.i64 = *(v129 + 98) + *v137.i64;
    *(v129 + 98) = v137.i64[0];
    ++*(v129 + 198);
    v140 = self->_analyticsTracker.__ptr_;
    v141.f32[0] = sub_19B69A370(*p_headTrackingService, v137);
    v142 = v141.f32[0] < 0.0;
    v143 = sub_19B69A370(*p_headTrackingService, v141);
    if (v142)
    {
      v143 = -v143;
    }

    v144 = v143;
    v145 = *(v140 + 101);
    if (v145 <= v144)
    {
      v145 = v144;
    }

    *(v140 + 101) = v145;
    v146 = *(v140 + 100);
    if (v146 >= v144)
    {
      v146 = v144;
    }

    *(v140 + 100) = v146;
    *(v140 + 102) = *(v140 + 102) + v144;
    ++*(v140 + 206);
    sub_19B6A7EE8(self->_analyticsTracker.__ptr_ + 16, @"CTDuration");
    if ((*p_headTrackingService)[2010].i8[0] == 1)
    {
      v147 = self->_analyticsTracker.__ptr_;
      v148 = *(v147 + 489);
      if (v148 != -1)
      {
        *(v147 + 489) = v148 + 1;
      }

      sub_19B6A7EE8(v147 + 18, @"CTDurationIn1IMU");
    }

    v149 = self->_previousMotionActivityType;
    if (v149 > 51)
    {
      if (v149 == 52 || v149 == 56)
      {
        goto LABEL_297;
      }
    }

    else
    {
      if (!v149)
      {
LABEL_305:
        if (self->_lastExitCTTime > 0.0)
        {
          v177 = self->_analyticsTracker.__ptr_;
          v178 = mach_continuous_time();
          v179 = sub_19B41E070(v178) - self->_lastExitCTTime;
          v180 = *(v177 + 89);
          if (v180 <= v179)
          {
            v180 = v179;
          }

          *(v177 + 89) = v180;
          v181 = *(v177 + 88);
          if (v181 >= v179)
          {
            v181 = v179;
          }

          *(v177 + 88) = v181;
          *(v177 + 90) = v179 + *(v177 + 90);
          ++*(v177 + 182);
          self->_lastExitCTTime = 0.0;
        }

        goto LABEL_187;
      }

      if (v149 == 5)
      {
        goto LABEL_297;
      }
    }

    if ((v149 & 0xFFFFFFFE) != 0xA)
    {
LABEL_300:
      if (v149 <= 0x29 && ((1 << v149) & 0x20000000110) != 0)
      {
        v175 = self->_analyticsTracker.__ptr_;
        v176 = *(v175 + 491);
        if (v176 != -1)
        {
          *(v175 + 491) = v176 + 1;
        }

        sub_19B6A7EE8(v175 + 22, @"CTDurationInPedestrian");
      }

      goto LABEL_305;
    }

LABEL_297:
    v173 = self->_analyticsTracker.__ptr_;
    v174 = *(v173 + 490);
    if (v174 != -1)
    {
      *(v173 + 490) = v174 + 1;
    }

    sub_19B6A7EE8(v173 + 20, @"CTDurationInVehicle");
    v149 = self->_previousMotionActivityType;
    goto LABEL_300;
  }

LABEL_683:
  v326 = *MEMORY[0x1E69E9840];
}

- (void)_feedAccessoryConfig:(const Config *)a3
{
  v57 = *MEMORY[0x1E69E9840];
  if (self->_started)
  {
    ptr = self->_analyticsTracker.__ptr_;
    if (ptr)
    {
      *(ptr + 532) = a3->var3;
    }

    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v6 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      var0 = a3->var0;
      var3 = a3->var3;
      *buf = 67240963;
      *&buf[4] = var0;
      *&buf[8] = 2081;
      *&buf[10] = a3->var1;
      v53 = 2081;
      var2 = a3->var2;
      v55 = 1026;
      v56 = var3;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Received accessoryDeviceMotion config. side,%{public}d,configuration,%{private}s,serialNumber,%{private}s,hardwareModel,%{public}d", buf, 0x22u);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v10 = a3->var0;
      v11 = a3->var3;
      *v47 = 67240963;
      *&v47[4] = v10;
      *&v47[8] = 2081;
      *&v47[10] = a3->var1;
      v48 = 2081;
      v49 = a3->var2;
      v50 = 1026;
      v51 = v11;
      v12 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryConfig:]", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    objc_sync_enter(self);
    *v47 = 0;
    *&v47[8] = 0x3F80000000000000;
    v13 = a3->var3;
    if (v13 > 3)
    {
      if (v13 == 4)
      {
        v24 = self->_analyticsTracker.__ptr_;
        v25 = a3->var0;
        if (v24)
        {
          *(v24 + 533) = v25;
        }

        if (v25 == 2)
        {
          v16 = &xmmword_19B7BA10C;
          goto LABEL_93;
        }

        if (v25 == 1)
        {
          v16 = &xmmword_19B7BA0FC;
          goto LABEL_93;
        }

        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v39 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v39, OS_LOG_TYPE_ERROR, "[CMMediaSession] Error -- config side for kAccessoryHardwareModelB494 must be 1 or 2.", buf, 2u);
        }

        v40 = sub_19B420058();
        if ((*(v40 + 160) & 0x80000000) != 0 && (*(v40 + 164) & 0x80000000) != 0 && (*(v40 + 168) & 0x80000000) != 0 && !*(v40 + 152))
        {
          goto LABEL_95;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 == -1)
        {
          goto LABEL_125;
        }

        goto LABEL_138;
      }

      if (v13 != 5)
      {
        if (v13 == 6)
        {
          v16 = &xmmword_19B7BA0CC;
          goto LABEL_93;
        }

        goto LABEL_59;
      }

      v32 = self->_analyticsTracker.__ptr_;
      v33 = a3->var0;
      if (v32)
      {
        *(v32 + 533) = v33;
      }

      if (v33 != 2)
      {
        if (v33 != 1)
        {
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v43 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_19B41C000, v43, OS_LOG_TYPE_ERROR, "[CMMediaSession] Error -- config side for kAccessoryHardwareModelB698 must be 1 or 2.", buf, 2u);
          }

          v44 = sub_19B420058();
          if ((*(v44 + 160) & 0x80000000) != 0 && (*(v44 + 164) & 0x80000000) != 0 && (*(v44 + 168) & 0x80000000) != 0 && !*(v44 + 152))
          {
            goto LABEL_95;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 == -1)
          {
            goto LABEL_125;
          }

          goto LABEL_138;
        }

        goto LABEL_79;
      }
    }

    else
    {
      if (v13 != 1)
      {
        if (v13 == 2)
        {
          v16 = &xmmword_19B7BA0BC;
          goto LABEL_93;
        }

        if (v13 == 3)
        {
          v14 = self->_analyticsTracker.__ptr_;
          v15 = a3->var0;
          if (v14)
          {
            *(v14 + 533) = v15;
          }

          if (v15 == 2)
          {
            v16 = &xmmword_19B7BA0EC;
            goto LABEL_93;
          }

          if (v15 == 1)
          {
            v16 = &xmmword_19B7BA0DC;
LABEL_93:
            *buf = *v16;
            sub_19B41E130(buf, *buf);
            *v47 = *buf;
LABEL_94:
            objc_msgSend__setFixedTransforms_(self, v30, v47);
LABEL_95:
            if (self->_logForReplay)
            {
              sub_19B5E73F0(self->_logger.__ptr_, a3);
            }

            objc_sync_exit(self);
            goto LABEL_98;
          }

          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v41 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_19B41C000, v41, OS_LOG_TYPE_ERROR, "[CMMediaSession] Error -- config side for kAccessoryHardwareModelB688 must be 1 or 2.", buf, 2u);
          }

          v42 = sub_19B420058();
          if ((*(v42 + 160) & 0x80000000) != 0 && (*(v42 + 164) & 0x80000000) != 0 && (*(v42 + 168) & 0x80000000) != 0 && !*(v42 + 152))
          {
            goto LABEL_95;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 == -1)
          {
            goto LABEL_125;
          }

LABEL_138:
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
LABEL_125:
          v37 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _feedAccessoryConfig:]", "CoreLocation: %s\n", v37);
          goto LABEL_126;
        }

LABEL_59:
        if (a3->var6)
        {
          v26 = self->_analyticsTracker.__ptr_;
          if (v26)
          {
            *(v26 + 533) = a3->var0;
          }

          *v47 = a3->var7;
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v27 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
          {
            v28 = a3->var3;
            *buf = 67240192;
            *&buf[4] = v28;
            _os_log_impl(&dword_19B41C000, v27, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Use the H2H transformation from IORegistry for model %{public}d", buf, 8u);
          }

          v29 = sub_19B420058();
          if (*(v29 + 160) > 1 || *(v29 + 164) > 1 || *(v29 + 168) > 1 || *(v29 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
            }

            v45 = a3->var3;
            v31 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryConfig:]", "CoreLocation: %s\n", v31);
            if (v31 != buf)
            {
              free(v31);
            }
          }

          goto LABEL_94;
        }

        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v34 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
        {
          v35 = a3->var3;
          *buf = 67240192;
          *&buf[4] = v35;
          _os_log_impl(&dword_19B41C000, v34, OS_LOG_TYPE_ERROR, "[CMMediaSession] Error -- No H2H transformation for model %{public}d", buf, 8u);
        }

        v36 = sub_19B420058();
        if ((*(v36 + 160) & 0x80000000) != 0 && (*(v36 + 164) & 0x80000000) != 0 && (*(v36 + 168) & 0x80000000) != 0 && !*(v36 + 152))
        {
          goto LABEL_95;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v46 = a3->var3;
        v37 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _feedAccessoryConfig:]", "CoreLocation: %s\n", v37);
LABEL_126:
        if (v37 != buf)
        {
          free(v37);
        }

        goto LABEL_95;
      }

      v20 = self->_analyticsTracker.__ptr_;
      v21 = a3->var0;
      if (v20)
      {
        *(v20 + 533) = v21;
      }

      if (v21 != 2)
      {
        if (v21 != 1)
        {
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v22 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_ERROR, "[CMMediaSession] Error -- config side for kAccessoryHardwareModelB298 must be 1 or 2.", buf, 2u);
          }

          v23 = sub_19B420058();
          if ((*(v23 + 160) & 0x80000000) != 0 && (*(v23 + 164) & 0x80000000) != 0 && (*(v23 + 168) & 0x80000000) != 0 && !*(v23 + 152))
          {
            goto LABEL_95;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 == -1)
          {
            goto LABEL_125;
          }

          goto LABEL_138;
        }

LABEL_79:
        v16 = &xmmword_19B7BA11C;
        goto LABEL_93;
      }
    }

    v16 = &xmmword_19B7BA12C;
    goto LABEL_93;
  }

  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
  }

  v17 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_DEBUG, "[CMMediaSession] Ignoring _feedAccessoryConfig call that occurred after _stop was called.", buf, 2u);
  }

  v18 = sub_19B420058();
  if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    *v47 = 0;
    v19 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryConfig:]", "CoreLocation: %s\n", v19);
    if (v19 != buf)
    {
      free(v19);
    }
  }

LABEL_98:
  v38 = *MEMORY[0x1E69E9840];
}

- (void)_feedPredictorEstimates
{
  v45 = *MEMORY[0x1E69E9840];
  if (self->_started)
  {
    v37[0] = 0;
    v37[1] = 0x3F80000000000000;
    v33 = 0;
    v34 = 0;
    v32 = 0;
    v31 = 0;
    objc_sync_enter(self);
    v3 = mach_absolute_time();
    v4 = sub_19B41E070(v3);
    self->_lastListenerOrientationGenerationTimestampSeconds = v4;
    jitterBufferLevel = self->_jitterBufferLevel;
    if (jitterBufferLevel == 0xFFFF)
    {
      v6 = 0.1;
    }

    else
    {
      v6 = ((jitterBufferLevel / 1000.0) + self->_renderingOverheadSeconds);
    }

    v10 = (v4 + v6) * 1000000.0;
    self->_lastPresentationTimestamp = v10;
    v31 = v10;
    sub_19B69A5F4(self->_headTrackingService.__ptr_, &v31, v37, &v35, &v34, &v33, &v32);
    ptr = self->_analyticsTracker.__ptr_;
    if (ptr)
    {
      v12 = self->_headTrackingService.__ptr_;
      v13 = *(v12 + 3443);
      if (v13)
      {
        if (v13 > self->_lastCAFwdPredictorError.timestamp)
        {
          v14 = *(v12 + 6888);
          self->_lastCAFwdPredictorError.timestamp = v13;
          self->_lastCAFwdPredictorError.errorRad = v14;
          v15 = (v14 * 57.296);
          v16 = *(ptr + 241);
          if (v16 <= v15)
          {
            v16 = (v14 * 57.296);
          }

          *(ptr + 241) = v16;
          v17 = *(ptr + 240);
          if (v17 >= v15)
          {
            v17 = (v14 * 57.296);
          }

          *(ptr + 240) = v17;
          *(ptr + 242) = *(ptr + 242) + v15;
          ++*(ptr + 486);
        }
      }
    }

    v18 = v34;
    if (self->_logForReplay)
    {
      *&buf = v34;
      *(&buf + 1) = v31;
      v41 = v33;
      v42 = v35;
      v43 = v36;
      v44 = v32;
      sub_19B5E67E8(self->_logger.__ptr_, &buf);
    }

    objc_sync_exit(self);
    if (v18)
    {
      v19 = mach_absolute_time();
      v20 = v19 > v18 + 500000;
      p_trackingEstimatesStagnated = &self->_trackingEstimatesStagnated;
      trackingEstimatesStagnated = self->_trackingEstimatesStagnated;
      if (!trackingEstimatesStagnated && v19 > v18 + 500000)
      {
        *p_trackingEstimatesStagnated = 1;
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v23 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_ERROR, "[CMMediaSession] Tracking stalled, likely due to data gap > 0.5s", &buf, 2u);
        }

        v24 = sub_19B420058();
        if ((*(v24 + 160) & 0x80000000) != 0 && (*(v24 + 164) & 0x80000000) != 0 && (*(v24 + 168) & 0x80000000) != 0 && !*(v24 + 152))
        {
          goto LABEL_56;
        }

        bzero(&buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        LOWORD(v38) = 0;
        v25 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _feedPredictorEstimates]", "CoreLocation: %s\n", v25);
LABEL_54:
        if (v25 != &buf)
        {
          free(v25);
        }

LABEL_56:
        self->_lastStateTimestamp = v18;
        goto LABEL_57;
      }
    }

    else
    {
      v20 = 0;
      p_trackingEstimatesStagnated = &self->_trackingEstimatesStagnated;
      trackingEstimatesStagnated = self->_trackingEstimatesStagnated;
    }

    if (!trackingEstimatesStagnated || v20)
    {
      goto LABEL_56;
    }

    *p_trackingEstimatesStagnated = 0;
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v26 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v18 - self->_lastStateTimestamp;
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v27;
      _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Tracking stagnation ended. Gap from last estimate: %llu", &buf, 0xCu);
    }

    v28 = sub_19B420058();
    if (*(v28 + 160) <= 1 && *(v28 + 164) <= 1 && *(v28 + 168) <= 1 && !*(v28 + 152))
    {
      goto LABEL_56;
    }

    bzero(&buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v29 = v18 - self->_lastStateTimestamp;
    v38 = 134217984;
    v39 = v29;
    v25 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedPredictorEstimates]", "CoreLocation: %s\n", v25);
    goto LABEL_54;
  }

  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
  }

  v7 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEBUG, "[CMMediaSession] Ignoring _feedPredictorEstimates call that occurred after _stop was called.", &buf, 2u);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(&buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    LOWORD(v37[0]) = 0;
    v9 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedPredictorEstimates]", "CoreLocation: %s\n", v9);
    if (v9 != &buf)
    {
      free(v9);
    }
  }

LABEL_57:
  v30 = *MEMORY[0x1E69E9840];
}

- (void)_feedAccessoryInEarStatus:(const int *)a3
{
  v30 = *MEMORY[0x1E69E9840];
  if (self->_started)
  {
    if (!self->_inEarStatusGatingEnabled || *a3 == self->_inEarStatus)
    {
      goto LABEL_34;
    }

    objc_sync_enter(self);
    if (self->_logForReplay)
    {
      ptr = self->_logger.__ptr_;
      v6 = *a3;
      v7 = mach_continuous_time();
      v8 = sub_19B41E070(v7);
      sub_19B5E7BFC(ptr, v6, v8);
    }

    self->_inEarStatus = *a3;
    objc_sync_exit(self);
    sub_19B6D6344();
    v9 = sub_19B7851B0();
    if (sub_19B787CB8(v9))
    {
      if (self->_inEarStatus == 4)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v10 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Both buds are in ear. Resuming head tracking", buf, 2u);
        }

        v11 = sub_19B420058();
        if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v28 = 0;
          v12 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryInEarStatus:]", "CoreLocation: %s\n", v12);
          if (v12 != buf)
          {
            free(v12);
          }
        }

        v13 = sub_19B420D84();
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = sub_19B650A30;
        v27[3] = &unk_1E7532988;
        v27[4] = self;
        sub_19B420C9C(v13, v27);
      }

      else
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v20 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] One bud is out of ear. Pausing head tracking", buf, 2u);
        }

        v21 = sub_19B420058();
        if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
          }

          v28 = 0;
          v22 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryInEarStatus:]", "CoreLocation: %s\n", v22);
          if (v22 != buf)
          {
            free(v22);
          }
        }

        v23 = sub_19B420D84();
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = sub_19B650A38;
        v26[3] = &unk_1E7532988;
        v26[4] = self;
        sub_19B420C9C(v23, v26);
        objc_msgSend__notifyClientHandler(self, v24, v25);
      }

      goto LABEL_34;
    }

    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v18 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_ERROR, "[CMMediaSession] Ignore InEar status update because the connected device is not supported", buf, 2u);
    }

    v19 = sub_19B420058();
    if ((*(v19 + 160) & 0x80000000) == 0 || (*(v19 + 164) & 0x80000000) == 0 || (*(v19 + 168) & 0x80000000) == 0 || *(v19 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v28 = 0;
      v16 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _feedAccessoryInEarStatus:]", "CoreLocation: %s\n", v16);
LABEL_32:
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }

  else
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v14 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_DEBUG, "[CMMediaSession] Ignoring _feedAccessoryInEarStatus call that occurred after _stop was called.", buf, 2u);
    }

    v15 = sub_19B420058();
    if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v28 = 0;
      v16 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAccessoryInEarStatus:]", "CoreLocation: %s\n", v16);
      goto LABEL_32;
    }
  }

LABEL_34:
  v17 = *MEMORY[0x1E69E9840];
}

- (void)_feedAdaptiveLatencyJitterBufferLevel
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_started)
  {
    v3 = sub_19B420D84();
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_19B650C48;
    v8[3] = &unk_1E7532988;
    v8[4] = self;
    sub_19B420C9C(v3, v8);
  }

  else
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v4 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEBUG, "[CMMediaSession] Ignoring _feedAdaptiveLatencyJitterBufferLevel call that occurred after _stop was called.", buf, 2u);
    }

    v5 = sub_19B420058();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v9 = 0;
      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedAdaptiveLatencyJitterBufferLevel]", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_updateClientMode:(int64_t)a3
{
  v3 = a3;
  v21 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend__mapCMMediaSessionClientModeToRelDMClientMode_(self, a2, a3);
  if (self->_clientMode != v5)
  {
    if (self->_headTrackingService.__ptr_)
    {
      v6 = v5;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v7 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
      {
        clientMode = self->_clientMode;
        *buf = 67240448;
        v18 = clientMode;
        v19 = 1026;
        v20 = v3;
        _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_INFO, "[CMMediaSession] Changing clientMode from: %{public}d to %{public}d", buf, 0xEu);
      }

      v9 = sub_19B420058();
      if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v16 = self->_clientMode;
        v11 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _updateClientMode:]", "CoreLocation: %s\n", v11);
        if (v11 != buf)
        {
          free(v11);
        }
      }

      self->_clientMode = v6;
      objc_msgSend__disallowOpportunisticAnchorTrackingForFTClients_clientMode_(self, v10, self->_scheme, v6);
      objc_sync_enter(self);
      sub_19B6F5C84(self->_headTrackingService.__ptr_, self->_clientMode);
      if (self->_logForReplay)
      {
        sub_19B5E7E74(self->_logger.__ptr_, self->_clientMode);
      }

      objc_sync_exit(self);
    }

    else
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      }

      v12 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_ERROR, "[CMMediaSession] Called _feedTrackingBehavior before _headTrackingService was initialized. Not able to set client mode.", buf, 2u);
      }

      v13 = sub_19B420058();
      if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
        }

        v14 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMediaSession _updateClientMode:]", "CoreLocation: %s\n", v14);
        if (v14 != buf)
        {
          free(v14);
        }
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_updateTrackingScheme:(int64_t)a3
{
  if (!self->_hasUserDefaultTrackingScheme)
  {
    objc_msgSend__setTrackingSchemeInternal_(self, a2, a3);
  }
}

- (void)_feedScreenUnlockedEvent:(BOOL)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_started)
  {
    v3 = a3;
    ptr = self->_analyticsTracker.__ptr_;
    if (ptr && *(self->_headTrackingService.__ptr_ + 60) != a3)
    {
      if (a3)
      {
        if (*(ptr + 50) > 0.0)
        {
          sub_19B6A80D8(ptr + 50, &stru_1F0E3D7A0);
        }
      }

      else
      {
        sub_19B6A7EE8(ptr + 50, @"lockScreenDuration");
      }
    }

    *(self->_headTrackingService.__ptr_ + 60) = v3;
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v8 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240192;
      v13 = v3;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEFAULT, "[CMMediaSession] Screen state changed. isScreenUnlocked, %{public}d", buf, 8u);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 == -1)
      {
        goto LABEL_27;
      }

      goto LABEL_30;
    }
  }

  else
  {
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
    }

    v6 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEBUG, "[CMMediaSession] Ignoring _feedScreenUnlockedEvent call that occurred after _stop was called.", buf, 2u);
    }

    v7 = sub_19B420058();
    if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 == -1)
      {
LABEL_27:
        v10 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMediaSession _feedScreenUnlockedEvent:]", "CoreLocation: %s\n", v10);
        if (v10 != buf)
        {
          free(v10);
        }

        goto LABEL_29;
      }

LABEL_30:
      dispatch_once(&qword_1EAFE2998, &unk_1F0E292A0);
      goto LABEL_27;
    }
  }

LABEL_29:
  v11 = *MEMORY[0x1E69E9840];
}

- (AudioAccessorySample)_getLastAudioAccessorySample
{
  v3 = *&self[2].isIEDEnabled;
  *retstr->gyroBias = *&self[2].sourceTimestampToMachContinuous;
  *&retstr->sourceTimestampToMachContinuous = v3;
  *&retstr->isIEDEnabled = *&self[3].auxDM.quaternion.elements[2];
  v4 = *&self[2].quiescentMode;
  *&retstr->timestamp = *self[2].filteredAcceleration.elements;
  *retstr->filteredAcceleration.elements = v4;
  v5 = *self[2].gyroBias;
  *&retstr->quiescentMode = *&self[2].btcTimestamp;
  *&retstr->btcTimestamp = v5;
  v6 = *&self[2].auxDM.biasCovariance.elements[1];
  retstr->auxDM.quaternion = *self[2].auxDM.rotationRate.elements;
  *retstr->auxDM.rotationRate.elements = v6;
  v7 = *&self[2].timestamp;
  *&retstr->auxDM.biasCovariance.elements[1] = *&self[2].auxDM.userAcceleration.elements[2];
  *&retstr->auxDM.userAcceleration.elements[2] = v7;
  return self;
}

- (void)_logEvent:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_logForReplay)
  {
    objc_sync_enter(self);
    if (objc_msgSend_getCString_maxLength_encoding_(a3, v5, v8, 1024, 1))
    {
      sub_19B5E6D00(self->_logger.__ptr_, v8, v6);
    }

    objc_sync_exit(self);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_setFixedTransforms:(const CMOQuaternion *)a3
{
  ptr = self->_headTrackingService.__ptr_;
  v5 = ptr + 36864;
  sub_19B699EF8(ptr, a3);
  v6 = *(v5 + 110);
  if (v6)
  {
    *(v6 + 76) = *a3;
  }

  v7 = *(v5 + 113);
  if (v7)
  {
    *(v7 + 4968) = *a3;
  }
}

- (id).cxx_construct
{
  *(self + 92) = 0x3F80000000000000;
  *(self + 84) = 0;
  *(self + 8) = 0u;
  *(self + 24) = 0u;
  *(self + 40) = 0u;
  *(self + 17) = 0;
  *(self + 18) = 0;
  *(self + 19) = 0xA00000000;
  *(self + 30) = 0;
  *(self + 41) = 0;
  *(self + 84) = 0;
  *(self + 44) = 0;
  *(self + 45) = 0x3F80000000000000;
  *(self + 202) = 0;
  *(self + 78) = 0;
  *(self + 90) = 0;
  *(self + 197) = 0;
  *(self + 780) = 0;
  *(self + 198) = 1065353216;
  return self;
}

@end