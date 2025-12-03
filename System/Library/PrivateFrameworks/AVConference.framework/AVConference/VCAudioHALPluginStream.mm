@interface VCAudioHALPluginStream
- (VCAudioHALPluginStream)initWithDirection:(unsigned int)direction plugin:(id)plugin withConfig:(tagVCAudioHALPluginConfiguration *)config;
- (id)readInputBlock;
- (id)writeMixBlock;
- (void)dealloc;
- (void)invalidate;
- (void)startStream;
- (void)stopStream;
@end

@implementation VCAudioHALPluginStream

- (VCAudioHALPluginStream)initWithDirection:(unsigned int)direction plugin:(id)plugin withConfig:(tagVCAudioHALPluginConfiguration *)config
{
  v29 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = VCAudioHALPluginStream;
  v7 = [(ASDStream *)&v21 initWithDirection:*&direction withPlugin:?];
  if (!v7)
  {
    v18 = 0;
LABEL_11:

    return 0;
  }

  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAudioHALPluginStream-init");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v8;
      v23 = 2080;
      v24 = "[VCAudioHALPluginStream initWithDirection:plugin:withConfig:]";
      v25 = 1024;
      v26 = 29;
      v27 = 2048;
      v28 = v7;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAudioHALPluginStream-init (%p)", buf, 0x26u);
    }
  }

  if (!plugin)
  {
    [VCAudioHALPluginStream initWithDirection:v7 plugin:buf withConfig:?];
LABEL_17:
    v18 = *buf;
    goto LABEL_11;
  }

  if (!config)
  {
    [VCAudioHALPluginStream initWithDirection:v7 plugin:buf withConfig:?];
    goto LABEL_17;
  }

  mSampleRate = config->sinkFormat.format.mSampleRate;
  v12 = *&config->sinkFormat.format.mBytesPerPacket;
  v11 = *&config->sinkFormat.format.mBitsPerChannel;
  *(v7 + 280) = *&config->sinkFormat.format.mSampleRate;
  *(v7 + 296) = v12;
  *(v7 + 312) = v11;
  *(v7 + 41) = config->sinkContext;
  *(v7 + 42) = config->sinkProc;
  *(v7 + 100) = 3;
  v13 = [objc_alloc(MEMORY[0x1E698D500]) initWithSampleRate:*(v7 + 77) numChannels:1 commonPCMFormat:1 isInterleaved:mSampleRate];
  if (!v13)
  {
    [VCAudioHALPluginStream initWithDirection:v7 plugin:0 withConfig:buf];
    goto LABEL_17;
  }

  array = [MEMORY[0x1E695DF70] array];
  v15 = [v13 copy];
  if (!v15)
  {
    [VCAudioHALPluginStream initWithDirection:v7 plugin:v13 withConfig:buf];
    goto LABEL_17;
  }

  v16 = v15;
  [v15 setSampleRate:mSampleRate];
  [v16 setMinimumSampleRate:mSampleRate];
  [v16 setMaximumSampleRate:mSampleRate];
  [array addObject:v16];

  [v13 setSampleRate:mSampleRate];
  [v7 setPhysicalFormat:v13];
  [v7 setPhysicalFormats:array];
  v17 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:v7];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __62__VCAudioHALPluginStream_initWithDirection_plugin_withConfig___block_invoke;
  v20[3] = &unk_1E85F9270;
  v20[4] = v17;
  *(v7 + 53) = [v20 copy];

  return v7;
}

uint64_t __62__VCAudioHALPluginStream_initWithDirection_plugin_withConfig___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [*(a1 + 32) strong];
  if (!v7)
  {
    return 561214578;
  }

  *(v7 + 344) = *(a3 + 144);
  *(v7 + 352) = *(a3 + 24);
  *(v7 + 416) = *(v7 + 304) * a2 * *(v7 + 308);
  *(v7 + 408) = a4;
  v8 = *(v7 + 336);
  if (v8)
  {
    v8(*(v7 + 328), v7 + 408, v7 + 344, a2);
  }

  return 0;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAudioHALPluginStream-dealloc");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "[VCAudioHALPluginStream dealloc]";
      v10 = 1024;
      v11 = 72;
      v12 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAudioHALPluginStream-dealloc (%p)", buf, 0x26u);
    }
  }

  v5.receiver = self;
  v5.super_class = VCAudioHALPluginStream;
  [(VCAudioHALPluginStream *)&v5 dealloc];
}

- (void)invalidate
{
  v13 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAudioHALPluginStream-invalidate");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315906;
      v6 = v3;
      v7 = 2080;
      v8 = "[VCAudioHALPluginStream invalidate]";
      v9 = 1024;
      v10 = 78;
      v11 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAudioHALPluginStream-invalidate (%p)", &v5, 0x26u);
    }
  }

  [(VCAudioHALPluginStream *)self stopStream];
}

- (id)readInputBlock
{
  v14 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAudioHALPluginStream-readInputBlock");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "[VCAudioHALPluginStream readInputBlock]";
      v10 = 1024;
      v11 = 97;
      v12 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAudioHALPluginStream-readInputBlock (%p)", &v6, 0x26u);
    }
  }

  return 0;
}

- (id)writeMixBlock
{
  v14 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAudioHALPluginStream-writeMixBlock");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "[VCAudioHALPluginStream writeMixBlock]";
      v10 = 1024;
      v11 = 102;
      v12 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAudioHALPluginStream-writeMixBlock (%p)", &v6, 0x26u);
    }
  }

  return self->_writeMixBlockProcess;
}

- (void)startStream
{
  v14 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAudioHALPluginStream-startStream");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "[VCAudioHALPluginStream startStream]";
      v10 = 1024;
      v11 = 107;
      v12 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAudioHALPluginStream-startStream (%p)", buf, 0x26u);
    }
  }

  v5.receiver = self;
  v5.super_class = VCAudioHALPluginStream;
  [(ASDStream *)&v5 startStream];
}

- (void)stopStream
{
  v14 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAudioHALPluginStream-stopStream");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "[VCAudioHALPluginStream stopStream]";
      v10 = 1024;
      v11 = 112;
      v12 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAudioHALPluginStream-stopStream (%p)", buf, 0x26u);
    }
  }

  v5.receiver = self;
  v5.super_class = VCAudioHALPluginStream;
  [(ASDStream *)&v5 stopStream];
}

- (void)initWithDirection:(void *)a1 plugin:(uint64_t)a2 withConfig:(void *)a3 .cold.1(void *a1, uint64_t a2, void *a3)
{
  if (objc_opt_class() == a1)
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

    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_7();
LABEL_11:
    _os_log_error_impl(v6, v7, v8, v9, v10, v11);
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_3_9();
      goto LABEL_11;
    }
  }

LABEL_9:
  *a3 = a2;
}

- (void)initWithDirection:(void *)a1 plugin:(uint64_t)a2 withConfig:(void *)a3 .cold.2(void *a1, uint64_t a2, void *a3)
{
  if (objc_opt_class() == a1)
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

    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_7();
LABEL_11:
    _os_log_error_impl(v6, v7, v8, v9, v10, v11);
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_3_9();
      goto LABEL_11;
    }
  }

LABEL_9:
  *a3 = a2;
}

- (void)initWithDirection:(void *)a1 plugin:(void *)a2 withConfig:.cold.3(void *a1, void *a2)
{
  if (objc_opt_class() == a1)
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

    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v4, v5, v6, v7, v8, v9);
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  *a2 = 0;
}

- (void)initWithDirection:(void *)a1 plugin:(void *)a2 withConfig:.cold.4(void *a1, void *a2)
{
  if (objc_opt_class() == a1)
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

    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v4, v5, v6, v7, v8, v9);
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  *a2 = 0;
}

@end