@interface AVCScreenCapturePickerConfiguration
- (AVCScreenCapturePickerConfiguration)init;
- (void)dealloc;
@end

@implementation AVCScreenCapturePickerConfiguration

- (AVCScreenCapturePickerConfiguration)init
{
  v13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v8 = v3;
      v9 = 2080;
      v10 = "[AVCScreenCapturePickerConfiguration init]";
      v11 = 1024;
      v12 = 15;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ", buf, 0x1Cu);
    }
  }

  v6.receiver = self;
  v6.super_class = AVCScreenCapturePickerConfiguration;
  return [(AVCScreenCapturePickerConfiguration *)&v6 init];
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v7 = v3;
      v8 = 2080;
      v9 = "[AVCScreenCapturePickerConfiguration dealloc]";
      v10 = 1024;
      v11 = 21;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ", buf, 0x1Cu);
    }
  }

  v5.receiver = self;
  v5.super_class = AVCScreenCapturePickerConfiguration;
  [(AVCScreenCapturePickerConfiguration *)&v5 dealloc];
}

@end