@interface VCMediaRecorderLocal
- (BOOL)configureVideoRecording;
- (BOOL)registerForCameraCapture;
- (BOOL)startAudio;
- (VCMediaRecorderLocal)initWithStreamToken:(int64_t)a3 configuration:(id)a4 reportingAgent:(opaqueRTCReporting *)a5;
- (int)supportedVideoCodec;
- (tagVCAudioIOConfiguration)defaultAudioIOConfig;
- (void)cleanupSpatialAudio;
- (void)configureVideoRecording;
- (void)dealloc;
- (void)deregisterForCameraCapture;
- (void)invalidate;
- (void)setupSpatialAudio;
- (void)supportedVideoCodec;
@end

@implementation VCMediaRecorderLocal

- (VCMediaRecorderLocal)initWithStreamToken:(int64_t)a3 configuration:(id)a4 reportingAgent:(opaqueRTCReporting *)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = VCMediaRecorderLocal;
  v6 = [VCMediaRecorder initWithStreamToken:sel_initWithStreamToken_delegate_reportingAgent_ delegate:? reportingAgent:?];
  if (v6)
  {
    v6->_configuration = a4;
    v6->_audioSessionId = VCUniqueIDGenerator_GenerateID();
    v7 = [(VCMediaRecorderConfiguration *)v6->_configuration mediaAvailability];
    if ((v7 & 2) != 0)
    {
      [(VCMediaRecorder *)v6 setCapabilities:2];
      if (![(VCMediaRecorderLocal *)v6 configureVideoRecording])
      {
        [VCMediaRecorderLocal initWithStreamToken:configuration:reportingAgent:];
        goto LABEL_10;
      }

      if (![(VCMediaRecorderLocal *)v6 registerForCameraCapture])
      {
        [VCMediaRecorderLocal initWithStreamToken:configuration:reportingAgent:];
        goto LABEL_10;
      }

      MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCMediaRecorderLocal-init");
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v15 = v8;
          v16 = 2080;
          v17 = "[VCMediaRecorderLocal initWithStreamToken:configuration:reportingAgent:]";
          v18 = 1024;
          v19 = 38;
          v20 = 2048;
          v21 = v6;
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCMediaRecorderLocal-init (%p) video started", buf, 0x26u);
        }
      }
    }

    if (([(VCMediaRecorderConfiguration *)v6->_configuration mediaAvailability]& 1) != 0)
    {
      [(VCMediaRecorder *)v6 setCapabilities:2];
      [(VCMediaRecorderLocal *)v6 setupSpatialAudio];
      if (![(VCMediaRecorderLocal *)v6 startAudio])
      {
        [VCMediaRecorderLocal initWithStreamToken:configuration:reportingAgent:];
        goto LABEL_10;
      }

      MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCMediaRecorderLocal-init");
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v15 = v10;
          v16 = 2080;
          v17 = "[VCMediaRecorderLocal initWithStreamToken:configuration:reportingAgent:]";
          v18 = 1024;
          v19 = 46;
          v20 = 2048;
          v21 = v6;
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCMediaRecorderLocal-init (%p) audio started", buf, 0x26u);
        }
      }
    }

    else if ((v7 & 2) == 0)
    {
LABEL_10:

      return 0;
    }
  }

  return v6;
}

- (void)invalidate
{
  v14 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCMediaRecorderLocal;
  [(VCMediaRecorder *)&v5 invalidate];
  [(VCObject *)self reportingAgent];
  VCReporting_finalizeAggregation();
  [(VCMediaRecorderLocal *)self deregisterForCameraCapture];
  [(VCAudioIO *)self->_audioIO stop];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCMediaRecorderLocal-invalidate");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "[VCMediaRecorderLocal invalidate]";
      v10 = 1024;
      v11 = 62;
      v12 = 2048;
      v13 = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCMediaRecorderLocal-invalidate (%p)", buf, 0x26u);
    }
  }
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];

  [(VCMediaRecorderLocal *)self cleanupSpatialAudio];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCMediaRecorderLocal-dealloc");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "[VCMediaRecorderLocal dealloc]";
      v10 = 1024;
      v11 = 74;
      v12 = 2048;
      v13 = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCMediaRecorderLocal-dealloc (%p)", buf, 0x26u);
    }
  }

  v5.receiver = self;
  v5.super_class = VCMediaRecorderLocal;
  [(VCMediaRecorder *)&v5 dealloc];
}

- (tagVCAudioIOConfiguration)defaultAudioIOConfig
{
  IntValueForKey = VCDefaults_GetIntValueForKey(@"forceAudioSampleRate", 24000);
  v6 = (VCDefaults_GetDoubleValueForKey(@"forceAudioBlockSize", 0.02) * IntValueForKey);
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&retstr->var4 = v7;
  *&retstr->var8 = v7;
  *&retstr->var12 = v7;
  *&retstr->var14 = v7;
  *&retstr->var16 = v7;
  *&retstr->var19.delegate = v7;
  *&retstr->var19.clientContext = v7;
  *&retstr->var19.audioMachineLearningCoordinator = v7;
  *&retstr->var20.delegate = v7;
  *&retstr->var20.clientContext = v7;
  *&retstr->var20.audioMachineLearningCoordinator = v7;
  *&retstr->var21 = v7;
  audioSessionId = self->_audioSessionId;
  *&retstr->var24 = v7;
  *&retstr->var26 = v7;
  retstr->var0 = audioSessionId;
  *&retstr->var1 = xmmword_1DBD49BD0;
  *&retstr->var5 = 2;
  retstr->var7 = 0;
  retstr->var8 = [(VCMediaRecorderConfiguration *)self->_configuration clientPid];
  retstr->var9 = IntValueForKey;
  retstr->var10 = v6;
  retstr->var11 = 0;
  retstr->var12 = 0;
  retstr->var13 = 1;
  retstr->var15 = 0;
  retstr->var16 = 0;
  retstr->var14 = 0;
  *&retstr->var17 = 0;
  *&retstr->var19.delegate = 0u;
  *&retstr->var19.clientContext = 0u;
  *&retstr->var19.audioMachineLearningCoordinator = 0u;
  retstr->var20.delegate = 0;
  retstr->var20.clientCallback = _VCMediaRecorderLocal_PushAudioSamples;
  retstr->var20.clientContext = self;
  *&retstr->var20.captionsToken = 0u;
  *&retstr->var20.injector = 0u;
  *&retstr->var22 = 0;
  retstr->var24 = 0;
  retstr->var25 = 0;
  result = [MEMORY[0x1E696AEC0] stringWithFormat:@"parent=%p", self];
  retstr->var26 = result;
  retstr->var27 = 0;
  return result;
}

- (void)setupSpatialAudio
{
  v15 = *MEMORY[0x1E69E9840];
  if (+[VCHardwareSettings isSpatialAudioSupported])
  {
    v3 = [+[VCAudioManager sharedVoiceChatInstance](VCAudioManager "sharedVoiceChatInstance")];
    if (v3 < 0)
    {
      v4 = v3;
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v7 = 136315906;
          v8 = v5;
          v9 = 2080;
          v10 = "[VCMediaRecorderLocal setupSpatialAudio]";
          v11 = 1024;
          v12 = 112;
          v13 = 1024;
          v14 = v4;
          _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Failed to register for spatial audio. status=%08x", &v7, 0x22u);
        }
      }
    }
  }
}

- (void)cleanupSpatialAudio
{
  if (+[VCHardwareSettings isSpatialAudioSupported])
  {
    v3 = +[VCAudioManager sharedVoiceChatInstance];
    audioSessionId = self->_audioSessionId;

    [v3 unregisterAudioSessionId:audioSessionId];
  }
}

- (BOOL)startAudio
{
  v21 = *MEMORY[0x1E69E9840];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v19 = v3;
  v20 = v3;
  v17 = v3;
  v18 = v3;
  v15 = v3;
  v16 = v3;
  v13 = v3;
  v14 = v3;
  v11 = v3;
  v12 = v3;
  v9 = v3;
  v10 = v3;
  v7 = v3;
  v8 = v3;
  v6 = v3;
  if (self)
  {
    [(VCMediaRecorderLocal *)self defaultAudioIOConfig:v6];
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v6 = 0u;
  }

  v4 = [[VCAudioIO alloc] initWithConfiguration:&v6];
  self->_audioIO = v4;
  if (v4)
  {
    if ([(VCAudioIO *)v4 start])
    {

      self->_audioIO = 0;
      [(VCMediaRecorderLocal *)self cleanupSpatialAudio];
      LOBYTE(v4) = 0;
    }

    else
    {
      LOBYTE(v4) = 1;
    }
  }

  return v4;
}

- (BOOL)registerForCameraCapture
{
  v3 = +[VCVideoCaptureServer VCVideoCaptureServerSingleton];

  return [v3 registerForFrames:self];
}

- (void)deregisterForCameraCapture
{
  [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
  VCMediaRecorder_ClearHistoryBuffer(self);

  VCMediaRecorder_StopProcessingAllRequests(self);
}

- (BOOL)configureVideoRecording
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = VCVideoCaptureServer_CopyLocalVideoAttributes(+[VCVideoCaptureServer VCVideoCaptureServerSingleton]);
  if (v3)
  {
    v4 = [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
    if (v4)
    {
      v5 = v4;
      VCMediaRecorder_UpdateTargetScreenAttributes(self, v4);
      v6 = [(VCMediaRecorderLocal *)self supportedVideoCodec];
      if (v6 != 128)
      {
        [(VCMediaRecorder *)self setVideoCodec:v6];
        *&v7 = [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
        [(VCMediaRecorder *)self setFrameRate:v7];
        v8 = 1;
        goto LABEL_5;
      }

      [(VCMediaRecorderLocal *)v5 configureVideoRecording];
    }

    else
    {
      [(VCMediaRecorderLocal *)&v10 configureVideoRecording];
    }
  }

  else
  {
    [(VCMediaRecorderLocal *)&v10 configureVideoRecording];
  }

  v5 = v10;
  v8 = v11;
LABEL_5:

  if (!v8)
  {
    [(VCMediaRecorderLocal *)self deregisterForCameraCapture];
  }

  return v8;
}

- (int)supportedVideoCodec
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [+[VCVideoRuleCollectionsMediaRecorder sharedInstance](VCVideoRuleCollectionsMediaRecorder mediaRecorderVideoCodecs];
  if (v2)
  {
    if ([v2 containsObject:&unk_1F579A1D0] && +[VCHardwareSettings supportsHEVCEncoding](VCHardwareSettings, "supportsHEVCEncoding"))
    {
      v3 = 100;
    }

    else
    {
      v3 = 123;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315906;
        v8 = v4;
        v9 = 2080;
        v10 = "[VCMediaRecorderLocal supportedVideoCodec]";
        v11 = 1024;
        v12 = 204;
        v13 = 1024;
        v14 = v3;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Using video codec=%u", &v7, 0x22u);
      }
    }
  }

  else
  {
    [(VCMediaRecorderLocal *)&v7 supportedVideoCodec];
    return v7;
  }

  return v3;
}

- (void)initWithStreamToken:configuration:reportingAgent:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

- (void)initWithStreamToken:configuration:reportingAgent:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

- (void)initWithStreamToken:configuration:reportingAgent:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

- (void)configureVideoRecording
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_13_8(&dword_1DB56E000, v4, v5, " [%s] %s:%d Failed to get local video attributes", v6, v7, v8, v9, 2u);
    }
  }

  *a2 = 0;
  *a1 = 0;
}

- (void)supportedVideoCodec
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = 128;
}

@end