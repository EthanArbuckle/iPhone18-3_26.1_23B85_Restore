@interface VCCellularAudioTapIO
- (VCCellularAudioTapIO)initWithStreamToken:(int64_t)a3 powerSpectrumSource:(id)a4 tapType:(unsigned int)a5;
- (VCMediaRecorder)mediaRecorder;
- (void)dealloc;
- (void)setMediaRecorder:(id)a3;
@end

@implementation VCCellularAudioTapIO

- (VCCellularAudioTapIO)initWithStreamToken:(int64_t)a3 powerSpectrumSource:(id)a4 tapType:(unsigned int)a5
{
  v14 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = VCCellularAudioTapIO;
  v8 = [(VCCellularAudioTapIO *)&v13 init];
  v9 = v8;
  if (v8)
  {
    if (a3)
    {
      v10 = a4;
      v9->_powerSpectrumSource = v10;
      if (v10)
      {
        v11 = [(VCAudioPowerSpectrumSource *)v10 realtimeContext];
        v9->_realtimeContext.streamToken = a3;
        v9->_realtimeContext.tapType = a5;
        v9->_realtimeContext.powerSpectrumSourceRealtimeContext = v11;
        v9->_realtimeContext.mediaRecorder = 0;
        v9->_realtimeContext.averageAudioPower = 0.0;
        return v9;
      }

      [VCCellularAudioTapIO initWithStreamToken:v9 powerSpectrumSource:? tapType:?];
    }

    else
    {
      [VCCellularAudioTapIO initWithStreamToken:v8 powerSpectrumSource:? tapType:?];
    }

    return 0;
  }

  return v9;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCCellularAudioTapIO;
  [(VCCellularAudioTapIO *)&v3 dealloc];
}

- (void)setMediaRecorder:(id)a3
{
  mediaRecorder = self->_realtimeContext.mediaRecorder;
  if (mediaRecorder != a3)
  {

    self->_realtimeContext.mediaRecorder = a3;
  }
}

- (VCMediaRecorder)mediaRecorder
{
  v2 = self->_realtimeContext.mediaRecorder;

  return v2;
}

- (void)initWithStreamToken:(void *)a1 powerSpectrumSource:tapType:.cold.1(void *a1)
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

- (void)initWithStreamToken:(void *)a1 powerSpectrumSource:tapType:.cold.2(void *a1)
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