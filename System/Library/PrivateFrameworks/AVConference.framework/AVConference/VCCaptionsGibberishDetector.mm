@interface VCCaptionsGibberishDetector
- (BOOL)gibberishStateForCaptionsToken:(int64_t)token;
- (BOOL)processTranscript:(id)transcript;
- (VCCaptionsGibberishDetector)initWithGibberishThreshold:(double)threshold windowLength:(unint64_t)length;
- (void)dealloc;
- (void)reset;
@end

@implementation VCCaptionsGibberishDetector

- (VCCaptionsGibberishDetector)initWithGibberishThreshold:(double)threshold windowLength:(unint64_t)length
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = VCCaptionsGibberishDetector;
  v6 = [(VCCaptionsGibberishDetector *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_gibberishThreshold = threshold;
    v6->_windowLength = length;
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7->_gibberishStates = v8;
    if (v8)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v7->_history = v9;
      if (v9)
      {
        return v7;
      }

      [VCCaptionsGibberishDetector initWithGibberishThreshold:v7 windowLength:?];
    }

    else
    {
      [VCCaptionsGibberishDetector initWithGibberishThreshold:v7 windowLength:?];
    }

    return 0;
  }

  return v7;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCCaptionsGibberishDetector;
  [(VCCaptionsGibberishDetector *)&v3 dealloc];
}

- (BOOL)gibberishStateForCaptionsToken:(int64_t)token
{
  v3 = -[NSMutableDictionary objectForKeyedSubscript:](self->_gibberishStates, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInteger:token]);

  return [v3 BOOLValue];
}

- (void)reset
{
  [(NSMutableDictionary *)self->_gibberishStates removeAllObjects];
  history = self->_history;

  [(NSMutableDictionary *)history removeAllObjects];
}

- (BOOL)processTranscript:(id)transcript
{
  v40 = *MEMORY[0x1E69E9840];
  v29 = -[VCCaptionsGibberishDetector gibberishStateForCaptionsToken:](self, "gibberishStateForCaptionsToken:", [transcript streamToken]);
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(transcript, "streamToken")}];
  v27 = [(NSMutableDictionary *)self->_history objectForKeyedSubscript:v5];
  if (!v27)
  {
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_history, "setObject:forKeyedSubscript:", [MEMORY[0x1E695DF70] array], v5);
  }

  v6 = [(NSMutableDictionary *)self->_history objectForKeyedSubscript:v5, v27];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  segments = [transcript segments];
  v8 = [segments countByEnumeratingWithState:&v36 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v37;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(segments);
        }

        v12 = *(*(&v36 + 1) + 8 * i);
        if ([v12 confidence])
        {
          [v6 insertObject:objc_msgSend(MEMORY[0x1E696AD98] atIndex:{"numberWithUnsignedInt:", objc_msgSend(v12, "confidence")), 0}];
        }
      }

      v9 = [segments countByEnumeratingWithState:&v36 objects:v35 count:16];
    }

    while (v9);
  }

  while ([v6 count] > self->_windowLength)
  {
    [v6 removeLastObject];
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v13 = [v6 countByEnumeratingWithState:&v31 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v32;
    v16 = 0.0;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v31 + 1) + 8 * j) doubleValue];
        v16 = v16 + v18;
      }

      v14 = [v6 countByEnumeratingWithState:&v31 objects:v30 count:16];
    }

    while (v14);
  }

  else
  {
    v16 = 0.0;
  }

  v19 = [v6 count];
  if (v19 <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = v19;
  }

  v21 = v16 / v20 * 0.01;
  v22 = [v6 count];
  v24 = v21 < self->_gibberishThreshold && v22 >= self->_windowLength;
  v25 = (v28 == 0) | v29 ^ v24;
  if ((v28 == 0) | (v29 ^ v24) & 1)
  {
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_gibberishStates, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithBool:?], v5);
  }

  return v25 & 1;
}

- (void)initWithGibberishThreshold:(void *)a1 windowLength:.cold.1(void *a1)
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
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithGibberishThreshold:(void *)a1 windowLength:.cold.2(void *a1)
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
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

@end