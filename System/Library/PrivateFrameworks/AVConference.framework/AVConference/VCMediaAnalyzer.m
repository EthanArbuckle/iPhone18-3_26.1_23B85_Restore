@interface VCMediaAnalyzer
+ (id)errorWithMediaAnalyzerErrorEvent:(unsigned int)a3 errorPath:(id)a4 returnCode:(int64_t)a5;
+ (id)resultsHandlerWithWeakSelf:(id)a3;
- (BOOL)configure:(const AudioStreamBasicDescription *)a3 forAnalysisType:(int64_t)a4 mediaProperties:(id)a5 error:(id *)a6;
- (VCMediaAnalyzer)initWithDelegate:(id)a3 delegateQueue:(id)a4 reportingAgent:(opaqueRTCReporting *)a5;
- (void)dealloc;
- (void)gatherRealtimeStats:(__CFDictionary *)a3;
- (void)reportMediaAnalyzerEnabled:(BOOL)a3;
- (void)startForStreamToken:(int64_t)a3;
- (void)stop;
@end

@implementation VCMediaAnalyzer

- (VCMediaAnalyzer)initWithDelegate:(id)a3 delegateQueue:(id)a4 reportingAgent:(opaqueRTCReporting *)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = VCMediaAnalyzer;
  v8 = [(VCMediaAnalyzer *)&v22 init];
  v9 = v8;
  if (!v8)
  {
    return v9;
  }

  if (!a3)
  {
    [VCMediaAnalyzer initWithDelegate:v8 delegateQueue:? reportingAgent:?];
LABEL_23:

    return 0;
  }

  objc_storeWeak(&v8->_delegate, a3);
  if (!a4)
  {
    [VCMediaAnalyzer initWithDelegate:v9 delegateQueue:? reportingAgent:?];
    goto LABEL_23;
  }

  dispatch_retain(a4);
  v9->_delegateQueue = a4;
  CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(47);
  v11 = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCMediaAnalyzer.analyzerQueue", 0, CustomRootQueue);
  v9->_analyzerQueue = v11;
  if (!v11)
  {
    [VCMediaAnalyzer initWithDelegate:v9 delegateQueue:? reportingAgent:?];
    goto LABEL_23;
  }

  if (a5)
  {
    v12 = CFRetain(a5);
  }

  else
  {
    v12 = 0;
  }

  v9->_reportingAgent = v12;
  reportingRegisterPeriodicTaskWeak();
  if (objc_opt_class() == v9)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v24 = v14;
        v25 = 2080;
        v26 = "[VCMediaAnalyzer initWithDelegate:delegateQueue:reportingAgent:]";
        v27 = 1024;
        v28 = 80;
        v29 = 2048;
        v30 = a3;
        v31 = 2048;
        v32 = a5;
        v16 = " [%s] %s:%d VCMediaAnalyzer-initWithDelegate: delegateObject=%p reportingAgent=%p";
        v17 = v15;
        v18 = 48;
LABEL_18:
        _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v13 = [(VCMediaAnalyzer *)v9 performSelector:sel_logPrefix];
    }

    else
    {
      v13 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316674;
        v24 = v19;
        v25 = 2080;
        v26 = "[VCMediaAnalyzer initWithDelegate:delegateQueue:reportingAgent:]";
        v27 = 1024;
        v28 = 80;
        v29 = 2112;
        v30 = v13;
        v31 = 2048;
        v32 = v9;
        v33 = 2048;
        v34 = a3;
        v35 = 2048;
        v36 = a5;
        v16 = " [%s] %s:%d %@(%p) VCMediaAnalyzer-initWithDelegate: delegateObject=%p reportingAgent=%p";
        v17 = v20;
        v18 = 68;
        goto LABEL_18;
      }
    }
  }

  return v9;
}

void __65__VCMediaAnalyzer_initWithDelegate_delegateQueue_reportingAgent___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  block[6] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__VCMediaAnalyzer_initWithDelegate_delegateQueue_reportingAgent___block_invoke_2;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = a2;
  block[5] = a3;
  dispatch_sync(v3, block);
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
        v18 = "[VCMediaAnalyzer dealloc]";
        v19 = 1024;
        v20 = 91;
        v6 = " [%s] %s:%d VCMediaAnalyzer dealloc";
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
      v3 = [(VCMediaAnalyzer *)self performSelector:sel_logPrefix];
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
        v18 = "[VCMediaAnalyzer dealloc]";
        v19 = 1024;
        v20 = 91;
        v21 = 2112;
        v22 = v3;
        v23 = 2048;
        v24 = self;
        v6 = " [%s] %s:%d %@(%p) VCMediaAnalyzer dealloc";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  analyzerQueue = self->_analyzerQueue;
  if (analyzerQueue)
  {
    dispatch_release(analyzerQueue);
  }

  delegateQueue = self->_delegateQueue;
  if (delegateQueue)
  {
    dispatch_release(delegateQueue);
  }

  objc_storeWeak(&self->_delegate, 0);
  reportingUnregisterPeriodicTask();
  reportingAgent = self->_reportingAgent;
  if (reportingAgent)
  {
    CFRelease(reportingAgent);
  }

  v14.receiver = self;
  v14.super_class = VCMediaAnalyzer;
  [(VCMediaAnalyzer *)&v14 dealloc];
}

- (void)gatherRealtimeStats:(__CFDictionary *)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    processingEventsCount = self->_processingEventsCount;
    if (processingEventsCount)
    {
      v7[0] = self->_accumulatedProcessingTime / processingEventsCount;
      v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, v7);
      CFDictionaryAddValue(a3, @"MAMPT", v6);
      CFRelease(v6);
      self->_accumulatedProcessingTime = 0.0;
      self->_processingEventsCount = 0;
    }
  }
}

- (void)reportMediaAnalyzerEnabled:(BOOL)a3
{
  dispatch_assert_queue_V2(self->_analyzerQueue);

  reportingGenericEvent();
}

+ (id)errorWithMediaAnalyzerErrorEvent:(unsigned int)a3 errorPath:(id)a4 returnCode:(int64_t)a5
{
  if (a3 == 1)
  {
    return [MEMORY[0x1E696ABC0] AVConferenceServiceError:32000 detailedCode:1 returnCode:a5 filePath:a4 description:@"Media Analyzer Error" reason:@"The media analyzer config failed"];
  }

  else
  {
    return 0;
  }
}

+ (id)resultsHandlerWithWeakSelf:(id)a3
{
  v4[5] = *MEMORY[0x1E69E9840];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__VCMediaAnalyzer_resultsHandlerWithWeakSelf___block_invoke;
  v4[3] = &unk_1E85F4AE0;
  v4[4] = a3;
  return [v4 copy];
}

- (BOOL)configure:(const AudioStreamBasicDescription *)a3 forAnalysisType:(int64_t)a4 mediaProperties:(id)a5 error:(id *)a6
{
  v38 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    if (a6)
    {
      *a6 = +[VCMediaAnalyzer errorWithMediaAnalyzerErrorEvent:errorPath:returnCode:](VCMediaAnalyzer, "errorWithMediaAnalyzerErrorEvent:errorPath:returnCode:", 1, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", a4, a5, "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCMediaAnalyzer.m", 173], 0);
    }

    if (objc_opt_class() != self)
    {
      if (objc_opt_respondsToSelector())
      {
        v13 = [(VCMediaAnalyzer *)self performSelector:sel_logPrefix];
      }

      else
      {
        v13 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_29;
      }

      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      v12 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v12)
      {
        return v12;
      }

      *buf = 136316162;
      v27 = v16;
      v28 = 2080;
      v29 = "[VCMediaAnalyzer configure:forAnalysisType:mediaProperties:error:]";
      v30 = 1024;
      v31 = 175;
      v32 = 2112;
      v33 = v13;
      v34 = 2048;
      v35 = self;
      v18 = " [%s] %s:%d %@(%p) Audio format cannot be nil";
      v19 = v17;
      v20 = 48;
LABEL_28:
      _os_log_error_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_ERROR, v18, buf, v20);
      goto LABEL_29;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v12 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v12)
      {
        return v12;
      }

      [VCMediaAnalyzer configure:v15 forAnalysisType:? mediaProperties:? error:?];
    }

LABEL_29:
    LOBYTE(v12) = 0;
    return v12;
  }

  v9 = [objc_alloc(MEMORY[0x1E6986630]) initWithObject:self];
  v10 = [VCMediaAnalyzer resultsHandlerWithWeakSelf:v9];

  captureAnalysisSession = self->_captureAnalysisSession;
  if (a4 == 1)
  {

    captureAnalysisSession = [MEMORY[0x1E69DF640] analyzerForMediaAnalysis:0x8000 withProperties:a5 andResultsHandler:v10];
    self->_captureAnalysisSession = captureAnalysisSession;
  }

  if (!captureAnalysisSession)
  {
    if (objc_opt_class() != self)
    {
      if (objc_opt_respondsToSelector())
      {
        v14 = [(VCMediaAnalyzer *)self performSelector:sel_logPrefix];
      }

      else
      {
        v14 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_29;
      }

      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x1E6986650];
      v12 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v12)
      {
        return v12;
      }

      *buf = 136316418;
      v27 = v23;
      v28 = 2080;
      v29 = "[VCMediaAnalyzer configure:forAnalysisType:mediaProperties:error:]";
      v30 = 1024;
      v31 = 194;
      v32 = 2112;
      v33 = v14;
      v34 = 2048;
      v35 = self;
      v36 = 2048;
      v37 = a4;
      v18 = " [%s] %s:%d %@(%p) An invalid VCMediaAnalyzerTaskType was provided, analysisType=%ld";
      v19 = v24;
      v20 = 58;
      goto LABEL_28;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      v12 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v12)
      {
        return v12;
      }

      [VCMediaAnalyzer configure:v21 forAnalysisType:a4 mediaProperties:v22 error:?];
    }

    goto LABEL_29;
  }

  LOBYTE(v12) = 1;
  return v12;
}

- (void)startForStreamToken:(int64_t)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  analyzerQueue = self->_analyzerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__VCMediaAnalyzer_startForStreamToken___block_invoke;
  block[3] = &unk_1E85F40E0;
  block[4] = self;
  block[5] = a3;
  dispatch_async(analyzerQueue, block);
}

uint64_t __39__VCMediaAnalyzer_startForStreamToken___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 8) = *(a1 + 40);
  *(*(a1 + 32) + 48) = 1;
  return [*(a1 + 32) reportMediaAnalyzerEnabled:*(*(a1 + 32) + 48)];
}

- (void)stop
{
  v3[5] = *MEMORY[0x1E69E9840];
  analyzerQueue = self->_analyzerQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __23__VCMediaAnalyzer_stop__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(analyzerQueue, v3);
}

uint64_t __23__VCMediaAnalyzer_stop__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[48] == 1)
  {
    v2[48] = 0;
    v2 = *(a1 + 32);
    v3 = v2[48];
  }

  else
  {
    v3 = 0;
  }

  return [v2 reportMediaAnalyzerEnabled:v3 & 1];
}

void __VCMediaAnalyzer_PushSampleBuffer_block_invoke(uint64_t a1)
{
  ++*(*(a1 + 32) + 64);
  v2 = micro();
  [*(*(a1 + 32) + 56) analyzeSampleBuffer:*(*(*(a1 + 40) + 8) + 24)];
  *(*(a1 + 32) + 72) = micro() - v2 + *(*(a1 + 32) + 72);
  v3 = *(*(*(a1 + 40) + 8) + 24);
  if (v3)
  {

    CFRelease(v3);
  }
}

void __46__VCMediaAnalyzer_resultsHandlerWithWeakSelf___block_invoke(uint64_t a1, uint64_t a2)
{
  block[8] = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) strong];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 delegate];
    if (v5)
    {
      v6 = *(v4 + 1);
      v7 = *(v4 + 3);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __46__VCMediaAnalyzer_resultsHandlerWithWeakSelf___block_invoke_2;
      block[3] = &unk_1E85F4AB8;
      block[4] = v5;
      block[5] = v4;
      block[6] = a2;
      block[7] = v6;
      dispatch_async(v7, block);
    }
  }
}

- (void)initWithDelegate:(void *)a1 delegateQueue:reportingAgent:.cold.1(void *a1)
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

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return;
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
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithDelegate:(void *)a1 delegateQueue:reportingAgent:.cold.2(void *a1)
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

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return;
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
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithDelegate:(void *)a1 delegateQueue:reportingAgent:.cold.3(void *a1)
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

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return;
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
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)configure:(os_log_t)log forAnalysisType:mediaProperties:error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  v6 = "[VCMediaAnalyzer configure:forAnalysisType:mediaProperties:error:]";
  v7 = 1024;
  v8 = 194;
  v9 = 2048;
  v10 = a2;
  _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d An invalid VCMediaAnalyzerTaskType was provided, analysisType=%ld", &v3, 0x26u);
}

- (void)configure:(uint64_t)a1 forAnalysisType:mediaProperties:error:.cold.2(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 175;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Audio format cannot be nil", &v2, 0x1Cu);
}

@end