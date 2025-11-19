@interface AVCCaptionsToken
- (AVCCaptionsToken)initWithText:(id)a3 confidence:(double)a4 range:(_NSRange)a5;
- (_NSRange)range;
- (id)description;
- (void)dealloc;
@end

@implementation AVCCaptionsToken

- (AVCCaptionsToken)initWithText:(id)a3 confidence:(double)a4 range:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v13 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = AVCCaptionsToken;
  v9 = [(AVCCaptionsToken *)&v12 init];
  if (v9)
  {
    if (a3)
    {
      v9->_text = [a3 copy];
      v9->_confidence = a4;
      v9->_range.location = location;
      v9->_range.length = length;
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [AVCCaptionsToken initWithText:v10 confidence:? range:?];
        }
      }

      return 0;
    }
  }

  return v9;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = AVCCaptionsToken;
  [(AVCCaptionsToken *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  return [v3 stringWithFormat:@"%@: confidence[%f] range[%@]", v5, *&self->_confidence, NSStringFromRange(self->_range)];
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

- (void)initWithText:(uint64_t)a1 confidence:range:.cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 44;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, "AVCCaptions [%s] %s:%d Invalid closed captions token received", &v2, 0x1Cu);
}

@end