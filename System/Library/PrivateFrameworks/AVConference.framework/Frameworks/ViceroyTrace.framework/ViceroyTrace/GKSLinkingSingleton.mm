@interface GKSLinkingSingleton
+ (id)defaultGKSLinkingSingleton;
- (void)handleForBinaryPath:(id)path;
@end

@implementation GKSLinkingSingleton

+ (id)defaultGKSLinkingSingleton
{
  result = defaultGKSLinkingSingleton__GKSLinkingSingleton;
  if (!defaultGKSLinkingSingleton__GKSLinkingSingleton)
  {
    v3 = objc_opt_class();
    objc_sync_enter(v3);
    if (!defaultGKSLinkingSingleton__GKSLinkingSingleton)
    {
      defaultGKSLinkingSingleton__GKSLinkingSingleton = objc_alloc_init(GKSLinkingSingleton);
    }

    objc_sync_exit(v3);
    return defaultGKSLinkingSingleton__GKSLinkingSingleton;
  }

  return result;
}

- (void)handleForBinaryPath:(id)path
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CCA8A8]);
  objc_sync_enter(self);
  v6 = [(NSMutableDictionary *)self->handleSoFar objectForKeyedSubscript:path];
  if (v6)
  {
    dlHandle = [v6 dlHandle];
    goto LABEL_3;
  }

  dlHandle = dlopen([path UTF8String], 1);
  if (VRTraceGetErrorLogLevelForModule("") >= 3 && (v10 = VRTraceErrorLogLevelToCSTR(3u), v11 = gVRTraceOSLog, os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR)))
  {
    v17 = 136316162;
    v18 = v10;
    v19 = 2080;
    v20 = "[GKSLinkingSingleton handleForBinaryPath:]";
    v21 = 1024;
    v22 = 47;
    v23 = 2080;
    uTF8String = [path UTF8String];
    v25 = 2048;
    v26 = dlHandle;
    _os_log_error_impl(&dword_23D4DF000, v11, OS_LOG_TYPE_ERROR, " [%s] %s:%d ViceroyTrace: Attempting to get symbols out of path %s, handle = %p", &v17, 0x30u);
    if (dlHandle)
    {
LABEL_7:
      if (!self->handleSoFar)
      {
        v12 = objc_alloc_init(GKSDLHandleWrapper);
        [(GKSDLHandleWrapper *)v12 setDlHandle:dlHandle];
        v13 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
        self->handleSoFar = v13;
        [(NSMutableDictionary *)v13 setObject:v12 forKeyedSubscript:path];
      }

      goto LABEL_3;
    }
  }

  else if (dlHandle)
  {
    goto LABEL_7;
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    v14 = VRTraceErrorLogLevelToCSTR(3u);
    v15 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      v16 = dlerror();
      [(GKSLinkingSingleton *)v14 handleForBinaryPath:v16, &v17, v15];
    }
  }

  dlHandle = 0;
LABEL_3:
  objc_sync_exit(self);

  v8 = *MEMORY[0x277D85DE8];
  return dlHandle;
}

- (void)handleForBinaryPath:(uint8_t *)buf .cold.1(uint64_t a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 136315906;
  *(buf + 4) = a1;
  *(buf + 6) = 2080;
  *(buf + 14) = "[GKSLinkingSingleton handleForBinaryPath:]";
  *(buf + 11) = 1024;
  *(buf + 6) = 50;
  *(buf + 14) = 2080;
  *(buf + 30) = a2;
  _os_log_error_impl(&dword_23D4DF000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to get handle for GKSPerformance framework %s", buf, 0x26u);
}

@end