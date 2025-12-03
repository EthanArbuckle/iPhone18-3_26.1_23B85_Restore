@interface ADBackgroundTaskScheduler
+ (id)sharedInstance;
+ (void)registerTaskDelegate:(id)delegate forRequestID:(id)d;
+ (void)unregisterTaskDelegate:(id)delegate;
- (ADBackgroundTaskScheduler)init;
- (void)addBackgroundTask:(id)task;
- (void)cancelBackgroundTask:(id)task;
- (void)checkOnTask:(id)task;
- (void)handleXPCActivity:(id)activity withID:(id)d;
@end

@implementation ADBackgroundTaskScheduler

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__ADBackgroundTaskScheduler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance__onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance__onceToken_0, block);
  }

  v2 = sharedInstance__instance_0;

  return v2;
}

uint64_t __43__ADBackgroundTaskScheduler_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance__instance_0 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

+ (void)registerTaskDelegate:(id)delegate forRequestID:(id)d
{
  delegateCopy = delegate;
  dCopy = d;
  if (registerTaskDelegate_forRequestID__onceToken != -1)
  {
    +[ADBackgroundTaskScheduler registerTaskDelegate:forRequestID:];
  }

  v6 = _lockableObject;
  objc_sync_enter(v6);
  v7 = [_delegates objectForKeyedSubscript:dCopy];
  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [_delegates setObject:v7 forKeyedSubscript:dCopy];
  }

  if (([v7 containsObject:delegateCopy] & 1) == 0)
  {
    [v7 addObject:delegateCopy];
  }

  objc_sync_exit(v6);
}

void __63__ADBackgroundTaskScheduler_registerTaskDelegate_forRequestID___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = _delegates;
  _delegates = v0;

  v2 = _lockableObject;
  _lockableObject = @"lock";
}

+ (void)unregisterTaskDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = _lockableObject;
  objc_sync_enter(v4);
  if (_delegates)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v6 = _delegates;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __52__ADBackgroundTaskScheduler_unregisterTaskDelegate___block_invoke;
    v10[3] = &unk_278C55130;
    v11 = delegateCopy;
    v7 = v5;
    v12 = v7;
    [v6 enumerateKeysAndObjectsUsingBlock:v10];
    v8 = _delegates;
    _delegates = v7;
    v9 = v7;
  }

  objc_sync_exit(v4);
}

void __52__ADBackgroundTaskScheduler_unregisterTaskDelegate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = MEMORY[0x277CBEB18];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __52__ADBackgroundTaskScheduler_unregisterTaskDelegate___block_invoke_2;
  v13 = &unk_278C55108;
  v14 = *(a1 + 32);
  v9 = v8;
  v15 = v9;
  [v7 enumerateObjectsUsingBlock:&v10];

  if ([v9 count])
  {
    [*(a1 + 40) setObject:v9 forKeyedSubscript:v5];
  }
}

uint64_t __52__ADBackgroundTaskScheduler_unregisterTaskDelegate___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (*(result + 32) != a2)
  {
    return [*(result + 40) addObject:a2];
  }

  return result;
}

- (ADBackgroundTaskScheduler)init
{
  v3.receiver = self;
  v3.super_class = ADBackgroundTaskScheduler;
  return [(ADBackgroundTaskScheduler *)&v3 init];
}

- (void)handleXPCActivity:(id)activity withID:(id)d
{
  activityCopy = activity;
  dCopy = d;
  state = xpc_activity_get_state(activityCopy);
  if ((state | 2) == 2)
  {
    v8 = _lockableObject;
    objc_sync_enter(v8);
    v9 = [_delegates objectForKeyedSubscript:dCopy];
    if (v9)
    {
      if (state)
      {
        if (state == 2)
        {
          v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Request to run activity %@ (state: %ld)", objc_opt_class(), dCopy, 2];
          _ADLog(@"LATDLogging", v10, 0);

          v11 = xpc_activity_copy_criteria(activityCopy);
          v12 = [[ADBackgroundTaskRequest alloc] initWithCriteria:v11 ID:dCopy activity:activityCopy];
          v24 = 0;
          v25 = &v24;
          v26 = 0x2020000000;
          v27 = 0;
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __54__ADBackgroundTaskScheduler_handleXPCActivity_withID___block_invoke;
          v21[3] = &unk_278C55158;
          v23 = &v24;
          v13 = v12;
          v22 = v13;
          [v9 enumerateObjectsUsingBlock:v21];
          if ((v25[3] & 1) == 0)
          {
            dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: No registered handler for task %@ successfully returned.", objc_opt_class(), dCopy];
            _ADLog(@"LATDLogging", dCopy, 16);
          }

          _Block_object_dispose(&v24, 8);
        }
      }

      else
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Checking in on activity %@ (state: %ld)", objc_opt_class(), dCopy, 0];
        _ADLog(@"LATDLogging", v17, 0);

        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __54__ADBackgroundTaskScheduler_handleXPCActivity_withID___block_invoke_2;
        v18[3] = &unk_278C55108;
        v19 = dCopy;
        v20 = activityCopy;
        [v9 enumerateObjectsUsingBlock:v18];
      }
    }

    else
    {
      dCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: No receiver registered for XPC job with ID %@", objc_opt_class(), dCopy];
      _ADLog(@"LATDLogging", dCopy2, 0);
    }

    objc_sync_exit(v8);
  }

  else
  {
    state = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Unexpected XPC_ACTIVITY_STATE - %ld", objc_opt_class(), state];
    _ADLog(@"LATDLogging", state, 0);
  }
}

uint64_t __54__ADBackgroundTaskScheduler_handleXPCActivity_withID___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 runTask:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) |= result;
  return result;
}

void __54__ADBackgroundTaskScheduler_handleXPCActivity_withID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 checkOnTask:*(a1 + 32) activity:*(a1 + 40)];
  }
}

- (void)addBackgroundTask:(id)task
{
  taskCopy = task;
  requestIdentifier = [taskCopy requestIdentifier];
  if (requestIdentifier)
  {
    v6 = _lockableObject;
    objc_sync_enter(v6);
    v7 = [_delegates objectForKeyedSubscript:requestIdentifier];
    if (!v7 || ([_delegates objectForKeyedSubscript:requestIdentifier], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v7, !v9))
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: No delegate is registered to handle request %@.", objc_opt_class(), requestIdentifier];
      _ADLog(@"LATDLogging", v10, 0);
    }

    objc_sync_exit(v6);

    v11 = +[ADServer workQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __47__ADBackgroundTaskScheduler_addBackgroundTask___block_invoke;
    v13[3] = &unk_278C551A8;
    v14 = taskCopy;
    selfCopy = self;
    v16 = requestIdentifier;
    [v11 addOperationWithBlock:v13];
  }

  else
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: No identifier specified for background task activity. Ignoring request.", objc_opt_class()];
    _ADLog(@"LATDLogging", v12, 0);
  }
}

void __47__ADBackgroundTaskScheduler_addBackgroundTask___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dictionaryRepresentation];
  v3 = [v2 AD_jsonString];

  v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:{objc_msgSend(*(a1 + 32), "delay")}];
  v5 = MEMORY[0x277CCACA8];
  v6 = *(a1 + 40);
  v7 = objc_opt_class();
  v8 = [*(a1 + 32) delay];
  [v4 timeIntervalSince1970];
  v10 = v9;
  v11 = [v4 AD_localDateTimeAsString];
  v12 = [v5 stringWithFormat:@"[%@]: Scheduling XPC activity request to run in %lld seconds (%.0f - %@): %@", v7, v8, v10, v11, v3];
  _ADLog(@"LATDLogging", v12, 0);

  v13 = [*(a1 + 32) copyBackgroundTaskAgentCriteria];
  if (v13)
  {
    v14 = [*(a1 + 48) UTF8String];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __47__ADBackgroundTaskScheduler_addBackgroundTask___block_invoke_2;
    handler[3] = &unk_278C55180;
    v18 = *(a1 + 32);
    v19 = *(a1 + 48);
    xpc_activity_register(v14, v13, handler);
  }

  else
  {
    v15 = *(a1 + 40);
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: No criteria for background task activity: %@", objc_opt_class(), *(a1 + 48)];
    _ADLog(@"LATDLogging", v16, 0);
  }
}

void __47__ADBackgroundTaskScheduler_addBackgroundTask___block_invoke_2(uint64_t a1, void *a2)
{
  activity = a2;
  v3 = MEMORY[0x277CCACA8];
  v4 = [*(a1 + 32) requestIdentifier];
  v5 = [v3 stringWithFormat:@"com.apple.adprivacyd Background task %@ starting", v4];

  takeXPCTransaction(v5);
  if (xpc_activity_get_state(activity) == 2)
  {
    v6 = +[ADBackgroundTaskScheduler sharedInstance];
    [v6 handleXPCActivity:activity withID:*(a1 + 40)];
  }

  releaseXPCTransaction(v5);
}

- (void)cancelBackgroundTask:(id)task
{
  taskCopy = task;
  taskCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Canceling XPC activity: %@", objc_opt_class(), taskCopy];
  _ADLog(@"LATDLogging", taskCopy, 0);

  v6 = +[ADServer workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__ADBackgroundTaskScheduler_cancelBackgroundTask___block_invoke;
  v8[3] = &unk_278C551D0;
  v9 = taskCopy;
  selfCopy = self;
  v7 = taskCopy;
  [v6 addOperationWithBlock:v8];
}

void __50__ADBackgroundTaskScheduler_cancelBackgroundTask___block_invoke(uint64_t a1)
{
  xpc_activity_unregister([*(a1 + 32) UTF8String]);
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Cancelled XPC activity: %@", objc_opt_class(), *(a1 + 32)];
  _ADLog(@"LATDLogging", v3, 0);
}

- (void)checkOnTask:(id)task
{
  taskCopy = task;
  uTF8String = [taskCopy UTF8String];
  taskCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.adprivacyd Checking on background task %@", taskCopy];
  v6 = *MEMORY[0x277D86238];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __41__ADBackgroundTaskScheduler_checkOnTask___block_invoke;
  handler[3] = &unk_278C55180;
  v10 = taskCopy;
  v11 = taskCopy;
  v7 = taskCopy;
  v8 = taskCopy;
  xpc_activity_register(uTF8String, v6, handler);
}

void __41__ADBackgroundTaskScheduler_checkOnTask___block_invoke(uint64_t a1, void *a2)
{
  activity = a2;
  takeXPCTransaction(*(a1 + 32));
  if ((xpc_activity_get_state(activity) & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    v3 = +[ADBackgroundTaskScheduler sharedInstance];
    [v3 handleXPCActivity:activity withID:*(a1 + 40)];
  }

  releaseXPCTransaction(*(a1 + 32));
}

@end