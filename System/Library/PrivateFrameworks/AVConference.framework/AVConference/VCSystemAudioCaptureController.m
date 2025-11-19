@interface VCSystemAudioCaptureController
+ (BOOL)isValidConfiguration:(const tagVCSystemAudioCaptureControllerConfig *)a3;
+ (id)captureServerConfigForAudioConfig:(tagVCSystemAudioCaptureControllerConfig *)a3 forClient:(id)a4;
+ (int)captureSourceForSystemAudioCaptureControllerConfig:(tagVCSystemAudioCaptureControllerConfig *)a3;
+ (int)captureSourceForTypePreSpatialSessionType:(unsigned int)a3;
+ (int)captureSourceForTypeProcessID:(int)a3;
- (VCSystemAudioCaptureController)init;
- (VCSystemAudioCaptureController)initWithConfig:(const tagVCSystemAudioCaptureControllerConfig *)a3;
- (id)dispatchQueueNameWithConfig:(const tagVCSystemAudioCaptureControllerConfig *)a3;
- (void)dealloc;
- (void)didUpdateBasebandCodec:(const _VCRemoteCodecInfo *)a3;
- (void)handleAudioSessionMediaServicesWereResetNotification:(id)a3;
- (void)setupLogPrefixWithConfig:(const tagVCSystemAudioCaptureControllerConfig *)a3;
- (void)startClient:(id)a3;
- (void)stopClient:(id)a3;
- (void)updateClient:(id)a3 settings:(const tagVCAudioIOControllerClientSettings *)a4;
@end

@implementation VCSystemAudioCaptureController

- (VCSystemAudioCaptureController)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  DWORD1(v3[0]) = -1;
  return [(VCSystemAudioCaptureController *)self initWithConfig:v3];
}

- (VCSystemAudioCaptureController)initWithConfig:(const tagVCSystemAudioCaptureControllerConfig *)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = VCSystemAudioCaptureController;
  v4 = [(VCObject *)&v24 init];
  if (!v4)
  {
    return v4;
  }

  if (![VCSystemAudioCaptureController isValidConfiguration:a3])
  {
    [VCSystemAudioCaptureController initWithConfig:];
LABEL_26:

    return 0;
  }

  [v4 setupLogPrefixWithConfig:a3];
  if (objc_opt_class() == v4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v26 = v6;
        v27 = 2080;
        v28 = "[VCSystemAudioCaptureController initWithConfig:]";
        v29 = 1024;
        v30 = 53;
        v8 = " [%s] %s:%d ";
        v9 = v7;
        v10 = 28;
LABEL_13:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [v4 performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v26 = v11;
        v27 = 2080;
        v28 = "[VCSystemAudioCaptureController initWithConfig:]";
        v29 = 1024;
        v30 = 53;
        v31 = 2112;
        v32 = v5;
        v33 = 2048;
        v34 = v4;
        v8 = " [%s] %s:%d %@(%p) ";
        v9 = v12;
        v10 = 48;
        goto LABEL_13;
      }
    }
  }

  v13 = [v4 dispatchQueueNameWithConfig:a3];
  if (!v13)
  {
    [VCSystemAudioCaptureController initWithConfig:v4];
    goto LABEL_26;
  }

  v14 = v13;
  v15 = [(__CFString *)v13 UTF8String];
  CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(47);
  v17 = dispatch_queue_create_with_target_V2(v15, 0, CustomRootQueue);
  *(v4 + 21) = v17;
  if (!v17)
  {
    [(VCSystemAudioCaptureController *)v4 initWithConfig:v14];
    goto LABEL_26;
  }

  captureContext = a3->tapSettings.captureContext;
  if (captureContext)
  {
    CFRetain(captureContext);
  }

  excludedPids = a3->tapSettings.excludedPids;
  if (excludedPids)
  {
    CFRetain(excludedPids);
  }

  remoteDeviceInfo = a3->remoteDeviceInfo;
  v21 = *&a3->tapSettings.source;
  *(v4 + 200) = *&a3->tapSettings.tapType;
  *(v4 + 216) = v21;
  *(v4 + 29) = remoteDeviceInfo;
  v22 = [objc_alloc(MEMORY[0x1E6958460]) initAuxiliarySession];
  *(v4 + 24) = v22;
  if (!v22)
  {
    [VCSystemAudioCaptureController initWithConfig:];
    goto LABEL_26;
  }

  return v4;
}

- (void)dealloc
{
  v25 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v16 = v4;
        v17 = 2080;
        v18 = "[VCSystemAudioCaptureController dealloc]";
        v19 = 1024;
        v20 = 81;
        v6 = " [%s] %s:%d ";
        v7 = v5;
        v8 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCSystemAudioCaptureController *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v16 = v9;
        v17 = 2080;
        v18 = "[VCSystemAudioCaptureController dealloc]";
        v19 = 1024;
        v20 = 81;
        v21 = 2112;
        v22 = v3;
        v23 = 2048;
        v24 = self;
        v6 = " [%s] %s:%d %@(%p) ";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
  }

  captureContext = self->_configuration.tapSettings.captureContext;
  if (captureContext)
  {
    CFRelease(captureContext);
  }

  excludedPids = self->_configuration.tapSettings.excludedPids;
  if (excludedPids)
  {
    CFRelease(excludedPids);
  }

  v14.receiver = self;
  v14.super_class = VCSystemAudioCaptureController;
  [(VCObject *)&v14 dealloc];
}

+ (BOOL)isValidConfiguration:(const tagVCSystemAudioCaptureControllerConfig *)a3
{
  if (!a3)
  {
    +[VCSystemAudioCaptureController isValidConfiguration:];
    return v8;
  }

  tapType = a3->tapSettings.tapType;
  if (a3->tapSettings.tapType >= 3)
  {
    +[VCSystemAudioCaptureController isValidConfiguration:];
    return v7;
  }

  if (tapType == 2)
  {
    if (a3->tapSettings.captureContext)
    {
      +[VCSystemAudioCaptureController isValidConfiguration:];
      return v5;
    }
  }

  else if (tapType == 1 && a3->tapSettings.var0.audioProcessIdToTap)
  {
    +[VCSystemAudioCaptureController isValidConfiguration:];
    return v6;
  }

  return 1;
}

- (void)setupLogPrefixWithConfig:(const tagVCSystemAudioCaptureControllerConfig *)a3
{
  tapType = a3->tapSettings.tapType;
  if (a3->tapSettings.tapType == 2)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CaptureContext=%@ ", a3->tapSettings.captureContext];
  }

  else if (tapType == 1)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SessionType(pre-spatial)=%d ", a3->tapSettings.var0.sessionTypeToTap];
  }

  else
  {
    if (tapType)
    {
      return;
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PID=%d ", a3->tapSettings.var0.sessionTypeToTap];
  }

  [(VCObject *)self setLogPrefix:v5];
}

- (id)dispatchQueueNameWithConfig:(const tagVCSystemAudioCaptureControllerConfig *)a3
{
  v4 = [MEMORY[0x1E696AD60] stringWithString:@"com.apple.AVConference.systemAudioCaptureController"];
  v5 = v4;
  tapType = a3->tapSettings.tapType;
  if (a3->tapSettings.tapType == 2)
  {
    [v4 appendFormat:@".scene_id%@", a3->tapSettings.captureContext];
  }

  else if (tapType == 1)
  {
    [v4 appendFormat:@".session_type_%d", 1];
  }

  else if (!tapType)
  {
    [v4 appendFormat:@".pid_%d", a3->tapSettings.var0.sessionTypeToTap];
  }

  return v5;
}

+ (id)captureServerConfigForAudioConfig:(tagVCSystemAudioCaptureControllerConfig *)a3 forClient:(id)a4
{
  v18[2] = *MEMORY[0x1E69E9840];
  v16 = 0;
  v6 = *&a3->tapSettings.source;
  v14 = *&a3->tapSettings.tapType;
  v15 = v6;
  v7 = [a4 clientFormat];
  v12 = [a4 sinkIO];
  v13 = VCSystemAudioCaptureController_PushAudioSamples;
  v8 = [MEMORY[0x1E696B098] valueWithBytes:&v11 objCType:"{?={tagVCAudioFrameFormat={AudioStreamBasicDescription=dIIIIIIII}I}^v^?{tagVCSystemAudioCaptureTapSettings=I(?=iI)^{__CFString}I@}@}"];
  v17[0] = @"SystemAudioCaptureConfig";
  v17[1] = @"SystemAudioCaptureClient";
  v18[0] = v8;
  v18[1] = a4;
  v9 = [objc_msgSend(MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:{2), "mutableCopy"}];
  [v9 setObject:a3->remoteDeviceInfo forKeyedSubscript:@"SystemAudioRemoteDeviceInfo"];
  [v9 setObject:a3->tapSettings.excludedPids forKeyedSubscript:@"SystemAudioCaptureConfigExcludedPids"];
  return v9;
}

+ (int)captureSourceForTypePreSpatialSessionType:(unsigned int)a3
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return 7;
  }
}

+ (int)captureSourceForTypeProcessID:(int)a3
{
  if (a3 < 0xFFFFFFFD)
  {
    return 0;
  }

  else
  {
    return dword_1DBD486D8[a3 + 3];
  }
}

+ (int)captureSourceForSystemAudioCaptureControllerConfig:(tagVCSystemAudioCaptureControllerConfig *)a3
{
  if (a3->tapSettings.tapType == 1)
  {
    return [VCSystemAudioCaptureController captureSourceForTypePreSpatialSessionType:a3->tapSettings.var0.sessionTypeToTap];
  }

  if (a3->tapSettings.tapType)
  {
    return 0;
  }

  return [VCSystemAudioCaptureController captureSourceForTypeProcessID:a3->tapSettings.var0.sessionTypeToTap];
}

- (void)handleAudioSessionMediaServicesWereResetNotification:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        client = self->_client;
        *buf = 136316162;
        v18 = v6;
        v19 = 2080;
        v20 = "[VCSystemAudioCaptureController handleAudioSessionMediaServicesWereResetNotification:]";
        v21 = 1024;
        v22 = 198;
        v23 = 2112;
        v24 = a3;
        v25 = 2112;
        v26 = client;
        v9 = " [%s] %s:%d notification=%@, _client=%@";
        v10 = v7;
        v11 = 48;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCSystemAudioCaptureController *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = self->_client;
        *buf = 136316674;
        v18 = v12;
        v19 = 2080;
        v20 = "[VCSystemAudioCaptureController handleAudioSessionMediaServicesWereResetNotification:]";
        v21 = 1024;
        v22 = 198;
        v23 = 2112;
        v24 = v5;
        v25 = 2048;
        v26 = self;
        v27 = 2112;
        v28 = a3;
        v29 = 2112;
        v30 = v14;
        v9 = " [%s] %s:%d %@(%p) notification=%@, _client=%@";
        v10 = v13;
        v11 = 68;
        goto LABEL_11;
      }
    }
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__VCSystemAudioCaptureController_handleAudioSessionMediaServicesWereResetNotification___block_invoke;
  block[3] = &unk_1E85F3778;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __87__VCSystemAudioCaptureController_handleAudioSessionMediaServicesWereResetNotification___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  if (!*(v1 + 184) || *(v1 + 176) != 1)
  {
    goto LABEL_16;
  }

  v3 = [VCSystemAudioCaptureController captureServerConfigForAudioConfig:v1 + 200 forClient:?];
  v4 = [VCSystemAudioCaptureController captureSourceForSystemAudioCaptureControllerConfig:*v2 + 200];
  if (([+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")] & 1) == 0)
  {
    __87__VCSystemAudioCaptureController_handleAudioSessionMediaServicesWereResetNotification___block_invoke_cold_1(v2, 184);
    goto LABEL_5;
  }

  *(*v2 + 176) = [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
  if (*(*v2 + 176))
  {
    goto LABEL_5;
  }

  if (objc_opt_class() == *v2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v20 = *(*v2 + 23);
        v28 = 136315906;
        v29 = v18;
        v30 = 2080;
        v31 = "[VCSystemAudioCaptureController handleAudioSessionMediaServicesWereResetNotification:]_block_invoke";
        v32 = 1024;
        v33 = 208;
        v34 = 1024;
        LODWORD(v35) = v20;
        v21 = " [%s] %s:%d Failed to restart _client=%d";
        v22 = v19;
        v23 = 34;
LABEL_30:
        _os_log_error_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_ERROR, v21, &v28, v23);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v17 = [*v2 performSelector:sel_logPrefix];
    }

    else
    {
      v17 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v26 = *v2;
        v27 = *(*v2 + 23);
        v28 = 136316418;
        v29 = v24;
        v30 = 2080;
        v31 = "[VCSystemAudioCaptureController handleAudioSessionMediaServicesWereResetNotification:]_block_invoke";
        v32 = 1024;
        v33 = 208;
        v34 = 2112;
        v35 = v17;
        v36 = 2048;
        v37 = v26;
        v38 = 1024;
        v39 = v27;
        v21 = " [%s] %s:%d %@(%p) Failed to restart _client=%d";
        v22 = v25;
        v23 = 54;
        goto LABEL_30;
      }
    }
  }

LABEL_5:
  if (objc_opt_class() == *v2)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_16;
    }

    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    v8 = *(*v2 + 176);
    v28 = 136315906;
    v29 = v6;
    v30 = 2080;
    v31 = "[VCSystemAudioCaptureController handleAudioSessionMediaServicesWereResetNotification:]_block_invoke";
    v32 = 1024;
    v33 = 210;
    v34 = 1024;
    LODWORD(v35) = v8;
    v9 = " [%s] %s:%d _running=%d";
    v10 = v7;
    v11 = 34;
    goto LABEL_15;
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [*v2 performSelector:sel_logPrefix];
  }

  else
  {
    v5 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v14 = *v2;
      v15 = *(*v2 + 176);
      v28 = 136316418;
      v29 = v12;
      v30 = 2080;
      v31 = "[VCSystemAudioCaptureController handleAudioSessionMediaServicesWereResetNotification:]_block_invoke";
      v32 = 1024;
      v33 = 210;
      v34 = 2112;
      v35 = v5;
      v36 = 2048;
      v37 = v14;
      v38 = 1024;
      v39 = v15;
      v9 = " [%s] %s:%d %@(%p) _running=%d";
      v10 = v13;
      v11 = 54;
LABEL_15:
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, &v28, v11);
    }
  }

LABEL_16:
  result = VCDefaults_GetBoolValueForKey(@"notifyClientOnMediaServerDisconnection", 0);
  if (result)
  {
    return [objc_msgSend(*(*v2 + 23) "delegate")];
  }

  return result;
}

- (void)startClient:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v20 = v6;
        v21 = 2080;
        v22 = "[VCSystemAudioCaptureController startClient:]";
        v23 = 1024;
        v24 = 223;
        v8 = " [%s] %s:%d ";
        v9 = v7;
        v10 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCSystemAudioCaptureController *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v20 = v11;
        v21 = 2080;
        v22 = "[VCSystemAudioCaptureController startClient:]";
        v23 = 1024;
        v24 = 223;
        v25 = 2112;
        v26 = v5;
        v27 = 2048;
        v28 = self;
        v8 = " [%s] %s:%d %@(%p) ";
        v9 = v12;
        v10 = 48;
        goto LABEL_11;
      }
    }
  }

  if (a3)
  {
    dispatchQueue = self->_dispatchQueue;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __46__VCSystemAudioCaptureController_startClient___block_invoke;
    v18[3] = &unk_1E85F37F0;
    v18[4] = self;
    v18[5] = a3;
    dispatch_async(dispatchQueue, v18);
  }

  else if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCSystemAudioCaptureController startClient:v15];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v14 = [(VCSystemAudioCaptureController *)self performSelector:sel_logPrefix];
    }

    else
    {
      v14 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v20 = v16;
        v21 = 2080;
        v22 = "[VCSystemAudioCaptureController startClient:]";
        v23 = 1024;
        v24 = 226;
        v25 = 2112;
        v26 = v14;
        v27 = 2048;
        v28 = self;
        _os_log_error_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) nil client", buf, 0x30u);
      }
    }
  }
}

uint64_t __46__VCSystemAudioCaptureController_startClient___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = [VCSystemAudioCaptureController captureSourceForSystemAudioCaptureControllerConfig:*(a1 + 32) + 200];
  v3 = v2;
  v21 = 0u;
  memset(v20, 0, sizeof(v20));
  if (*(*(a1 + 32) + 240) == 1 && v2 == 5)
  {
    *&v20[0] = 0x40E7700000000000;
    *(v20 + 8) = xmmword_1DBD453C0;
    *(&v20[1] + 1) = 0x200000004;
    LODWORD(v21) = 32;
    DWORD2(v21) = 960;
    v5 = v20;
  }

  else
  {
    v5 = [*(a1 + 40) clientFormat];
  }

  [objc_msgSend(*(a1 + 40) "delegate")];
  v6 = *(a1 + 32);
  if (*(v6 + 176))
  {
    v12 = @"Client (%p) can not start system audio capture when already running";
    v13 = 32025;
  }

  else
  {
    *(*(a1 + 32) + 176) = [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
    v7 = *(a1 + 32);
    if (*(v7 + 176) == 1)
    {
      *(v7 + 184) = *(a1 + 40);
      v8 = [MEMORY[0x1E696AD88] defaultCenter];
      [v8 addObserver:*(a1 + 32) selector:sel_handleAudioSessionMediaServicesWereResetNotification_ name:*MEMORY[0x1E6958128] object:*(*(a1 + 32) + 192)];
      v9 = 0;
      v10 = 1;
      return [objc_msgSend(*(a1 + 40) "delegate")];
    }

    v12 = @"Client (%p) failed to start system audio capture";
    v13 = 32005;
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:v12, *(a1 + 40)];
  if (v10)
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __46__VCSystemAudioCaptureController_startClient___block_invoke_cold_1(v15, v10);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v14 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v14 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v18 = *(a1 + 32);
          v19 = [v10 UTF8String];
          *buf = 136316418;
          v23 = v16;
          v24 = 2080;
          v25 = "[VCSystemAudioCaptureController startClient:]_block_invoke";
          v26 = 1024;
          v27 = 264;
          v28 = 2112;
          v29 = v14;
          v30 = 2048;
          v31 = v18;
          v32 = 2080;
          v33 = v19;
          _os_log_error_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) %s", buf, 0x3Au);
        }
      }
    }

    v9 = [MEMORY[0x1E696ABC0] AVConferenceServiceError:v13 detailCode:0 description:v10];
    v10 = 0;
  }

  else
  {
    v9 = 0;
  }

  return [objc_msgSend(*(a1 + 40) "delegate")];
}

- (void)stopClient:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v20 = v6;
        v21 = 2080;
        v22 = "[VCSystemAudioCaptureController stopClient:]";
        v23 = 1024;
        v24 = 272;
        v8 = " [%s] %s:%d ";
        v9 = v7;
        v10 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCSystemAudioCaptureController *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v20 = v11;
        v21 = 2080;
        v22 = "[VCSystemAudioCaptureController stopClient:]";
        v23 = 1024;
        v24 = 272;
        v25 = 2112;
        v26 = v5;
        v27 = 2048;
        v28 = self;
        v8 = " [%s] %s:%d %@(%p) ";
        v9 = v12;
        v10 = 48;
        goto LABEL_11;
      }
    }
  }

  if (a3)
  {
    dispatchQueue = self->_dispatchQueue;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __45__VCSystemAudioCaptureController_stopClient___block_invoke;
    v18[3] = &unk_1E85F37F0;
    v18[4] = self;
    v18[5] = a3;
    dispatch_async(dispatchQueue, v18);
  }

  else if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCSystemAudioCaptureController stopClient:v15];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v14 = [(VCSystemAudioCaptureController *)self performSelector:sel_logPrefix];
    }

    else
    {
      v14 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v20 = v16;
        v21 = 2080;
        v22 = "[VCSystemAudioCaptureController stopClient:]";
        v23 = 1024;
        v24 = 275;
        v25 = 2112;
        v26 = v14;
        v27 = 2048;
        v28 = self;
        _os_log_error_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) nil client", buf, 0x30u);
      }
    }
  }
}

uint64_t __45__VCSystemAudioCaptureController_stopClient___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 176))
  {
    v2 = [MEMORY[0x1E696AD88] defaultCenter];
    [v2 removeObserver:*(a1 + 32) name:*MEMORY[0x1E6958128] object:*(*(a1 + 32) + 192)];
    *(*(a1 + 32) + 184) = 0;
    *(*(a1 + 32) + 176) = 0;
    if ([+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")])
    {
      v3 = 0;
      v4 = 1;
      return [objc_msgSend(*(a1 + 40) "delegate")];
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Client (%p) error stopping system audio capture", *(a1 + 40)];
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Client (%p) can not stop system audio capture when not running", *(a1 + 40)];
  }

  v3 = v5;
  if (v5)
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __45__VCSystemAudioCaptureController_stopClient___block_invoke_cold_1(v7, v3);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v11 = *(a1 + 32);
          *buf = 136316418;
          v13 = v8;
          v14 = 2080;
          v15 = "[VCSystemAudioCaptureController stopClient:]_block_invoke";
          v16 = 1024;
          v17 = 300;
          v18 = 2112;
          v19 = v6;
          v20 = 2048;
          v21 = v11;
          v22 = 2080;
          v23 = [v3 UTF8String];
          _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) %s", buf, 0x3Au);
        }
      }
    }

    v3 = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32005 detailCode:0 description:v3];
  }

  v4 = 0;
  return [objc_msgSend(*(a1 + 40) "delegate")];
}

- (void)updateClient:(id)a3 settings:(const tagVCAudioIOControllerClientSettings *)a4
{
  v18 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 136315650;
        *&v15[4] = v8;
        *&v15[12] = 2080;
        *&v15[14] = "[VCSystemAudioCaptureController updateClient:settings:]";
        *&v15[22] = 1024;
        LODWORD(v16) = 308;
        v10 = " [%s] %s:%d not handled";
        v11 = v9;
        v12 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, v15, v12);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCSystemAudioCaptureController *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 136316162;
        *&v15[4] = v13;
        *&v15[12] = 2080;
        *&v15[14] = "[VCSystemAudioCaptureController updateClient:settings:]";
        *&v15[22] = 1024;
        LODWORD(v16) = 308;
        WORD2(v16) = 2112;
        *(&v16 + 6) = v7;
        HIWORD(v16) = 2048;
        v17 = self;
        v10 = " [%s] %s:%d %@(%p) not handled";
        v11 = v14;
        v12 = 48;
        goto LABEL_11;
      }
    }
  }

  [a3 setDirection:{a4->var0, *v15, *&v15[16], v16, v17}];
  [a3 setSpatialAudioDisabled:a4->var1];
  [a3 setIsVoiceActivityEnabled:a4->var2];
  [a3 setIsMediaPriorityEnabled:a4->var3];
}

- (void)didUpdateBasebandCodec:(const _VCRemoteCodecInfo *)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315650;
        v13 = v5;
        v14 = 2080;
        v15 = "[VCSystemAudioCaptureController didUpdateBasebandCodec:]";
        v16 = 1024;
        v17 = 322;
        v7 = " [%s] %s:%d not handled";
        v8 = v6;
        v9 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, &v12, v9);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [(VCSystemAudioCaptureController *)self performSelector:sel_logPrefix];
    }

    else
    {
      v4 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136316162;
        v13 = v10;
        v14 = 2080;
        v15 = "[VCSystemAudioCaptureController didUpdateBasebandCodec:]";
        v16 = 1024;
        v17 = 322;
        v18 = 2112;
        v19 = v4;
        v20 = 2048;
        v21 = self;
        v7 = " [%s] %s:%d %@(%p) not handled";
        v8 = v11;
        v9 = 48;
        goto LABEL_11;
      }
    }
  }
}

- (void)initWithConfig:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)initWithConfig:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      v2 = 63;
      _os_log_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d initAuxiliarySession failed", v1, 0x1Cu);
    }
  }
}

- (void)initWithConfig:(void *)a1 .cold.3(void *a1, __CFString *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      return;
    }

    OUTLINED_FUNCTION_1_0();
    v17 = v5;
    OUTLINED_FUNCTION_9_13();
    v18 = a2;
    OUTLINED_FUNCTION_2();
    v11 = 38;
LABEL_12:
    _os_log_error_impl(v6, v7, v8, v9, v10, v11);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [a1 performSelector:sel_logPrefix];
  }

  else
  {
    v4 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v15 = 136316418;
      v16 = v12;
      v17 = 2080;
      OUTLINED_FUNCTION_9_13();
      v18 = v4;
      v19 = 2048;
      v20 = a1;
      v21 = v14;
      v22 = a2;
      v6 = &dword_1DB56E000;
      v9 = " [%s] %s:%d %@(%p) Failed to generate dispatch queue. queueName=%@";
      v10 = &v15;
      v7 = v13;
      v8 = OS_LOG_TYPE_ERROR;
      v11 = 58;
      goto LABEL_12;
    }
  }
}

- (void)initWithConfig:(void *)a1 .cold.4(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
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

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    v13 = 55;
    OUTLINED_FUNCTION_9_0();
    v8 = 28;
LABEL_12:
    _os_log_error_impl(v3, v4, v5, v6, v7, v8);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 performSelector:sel_logPrefix];
  }

  else
  {
    v2 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v11 = 136316162;
      v12 = v9;
      OUTLINED_FUNCTION_0();
      v13 = 55;
      v14 = 2112;
      v15 = v2;
      v16 = 2048;
      v17 = a1;
      v3 = &dword_1DB56E000;
      v6 = " [%s] %s:%d %@(%p) Failed to generate dispatch queue name";
      v7 = &v11;
      v4 = v10;
      v5 = OS_LOG_TYPE_ERROR;
      v8 = 48;
      goto LABEL_12;
    }
  }
}

+ (void)isValidConfiguration:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (OUTLINED_FUNCTION_28())
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_2();
        _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
      }
    }

    else if (OUTLINED_FUNCTION_12_5())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24_0();
      _os_log_fault_impl(v5, v6, OS_LOG_TYPE_FAULT, v7, v8, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_18();
}

+ (void)isValidConfiguration:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (OUTLINED_FUNCTION_28())
      {
        OUTLINED_FUNCTION_9_2();
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_22();
        OUTLINED_FUNCTION_2();
        _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
      }
    }

    else if (OUTLINED_FUNCTION_12_5())
    {
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_24_0();
      _os_log_fault_impl(v5, v6, OS_LOG_TYPE_FAULT, v7, v8, 0x22u);
    }
  }

  OUTLINED_FUNCTION_18();
}

+ (void)isValidConfiguration:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (OUTLINED_FUNCTION_28())
      {
        OUTLINED_FUNCTION_9_2();
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_22();
        OUTLINED_FUNCTION_2();
        _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
      }
    }

    else if (OUTLINED_FUNCTION_12_5())
    {
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_24_0();
      _os_log_fault_impl(v5, v6, OS_LOG_TYPE_FAULT, v7, v8, 0x22u);
    }
  }

  OUTLINED_FUNCTION_18();
}

+ (void)isValidConfiguration:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (OUTLINED_FUNCTION_28())
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_2();
        _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
      }
    }

    else if (OUTLINED_FUNCTION_12_5())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24_0();
      _os_log_fault_impl(v5, v6, OS_LOG_TYPE_FAULT, v7, v8, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_18();
}

void __87__VCSystemAudioCaptureController_handleAudioSessionMediaServicesWereResetNotification___block_invoke_cold_1(id *a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == *a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_7();
    v20 = 206;
    v21 = v6;
    LODWORD(v22) = v7;
    v8 = " [%s] %s:%d Failed to stop _client=%d";
    v9 = v5;
    v10 = 34;
LABEL_12:
    _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, v8, &v15, v10);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [*a1 performSelector:sel_logPrefix];
  }

  else
  {
    v4 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v13 = *a1;
      v14 = *(*a1 + a2);
      v15 = 136316418;
      v16 = v11;
      v17 = 2080;
      v18 = "[VCSystemAudioCaptureController handleAudioSessionMediaServicesWereResetNotification:]_block_invoke";
      v19 = 1024;
      v20 = 206;
      v21 = 2112;
      v22 = v4;
      v23 = 2048;
      v24 = v13;
      v25 = 1024;
      v26 = v14;
      v8 = " [%s] %s:%d %@(%p) Failed to stop _client=%d";
      v9 = v12;
      v10 = 54;
      goto LABEL_12;
    }
  }
}

- (void)startClient:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 226;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d nil client", &v2, 0x1Cu);
}

void __46__VCSystemAudioCaptureController_startClient___block_invoke_cold_1(uint64_t a1, void *a2)
{
  [a2 UTF8String];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)stopClient:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 275;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d nil client", &v2, 0x1Cu);
}

void __45__VCSystemAudioCaptureController_stopClient___block_invoke_cold_1(uint64_t a1, void *a2)
{
  [a2 UTF8String];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

@end