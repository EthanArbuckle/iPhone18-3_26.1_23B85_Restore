@interface AVCScreenCaptureConfiguration
- (AVCScreenCaptureConfiguration)init;
- (AVCScreenCaptureConfiguration)initWithHeight:(unsigned int)a3 width:(unsigned int)a4 framerate:(unsigned int)a5 screenCaptureDisplayID:(unsigned int)a6;
- (id)description;
- (void)dealloc;
@end

@implementation AVCScreenCaptureConfiguration

- (AVCScreenCaptureConfiguration)initWithHeight:(unsigned int)a3 width:(unsigned int)a4 framerate:(unsigned int)a5 screenCaptureDisplayID:(unsigned int)a6
{
  v21 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v16 = v11;
      v17 = 2080;
      v18 = "[AVCScreenCaptureConfiguration initWithHeight:width:framerate:screenCaptureDisplayID:]";
      v19 = 1024;
      v20 = 16;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ", buf, 0x1Cu);
    }
  }

  v14.receiver = self;
  v14.super_class = AVCScreenCaptureConfiguration;
  result = [(AVCScreenCaptureConfiguration *)&v14 init];
  if (result)
  {
    result->_height = a3;
    result->_width = a4;
    result->_frameRate = a5;
    result->_screenCaptureDisplayID = a6;
  }

  return result;
}

- (AVCScreenCaptureConfiguration)init
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
      v10 = "[AVCScreenCaptureConfiguration init]";
      v11 = 1024;
      v12 = 29;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ", buf, 0x1Cu);
    }
  }

  v6.receiver = self;
  v6.super_class = AVCScreenCaptureConfiguration;
  result = [(AVCScreenCaptureConfiguration *)&v6 init];
  if (result)
  {
    result->_isCursorCaptured = 1;
    result->_displayMode = 0;
    result->_excludedApplicationBundleIDs = 0;
    result->_excludedAudioAuditTokens = 0;
  }

  return result;
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
      v9 = "[AVCScreenCaptureConfiguration dealloc]";
      v10 = 1024;
      v11 = 41;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ", buf, 0x1Cu);
    }
  }

  v5.receiver = self;
  v5.super_class = AVCScreenCaptureConfiguration;
  [(AVCScreenCaptureConfiguration *)&v5 dealloc];
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = AVCScreenCaptureConfiguration;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"{ %@ height=%u, width=%u, frameRate=%u, isWindowed=%d, screenCaptureDisplayID=%u, isCursorCaptured=%d, excludedApplicationBundleIDs=%@, excludedAudioAuditTokens=%@, shouldRunInProcess=%d, selectiveSharingPort=%u, selectiveScreenUUID=%@, displayMode=%lu, pdProtectionOptions=%llu }", -[AVCScreenCaptureConfiguration description](&v3, sel_description), self->_height, self->_width, self->_frameRate, self->_isWindowed, self->_screenCaptureDisplayID, self->_isCursorCaptured, self->_excludedApplicationBundleIDs, self->_excludedAudioAuditTokens, self->_shouldRunInProcess, self->_selectiveSharingPort, self->_selectiveScreenUUID, self->_displayMode, self->_pdProtectionOptions];
}

@end