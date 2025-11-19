@interface VCAudioPowerSpectrumMeter
- (VCAudioPowerSpectrumMeter)initWithBinCount:(unsigned __int16)a3 refreshRate:(double)a4 delegate:(id)a5;
- (void)cleanUpEventQueue;
- (void)dealloc;
- (void)registerNewAudioPowerSpectrumForStreamToken:(id)a3 powerSpectrumKey:(id)a4 spectrumSource:(id)a5;
- (void)releaseAudioPowerSpectrumForStreamToken:(id)a3;
- (void)unregisterAllStreams;
@end

@implementation VCAudioPowerSpectrumMeter

- (VCAudioPowerSpectrumMeter)initWithBinCount:(unsigned __int16)a3 refreshRate:(double)a4 delegate:(id)a5
{
  v13 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = VCAudioPowerSpectrumMeter;
  v8 = [(VCObject *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_audioSpectrumBinCount = a3;
    objc_storeWeak(&v8->_realtimeContext.powerSpectrumMeterDelegate, a5);
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9->_realtimeContext.var0 = v9;
    v9->_realtimeContext.audioSpectrumRefreshRate = a4;
    v9->_realtimeContext.nextDeliveryTime = NAN;
    v9->_realtimeContext.nextHeatlhPrintTime = NAN;
    v9->_realtimeContext.outputPowerSpectrums = v10;
    atomic_store(0, &v9->_realtimeContext.isProcessingOutput);
    VCSingleLinkedListInitialize(&v9->_realtimeContext, _VCAudioPowerSpectrumMeter_CompareListEntries);
    CMSimpleQueueCreate(*MEMORY[0x1E695E480], 5, &v9->_realtimeContext.eventQueue);
    if (!v9->_realtimeContext.eventQueue)
    {
      [VCAudioPowerSpectrumMeter initWithBinCount:v9 refreshRate:? delegate:?];
      return 0;
    }
  }

  return v9;
}

- (void)dealloc
{
  v23 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v4;
        v15 = 2080;
        v16 = "[VCAudioPowerSpectrumMeter dealloc]";
        v17 = 1024;
        v18 = 55;
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
      v3 = [(VCAudioPowerSpectrumMeter *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        *&buf[4] = v9;
        v15 = 2080;
        v16 = "[VCAudioPowerSpectrumMeter dealloc]";
        v17 = 1024;
        v18 = 55;
        v19 = 2112;
        v20 = v3;
        v21 = 2048;
        v22 = self;
        v6 = " [%s] %s:%d %@(%p) ";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  objc_storeWeak(&self->_realtimeContext.powerSpectrumMeterDelegate, 0);
  _VCAudioPowerSpectrumMeter_ProcessEventQueue(&self->_realtimeContext, 0);
  eventQueue = self->_realtimeContext.eventQueue;
  if (eventQueue)
  {
    CFRelease(eventQueue);
  }

  while (1)
  {
    *buf = VCSingleLinkedListPop(&self->_realtimeContext);
    if (!*buf)
    {
      break;
    }

    _VCAudioPowerSpectrumMeter_FreeStream(buf);
  }

  outputPowerSpectrums = self->_realtimeContext.outputPowerSpectrums;
  if (outputPowerSpectrums)
  {
    CFRelease(outputPowerSpectrums);
  }

  v13.receiver = self;
  v13.super_class = VCAudioPowerSpectrumMeter;
  [(VCObject *)&v13 dealloc];
}

- (void)registerNewAudioPowerSpectrumForStreamToken:(id)a3 powerSpectrumKey:(id)a4 spectrumSource:(id)a5
{
  v35 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v20 = v9;
      v21 = 2080;
      v22 = "[VCAudioPowerSpectrumMeter registerNewAudioPowerSpectrumForStreamToken:powerSpectrumKey:spectrumSource:]";
      v23 = 1024;
      v24 = 71;
      v25 = 2112;
      v26 = a3;
      v27 = 2112;
      v28 = a5;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d streamToken=%@, powerSpectrumSource=%@", buf, 0x30u);
    }
  }

  v11 = malloc_type_calloc(1uLL, 0x50uLL, 0x10E004070F165FEuLL);
  v18 = v11;
  *(v11 + 19) = 1;
  v11[1] = a3;
  v11[2] = a4;
  v11[5] = a5;
  v11[3] = [a5 realtimeContext];
  v11[4] = VCAudioPowerSpectrumSource_ProcessAudioSamples;
  v12 = -[VCAudioPowerSpectrum initWithBinCount:streamToken:sinkContext:sinkCallback:]([VCAudioPowerSpectrum alloc], "initWithBinCount:streamToken:sinkContext:sinkCallback:", self->_audioSpectrumBinCount, [a3 longValue], &self->_realtimeContext, VCAudioPowerSpectrumMeter_ProcessOutput);
  v11[7] = v12;
  v11[6] = [(VCAudioPowerSpectrum *)v12 realtimeContext];
  v11[8] = objc_alloc_init(AVCAudioPowerSpectrum);
  v13 = CMSimpleQueueEnqueue(self->_realtimeContext.eventQueue, v11);
  if (v13)
  {
    v14 = v13;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        eventQueue = self->_realtimeContext.eventQueue;
        *buf = 136316930;
        v20 = v15;
        v21 = 2080;
        v22 = "[VCAudioPowerSpectrumMeter registerNewAudioPowerSpectrumForStreamToken:powerSpectrumKey:spectrumSource:]";
        v23 = 1024;
        v24 = 87;
        v25 = 2048;
        v26 = v11;
        v27 = 2112;
        v28 = a3;
        v29 = 2112;
        v30 = a5;
        v31 = 2048;
        v32 = eventQueue;
        v33 = 1024;
        v34 = v14;
        _os_log_error_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to enqueue stream=%p streamToken=%@ powerSpectrumSource=%@ queue=%p status=%d", buf, 0x4Au);
      }
    }

    _VCAudioPowerSpectrumMeter_FreeStream(&v18);
  }

  VCAudioPowerSpectrumSource_RegisterAudioPowerSpectrumSink([a5 realtimeContext], &self->_realtimeContext, self, self, VCAudioPowerSpectrumMeter_ProcessOutput);
}

- (void)releaseAudioPowerSpectrumForStreamToken:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = malloc_type_calloc(1uLL, 0x50uLL, 0x10E004070F165FEuLL);
  v12 = v5;
  *(v5 + 19) = 2;
  v5[1] = a3;
  p_realtimeContext = &self->_realtimeContext;
  v7 = CMSimpleQueueEnqueue(self->_realtimeContext.eventQueue, v5);
  if (v7)
  {
    v8 = v7;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        eventQueue = p_realtimeContext->eventQueue;
        *buf = 136316674;
        v14 = v9;
        v15 = 2080;
        v16 = "[VCAudioPowerSpectrumMeter releaseAudioPowerSpectrumForStreamToken:]";
        v17 = 1024;
        v18 = 103;
        v19 = 2048;
        v20 = v5;
        v21 = 2112;
        v22 = a3;
        v23 = 2048;
        v24 = eventQueue;
        v25 = 1024;
        v26 = v8;
        _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to enqueue stream=%p streamToken=%@ queue=%p status=%d", buf, 0x40u);
      }
    }

    _VCAudioPowerSpectrumMeter_FreeStream(&v12);
  }
}

- (void)unregisterAllStreams
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = malloc_type_calloc(1uLL, 0x50uLL, 0x10E004070F165FEuLL);
  v10 = v3;
  *(v3 + 19) = 3;
  p_realtimeContext = &self->_realtimeContext;
  v5 = CMSimpleQueueEnqueue(self->_realtimeContext.eventQueue, v3);
  if (v5)
  {
    v6 = v5;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        eventQueue = p_realtimeContext->eventQueue;
        *buf = 136316418;
        v12 = v7;
        v13 = 2080;
        v14 = "[VCAudioPowerSpectrumMeter unregisterAllStreams]";
        v15 = 1024;
        v16 = 115;
        v17 = 2048;
        v18 = v3;
        v19 = 2048;
        v20 = eventQueue;
        v21 = 1024;
        v22 = v6;
        _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to enqueue stream=%p queue=%p status=%d", buf, 0x36u);
      }
    }

    _VCAudioPowerSpectrumMeter_FreeStream(&v10);
  }
}

- (void)cleanUpEventQueue
{
  p_realtimeContext = &self->_realtimeContext;
  p_isProcessingOutput = &p_realtimeContext->isProcessingOutput;
  if ((atomic_exchange(&p_realtimeContext->isProcessingOutput._Value, 1u) & 1) == 0)
  {
    _VCAudioPowerSpectrumMeter_ProcessEventQueue(p_realtimeContext, 1);
    atomic_store(0, p_isProcessingOutput);
  }
}

- (void)initWithBinCount:(void *)a1 refreshRate:delegate:.cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v4 = 136315650;
      v5 = v2;
      v6 = 2080;
      v7 = "[VCAudioPowerSpectrumMeter initWithBinCount:refreshRate:delegate:]";
      v8 = 1024;
      v9 = 46;
      _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to create _streamTokenEventQueue", &v4, 0x1Cu);
    }
  }
}

@end