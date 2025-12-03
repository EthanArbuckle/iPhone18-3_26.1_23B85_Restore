@interface VCDaemonProcessInfoManager
+ (id)copyProcessInfo;
+ (id)sharedManager;
- (VCDaemonProcessInfoManager)init;
- (id)copyAuditTokenInfo;
- (id)copyUniquePidInfo;
- (void)copyUniquePidInfo;
- (void)dealloc;
- (void)deregisterBlocksForService;
@end

@implementation VCDaemonProcessInfoManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[VCDaemonProcessInfoManager sharedManager];
  }

  return _vcDaemonProcessInfoManager;
}

void __43__VCDaemonProcessInfoManager_sharedManager__block_invoke()
{
  if (!_vcDaemonProcessInfoManager)
  {
    _vcDaemonProcessInfoManager = objc_alloc_init(VCDaemonProcessInfoManager);
  }
}

+ (id)copyProcessInfo
{
  sharedManager = [objc_opt_class() sharedManager];

  return [sharedManager copyUniquePidInfo];
}

- (VCDaemonProcessInfoManager)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCDaemonProcessInfoManager;
  v2 = [(VCDaemonProcessInfoManager *)&v5 init];
  if (v2)
  {
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
    v2->_xpcQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCDaemonProcessInfoManager.xpcQueue", 0, CustomRootQueue);
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(VCDaemonProcessInfoManager *)self deregisterBlocksForService];
  dispatch_release(self->_xpcQueue);
  v3.receiver = self;
  v3.super_class = VCDaemonProcessInfoManager;
  [(VCDaemonProcessInfoManager *)&v3 dealloc];
}

uint64_t __54__VCDaemonProcessInfoManager_registerBlocksForService__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  if ([a2 objectForKeyedSubscript:@"vcGetDaemonProcessInfoUniquePid"])
  {
    v5 = *(a1 + 32);

    return [v5 copyUniquePidInfo];
  }

  else
  {
    if (![a2 objectForKeyedSubscript:@"vcDaemonProcessInfoAuditToken"])
    {
      return 0;
    }

    v6 = *(a1 + 32);

    return [v6 copyAuditTokenInfo];
  }
}

- (void)deregisterBlocksForService
{
  v2 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];

  [v2 deregisterFromService:"vcGetDaemonProcessInfo"];
}

- (id)copyUniquePidInfo
{
  v30 = *MEMORY[0x1E69E9840];
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  buffer = 0u;
  v3 = getpid();
  if (proc_pidinfo(v3, 17, 1uLL, &buffer, 56) == 56)
  {
    v4 = 0;
    v5 = v27;
  }

  else
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [(VCDaemonProcessInfoManager *)v7 copyUniquePidInfo];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(VCDaemonProcessInfoManager *)self performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v17 = v9;
          v18 = 2080;
          v19 = "[VCDaemonProcessInfoManager copyUniquePidInfo]";
          v20 = 1024;
          v21 = 124;
          v22 = 2112;
          v23 = v6;
          v24 = 2048;
          selfCopy = self;
          _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to fetch unique pid", buf, 0x30u);
        }
      }
    }

    v5 = -1;
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCDaemonProcessInfo" code:-1 userInfo:0];
  }

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{v5, @"avcKeyDaemonProcessInfoUniquePID"}];
  v11 = [objc_msgSend(MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:{1), "mutableCopy"}];
  v12 = v11;
  if (v4)
  {
    [v11 setObject:v4 forKeyedSubscript:@"avcKeyDaemonProcessInfoError"];
  }

  return v12;
}

- (id)copyAuditTokenInfo
{
  v11 = *MEMORY[0x1E69E9840];
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10[0] = v2;
  v10[1] = v2;
  VCUtil_AuditTokenForCurrentProcess(v10);
  if (VCUtil_AuditTokenValid(v10))
  {
    v3 = [MEMORY[0x1E695DEF0] dataWithBytes:v10 length:32];
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCDaemonProcessInfo" code:-2 userInfo:0];
    v3 = 0;
  }

  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
  v6 = v5;
  if (v3)
  {
    v7 = @"vcDaemonProcessInfoAuditToken";
    v8 = v3;
LABEL_8:
    [v5 setObject:v8 forKeyedSubscript:v7];
    return v6;
  }

  if (v4)
  {
    v7 = @"ERROR";
    v8 = v4;
    goto LABEL_8;
  }

  return v6;
}

- (void)copyUniquePidInfo
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  selfCopy = self;
  v4 = 2080;
  v5 = "[VCDaemonProcessInfoManager copyUniquePidInfo]";
  v6 = 1024;
  v7 = 124;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to fetch unique pid", &v2, 0x1Cu);
}

@end