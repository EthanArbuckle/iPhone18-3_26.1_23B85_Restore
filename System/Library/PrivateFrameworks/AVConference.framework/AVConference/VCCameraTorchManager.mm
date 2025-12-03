@interface VCCameraTorchManager
- (BOOL)openTorchDevice;
- (VCCameraTorchManager)init;
- (void)closeTorchDevice;
- (void)dealloc;
- (void)openTorchDevice;
- (void)turnTorch:(BOOL)torch;
@end

@implementation VCCameraTorchManager

- (VCCameraTorchManager)init
{
  v13 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = VCCameraTorchManager;
  v2 = [(VCCameraTorchManager *)&v6 init];
  if (v2)
  {
    if ([MEMORY[0x1E69871B8] hasFlashlight])
    {
      v2->_flashlight = objc_alloc_init(MEMORY[0x1E69871B8]);
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v8 = v3;
        v9 = 2080;
        v10 = "[VCCameraTorchManager init]";
        v11 = 1024;
        v12 = 23;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVFlashlight is not available", buf, 0x1Cu);
      }
    }
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCCameraTorchManager;
  [(VCCameraTorchManager *)&v3 dealloc];
}

- (BOOL)openTorchDevice
{
  v7[1] = *MEMORY[0x1E69E9840];
  flashlight = self->_flashlight;
  if (!flashlight)
  {
    return 0;
  }

  v7[0] = 0;
  v3 = [(AVFlashlight *)flashlight turnPowerOnWithError:v7];
  if ((v3 & 1) == 0 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [(VCCameraTorchManager *)v4 openTorchDevice];
    }
  }

  return v3;
}

- (void)closeTorchDevice
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_flashlight)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315650;
        v6 = v3;
        v7 = 2080;
        v8 = "[VCCameraTorchManager closeTorchDevice]";
        v9 = 1024;
        v10 = 51;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ", &v5, 0x1Cu);
      }
    }

    [(AVFlashlight *)self->_flashlight turnPowerOff];
  }
}

- (void)turnTorch:(BOOL)torch
{
  v23 = *MEMORY[0x1E69E9840];
  flashlight = self->_flashlight;
  if (flashlight)
  {
    v12 = 0;
    if (torch)
    {
      v4 = 1.0;
    }

    else
    {
      v4 = 0.0;
    }

    v5 = [(AVFlashlight *)flashlight setFlashlightLevel:&v12 withError:COERCE_DOUBLE(LODWORD(v4))];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v5)
    {
      if (ErrorLogLevelForModule >= 8)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        v9 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v14 = v7;
            v15 = 2080;
            v16 = "[VCCameraTorchManager turnTorch:]";
            v17 = 1024;
            v18 = 70;
            v19 = 2048;
            v20 = v4;
            _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVFlashlight setFlashlightLevel:%f", buf, 0x26u);
          }
        }

        else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          [(VCCameraTorchManager *)v7 turnTorch:v8, v4];
        }
      }
    }

    else if (ErrorLogLevelForModule >= 3)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v14 = v10;
        v15 = 2080;
        v16 = "[VCCameraTorchManager turnTorch:]";
        v17 = 1024;
        v18 = 72;
        v19 = 2048;
        v20 = v4;
        v21 = 2112;
        v22 = v12;
        _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, " [%s] %s:%d AVFlashlight setFlashlightLevel:%f failed: %@", buf, 0x30u);
      }
    }
  }
}

- (void)openTorchDevice
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = 136315906;
  selfCopy = self;
  v6 = 2080;
  v7 = "[VCCameraTorchManager openTorchDevice]";
  v8 = 1024;
  v9 = 41;
  v10 = 2112;
  v11 = v3;
  _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d AVFlashlight failed to turn on: %@", &v4, 0x26u);
}

- (void)turnTorch:(float)a3 .cold.1(uint64_t a1, NSObject *a2, float a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  v6 = "[VCCameraTorchManager turnTorch:]";
  v7 = 1024;
  v8 = 70;
  v9 = 2048;
  v10 = a3;
  _os_log_debug_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_DEBUG, " [%s] %s:%d AVFlashlight setFlashlightLevel:%f", &v3, 0x26u);
}

@end