@interface AVCMediaAnalyzerResult
- (AVCMediaAnalyzerResult)initWithInternalResult:(id)result analysisType:(int64_t)type;
- (void)dealloc;
@end

@implementation AVCMediaAnalyzerResult

- (AVCMediaAnalyzerResult)initWithInternalResult:(id)result analysisType:(int64_t)type
{
  v25 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = AVCMediaAnalyzerResult;
  v6 = [(AVCMediaAnalyzerResult *)&v18 init];
  v7 = v6;
  if (v6)
  {
    *(v6 + 8) = vdupq_n_s64(0x7FF8000000000000uLL);
    *(v6 + 3) = 0;
    *(v6 + 4) = type;
    v8 = [result objectForKeyedSubscript:*MEMORY[0x1E69DF650]];
    if (v8)
    {
      memset(&v17, 170, sizeof(v17));
      CMTimeMakeFromDictionary(&v17, v8);
      time = v17;
      v7->_analysisStartTimestamp = CMTimeGetSeconds(&time);
      v9 = [result objectForKeyedSubscript:*MEMORY[0x1E69DF648]];
      if (v9)
      {
        memset(&v16, 170, sizeof(v16));
        CMTimeMakeFromDictionary(&v16, v9);
        time = v16;
        v7->_analysisDuration = CMTimeGetSeconds(&time);
        v10 = [result objectForKeyedSubscript:*MEMORY[0x1E69AE250]];
        if (v10)
        {
          v7->_analysisResult = [v10 copy];
          return v7;
        }

        [AVCMediaAnalyzerResult initWithInternalResult:v7 analysisType:?];
      }

      else
      {
        [AVCMediaAnalyzerResult initWithInternalResult:v7 analysisType:?];
      }
    }

    else
    {
      [AVCMediaAnalyzerResult initWithInternalResult:v7 analysisType:?];
    }
  }

  else
  {
    [AVCMediaAnalyzerResult initWithInternalResult:analysisType:];
  }

  if (objc_opt_class() == v7)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [AVCMediaAnalyzerResult initWithInternalResult:v13 analysisType:?];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v12 = [(AVCMediaAnalyzerResult *)v7 performSelector:sel_logPrefix];
    }

    else
    {
      v12 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        LODWORD(time.value) = 136316162;
        *(&time.value + 4) = v14;
        LOWORD(time.flags) = 2080;
        *(&time.flags + 2) = "[AVCMediaAnalyzerResult initWithInternalResult:analysisType:]";
        HIWORD(time.epoch) = 1024;
        v20 = 49;
        v21 = 2112;
        v22 = v12;
        v23 = 2048;
        v24 = v7;
        _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) AVCMediaAnalyzerResult-init failed", &time, 0x30u);
      }
    }
  }

  return 0;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = AVCMediaAnalyzerResult;
  [(AVCMediaAnalyzerResult *)&v3 dealloc];
}

- (void)initWithInternalResult:(void *)a1 analysisType:.cold.1(void *a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
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

- (void)initWithInternalResult:(void *)a1 analysisType:.cold.2(void *a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
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

- (void)initWithInternalResult:(void *)a1 analysisType:.cold.3(void *a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
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

- (void)initWithInternalResult:analysisType:.cold.4()
{
  v16 = *MEMORY[0x1E69E9840];
  if (!objc_opt_class())
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    v11 = 25;
    OUTLINED_FUNCTION_2_0();
LABEL_12:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    v0 = [0 performSelector:sel_logPrefix];
  }

  else
  {
    v0 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v9 = 136316162;
      v10 = v7;
      OUTLINED_FUNCTION_0();
      v11 = 25;
      v12 = 2112;
      v13 = v0;
      v14 = 2048;
      v15 = 0;
      v1 = &dword_1DB56E000;
      v4 = " [%s] %s:%d %@(%p) Failed to allocate super instance";
      v5 = &v9;
      v2 = v8;
      v3 = OS_LOG_TYPE_ERROR;
      v6 = 48;
      goto LABEL_12;
    }
  }
}

- (void)initWithInternalResult:(uint64_t)a1 analysisType:.cold.5(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 49;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d AVCMediaAnalyzerResult-init failed", &v2, 0x1Cu);
}

@end