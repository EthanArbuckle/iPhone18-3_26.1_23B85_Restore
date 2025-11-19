@interface BGTaskScheduler
+ (BGTaskScheduler)sharedScheduler;
+ (BOOL)_isNotApplication;
+ (BOOL)_isRunningInExtension;
+ (BOOL)_isRunningInNonExtensionOrApplication;
+ (id)_log;
+ (id)_sharedSchedulerIfExists;
+ (int64_t)supportedResources;
+ (void)_applicationDidFinishLaunching:(id)a3;
+ (void)initialize;
+ (void)load;
- (BGTaskScheduler)init;
- (BOOL)_isRunningTaskOfClass:(Class)a3;
- (BOOL)_unsafe_registerForTaskWithIdentifier:(id)a3 usingQueue:(id)a4 launchHandler:(id)a5;
- (BOOL)_unsafe_submitTaskRequest:(id)a3 error:(id *)a4;
- (BOOL)registerForTaskWithIdentifier:(NSString *)identifier usingQueue:(dispatch_queue_t)queue launchHandler:(void *)launchHandler;
- (BOOL)submitTaskRequest:(BGTaskRequest *)taskRequest error:(NSError *)error;
- (_BGTaskIdentifierRegistry)_identifierRegistry;
- (id)_init;
- (id)_queueForRegistration:(id)a3;
- (id)_runningTasks;
- (id)_unsafe_createExpirationRequestsForActivities:(id)a3;
- (id)_unsafe_registrationForIdentifier:(id)a3;
- (id)_unsafe_taskForActivity:(id)a3;
- (void)_callExpirationHandlersForActivities:(id)a3 shouldQueue:(BOOL)a4;
- (void)_callRegisteredHandlersForActivities:(id)a3;
- (void)_handleAppLaunch;
- (void)_handleSubmissionWithoutRegistrationForTaskRequest:(id)a3 error:(id *)a4;
- (void)_runTask:(id)a3 registration:(id)a4;
- (void)_simulateExpirationForTaskWithIdentifier:(id)a3;
- (void)_simulateLaunchForTaskWithIdentifier:(id)a3;
- (void)cancelAllTaskRequests;
- (void)cancelTaskRequestWithIdentifier:(NSString *)identifier;
- (void)getPendingTaskRequestsWithCompletionHandler:(void *)completionHandler;
- (void)scheduler:(id)a3 handleLaunchForActivities:(id)a4;
- (void)scheduler:(id)a3 willExpireActivities:(id)a4;
@end

@implementation BGTaskScheduler

+ (void)load
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:a1 selector:sel__applicationDidFinishLaunching_ name:@"UIApplicationDidFinishLaunchingNotification" object:0];
}

+ (void)initialize
{
  if ([a1 _isNotApplication])
  {
    atomic_store(1u, appHasLaunched);
    v3 = [a1 _sharedSchedulerIfExists];
    [v3 _handleAppLaunch];
  }
}

+ (BOOL)_isNotApplication
{
  v2 = [MEMORY[0x1E69C75D0] currentProcess];
  v3 = [v2 isApplication];

  return v3 ^ 1;
}

+ (id)_log
{
  if (_log_onceToken != -1)
  {
    +[BGTaskScheduler _log];
  }

  v3 = _log_log;

  return v3;
}

uint64_t __23__BGTaskScheduler__log__block_invoke()
{
  _log_log = os_log_create("com.apple.BackgroundTasks", "Framework");

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)_isRunningInExtension
{
  if (_isRunningInExtension_once != -1)
  {
    +[BGTaskScheduler _isRunningInExtension];
  }

  return _isRunningInExtension_result;
}

void __40__BGTaskScheduler__isRunningInExtension__block_invoke()
{
  v5 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v5 infoDictionary];
  v1 = [v0 objectForKey:@"NSExtension"];
  if (v1)
  {
    _isRunningInExtension_result = 1;
  }

  else
  {
    v2 = [MEMORY[0x1E696AAE8] mainBundle];
    v3 = [v2 infoDictionary];
    v4 = [v3 objectForKey:@"PlugInKit"];
    _isRunningInExtension_result = v4 != 0;
  }
}

+ (id)_sharedSchedulerIfExists
{
  v3 = atomic_load(sharedSchedulerCreated);
  if (v3)
  {
    v4 = [a1 sharedScheduler];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __34__BGTaskScheduler_sharedScheduler__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _isRunningInExtension])
  {
    v2 = [MEMORY[0x1E696AD88] defaultCenter];
    [v2 removeObserver:*(a1 + 32)];
  }

  atomic_store(1u, sharedSchedulerCreated);
  sharedScheduler_sharedScheduler = [[BGTaskScheduler alloc] _init];

  return MEMORY[0x1EEE66BB8]();
}

+ (BGTaskScheduler)sharedScheduler
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__BGTaskScheduler_sharedScheduler__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedScheduler_onceToken != -1)
  {
    dispatch_once(&sharedScheduler_onceToken, block);
  }

  v2 = sharedScheduler_sharedScheduler;

  return v2;
}

- (id)_init
{
  v11.receiver = self;
  v11.super_class = BGTaskScheduler;
  v2 = [(BGTaskScheduler *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->__lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    registrations = v3->__registrations;
    v3->__registrations = v4;

    v6 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    runningTasksMap = v3->__runningTasksMap;
    v3->__runningTasksMap = v6;

    v8 = [MEMORY[0x1E699A4B8] sharedScheduler];
    scheduler = v3->__scheduler;
    v3->__scheduler = v8;
  }

  return v3;
}

- (_BGTaskIdentifierRegistry)_identifierRegistry
{
  identifierRegistry = self->__identifierRegistry;
  if (!identifierRegistry)
  {
    v4 = +[_BGTaskIdentifierRegistry registryWithContentsFromPlist];
    v5 = self->__identifierRegistry;
    self->__identifierRegistry = v4;

    identifierRegistry = self->__identifierRegistry;
  }

  v6 = identifierRegistry;

  return v6;
}

- (void)cancelAllTaskRequests
{
  v3 = +[BGTaskScheduler _log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1AC80E000, v3, OS_LOG_TYPE_DEFAULT, "cancelAllTaskRequests", v5, 2u);
  }

  v4 = [(BGTaskScheduler *)self _scheduler];
  [v4 cancelAllTaskRequests];
}

- (void)_handleAppLaunch
{
  v3 = +[BGTaskScheduler _log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_1AC80E000, v3, OS_LOG_TYPE_DEFAULT, "Handling app launch", v12, 2u);
  }

  os_unfair_lock_lock(&self->__lock);
  v4 = [(BGTaskScheduler *)self _queuedLaunchActivities];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(BGTaskScheduler *)self _queuedLaunchActivities];
    v7 = [v6 copy];

    [(BGTaskScheduler *)self _setQueuedLaunchActivities:0];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(BGTaskScheduler *)self _queuedExpiredLaunchActivities];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [(BGTaskScheduler *)self _queuedExpiredLaunchActivities];
    v11 = [v10 copy];

    [(BGTaskScheduler *)self _setQueuedExpiredLaunchActivities:0];
  }

  else
  {
    v11 = 0;
  }

  [(BGTaskScheduler *)self _setIdentifierRegistry:0];
  os_unfair_lock_unlock(&self->__lock);
  if ([v7 count])
  {
    [(BGTaskScheduler *)self _callRegisteredHandlersForActivities:v7];
  }

  if ([v11 count])
  {
    [(BGTaskScheduler *)self _callExpirationHandlersForActivities:v11 shouldQueue:0];
  }
}

+ (void)_applicationDidFinishLaunching:(id)a3
{
  v4 = +[BGTaskScheduler _log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [BGTaskScheduler _applicationDidFinishLaunching:v4];
  }

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 removeObserver:a1];

  if (([a1 _isRunningInExtension] & 1) == 0)
  {
    v6 = atomic_load(appHasLaunched);
    if ((v6 & 1) == 0)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __50__BGTaskScheduler__applicationDidFinishLaunching___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = a1;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

void __50__BGTaskScheduler__applicationDidFinishLaunching___block_invoke(uint64_t a1)
{
  atomic_store(1u, appHasLaunched);
  v1 = [*(a1 + 32) _sharedSchedulerIfExists];
  [v1 _handleAppLaunch];
}

+ (BOOL)_isRunningInNonExtensionOrApplication
{
  if (_isRunningInNonExtensionOrApplication_once != -1)
  {
    +[BGTaskScheduler _isRunningInNonExtensionOrApplication];
  }

  return _isRunningInNonExtensionOrApplication_result;
}

void __56__BGTaskScheduler__isRunningInNonExtensionOrApplication__block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = +[BGTaskScheduler _log];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = [MEMORY[0x1E696AAE8] mainBundle];
    v2 = [v1 infoDictionary];
    v6 = 138412290;
    v7 = v2;
    _os_log_impl(&dword_1AC80E000, v0, OS_LOG_TYPE_DEFAULT, "Main Bundle: %@", &v6, 0xCu);
  }

  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v3 infoDictionary];
  _isRunningInNonExtensionOrApplication_result = [v4 count] == 0;

  v5 = *MEMORY[0x1E69E9840];
}

- (BGTaskScheduler)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"BGTaskScheduler.m" lineNumber:243 description:@"Do not directly instantiate; use the shared scheduler instead"];

  return 0;
}

+ (int64_t)supportedResources
{
  if (supportedResources_onceToken != -1)
  {
    +[BGTaskScheduler supportedResources];
  }

  return supportedResources_resources;
}

void __37__BGTaskScheduler_supportedResources__block_invoke()
{
  v0 = [MEMORY[0x1E699A4B8] sharedScheduler];
  [v0 continuedProcessingDeviceCapabilities:&__block_literal_global_101];
}

- (BOOL)registerForTaskWithIdentifier:(NSString *)identifier usingQueue:(dispatch_queue_t)queue launchHandler:(void *)launchHandler
{
  v8 = identifier;
  v9 = launchHandler;
  v10 = queue;
  v11 = +[BGTaskScheduler _log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [BGTaskScheduler registerForTaskWithIdentifier:usingQueue:launchHandler:];
  }

  os_unfair_lock_lock(&self->__lock);
  v12 = [(BGTaskScheduler *)self _unsafe_registerForTaskWithIdentifier:v8 usingQueue:v10 launchHandler:v9];

  os_unfair_lock_unlock(&self->__lock);
  return v12;
}

- (BOOL)_unsafe_registerForTaskWithIdentifier:(id)a3 usingQueue:(id)a4 launchHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (([objc_opt_class() _isNotApplication] & 1) == 0)
  {
    v12 = [(BGTaskScheduler *)self _identifierRegistry];
    v13 = [v12 isPermissibleFullyComposedIdentifier:v9];

    if ((v13 & 1) == 0)
    {
      v23 = +[BGTaskScheduler _log];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [BGTaskScheduler _unsafe_registerForTaskWithIdentifier:usingQueue:launchHandler:];
      }

      goto LABEL_11;
    }
  }

  v14 = [(BGTaskScheduler *)self _registrations];
  v15 = [v14 objectForKeyedSubscript:v9];

  if (v15)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"BGTaskScheduler.m" lineNumber:335 description:{@"Launch handler for task with identifier %@ has already been registered", v9}];

LABEL_11:
    v22 = 0;
    goto LABEL_12;
  }

  v17 = [(BGTaskScheduler *)self _registrations];
  v18 = [v17 count];

  if (!v18)
  {
    v19 = [(BGTaskScheduler *)self _scheduler];
    [v19 setBackgroundTasksSchedulerDelegate:self];
  }

  v20 = [[_BGTaskSchedulerRegistration alloc] initWithIdentifier:v9 queue:v10 launchHandler:v11];
  v21 = [(BGTaskScheduler *)self _registrations];
  [v21 setObject:v20 forKeyedSubscript:v9];

  v22 = 1;
LABEL_12:

  return v22;
}

- (BOOL)submitTaskRequest:(BGTaskRequest *)taskRequest error:(NSError *)error
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = taskRequest;
  v7 = +[BGTaskScheduler _log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&dword_1AC80E000, v7, OS_LOG_TYPE_DEFAULT, "submitTaskRequest: %{public}@", &v11, 0xCu);
  }

  os_unfair_lock_lock(&self->__lock);
  v8 = [(BGTaskScheduler *)self _unsafe_submitTaskRequest:v6 error:error];
  os_unfair_lock_unlock(&self->__lock);

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)_handleSubmissionWithoutRegistrationForTaskRequest:(id)a3 error:(id *)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [(BGTaskScheduler *)self _identifierRegistry];
  v9 = [v7 identifier];
  v10 = [v8 isPermissibleFullyComposedIdentifier:v9];

  if (v10)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [v7 identifier];
    [v11 handleFailureInMethod:a2 object:self file:@"BGTaskScheduler.m" lineNumber:379 description:{@"No launch handler registered for task with identifier %@", v12}];
  }

  else
  {
    v13 = +[BGTaskScheduler _log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [BGTaskScheduler _handleSubmissionWithoutRegistrationForTaskRequest:v7 error:v13];
    }

    if (a4)
    {
      v14 = MEMORY[0x1E696ABC0];
      v19 = @"Unrecognized Identifier";
      v15 = [v7 identifier];
      v16 = v15;
      if (!v15)
      {
        v16 = [MEMORY[0x1E695DFB0] null];
      }

      v20[0] = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      *a4 = [v14 errorWithDomain:@"BGTaskSchedulerErrorDomain" code:3 userInfo:v17];

      if (!v15)
      {
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (BOOL)_unsafe_submitTaskRequest:(id)a3 error:(id *)a4
{
  v34[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (![objc_opt_class() _correspondingTaskClass])
  {
    goto LABEL_20;
  }

  if (([objc_opt_class() _isRunningInExtension] & 1) == 0)
  {
    v7 = [v6 identifier];
    v8 = [(BGTaskScheduler *)self _unsafe_registrationForIdentifier:v7];

    if (v8)
    {

      goto LABEL_5;
    }

    [(BGTaskScheduler *)self _handleSubmissionWithoutRegistrationForTaskRequest:v6 error:a4];
LABEL_20:
    v21 = 0;
    goto LABEL_25;
  }

LABEL_5:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = +[BGTaskScheduler supportedResources];
    v10 = [v6 requiredResources];
    if ((v10 & ~v9) != 0)
    {
      v11 = MEMORY[0x1E696ABC0];
      v33[0] = @"requestedResources";
      v12 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
      v33[1] = @"supportedResources";
      v34[0] = v12;
      v13 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
      v34[1] = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
      v15 = [v11 errorWithDomain:@"BGTaskSchedulerErrorDomain" code:1 userInfo:v14];

      v16 = +[BGTaskScheduler _log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [BGTaskScheduler _unsafe_submitTaskRequest:error:];
      }

      if (a4)
      {
        v17 = v15;
        *a4 = v15;
      }

      goto LABEL_20;
    }
  }

  scheduler = self->__scheduler;
  v19 = [v6 _activity];
  v20 = [(_DASActivityBackgroundTasksScheduler *)scheduler submitTaskRequest:v19];

  v21 = v20 == 0;
  if (v20)
  {
    v22 = +[BGTaskScheduler _log];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 138543618;
      v30 = v6;
      v31 = 2114;
      v32 = v20;
      _os_log_impl(&dword_1AC80E000, v22, OS_LOG_TYPE_DEFAULT, "Error submitting task request: %{public}@, error: %{public}@", &v29, 0x16u);
    }

    if (a4)
    {
      v23 = [v20 domain];
      v24 = [v23 isEqualToString:*MEMORY[0x1E699A4F8]];

      if (v24)
      {
        v25 = [v20 code];
        if (v25 > 9)
        {
          v26 = 3;
        }

        else
        {
          v26 = qword_1AC819CC8[v25];
        }
      }

      else
      {
        v26 = 1;
      }

      *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BGTaskSchedulerErrorDomain" code:v26 userInfo:0];
    }
  }

LABEL_25:
  v27 = *MEMORY[0x1E69E9840];
  return v21;
}

- (id)_unsafe_registrationForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(BGTaskScheduler *)self _registrations];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)_queueForRegistration:(id)a3
{
  v3 = a3;
  v4 = [v3 queue];
  if (!v4)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [v3 identifier];
    v7 = [v5 stringWithFormat:@"com.apple.BGTaskScheduler (%@)", v6];
    v8 = [v7 cStringUsingEncoding:4];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_BACKGROUND, 0);
    v4 = dispatch_queue_create(v8, v10);
  }

  return v4;
}

- (void)cancelTaskRequestWithIdentifier:(NSString *)identifier
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = identifier;
  v5 = +[BGTaskScheduler _log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&dword_1AC80E000, v5, OS_LOG_TYPE_DEFAULT, "cancelTaskRequestWithIdentifier: %{public}@", &v8, 0xCu);
  }

  v6 = [(BGTaskScheduler *)self _scheduler];
  [v6 cancelTaskRequestWithIdentifier:v4];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)getPendingTaskRequestsWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v5 = +[BGTaskScheduler _log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AC80E000, v5, OS_LOG_TYPE_DEFAULT, "Getting pending task requests", buf, 2u);
  }

  v6 = [(BGTaskScheduler *)self _scheduler];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__BGTaskScheduler_getPendingTaskRequestsWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E7980690;
  v9 = v4;
  v7 = v4;
  [v6 getPendingTaskRequestsWithCompletionHandler:v8];
}

void __63__BGTaskScheduler_getPendingTaskRequestsWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = +[BGTaskScheduler _log];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 138543362;
      v25 = v6;
      _os_log_impl(&dword_1AC80E000, v7, OS_LOG_TYPE_DEFAULT, "Error fetching activities: %{public}@", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (v8)
    {
      *buf = 138543362;
      v25 = v5;
      _os_log_impl(&dword_1AC80E000, v7, OS_LOG_TYPE_DEFAULT, "Found pending activities: %{public}@", buf, 0xCu);
    }

    v9 = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        v14 = 0;
        do
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [BGTaskRequest _requestFromActivity:*(*(&v19 + 1) + 8 * v14), v19];
          if (v15)
          {
            [v9 addObject:v15];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    v16 = *(a1 + 32);
    v17 = [v9 copy];
    (*(v16 + 16))(v16, v17);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (id)_runningTasks
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  os_unfair_lock_lock(&self->__lock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(BGTaskScheduler *)self _runningTasksMap];
  v5 = [v4 keyEnumerator];

  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [(BGTaskScheduler *)self _runningTasksMap];
        v12 = [v11 objectForKey:v10];
        [v3 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->__lock);
  v13 = [v3 copy];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BOOL)_isRunningTaskOfClass:(Class)a3
{
  v22 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->__lock);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(BGTaskScheduler *)self _runningTasksMap];
  v5 = [v4 keyEnumerator];

  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [(BGTaskScheduler *)self _runningTasksMap];
        v12 = [v11 objectForKey:v10];
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v14 = 1;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  os_unfair_lock_unlock(&self->__lock);
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)_runTask:(id)a3 registration:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[BGTaskScheduler _log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v42 = v6;
    _os_log_impl(&dword_1AC80E000, v8, OS_LOG_TYPE_DEFAULT, "Running task: %{public}@", buf, 0xCu);
  }

  v9 = [(BGTaskScheduler *)self _queueForRegistration:v7];
  [v6 _setHandlerQueue:v9];

  v10 = [v6 _activity];
  v11 = [v6 identifier];
  os_unfair_lock_lock(&self->__lock);
  v12 = [(BGTaskScheduler *)self _runningTasksMap];
  v13 = [v6 identifier];
  [v12 setObject:v6 forKey:v13];

  os_unfair_lock_unlock(&self->__lock);
  v14 = [MEMORY[0x1E696AD88] defaultCenter];
  [v14 postNotificationName:@"_BGTaskSchedulerRunningTasksDidChangeNotification" object:self];

  objc_initWeak(buf, v6);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __41__BGTaskScheduler__runTask_registration___block_invoke;
  v36[3] = &unk_1E79806B8;
  objc_copyWeak(&v40, buf);
  v15 = v10;
  v37 = v15;
  v38 = self;
  v16 = v11;
  v39 = v16;
  [v6 _setCompletionHandler:v36];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v6;
    v18 = v35;
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __41__BGTaskScheduler__runTask_registration___block_invoke_137;
    v35[3] = &unk_1E79806E0;
    v35[4] = self;
    v19 = v15;
    v35[5] = v19;
    [v17 _setProgressHandler:v35];
    v20 = v34;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __41__BGTaskScheduler__runTask_registration___block_invoke_2;
    v34[3] = &unk_1E7980708;
    v34[4] = v19;
    v34[5] = self;
    [v17 _setDescriptionUpdateHandler:v34];
LABEL_7:

    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = v6;
    v18 = v33;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __41__BGTaskScheduler__runTask_registration___block_invoke_3;
    v33[3] = &unk_1E79806E0;
    v33[4] = self;
    v22 = v15;
    v33[5] = v22;
    [v21 _setProgressHandler:v33];
    v20 = v32;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __41__BGTaskScheduler__runTask_registration___block_invoke_4;
    v32[3] = &unk_1E7980708;
    v32[4] = v22;
    v32[5] = self;
    [v21 _setDescriptionUpdateHandler:v32];
    goto LABEL_7;
  }

LABEL_8:
  v23 = [v6 _handlerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__BGTaskScheduler__runTask_registration___block_invoke_5;
  block[3] = &unk_1E7980730;
  v29 = v15;
  v30 = v6;
  v31 = v7;
  v24 = v7;
  v25 = v6;
  v26 = v15;
  dispatch_async(v23, block);

  objc_destroyWeak(&v40);
  objc_destroyWeak(buf);

  v27 = *MEMORY[0x1E69E9840];
}

void __41__BGTaskScheduler__runTask_registration___block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = *(a1 + 32);
  v6 = +[BGTaskScheduler _log];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v13 = 138543618;
      v14 = WeakRetained;
      v15 = 1024;
      v16 = a2;
      _os_log_impl(&dword_1AC80E000, v6, OS_LOG_TYPE_DEFAULT, "Marking task %{public}@ complete with success: %d", &v13, 0x12u);
    }

    v6 = [*(a1 + 40) _scheduler];
    [v6 completeTaskRequest:*(a1 + 32) withSuccess:a2];
  }

  else if (v7)
  {
    v13 = 138412290;
    v14 = WeakRetained;
    _os_log_impl(&dword_1AC80E000, v6, OS_LOG_TYPE_DEFAULT, "Marking simulated task complete: %@", &v13, 0xCu);
  }

  os_unfair_lock_lock((*(a1 + 40) + 8));
  v8 = [*(a1 + 40) _runningTasksMap];
  v9 = [v8 objectForKey:*(a1 + 48)];

  if (!WeakRetained || WeakRetained == v9)
  {
    v10 = [*(a1 + 40) _runningTasksMap];
    [v10 removeObjectForKey:*(a1 + 48)];
  }

  os_unfair_lock_unlock((*(a1 + 40) + 8));
  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  [v11 postNotificationName:@"_BGTaskSchedulerRunningTasksDidChangeNotification" object:*(a1 + 40)];

  v12 = *MEMORY[0x1E69E9840];
}

void __41__BGTaskScheduler__runTask_registration___block_invoke_137(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _scheduler];
  [v5 updateProgress:v4 forOngoingTask:*(a1 + 40)];
}

void __41__BGTaskScheduler__runTask_registration___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 continuedProcessingWrapper];
  [v8 setTitle:v7];

  v9 = [*(a1 + 32) continuedProcessingWrapper];
  [v9 setSubtitle:v6];

  v10 = [*(a1 + 40) _scheduler];
  [v10 updateOngoingTask:*(a1 + 32)];
}

void __41__BGTaskScheduler__runTask_registration___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _scheduler];
  [v5 updateProgress:v4 forOngoingTask:*(a1 + 40)];
}

void __41__BGTaskScheduler__runTask_registration___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 continuedProcessingWrapper];
  [v8 setTitle:v7];

  v9 = [*(a1 + 32) continuedProcessingWrapper];
  [v9 setSubtitle:v6];

  v10 = [*(a1 + 40) _scheduler];
  [v10 updateOngoingTask:*(a1 + 32)];
}

void __41__BGTaskScheduler__runTask_registration___block_invoke_5(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = +[BGTaskScheduler _log];
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 40);
      v10 = 138543362;
      v11 = v5;
      v6 = "Starting task: %{public}@";
LABEL_6:
      _os_log_impl(&dword_1AC80E000, v3, OS_LOG_TYPE_DEFAULT, v6, &v10, 0xCu);
    }
  }

  else if (v4)
  {
    v7 = *(a1 + 40);
    v10 = 138543362;
    v11 = v7;
    v6 = "Starting simulated task: %{public}@";
    goto LABEL_6;
  }

  v8 = [*(a1 + 48) launchHandler];
  v8[2](v8, *(a1 + 40));

  v9 = *MEMORY[0x1E69E9840];
}

- (void)scheduler:(id)a3 handleLaunchForActivities:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = +[BGTaskScheduler _log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = v5;
    _os_log_impl(&dword_1AC80E000, v6, OS_LOG_TYPE_DEFAULT, "Application launched for activities: %{public}@", &v12, 0xCu);
  }

  os_unfair_lock_lock(&self->__lock);
  v7 = atomic_load(appHasLaunched);
  if (v7)
  {
    os_unfair_lock_unlock(&self->__lock);
    [(BGTaskScheduler *)self _callRegisteredHandlersForActivities:v5];
  }

  else
  {
    v8 = [(BGTaskScheduler *)self _queuedLaunchActivities];

    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      [(BGTaskScheduler *)self _setQueuedLaunchActivities:v9];
    }

    v10 = [(BGTaskScheduler *)self _queuedLaunchActivities];
    [v10 unionSet:v5];

    os_unfair_lock_unlock(&self->__lock);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_callRegisteredHandlersForActivities:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[BGTaskScheduler _log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v40 = v4;
    _os_log_impl(&dword_1AC80E000, v5, OS_LOG_TYPE_DEFAULT, "Calling handlers for activities: %{public}@", buf, 0xCu);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v35;
    v9 = *MEMORY[0x1E699A548];
    v31 = *MEMORY[0x1E699A568];
    v30 = *MEMORY[0x1E699A558];
    v29 = *MEMORY[0x1E699A560];
    v28 = *MEMORY[0x1E699A550];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v34 + 1) + 8 * i);
        v12 = [v11 clientProvidedIdentifier];
        os_unfair_lock_lock(&self->__lock);
        v13 = [(BGTaskScheduler *)self _unsafe_registrationForIdentifier:v12];
        os_unfair_lock_unlock(&self->__lock);
        if (!v13)
        {
          v26 = [MEMORY[0x1E696AAA8] currentHandler];
          [v26 handleFailureInMethod:a2 object:self file:@"BGTaskScheduler.m" lineNumber:697 description:{@"No launch handler registered for task with identifier %@", v12}];
          goto LABEL_17;
        }

        v14 = [v11 launchReason];
        v15 = [v14 isEqualToString:v9];

        v16 = off_1E79803F8;
        if (v15)
        {
          goto LABEL_23;
        }

        v17 = [v11 launchReason];
        v18 = [v17 isEqualToString:v31];

        v16 = off_1E79803E8;
        if (v18)
        {
          goto LABEL_23;
        }

        v19 = [v11 launchReason];
        v20 = [v19 isEqualToString:v30];

        v16 = off_1E79803D8;
        if (v20)
        {
          goto LABEL_23;
        }

        v21 = [v11 launchReason];
        v22 = [v21 isEqualToString:v29];

        v16 = off_1E7980418;
        if ((v22 & 1) != 0 || ([v11 launchReason], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "isEqualToString:", v28), v23, v16 = off_1E79803C8, v24))
        {
LABEL_23:
          v25 = [objc_alloc(*v16) _initWithIdentifier:v12 activity:v11];
          if (v25)
          {
            v26 = v25;
            [(BGTaskScheduler *)self _runTask:v25 registration:v13];
LABEL_17:
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v7);
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (id)_unsafe_taskForActivity:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [(BGTaskScheduler *)self _runningTasksMap];
  v5 = [v4 keyEnumerator];

  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v21 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v20 + 1) + 8 * v9);
      v11 = [(BGTaskScheduler *)self _runningTasksMap];
      v12 = [v11 objectForKey:v10];

      if (v12)
      {
        v13 = [v19 uuid];
        v14 = [v12 _activity];
        v15 = [v14 uuid];
        v16 = [v13 isEqual:v15];

        if (v16)
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v12 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)_unsafe_createExpirationRequestsForActivities:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v4, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [(BGTaskScheduler *)self _unsafe_taskForActivity:v11, v17];
        v13 = +[_BGTaskExpirationRequest requestWithActivity:task:reason:](_BGTaskExpirationRequest, "requestWithActivity:task:reason:", v11, v12, [v11 bgTaskExpirationReason]);
        [v5 addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)_callExpirationHandlersForActivities:(id)a3 shouldQueue:(BOOL)a4
{
  v4 = a4;
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[BGTaskScheduler _log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v46 = v6;
    _os_log_impl(&dword_1AC80E000, v7, OS_LOG_TYPE_DEFAULT, "Calling expiration handlers for activities: %{public}@", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->__lock);
  v8 = [(BGTaskScheduler *)self _unsafe_createExpirationRequestsForActivities:v6];
  v9 = v8;
  if (v4)
  {
    v10 = atomic_load(appHasLaunched);
    if ((v10 & 1) == 0)
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v11 = [v8 countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v40;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v40 != v13)
            {
              objc_enumerationMutation(v9);
            }

            v15 = *(*(&v39 + 1) + 8 * i);
            v16 = [v15 task];

            if (!v16)
            {
              v17 = [(BGTaskScheduler *)self _queuedExpiredLaunchActivities];
              if (!v17)
              {
                [MEMORY[0x1E695DFA8] set];
              }

              v18 = [(BGTaskScheduler *)self _queuedExpiredLaunchActivities];
              v19 = [v15 schedulerActivity];
              [v18 addObject:v19];
            }
          }

          v12 = [v9 countByEnumeratingWithState:&v39 objects:v44 count:16];
        }

        while (v12);
      }

      v20 = [(BGTaskScheduler *)self _queuedExpiredLaunchActivities];
      v21 = [v20 count];

      if (v21)
      {
        v22 = +[BGTaskScheduler _log];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [(BGTaskScheduler *)self _queuedExpiredLaunchActivities];
          *buf = 138543362;
          v46 = v23;
          _os_log_impl(&dword_1AC80E000, v22, OS_LOG_TYPE_DEFAULT, "Queued activities for expiration: %{public}@", buf, 0xCu);
        }
      }
    }
  }

  os_unfair_lock_unlock(&self->__lock);
  v24 = +[BGTaskScheduler _log];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v46 = v9;
    _os_log_impl(&dword_1AC80E000, v24, OS_LOG_TYPE_DEFAULT, "Calling expiration handlers for tasks: %{public}@", buf, 0xCu);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v25 = v9;
  v26 = [v25 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v36;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v36 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v35 + 1) + 8 * j);
        v31 = [v30 task];

        if (v31)
        {
          v32 = dispatch_get_global_queue(-32768, 0);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __68__BGTaskScheduler__callExpirationHandlersForActivities_shouldQueue___block_invoke;
          block[3] = &unk_1E7980758;
          block[4] = v30;
          dispatch_async(v32, block);
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v27);
  }

  v33 = *MEMORY[0x1E69E9840];
}

void __68__BGTaskScheduler__callExpirationHandlersForActivities_shouldQueue___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = +[BGTaskScheduler _log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) task];
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1AC80E000, v2, OS_LOG_TYPE_DEFAULT, "Expiring task: %{public}@", &v6, 0xCu);
  }

  v4 = [*(a1 + 32) task];
  [v4 _callExpirationHandlerWithReason:{objc_msgSend(*(a1 + 32), "reason")}];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)scheduler:(id)a3 willExpireActivities:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = +[BGTaskScheduler _log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_1AC80E000, v6, OS_LOG_TYPE_DEFAULT, "Will expire activities: %{public}@", &v8, 0xCu);
  }

  [(BGTaskScheduler *)self _callExpirationHandlersForActivities:v5 shouldQueue:1];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_simulateLaunchForTaskWithIdentifier:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = +[BGTaskScheduler _log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = v5;
    _os_log_impl(&dword_1AC80E000, v6, OS_LOG_TYPE_DEFAULT, "Simulating launch for task with identifier %{public}@", buf, 0xCu);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__BGTaskScheduler__simulateLaunchForTaskWithIdentifier___block_invoke;
  v9[3] = &unk_1E7980780;
  v10 = v5;
  v11 = self;
  v12 = a2;
  v7 = v5;
  [(BGTaskScheduler *)self getPendingTaskRequestsWithCompletionHandler:v9];

  v8 = *MEMORY[0x1E69E9840];
}

void __56__BGTaskScheduler__simulateLaunchForTaskWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  v6 = *v26;
  while (2)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v26 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v25 + 1) + 8 * i);
      v9 = [v8 identifier];
      v10 = [v9 isEqualToString:*(a1 + 32)];

      if (v10)
      {
        v11 = v8;

        if (!v11)
        {
          goto LABEL_16;
        }

        os_unfair_lock_lock((*(a1 + 40) + 8));
        v12 = [*(a1 + 40) _runningTasksMap];
        v13 = [v12 objectForKey:*(a1 + 32)];

        if (v13)
        {
          v14 = +[BGTaskScheduler _log];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = *(a1 + 32);
            *buf = 138543362;
            v30 = v15;
            _os_log_impl(&dword_1AC80E000, v14, OS_LOG_TYPE_DEFAULT, "Task with identifier %{public}@ is already running", buf, 0xCu);
          }

          os_unfair_lock_unlock((*(a1 + 40) + 8));
        }

        else
        {
          v16 = [*(a1 + 40) _unsafe_registrationForIdentifier:*(a1 + 32)];
          os_unfair_lock_unlock((*(a1 + 40) + 8));
          if (v16)
          {
            v23 = [objc_alloc(objc_msgSend(objc_opt_class() "_correspondingTaskClass"))];
            if (v23)
            {
              [*(a1 + 40) cancelTaskRequestWithIdentifier:*(a1 + 32)];
              [*(a1 + 40) _runTask:v23 registration:v16];
            }

            goto LABEL_22;
          }
        }

        v16 = [MEMORY[0x1E696AAA8] currentHandler];
        [v16 handleFailureInMethod:*(a1 + 48) object:*(a1 + 40) file:@"BGTaskScheduler.m" lineNumber:833 description:{@"No launch handler registered for task with identifier %@", *(a1 + 32)}];
LABEL_22:

        goto LABEL_23;
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v5)
    {
      continue;
    }

    break;
  }

LABEL_9:

LABEL_16:
  v11 = +[BGTaskScheduler _log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    __56__BGTaskScheduler__simulateLaunchForTaskWithIdentifier___block_invoke_cold_1(a1, v11, v17, v18, v19, v20, v21, v22);
  }

LABEL_23:

  v24 = *MEMORY[0x1E69E9840];
}

- (void)_simulateExpirationForTaskWithIdentifier:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[BGTaskScheduler _log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = v4;
    _os_log_impl(&dword_1AC80E000, v5, OS_LOG_TYPE_DEFAULT, "Simulating expiration for task with identifier %{public}@", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->__lock);
  v6 = [(BGTaskScheduler *)self _runningTasksMap];
  v7 = [v6 objectForKey:v4];

  os_unfair_lock_unlock(&self->__lock);
  if (v7 && ([v7 _activity], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    v10 = dispatch_get_global_queue(-32768, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__BGTaskScheduler__simulateExpirationForTaskWithIdentifier___block_invoke;
    block[3] = &unk_1E7980758;
    v13 = v7;
    dispatch_async(v10, block);

    v9 = v13;
  }

  else
  {
    v9 = +[BGTaskScheduler _log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BGTaskScheduler _simulateExpirationForTaskWithIdentifier:];
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __60__BGTaskScheduler__simulateExpirationForTaskWithIdentifier___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) expirationHandler];

  v3 = +[BGTaskScheduler _log];
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *v1;
      v13 = 138543362;
      v14 = v5;
      _os_log_impl(&dword_1AC80E000, v4, OS_LOG_TYPE_DEFAULT, "Expiring simulated task: %{public}@", &v13, 0xCu);
    }

    [*v1 _callExpirationHandlerWithReason:0];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __60__BGTaskScheduler__simulateExpirationForTaskWithIdentifier___block_invoke_cold_1(v1, v4, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)registerForTaskWithIdentifier:usingQueue:launchHandler:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1AC80E000, v0, OS_LOG_TYPE_DEBUG, "registerForTaskWithIdentifier: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)_unsafe_registerForTaskWithIdentifier:usingQueue:launchHandler:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1AC80E000, v0, v1, "Registration rejected; %@ is not advertised in the application's Info.plist", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_handleSubmissionWithoutRegistrationForTaskRequest:(void *)a1 error:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 identifier];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1AC80E000, a2, OS_LOG_TYPE_ERROR, "%{public}@ is not advertised in the application's Info.plist", v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_unsafe_submitTaskRequest:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v4 = 2114;
  v5 = v0;
  _os_log_error_impl(&dword_1AC80E000, v1, OS_LOG_TYPE_ERROR, "%{public}@ requested an unsupported set of resources: %{public}@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void __56__BGTaskScheduler__simulateLaunchForTaskWithIdentifier___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_0(&dword_1AC80E000, a2, a3, "No task request with identifier %{public}@ has been scheduled", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_simulateExpirationForTaskWithIdentifier:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1AC80E000, v0, v1, "Task with identifier %{public}@ is not currently being simulated", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __60__BGTaskScheduler__simulateExpirationForTaskWithIdentifier___block_invoke_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0(&dword_1AC80E000, a2, a3, "No expiration handler for task: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end