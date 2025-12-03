@interface AVCCaptionsResult
- (AVCCaptionsResult)initWithCapacity:(int64_t)capacity utteranceComplete:(BOOL)complete utteranceNumber:(unsigned int)number updateNumber:(unsigned int)updateNumber utteranceStartTimestamp:(double)timestamp utteranceDuration:(double)duration;
- (BOOL)addTokenWithString:(id)string confidence:(double)confidence range:(_NSRange)range;
- (id)description;
- (void)dealloc;
@end

@implementation AVCCaptionsResult

- (AVCCaptionsResult)initWithCapacity:(int64_t)capacity utteranceComplete:(BOOL)complete utteranceNumber:(unsigned int)number updateNumber:(unsigned int)updateNumber utteranceStartTimestamp:(double)timestamp utteranceDuration:(double)duration
{
  v19 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = AVCCaptionsResult;
  v14 = [(AVCCaptionsResult *)&v18 init];
  if (v14)
  {
    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:capacity];
    v14->_tokens = v15;
    if (v15)
    {
      v14->_utteranceComplete = complete;
      v14->_utteranceNumber = number;
      v14->_updateNumber = updateNumber;
      v14->_utteranceStartTimestamp = timestamp;
      v14->_utteranceDuration = duration;
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

- (BOOL)addTokenWithString:(id)string confidence:(double)confidence range:(_NSRange)range
{
  confidence = [[AVCCaptionsToken alloc] initWithText:string confidence:range.location range:range.length, confidence];
  if (confidence)
  {
    [(NSMutableArray *)self->_tokens addObject:confidence];
  }

  return confidence != 0;
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