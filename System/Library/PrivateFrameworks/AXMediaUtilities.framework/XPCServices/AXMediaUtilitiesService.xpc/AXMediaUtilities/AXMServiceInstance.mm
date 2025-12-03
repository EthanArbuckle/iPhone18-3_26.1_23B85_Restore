@interface AXMServiceInstance
- (AXMServiceInstance)init;
- (id)_cachedEngineForEngine:(id)engine;
- (void)_removeEngineFromCache:(id)cache;
- (void)prewarmVisionEngineService;
- (void)run;
- (void)visionEngine:(id)engine evaluateSource:(id)source context:(id)context options:(int64_t)options result:(id)result;
- (void)willBecomeIdle:(id)idle completion:(id)completion;
@end

@implementation AXMServiceInstance

- (AXMServiceInstance)init
{
  v7.receiver = self;
  v7.super_class = AXMServiceInstance;
  v2 = [(AXMServiceInstance *)&v7 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    [(AXMServiceInstance *)v2 setEngineCache:v3];

    v4 = objc_alloc_init(AXMIdleManager);
    [(AXMServiceInstance *)v2 setIdleManager:v4];

    idleManager = [(AXMServiceInstance *)v2 idleManager];
    [idleManager setDelegate:v2];
  }

  return v2;
}

- (void)run
{
  v3 = AXMediaLogService();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "*** AXMediaUtilities service starting up ***", buf, 2u);
  }

  v4 = objc_alloc_init(AXMServiceXPCServer);
  [(AXMServiceInstance *)self setXpcServer:v4];

  xpcServer = [(AXMServiceInstance *)self xpcServer];
  [xpcServer setDelegate:self];

  xpcServer2 = [(AXMServiceInstance *)self xpcServer];
  [xpcServer2 run];

  v7 = AXMediaLogService();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "*** AXMediaUtilities service about to exit ***", v8, 2u);
  }
}

- (id)_cachedEngineForEngine:(id)engine
{
  engineCopy = engine;
  engineCache = [(AXMServiceInstance *)self engineCache];
  identifier = [engineCopy identifier];
  v7 = [engineCache objectForKeyedSubscript:identifier];

  if (!v7)
  {
    engineCache2 = [(AXMServiceInstance *)self engineCache];
    identifier2 = [engineCopy identifier];
    [engineCache2 setObject:engineCopy forKey:identifier2];

    v7 = engineCopy;
  }

  return v7;
}

- (void)_removeEngineFromCache:(id)cache
{
  cacheCopy = cache;
  engineCache = [(AXMServiceInstance *)self engineCache];
  identifier = [cacheCopy identifier];

  [engineCache removeObjectForKey:identifier];
}

- (void)prewarmVisionEngineService
{
  v2 = AXMediaLogService();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Service did receive prewarm message", v3, 2u);
  }
}

- (void)visionEngine:(id)engine evaluateSource:(id)source context:(id)context options:(int64_t)options result:(id)result
{
  optionsCopy = options;
  engineCopy = engine;
  sourceCopy = source;
  contextCopy = context;
  resultCopy = result;
  v16 = objc_autoreleasePoolPush();
  if (optionsCopy)
  {
    [(AXMServiceInstance *)self _removeEngineFromCache:engineCopy];
  }

  v17 = [(AXMServiceInstance *)self _cachedEngineForEngine:engineCopy];

  identifier = [sourceCopy identifier];
  v19 = [v17 sourceNodeWithIdentifier:identifier];

  if (v19)
  {
    analysisOptions = [contextCopy analysisOptions];
    clientID = [analysisOptions clientID];

    if (clientID == 1)
    {
      idleManager = [(AXMServiceInstance *)self idleManager];
      [idleManager voiceOverActivityOccurred];
    }

    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = __73__AXMServiceInstance_visionEngine_evaluateSource_context_options_result___block_invoke;
    v26[3] = &unk_100008240;
    v27 = resultCopy;
    [v19 triggerWithContext:contextCopy cacheKey:0 resultHandler:v26];
  }

  else
  {
    identifier2 = [0 identifier];
    identifier3 = [v17 identifier];
    v24 = _AXMMakeError();
    (*(resultCopy + 2))(resultCopy, 0, v24);
  }

  objc_autoreleasePoolPop(v16);
}

- (void)willBecomeIdle:(id)idle completion:(id)completion
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __48__AXMServiceInstance_willBecomeIdle_completion___block_invoke;
  v5[3] = &unk_1000082B8;
  v5[4] = self;
  completionCopy = completion;
  v4 = completionCopy;
  dispatch_async(&_dispatch_main_q, v5);
}

void __48__AXMServiceInstance_willBecomeIdle_completion___block_invoke(uint64_t a1)
{
  v2 = AXMediaLogService();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "notified that service will go idle. purging engine resources", buf, 2u);
  }

  v3 = dispatch_group_create();
  v4 = [*(a1 + 32) engineCache];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __48__AXMServiceInstance_willBecomeIdle_completion___block_invoke_31;
  v9[3] = &unk_100008290;
  v10 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v9];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __48__AXMServiceInstance_willBecomeIdle_completion___block_invoke_3;
  block[3] = &unk_1000082B8;
  v6 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v6;
  dispatch_group_notify(v5, &_dispatch_main_q, block);
}

void __48__AXMServiceInstance_willBecomeIdle_completion___block_invoke_31(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  dispatch_group_enter(v4);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __48__AXMServiceInstance_willBecomeIdle_completion___block_invoke_2;
  v6[3] = &unk_100008268;
  v7 = *(a1 + 32);
  [v5 purgeResources:v6];
}

uint64_t __48__AXMServiceInstance_willBecomeIdle_completion___block_invoke_3(uint64_t a1)
{
  v2 = AXMediaLogService();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "did purge engine resources", v5, 2u);
  }

  AXMDeleteCoreImageContext();
  v3 = [*(a1 + 32) engineCache];
  [v3 removeAllObjects];

  return (*(*(a1 + 40) + 16))();
}

@end