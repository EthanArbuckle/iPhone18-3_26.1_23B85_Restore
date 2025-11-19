@interface AXMServiceInstance
- (AXMServiceInstance)init;
- (id)_cachedEngineForEngine:(id)a3;
- (void)_removeEngineFromCache:(id)a3;
- (void)prewarmVisionEngineService;
- (void)run;
- (void)visionEngine:(id)a3 evaluateSource:(id)a4 context:(id)a5 options:(int64_t)a6 result:(id)a7;
- (void)willBecomeIdle:(id)a3 completion:(id)a4;
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

    v5 = [(AXMServiceInstance *)v2 idleManager];
    [v5 setDelegate:v2];
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

  v5 = [(AXMServiceInstance *)self xpcServer];
  [v5 setDelegate:self];

  v6 = [(AXMServiceInstance *)self xpcServer];
  [v6 run];

  v7 = AXMediaLogService();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "*** AXMediaUtilities service about to exit ***", v8, 2u);
  }
}

- (id)_cachedEngineForEngine:(id)a3
{
  v4 = a3;
  v5 = [(AXMServiceInstance *)self engineCache];
  v6 = [v4 identifier];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = [(AXMServiceInstance *)self engineCache];
    v9 = [v4 identifier];
    [v8 setObject:v4 forKey:v9];

    v7 = v4;
  }

  return v7;
}

- (void)_removeEngineFromCache:(id)a3
{
  v4 = a3;
  v6 = [(AXMServiceInstance *)self engineCache];
  v5 = [v4 identifier];

  [v6 removeObjectForKey:v5];
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

- (void)visionEngine:(id)a3 evaluateSource:(id)a4 context:(id)a5 options:(int64_t)a6 result:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = objc_autoreleasePoolPush();
  if (v8)
  {
    [(AXMServiceInstance *)self _removeEngineFromCache:v12];
  }

  v17 = [(AXMServiceInstance *)self _cachedEngineForEngine:v12];

  v18 = [v13 identifier];
  v19 = [v17 sourceNodeWithIdentifier:v18];

  if (v19)
  {
    v20 = [v14 analysisOptions];
    v21 = [v20 clientID];

    if (v21 == 1)
    {
      v22 = [(AXMServiceInstance *)self idleManager];
      [v22 voiceOverActivityOccurred];
    }

    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = __73__AXMServiceInstance_visionEngine_evaluateSource_context_options_result___block_invoke;
    v26[3] = &unk_100008240;
    v27 = v15;
    [v19 triggerWithContext:v14 cacheKey:0 resultHandler:v26];
  }

  else
  {
    v23 = [0 identifier];
    v25 = [v17 identifier];
    v24 = _AXMMakeError();
    (*(v15 + 2))(v15, 0, v24);
  }

  objc_autoreleasePoolPop(v16);
}

- (void)willBecomeIdle:(id)a3 completion:(id)a4
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __48__AXMServiceInstance_willBecomeIdle_completion___block_invoke;
  v5[3] = &unk_1000082B8;
  v5[4] = self;
  v6 = a4;
  v4 = v6;
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