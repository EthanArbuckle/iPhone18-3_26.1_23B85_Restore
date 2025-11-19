@interface AVCTextStreamConfig
+ (int64_t)codecTypeWithClientCodecType:(int64_t)a3;
- (BOOL)isRedValid;
- (BOOL)isValid;
- (id)dictionary;
- (void)setUpWithDictionary:(id)a3;
@end

@implementation AVCTextStreamConfig

- (BOOL)isValid
{
  if ([(AVCTextStreamConfig *)self codecType])
  {
    return 0;
  }

  return [(AVCTextStreamConfig *)self isRedValid];
}

+ (int64_t)codecTypeWithClientCodecType:(int64_t)a3
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 200;
  }

  v3 = a3;
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        +[AVCTextStreamConfig codecTypeWithClientCodecType:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [a1 performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v9 = 136316418;
        v10 = v7;
        v11 = 2080;
        v12 = "+[AVCTextStreamConfig codecTypeWithClientCodecType:]";
        v13 = 1024;
        v14 = 1592;
        v15 = 2112;
        v16 = v5;
        v17 = 2048;
        v18 = a1;
        v19 = 1024;
        v20 = v3;
        _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Unexpected codec type: %d", &v9, 0x36u);
      }
    }
  }

  return 0;
}

- (BOOL)isRedValid
{
  if (![(AVCTextStreamConfig *)self numRedundantPayloads])
  {
    return 1;
  }

  if ([(AVCTextStreamConfig *)self txRedPayloadType]> 0x7F || [(AVCTextStreamConfig *)self txRedPayloadType]< 0x60 || [(AVCTextStreamConfig *)self rxRedPayloadType]> 0x7F || [(AVCTextStreamConfig *)self rxRedPayloadType]< 0x60)
  {
    return 0;
  }

  return self->_numRedundantPayloads < 4;
}

- (void)setUpWithDictionary:(id)a3
{
  self->_codecType = +[AVCTextStreamConfig clientCodecTypeWithCodecType:](AVCTextStreamConfig, "clientCodecTypeWithCodecType:", [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamTextCodecType", "integerValue"}]);
  self->_numRedundantPayloads = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamTextNumRedundantPayloads", "integerValue"}];
  self->_txRedPayloadType = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamTextTxRedPayloadType", "integerValue"}];
  self->_rxRedPayloadType = [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamTextRxRedPayloadType", "integerValue"}];
  [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMediaStreamTextTxIntervalMin", "floatValue"}];
  self->_txIntervalMin = v5;
}

- (id)dictionary
{
  v6[5] = *MEMORY[0x1E69E9840];
  v5[0] = @"vcMediaStreamTextCodecType";
  v6[0] = [MEMORY[0x1E696AD98] numberWithInteger:{+[AVCTextStreamConfig codecTypeWithClientCodecType:](AVCTextStreamConfig, "codecTypeWithClientCodecType:", self->_codecType)}];
  v5[1] = @"vcMediaStreamTextNumRedundantPayloads";
  v6[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_numRedundantPayloads];
  v5[2] = @"vcMediaStreamTextTxRedPayloadType";
  v6[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_txRedPayloadType];
  v5[3] = @"vcMediaStreamTextRxRedPayloadType";
  v6[3] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_rxRedPayloadType];
  v5[4] = @"vcMediaStreamTextTxIntervalMin";
  *&v3 = self->_txIntervalMin;
  v6[4] = [MEMORY[0x1E696AD98] numberWithFloat:v3];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:5];
}

+ (void)codecTypeWithClientCodecType:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

@end