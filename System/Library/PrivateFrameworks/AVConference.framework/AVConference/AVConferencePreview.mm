@interface AVConferencePreview
+ (id)AVConferencePreviewSingleton;
- (AVConferencePreview)init;
- (AVConferencePreviewClientDelegate)delegate;
- (BOOL)isCameraZoomAvailable;
- (BOOL)isPreviewRunning;
- (BOOL)setRootPreviewLayer:(id)layer front:(BOOL)front;
- (double)currentZoomFactor;
- (double)maxZoomFactor;
- (id)localCameraUID;
- (id)localScreenAttributesForVideoAttributes:(id)attributes;
- (id)localVideoAttributes;
- (id)localVideoLayer:(BOOL)layer;
- (id)newXPCObjectForFenceHandle:(id *)handle forLayerHost:(id)host;
- (unsigned)localCamera;
- (void)applyTransform:(CATransform3D *)transform forLayer:(id)layer;
- (void)beginPIPToPreviewAnimation;
- (void)beginPreviewToPIPAnimation;
- (void)cameraCFramingAvailabilityDidChange:(BOOL)change;
- (void)cameraDidBecomeAvailableForUniqueID:(id)d;
- (void)cameraDidBecomeInterruptedForForUniqueID:(id)d reason:(int64_t)reason;
- (void)cameraZoomAvailabilityDidChange:(BOOL)change currentZoomFactor:(double)factor maxZoomFactor:(double)zoomFactor;
- (void)cleanupPreviewLayerHost:(id *)host;
- (void)connectLayer:(id)layer layerHost:(id)host withContextId:(unsigned int)id;
- (void)connectLayer:(id)layer withSlot:(unsigned int)slot;
- (void)createPreviewCALayerHostForRootLayer:(id)layer withContextId:(unsigned int)id front:(BOOL)front;
- (void)currentZoomFactor;
- (void)dealloc;
- (void)deregisterBlocksForDelegateNotifications;
- (void)didChangeLocalCameraUID:(id)d;
- (void)didChangeLocalScreenAttributes:(id)attributes;
- (void)didChangeLocalVideoAttributes:(id)attributes;
- (void)didDetectSensitiveContentWithAnalysis:(id)analysis;
- (void)didGetSnapshot:(id)snapshot;
- (void)didPausePreview;
- (void)didReceiveCommError;
- (void)didReceiveErrorFromCameraUniqueID:(id)d error:(id)error;
- (void)didStartPreview;
- (void)didStopPreview;
- (void)endPIPToPreviewAnimation;
- (void)endPreviewToPIPAnimation;
- (void)followSystemCameraDidChange:(BOOL)change;
- (void)getSnapshot;
- (void)isCameraZoomAvailable;
- (void)isPreviewRunning;
- (void)maxZoomFactor;
- (void)notifyCenterStageEnabled:(BOOL)enabled;
- (void)pausePreview;
- (void)registerBlocksForDelegateNotifications;
- (void)resetLayersAfterServerDisconnect;
- (void)resetLocalCameraAfterServerDisconnect;
- (void)restartPreview;
- (void)setBounds:(CGRect)bounds forLayerHost:(id)host;
- (void)setCameraZoomFactor:(double)factor;
- (void)setCameraZoomFactor:(double)factor withRate:(double)rate;
- (void)setCinematicFramingEnabled:(BOOL)enabled;
- (void)setDelegate:(id)delegate;
- (void)setFollowSystemCameraEnabled:(BOOL)enabled;
- (void)setLocalCamera:(unsigned int)camera;
- (void)setLocalCameraWithUID:(id)d;
- (void)setLocalScreenAttributes:(id)attributes;
- (void)setLocalVideoAttributes:(id)attributes;
- (void)setLocalVideoLayer:(id)layer front:(BOOL)front;
- (void)setLocalVideoLayerHost:(id)host front:(BOOL)front;
- (void)setMultiCamEnabled:(BOOL)enabled;
- (void)setMultiCamSubviewPosition:(CGRect)position;
- (void)startPreview;
- (void)startPreviewUnpausing:(BOOL)unpausing;
- (void)stopPreview;
@end

@implementation AVConferencePreview

- (AVConferencePreviewClientDelegate)delegate
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__34;
  v10 = __Block_byref_object_dispose__34;
  v11 = 0;
  avConferencePreviewNotificationQueue = self->avConferencePreviewNotificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__AVConferencePreview_delegate__block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(avConferencePreviewNotificationQueue, block);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __31__AVConferencePreview_delegate__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 96);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setDelegate:(id)delegate
{
  block[6] = *MEMORY[0x1E69E9840];
  avConferencePreviewNotificationQueue = self->avConferencePreviewNotificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__AVConferencePreview_setDelegate___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = delegate;
  dispatch_async(avConferencePreviewNotificationQueue, block);
}

void __35__AVConferencePreview_setDelegate___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];

  *(*(a1 + 32) + 96) = *(a1 + 40);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = *(*(a1 + 32) + 96);
      v8 = objc_opt_class();
      *buf = 136316674;
      v21 = v2;
      v22 = 2080;
      v23 = "[AVConferencePreview setDelegate:]_block_invoke";
      v24 = 1024;
      v25 = 156;
      v26 = 2048;
      *v27 = v4;
      *&v27[8] = 2112;
      *&v27[10] = v6;
      *&v27[18] = 2048;
      *&v27[20] = v7;
      v28 = 2112;
      v29 = NSStringFromClass(v8);
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d self=%p (%@), delegate=%p (%@)", buf, 0x44u);
    }
  }

  outCount = 0;
  v18 = protocol_copyMethodDescriptionList(&unk_1F582AB98, 0, 1, &outCount);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v21 = v9;
      v22 = 2080;
      v23 = "[AVConferencePreview setDelegate:]_block_invoke";
      v24 = 1024;
      v25 = 156;
      v26 = 1024;
      *v27 = outCount;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d Protocol AVConferencePreviewClientDelegate contains %u optional methods.", buf, 0x22u);
    }
  }

  if (outCount)
  {
    v11 = 0;
    p_name = &v18->name;
    do
    {
      v13 = NSStringFromSelector(*p_name);
      NSSelectorFromString(v13);
      v14 = objc_opt_respondsToSelector();
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          v17 = "does NOT respond";
          if (v14)
          {
            v17 = "responds";
          }

          v21 = v15;
          v22 = 2080;
          v23 = "[AVConferencePreview setDelegate:]_block_invoke";
          v24 = 1024;
          v25 = 156;
          v26 = 1024;
          *v27 = v11;
          *&v27[4] = 2080;
          *&v27[6] = v17;
          *&v27[14] = 2112;
          *&v27[16] = v13;
          _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d %u: Delegate %s to %@", buf, 0x36u);
        }
      }

      ++v11;
      p_name += 2;
    }

    while (v11 < outCount);
  }

  free(v18);
}

- (void)didStartPreview
{
  v3[5] = *MEMORY[0x1E69E9840];
  avConferencePreviewNotificationQueue = self->avConferencePreviewNotificationQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__AVConferencePreview_didStartPreview__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(avConferencePreviewNotificationQueue, v3);
  VCPacketFilterGetCMBaseObject("didStartPreview", 2);
}

uint64_t __38__AVConferencePreview_didStartPreview__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVConferencePreview-didStartPreview");
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 32);
        v6 = 136315906;
        v7 = v3;
        v8 = 2080;
        v9 = "[AVConferencePreview didStartPreview]_block_invoke";
        v10 = 1024;
        v11 = 167;
        v12 = 2048;
        v13 = v5;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d @:@ AVConferencePreview-didStartPreview (%p)", &v6, 0x26u);
      }
    }

    return [*(*(a1 + 32) + 96) didStartPreview];
  }

  return result;
}

- (void)didPausePreview
{
  v3[5] = *MEMORY[0x1E69E9840];
  avConferencePreviewNotificationQueue = self->avConferencePreviewNotificationQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__AVConferencePreview_didPausePreview__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(avConferencePreviewNotificationQueue, v3);
}

uint64_t __38__AVConferencePreview_didPausePreview__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVConferencePreview-didPausePreview");
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 32);
        v6 = 136315906;
        v7 = v3;
        v8 = 2080;
        v9 = "[AVConferencePreview didPausePreview]_block_invoke";
        v10 = 1024;
        v11 = 178;
        v12 = 2048;
        v13 = v5;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d @:@ AVConferencePreview-didPausePreview (%p)", &v6, 0x26u);
      }
    }

    return [*(*(a1 + 32) + 96) didPausePreview];
  }

  return result;
}

- (void)didStopPreview
{
  v3[5] = *MEMORY[0x1E69E9840];
  avConferencePreviewNotificationQueue = self->avConferencePreviewNotificationQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __37__AVConferencePreview_didStopPreview__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(avConferencePreviewNotificationQueue, v3);
  VCPacketFilterGetCMBaseObject("didStopPreview", 2);
}

uint64_t __37__AVConferencePreview_didStopPreview__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVConferencePreview-didStopPreview");
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 32);
        v6 = 136315906;
        v7 = v3;
        v8 = 2080;
        v9 = "[AVConferencePreview didStopPreview]_block_invoke";
        v10 = 1024;
        v11 = 187;
        v12 = 2048;
        v13 = v5;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d @:@ AVConferencePreview-didStopPreview (%p)", &v6, 0x26u);
      }
    }

    return [*(*(a1 + 32) + 96) didStopPreview];
  }

  return result;
}

- (void)didChangeLocalCameraUID:(id)d
{
  block[6] = *MEMORY[0x1E69E9840];
  avConferencePreviewNotificationQueue = self->avConferencePreviewNotificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__AVConferencePreview_didChangeLocalCameraUID___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = d;
  dispatch_async(avConferencePreviewNotificationQueue, block);
}

uint64_t __47__AVConferencePreview_didChangeLocalCameraUID___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 32);
        v6 = *(a1 + 40);
        v7 = 136316162;
        v8 = v3;
        v9 = 2080;
        v10 = "[AVConferencePreview didChangeLocalCameraUID:]_block_invoke";
        v11 = 1024;
        v12 = 217;
        v13 = 2048;
        v14 = v5;
        v15 = 2112;
        v16 = v6;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d self=[%p] cameraUID=%@", &v7, 0x30u);
      }
    }

    return [*(*(a1 + 32) + 96) didChangeLocalCameraUID:*(a1 + 40)];
  }

  return result;
}

- (void)didChangeLocalVideoAttributes:(id)attributes
{
  block[6] = *MEMORY[0x1E69E9840];
  avConferencePreviewNotificationQueue = self->avConferencePreviewNotificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__AVConferencePreview_didChangeLocalVideoAttributes___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = attributes;
  dispatch_async(avConferencePreviewNotificationQueue, block);
}

uint64_t __53__AVConferencePreview_didChangeLocalVideoAttributes___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 32);
        v6 = *(a1 + 40);
        v7 = 136316162;
        v8 = v3;
        v9 = 2080;
        v10 = "[AVConferencePreview didChangeLocalVideoAttributes:]_block_invoke";
        v11 = 1024;
        v12 = 226;
        v13 = 2048;
        v14 = v5;
        v15 = 2112;
        v16 = v6;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d (%p) videoAttributes=%@", &v7, 0x30u);
      }
    }

    return [*(*(a1 + 32) + 96) didChangeLocalVideoAttributes:*(a1 + 40)];
  }

  return result;
}

- (void)didChangeLocalScreenAttributes:(id)attributes
{
  block[6] = *MEMORY[0x1E69E9840];
  avConferencePreviewNotificationQueue = self->avConferencePreviewNotificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__AVConferencePreview_didChangeLocalScreenAttributes___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = attributes;
  dispatch_async(avConferencePreviewNotificationQueue, block);
}

uint64_t __54__AVConferencePreview_didChangeLocalScreenAttributes___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 32);
        v6 = *(a1 + 40);
        v7 = 136316162;
        v8 = v3;
        v9 = 2080;
        v10 = "[AVConferencePreview didChangeLocalScreenAttributes:]_block_invoke";
        v11 = 1024;
        v12 = 235;
        v13 = 2048;
        v14 = v5;
        v15 = 2112;
        v16 = v6;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d (%p) screenAttributes=%@", &v7, 0x30u);
      }
    }

    return [*(*(a1 + 32) + 96) didChangeLocalScreenAttributes:*(a1 + 40)];
  }

  return result;
}

- (void)didReceiveErrorFromCameraUniqueID:(id)d error:(id)error
{
  v5[7] = *MEMORY[0x1E69E9840];
  avConferencePreviewNotificationQueue = self->avConferencePreviewNotificationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__AVConferencePreview_didReceiveErrorFromCameraUniqueID_error___block_invoke;
  v5[3] = &unk_1E85F3E30;
  v5[4] = self;
  v5[5] = d;
  v5[6] = error;
  dispatch_async(avConferencePreviewNotificationQueue, v5);
}

uint64_t __63__AVConferencePreview_didReceiveErrorFromCameraUniqueID_error___block_invoke(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    v4 = MEMORY[0x1E6986650];
    if (ErrorLogLevelForModule >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        __63__AVConferencePreview_didReceiveErrorFromCameraUniqueID_error___block_invoke_cold_1();
      }
    }

    MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVConferencePreview-didReceiveErrorFromCamera");
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        v7 = a1[4];
        v8 = a1[5];
        v9 = a1[6];
        v10 = 136316418;
        v11 = v5;
        v12 = 2080;
        v13 = "[AVConferencePreview didReceiveErrorFromCameraUniqueID:error:]_block_invoke";
        v14 = 1024;
        v15 = 245;
        v16 = 2048;
        v17 = v7;
        v18 = 2112;
        v19 = v8;
        v20 = 2112;
        v21 = v9;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d @:@ AVConferencePreview-didReceiveErrorFromCamera (%p) cameraUID=%@, error=%@", &v10, 0x3Au);
      }
    }

    return [*(a1[4] + 96) didReceiveErrorFromCameraUniqueID:a1[5] error:a1[6]];
  }

  return result;
}

- (void)didReceiveCommError
{
  v3[5] = *MEMORY[0x1E69E9840];
  avConferencePreviewNotificationQueue = self->avConferencePreviewNotificationQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__AVConferencePreview_didReceiveCommError__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(avConferencePreviewNotificationQueue, v3);
}

uint64_t __42__AVConferencePreview_didReceiveCommError__block_invoke(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(*(a1 + 32) + 96);

    return [v3 didReceiveCommError];
  }

  return result;
}

- (void)didGetSnapshot:(id)snapshot
{
  block[6] = *MEMORY[0x1E69E9840];
  avConferencePreviewNotificationQueue = self->avConferencePreviewNotificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__AVConferencePreview_didGetSnapshot___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = snapshot;
  dispatch_async(avConferencePreviewNotificationQueue, block);
}

void __38__AVConferencePreview_didGetSnapshot___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_respondsToSelector();
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v2)
  {
    if (ErrorLogLevelForModule >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315906;
        v7 = v4;
        v8 = 2080;
        v9 = "[AVConferencePreview didGetSnapshot:]_block_invoke";
        v10 = 1024;
        v11 = 262;
        v12 = 2048;
        v13 = 8;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d size=%lu", &v6, 0x26u);
      }
    }

    [*(*(a1 + 32) + 96) didGetSnapshot:*(a1 + 40)];
  }

  else if (ErrorLogLevelForModule >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __38__AVConferencePreview_didGetSnapshot___block_invoke_cold_1();
    }
  }
}

- (void)cameraDidBecomeAvailableForUniqueID:(id)d
{
  block[6] = *MEMORY[0x1E69E9840];
  avConferencePreviewNotificationQueue = self->avConferencePreviewNotificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__AVConferencePreview_cameraDidBecomeAvailableForUniqueID___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = d;
  dispatch_async(avConferencePreviewNotificationQueue, block);
}

void __59__AVConferencePreview_cameraDidBecomeAvailableForUniqueID___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_respondsToSelector();
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v2)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = [*(a1 + 40) UTF8String];
        v7 = 136315906;
        v8 = v4;
        v9 = 2080;
        v10 = "[AVConferencePreview cameraDidBecomeAvailableForUniqueID:]_block_invoke";
        v11 = 1024;
        v12 = 273;
        v13 = 2080;
        v14 = v6;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d cameraUniqueID=%s", &v7, 0x26u);
      }
    }

    [*(*(a1 + 32) + 96) cameraDidBecomeAvailableForUniqueID:*(a1 + 40)];
  }

  else if (ErrorLogLevelForModule >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __59__AVConferencePreview_cameraDidBecomeAvailableForUniqueID___block_invoke_cold_1();
    }
  }
}

- (void)cameraDidBecomeInterruptedForForUniqueID:(id)d reason:(int64_t)reason
{
  v5[7] = *MEMORY[0x1E69E9840];
  avConferencePreviewNotificationQueue = self->avConferencePreviewNotificationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__AVConferencePreview_cameraDidBecomeInterruptedForForUniqueID_reason___block_invoke;
  v5[3] = &unk_1E85F50D8;
  v5[5] = self;
  v5[6] = reason;
  v5[4] = d;
  dispatch_async(avConferencePreviewNotificationQueue, v5);
}

void __71__AVConferencePreview_cameraDidBecomeInterruptedForForUniqueID_reason___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) UTF8String];
      v5 = *(a1 + 48);
      v6 = 136316162;
      v7 = v2;
      v8 = 2080;
      v9 = "[AVConferencePreview cameraDidBecomeInterruptedForForUniqueID:reason:]_block_invoke";
      v10 = 1024;
      v11 = 283;
      v12 = 2080;
      v13 = v4;
      v14 = 1024;
      v15 = v5;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d cameraUID=%s, reason=%d", &v6, 0x2Cu);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [*(*(a1 + 40) + 96) cameraDidBecomeInterruptedForForUniqueID:*(a1 + 32) reason:*(a1 + 48)];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __71__AVConferencePreview_cameraDidBecomeInterruptedForForUniqueID_reason___block_invoke_cold_1();
    }
  }
}

- (void)cameraZoomAvailabilityDidChange:(BOOL)change currentZoomFactor:(double)factor maxZoomFactor:(double)zoomFactor
{
  v8 = *MEMORY[0x1E69E9840];
  avConferencePreviewNotificationQueue = self->avConferencePreviewNotificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__AVConferencePreview_cameraZoomAvailabilityDidChange_currentZoomFactor_maxZoomFactor___block_invoke;
  block[3] = &unk_1E85F8FC8;
  changeCopy = change;
  block[4] = self;
  *&block[5] = factor;
  *&block[6] = zoomFactor;
  dispatch_async(avConferencePreviewNotificationQueue, block);
}

void __87__AVConferencePreview_cameraZoomAvailabilityDidChange_currentZoomFactor_maxZoomFactor___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 56);
      v7 = 136315906;
      v8 = v2;
      v9 = 2080;
      v10 = "[AVConferencePreview cameraZoomAvailabilityDidChange:currentZoomFactor:maxZoomFactor:]_block_invoke";
      v11 = 1024;
      v12 = 294;
      v13 = 1024;
      v14 = v4;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d zoomAvailabilty=%d", &v7, 0x22u);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [*(*(a1 + 32) + 96) cameraZoomAvailabilityDidChange:*(a1 + 56) currentZoomFactor:*(a1 + 40) maxZoomFactor:*(a1 + 48)];
  }

  else if (objc_opt_respondsToSelector())
  {
    [*(*(a1 + 32) + 96) cameraZoomAvailabilityDidChange:*(a1 + 56)];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315650;
      v8 = v5;
      v9 = 2080;
      v10 = "[AVConferencePreview cameraZoomAvailabilityDidChange:currentZoomFactor:maxZoomFactor:]_block_invoke";
      v11 = 1024;
      v12 = 300;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d Delegate does not respond to cameraZoomAvailabilityDidChange:", &v7, 0x1Cu);
    }
  }
}

- (void)cameraCFramingAvailabilityDidChange:(BOOL)change
{
  v6 = *MEMORY[0x1E69E9840];
  avConferencePreviewNotificationQueue = self->avConferencePreviewNotificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__AVConferencePreview_cameraCFramingAvailabilityDidChange___block_invoke;
  block[3] = &unk_1E85F37A0;
  changeCopy = change;
  block[4] = self;
  dispatch_async(avConferencePreviewNotificationQueue, block);
}

void __59__AVConferencePreview_cameraCFramingAvailabilityDidChange___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v7 = 136315906;
      v8 = v2;
      v9 = 2080;
      v10 = "[AVConferencePreview cameraCFramingAvailabilityDidChange:]_block_invoke";
      v11 = 1024;
      v12 = 308;
      v13 = 1024;
      v14 = v4;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d availability=%d", &v7, 0x22u);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [*(*(a1 + 32) + 96) cameraCinematicFramingAvailabilityDidChange:*(a1 + 40)];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315650;
      v8 = v5;
      v9 = 2080;
      v10 = "[AVConferencePreview cameraCFramingAvailabilityDidChange:]_block_invoke";
      v11 = 1024;
      v12 = 313;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d Delegate does not respond to cameraCinematicFramingAvailabilityDidChange:", &v7, 0x1Cu);
    }
  }
}

- (void)followSystemCameraDidChange:(BOOL)change
{
  v6 = *MEMORY[0x1E69E9840];
  avConferencePreviewNotificationQueue = self->avConferencePreviewNotificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__AVConferencePreview_followSystemCameraDidChange___block_invoke;
  block[3] = &unk_1E85F37A0;
  changeCopy = change;
  block[4] = self;
  dispatch_async(avConferencePreviewNotificationQueue, block);
}

void __51__AVConferencePreview_followSystemCameraDidChange___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v7 = 136315906;
      v8 = v2;
      v9 = 2080;
      v10 = "[AVConferencePreview followSystemCameraDidChange:]_block_invoke";
      v11 = 1024;
      v12 = 321;
      v13 = 1024;
      v14 = v4;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d enabled=%d", &v7, 0x22u);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [*(*(a1 + 32) + 96) followSystemCameraDidChange:*(a1 + 40)];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315650;
      v8 = v5;
      v9 = 2080;
      v10 = "[AVConferencePreview followSystemCameraDidChange:]_block_invoke";
      v11 = 1024;
      v12 = 325;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d Delegate does not respond to followSystemCameraDidChange:", &v7, 0x1Cu);
    }
  }
}

- (void)didDetectSensitiveContentWithAnalysis:(id)analysis
{
  block[6] = *MEMORY[0x1E69E9840];
  avConferencePreviewNotificationQueue = self->avConferencePreviewNotificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__AVConferencePreview_didDetectSensitiveContentWithAnalysis___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = analysis;
  dispatch_async(avConferencePreviewNotificationQueue, block);
}

void __61__AVConferencePreview_didDetectSensitiveContentWithAnalysis___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (objc_opt_respondsToSelector())
  {
    v2 = *(a1 + 40);
    v3 = *(*(a1 + 32) + 96);

    [v3 didDetectSensitiveContentWithAnalysis:v2];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315907;
      v7 = v4;
      v8 = 2080;
      v9 = "[AVConferencePreview didDetectSensitiveContentWithAnalysis:]_block_invoke";
      v10 = 1024;
      v11 = 335;
      v12 = 2081;
      v13 = "Delegate does not respond to didDetectSensitiveContentWithAnalysis:";
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d %{private}s", &v6, 0x26u);
    }
  }
}

- (void)applyTransform:(CATransform3D *)transform forLayer:(id)layer
{
  v17 = *MEMORY[0x1E69E9840];
  if (layer)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v4 = *&transform->m33;
    v13 = *&transform->m31;
    v14 = v4;
    v5 = *&transform->m43;
    v15 = *&transform->m41;
    v16 = v5;
    v6 = *&transform->m13;
    v9 = *&transform->m11;
    v10 = v6;
    v7 = *&transform->m23;
    v11 = *&transform->m21;
    v8[2] = __47__AVConferencePreview_applyTransform_forLayer___block_invoke;
    v8[3] = &unk_1E85F8FF0;
    v8[4] = layer;
    v12 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], v8);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [AVConferencePreview applyTransform:forLayer:];
    }
  }
}

uint64_t __47__AVConferencePreview_applyTransform_forLayer___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E6979518] begin];
  v2 = *(a1 + 32);
  v3 = *(a1 + 120);
  v8[4] = *(a1 + 104);
  v8[5] = v3;
  v4 = *(a1 + 152);
  v8[6] = *(a1 + 136);
  v8[7] = v4;
  v5 = *(a1 + 56);
  v8[0] = *(a1 + 40);
  v8[1] = v5;
  v6 = *(a1 + 88);
  v8[2] = *(a1 + 72);
  v8[3] = v6;
  [v2 setTransform:v8];
  return [MEMORY[0x1E6979518] commit];
}

- (void)connectLayer:(id)layer withSlot:(unsigned int)slot
{
  v23 = *MEMORY[0x1E69E9840];
  if (layer && slot)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __45__AVConferencePreview_connectLayer_withSlot___block_invoke;
    v11[3] = &unk_1E85F38B8;
    v11[4] = layer;
    slotCopy = slot;
    dispatch_async(MEMORY[0x1E69E96A0], v11);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        name = [layer name];
        *buf = 136316418;
        v14 = v6;
        v15 = 2080;
        v16 = "[AVConferencePreview connectLayer:withSlot:]";
        v17 = 1024;
        v18 = 370;
        v19 = 1024;
        *v20 = slot;
        *&v20[4] = 2048;
        *&v20[6] = layer;
        v21 = 2112;
        v22 = name;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d Connected slot %u to layer %p named %@", buf, 0x36u);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v14 = v9;
      v15 = 2080;
      v16 = "[AVConferencePreview connectLayer:withSlot:]";
      v17 = 1024;
      v18 = 358;
      v19 = 2048;
      *v20 = layer;
      *&v20[8] = 1024;
      *&v20[10] = slot;
      _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, "AVConferencePreview [%s] %s:%d Invalid layer or slot: layer=%p, slot=%u", buf, 0x2Cu);
    }
  }
}

uint64_t __45__AVConferencePreview_connectLayer_withSlot___block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] activateBackground:{objc_msgSend(MEMORY[0x1E696AF00], "isMainThread") ^ 1}];
  [*(a1 + 32) setContents:{objc_msgSend(MEMORY[0x1E6979320], "objectForSlot:", *(a1 + 40))}];
  v2 = MEMORY[0x1E6979518];

  return [v2 commit];
}

uint64_t __60__AVConferencePreview_connectLayer_layerHost_withContextId___block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [*(a1 + 32) setContextId:*(a1 + 40)];
  v2 = MEMORY[0x1E6979518];

  return [v2 commit];
}

- (void)resetLayersAfterServerDisconnect
{
  if (self->caLayerFront)
  {
    if (self->_caLayerHostFront)
    {
      [AVConferencePreview setLocalVideoLayerHost:"setLocalVideoLayerHost:front:" front:?];
    }

    else
    {
      [AVConferencePreview setLocalVideoLayer:"setLocalVideoLayer:front:" front:?];
    }
  }

  if (self->caLayerBack)
  {
    if (self->_caLayerHostBack)
    {

      [AVConferencePreview setLocalVideoLayerHost:"setLocalVideoLayerHost:front:" front:?];
    }

    else
    {

      [AVConferencePreview setLocalVideoLayer:"setLocalVideoLayer:front:" front:?];
    }
  }
}

- (void)restartPreview
{
  v3[5] = *MEMORY[0x1E69E9840];
  avConferencePreviewQueue = self->avConferencePreviewQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __37__AVConferencePreview_restartPreview__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(avConferencePreviewQueue, v3);
}

_BYTE *__37__AVConferencePreview_restartPreview__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_12;
    }

    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v5 = *(*(a1 + 32) + 16);
    v14 = 136315906;
    v15 = v3;
    v16 = 2080;
    v17 = "[AVConferencePreview restartPreview]_block_invoke";
    v18 = 1024;
    v19 = 414;
    v20 = 1024;
    LODWORD(v21) = v5;
    v6 = "AVConferencePreview [%s] %s:%d clientWantsPreview=%{BOOL}d";
    v7 = v4;
    v8 = 34;
    goto LABEL_11;
  }

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
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = *(v11 + 16);
      v14 = 136316418;
      v15 = v9;
      v16 = 2080;
      v17 = "[AVConferencePreview restartPreview]_block_invoke";
      v18 = 1024;
      v19 = 414;
      v20 = 2112;
      v21 = v2;
      v22 = 2048;
      v23 = v11;
      v24 = 1024;
      v25 = v12;
      v6 = "AVConferencePreview [%s] %s:%d %@(%p) clientWantsPreview=%{BOOL}d";
      v7 = v10;
      v8 = 54;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, &v14, v8);
    }
  }

LABEL_12:
  result = *(a1 + 32);
  if (result[16] == 1)
  {
    return [result startPreview];
  }

  return result;
}

- (void)registerBlocksForDelegateNotifications
{
  v20[5] = *MEMORY[0x1E69E9840];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke;
  v20[3] = &unk_1E85F3AD8;
  v20[4] = self;
  [(AVConferenceXPCClient *)self->connection registerBlockForService:"previewDidReceiveFirstFrame" block:v20];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_84;
  v19[3] = &unk_1E85F3AD8;
  v19[4] = self;
  [(AVConferenceXPCClient *)self->connection registerBlockForService:"previewCameraUIDChanged" block:v19 queue:self->avConferencePreviewQueue];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_86;
  v18[3] = &unk_1E85F3AD8;
  v18[4] = self;
  [(AVConferenceXPCClient *)self->connection registerBlockForService:"previewDidStart" block:v18 queue:self->avConferencePreviewQueue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_91;
  v17[3] = &unk_1E85F3AD8;
  v17[4] = self;
  [(AVConferenceXPCClient *)self->connection registerBlockForService:"previewDidPause" block:v17 queue:self->avConferencePreviewQueue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_93;
  v16[3] = &unk_1E85F3AD8;
  v16[4] = self;
  [(AVConferenceXPCClient *)self->connection registerBlockForService:"previewDidStop" block:v16 queue:self->avConferencePreviewQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_95;
  v15[3] = &unk_1E85F3AD8;
  v15[4] = self;
  [(AVConferenceXPCClient *)self->connection registerBlockForService:"previewDidGetSnapShot" block:v15 queue:self->avConferencePreviewQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_2;
  v14[3] = &unk_1E85F3AD8;
  v14[4] = self;
  [(AVConferenceXPCClient *)self->connection registerBlockForService:"previewDidLocalVideoAttributesChange" block:v14 queue:self->avConferencePreviewQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_3;
  v13[3] = &unk_1E85F3AD8;
  v13[4] = self;
  [(AVConferenceXPCClient *)self->connection registerBlockForService:"previewDidLocalScreenAttributesChange" block:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_4;
  v12[3] = &unk_1E85F3AD8;
  v12[4] = self;
  [(AVConferenceXPCClient *)self->connection registerBlockForService:"previewDidReceiveCameraError" block:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_5;
  v11[3] = &unk_1E85F3AD8;
  v11[4] = self;
  [(AVConferenceXPCClient *)self->connection registerBlockForService:"previewDidLocalVideoSlotChange" block:v11 queue:self->avConferencePreviewQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_114;
  v10[3] = &unk_1E85F3AD8;
  v10[4] = self;
  [(AVConferenceXPCClient *)self->connection registerBlockForService:"previewDidLocalVideoContextChange" block:v10 queue:self->avConferencePreviewQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_119;
  v9[3] = &unk_1E85F3AD8;
  v9[4] = self;
  [(AVConferenceXPCClient *)self->connection registerBlockForService:"previewCameraDidBecomeAvailable" block:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_2_121;
  v8[3] = &unk_1E85F3AD8;
  v8[4] = self;
  [(AVConferenceXPCClient *)self->connection registerBlockForService:"previewCameraDidBecomeInterrupted" block:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_3_126;
  v7[3] = &unk_1E85F3AD8;
  v7[4] = self;
  [(AVConferenceXPCClient *)self->connection registerBlockForService:"previewCameraZoomAvailablilty" block:v7 queue:self->avConferencePreviewQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_4_134;
  v6[3] = &unk_1E85F3AD8;
  v6[4] = self;
  [(AVConferenceXPCClient *)self->connection registerBlockForService:"previewCameraCinematicFramingAvailablilty" block:v6 queue:self->avConferencePreviewQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_5_139;
  v5[3] = &unk_1E85F3AD8;
  v5[4] = self;
  [(AVConferenceXPCClient *)self->connection registerBlockForService:"updatePreviewState" block:v5 queue:self->avConferencePreviewQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_144;
  v4[3] = &unk_1E85F3AD8;
  v4[4] = self;
  [(AVConferenceXPCClient *)self->connection registerBlockForService:"previewFollowSystemCameraDidChange" block:v4 queue:self->avConferencePreviewQueue];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_2_149;
  v3[3] = &unk_1E85F3AD8;
  v3[4] = self;
  [(AVConferenceXPCClient *)self->connection registerBlockForService:"previewDidDetectSensitiveContent" block:v3 queue:self->avConferencePreviewQueue];
}

void __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if ([a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    [*(a1 + 32) didReceiveCommError];
    [*(a1 + 32) didStopPreview];
    LODWORD(v6) = ++*(*(a1 + 32) + 20);
    if (v6 + v6 > 10.0)
    {
      v7 = 10.0;
    }

    else
    {
      v7 = 2.0;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(*(a1 + 32) + 20);
        *buf = 136316162;
        *&buf[4] = v8;
        *&buf[12] = 2080;
        *&buf[14] = "[AVConferencePreview registerBlocksForDelegateNotifications]_block_invoke";
        *&buf[22] = 1024;
        LODWORD(v18) = 432;
        WORD2(v18) = 2048;
        *(&v18 + 6) = v7;
        HIWORD(v18) = 1024;
        LODWORD(v19) = v10;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d previewDidReceiveFirstFrame: Retrying connection to server in %g seconds, connection attempts %u", buf, 0x2Cu);
      }
    }

    v11 = dispatch_time(0, (v7 * 1000000000.0));
    current_queue = dispatch_get_current_queue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_70;
    block[3] = &unk_1E85F3778;
    block[4] = *(a1 + 32);
    dispatch_after(v11, current_queue, block);
  }

  else if (!a3)
  {
    *(*(a1 + 32) + 20) = 0;
    v13 = [a2 objectForKeyedSubscript:@"localCameraUIDString"];
    v14 = *(a1 + 32);
    if (v14)
    {
      v15 = *(v14 + 112);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = ___AVConferencePreview_DidReceiveFirstPreviewFrameFromCamera_block_invoke;
      *&v18 = &unk_1E85F37F0;
      *(&v18 + 1) = v13;
      v19 = v14;
      dispatch_async(v15, buf);
    }

    else
    {
      __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_cold_1();
    }
  }
}

void __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_70(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v10 = v2;
      v11 = 2080;
      v12 = "[AVConferencePreview registerBlocksForDelegateNotifications]_block_invoke";
      v13 = 1024;
      v14 = 441;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d previewDidReceiveFirstFrame: Sending re-connect message to server", buf, 0x1Cu);
    }
  }

  v4 = objc_alloc(MEMORY[0x1E695DF20]);
  v5 = [v4 initWithObjectsAndKeys:{MEMORY[0x1E695E118], @"CACHEAUTHTOKEN", 0}];
  v6 = [*(*(a1 + 32) + 8) sendMessageSync:"previewInitialize" arguments:v5];
  if (![v6 objectForKeyedSubscript:@"TIMEOUT"] && !objc_msgSend(v6, "objectForKeyedSubscript:", @"SERVERDIED"))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v10 = v7;
        v11 = 2080;
        v12 = "[AVConferencePreview registerBlocksForDelegateNotifications]_block_invoke";
        v13 = 1024;
        v14 = 448;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d previewDidReceiveFirstFrame: Connected to server", buf, 0x1Cu);
      }
    }

    [*(a1 + 32) resetLayersAfterServerDisconnect];
    [*(a1 + 32) resetLocalCameraAfterServerDisconnect];
    [*(a1 + 32) restartPreview];
  }
}

void __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_84(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!(a3 | [a2 objectForKeyedSubscript:@"SERVERDIED"]))
  {
    v5 = [a2 objectForKeyedSubscript:@"localCameraUIDString"];
    if (v5)
    {
      v6 = v5;

      *(*(a1 + 32) + 144) = v6;
      [*(a1 + 32) didChangeLocalCameraUID:*(*(a1 + 32) + 144)];
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(*(a1 + 32) + 144);
          v10 = 136315906;
          v11 = v7;
          v12 = 2080;
          v13 = "[AVConferencePreview registerBlocksForDelegateNotifications]_block_invoke";
          v14 = 1024;
          v15 = 479;
          v16 = 2112;
          v17 = v9;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d previewCameraUIDChanged: cameraUID = %@", &v10, 0x26u);
        }
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_84_cold_1();
      }
    }
  }
}

uint64_t __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_86(uint64_t a1, void *a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  result = [a2 objectForKeyedSubscript:@"SERVERDIED"];
  if (!(a3 | result))
  {
    v7 = [a2 objectForKeyedSubscript:@"videoSlotNumber"];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    v9 = MEMORY[0x1E6986650];
    if (ErrorLogLevelForModule >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(*(a1 + 32) + 24);
        v16 = 136316162;
        v17 = v10;
        v18 = 2080;
        v19 = "[AVConferencePreview registerBlocksForDelegateNotifications]_block_invoke";
        v20 = 1024;
        v21 = 493;
        v22 = 2112;
        v23 = v7;
        v24 = 2048;
        v25 = v12;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d previewDidStart: connect layer to preview slot %@ for layer %p", &v16, 0x30u);
      }
    }

    if (v7)
    {
      [*(a1 + 32) connectLayer:*(*(a1 + 32) + 24) withSlot:{objc_msgSend(v7, "unsignedIntValue")}];
    }

    *(*(a1 + 32) + 120) = 1;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(*(a1 + 32) + 120);
        v16 = 136315906;
        v17 = v13;
        v18 = 2080;
        v19 = "[AVConferencePreview registerBlocksForDelegateNotifications]_block_invoke";
        v20 = 1024;
        v21 = 499;
        v22 = 1024;
        LODWORD(v23) = v15;
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d previewDidStart: _isPreviewRunning=%d", &v16, 0x22u);
      }
    }

    return [*(a1 + 32) didStartPreview];
  }

  return result;
}

uint64_t __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_91(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  result = [a2 objectForKeyedSubscript:@"SERVERDIED"];
  if (!(a3 | result))
  {
    *(*(a1 + 32) + 120) = 0;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(*(a1 + 32) + 120);
        v9 = 136315906;
        v10 = v6;
        v11 = 2080;
        v12 = "[AVConferencePreview registerBlocksForDelegateNotifications]_block_invoke";
        v13 = 1024;
        v14 = 509;
        v15 = 1024;
        v16 = v8;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d previewDidPause: _isPreviewRunning=%d", &v9, 0x22u);
      }
    }

    return [*(a1 + 32) didPausePreview];
  }

  return result;
}

uint64_t __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_93(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  result = [a2 objectForKeyedSubscript:@"SERVERDIED"];
  if (!(a3 | result))
  {
    *(*(a1 + 32) + 120) = 0;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(*(a1 + 32) + 120);
        v9 = 136315906;
        v10 = v6;
        v11 = 2080;
        v12 = "[AVConferencePreview registerBlocksForDelegateNotifications]_block_invoke";
        v13 = 1024;
        v14 = 519;
        v15 = 1024;
        v16 = v8;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d previewDidStop: _isPreviewRunning=%d", &v9, 0x22u);
      }
    }

    return [*(a1 + 32) didStopPreview];
  }

  return result;
}

uint64_t __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_95(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 objectForKeyedSubscript:@"SERVERDIED"];
  if (!(a3 | result))
  {
    v7 = [a2 objectForKeyedSubscript:@"snapShotFrame"];
    v8 = *(a1 + 32);

    return [v8 didGetSnapshot:v7];
  }

  return result;
}

void __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  if (!(a3 | [a2 objectForKeyedSubscript:@"SERVERDIED"]))
  {
    v6 = -[VideoAttributes initWithEncodedDictionary:]([VideoAttributes alloc], "initWithEncodedDictionary:", [a2 objectForKeyedSubscript:@"localVideoAttributes"]);
    v5 = *(*(a1 + 32) + 56);
    *(*(a1 + 32) + 56) = v6;

    [*(a1 + 32) didChangeLocalVideoAttributes:v6];
  }
}

void __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  if (!(a3 | [a2 objectForKeyedSubscript:@"SERVERDIED"]))
  {
    v5 = -[VideoAttributes initWithEncodedDictionary:]([VideoAttributes alloc], "initWithEncodedDictionary:", [a2 objectForKeyedSubscript:@"localVideoAttributes"]);
    [*(a1 + 32) didChangeLocalScreenAttributes:v5];
  }
}

void __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  if (!(a3 | [a2 objectForKeyedSubscript:@"SERVERDIED"]))
  {
    v5 = [a2 objectForKeyedSubscript:@"localCameraUIDString"];
    v6 = [*(*(a1 + 32) + 8) newNSErrorFromNSDictionary:{objc_msgSend(a2, "objectForKeyedSubscript:", @"conferenceError"}];
    [*(a1 + 32) didReceiveErrorFromCameraUniqueID:v5 error:v6];
  }
}

void __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a3 | [a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_5_cold_2();
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v5 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v18 = *(a1 + 32);
          v19 = 136316162;
          v20 = v16;
          v21 = 2080;
          v22 = "[AVConferencePreview registerBlocksForDelegateNotifications]_block_invoke";
          v23 = 1024;
          v24 = 580;
          v25 = 2112;
          *v26 = v5;
          *&v26[8] = 2048;
          *&v26[10] = v18;
          _os_log_error_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_ERROR, "AVConferencePreview [%s] %s:%d %@(%p) previewDidLocalVideoSlotChange failed", &v19, 0x30u);
        }
      }
    }
  }

  else
  {
    v6 = [a2 objectForKeyedSubscript:@"videoSlotNumber"];
    v7 = [a2 objectForKeyedSubscript:@"videoSlotFacing"];
    v8 = [v7 BOOLValue];
    v9 = 32;
    if (v8)
    {
      v9 = 24;
    }

    v10 = *(*(a1 + 32) + v9);
    if (v10)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v19 = 136316418;
          v20 = v11;
          v21 = 2080;
          v22 = "[AVConferencePreview registerBlocksForDelegateNotifications]_block_invoke";
          v23 = 1024;
          v24 = 587;
          v25 = 1024;
          *v26 = [v6 intValue];
          *&v26[4] = 2048;
          *&v26[6] = v10;
          *&v26[14] = 1024;
          *&v26[16] = [v7 BOOLValue];
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d previewDidLocalVideoSlotChange: Received slot %u for layer %p facing %d", &v19, 0x32u);
        }
      }

      v13 = [v7 BOOLValue];
      v14 = *(a1 + 32);
      v15 = 48;
      if (v13)
      {
        v15 = 40;
      }

      if (*&v14[v15])
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_5_cold_1();
          }
        }
      }

      else
      {
        [v14 connectLayer:v10 withSlot:{objc_msgSend(v6, "unsignedIntValue")}];
      }
    }
  }
}

void __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_114(uint64_t a1, void *a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a3 | [a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_114_cold_2();
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v5 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v19 = *(a1 + 32);
          v20 = 136316162;
          v21 = v17;
          v22 = 2080;
          v23 = "[AVConferencePreview registerBlocksForDelegateNotifications]_block_invoke";
          v24 = 1024;
          v25 = 601;
          v26 = 2112;
          *v27 = v5;
          *&v27[8] = 2048;
          *&v27[10] = v19;
          _os_log_error_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_ERROR, "AVConferencePreview [%s] %s:%d %@(%p) previewDidLocalVideoContextChange failed", &v20, 0x30u);
        }
      }
    }
  }

  else
  {
    v6 = [a2 objectForKeyedSubscript:@"videoContextId"];
    v7 = [a2 objectForKeyedSubscript:@"videoSlotFacing"];
    v8 = [v7 BOOLValue];
    v9 = 32;
    if (v8)
    {
      v9 = 24;
    }

    v10 = *(*(a1 + 32) + v9);
    if (v10)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v20 = 136316418;
          v21 = v11;
          v22 = 2080;
          v23 = "[AVConferencePreview registerBlocksForDelegateNotifications]_block_invoke";
          v24 = 1024;
          v25 = 608;
          v26 = 1024;
          *v27 = [v6 intValue];
          *&v27[4] = 2048;
          *&v27[6] = v10;
          *&v27[14] = 1024;
          *&v27[16] = [v7 BOOLValue];
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d previewDidLocalVideoContextChange: Received context %u for layer %p facing %d", &v20, 0x32u);
        }
      }

      v13 = [v7 BOOLValue];
      v14 = *(a1 + 32);
      v15 = 48;
      if (v13)
      {
        v15 = 40;
      }

      v16 = *&v14[v15];
      if (v16)
      {
        [v14 connectLayer:v10 layerHost:v16 withContextId:{objc_msgSend(v6, "unsignedIntValue")}];
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_114_cold_1();
        }
      }
    }
  }
}

uint64_t __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_119(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 objectForKeyedSubscript:@"SERVERDIED"];
  if (!(a3 | result))
  {
    [*(a1 + 32) cameraDidBecomeAvailableForUniqueID:{objc_msgSend(a2, "objectForKeyedSubscript:", @"localCameraUIDString"}];
    v7 = *(a1 + 32);

    return [v7 restartPreview];
  }

  return result;
}

uint64_t __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_2_121(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 objectForKeyedSubscript:@"SERVERDIED"];
  if (!(a3 | result))
  {
    v7 = [a2 objectForKeyedSubscript:@"localCameraUIDString"];
    v8 = [objc_msgSend(a2 objectForKeyedSubscript:{@"previewInterruptionReason", "integerValue"}];
    v9 = *(a1 + 32);

    return [v9 cameraDidBecomeInterruptedForForUniqueID:v7 reason:v8];
  }

  return result;
}

uint64_t __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_3_126(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 objectForKeyedSubscript:@"SERVERDIED"];
  if (!(a3 | result))
  {
    *(*(a1 + 32) + 121) = [objc_msgSend(a2 objectForKeyedSubscript:{@"previewCameraZoomAvailabilty", "BOOLValue"}];
    [objc_msgSend(a2 objectForKeyedSubscript:{@"previewCameraZoomMaxFactor", "floatValue"}];
    *(*(a1 + 32) + 128) = v7;
    [objc_msgSend(a2 objectForKeyedSubscript:{@"previewCameraZoomMaxFactor", "floatValue"}];
    *(*(a1 + 32) + 136) = v8;
    v9 = *(a1 + 32);
    v10 = *(v9 + 121);
    v11 = *(v9 + 128);
    v12 = *(v9 + 136);

    return [v9 cameraZoomAvailabilityDidChange:v10 currentZoomFactor:v11 maxZoomFactor:v12];
  }

  return result;
}

uint64_t __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_4_134(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 objectForKeyedSubscript:@"SERVERDIED"];
  if (!(a3 | result))
  {
    *(*(a1 + 32) + 122) = [objc_msgSend(a2 objectForKeyedSubscript:{@"previewCameraCinematicFraming", "intValue"}] != 0;
    v7 = *(a1 + 32);
    v8 = v7[122];

    return [v7 cameraCFramingAvailabilityDidChange:v8];
  }

  return result;
}

void __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_5_139(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!(a3 | [a2 objectForKeyedSubscript:@"SERVERDIED"]))
  {
    *(*(a1 + 32) + 120) = [objc_msgSend(a2 objectForKeyedSubscript:{@"previewState", "BOOLValue"}];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(*(a1 + 32) + 120);
        v8 = 136315906;
        v9 = v5;
        v10 = 2080;
        v11 = "[AVConferencePreview registerBlocksForDelegateNotifications]_block_invoke_5";
        v12 = 1024;
        v13 = 663;
        v14 = 1024;
        v15 = v7;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d updatePreviewState: _isPreviewRunning=%d", &v8, 0x22u);
      }
    }
  }
}

uint64_t __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_144(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 objectForKeyedSubscript:@"SERVERDIED"];
  if (!(a3 | result))
  {
    v7 = [objc_msgSend(a2 objectForKeyedSubscript:{@"previewFollowSystemCamera", "BOOLValue"}];
    v8 = *(a1 + 32);

    return [v8 followSystemCameraDidChange:v7];
  }

  return result;
}

uint64_t __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_2_149(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  result = [a2 objectForKeyedSubscript:@"SERVERDIED"];
  if (!(a3 | result))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315907;
        v10 = v7;
        v11 = 2080;
        v12 = "[AVConferencePreview registerBlocksForDelegateNotifications]_block_invoke_2";
        v13 = 1024;
        v14 = 680;
        v15 = 2081;
        v16 = "AVConferencePreview callback: didDetectSensitiveContent";
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d %{private}s", &v9, 0x26u);
      }
    }

    return [*(a1 + 32) didDetectSensitiveContentWithAnalysis:{objc_msgSend(a2, "objectForKeyedSubscript:", @"previewSensitivityAnalysis"}];
  }

  return result;
}

- (void)deregisterBlocksForDelegateNotifications
{
  [(AVConferenceXPCClient *)self->connection deregisterFromService:"previewDidReceiveFirstFrame"];
  [(AVConferenceXPCClient *)self->connection deregisterFromService:"previewCameraUIDChanged"];
  [(AVConferenceXPCClient *)self->connection deregisterFromService:"previewDidStart"];
  [(AVConferenceXPCClient *)self->connection deregisterFromService:"previewDidPause"];
  [(AVConferenceXPCClient *)self->connection deregisterFromService:"previewDidStop"];
  [(AVConferenceXPCClient *)self->connection deregisterFromService:"previewDidGetSnapShot"];
  [(AVConferenceXPCClient *)self->connection deregisterFromService:"previewDidLocalVideoAttributesChange"];
  [(AVConferenceXPCClient *)self->connection deregisterFromService:"previewDidLocalScreenAttributesChange"];
  [(AVConferenceXPCClient *)self->connection deregisterFromService:"previewDidReceiveCameraError"];
  [(AVConferenceXPCClient *)self->connection deregisterFromService:"previewDidLocalVideoSlotChange"];
  [(AVConferenceXPCClient *)self->connection deregisterFromService:"previewCameraDidBecomeAvailable"];
  [(AVConferenceXPCClient *)self->connection deregisterFromService:"previewCameraDidBecomeInterrupted"];
  [(AVConferenceXPCClient *)self->connection deregisterFromService:"previewCameraZoomAvailablilty"];
  [(AVConferenceXPCClient *)self->connection deregisterFromService:"previewCameraCinematicFramingAvailablilty"];
  [(AVConferenceXPCClient *)self->connection deregisterFromService:"updatePreviewState"];
  [(AVConferenceXPCClient *)self->connection deregisterFromService:"previewFollowSystemCameraDidChange"];
  [(AVConferenceXPCClient *)self->connection deregisterFromService:"previewDidLocalVideoContextChange"];
  connection = self->connection;

  [(AVConferenceXPCClient *)connection deregisterFromService:"previewDidDetectSensitiveContent"];
}

+ (id)AVConferencePreviewSingleton
{
  v3 = objc_opt_class();
  objc_sync_enter(v3);
  if (!_avConferencePreviewSingleton)
  {
    _avConferencePreviewSingleton = objc_alloc_init(self);
  }

  objc_sync_exit(v3);
  return _avConferencePreviewSingleton;
}

- (AVConferencePreview)init
{
  v30 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = AVConferencePreview;
  v2 = [(AVConferencePreview *)&v21 init];
  if (v2)
  {
    VRTraceReset();
    v2->clientWantsPreview = 0;
    v2->connectionAttempts = 0;
    v2->connection = +[AVConferenceXPCClient AVConferenceXPCClientSingleton];
    v2->caLayerFront = 0;
    v2->caLayerBack = 0;
    [(AVConferencePreview *)v2 cleanupPreviewLayerHost:&v2->_caLayerHostFront];
    [(AVConferencePreview *)v2 cleanupPreviewLayerHost:&v2->_caLayerHostBack];
    v2->_localVideoAttributes = 0;
    v2->localScreenPortraitAspectRatio = xmmword_1DBD4F740;
    v2->localScreenLandscapeAspectRatio = xmmword_1DBD4F750;
    v2->delegate = 0;
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
    v2->avConferencePreviewQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.camera", 0, CustomRootQueue);
    v4 = VCDispatchQueue_GetCustomRootQueue(37);
    v2->avConferencePreviewNotificationQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.camera.notification", 0, v4);
    v5 = objc_alloc(MEMORY[0x1E695DF20]);
    v6 = [v5 initWithObjectsAndKeys:{MEMORY[0x1E695E118], @"CACHEAUTHTOKEN", 0}];
    v7 = [(AVConferenceXPCClient *)v2->connection sendMessageSync:"previewInitialize" arguments:v6];
    if ([v7 objectForKeyedSubscript:@"localVideoAttributes"])
    {
      v8 = -[VideoAttributes initWithEncodedDictionary:]([VideoAttributes alloc], "initWithEncodedDictionary:", [v7 objectForKeyedSubscript:@"localVideoAttributes"]);
    }

    else
    {
      v8 = objc_alloc_init(VideoAttributes);
    }

    v2->_localVideoAttributes = v8;
    v2->_isPreviewRunning = [objc_msgSend(v7 objectForKeyedSubscript:{@"previewState", "BOOLValue"}];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    v10 = MEMORY[0x1E6986650];
    if (ErrorLogLevelForModule >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
      {
        isPreviewRunning = v2->_isPreviewRunning;
        *buf = 136315906;
        v23 = v11;
        v24 = 2080;
        v25 = "[AVConferencePreview init]";
        v26 = 1024;
        v27 = 761;
        v28 = 1024;
        LODWORD(v29) = isPreviewRunning;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d _isPreviewRunning=%d", buf, 0x22u);
      }
    }

    v2->_localCameraUID = [v7 objectForKeyedSubscript:@"localCameraUIDString"];

    [(AVConferencePreview *)v2 registerBlocksForDelegateNotifications];
    if (VRTraceGetErrorLogLevelForModule() > 6)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v23 = v14;
        v24 = 2080;
        v25 = "[AVConferencePreview init]";
        v26 = 1024;
        v27 = 775;
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d VICEROY_FEATURE_CINEMATICFRAMING", buf, 0x1Cu);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v23 = v16;
        v24 = 2080;
        v25 = "[AVConferencePreview init]";
        v26 = 1024;
        v27 = 777;
        v28 = 2048;
        v29 = v2;
        _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d Done initialization of singleton %p", buf, 0x26u);
      }
    }

    MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVConferencePreview-init");
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v23 = v18;
        v24 = 2080;
        v25 = "[AVConferencePreview init]";
        v26 = 1024;
        v27 = 779;
        v28 = 2048;
        v29 = v2;
        _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d @:@ AVConferencePreview-init (%p)", buf, 0x26u);
      }
    }
  }

  return v2;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];

  self->delegate = 0;
  dispatch_release(self->avConferencePreviewQueue);
  dispatch_release(self->avConferencePreviewNotificationQueue);
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVConferencePreview-dealloc");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "[AVConferencePreview dealloc]";
      v10 = 1024;
      v11 = 800;
      v12 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d @:@ AVConferencePreview-dealloc (%p)", buf, 0x26u);
    }
  }

  v5.receiver = self;
  v5.super_class = AVConferencePreview;
  [(AVConferencePreview *)&v5 dealloc];
}

- (void)startPreview
{
  v19 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v4 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v12 = v5;
      v13 = 2080;
      v14 = "[AVConferencePreview startPreview]";
      v15 = 1024;
      v16 = 838;
      v17 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d self=%p", buf, 0x26u);
    }
  }

  avConferencePreviewQueue = self->avConferencePreviewQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__AVConferencePreview_startPreview__block_invoke;
  block[3] = &unk_1E85F3778;
  block[4] = self;
  dispatch_async(avConferencePreviewQueue, block);
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVConferencePreview-startPreview");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v12 = v8;
      v13 = 2080;
      v14 = "[AVConferencePreview startPreview]";
      v15 = 1024;
      v16 = 859;
      v17 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d @:@ AVConferencePreview-startPreview (%p)", buf, 0x26u);
    }
  }
}

void __35__AVConferencePreview_startPreview__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v14 = v3;
        v15 = 2080;
        v16 = "[AVConferencePreview startPreview]_block_invoke";
        v17 = 1024;
        v18 = 842;
        v5 = "AVConferencePreview [%s] %s:%d ";
        v6 = v4;
        v7 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, v5, buf, v7);
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

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        *buf = 136316162;
        v14 = v8;
        v15 = 2080;
        v16 = "[AVConferencePreview startPreview]_block_invoke";
        v17 = 1024;
        v18 = 842;
        v19 = 2112;
        v20 = v2;
        v21 = 2048;
        v22 = v10;
        v5 = "AVConferencePreview [%s] %s:%d %@(%p) ";
        v6 = v9;
        v7 = 48;
        goto LABEL_11;
      }
    }
  }

  *(*(a1 + 32) + 16) = 1;
  v11 = objc_alloc(MEMORY[0x1E695DF20]);
  v12 = [v11 initWithObjectsAndKeys:{MEMORY[0x1E695E118], @"CACHEAUTHTOKEN", 0}];
  [*(*(a1 + 32) + 8) sendMessageAsync:"previewStartPreview" arguments:v12 reply:0];
}

- (void)startPreviewUnpausing:(BOOL)unpausing
{
  unpausingCopy = unpausing;
  v17 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136316162;
      v8 = v5;
      v9 = 2080;
      v10 = "[AVConferencePreview startPreviewUnpausing:]";
      v11 = 1024;
      v12 = 864;
      v13 = 2048;
      selfCopy = self;
      v15 = 1024;
      v16 = unpausingCopy;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d !!Deprecating!! Client is recommanded to use startPreview instead. AVConferencePreview startPreviewUnpausing, self %p, unpause=%d.", &v7, 0x2Cu);
    }
  }

  [(AVConferencePreview *)self startPreview];
}

- (void)pausePreview
{
  v19 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v4 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v12 = v5;
      v13 = 2080;
      v14 = "[AVConferencePreview pausePreview]";
      v15 = 1024;
      v16 = 871;
      v17 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d self=%p", buf, 0x26u);
    }
  }

  avConferencePreviewQueue = self->avConferencePreviewQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__AVConferencePreview_pausePreview__block_invoke;
  block[3] = &unk_1E85F3778;
  block[4] = self;
  dispatch_async(avConferencePreviewQueue, block);
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVConferencePreview-pausePreview");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v12 = v8;
      v13 = 2080;
      v14 = "[AVConferencePreview pausePreview]";
      v15 = 1024;
      v16 = 885;
      v17 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d @:@ AVConferencePreview-pausePreview (%p)", buf, 0x26u);
    }
  }
}

- (void)stopPreview
{
  v19 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v4 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v12 = v5;
      v13 = 2080;
      v14 = "[AVConferencePreview stopPreview]";
      v15 = 1024;
      v16 = 892;
      v17 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d self=%p", buf, 0x26u);
    }
  }

  avConferencePreviewQueue = self->avConferencePreviewQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__AVConferencePreview_stopPreview__block_invoke;
  block[3] = &unk_1E85F3778;
  block[4] = self;
  dispatch_async(avConferencePreviewQueue, block);
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVConferencePreview-stopPreview");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v12 = v8;
      v13 = 2080;
      v14 = "[AVConferencePreview stopPreview]";
      v15 = 1024;
      v16 = 908;
      v17 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d @:@ AVConferencePreview-stopPreview (%p)", buf, 0x26u);
    }
  }
}

uint64_t __34__AVConferencePreview_stopPreview__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 136315650;
        *&v12[4] = v3;
        *&v12[12] = 2080;
        *&v12[14] = "[AVConferencePreview stopPreview]_block_invoke";
        *&v12[22] = 1024;
        LODWORD(v13) = 896;
        v5 = "AVConferencePreview [%s] %s:%d ";
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

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        *v12 = 136316162;
        *&v12[4] = v8;
        *&v12[12] = 2080;
        *&v12[14] = "[AVConferencePreview stopPreview]_block_invoke";
        *&v12[22] = 1024;
        LODWORD(v13) = 896;
        WORD2(v13) = 2112;
        *(&v13 + 6) = v2;
        HIWORD(v13) = 2048;
        v14 = v10;
        v5 = "AVConferencePreview [%s] %s:%d %@(%p) ";
        v6 = v9;
        v7 = 48;
        goto LABEL_11;
      }
    }
  }

  *(*(a1 + 32) + 16) = 0;
  return [*(*(a1 + 32) + 8) sendMessageAsync:"previewStopPreview" arguments:0 reply:{0, *v12, *&v12[16], v13, v14}];
}

- (BOOL)isPreviewRunning
{
  v22 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  avConferencePreviewQueue = self->avConferencePreviewQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __39__AVConferencePreview_isPreviewRunning__block_invoke;
  v9[3] = &unk_1E85F40B8;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(avConferencePreviewQueue, v9);
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    v5 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(v11 + 24);
        *buf = 136315906;
        v15 = v3;
        v16 = 2080;
        v17 = "[AVConferencePreview isPreviewRunning]";
        v18 = 1024;
        v19 = 919;
        v20 = 1024;
        v21 = v6;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d _isPreviewRunning=%d", buf, 0x22u);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [AVConferencePreview isPreviewRunning];
    }
  }

  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (BOOL)isCameraZoomAvailable
{
  v22 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  avConferencePreviewQueue = self->avConferencePreviewQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__AVConferencePreview_isCameraZoomAvailable__block_invoke;
  v9[3] = &unk_1E85F40B8;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(avConferencePreviewQueue, v9);
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    v5 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(v11 + 24);
        *buf = 136315906;
        v15 = v3;
        v16 = 2080;
        v17 = "[AVConferencePreview isCameraZoomAvailable]";
        v18 = 1024;
        v19 = 930;
        v20 = 1024;
        v21 = v6;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d returning %d", buf, 0x22u);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [AVConferencePreview isCameraZoomAvailable];
    }
  }

  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (double)currentZoomFactor
{
  v22 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  avConferencePreviewQueue = self->avConferencePreviewQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__AVConferencePreview_currentZoomFactor__block_invoke;
  v9[3] = &unk_1E85F40B8;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(avConferencePreviewQueue, v9);
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    v5 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(v11 + 3);
        *buf = 136315906;
        v15 = v3;
        v16 = 2080;
        v17 = "[AVConferencePreview currentZoomFactor]";
        v18 = 1024;
        v19 = 941;
        v20 = 2048;
        v21 = v6;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d returning %f", buf, 0x26u);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [AVConferencePreview currentZoomFactor];
    }
  }

  v7 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v7;
}

double __40__AVConferencePreview_currentZoomFactor__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 128);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (double)maxZoomFactor
{
  v22 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  avConferencePreviewQueue = self->avConferencePreviewQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __36__AVConferencePreview_maxZoomFactor__block_invoke;
  v9[3] = &unk_1E85F40B8;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(avConferencePreviewQueue, v9);
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    v5 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(v11 + 3);
        *buf = 136315906;
        v15 = v3;
        v16 = 2080;
        v17 = "[AVConferencePreview maxZoomFactor]";
        v18 = 1024;
        v19 = 952;
        v20 = 2048;
        v21 = v6;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d returning %f", buf, 0x26u);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [AVConferencePreview maxZoomFactor];
    }
  }

  v7 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v7;
}

double __36__AVConferencePreview_maxZoomFactor__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 136);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)getSnapshot
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)setLocalVideoLayer:(id)layer front:(BOOL)front
{
  frontCopy = front;
  v22 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v13 = v7;
      v14 = 2080;
      v15 = "[AVConferencePreview setLocalVideoLayer:front:]";
      v16 = 1024;
      v17 = 987;
      v18 = 2048;
      layerCopy = layer;
      v20 = 1024;
      v21 = frontCopy;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d layer=%p, front=%d", buf, 0x2Cu);
    }
  }

  avConferencePreviewQueue = self->avConferencePreviewQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__AVConferencePreview_setLocalVideoLayer_front___block_invoke;
  block[3] = &unk_1E85F37C8;
  block[4] = self;
  block[5] = layer;
  v11 = frontCopy;
  dispatch_async(avConferencePreviewQueue, block);
}

void __48__AVConferencePreview_setLocalVideoLayer_front___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setRootPreviewLayer:*(a1 + 40) front:*(a1 + 48)];
  v2 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:*(a1 + 48)];
  v3 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v2, @"videoSlotFacing", 0}];
  v8[0] = MEMORY[0x1E69E9820];
  v4 = *(a1 + 48);
  v5 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  v8[1] = 3221225472;
  v8[2] = __48__AVConferencePreview_setLocalVideoLayer_front___block_invoke_2;
  v8[3] = &unk_1E85F9018;
  v10 = v4;
  v9 = v5;
  [v7 sendMessageAsync:"previewGetLocalVideoSlot" arguments:v3 reply:v8 queue:*(v6 + 104)];
}

void __48__AVConferencePreview_setLocalVideoLayer_front___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __48__AVConferencePreview_setLocalVideoLayer_front___block_invoke_2_cold_1();
      }
    }
  }

  else
  {
    v4 = [a2 objectForKeyedSubscript:@"videoSlotNumber"];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        v8 = [v7 name];
        v9 = *(a1 + 48);
        v10 = 136316674;
        v11 = v5;
        v12 = 2080;
        v13 = "[AVConferencePreview setLocalVideoLayer:front:]_block_invoke_2";
        v14 = 1024;
        v15 = 1004;
        v16 = 2112;
        v17 = v4;
        v18 = 2048;
        v19 = v7;
        v20 = 2112;
        v21 = v8;
        v22 = 1024;
        v23 = v9;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d Received slot %@ for layer %p named %@ facing %d", &v10, 0x40u);
      }
    }

    [*(a1 + 40) connectLayer:*(a1 + 32) withSlot:{objc_msgSend(v4, "unsignedIntValue")}];
  }
}

- (id)localVideoLayer:(BOOL)layer
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__34;
  v12 = __Block_byref_object_dispose__34;
  v13 = 0;
  avConferencePreviewQueue = self->avConferencePreviewQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__AVConferencePreview_localVideoLayer___block_invoke;
  v6[3] = &unk_1E85F7890;
  layerCopy = layer;
  v6[4] = self;
  v6[5] = &v8;
  dispatch_sync(avConferencePreviewQueue, v6);
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __39__AVConferencePreview_localVideoLayer___block_invoke(uint64_t result)
{
  v1 = 32;
  if (*(result + 48))
  {
    v1 = 24;
  }

  *(*(*(result + 40) + 8) + 40) = *(*(result + 32) + v1);
  return result;
}

- (id)newXPCObjectForFenceHandle:(id *)handle forLayerHost:(id)host
{
  v35 = *MEMORY[0x1E69E9840];
  if (!handle)
  {
    goto LABEL_5;
  }

  newFenceFromDefaultServer = [MEMORY[0x1E6979370] newFenceFromDefaultServer];
  *handle = newFenceFromDefaultServer;
  if (newFenceFromDefaultServer)
  {
    if ([objc_msgSend(host "context")])
    {
      result = [*handle createXPCRepresentation];
      if (result)
      {
        return result;
      }

      goto LABEL_5;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_5;
      }

      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }

      v12 = *handle;
      v19 = 136316418;
      v20 = v10;
      v21 = 2080;
      v22 = "[AVConferencePreview newXPCObjectForFenceHandle:forLayerHost:]";
      v23 = 1024;
      v24 = 1072;
      v25 = 2048;
      v26 = v12;
      v27 = 2048;
      selfCopy = host;
      v29 = 2048;
      context = [host context];
      v13 = "AVConferencePreview [%s] %s:%d Failed to add fence=%p for layer=%p with context=%p";
      v14 = v11;
      v15 = 58;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v9 = [(AVConferencePreview *)self performSelector:sel_logPrefix];
      }

      else
      {
        v9 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_5;
      }

      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }

      v18 = *handle;
      v19 = 136316930;
      v20 = v16;
      v21 = 2080;
      v22 = "[AVConferencePreview newXPCObjectForFenceHandle:forLayerHost:]";
      v23 = 1024;
      v24 = 1072;
      v25 = 2112;
      v26 = v9;
      v27 = 2048;
      selfCopy = self;
      v29 = 2048;
      context = v18;
      v31 = 2048;
      hostCopy2 = host;
      v33 = 2048;
      context2 = [host context];
      v13 = "AVConferencePreview [%s] %s:%d %@(%p) Failed to add fence=%p for layer=%p with context=%p";
      v14 = v17;
      v15 = 78;
    }

    _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, v13, &v19, v15);
  }

  else
  {
    [AVConferencePreview newXPCObjectForFenceHandle:? forLayerHost:?];
  }

LABEL_5:
  result = *handle;
  if (*handle)
  {
    [result invalidate];

    result = 0;
    *handle = 0;
  }

  return result;
}

- (void)setBounds:(CGRect)bounds forLayerHost:(id)host
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v73 = *MEMORY[0x1E69E9840];
  caLayerHostFront = self->_caLayerHostFront;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v74.origin.x = x;
        v74.origin.y = y;
        v74.size.width = width;
        v74.size.height = height;
        v14 = NSStringFromRect(v74);
        caLayerFront = self->caLayerFront;
        caLayerBack = self->caLayerBack;
        v17 = self->_caLayerHostFront;
        caLayerHostBack = self->_caLayerHostBack;
        *buf = 136317442;
        *&buf[4] = v12;
        v51 = 2080;
        v52 = "[AVConferencePreview setBounds:forLayerHost:]";
        v53 = 1024;
        v54 = 1088;
        v55 = 2112;
        v56 = v14;
        v57 = 2048;
        selfCopy2 = host;
        v59 = 2048;
        v60 = caLayerFront;
        v61 = 2048;
        hostCopy2 = caLayerBack;
        v63 = 2048;
        v64 = v17;
        v65 = 2048;
        v66 = caLayerHostBack;
        v67 = 1024;
        LODWORD(v68) = caLayerHostFront == host;
        v19 = "AVConferencePreview [%s] %s:%d bounds=%@ layerHost=%p caLayerFront=%p caLayerBack=%p caLayerHostFront=%p caLayerHostBack=%p front=%d";
        v20 = v13;
        v21 = 94;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = [(AVConferencePreview *)self performSelector:sel_logPrefix];
    }

    else
    {
      v11 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v75.origin.x = x;
        v75.origin.y = y;
        v75.size.width = width;
        v75.size.height = height;
        v24 = NSStringFromRect(v75);
        v25 = self->caLayerFront;
        v26 = self->caLayerBack;
        v27 = self->_caLayerHostFront;
        v28 = self->_caLayerHostBack;
        *buf = 136317954;
        *&buf[4] = v22;
        v51 = 2080;
        v52 = "[AVConferencePreview setBounds:forLayerHost:]";
        v53 = 1024;
        v54 = 1088;
        v55 = 2112;
        v56 = v11;
        v57 = 2048;
        selfCopy2 = self;
        v59 = 2112;
        v60 = v24;
        v61 = 2048;
        hostCopy2 = host;
        v63 = 2048;
        v64 = v25;
        v65 = 2048;
        v66 = v26;
        v67 = 2048;
        v68 = v27;
        v69 = 2048;
        v70 = v28;
        v71 = 1024;
        v72 = caLayerHostFront == host;
        v19 = "AVConferencePreview [%s] %s:%d %@(%p) bounds=%@ layerHost=%p caLayerFront=%p caLayerBack=%p caLayerHostFront=%p caLayerHostBack=%p front=%d";
        v20 = v23;
        v21 = 114;
        goto LABEL_11;
      }
    }
  }

  if (VideoUtil_LayerBoundsAreValid(x, y, width, height))
  {
    v47 = 0;
    v76.origin.x = x;
    v76.origin.y = y;
    v76.size.width = width;
    v76.size.height = height;
    v29 = NSStringFromRect(v76);
    host = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:caLayerHostFront == host];
    v31 = host;
    if (host)
    {
      v48[0] = @"videoSlotFacing";
      v48[1] = @"conferenceVisualRectangle";
      v49[0] = host;
      v49[1] = v29;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:2];
      v33 = [(AVConferencePreview *)self newXPCObjectForFenceHandle:&v47 forLayerHost:host];
      if (v33)
      {
        v34 = v33;
        v35 = [(AVConferenceXPCClient *)self->connection sendMessageSync:"previewSetLayerBounds" arguments:v32 xpcArguments:v33];
        if (v35)
        {
          v36 = v35;
          if (![v35 objectForKeyedSubscript:@"ERROR"] && !objc_msgSend(v36, "objectForKeyedSubscript:", @"SERVERDIED"))
          {
LABEL_18:
            if (v47)
            {
              [v47 invalidate];

              v47 = 0;
            }

            xpc_release(v34);
            return;
          }
        }

        [AVConferencePreview setBounds:forLayerHost:];
      }

      else
      {
        [AVConferencePreview setBounds:forLayerHost:];
      }
    }

    else
    {
      [AVConferencePreview setBounds:forLayerHost:];
    }

    v34 = *buf;
    goto LABEL_18;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return;
    }

    v38 = VRTraceErrorLogLevelToCSTR();
    v39 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v77.origin.x = x;
    v77.origin.y = y;
    v77.size.width = width;
    v77.size.height = height;
    v40 = NSStringFromRect(v77);
    *buf = 136315906;
    *&buf[4] = v38;
    v51 = 2080;
    v52 = "[AVConferencePreview setBounds:forLayerHost:]";
    v53 = 1024;
    v54 = 1090;
    v55 = 2112;
    v56 = v40;
    v41 = "AVConferencePreview [%s] %s:%d Invalid root layer bounds=%@, skip bounds configuration";
    v42 = v39;
    v43 = 38;
LABEL_31:
    _os_log_impl(&dword_1DB56E000, v42, OS_LOG_TYPE_DEFAULT, v41, buf, v43);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    v37 = [(AVConferencePreview *)self performSelector:sel_logPrefix];
  }

  else
  {
    v37 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v44 = VRTraceErrorLogLevelToCSTR();
    v45 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v78.origin.x = x;
      v78.origin.y = y;
      v78.size.width = width;
      v78.size.height = height;
      v46 = NSStringFromRect(v78);
      *buf = 136316418;
      *&buf[4] = v44;
      v51 = 2080;
      v52 = "[AVConferencePreview setBounds:forLayerHost:]";
      v53 = 1024;
      v54 = 1090;
      v55 = 2112;
      v56 = v37;
      v57 = 2048;
      selfCopy2 = self;
      v59 = 2112;
      v60 = v46;
      v41 = "AVConferencePreview [%s] %s:%d %@(%p) Invalid root layer bounds=%@, skip bounds configuration";
      v42 = v45;
      v43 = 58;
      goto LABEL_31;
    }
  }
}

- (void)createPreviewCALayerHostForRootLayer:(id)layer withContextId:(unsigned int)id front:(BOOL)front
{
  v57 = *MEMORY[0x1E69E9840];
  if (!layer || !id)
  {
    [AVConferencePreview createPreviewCALayerHostForRootLayer:withContextId:front:];
LABEL_28:
    v12 = *buf;
    goto LABEL_24;
  }

  frontCopy = front;
  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  v10 = "Back";
  if (frontCopy)
  {
    v10 = "Front";
  }

  layer = [v9 initWithFormat:@"AVCPreviewVideoCALayerHost%sFor%p", v10, layer];
  if (!layer)
  {
    [AVConferencePreview createPreviewCALayerHostForRootLayer:withContextId:front:];
    goto LABEL_28;
  }

  v12 = layer;
  [layer bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  p_caLayerHostFront = &self->_caLayerHostFront;
  p_caLayerHostBack = &self->_caLayerHostBack;
  if (frontCopy)
  {
    v23 = 40;
  }

  else
  {
    v23 = 48;
  }

  if (frontCopy)
  {
    v24 = &self->_caLayerHostFront;
  }

  else
  {
    v24 = &self->_caLayerHostBack;
  }

  [(AVConferencePreview *)self cleanupPreviewLayerHost:v24];
  v25 = [[AVCPreviewCALayerHost alloc] initWithPreview:self];
  *(&self->super.isa + v23) = v25;
  if (!v25)
  {
    [AVConferencePreview createPreviewCALayerHostForRootLayer:withContextId:front:];
    goto LABEL_28;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__AVConferencePreview_createPreviewCALayerHostForRootLayer_withContextId_front___block_invoke;
  block[3] = &unk_1E85F9040;
  block[5] = layer;
  block[6] = v24;
  idCopy = id;
  block[7] = v14;
  block[8] = v16;
  block[9] = v18;
  block[10] = v20;
  block[4] = v12;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v27 = VRTraceErrorLogLevelToCSTR();
      v28 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v29 = *p_caLayerHostFront;
        v30 = *p_caLayerHostBack;
        *buf = 136316674;
        *&buf[4] = v27;
        v41 = 2080;
        v42 = "[AVConferencePreview createPreviewCALayerHostForRootLayer:withContextId:front:]";
        v43 = 1024;
        v44 = 1170;
        v45 = 2048;
        v46 = v29;
        v47 = 2048;
        selfCopy = v30;
        v49 = 2048;
        layerCopy = layer;
        v51 = 1024;
        LODWORD(v52) = id;
        v31 = "AVConferencePreview [%s] %s:%d AVConferencePreview: createPreviewCALayerHostForRootLayer caLayerHostFront=%p caLayerHostBack=%p rootLayer=%p contextId=%u";
        v32 = v28;
        v33 = 64;
LABEL_23:
        _os_log_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_DEFAULT, v31, buf, v33);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v26 = [(AVConferencePreview *)self performSelector:sel_logPrefix];
    }

    else
    {
      v26 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v34 = VRTraceErrorLogLevelToCSTR();
      v35 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        caLayerHostFront = self->_caLayerHostFront;
        caLayerHostBack = self->_caLayerHostBack;
        *buf = 136317186;
        *&buf[4] = v34;
        v41 = 2080;
        v42 = "[AVConferencePreview createPreviewCALayerHostForRootLayer:withContextId:front:]";
        v43 = 1024;
        v44 = 1170;
        v45 = 2112;
        v46 = v26;
        v47 = 2048;
        selfCopy = self;
        v49 = 2048;
        layerCopy = caLayerHostFront;
        v51 = 2048;
        v52 = caLayerHostBack;
        v53 = 2048;
        layerCopy2 = layer;
        v55 = 1024;
        idCopy2 = id;
        v31 = "AVConferencePreview [%s] %s:%d %@(%p) AVConferencePreview: createPreviewCALayerHostForRootLayer caLayerHostFront=%p caLayerHostBack=%p rootLayer=%p contextId=%u";
        v32 = v35;
        v33 = 84;
        goto LABEL_23;
      }
    }
  }

LABEL_24:
}

uint64_t __80__AVConferencePreview_createPreviewCALayerHostForRootLayer_withContextId_front___block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [**(a1 + 48) setContextId:*(a1 + 88)];
  [**(a1 + 48) setFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  __asm { FMOV            V1.2D, #0.5 }

  [**(a1 + 48) setPosition:{vmulq_f64(*(a1 + 72), _Q1)}];
  [**(a1 + 48) setName:*(a1 + 32)];
  [**(a1 + 48) setContentsGravity:*MEMORY[0x1E6979DF0]];
  [**(a1 + 48) setAllowsHitTesting:0];
  [*(a1 + 40) addSublayer:**(a1 + 48)];
  [*(a1 + 40) setAllowsHitTesting:0];
  [MEMORY[0x1E6979518] commit];
  [MEMORY[0x1E6979518] flush];
  v7 = MEMORY[0x1E6979518];

  return [v7 synchronize];
}

- (void)setLocalVideoLayerHost:(id)host front:(BOOL)front
{
  frontCopy = front;
  v42 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        [host bounds];
        v10 = NSStringFromRect(v43);
        [host frame];
        v11 = NSStringFromRect(v44);
        [objc_msgSend(host "superlayer")];
        v12 = NSStringFromRect(v45);
        [objc_msgSend(host "superlayer")];
        *buf = 136317186;
        v25 = v8;
        v26 = 2080;
        v27 = "[AVConferencePreview setLocalVideoLayerHost:front:]";
        v28 = 1024;
        v29 = 1178;
        v30 = 2048;
        hostCopy = host;
        v32 = 1024;
        *v33 = frontCopy;
        *&v33[4] = 2112;
        *&v33[6] = v10;
        *&v33[14] = 2112;
        *&v33[16] = v11;
        v34 = 2112;
        v35 = v12;
        v36 = 2112;
        v37 = NSStringFromRect(v46);
        v13 = "AVConferencePreview [%s] %s:%d layer=%p, front=%d, bounds=%@ frame=%@, super layer bounds=%@ frame=%@";
        v14 = v9;
        v15 = 84;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(AVConferencePreview *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        [host bounds];
        v18 = NSStringFromRect(v47);
        [host frame];
        v19 = NSStringFromRect(v48);
        [objc_msgSend(host "superlayer")];
        v20 = NSStringFromRect(v49);
        [objc_msgSend(host "superlayer")];
        *buf = 136317698;
        v25 = v16;
        v26 = 2080;
        v27 = "[AVConferencePreview setLocalVideoLayerHost:front:]";
        v28 = 1024;
        v29 = 1178;
        v30 = 2112;
        hostCopy = v7;
        v32 = 2048;
        *v33 = self;
        *&v33[8] = 2048;
        *&v33[10] = host;
        *&v33[18] = 1024;
        *&v33[20] = frontCopy;
        v34 = 2112;
        v35 = v18;
        v36 = 2112;
        v37 = v19;
        v38 = 2112;
        v39 = v20;
        v40 = 2112;
        v41 = NSStringFromRect(v50);
        v13 = "AVConferencePreview [%s] %s:%d %@(%p) layer=%p, front=%d, bounds=%@ frame=%@, super layer bounds=%@ frame=%@";
        v14 = v17;
        v15 = 104;
        goto LABEL_11;
      }
    }
  }

  avConferencePreviewQueue = self->avConferencePreviewQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__AVConferencePreview_setLocalVideoLayerHost_front___block_invoke;
  block[3] = &unk_1E85F37C8;
  block[4] = self;
  block[5] = host;
  v23 = frontCopy;
  dispatch_async(avConferencePreviewQueue, block);
}

void __52__AVConferencePreview_setLocalVideoLayerHost_front___block_invoke(uint64_t a1)
{
  v61 = *MEMORY[0x1E69E9840];
  if (![*(a1 + 32) setRootPreviewLayer:*(a1 + 40) front:*(a1 + 48)])
  {
    v9 = 48;
    if (*(a1 + 48))
    {
      v9 = 40;
    }

    v11 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12 = *&v11[v9];
    [v10 bounds];
    [v11 setBounds:v12 forLayerHost:?];
    goto LABEL_14;
  }

  if (!*(a1 + 40))
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __52__AVConferencePreview_setLocalVideoLayerHost_front___block_invoke_cold_4();
        }
      }

      goto LABEL_14;
    }

    if (objc_opt_respondsToSelector())
    {
      v28 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v28 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v34 = VRTraceErrorLogLevelToCSTR();
      v35 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v36 = *(a1 + 32);
        *buf = 136316162;
        v44 = v34;
        v45 = 2080;
        v46 = "[AVConferencePreview setLocalVideoLayerHost:front:]_block_invoke";
        v47 = 1024;
        v48 = 1184;
        v49 = 2112;
        v50 = v28;
        v51 = 2048;
        v52 = v36;
        v37 = "AVConferencePreview [%s] %s:%d %@(%p) Invalid layer parameter";
LABEL_61:
        _os_log_error_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_ERROR, v37, buf, 0x30u);
      }
    }

LABEL_14:
    v3 = 0;
LABEL_15:
    v4 = 0;
    goto LABEL_24;
  }

  v2 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:*(a1 + 48)];
  if (!v2)
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __52__AVConferencePreview_setLocalVideoLayerHost_front___block_invoke_cold_3();
        }
      }

      goto LABEL_14;
    }

    if (objc_opt_respondsToSelector())
    {
      v29 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v29 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v38 = VRTraceErrorLogLevelToCSTR();
      v35 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v39 = *(a1 + 32);
        *buf = 136316162;
        v44 = v38;
        v45 = 2080;
        v46 = "[AVConferencePreview setLocalVideoLayerHost:front:]_block_invoke";
        v47 = 1024;
        v48 = 1186;
        v49 = 2112;
        v50 = v29;
        v51 = 2048;
        v52 = v39;
        v37 = "AVConferencePreview [%s] %s:%d %@(%p) Failed to allocate camera facing";
        goto LABEL_61;
      }
    }

    goto LABEL_14;
  }

  v3 = v2;
  [*(a1 + 40) bounds];
  v4 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v3, @"videoSlotFacing", NSStringFromRect(v62), @"conferenceVisualRectangle", 0}];
  if (!v4)
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __52__AVConferencePreview_setLocalVideoLayerHost_front___block_invoke_cold_2();
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v30 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v30 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v40 = VRTraceErrorLogLevelToCSTR();
        v41 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v42 = *(a1 + 32);
          *buf = 136316162;
          v44 = v40;
          v45 = 2080;
          v46 = "[AVConferencePreview setLocalVideoLayerHost:front:]_block_invoke";
          v47 = 1024;
          v48 = 1190;
          v49 = 2112;
          v50 = v30;
          v51 = 2048;
          v52 = v42;
          _os_log_error_impl(&dword_1DB56E000, v41, OS_LOG_TYPE_ERROR, "AVConferencePreview [%s] %s:%d %@(%p) Failed to allocate args dictionary", buf, 0x30u);
        }
      }
    }

    goto LABEL_15;
  }

  v5 = [*(*(a1 + 32) + 8) sendMessageSync:"previewGetLocalVideoContext" arguments:v4 xpcArguments:0];
  if (!v5 || (v6 = v5, [v5 objectForKeyedSubscript:@"ERROR"]) || objc_msgSend(v6, "objectForKeyedSubscript:", @"SERVERDIED"))
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __52__AVConferencePreview_setLocalVideoLayerHost_front___block_invoke_cold_1();
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v27 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v27 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v31 = VRTraceErrorLogLevelToCSTR();
        v32 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v33 = *(a1 + 32);
          *buf = 136316162;
          v44 = v31;
          v45 = 2080;
          v46 = "[AVConferencePreview setLocalVideoLayerHost:front:]_block_invoke";
          v47 = 1024;
          v48 = 1192;
          v49 = 2112;
          v50 = v27;
          v51 = 2048;
          v52 = v33;
          _os_log_error_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_ERROR, "AVConferencePreview [%s] %s:%d %@(%p) Set preview layer bounds xpc call failed", buf, 0x30u);
        }
      }
    }
  }

  else
  {
    v7 = [v6 objectForKeyedSubscript:@"videoContextId"];
    [*(a1 + 32) createPreviewCALayerHostForRootLayer:*(a1 + 40) withContextId:-[__CFString unsignedIntValue](v7 front:{"unsignedIntValue"), *(a1 + 48)}];
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 40);
          v16 = [v15 name];
          v17 = *(a1 + 48);
          *buf = 136316674;
          v44 = v13;
          v45 = 2080;
          v46 = "[AVConferencePreview setLocalVideoLayerHost:front:]_block_invoke";
          v47 = 1024;
          v48 = 1195;
          v49 = 2112;
          v50 = v7;
          v51 = 2048;
          v52 = v15;
          v53 = 2112;
          v54 = v16;
          v55 = 1024;
          LODWORD(v56) = v17;
          v18 = "AVConferencePreview [%s] %s:%d Received contextId=%@ for layer=%p named=%@ facing=%d";
          v19 = v14;
          v20 = 64;
LABEL_23:
          _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v21 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v24 = *(a1 + 32);
          v23 = *(a1 + 40);
          v25 = [v23 name];
          v26 = *(a1 + 48);
          *buf = 136317186;
          v44 = v21;
          v45 = 2080;
          v46 = "[AVConferencePreview setLocalVideoLayerHost:front:]_block_invoke";
          v47 = 1024;
          v48 = 1195;
          v49 = 2112;
          v50 = v8;
          v51 = 2048;
          v52 = v24;
          v53 = 2112;
          v54 = v7;
          v55 = 2048;
          v56 = v23;
          v57 = 2112;
          v58 = v25;
          v59 = 1024;
          v60 = v26;
          v18 = "AVConferencePreview [%s] %s:%d %@(%p) Received contextId=%@ for layer=%p named=%@ facing=%d";
          v19 = v22;
          v20 = 84;
          goto LABEL_23;
        }
      }
    }
  }

LABEL_24:
}

- (void)setLocalCamera:(unsigned int)camera
{
  v13 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v4 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      [AVConferencePreview setLocalCamera:];
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315650;
      v8 = v5;
      v9 = 2080;
      v10 = "[AVConferencePreview setLocalCamera:]";
      v11 = 1024;
      v12 = 1219;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d -setLocalCamera: called on embedded, ignoring", &v7, 0x1Cu);
    }
  }
}

- (void)resetLocalCameraAfterServerDisconnect
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __60__AVConferencePreview_resetLocalCameraAfterServerDisconnect__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(a1 + 32) + 144);
      *buf = 136315906;
      v7 = v2;
      v8 = 2080;
      v9 = "[AVConferencePreview resetLocalCameraAfterServerDisconnect]_block_invoke";
      v10 = 1024;
      v11 = 1237;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d Server disconnected, reseting local camera to: %@", buf, 0x26u);
    }
  }

  v5 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{*(*(a1 + 32) + 144), @"localCameraUIDString", 0}];
  [*(*(a1 + 32) + 8) sendMessageAsync:"previewSetLocalCamera" arguments:v5];
}

- (void)setLocalCameraWithUID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v12 = v5;
      v13 = 2080;
      v14 = "[AVConferencePreview setLocalCameraWithUID:]";
      v15 = 1024;
      v16 = 1249;
      v17 = 2112;
      dCopy = d;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d requestedCameraUniqueID = %@", buf, 0x26u);
    }
  }

  if (d)
  {
    if ([d isEqualToString:self->_localCameraUID])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v12 = v7;
          v13 = 2080;
          v14 = "[AVConferencePreview setLocalCameraWithUID:]";
          v15 = 1024;
          v16 = 1261;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d camera already set", buf, 0x1Cu);
        }
      }
    }

    else
    {

      self->_localCameraUID = d;
      avConferencePreviewQueue = self->avConferencePreviewQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __45__AVConferencePreview_setLocalCameraWithUID___block_invoke;
      block[3] = &unk_1E85F3778;
      block[4] = self;
      dispatch_async(avConferencePreviewQueue, block);
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [AVConferencePreview setLocalCameraWithUID:];
    }
  }
}

void __45__AVConferencePreview_setLocalCameraWithUID___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{*(*(a1 + 32) + 144), @"localCameraUIDString", 0}];
  [*(*(a1 + 32) + 8) sendMessageAsync:"previewSetLocalCamera" arguments:v2];
}

- (void)setFollowSystemCameraEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v14 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315906;
      v7 = v4;
      v8 = 2080;
      v9 = "[AVConferencePreview setFollowSystemCameraEnabled:]";
      v10 = 1024;
      v11 = 1270;
      v12 = 1024;
      v13 = enabledCopy;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d enabled=%d", &v6, 0x22u);
    }
  }
}

- (unsigned)localCamera
{
  v17 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v3 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 5)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = v4;
      v11 = 2080;
      v12 = "[AVConferencePreview localCamera]";
      v13 = 1024;
      v14 = 1294;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d -localCamera called on embedded, ignoring", &v9, 0x1Cu);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315906;
      v10 = v6;
      v11 = 2080;
      v12 = "[AVConferencePreview localCamera]";
      v13 = 1024;
      v14 = 1307;
      v15 = 1024;
      v16 = 0;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d localCamera=%u", &v9, 0x22u);
    }
  }

  return 0;
}

- (id)localCameraUID
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__34;
  v10 = __Block_byref_object_dispose__34;
  v11 = 0;
  avConferencePreviewQueue = self->avConferencePreviewQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__AVConferencePreview_localCameraUID__block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(avConferencePreviewQueue, block);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __37__AVConferencePreview_localCameraUID__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 144);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setLocalVideoAttributes:(id)attributes
{
  v18 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (attributes)
      {
        v7 = [objc_msgSend(attributes "description")];
      }

      else
      {
        v7 = "<nil>";
      }

      *buf = 136315906;
      v11 = v5;
      v12 = 2080;
      v13 = "[AVConferencePreview setLocalVideoAttributes:]";
      v14 = 1024;
      v15 = 1331;
      v16 = 2080;
      v17 = v7;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d videoAttrs=%s", buf, 0x26u);
    }
  }

  avConferencePreviewQueue = self->avConferencePreviewQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__AVConferencePreview_setLocalVideoAttributes___block_invoke;
  v9[3] = &unk_1E85F37F0;
  v9[4] = self;
  v9[5] = attributes;
  dispatch_async(avConferencePreviewQueue, v9);
}

void __47__AVConferencePreview_setLocalVideoAttributes___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  *(*(a1 + 32) + 56) = *(a1 + 40);

  v4 = [*(a1 + 40) copyEncodedDictionary];
  v3 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v4, @"localVideoAttributes", 0}];
  [*(*(a1 + 32) + 8) sendMessageAsync:"previewSetLocalVideoAttributes" arguments:v3 reply:0];
}

- (id)localVideoAttributes
{
  v24 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__34;
  v14 = __Block_byref_object_dispose__34;
  v15 = 0;
  avConferencePreviewQueue = self->avConferencePreviewQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__AVConferencePreview_localVideoAttributes__block_invoke;
  v9[3] = &unk_1E85F40B8;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(avConferencePreviewQueue, v9);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = v11[5];
      if (v5)
      {
        v6 = [objc_msgSend(v5 "description")];
      }

      else
      {
        v6 = "<nil>";
      }

      *buf = 136315906;
      v17 = v3;
      v18 = 2080;
      v19 = "[AVConferencePreview localVideoAttributes]";
      v20 = 1024;
      v21 = 1371;
      v22 = 2080;
      v23 = v6;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d Returning %s", buf, 0x26u);
    }
  }

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);
  return v7;
}

VideoAttributes *__43__AVConferencePreview_localVideoAttributes__block_invoke(uint64_t a1)
{
  result = [VideoAttributes videoAttributesWithVideoAttributes:*(*(a1 + 32) + 56)];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setLocalScreenAttributes:(id)attributes
{
  v18 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (attributes)
      {
        v7 = [objc_msgSend(attributes "description")];
      }

      else
      {
        v7 = "<nil>";
      }

      *buf = 136315906;
      v11 = v5;
      v12 = 2080;
      v13 = "[AVConferencePreview setLocalScreenAttributes:]";
      v14 = 1024;
      v15 = 1381;
      v16 = 2080;
      v17 = v7;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d screenAttributes=%s", buf, 0x26u);
    }
  }

  avConferencePreviewQueue = self->avConferencePreviewQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__AVConferencePreview_setLocalScreenAttributes___block_invoke;
  v9[3] = &unk_1E85F37F0;
  v9[4] = attributes;
  v9[5] = self;
  dispatch_async(avConferencePreviewQueue, v9);
}

void __48__AVConferencePreview_setLocalScreenAttributes___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) orientation])
  {
    v2 = [*(a1 + 32) orientation];
    if (v2 == 1)
    {
      v3 = 64;
    }

    else
    {
      v3 = 80;
    }

    if (v2 == 1)
    {
      v4 = 72;
    }

    else
    {
      v4 = 88;
    }
  }

  else
  {
    v4 = 72;
    v3 = 64;
  }

  v5 = *(a1 + 40);
  [*(a1 + 32) ratio];
  *(v5 + v3) = v6;
  *(v5 + v4) = v7;
  v9 = [*(a1 + 32) copyEncodedDictionary];
  v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v9, @"localVideoAttributes", 0}];
  [*(*(a1 + 40) + 8) sendMessageAsync:"previewSetLocalScreenAttributes" arguments:v8 reply:0];
}

- (id)localScreenAttributesForVideoAttributes:(id)attributes
{
  v25 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy__34;
  v15 = __Block_byref_object_dispose__34;
  v16 = 0;
  avConferencePreviewQueue = self->avConferencePreviewQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__AVConferencePreview_localScreenAttributesForVideoAttributes___block_invoke;
  block[3] = &unk_1E85F3E08;
  block[5] = self;
  block[6] = &v11;
  block[4] = attributes;
  dispatch_sync(avConferencePreviewQueue, block);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = v12[5];
      if (v6)
      {
        v7 = [objc_msgSend(v6 "description")];
      }

      else
      {
        v7 = "<nil>";
      }

      *buf = 136315906;
      v18 = v4;
      v19 = 2080;
      v20 = "[AVConferencePreview localScreenAttributesForVideoAttributes:]";
      v21 = 1024;
      v22 = 1443;
      v23 = 2080;
      v24 = v7;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d Returning %s", buf, 0x26u);
    }
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t __63__AVConferencePreview_localScreenAttributesForVideoAttributes___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [VideoAttributes videoAttributesWithVideoAttributes:*(a1 + 32)];
  if ([*(a1 + 32) orientation])
  {
    v2 = [*(a1 + 32) orientation];
    v3 = 80;
    if (v2 == 1)
    {
      v3 = 64;
    }

    v4 = 88;
    if (v2 == 1)
    {
      v4 = 72;
    }
  }

  else
  {
    v4 = 72;
    v3 = 64;
  }

  v5 = *(a1 + 40);
  v6 = *(v5 + v3);
  v7 = *(v5 + v4);
  v8 = *(*(*(a1 + 48) + 8) + 40);

  return [v8 setRatio:{v6, v7}];
}

- (void)beginPreviewToPIPAnimation
{
  v12 = *MEMORY[0x1E69E9840];
  avConferencePreviewQueue = self->avConferencePreviewQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__AVConferencePreview_beginPreviewToPIPAnimation__block_invoke;
  block[3] = &unk_1E85F3778;
  block[4] = self;
  dispatch_async(avConferencePreviewQueue, block);
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v7 = v3;
      v8 = 2080;
      v9 = "[AVConferencePreview beginPreviewToPIPAnimation]";
      v10 = 1024;
      v11 = 1463;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d beginPreviewToPIPAnimation", buf, 0x1Cu);
    }
  }
}

- (void)endPreviewToPIPAnimation
{
  v12 = *MEMORY[0x1E69E9840];
  avConferencePreviewQueue = self->avConferencePreviewQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__AVConferencePreview_endPreviewToPIPAnimation__block_invoke;
  block[3] = &unk_1E85F3778;
  block[4] = self;
  dispatch_async(avConferencePreviewQueue, block);
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v7 = v3;
      v8 = 2080;
      v9 = "[AVConferencePreview endPreviewToPIPAnimation]";
      v10 = 1024;
      v11 = 1481;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d endPreviewToPIPAnimation", buf, 0x1Cu);
    }
  }
}

- (void)beginPIPToPreviewAnimation
{
  v12 = *MEMORY[0x1E69E9840];
  avConferencePreviewQueue = self->avConferencePreviewQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__AVConferencePreview_beginPIPToPreviewAnimation__block_invoke;
  block[3] = &unk_1E85F3778;
  block[4] = self;
  dispatch_async(avConferencePreviewQueue, block);
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v7 = v3;
      v8 = 2080;
      v9 = "[AVConferencePreview beginPIPToPreviewAnimation]";
      v10 = 1024;
      v11 = 1499;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d beginPIPToPreviewAnimation", buf, 0x1Cu);
    }
  }
}

- (void)endPIPToPreviewAnimation
{
  v12 = *MEMORY[0x1E69E9840];
  avConferencePreviewQueue = self->avConferencePreviewQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__AVConferencePreview_endPIPToPreviewAnimation__block_invoke;
  block[3] = &unk_1E85F3778;
  block[4] = self;
  dispatch_async(avConferencePreviewQueue, block);
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v7 = v3;
      v8 = 2080;
      v9 = "[AVConferencePreview endPIPToPreviewAnimation]";
      v10 = 1024;
      v11 = 1517;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d endPIPToPreviewAnimation", buf, 0x1Cu);
    }
  }
}

- (void)setCameraZoomFactor:(double)factor
{
  v16 = *MEMORY[0x1E69E9840];
  avConferencePreviewQueue = self->avConferencePreviewQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__AVConferencePreview_setCameraZoomFactor___block_invoke;
  v7[3] = &unk_1E85F40E0;
  v7[4] = self;
  *&v7[5] = factor;
  dispatch_async(avConferencePreviewQueue, v7);
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v9 = v5;
      v10 = 2080;
      v11 = "[AVConferencePreview setCameraZoomFactor:]";
      v12 = 1024;
      v13 = 1549;
      v14 = 2048;
      factorCopy = factor;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d cameraZoomFactor=%f", buf, 0x26u);
    }
  }
}

void __43__AVConferencePreview_setCameraZoomFactor___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 121) == 1)
  {
    v2 = objc_alloc(MEMORY[0x1E695DF20]);
    v5 = [v2 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", *(a1 + 40)), @"previewCameraZoomFactor", 0}];
    [*(*(a1 + 32) + 8) sendMessageAsync:"previewCameraZoomFactor" arguments:? reply:?];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v7 = v3;
      v8 = 2080;
      v9 = "[AVConferencePreview setCameraZoomFactor:]_block_invoke";
      v10 = 1024;
      v11 = 1546;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d cameraZoom not available", buf, 0x1Cu);
    }
  }
}

- (void)setCameraZoomFactor:(double)factor withRate:(double)rate
{
  v20 = *MEMORY[0x1E69E9840];
  avConferencePreviewQueue = self->avConferencePreviewQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__AVConferencePreview_setCameraZoomFactor_withRate___block_invoke;
  block[3] = &unk_1E85F4090;
  block[4] = self;
  *&block[5] = factor;
  *&block[6] = rate;
  dispatch_async(avConferencePreviewQueue, block);
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v11 = v7;
      v12 = 2080;
      v13 = "[AVConferencePreview setCameraZoomFactor:withRate:]";
      v14 = 1024;
      v15 = 1568;
      v16 = 2048;
      factorCopy = factor;
      v18 = 2048;
      rateCopy = rate;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d cameraZoomFactor=%f with rate=%f", buf, 0x30u);
    }
  }
}

void __52__AVConferencePreview_setCameraZoomFactor_withRate___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 121) == 1)
  {
    v2 = objc_alloc(MEMORY[0x1E695DF20]);
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 40)];
    v6 = [v2 initWithObjectsAndKeys:{v3, @"previewCameraZoomFactor", objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", *(a1 + 48)), @"previewCameraZoomRate", 0}];
    [*(*(a1 + 32) + 8) sendMessageAsync:"previewCameraZoomFactorRate" arguments:? reply:?];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v8 = v4;
      v9 = 2080;
      v10 = "[AVConferencePreview setCameraZoomFactor:withRate:]_block_invoke";
      v11 = 1024;
      v12 = 1565;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d cameraZoom not available", buf, 0x1Cu);
    }
  }
}

- (void)setCinematicFramingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v17 = *MEMORY[0x1E69E9840];
  avConferencePreviewQueue = self->avConferencePreviewQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__AVConferencePreview_setCinematicFramingEnabled___block_invoke;
  v7[3] = &unk_1E85F37A0;
  enabledCopy2 = enabled;
  v7[4] = self;
  dispatch_async(avConferencePreviewQueue, v7);
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v10 = v5;
      v11 = 2080;
      v12 = "[AVConferencePreview setCinematicFramingEnabled:]";
      v13 = 1024;
      v14 = 1585;
      v15 = 1024;
      v16 = enabledCopy;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d enabled=%d", buf, 0x22u);
    }
  }
}

uint64_t __50__AVConferencePreview_setCinematicFramingEnabled___block_invoke(uint64_t a1)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v4[0] = @"previewCameraCinematicFraming";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  v4[1] = @"previewCameraCinematicFramingSet";
  v5[0] = v2;
  v5[1] = MEMORY[0x1E695E118];
  return [*(*(a1 + 32) + 8) sendMessageAsync:"previewCameraCinematicFraming" arguments:objc_msgSend(MEMORY[0x1E695DF20] reply:{"dictionaryWithObjects:forKeys:count:", v5, v4, 2), 0}];
}

- (void)notifyCenterStageEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v17 = *MEMORY[0x1E69E9840];
  avConferencePreviewQueue = self->avConferencePreviewQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__AVConferencePreview_notifyCenterStageEnabled___block_invoke;
  v7[3] = &unk_1E85F37A0;
  enabledCopy2 = enabled;
  v7[4] = self;
  dispatch_async(avConferencePreviewQueue, v7);
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v10 = v5;
      v11 = 2080;
      v12 = "[AVConferencePreview notifyCenterStageEnabled:]";
      v13 = 1024;
      v14 = 1601;
      v15 = 1024;
      v16 = enabledCopy;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d enabled=%d", buf, 0x22u);
    }
  }
}

uint64_t __48__AVConferencePreview_notifyCenterStageEnabled___block_invoke(uint64_t a1)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v4[0] = @"previewCameraCinematicFraming";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  v4[1] = @"previewCameraCinematicFramingSet";
  v5[0] = v2;
  v5[1] = MEMORY[0x1E695E110];
  return [*(*(a1 + 32) + 8) sendMessageAsync:"previewCameraCinematicFraming" arguments:objc_msgSend(MEMORY[0x1E695DF20] reply:{"dictionaryWithObjects:forKeys:count:", v5, v4, 2), 0}];
}

- (void)setMultiCamEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v14 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315906;
      v7 = v4;
      v8 = 2080;
      v9 = "[AVConferencePreview setMultiCamEnabled:]";
      v10 = 1024;
      v11 = 1620;
      v12 = 1024;
      v13 = enabledCopy;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d enabled=%d", &v6, 0x22u);
    }
  }
}

- (void)setMultiCamSubviewPosition:(CGRect)position
{
  height = position.size.height;
  width = position.size.width;
  y = position.origin.y;
  x = position.origin.x;
  v17 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v18.origin.x = x;
      v18.origin.y = y;
      v18.size.width = width;
      v18.size.height = height;
      v9 = 136315906;
      v10 = v7;
      v11 = 2080;
      v12 = "[AVConferencePreview setMultiCamSubviewPosition:]";
      v13 = 1024;
      v14 = 1624;
      v15 = 2112;
      v16 = NSStringFromRect(v18);
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d subviewRect=%@", &v9, 0x26u);
    }
  }
}

uint64_t ___AVConferencePreview_DidReceiveFirstPreviewFrameFromCamera_block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [VideoAttributes videoAttributeCameraForCameraUID:*(a1 + 32)];
  if (objc_opt_respondsToSelector())
  {
    MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVConferencePreview-didReceiveFirstPreviewFrameFromCamera");
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        v5 = *(a1 + 40);
        v12 = 136316162;
        v13 = v3;
        v14 = 2080;
        v15 = "_AVConferencePreview_DidReceiveFirstPreviewFrameFromCamera_block_invoke";
        v16 = 1024;
        v17 = 202;
        v18 = 2048;
        v19 = v5;
        v20 = 2112;
        v21 = v6;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d @:@ AVConferencePreview-didReceiveFirstPreviewFrameFromCamera (%p) cameraUID=%@", &v12, 0x30u);
      }
    }

    [*(*(a1 + 40) + 96) didReceiveFirstPreviewFrameFromCamera:v2];
  }

  result = objc_opt_respondsToSelector();
  if (result)
  {
    MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVConferencePreview-didReceiveFirstPreviewFrameFromCameraUniqueID");
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        v10 = *(a1 + 40);
        v12 = 136316162;
        v13 = v8;
        v14 = 2080;
        v15 = "_AVConferencePreview_DidReceiveFirstPreviewFrameFromCamera_block_invoke";
        v16 = 1024;
        v17 = 206;
        v18 = 2048;
        v19 = v10;
        v20 = 2112;
        v21 = v11;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d @:@ AVConferencePreview-didReceiveFirstPreviewFrameFromCameraUniqueID (%p) cameraUID=%@", &v12, 0x30u);
      }
    }

    return [*(*(a1 + 40) + 96) didReceiveFirstPreviewFrameFromCameraUniqueID:*(a1 + 32)];
  }

  return result;
}

- (void)connectLayer:(id)layer layerHost:(id)host withContextId:(unsigned int)id
{
  v25 = *MEMORY[0x1E69E9840];
  if (host)
  {
    v5 = *&id;
    if ([host superlayer] == layer)
    {
      if ([host contextId] != v5)
      {
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __60__AVConferencePreview_connectLayer_layerHost_withContextId___block_invoke;
        v11[3] = &unk_1E85F38B8;
        v11[4] = host;
        v12 = v5;
        dispatch_async(MEMORY[0x1E69E96A0], v11);
      }
    }

    else
    {
      [(AVConferencePreview *)self createPreviewCALayerHostForRootLayer:layer withContextId:v5 front:self->_caLayerHostFront == host];
    }

    [layer bounds];
    [(AVConferencePreview *)self setBounds:host forLayerHost:?];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v14 = v9;
        v15 = 2080;
        v16 = "[AVConferencePreview connectLayer:layerHost:withContextId:]";
        v17 = 1024;
        v18 = 390;
        v19 = 1024;
        v20 = v5;
        v21 = 2048;
        layerCopy = layer;
        v23 = 2048;
        hostCopy = host;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "AVConferencePreview [%s] %s:%d Connected contextId=%u to layer=%p layerHost=%p", buf, 0x36u);
      }
    }
  }
}

- (BOOL)setRootPreviewLayer:(id)layer front:(BOOL)front
{
  v38 = *MEMORY[0x1E69E9840];
  if (front)
  {
    v5 = 24;
  }

  else
  {
    v5 = 32;
  }

  v6 = *(&self->super.isa + v5);
  if (v6 != layer)
  {
    frontCopy = front;
    v9 = 48;
    if (front)
    {
      v9 = 40;
    }

    [(AVConferencePreview *)self cleanupPreviewLayerHost:self + v9];
    v10 = *(&self->super.isa + v5);
    *(&self->super.isa + v5) = layer;

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v26 = 136316674;
          v27 = v12;
          v28 = 2080;
          OUTLINED_FUNCTION_5_9();
          v29 = 979;
          v30 = 2048;
          layerCopy = layer;
          v32 = v14;
          *v33 = frontCopy;
          *&v33[4] = 2048;
          *&v33[6] = v15;
          *&v33[14] = 2048;
          *&v33[16] = v16;
          v17 = "AVConferencePreview [%s] %s:%d rootLayer=%p front=%d caLayerFront=%p caLayerBack=%p ";
          v18 = v13;
          v19 = 64;
LABEL_17:
          _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, v17, &v26, v19);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v11 = [(AVConferencePreview *)self performSelector:sel_logPrefix];
      }

      else
      {
        v11 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v20 = VRTraceErrorLogLevelToCSTR();
        v21 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v26 = 136317186;
          v27 = v20;
          v28 = 2080;
          OUTLINED_FUNCTION_5_9();
          v29 = 979;
          v30 = 2112;
          layerCopy = v11;
          v32 = 2048;
          *v33 = self;
          *&v33[8] = 2048;
          *&v33[10] = layer;
          *&v33[18] = v22;
          *&v33[20] = frontCopy;
          v34 = 2048;
          v35 = v23;
          v36 = 2048;
          v37 = v24;
          v17 = "AVConferencePreview [%s] %s:%d %@(%p) rootLayer=%p front=%d caLayerFront=%p caLayerBack=%p ";
          v18 = v21;
          v19 = 84;
          goto LABEL_17;
        }
      }
    }
  }

  return v6 != layer;
}

- (void)cleanupPreviewLayerHost:(id *)host
{
  if (*host)
  {
    [*host removeFromSuperlayer];

    *host = 0;
  }
}

void __63__AVConferencePreview_didReceiveErrorFromCameraUniqueID_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_2();
  [*(v0 + 40) UTF8String];
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_7_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, v6);
}

void __38__AVConferencePreview_didGetSnapshot___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __59__AVConferencePreview_cameraDidBecomeAvailableForUniqueID___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __71__AVConferencePreview_cameraDidBecomeInterruptedForForUniqueID_reason___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)applyTransform:forLayer:.cold.1()
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v3 = v0;
  v4 = "[AVConferencePreview applyTransform:forLayer:]";
  v5 = 1024;
  v6 = 345;
  v7 = 2048;
  v8 = 0;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, "AVConferencePreview [%s] %s:%d Invalid layer: layer=%p", v2, 0x26u);
}

void __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_16_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

void __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_84_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_5_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_5_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_114_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __61__AVConferencePreview_registerBlocksForDelegateNotifications__block_invoke_114_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)isPreviewRunning
{
  OUTLINED_FUNCTION_8_6(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)isCameraZoomAvailable
{
  OUTLINED_FUNCTION_8_6(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)currentZoomFactor
{
  OUTLINED_FUNCTION_8_6(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)maxZoomFactor
{
  OUTLINED_FUNCTION_8_6(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __48__AVConferencePreview_setLocalVideoLayer_front___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)newXPCObjectForFenceHandle:(uint64_t)a1 forLayerHost:.cold.1(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_16_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_7_3();
      goto LABEL_11;
    }
  }
}

- (void)setBounds:forLayerHost:.cold.1()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_18_2();
  if (objc_opt_class() == v2)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_16_0();
LABEL_11:
    _os_log_error_impl(v3, v4, v5, v6, v7, v8);
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_22_8();
      OUTLINED_FUNCTION_7_3();
      goto LABEL_11;
    }
  }

LABEL_9:
  *v0 = v1;
  OUTLINED_FUNCTION_39_0();
}

- (void)setBounds:forLayerHost:.cold.2()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_16_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_39_0();
}

- (void)setBounds:forLayerHost:.cold.3()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_16_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_39_0();
}

- (void)createPreviewCALayerHostForRootLayer:withContextId:front:.cold.1()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_18_2();
  if (objc_opt_class() == v2)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_16_0();
LABEL_11:
    _os_log_error_impl(v3, v4, v5, v6, v7, v8);
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_22_8();
      OUTLINED_FUNCTION_7_3();
      goto LABEL_11;
    }
  }

LABEL_9:
  *v0 = v1;
  OUTLINED_FUNCTION_39_0();
}

- (void)createPreviewCALayerHostForRootLayer:withContextId:front:.cold.2()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_16_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_39_0();
}

- (void)createPreviewCALayerHostForRootLayer:withContextId:front:.cold.3()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_16_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_39_0();
}

void __52__AVConferencePreview_setLocalVideoLayerHost_front___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __52__AVConferencePreview_setLocalVideoLayerHost_front___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __52__AVConferencePreview_setLocalVideoLayerHost_front___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __52__AVConferencePreview_setLocalVideoLayerHost_front___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)setLocalCamera:.cold.1()
{
  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v4 = v0;
  v5 = "[AVConferencePreview setLocalCamera:]";
  v6 = 1024;
  v7 = 1213;
  v8 = 1024;
  v9 = v1;
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, "AVConferencePreview [%s] %s:%d ---- STOP! ---- setLocalCamera is deprecated! Use setLocalCameraWithUID instead! AVConferencePreview setLocalCamera %u", v3, 0x22u);
}

- (void)setLocalCameraWithUID:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

@end