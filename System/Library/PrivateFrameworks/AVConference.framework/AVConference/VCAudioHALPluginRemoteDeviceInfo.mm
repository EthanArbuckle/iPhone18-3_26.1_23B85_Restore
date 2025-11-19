@interface VCAudioHALPluginRemoteDeviceInfo
- (VCAudioHALPluginRemoteDeviceInfo)init;
- (void)dealloc;
@end

@implementation VCAudioHALPluginRemoteDeviceInfo

- (VCAudioHALPluginRemoteDeviceInfo)init
{
  v23 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = VCAudioHALPluginRemoteDeviceInfo;
  v2 = [(VCAudioHALPluginRemoteDeviceInfo *)&v12 init];
  if (v2)
  {
    if (objc_opt_class() == v2)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v4 = VRTraceErrorLogLevelToCSTR();
        v5 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v14 = v4;
          v15 = 2080;
          v16 = "[VCAudioHALPluginRemoteDeviceInfo init]";
          v17 = 1024;
          v18 = 20;
          v6 = " [%s] %s:%d ";
          v7 = v5;
          v8 = 28;
LABEL_12:
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v3 = [(VCAudioHALPluginRemoteDeviceInfo *)v2 performSelector:sel_logPrefix];
      }

      else
      {
        v3 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v14 = v9;
          v15 = 2080;
          v16 = "[VCAudioHALPluginRemoteDeviceInfo init]";
          v17 = 1024;
          v18 = 20;
          v19 = 2112;
          v20 = v3;
          v21 = 2048;
          v22 = v2;
          v6 = " [%s] %s:%d %@(%p) ";
          v7 = v10;
          v8 = 48;
          goto LABEL_12;
        }
      }
    }
  }

  return v2;
}

- (void)dealloc
{
  v22 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v13 = v4;
        v14 = 2080;
        v15 = "[VCAudioHALPluginRemoteDeviceInfo dealloc]";
        v16 = 1024;
        v17 = 26;
        v6 = " [%s] %s:%d ";
        v7 = v5;
        v8 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCAudioHALPluginRemoteDeviceInfo *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v13 = v9;
        v14 = 2080;
        v15 = "[VCAudioHALPluginRemoteDeviceInfo dealloc]";
        v16 = 1024;
        v17 = 26;
        v18 = 2112;
        v19 = v3;
        v20 = 2048;
        v21 = self;
        v6 = " [%s] %s:%d %@(%p) ";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  v11.receiver = self;
  v11.super_class = VCAudioHALPluginRemoteDeviceInfo;
  [(VCAudioHALPluginRemoteDeviceInfo *)&v11 dealloc];
}

@end