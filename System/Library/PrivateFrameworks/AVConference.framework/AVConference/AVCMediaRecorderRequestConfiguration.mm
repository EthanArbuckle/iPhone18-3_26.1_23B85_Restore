@interface AVCMediaRecorderRequestConfiguration
- (AVCMediaRecorderRequestConfiguration)init;
- (id)description;
- (void)dealloc;
- (void)setMovieFragmentInterval:(id *)interval;
@end

@implementation AVCMediaRecorderRequestConfiguration

- (AVCMediaRecorderRequestConfiguration)init
{
  v11 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = AVCMediaRecorderRequestConfiguration;
  v2 = [(AVCMediaRecorderRequestConfiguration *)&v6 init];
  if (v2)
  {
    CMTimeMakeWithSeconds(&v7, 10.0, 1);
    *(v2 + 32) = v7;
    MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCMediaRecorderRequestConfiguration-init");
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v7.value) = 136315906;
        *(&v7.value + 4) = v3;
        LOWORD(v7.flags) = 2080;
        *(&v7.flags + 2) = "[AVCMediaRecorderRequestConfiguration init]";
        HIWORD(v7.epoch) = 1024;
        v8 = 29;
        v9 = 2048;
        v10 = v2;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCMediaRecorderRequestConfiguration-init (%p)", &v7, 0x26u);
      }
    }
  }

  return v2;
}

- (id)description
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695E480];
  v4 = VCMediaRecorderUtil_CopyDescriptionForMediaType(*MEMORY[0x1E695E480], self->_mediaType);
  time = self->_movieFragmentInterval;
  v5 = CMTimeCopyDescription(v3, &time);
  v8.receiver = self;
  v8.super_class = AVCMediaRecorderRequestConfiguration;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{ %@ mediaType=%@ requestMode=%hhu requesteeID=%@ directoryURL=%@ movieFragmentInterval=%@ }", -[AVCMediaRecorderRequestConfiguration description](&v8, sel_description), v4, self->_requestMode, self->_requesteeID, self->_directoryURL, v5];
  if (v5)
  {
    CFRelease(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v6;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCMediaRecorderRequestConfiguration-dealloc");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "[AVCMediaRecorderRequestConfiguration dealloc]";
      v10 = 1024;
      v11 = 61;
      v12 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCMediaRecorderRequestConfiguration-dealloc (%p)", buf, 0x26u);
    }
  }

  v5.receiver = self;
  v5.super_class = AVCMediaRecorderRequestConfiguration;
  [(AVCMediaRecorderRequestConfiguration *)&v5 dealloc];
}

- (void)setMovieFragmentInterval:(id *)interval
{
  v3 = *&interval->var0;
  self->_movieFragmentInterval.epoch = interval->var3;
  *&self->_movieFragmentInterval.value = v3;
}

@end