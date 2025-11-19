@interface VCAudioPowerSpectrumSource
- (VCAudioPowerSpectrumSource)initWithStreamToken:(int64_t)a3 delegate:(id)a4;
- (void)cleanupAudioPowerSpectrumSinks;
- (void)cleanupQueue:(opaqueCMSimpleQueue *)a3;
- (void)dealloc;
- (void)invalidate;
@end

@implementation VCAudioPowerSpectrumSource

- (VCAudioPowerSpectrumSource)initWithStreamToken:(int64_t)a3 delegate:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = VCAudioPowerSpectrumSource;
  v6 = [(VCObject *)&v16 init];
  if (v6)
  {
    if (objc_opt_class() == v6)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_13;
      }

      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *buf = 136316162;
      v18 = v8;
      v19 = 2080;
      v20 = "[VCAudioPowerSpectrumSource initWithStreamToken:delegate:]";
      v21 = 1024;
      v22 = 35;
      v23 = 2048;
      v24 = a3;
      v25 = 2048;
      v26 = a4;
      v10 = " [%s] %s:%d streamToken=%ld delegate=%p";
      v11 = v9;
      v12 = 48;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [(VCAudioPowerSpectrumSource *)v6 performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_13;
      }

      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *buf = 136316674;
      v18 = v13;
      v19 = 2080;
      v20 = "[VCAudioPowerSpectrumSource initWithStreamToken:delegate:]";
      v21 = 1024;
      v22 = 35;
      v23 = 2112;
      v24 = v7;
      v25 = 2048;
      v26 = v6;
      v27 = 2048;
      v28 = a3;
      v29 = 2048;
      v30 = a4;
      v10 = " [%s] %s:%d %@(%p) streamToken=%ld delegate=%p";
      v11 = v14;
      v12 = 68;
    }

    _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
LABEL_13:
    v6->_streamToken = a3;
    objc_storeWeak(&v6->_realtimeContext.powerSpectrumSourceDelegate, a4);
    VCSingleLinkedListInitialize(&v6->_realtimeContext, _VCAudioPowerSpectrumSource_CompareListEntries);
    CMSimpleQueueCreate(*MEMORY[0x1E695E480], 32, &v6->_realtimeContext.eventQueue);
  }

  return v6;
}

- (void)dealloc
{
  v26 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        streamToken = self->_streamToken;
        *buf = 136315906;
        v15 = v4;
        v16 = 2080;
        v17 = "[VCAudioPowerSpectrumSource dealloc]";
        v18 = 1024;
        v19 = 45;
        v20 = 2048;
        v21 = streamToken;
        v7 = " [%s] %s:%d streamToken=%ld";
        v8 = v5;
        v9 = 38;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCAudioPowerSpectrumSource *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = self->_streamToken;
        *buf = 136316418;
        v15 = v10;
        v16 = 2080;
        v17 = "[VCAudioPowerSpectrumSource dealloc]";
        v18 = 1024;
        v19 = 45;
        v20 = 2112;
        v21 = v3;
        v22 = 2048;
        v23 = self;
        v24 = 2048;
        v25 = v12;
        v7 = " [%s] %s:%d %@(%p) streamToken=%ld";
        v8 = v11;
        v9 = 58;
        goto LABEL_11;
      }
    }
  }

  [(VCAudioPowerSpectrumSource *)self cleanupAudioPowerSpectrumSinks];
  [(VCAudioPowerSpectrumSource *)self cleanupQueue:&self->_realtimeContext.eventQueue];
  objc_storeWeak(&self->_realtimeContext.powerSpectrumSourceDelegate, 0);
  v13.receiver = self;
  v13.super_class = VCAudioPowerSpectrumSource;
  [(VCObject *)&v13 dealloc];
}

- (void)invalidate
{
  v17 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        streamToken = self->_streamToken;
        *v13 = 136315906;
        *&v13[4] = v4;
        *&v13[12] = 2080;
        *&v13[14] = "[VCAudioPowerSpectrumSource invalidate]";
        *&v13[22] = 1024;
        LODWORD(v14) = 53;
        WORD2(v14) = 2048;
        *(&v14 + 6) = streamToken;
        v7 = " [%s] %s:%d streamToken=%ld";
        v8 = v5;
        v9 = 38;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, v13, v9);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCAudioPowerSpectrumSource *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = self->_streamToken;
        *v13 = 136316418;
        *&v13[4] = v10;
        *&v13[12] = 2080;
        *&v13[14] = "[VCAudioPowerSpectrumSource invalidate]";
        *&v13[22] = 1024;
        LODWORD(v14) = 53;
        WORD2(v14) = 2112;
        *(&v14 + 6) = v3;
        HIWORD(v14) = 2048;
        v15 = self;
        LOWORD(v16) = 2048;
        *(&v16 + 2) = v12;
        v7 = " [%s] %s:%d %@(%p) streamToken=%ld";
        v8 = v11;
        v9 = 58;
        goto LABEL_11;
      }
    }
  }

  [(VCAudioPowerSpectrumSource *)self cleanupAudioPowerSpectrumSinks:*v13];
  [(VCAudioPowerSpectrumSource *)self cleanupQueue:&self->_realtimeContext.eventQueue];
  objc_storeWeak(&self->_realtimeContext.powerSpectrumSourceDelegate, 0);
}

- (void)cleanupQueue:(opaqueCMSimpleQueue *)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = *a3;
    if (*a3)
    {
      while (1)
      {
        v5[0] = CMSimpleQueueDequeue(v4);
        if (!v5[0])
        {
          break;
        }

        VCAudioPowerSpectrumSource_FreeClient(v5);
        v4 = *a3;
      }

      if (*a3)
      {
        CFRelease(*a3);
      }

      *a3 = 0;
    }
  }
}

- (void)cleanupAudioPowerSpectrumSinks
{
  v5 = *MEMORY[0x1E69E9840];
  p_realtimeContext = &self->_realtimeContext;
  while (1)
  {
    v4 = VCSingleLinkedListPop(p_realtimeContext);
    if (!v4)
    {
      break;
    }

    VCAudioPowerSpectrumSource_FreeClient(&v4);
    v3 = MEMORY[0x1E1289F20](p_realtimeContext + 5);
    [v3 audioPowerSpectrumSinkDidUnregister];
    if (v3)
    {
      CFRelease(v3);
    }
  }
}

@end