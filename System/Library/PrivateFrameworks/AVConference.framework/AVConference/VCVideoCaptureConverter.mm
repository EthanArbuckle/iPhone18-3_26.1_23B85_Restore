@interface VCVideoCaptureConverter
- (BOOL)processFrame:(opaqueCMSampleBuffer *)frame;
- (VCVideoCaptureConverter)initWithConvertedFrameHandler:(void *)handler context:(id)context;
- (void)avConferencePreviewError:(id)error;
- (void)dealloc;
- (void)setDestinationFramerate:(unsigned int)framerate;
- (void)setSourceFramerate:(unsigned int)framerate;
- (void)updateThrottleRate;
@end

@implementation VCVideoCaptureConverter

- (VCVideoCaptureConverter)initWithConvertedFrameHandler:(void *)handler context:(id)context
{
  v23 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = VCVideoCaptureConverter;
  v6 = [(VCVideoCaptureConverter *)&v12 init];
  v7 = v6;
  if (!v6)
  {
    return v7;
  }

  if (!handler)
  {
    [VCVideoCaptureConverter initWithConvertedFrameHandler:v6 context:?];
LABEL_10:

    return 0;
  }

  if (!context)
  {
    [VCVideoCaptureConverter initWithConvertedFrameHandler:v6 context:?];
    goto LABEL_10;
  }

  v6->_convertedFrameHandler = handler;
  objc_storeWeak(&v6->_convertedFrameHandlerContext, context);
  v7->_lastDestinationFrameCount = -1;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      convertedFrameHandlerContext = v7->_convertedFrameHandlerContext;
      *buf = 136316162;
      v14 = v8;
      v15 = 2080;
      v16 = "[VCVideoCaptureConverter initWithConvertedFrameHandler:context:]";
      v17 = 1024;
      v18 = 38;
      v19 = 2048;
      v20 = v7;
      v21 = 2048;
      v22 = convertedFrameHandlerContext;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p], convertedFrameHandlerContext=%p", buf, 0x30u);
    }
  }

  return v7;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  objc_storeWeak(&self->_convertedFrameHandlerContext, 0);
  v3.receiver = self;
  v3.super_class = VCVideoCaptureConverter;
  [(VCVideoCaptureConverter *)&v3 dealloc];
}

- (void)setSourceFramerate:(unsigned int)framerate
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_sourceFramerate == framerate)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        sourceFramerate = self->_sourceFramerate;
        v10 = 136316162;
        v11 = v4;
        v12 = 2080;
        v13 = "[VCVideoCaptureConverter setSourceFramerate:]";
        v14 = 1024;
        v15 = 56;
        v16 = 2048;
        selfCopy2 = self;
        v18 = 1024;
        v19 = sourceFramerate;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p], Source frame rate is already at %u", &v10, 0x2Cu);
      }
    }
  }

  else
  {
    self->_sourceFramerate = framerate;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = self->_sourceFramerate;
        v10 = 136316162;
        v11 = v7;
        v12 = 2080;
        v13 = "[VCVideoCaptureConverter setSourceFramerate:]";
        v14 = 1024;
        v15 = 59;
        v16 = 2048;
        selfCopy2 = self;
        v18 = 1024;
        v19 = v9;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p], Source frame rate set to %u", &v10, 0x2Cu);
      }
    }

    [(VCVideoCaptureConverter *)self updateThrottleRate];
  }
}

- (void)setDestinationFramerate:(unsigned int)framerate
{
  v17 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136316162;
      v8 = v5;
      v9 = 2080;
      v10 = "[VCVideoCaptureConverter setDestinationFramerate:]";
      v11 = 1024;
      v12 = 65;
      v13 = 2048;
      selfCopy = self;
      v15 = 1024;
      framerateCopy = framerate;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p], setting destination frame rate to %d", &v7, 0x2Cu);
    }
  }

  self->_destinationFramerate = framerate;
  [(VCVideoCaptureConverter *)self updateThrottleRate];
}

- (BOOL)processFrame:(opaqueCMSampleBuffer *)frame
{
  if (!self->_isThrottling)
  {
    return 1;
  }

  sourceFrameCount = self->_sourceFrameCount;
  v4 = sourceFrameCount + 1;
  v5 = (sourceFrameCount / self->_throttleRate);
  v6 = self->_lastDestinationFrameCount != v5;
  self->_sourceFrameCount = v4;
  self->_lastDestinationFrameCount = v5;
  return v6;
}

- (void)updateThrottleRate
{
  v28 = *MEMORY[0x1E69E9840];
  destinationFramerate = self->_destinationFramerate;
  sourceFramerate = self->_sourceFramerate;
  if (sourceFramerate <= destinationFramerate)
  {
    v5 = 0;
  }

  else
  {
    self->_throttleRate = sourceFramerate / destinationFramerate;
    v5 = 1;
  }

  self->_isThrottling = v5;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_destinationFramerate;
      v8 = self->_sourceFramerate;
      throttleRate = self->_throttleRate;
      isThrottling = self->_isThrottling;
      v12 = 136316930;
      v13 = v6;
      v14 = 2080;
      v15 = "[VCVideoCaptureConverter updateThrottleRate]";
      v16 = 1024;
      v17 = 87;
      v18 = 2048;
      selfCopy = self;
      v20 = 1024;
      v21 = v8;
      v22 = 1024;
      v23 = v9;
      v24 = 2048;
      v25 = throttleRate;
      v26 = 1024;
      v27 = isThrottling;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p], _sourceFramerate=%u, _destinationFramerate=%u, _throttleRate=%f, _isThrottling=%d", &v12, 0x42u);
    }
  }
}

- (void)avConferencePreviewError:(id)error
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [(VCVideoCaptureConverter *)v4 avConferencePreviewError:error];
    }
  }
}

- (void)initWithConvertedFrameHandler:(void *)a1 context:.cold.1(void *a1)
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
    OUTLINED_FUNCTION_9_0();
    v7 = 28;
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

- (void)initWithConvertedFrameHandler:(void *)a1 context:.cold.2(void *a1)
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
    OUTLINED_FUNCTION_9_0();
    v7 = 28;
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

- (void)avConferencePreviewError:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  [a2 UTF8String];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

@end