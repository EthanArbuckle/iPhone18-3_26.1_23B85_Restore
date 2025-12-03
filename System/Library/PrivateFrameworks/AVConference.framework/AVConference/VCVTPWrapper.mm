@interface VCVTPWrapper
+ (void)startVTP;
+ (void)stopVTP;
@end

@implementation VCVTPWrapper

+ (void)startVTP
{
  v14 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  v3 = vtpRefCount;
  if (!vtpRefCount)
  {
    VTP_Initialize();
    v3 = vtpRefCount;
  }

  vtpRefCount = v3 + 1;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315906;
      v7 = v4;
      v8 = 2080;
      v9 = "+[VCVTPWrapper startVTP]";
      v10 = 1024;
      v11 = 23;
      v12 = 1024;
      v13 = vtpRefCount;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VTP refCount=%d", &v6, 0x22u);
    }
  }

  objc_sync_exit(self);
}

+ (void)stopVTP
{
  v13 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  if (vtpRefCount >= 1)
  {
    --vtpRefCount;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315906;
        v6 = v3;
        v7 = 2080;
        v8 = "+[VCVTPWrapper stopVTP]";
        v9 = 1024;
        v10 = 31;
        v11 = 1024;
        v12 = vtpRefCount;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VTP refCount=%d", &v5, 0x22u);
      }
    }

    if (!vtpRefCount)
    {
      VTP_Cleanup();
    }
  }

  objc_sync_exit(self);
}

@end