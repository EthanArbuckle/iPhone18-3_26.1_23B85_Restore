@interface AVCCaptionsResult
- (AVCCaptionsResult)initWithCapacity:(int64_t)a3 utteranceComplete:(BOOL)a4 utteranceNumber:(unsigned int)a5 updateNumber:(unsigned int)a6 utteranceStartTimestamp:(double)a7 utteranceDuration:(double)a8;
- (BOOL)addTokenWithString:(id)a3 confidence:(double)a4 range:(_NSRange)a5;
- (id)description;
- (void)dealloc;
@end

@implementation AVCCaptionsResult

- (AVCCaptionsResult)initWithCapacity:(int64_t)a3 utteranceComplete:(BOOL)a4 utteranceNumber:(unsigned int)a5 updateNumber:(unsigned int)a6 utteranceStartTimestamp:(double)a7 utteranceDuration:(double)a8
{
  v19 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = AVCCaptionsResult;
  v14 = [(AVCCaptionsResult *)&v18 init];
  if (v14)
  {
    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a3];
    v14->_tokens = v15;
    if (v15)
    {
      v14->_utteranceComplete = a4;
      v14->_utteranceNumber = a5;
      v14->_updateNumber = a6;
      v14->_utteranceStartTimestamp = a7;
      v14->_utteranceDuration = a8;
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [AVCCaptionsResult initWithCapacity:v16 utteranceComplete:? utteranceNumber:? updateNumber:? utteranceStartTimestamp:? utteranceDuration:?];
        }
      }

      return 0;
    }
  }

  return v14;
}

- (BOOL)addTokenWithString:(id)a3 confidence:(double)a4 range:(_NSRange)a5
{
  v6 = [[AVCCaptionsToken alloc] initWithText:a3 confidence:a5.location range:a5.length, a4];
  if (v6)
  {
    [(NSMutableArray *)self->_tokens addObject:v6];
  }

  return v6 != 0;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = AVCCaptionsResult;
  [(AVCCaptionsResult *)&v3 dealloc];
}

- (id)description
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = AVCCaptionsResult;
  v4 = [(AVCCaptionsResult *)&v7 description];
  if (self->_utteranceComplete)
  {
    v5 = "YES";
  }

  else
  {
    v5 = "NO";
  }

  return [v3 stringWithFormat:@"%@ tokens=%@, utteranceCompleted=%s, utteranceStartTimestamp=%f, utteranceDuration=%f", v4, self->_tokens, v5, *&self->_utteranceStartTimestamp, *&self->_utteranceDuration];
}

- (void)initWithCapacity:(uint64_t)a1 utteranceComplete:utteranceNumber:updateNumber:utteranceStartTimestamp:utteranceDuration:.cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 76;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, "AVCCaptions [%s] %s:%d Failed to allocate closed captions token array", &v2, 0x1Cu);
}

@end