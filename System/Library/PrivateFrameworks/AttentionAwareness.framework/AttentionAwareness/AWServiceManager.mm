@interface AWServiceManager
+ (id)invokeWithService:(id)service;
+ (id)sharedManager;
+ (void)addObserver:(id)observer;
+ (void)removeObserver:(id)observer;
- (AWServiceManager)init;
- (id)invokeWithService:(id)service;
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
@end

@implementation AWServiceManager

+ (id)sharedManager
{
  if (sharedManager_onceToken_1152 != -1)
  {
    dispatch_once(&sharedManager_onceToken_1152, &__block_literal_global_1153);
  }

  v3 = sharedManager_manager_1154;

  return v3;
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  if (!observerCopy)
  {
    __assert_rtn("[AWServiceManager removeObserver:]", "ClientHelpers.m", 134, "observer");
  }

  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__AWServiceManager_removeObserver___block_invoke;
  v7[3] = &unk_1E7F38060;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (!observerCopy)
  {
    __assert_rtn("[AWServiceManager addObserver:]", "ClientHelpers.m", 121, "observer");
  }

  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__AWServiceManager_addObserver___block_invoke;
  v7[3] = &unk_1E7F38060;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
}

- (id)invokeWithService:(id)service
{
  v32 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__1130;
  v26 = __Block_byref_object_dispose__1131;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1130;
  v20 = __Block_byref_object_dispose__1131;
  v21 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__AWServiceManager_invokeWithService___block_invoke;
  block[3] = &unk_1E7F378C8;
  block[4] = self;
  block[5] = &v16;
  block[6] = &v22;
  dispatch_sync(queue, block);
  if (v17[5])
  {
    v6 = serviceCopy[2](serviceCopy);
    if (!v6)
    {
      v7 = v23[5];
      if (v7)
      {
        v6 = v7;
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    if (currentLogLevel >= 3)
    {
      v8 = _AALog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v13 = absTimeNS();
        if (v13 == -1)
        {
          v14 = INFINITY;
        }

        else
        {
          v14 = v13 / 1000000000.0;
        }

        *buf = 134217984;
        v31 = v14;
        _os_log_error_impl(&dword_1BB2EF000, v8, OS_LOG_TYPE_ERROR, "%13.5f: couldn't fetch the scheduler", buf, 0xCu);
      }
    }

    v9 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A578];
    v29 = @" Unable to fetch scheduler";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v6 = [v9 errorWithDomain:*MEMORY[0x1E696A798] code:57 userInfo:v10];
  }

  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
  v11 = *MEMORY[0x1E69E9840];

  return v6;
}

void __38__AWServiceManager_invokeWithService___block_invoke(void *a1)
{
  v2 = *(a1[4] + 16);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__AWServiceManager_invokeWithService___block_invoke_2;
  v6[3] = &unk_1E7F37D00;
  v6[4] = a1[6];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v6];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __38__AWServiceManager_invokeWithService___block_invoke_2(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (currentLogLevel == 5)
  {
    v4 = _AALog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = absTimeNS();
      if (v5 == -1)
      {
        v6 = INFINITY;
      }

      else
      {
        v6 = v5 / 1000000000.0;
      }

      v17 = 134218242;
      v18 = v6;
      v19 = 2112;
      *v20 = v3;
      v11 = "%13.5f: IPC error %@";
      v12 = v4;
      v13 = 22;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v12, OS_LOG_TYPE_DEFAULT, v11, &v17, v13);
    }

LABEL_20:

    goto LABEL_21;
  }

  if (currentLogLevel >= 6)
  {
    v4 = _AALog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/Client/ClientHelpers.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/Client/ClientHelpers.m"; ; ++i)
      {
        if (*(i - 1) == 47)
        {
          v7 = i;
        }

        else if (!*(i - 1))
        {
          v9 = absTimeNS();
          if (v9 == -1)
          {
            v10 = INFINITY;
          }

          else
          {
            v10 = v9 / 1000000000.0;
          }

          v17 = 136315906;
          v18 = *&v7;
          v19 = 1024;
          *v20 = 98;
          *&v20[4] = 2048;
          *&v20[6] = v10;
          v21 = 2112;
          v22 = v3;
          v11 = "%30s:%-4d: %13.5f: IPC error %@";
          v12 = v4;
          v13 = 38;
          goto LABEL_19;
        }
      }
    }

    goto LABEL_20;
  }

LABEL_21:
  v14 = *(*(a1 + 32) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v3;

  v16 = *MEMORY[0x1E69E9840];
}

- (AWServiceManager)init
{
  v14.receiver = self;
  v14.super_class = AWServiceManager;
  v2 = [(AWServiceManager *)&v14 init];
  if (v2)
  {
    if (schedulerQueue_onceToken != -1)
    {
      dispatch_once(&schedulerQueue_onceToken, &__block_literal_global_77);
    }

    objc_storeStrong(&v2->_queue, schedulerQueue_queue);
    v3 = [MEMORY[0x1E695DFA8] set];
    serviceObservers = v2->_serviceObservers;
    v2->_serviceObservers = v3;

    v5 = v2;
    v6 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.AttentionAwareness" options:0];
    v7 = v5[2];
    v5[2] = v6;

    v8 = xpcInterfaceForScheduler();
    [v5[2] setRemoteObjectInterface:v8];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __24__AWServiceManager_init__block_invoke;
    v12[3] = &unk_1E7F38038;
    v13 = v5;
    v9 = v5[2];
    v10 = v5;
    [v9 setInterruptionHandler:v12];
    [v5[2] resume];
  }

  return v2;
}

void __24__AWServiceManager_init__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[1];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__AWServiceManager_init__block_invoke_2;
  block[3] = &unk_1E7F38038;
  v4 = v1;
  dispatch_async(v2, block);
}

void __24__AWServiceManager_init__block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 24);
  if (currentLogLevel >= 3)
  {
    v2 = _AALog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v9 = absTimeNS();
      if (v9 == -1)
      {
        v10 = INFINITY;
      }

      else
      {
        v10 = v9 / 1000000000.0;
      }

      *buf = 134218240;
      v17 = v10;
      v18 = 2048;
      v19 = [v1 count];
      _os_log_error_impl(&dword_1BB2EF000, v2, OS_LOG_TYPE_ERROR, "%13.5f: XPC interruption: notifying %lu observers", buf, 0x16u);
    }
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v11 + 1) + 8 * i) serviceInterrupted];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)removeObserver:(id)observer
{
  observerCopy = observer;
  sharedManager = [self sharedManager];
  [sharedManager removeObserver:observerCopy];
}

+ (void)addObserver:(id)observer
{
  observerCopy = observer;
  sharedManager = [self sharedManager];
  [sharedManager addObserver:observerCopy];
}

+ (id)invokeWithService:(id)service
{
  serviceCopy = service;
  sharedManager = [self sharedManager];
  v6 = [sharedManager invokeWithService:serviceCopy];

  return v6;
}

uint64_t __33__AWServiceManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(AWServiceManager);
  v1 = sharedManager_manager_1154;
  sharedManager_manager_1154 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end