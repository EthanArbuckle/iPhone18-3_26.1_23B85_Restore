@interface AVCVideoFrame
- (AVCVideoFrame)initWithPixelBuffer:(__CVBuffer *)a3 depthPixelBuffer:(__CVBuffer *)a4 time:(id *)a5 imageData:(id)a6 delegate:(id)a7;
- (AVCVideoFrame)initWithPixelBuffer:(__CVBuffer *)a3 time:(id *)a4 imageData:(id)a5;
- (void)dealloc;
- (void)setDepthPixelBuffer:(__CVBuffer *)a3;
- (void)setPixelBuffer:(__CVBuffer *)a3;
@end

@implementation AVCVideoFrame

- (AVCVideoFrame)initWithPixelBuffer:(__CVBuffer *)a3 time:(id *)a4 imageData:(id)a5
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = AVCVideoFrame;
  v8 = [(AVCVideoFrame *)&v11 init];
  if (v8)
  {
    *(v8 + 1) = CVPixelBufferRetain(a3);
    var3 = a4->var3;
    *(v8 + 24) = *&a4->var0;
    *(v8 + 5) = var3;
    *(v8 + 6) = a5;
    *(v8 + 16) = 0;
  }

  return v8;
}

- (AVCVideoFrame)initWithPixelBuffer:(__CVBuffer *)a3 depthPixelBuffer:(__CVBuffer *)a4 time:(id *)a5 imageData:(id)a6 delegate:(id)a7
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = *a5;
  v9 = [(AVCVideoFrame *)self initWithPixelBuffer:a3 time:&v11 imageData:a6];
  if (v9)
  {
    v9->_depthPixelBuffer = CVPixelBufferRetain(a4);
    objc_storeWeak(&v9->_delegate, a7);
  }

  return v9;
}

- (void)setDepthPixelBuffer:(__CVBuffer *)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    v7 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315906;
        v10 = v5;
        v11 = 2080;
        v12 = "[AVCVideoFrame setDepthPixelBuffer:]";
        v13 = 1024;
        v14 = 47;
        v15 = 2112;
        v16 = a3;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d depthPixelBuffer=%@", &v9, 0x26u);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [AVCVideoFrame setDepthPixelBuffer:];
    }
  }

  depthPixelBuffer = self->_depthPixelBuffer;
  if (depthPixelBuffer)
  {
    CVPixelBufferRelease(depthPixelBuffer);
    self->_depthPixelBuffer = 0;
  }

  if (a3)
  {
    self->_depthPixelBuffer = CVPixelBufferRetain(a3);
  }
}

- (void)setPixelBuffer:(__CVBuffer *)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    v7 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315906;
        v10 = v5;
        v11 = 2080;
        v12 = "[AVCVideoFrame setPixelBuffer:]";
        v13 = 1024;
        v14 = 59;
        v15 = 2112;
        v16 = a3;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d pixelBuffer=%@", &v9, 0x26u);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [AVCVideoFrame setPixelBuffer:];
    }
  }

  pixelBuffer = self->_pixelBuffer;
  if (pixelBuffer)
  {
    CVPixelBufferRelease(pixelBuffer);
    self->_pixelBuffer = 0;
  }

  if (a3)
  {
    self->_pixelBuffer = CVPixelBufferRetain(a3);
  }
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v3 = v0;
  v4 = "[AVCVideoFrame dealloc]";
  v5 = 1024;
  v6 = 71;
  _os_log_debug_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_DEBUG, " [%s] %s:%d ", v2, 0x1Cu);
}

- (void)setDepthPixelBuffer:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_9_7(&dword_1DB56E000, v0, v1, " [%s] %s:%d depthPixelBuffer=%@");
}

- (void)setPixelBuffer:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_9_7(&dword_1DB56E000, v0, v1, " [%s] %s:%d pixelBuffer=%@");
}

@end