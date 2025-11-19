@interface CameraConferenceSynchronizer
- (BOOL)shouldConferenceChangeCameraToCaptureSettings;
- (BOOL)shouldConferenceChangeCameraToPreviewSettings;
- (BOOL)shouldConferenceSendFirstRemoteFrameNotification;
- (CGSize)localPortraitAspectRatio;
- (CameraConferenceSynchronizer)init;
- (void)cameraSizeChangedTo:(CGSize)a3;
- (void)changeCameraToCaptureSettings:(double)a3 forced:(BOOL)a4;
- (void)dealloc;
- (void)notifyClientOfRemoteFrame:(double)a3;
- (void)reset;
- (void)scheduleCameraChangeToCaptureSettings:(id)a3;
- (void)scheduleCameraChangeToPreviewSettings;
- (void)scheduleFirstRemoteFrameNotification:(id)a3;
@end

@implementation CameraConferenceSynchronizer

- (BOOL)shouldConferenceChangeCameraToCaptureSettings
{
  v36 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v4 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      receivedRequestToChangeCamera = self->receivedRequestToChangeCamera;
      isConference720p = self->isConference720p;
      isConferenceOniPad = self->isConferenceOniPad;
      receivedFirstRemoteFrame = self->receivedFirstRemoteFrame;
      cameraHasChangedToCapture = self->cameraHasChangedToCapture;
      didSendFirstRemoteFrameNotification = self->didSendFirstRemoteFrameNotification;
      v18 = 136317186;
      v19 = v5;
      v20 = 2080;
      v21 = "[CameraConferenceSynchronizer shouldConferenceChangeCameraToCaptureSettings]";
      v22 = 1024;
      v23 = 47;
      v24 = 1024;
      v25 = receivedRequestToChangeCamera;
      v26 = 1024;
      v27 = isConference720p;
      v28 = 1024;
      v29 = isConferenceOniPad;
      v30 = 1024;
      v31 = receivedFirstRemoteFrame;
      v32 = 1024;
      v33 = cameraHasChangedToCapture;
      v34 = 1024;
      v35 = didSendFirstRemoteFrameNotification;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %d %d %d %d %d %d", &v18, 0x40u);
    }
  }

  if (self->receivedRequestToChangeCamera)
  {
    if (self->isConference720p)
    {
      v13 = self->isConferenceOniPad;
      v14 = v13 && self->didSendFirstRemoteFrameNotification || !v13;
    }

    else
    {
      v14 = self->didSendFirstRemoteFrameNotification != 0;
    }
  }

  else
  {
    v14 = 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315906;
      v19 = v15;
      v20 = 2080;
      v21 = "[CameraConferenceSynchronizer shouldConferenceChangeCameraToCaptureSettings]";
      v22 = 1024;
      v23 = 59;
      v24 = 1024;
      v25 = v14;
      _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d returning %d", &v18, 0x22u);
    }
  }

  return v14;
}

- (BOOL)shouldConferenceSendFirstRemoteFrameNotification
{
  v35 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v4 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      receivedRequestToChangeCamera = self->receivedRequestToChangeCamera;
      isConference720p = self->isConference720p;
      isConferenceOniPad = self->isConferenceOniPad;
      receivedFirstRemoteFrame = self->receivedFirstRemoteFrame;
      cameraHasChangedToCapture = self->cameraHasChangedToCapture;
      didSendFirstRemoteFrameNotification = self->didSendFirstRemoteFrameNotification;
      v17 = 136317186;
      v18 = v5;
      v19 = 2080;
      v20 = "[CameraConferenceSynchronizer shouldConferenceSendFirstRemoteFrameNotification]";
      v21 = 1024;
      v22 = 67;
      v23 = 1024;
      v24 = receivedRequestToChangeCamera;
      v25 = 1024;
      v26 = isConference720p;
      v27 = 1024;
      v28 = isConferenceOniPad;
      v29 = 1024;
      v30 = receivedFirstRemoteFrame;
      v31 = 1024;
      v32 = cameraHasChangedToCapture;
      v33 = 1024;
      v34 = didSendFirstRemoteFrameNotification;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %d %d %d %d %d %d", &v17, 0x40u);
    }
  }

  if (self->receivedFirstRemoteFrame)
  {
    v13 = !self->isConference720p || self->isConferenceOniPad || self->cameraHasChangedToCapture != 0;
  }

  else
  {
    v13 = 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315906;
      v18 = v14;
      v19 = 2080;
      v20 = "[CameraConferenceSynchronizer shouldConferenceSendFirstRemoteFrameNotification]";
      v21 = 1024;
      v22 = 79;
      v23 = 1024;
      v24 = v13;
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d returning %d", &v17, 0x22u);
    }
  }

  return v13;
}

- (BOOL)shouldConferenceChangeCameraToPreviewSettings
{
  v13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315906;
      v6 = v2;
      v7 = 2080;
      v8 = "[CameraConferenceSynchronizer shouldConferenceChangeCameraToPreviewSettings]";
      v9 = 1024;
      v10 = 91;
      v11 = 1024;
      v12 = 0;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d returning %d", &v5, 0x22u);
    }
  }

  return 0;
}

- (void)changeCameraToCaptureSettings:(double)a3 forced:(BOOL)a4
{
  v27 = *MEMORY[0x1E69E9840];
  if (!self->cameraHasChangedToCapture)
  {
    v4 = a4;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        captureRule = self->captureRule;
        if (captureRule)
        {
          v10 = [(NSString *)[(VCVideoRule *)captureRule description] UTF8String];
        }

        else
        {
          v10 = "<nil>";
        }

        *buf = 136316418;
        v16 = v7;
        v17 = 2080;
        v18 = "[CameraConferenceSynchronizer changeCameraToCaptureSettings:forced:]";
        v19 = 1024;
        v20 = 98;
        v21 = 2080;
        v22 = v10;
        v23 = 2048;
        v24 = a3;
        v25 = 1024;
        v26 = v4;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d scheduling camera change to %s in %g ms forced %d", buf, 0x36u);
      }
    }

    v11 = dispatch_time(0, (a3 * 1000000.0));
    global_queue = dispatch_get_global_queue(2, 0);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __69__CameraConferenceSynchronizer_changeCameraToCaptureSettings_forced___block_invoke;
    v13[3] = &unk_1E85F37A0;
    v13[4] = self;
    v14 = v4;
    dispatch_after(v11, global_queue, v13);
  }
}

uint64_t __69__CameraConferenceSynchronizer_changeCameraToCaptureSettings_forced___block_invoke(uint64_t a1)
{
  v2 = +[VCVideoCaptureServer VCVideoCaptureServerSingleton];
  v3 = [*(*(a1 + 32) + 24) iWidth];
  v4 = [*(*(a1 + 32) + 24) iHeight];
  [*(*(a1 + 32) + 24) fRate];
  v6 = *(a1 + 40);

  return [v2 setCaptureWidth:v3 height:v4 rate:v5 forced:v6];
}

- (void)notifyClientOfRemoteFrame:(double)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->remoteFrameNotificationBlock)
  {
    v4 = 0;
    atomic_compare_exchange_strong_explicit(&self->didSendFirstRemoteFrameNotification, &v4, 1u, memory_order_relaxed, memory_order_relaxed);
    if (!v4)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v10 = 136315906;
          v11 = v6;
          v12 = 2080;
          v13 = "[CameraConferenceSynchronizer notifyClientOfRemoteFrame:]";
          v14 = 1024;
          v15 = 114;
          v16 = 2048;
          v17 = a3;
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d scheduling remote frame notification in %g ms", &v10, 0x26u);
        }
      }

      v8 = dispatch_time(0, (a3 * 1000000.0));
      global_queue = dispatch_get_global_queue(2, 0);
      dispatch_after(v8, global_queue, self->remoteFrameNotificationBlock);
      _Block_release(self->remoteFrameNotificationBlock);
      self->remoteFrameNotificationBlock = 0;
    }
  }
}

- (CameraConferenceSynchronizer)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = CameraConferenceSynchronizer;
  v2 = [(CameraConferenceSynchronizer *)&v4 init];
  if (v2)
  {
    v2->captureRule = objc_alloc_init(VCVideoRule);
  }

  return v2;
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  captureRule = self->captureRule;
  if (captureRule)
  {
  }

  self->captureRule = 0;
  remoteFrameNotificationBlock = self->remoteFrameNotificationBlock;
  if (remoteFrameNotificationBlock)
  {
    _Block_release(remoteFrameNotificationBlock);
  }

  self->remoteFrameNotificationBlock = 0;
  didStopNotificationBlock = self->didStopNotificationBlock;
  if (didStopNotificationBlock)
  {
    _Block_release(didStopNotificationBlock);
  }

  self->didStopNotificationBlock = 0;
  v6.receiver = self;
  v6.super_class = CameraConferenceSynchronizer;
  [(CameraConferenceSynchronizer *)&v6 dealloc];
}

- (void)reset
{
  v12 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315650;
      v7 = v3;
      v8 = 2080;
      v9 = "[CameraConferenceSynchronizer reset]";
      v10 = 1024;
      v11 = 158;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ", &v6, 0x1Cu);
    }
  }

  self->cameraHasChangedToCapture = 0;
  *&self->isConference720p = 0;
  v5 = MEMORY[0x1E695F060];
  self->didSendFirstRemoteFrameNotification = 0;
  self->localPortraitAspectRatio = *v5;
}

- (void)cameraSizeChangedTo:(CGSize)a3
{
  height = a3.height;
  v14 = *MEMORY[0x1E69E9840];
  if (a3.width == [(VCVideoRule *)self->captureRule iWidth]&& height == [(VCVideoRule *)self->captureRule iHeight])
  {
    v5 = 0;
    atomic_compare_exchange_strong_explicit(&self->cameraHasChangedToCapture, &v5, 1u, memory_order_relaxed, memory_order_relaxed);
    if (!v5)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v8 = 136315650;
          v9 = v6;
          v10 = 2080;
          v11 = "[CameraConferenceSynchronizer cameraSizeChangedTo:]";
          v12 = 1024;
          v13 = 175;
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d done", &v8, 0x1Cu);
        }
      }

      if ([(CameraConferenceSynchronizer *)self shouldConferenceSendFirstRemoteFrameNotification])
      {
        [(CameraConferenceSynchronizer *)self notifyClientOfRemoteFrame:0.0];
      }
    }
  }
}

- (void)scheduleFirstRemoteFrameNotification:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315650;
        v10 = v5;
        v11 = 2080;
        v12 = "[CameraConferenceSynchronizer scheduleFirstRemoteFrameNotification:]";
        v13 = 1024;
        v14 = 188;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ", &v9, 0x1Cu);
      }
    }

    self->receivedFirstRemoteFrame = 1;
    remoteFrameNotificationBlock = self->remoteFrameNotificationBlock;
    if (remoteFrameNotificationBlock)
    {
      _Block_release(remoteFrameNotificationBlock);
    }

    self->remoteFrameNotificationBlock = _Block_copy(a3);
    if ([(CameraConferenceSynchronizer *)self shouldConferenceSendFirstRemoteFrameNotification])
    {
      [(CameraConferenceSynchronizer *)self notifyClientOfRemoteFrame:0.0];
    }

    if ([(CameraConferenceSynchronizer *)self shouldConferenceChangeCameraToCaptureSettings])
    {
      v8 = self->isConference720p && !self->isConferenceOniPad;
      [(CameraConferenceSynchronizer *)self changeCameraToCaptureSettings:v8 forced:0.0];
    }
  }
}

- (void)scheduleCameraChangeToPreviewSettings
{
  v10 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315650;
      v5 = v2;
      v6 = 2080;
      v7 = "[CameraConferenceSynchronizer scheduleCameraChangeToPreviewSettings]";
      v8 = 1024;
      v9 = 208;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d NoOps", &v4, 0x1Cu);
    }
  }
}

- (void)scheduleCameraChangeToCaptureSettings:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315650;
        v9 = v5;
        v10 = 2080;
        v11 = "[CameraConferenceSynchronizer scheduleCameraChangeToCaptureSettings:]";
        v12 = 1024;
        v13 = 216;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ", &v8, 0x1Cu);
      }
    }

    [(VCVideoRule *)self->captureRule setToVideoRule:a3];
    self->receivedRequestToChangeCamera = 1;
    v7 = [(VCVideoRule *)self->captureRule iWidth];
    self->isConference720p = [(VCVideoRule *)self->captureRule iHeight]* v7 == 921600;
    if ([(CameraConferenceSynchronizer *)self shouldConferenceSendFirstRemoteFrameNotification])
    {
      [(CameraConferenceSynchronizer *)self notifyClientOfRemoteFrame:0.0];
    }

    if ([(CameraConferenceSynchronizer *)self shouldConferenceChangeCameraToCaptureSettings])
    {
      [(CameraConferenceSynchronizer *)self changeCameraToCaptureSettings:1 forced:0.0];
    }
  }
}

- (CGSize)localPortraitAspectRatio
{
  width = self->localPortraitAspectRatio.width;
  height = self->localPortraitAspectRatio.height;
  result.height = height;
  result.width = width;
  return result;
}

@end