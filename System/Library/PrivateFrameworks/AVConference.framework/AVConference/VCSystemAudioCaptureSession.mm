@interface VCSystemAudioCaptureSession
- (BOOL)createAudioBufferPool;
- (BOOL)setupAudioIOWithConfig:(id *)config;
- (BOOL)start;
- (BOOL)stop;
- (VCSystemAudioCaptureSession)initWithConfiguration:(id *)configuration;
- (void)cleanupQueue:(opaqueCMSimpleQueue *)queue;
- (void)createAudioBufferPool;
- (void)dealloc;
@end

@implementation VCSystemAudioCaptureSession

- (VCSystemAudioCaptureSession)initWithConfiguration:(id *)configuration
{
  v26 = *MEMORY[0x1E69E9840];
  if (!configuration)
  {
    [VCSystemAudioCaptureSession initWithConfiguration:];
LABEL_21:
    v14 = *buf;
    goto LABEL_14;
  }

  v16.receiver = self;
  v16.super_class = VCSystemAudioCaptureSession;
  v4 = [(VCSystemAudioCaptureSession *)&v16 init];
  if (!v4)
  {
    v14 = 0;
LABEL_14:

    return 0;
  }

  v5 = v4;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v6;
      v18 = 2080;
      v19 = "[VCSystemAudioCaptureSession initWithConfiguration:]";
      v20 = 1024;
      v21 = 44;
      v22 = 2048;
      v23 = v5;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p", buf, 0x26u);
    }
  }

  pthread_mutex_init(&v5->_stateLock, 0);
  atomic_store(0, &v5->_shouldResetAudioBufferPool);
  v8 = *&configuration->var1.format.mSampleRate;
  v9 = *&configuration->var1.format.mBitsPerChannel;
  *&v5->_audioBasicDescription.mBytesPerPacket = *&configuration->var1.format.mBytesPerPacket;
  *&v5->_audioBasicDescription.mBitsPerChannel = v9;
  *&v5->_audioBasicDescription.mSampleRate = v8;
  v5->_audioBasicDescription.mChannelsPerFrame = 1;
  v5->_samplesPerFrame = configuration->var1.samplesPerFrame;
  if (![(VCSystemAudioCaptureSession *)v5 setupAudioIOWithConfig:configuration])
  {
    [VCSystemAudioCaptureSession initWithConfiguration:];
    goto LABEL_21;
  }

  v10 = *MEMORY[0x1E695E480];
  if (CMSimpleQueueCreate(*MEMORY[0x1E695E480], 10, &v5->_poolQueue))
  {
    [VCSystemAudioCaptureSession initWithConfiguration:];
    goto LABEL_21;
  }

  if (CMSimpleQueueCreate(v10, 11, &v5->_outputQueue))
  {
    [VCSystemAudioCaptureSession initWithConfiguration:];
    goto LABEL_21;
  }

  if (![(VCSystemAudioCaptureSession *)v5 createAudioBufferPool])
  {
    [VCSystemAudioCaptureSession initWithConfiguration:];
    goto LABEL_21;
  }

  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCSystemAudioCaptureSession-initialized");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      var6 = configuration->var6;
      *buf = 136316162;
      *&buf[4] = v11;
      v18 = 2080;
      v19 = "[VCSystemAudioCaptureSession initWithConfiguration:]";
      v20 = 1024;
      v21 = 59;
      v22 = 2048;
      v23 = v5;
      v24 = 2112;
      v25 = var6;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCSystemAudioCaptureSession-initialized (%p) %@", buf, 0x30u);
    }
  }

  return v5;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "[VCSystemAudioCaptureSession dealloc]";
      v10 = 1024;
      v11 = 70;
      v12 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p", buf, 0x26u);
    }
  }

  pthread_mutex_destroy(&self->_stateLock);

  [(VCSystemAudioCaptureSession *)self cleanupQueue:&self->_poolQueue];
  [(VCSystemAudioCaptureSession *)self cleanupQueue:&self->_outputQueue];
  v5.receiver = self;
  v5.super_class = VCSystemAudioCaptureSession;
  [(VCSystemAudioCaptureSession *)&v5 dealloc];
}

- (BOOL)setupAudioIOWithConfig:(id *)config
{
  v25 = *MEMORY[0x1E69E9840];
  mSampleRate = config->var1.format.mSampleRate;
  samplesPerFrame = config->var1.samplesPerFrame;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24 = v6;
  v23 = v6;
  v22 = v6;
  v21 = v6;
  v20 = v6;
  v11 = vrev64_s32(*&config->var2);
  v17 = v6;
  v18 = v6;
  v19 = v6;
  v16 = v6;
  v15 = v6;
  v14 = v6;
  v12 = v6;
  v13 = v6;
  var5 = config->var5;
  var4 = config->var4;
  LODWORD(v12) = 1;
  WORD2(v12) = 2;
  *&v13 = __PAIR64__(mSampleRate, var5);
  DWORD2(v13) = samplesPerFrame;
  BYTE12(v13) = 0;
  DWORD2(v14) = 2;
  WORD4(v16) = 0;
  WORD4(v22) = 0;
  *&v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"parent=%p", self, var4, *&v11, v12, 0, v13, 0, *(&v14 + 1), 0, 0, 0, *(&v16 + 1), 0, 0, 0, 0, 0, 0, 0, _VCSystemAudioCaptureSession_audioSink, self, 0, 0, 0, 0, *(&v22 + 1), 0, 0, v6, v25];
  BYTE8(v24) = 0;
  v8 = [[VCAudioIO alloc] initWithConfiguration:&var4];
  self->_audioIO = v8;
  return v8 != 0;
}

- (BOOL)start
{
  v15 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_stateLock);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCSystemAudioCaptureSession start]";
      v11 = 1024;
      v12 = 105;
      v13 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p", &v7, 0x26u);
    }
  }

  start = [(VCAudioIO *)self->_audioIO start];
  pthread_mutex_unlock(&self->_stateLock);
  return start == 0;
}

- (BOOL)stop
{
  v15 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_stateLock);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCSystemAudioCaptureSession stop]";
      v11 = 1024;
      v12 = 114;
      v13 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p", &v7, 0x26u);
    }
  }

  stop = [(VCAudioIO *)self->_audioIO stop];
  atomic_store(1u, &self->_shouldResetAudioBufferPool);
  pthread_mutex_unlock(&self->_stateLock);
  return stop == 0;
}

- (BOOL)createAudioBufferPool
{
  v3 = 0;
  v4 = 0;
  element[1] = *MEMORY[0x1E69E9840];
  while (1)
  {
    element[0] = 0xAAAAAAAAAAAAAAAALL;
    samplesPerFrame = self->_samplesPerFrame;
    v6 = *&self->_audioBasicDescription.mBytesPerPacket;
    *&v8.mSampleRate = *&self->_audioBasicDescription.mSampleRate;
    *&v8.mBytesPerPacket = v6;
    *&v8.mBitsPerChannel = *&self->_audioBasicDescription.mBitsPerChannel;
    if (!VCAudioBufferList_Allocate(&v8, samplesPerFrame, element))
    {
      [VCSystemAudioCaptureSession createAudioBufferPool];
      return v3;
    }

    VCAudioBufferList_Reset(element[0]);
    if (CMSimpleQueueEnqueue(self->_poolQueue, element[0]))
    {
      break;
    }

    v3 = v4++ > 8;
    if (v4 == 10)
    {
      return 1;
    }
  }

  [VCSystemAudioCaptureSession createAudioBufferPool];
  return v3;
}

- (void)cleanupQueue:(opaqueCMSimpleQueue *)queue
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (queue)
  {
    while (1)
    {
      v4[0] = CMSimpleQueueDequeue(*queue);
      if (!v4[0])
      {
        break;
      }

      VCAudioBufferList_Destroy(v4);
    }

    if (*queue)
    {
      CFRelease(*queue);
    }

    *queue = 0;
  }
}

- (void)initWithConfiguration:.cold.1()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (OUTLINED_FUNCTION_40())
      {
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_13_8(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to configure the audio IO", v2, v3, v4, v5, v12);
      }
    }

    else if (OUTLINED_FUNCTION_7_18())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_28(&dword_1DB56E000, v6, v7, " [%s] %s:%d Failed to configure the audio IO", v8, v9, v10, v11, v12);
    }
  }

  OUTLINED_FUNCTION_6_27();
}

- (void)initWithConfiguration:.cold.2()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (OUTLINED_FUNCTION_40())
      {
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_13_8(&dword_1DB56E000, v0, v1, " [%s] %s:%d could not create queue", v2, v3, v4, v5, v12);
      }
    }

    else if (OUTLINED_FUNCTION_7_18())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_28(&dword_1DB56E000, v6, v7, " [%s] %s:%d could not create queue", v8, v9, v10, v11, v12);
    }
  }

  OUTLINED_FUNCTION_6_27();
}

- (void)initWithConfiguration:.cold.3()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (OUTLINED_FUNCTION_40())
      {
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_13_8(&dword_1DB56E000, v0, v1, " [%s] %s:%d could not create queue", v2, v3, v4, v5, v12);
      }
    }

    else if (OUTLINED_FUNCTION_7_18())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_28(&dword_1DB56E000, v6, v7, " [%s] %s:%d could not create queue", v8, v9, v10, v11, v12);
    }
  }

  OUTLINED_FUNCTION_6_27();
}

- (void)initWithConfiguration:.cold.4()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (OUTLINED_FUNCTION_40())
      {
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_13_8(&dword_1DB56E000, v0, v1, " [%s] %s:%d could not audio buffers", v2, v3, v4, v5, v12);
      }
    }

    else if (OUTLINED_FUNCTION_7_18())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_28(&dword_1DB56E000, v6, v7, " [%s] %s:%d could not audio buffers", v8, v9, v10, v11, v12);
    }
  }

  OUTLINED_FUNCTION_6_27();
}

- (void)initWithConfiguration:.cold.5()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (OUTLINED_FUNCTION_40())
      {
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_13_8(&dword_1DB56E000, v0, v1, " [%s] %s:%d null configuration", v2, v3, v4, v5, v12);
      }
    }

    else if (OUTLINED_FUNCTION_7_18())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_28(&dword_1DB56E000, v6, v7, " [%s] %s:%d null configuration", v8, v9, v10, v11, v12);
    }
  }

  OUTLINED_FUNCTION_6_27();
}

- (void)createAudioBufferPool
{
  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_4_0();
        _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_4_0();
      _os_log_fault_impl(v4, v5, OS_LOG_TYPE_FAULT, v6, v7, 0x1Cu);
    }
  }
}

@end