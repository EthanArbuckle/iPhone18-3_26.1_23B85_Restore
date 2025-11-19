@interface VCAudioStreamReceiveGroupConfig
- (VCAudioStreamReceiveGroupConfig)init;
- (void)dealloc;
- (void)init;
@end

@implementation VCAudioStreamReceiveGroupConfig

- (VCAudioStreamReceiveGroupConfig)init
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCAudioStreamReceiveGroupConfig;
  v2 = [(VCMediaStreamGroupConfig *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(VCAudioStreamGroupCommonConfig);
    v2->_audioStreamGroupConfig = v3;
    if (!v3)
    {
      [(VCAudioStreamReceiveGroupConfig *)v2 init];
      return v6[0];
    }
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCAudioStreamReceiveGroupConfig;
  [(VCMediaStreamGroupConfig *)&v3 dealloc];
}

- (void)init
{
  v11 = *MEMORY[0x1E69E9840];

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v5 = 136315650;
      v6 = v3;
      v7 = 2080;
      v8 = "[VCAudioStreamReceiveGroupConfig init]";
      v9 = 1024;
      v10 = 23;
      _os_log_error_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to allocate _audioStreamGroupConfig", &v5, 0x1Cu);
    }
  }

  *a2 = 0;
}

@end