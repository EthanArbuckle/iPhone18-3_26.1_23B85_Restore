@interface VCAudioHALPluginMockAudioInject
- (BOOL)start;
- (BOOL)stop;
- (VCAudioHALPluginMockAudioInject)initWithConfig:(tagVCAudioHALPluginConfiguration *)a3;
- (void)dealloc;
- (void)injectAudioCallbacks;
- (void)invalidate;
@end

@implementation VCAudioHALPluginMockAudioInject

- (VCAudioHALPluginMockAudioInject)initWithConfig:(tagVCAudioHALPluginConfiguration *)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v35.receiver = self;
  v35.super_class = VCAudioHALPluginMockAudioInject;
  v4 = [(VCAudioHALPluginMockAudioInject *)&v35 init];
  if (!v4)
  {
    mSampleRate = 0.0;
LABEL_11:

    v11 = v4;
    v4 = 0;
    goto LABEL_28;
  }

  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAudioHALPluginMockAudioInject-init");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.mSampleRate) = 136315906;
      *(&buf.mSampleRate + 4) = v5;
      LOWORD(buf.mFormatFlags) = 2080;
      *(&buf.mFormatFlags + 2) = "[VCAudioHALPluginMockAudioInject initWithConfig:]";
      HIWORD(buf.mFramesPerPacket) = 1024;
      buf.mBytesPerFrame = 36;
      LOWORD(buf.mChannelsPerFrame) = 2048;
      *(&buf.mChannelsPerFrame + 2) = v4;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAudioHALPluginMockAudioInject-init (%p)", &buf, 0x26u);
    }
  }

  if (!a3)
  {
    [(VCAudioHALPluginMockAudioInject *)v4 initWithConfig:?];
LABEL_33:
    mSampleRate = buf.mSampleRate;
    goto LABEL_11;
  }

  v7 = *&a3->sinkFormat.format.mSampleRate;
  v8 = *&a3->sinkFormat.format.mBytesPerPacket;
  *(v4 + 40) = *&a3->sinkFormat.format.mBitsPerChannel;
  *(v4 + 24) = v8;
  *(v4 + 8) = v7;
  *(v4 + 7) = a3->sinkContext;
  *(v4 + 8) = a3->sinkProc;
  *(v4 + 32) = 3;
  if (![VCDefaults BOOLeanValueForKey:@"forceEnableAudioHALPluginMockInput" defaultValue:0])
  {
    v11 = 0;
    goto LABEL_28;
  }

  if (objc_opt_class() == v4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.mSampleRate) = 136315650;
        *(&buf.mSampleRate + 4) = v12;
        LOWORD(buf.mFormatFlags) = 2080;
        *(&buf.mFormatFlags + 2) = "[VCAudioHALPluginMockAudioInject initWithConfig:]";
        HIWORD(buf.mFramesPerPacket) = 1024;
        buf.mBytesPerFrame = 44;
        v14 = " [%s] %s:%d Using AudioHALPlugin mock input for testing";
        v15 = v13;
        v16 = 28;
LABEL_20:
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, &buf, v16);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [v4 performSelector:sel_logPrefix];
    }

    else
    {
      v9 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.mSampleRate) = 136316162;
        *(&buf.mSampleRate + 4) = v17;
        LOWORD(buf.mFormatFlags) = 2080;
        *(&buf.mFormatFlags + 2) = "[VCAudioHALPluginMockAudioInject initWithConfig:]";
        HIWORD(buf.mFramesPerPacket) = 1024;
        buf.mBytesPerFrame = 44;
        LOWORD(buf.mChannelsPerFrame) = 2112;
        *(&buf.mChannelsPerFrame + 2) = v9;
        HIWORD(buf.mReserved) = 2048;
        v37 = v4;
        v14 = " [%s] %s:%d %@(%p) Using AudioHALPlugin mock input for testing";
        v15 = v18;
        v16 = 48;
        goto LABEL_20;
      }
    }
  }

  v11 = objc_alloc_init(VCAudioInjectorConfig);
  v19 = *&a3->sinkFormat.format.mBytesPerPacket;
  *&buf.mSampleRate = *&a3->sinkFormat.format.mSampleRate;
  *&buf.mBytesPerPacket = v19;
  *&buf.mBitsPerChannel = *&a3->sinkFormat.format.mBitsPerChannel;
  [(VCAudioInjectorConfig *)v11 setAudioFormat:&buf];
  [(VCAudioInjectorConfig *)v11 setSineWaveFrequencyHz:440];
  if ([(VCAudioInjectorConfig *)v11 isValid])
  {
    v20 = [[VCAudioInjector alloc] initWithConfig:v11];
    *(v4 + 19) = v20;
    if (!v20)
    {
      [VCAudioHALPluginMockAudioInject initWithConfig:];
      goto LABEL_33;
    }

    samplesPerFrame = a3->sinkFormat.samplesPerFrame;
    v22 = *&a3->sinkFormat.format.mBytesPerPacket;
    *&buf.mSampleRate = *&a3->sinkFormat.format.mSampleRate;
    *&buf.mBytesPerPacket = v22;
    *&buf.mBitsPerChannel = *&a3->sinkFormat.format.mBitsPerChannel;
    VCAudioBufferList_Allocate(&buf, samplesPerFrame, v4 + 20);
    if (!*(v4 + 20))
    {
      [VCAudioHALPluginMockAudioInject initWithConfig:];
      goto LABEL_33;
    }
  }

  v23 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:v4];
  LODWORD(v24) = a3->sinkFormat.samplesPerFrame;
  v25 = v24;
  if (v11)
  {
    [(VCAudioInjectorConfig *)v11 audioFormat];
    v26 = *&v32;
  }

  else
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    v26 = 0.0;
  }

  v27 = (v25 / v26 * 1000.0);
  v28 = [VCDispatchTimer alloc];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __50__VCAudioHALPluginMockAudioInject_initWithConfig___block_invoke;
  v31[3] = &unk_1E85F3778;
  v31[4] = v23;
  v29 = [(VCDispatchTimer *)v28 initWithIntervalMilliseconds:v27 callbackBlock:v31];
  *(v4 + 21) = v29;
  if (!v29)
  {
    [VCAudioHALPluginMockAudioInject initWithConfig:];
    goto LABEL_33;
  }

LABEL_28:

  return v4;
}

uint64_t __50__VCAudioHALPluginMockAudioInject_initWithConfig___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) strong];

  return [v1 injectAudioCallbacks];
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAudioHALPluginMockAudioInject-dealloc");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "[VCAudioHALPluginMockAudioInject dealloc]";
      v10 = 1024;
      v11 = 73;
      v12 = 2048;
      v13 = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAudioHALPluginMockAudioInject-dealloc (%p)", buf, 0x26u);
    }
  }

  VCAudioBufferList_Destroy(&self->_audioBufferList);
  v5.receiver = self;
  v5.super_class = VCAudioHALPluginMockAudioInject;
  [(VCAudioHALPluginMockAudioInject *)&v5 dealloc];
}

- (void)invalidate
{
  v13 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAudioHALPluginMockAudioInject-invalidate");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315906;
      v6 = v3;
      v7 = 2080;
      v8 = "[VCAudioHALPluginMockAudioInject invalidate]";
      v9 = 1024;
      v10 = 81;
      v11 = 2048;
      v12 = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAudioHALPluginMockAudioInject-invalidate (%p)", &v5, 0x26u);
    }
  }
}

- (BOOL)start
{
  v14 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAudioHALPluginMockAudioInject-start");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "[VCAudioHALPluginMockAudioInject start]";
      v10 = 1024;
      v11 = 85;
      v12 = 2048;
      v13 = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAudioHALPluginMockAudioInject-start (%p)", &v6, 0x26u);
    }
  }

  [(VCDispatchTimer *)self->_audioInjectTimer start];
  return 1;
}

- (BOOL)stop
{
  v14 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAudioHALPluginMockAudioInject-stop");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "[VCAudioHALPluginMockAudioInject stop]";
      v10 = 1024;
      v11 = 91;
      v12 = 2048;
      v13 = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAudioHALPluginMockAudioInject-stop (%p)", &v6, 0x26u);
    }
  }

  [(VCDispatchTimer *)self->_audioInjectTimer stop];
  return 1;
}

- (void)injectAudioCallbacks
{
  VCAudioInjector_InjectSamples(self->_audioInjector, self->_audioBufferList, 0, 0);
  AudioBufferList = VCAudioBufferList_GetAudioBufferList(self->_audioBufferList);
  LODWORD(v4) = self->_sinkFormat.samplesPerFrame;
  v5 = (self->_sinkFormat.format.mSampleRate * (v4 / self->_sinkFormat.format.mSampleRate));
  self->_audioTimestamp.mSampleTime = self->_audioTimestamp.mSampleTime + v5;
  CurrentHostTime = AudioGetCurrentHostTime();
  self->_audioSourceBuffer.data = *(AudioBufferList + 16);
  self->_audioTimestamp.mHostTime = CurrentHostTime;
  self->_audioSourceBuffer.dataByteSize = self->_sinkFormat.format.mBytesPerFrame * v5 * self->_sinkFormat.format.mChannelsPerFrame;
  sinkProc = self->_sinkProc;
  if (sinkProc)
  {
    sinkContext = self->_sinkContext;

    sinkProc(sinkContext);
  }
}

- (void)initWithConfig:.cold.1()
{
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
    OUTLINED_FUNCTION_2_7();
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
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_3_9();
      goto LABEL_11;
    }
  }

LABEL_9:
  *v0 = v1;
}

- (void)initWithConfig:.cold.2()
{
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
    OUTLINED_FUNCTION_2_7();
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
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_3_9();
      goto LABEL_11;
    }
  }

LABEL_9:
  *v0 = v1;
}

- (void)initWithConfig:.cold.3()
{
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
    OUTLINED_FUNCTION_2_7();
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
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_3_9();
      goto LABEL_11;
    }
  }

LABEL_9:
  *v0 = v1;
}

- (void)initWithConfig:(void *)a1 .cold.4(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_10;
    }

    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v12 = 136315650;
    v13 = v5;
    OUTLINED_FUNCTION_0();
    v14 = 37;
    v7 = " [%s] %s:%d invalid config";
    v8 = v6;
    v9 = 28;
LABEL_12:
    _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, v7, &v12, v9);
    goto LABEL_10;
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
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v12 = 136316162;
      v13 = v10;
      OUTLINED_FUNCTION_0();
      v14 = 37;
      v15 = 2112;
      v16 = v4;
      v17 = 2048;
      v18 = a1;
      v7 = " [%s] %s:%d %@(%p) invalid config";
      v8 = v11;
      v9 = 48;
      goto LABEL_12;
    }
  }

LABEL_10:
  *a2 = 0;
}

@end