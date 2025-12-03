@interface VCMediaAnalyzerManagerStreamTokenClientList
- (VCMediaAnalyzerManagerStreamTokenClientList)initWithStreamToken:(int64_t)token mediaAnalyzerSource:(id)source;
- (id)newClientContext;
- (void)dealloc;
@end

@implementation VCMediaAnalyzerManagerStreamTokenClientList

- (VCMediaAnalyzerManagerStreamTokenClientList)initWithStreamToken:(int64_t)token mediaAnalyzerSource:(id)source
{
  v24 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = VCMediaAnalyzerManagerStreamTokenClientList;
  v6 = [(VCMediaAnalyzerManagerStreamTokenClientList *)&v13 init];
  v7 = v6;
  if (v6)
  {
    if (source)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7->_clientContextList = v8;
      if (v8)
      {
        v7->_streamToken = token;
        v7->_mediaAnalyzerSource = source;
        return v7;
      }

      [VCMediaAnalyzerManagerStreamTokenClientList initWithStreamToken:v7 mediaAnalyzerSource:?];
    }

    else
    {
      [VCMediaAnalyzerManagerStreamTokenClientList initWithStreamToken:v6 mediaAnalyzerSource:?];
    }
  }

  else
  {
    [VCMediaAnalyzerManagerStreamTokenClientList initWithStreamToken:mediaAnalyzerSource:];
  }

  if (objc_opt_class() == v7)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMediaAnalyzerManagerStreamTokenClientList initWithStreamToken:mediaAnalyzerSource:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v10 = [(VCMediaAnalyzerManagerStreamTokenClientList *)v7 performSelector:sel_logPrefix];
    }

    else
    {
      v10 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v15 = v11;
        v16 = 2080;
        v17 = "[VCMediaAnalyzerManagerStreamTokenClientList initWithStreamToken:mediaAnalyzerSource:]";
        v18 = 1024;
        v19 = 75;
        v20 = 2112;
        v21 = v10;
        v22 = 2048;
        v23 = v7;
        _os_log_error_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) init failed", buf, 0x30u);
      }
    }
  }

  return 0;
}

- (id)newClientContext
{
  v3 = [[VCMediaAnalyzerClientContext alloc] initWithStreamToken:self->_streamToken];
  [(NSMutableArray *)self->_clientContextList addObject:v3];
  return v3;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCMediaAnalyzerManagerStreamTokenClientList;
  [(VCMediaAnalyzerManagerStreamTokenClientList *)&v3 dealloc];
}

- (void)initWithStreamToken:(uint64_t)a1 mediaAnalyzerSource:.cold.1(uint64_t a1)
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
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithStreamToken:(uint64_t)a1 mediaAnalyzerSource:.cold.2(uint64_t a1)
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
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithStreamToken:mediaAnalyzerSource:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)initWithStreamToken:mediaAnalyzerSource:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d init failed", v2, v3, v4, v5, v6);
}

@end