@interface ASDPersonalizationStore
+ (id)interface;
+ (id)sharedInstance;
- (ASDPersonalizationStore)init;
- (void)flushMetricsWithCompletionBlock:(id)a3;
- (void)getAppEventsWithCompletionBlock:(id)a3;
- (void)getClusterMappingsWithCompletionBlock:(id)a3;
- (void)getGroupingToken:(id)a3;
- (void)getTasteProfileToken:(id)a3;
- (void)recordLaunchesWithCompletionBlock:(id)a3;
- (void)recordMetricsWithCompletionBlock:(id)a3;
- (void)reloadClusterMappingsWithCompletionBlock:(id)a3;
- (void)reportAppEvent:(id)a3 completionBlock:(id)a4;
- (void)resetActorIDWithCompletionBlock:(id)a3;
- (void)resetMetricsWithCompletionBlock:(id)a3;
- (void)sendMetricsWithCompletionBlock:(id)a3;
- (void)setClusterMapping:(id)a3 completionBlock:(id)a4;
- (void)setClusterMappings:(id)a3 completionBlock:(id)a4;
- (void)tasteProfileFeatureEnabled:(id)a3;
@end

@implementation ASDPersonalizationStore

+ (id)interface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F304A718];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_getClusterMappingsWithCompletionBlock_ argumentIndex:0 ofReply:1];

  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [v2 setClasses:v8 forSelector:sel_getAppEventsWithCompletionBlock_ argumentIndex:0 ofReply:1];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  [v2 setClasses:v11 forSelector:sel_setClusterMappings_completionBlock_ argumentIndex:0 ofReply:0];

  return v2;
}

- (ASDPersonalizationStore)init
{
  v3 = +[ASDServiceBroker defaultBroker];
  v4 = v3;
  if (self)
  {
    v7.receiver = self;
    v7.super_class = ASDPersonalizationStore;
    v5 = [(ASDPersonalizationStore *)&v7 init];
    self = v5;
    if (v5)
    {
      objc_storeStrong(&v5->_serviceBroker, v3);
    }
  }

  return self;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__ASDPersonalizationStore_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED90D640 != -1)
  {
    dispatch_once(&qword_1ED90D640, block);
  }

  v2 = _MergedGlobals_52;

  return v2;
}

uint64_t __41__ASDPersonalizationStore_sharedInstance__block_invoke(uint64_t a1)
{
  _MergedGlobals_52 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (void)flushMetricsWithCompletionBlock:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] flushMetricsWithCompletionBlock", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__ASDPersonalizationStore_flushMetricsWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDD6D0;
  v11 = v4;
  v8 = v4;
  [(ASDServiceBroker *)serviceBroker getPersonalizationServiceWithCompletionHandler:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __59__ASDPersonalizationStore_flushMetricsWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __59__ASDPersonalizationStore_flushMetricsWithCompletionBlock___block_invoke_2;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__ASDPersonalizationStore_flushMetricsWithCompletionBlock___block_invoke_3;
    v7[3] = &unk_1E7CDB758;
    v8 = *(a1 + 32);
    [v4 flushMetricsWithCompletionBlock:v7];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 32) + 16);

    v6();
  }
}

- (void)getClusterMappingsWithCompletionBlock:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: getClusterMappingsWithCompletionBlock", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__ASDPersonalizationStore_getClusterMappingsWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDD6D0;
  v11 = v4;
  v8 = v4;
  [(ASDServiceBroker *)serviceBroker getPersonalizationServiceWithCompletionHandler:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __65__ASDPersonalizationStore_getClusterMappingsWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65__ASDPersonalizationStore_getClusterMappingsWithCompletionBlock___block_invoke_2;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __65__ASDPersonalizationStore_getClusterMappingsWithCompletionBlock___block_invoke_3;
    v7[3] = &unk_1E7CDB7A8;
    v8 = *(a1 + 32);
    [v4 getClusterMappingsWithCompletionBlock:v7];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 32) + 16);

    v6();
  }
}

- (void)getTasteProfileToken:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: getTasteProfileToken", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__ASDPersonalizationStore_getTasteProfileToken___block_invoke;
  v10[3] = &unk_1E7CDD6D0;
  v11 = v4;
  v8 = v4;
  [(ASDServiceBroker *)serviceBroker getPersonalizationServiceWithCompletionHandler:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __48__ASDPersonalizationStore_getTasteProfileToken___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48__ASDPersonalizationStore_getTasteProfileToken___block_invoke_2;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __48__ASDPersonalizationStore_getTasteProfileToken___block_invoke_3;
    v7[3] = &unk_1E7CDD6F8;
    v8 = *(a1 + 32);
    [v4 getGroupingToken:v7];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 32) + 16);

    v6();
  }
}

- (void)getGroupingToken:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: getGroupingToken", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__ASDPersonalizationStore_getGroupingToken___block_invoke;
  v10[3] = &unk_1E7CDD6D0;
  v11 = v4;
  v8 = v4;
  [(ASDServiceBroker *)serviceBroker getPersonalizationServiceWithCompletionHandler:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __44__ASDPersonalizationStore_getGroupingToken___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __44__ASDPersonalizationStore_getGroupingToken___block_invoke_2;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __44__ASDPersonalizationStore_getGroupingToken___block_invoke_3;
    v7[3] = &unk_1E7CDD6F8;
    v8 = *(a1 + 32);
    [v4 getGroupingToken:v7];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 32) + 16);

    v6();
  }
}

- (void)getAppEventsWithCompletionBlock:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] getPersonalizationEventsWithCompletionBlock", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__ASDPersonalizationStore_getAppEventsWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDD6D0;
  v11 = v4;
  v8 = v4;
  [(ASDServiceBroker *)serviceBroker getPersonalizationServiceWithCompletionHandler:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __59__ASDPersonalizationStore_getAppEventsWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __59__ASDPersonalizationStore_getAppEventsWithCompletionBlock___block_invoke_2;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__ASDPersonalizationStore_getAppEventsWithCompletionBlock___block_invoke_3;
    v7[3] = &unk_1E7CDB7A8;
    v8 = *(a1 + 32);
    [v4 getAppEventsWithCompletionBlock:v7];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 32) + 16);

    v6();
  }
}

- (void)recordLaunchesWithCompletionBlock:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] recordLaunchesCompletionBlock", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__ASDPersonalizationStore_recordLaunchesWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDD6D0;
  v11 = v4;
  v8 = v4;
  [(ASDServiceBroker *)serviceBroker getPersonalizationServiceWithCompletionHandler:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __61__ASDPersonalizationStore_recordLaunchesWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __61__ASDPersonalizationStore_recordLaunchesWithCompletionBlock___block_invoke_2;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61__ASDPersonalizationStore_recordLaunchesWithCompletionBlock___block_invoke_3;
    v7[3] = &unk_1E7CDB758;
    v8 = *(a1 + 32);
    [v4 recordLaunchesWithCompletionBlock:v7];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 32) + 16);

    v6();
  }
}

- (void)recordMetricsWithCompletionBlock:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] recordMetricsWithCompletionBlock", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__ASDPersonalizationStore_recordMetricsWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDD6D0;
  v11 = v4;
  v8 = v4;
  [(ASDServiceBroker *)serviceBroker getPersonalizationServiceWithCompletionHandler:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __60__ASDPersonalizationStore_recordMetricsWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __60__ASDPersonalizationStore_recordMetricsWithCompletionBlock___block_invoke_2;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __60__ASDPersonalizationStore_recordMetricsWithCompletionBlock___block_invoke_3;
    v7[3] = &unk_1E7CDB758;
    v8 = *(a1 + 32);
    [v4 recordMetricsWithCompletionBlock:v7];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 32) + 16);

    v6();
  }
}

- (void)reportAppEvent:(id)a3 completionBlock:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = objc_opt_class();
    v9 = v18;
    _os_log_impl(&dword_1B8220000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: reportAppEvent", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58__ASDPersonalizationStore_reportAppEvent_completionBlock___block_invoke;
  v14[3] = &unk_1E7CDD720;
  v15 = v6;
  v16 = v7;
  v11 = v6;
  v12 = v7;
  [(ASDServiceBroker *)serviceBroker getPersonalizationServiceWithCompletionHandler:v14];

  v13 = *MEMORY[0x1E69E9840];
}

void __58__ASDPersonalizationStore_reportAppEvent_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58__ASDPersonalizationStore_reportAppEvent_completionBlock___block_invoke_2;
    v10[3] = &unk_1E7CDB730;
    v11 = *(a1 + 40);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__ASDPersonalizationStore_reportAppEvent_completionBlock___block_invoke_3;
    v8[3] = &unk_1E7CDB758;
    v5 = *(a1 + 32);
    v9 = *(a1 + 40);
    [v4 reportAppEvent:v5 completionBlock:v8];
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 40) + 16);

    v7();
  }
}

- (void)resetActorIDWithCompletionBlock:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] resetMetricsWithCompletionBlock", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__ASDPersonalizationStore_resetActorIDWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDD6D0;
  v11 = v4;
  v8 = v4;
  [(ASDServiceBroker *)serviceBroker getPersonalizationServiceWithCompletionHandler:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __59__ASDPersonalizationStore_resetActorIDWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __59__ASDPersonalizationStore_resetActorIDWithCompletionBlock___block_invoke_2;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__ASDPersonalizationStore_resetActorIDWithCompletionBlock___block_invoke_3;
    v7[3] = &unk_1E7CDB758;
    v8 = *(a1 + 32);
    [v4 resetActorIDWithCompletionBlock:v7];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 32) + 16);

    v6();
  }
}

- (void)reloadClusterMappingsWithCompletionBlock:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: resetMetricsWithCompletionBlock", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__ASDPersonalizationStore_reloadClusterMappingsWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDD6D0;
  v11 = v4;
  v8 = v4;
  [(ASDServiceBroker *)serviceBroker getPersonalizationServiceWithCompletionHandler:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __68__ASDPersonalizationStore_reloadClusterMappingsWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __68__ASDPersonalizationStore_reloadClusterMappingsWithCompletionBlock___block_invoke_2;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __68__ASDPersonalizationStore_reloadClusterMappingsWithCompletionBlock___block_invoke_3;
    v7[3] = &unk_1E7CDB758;
    v8 = *(a1 + 32);
    [v4 reloadClusterMappingsWithCompletionBlock:v7];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 32) + 16);

    v6();
  }
}

- (void)resetMetricsWithCompletionBlock:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] resetMetricsWithCompletionBlock", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__ASDPersonalizationStore_resetMetricsWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDD6D0;
  v11 = v4;
  v8 = v4;
  [(ASDServiceBroker *)serviceBroker getPersonalizationServiceWithCompletionHandler:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __59__ASDPersonalizationStore_resetMetricsWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __59__ASDPersonalizationStore_resetMetricsWithCompletionBlock___block_invoke_2;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__ASDPersonalizationStore_resetMetricsWithCompletionBlock___block_invoke_3;
    v7[3] = &unk_1E7CDB758;
    v8 = *(a1 + 32);
    [v4 resetMetricsWithCompletionBlock:v7];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 32) + 16);

    v6();
  }
}

- (void)sendMetricsWithCompletionBlock:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] sendMetricsWithCompletionBlock", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__ASDPersonalizationStore_sendMetricsWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDD6D0;
  v11 = v4;
  v8 = v4;
  [(ASDServiceBroker *)serviceBroker getPersonalizationServiceWithCompletionHandler:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __58__ASDPersonalizationStore_sendMetricsWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__ASDPersonalizationStore_sendMetricsWithCompletionBlock___block_invoke_2;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __58__ASDPersonalizationStore_sendMetricsWithCompletionBlock___block_invoke_3;
    v7[3] = &unk_1E7CDB758;
    v8 = *(a1 + 32);
    [v4 sendMetricsWithCompletionBlock:v7];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 32) + 16);

    v6();
  }
}

- (void)setClusterMapping:(id)a3 completionBlock:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = objc_opt_class();
    v9 = v18;
    _os_log_impl(&dword_1B8220000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: setClusterMapping", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__ASDPersonalizationStore_setClusterMapping_completionBlock___block_invoke;
  v14[3] = &unk_1E7CDD720;
  v15 = v6;
  v16 = v7;
  v11 = v6;
  v12 = v7;
  [(ASDServiceBroker *)serviceBroker getPersonalizationServiceWithCompletionHandler:v14];

  v13 = *MEMORY[0x1E69E9840];
}

void __61__ASDPersonalizationStore_setClusterMapping_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61__ASDPersonalizationStore_setClusterMapping_completionBlock___block_invoke_2;
    v10[3] = &unk_1E7CDB730;
    v11 = *(a1 + 40);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __61__ASDPersonalizationStore_setClusterMapping_completionBlock___block_invoke_3;
    v8[3] = &unk_1E7CDB758;
    v5 = *(a1 + 32);
    v9 = *(a1 + 40);
    [v4 setClusterMapping:v5 completionBlock:v8];
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 40) + 16);

    v7();
  }
}

- (void)setClusterMappings:(id)a3 completionBlock:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = objc_opt_class();
    v9 = v18;
    _os_log_impl(&dword_1B8220000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: setClusterMappings", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __62__ASDPersonalizationStore_setClusterMappings_completionBlock___block_invoke;
  v14[3] = &unk_1E7CDD720;
  v15 = v6;
  v16 = v7;
  v11 = v6;
  v12 = v7;
  [(ASDServiceBroker *)serviceBroker getPersonalizationServiceWithCompletionHandler:v14];

  v13 = *MEMORY[0x1E69E9840];
}

void __62__ASDPersonalizationStore_setClusterMappings_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__ASDPersonalizationStore_setClusterMappings_completionBlock___block_invoke_2;
    v10[3] = &unk_1E7CDB730;
    v11 = *(a1 + 40);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __62__ASDPersonalizationStore_setClusterMappings_completionBlock___block_invoke_3;
    v8[3] = &unk_1E7CDB758;
    v5 = *(a1 + 32);
    v9 = *(a1 + 40);
    [v4 setClusterMappings:v5 completionBlock:v8];
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 40) + 16);

    v7();
  }
}

- (void)tasteProfileFeatureEnabled:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Taste profile enabled", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__ASDPersonalizationStore_tasteProfileFeatureEnabled___block_invoke;
  v10[3] = &unk_1E7CDD6D0;
  v11 = v4;
  v8 = v4;
  [(ASDServiceBroker *)serviceBroker getPersonalizationServiceWithCompletionHandler:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __54__ASDPersonalizationStore_tasteProfileFeatureEnabled___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __54__ASDPersonalizationStore_tasteProfileFeatureEnabled___block_invoke_2;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 32);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __54__ASDPersonalizationStore_tasteProfileFeatureEnabled___block_invoke_3;
    v7[3] = &unk_1E7CDB758;
    v8 = *(a1 + 32);
    [v4 tasteProfileFeatureEnabledWithCompletionBlock:v7];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 32) + 16);

    v6();
  }
}

@end