@interface AVResourceReclamationController
+ (id)defaultController;
- (AVResourceReclamationController)init;
- (AVResourceReclamationEvent)mostRecentReclamationEvent;
- (BOOL)ensureIntegrityOfResourcesCreatedSince:(id)a3;
- (BOOL)isEnrolled;
- (id)addReclamationEventObserver:(id)a3;
- (id)registerForPurgeNotification;
- (id)takeAssertionPreventingResourceReclamationWithReason:(id)a3;
- (void)_releaseResourceReclamationAssertion:(id)a3;
- (void)_removeObserverToken:(id)a3;
- (void)_resetEnrollmentTestOnly;
- (void)dealloc;
- (void)ensureIntegrityOfResourcesCreatedSince:(id)a3 completionHandler:(id)a4;
- (void)handlePurgedNotification:(id)a3;
- (void)informReclamationEvent:(id)a3 toObservers:(id)a4;
- (void)permitReclamationWhileSuspended;
@end

@implementation AVResourceReclamationController

+ (id)defaultController
{
  if (defaultController_sCreateControllerOnce != -1)
  {
    +[AVResourceReclamationController defaultController];
  }

  return defaultController_sController;
}

AVResourceReclamationController *__52__AVResourceReclamationController_defaultController__block_invoke()
{
  result = objc_alloc_init(AVResourceReclamationController);
  defaultController_sController = result;
  return result;
}

- (AVResourceReclamationController)init
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work();
  fig_note_initialize_category_with_default_work();
  v8.receiver = self;
  v8.super_class = AVResourceReclamationController;
  v3 = [(AVResourceReclamationController *)&v8 self];
  if (v3)
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v3->_stateQueue = dispatch_queue_create("AVResourceReclamationControllerSQ", v4);
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v3->_callbackQueue = dispatch_queue_create("AVResourceReclamationControllerCBQ", v5);
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v3->_figSetterQueue = dispatch_queue_create("AVResourceReclamationControlleFSQ", v6);
    v3->_resourceReclamationObservers = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    v3->_assertionReasons = [MEMORY[0x1E695DF90] dictionary];
    v3->_assertionId = 0;
    v3->_isEnrolled = 0;
  }

  return v3;
}

- (void)permitReclamationWhileSuspended
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (![(AVResourceReclamationController *)self isEnrolled])
  {
    figSetterQueue = self->_figSetterQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __89__AVResourceReclamationController_AVResourceReclamation__permitReclamationWhileSuspended__block_invoke;
    block[3] = &unk_1E7462C30;
    block[4] = &v12;
    dispatch_sync(figSetterQueue, block);
    if (!*(v13 + 6))
    {
      stateQueue = self->_stateQueue;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __89__AVResourceReclamationController_AVResourceReclamation__permitReclamationWhileSuspended__block_invoke_2;
      v6[3] = &unk_1E7460E68;
      v6[4] = self;
      v6[5] = &v8;
      dispatch_sync(stateQueue, v6);
      if (*(v9 + 24) == 1)
      {
        [(AVResourceReclamationController(AVResourceReclamation) *)&self->_stateQueue permitReclamationWhileSuspended:v5];
      }
    }
  }

  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
}

- (BOOL)isEnrolled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__AVResourceReclamationController_AVResourceReclamation__isEnrolled__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __89__AVResourceReclamationController_AVResourceReclamation__permitReclamationWhileSuspended__block_invoke(uint64_t a1)
{
  result = FigProcessStateMonitorEnrollEligibleConnectionsInPurge();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __89__AVResourceReclamationController_AVResourceReclamation__permitReclamationWhileSuspended__block_invoke_2(uint64_t result)
{
  *(*(*(result + 40) + 8) + 24) = *(*(result + 32) + 56) ^ 1;
  *(*(result + 32) + 56) = 1;
  return result;
}

- (id)registerForPurgeNotification
{
  objc_initWeak(&location, self);
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = *MEMORY[0x1E69633A8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __86__AVResourceReclamationController_AVResourceReclamation__registerForPurgeNotification__block_invoke;
  v6[3] = &unk_1E7460BB0;
  objc_copyWeak(&v7, &location);
  v4 = [v2 addObserverForName:v3 object:0 queue:0 usingBlock:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
  return v4;
}

- (void)dealloc
{
  dispatch_release(self->_stateQueue);
  dispatch_release(self->_figSetterQueue);
  dispatch_release(self->_callbackQueue);

  if (self->_notificationToken)
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  v3.receiver = self;
  v3.super_class = AVResourceReclamationController;
  [(AVResourceReclamationController *)&v3 dealloc];
}

- (void)_resetEnrollmentTestOnly
{
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__AVResourceReclamationController__resetEnrollmentTestOnly__block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_sync(stateQueue, block);
}

uint64_t __59__AVResourceReclamationController__resetEnrollmentTestOnly__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 56) = 0;
  *(*(a1 + 32) + 48) = 0;
  [*(*(a1 + 32) + 40) removeAllObjects];
  result = [*(*(a1 + 32) + 32) removeAllObjects];
  if (*(*(a1 + 32) + 64))
  {
    result = [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    *(*(a1 + 32) + 64) = 0;
  }

  return result;
}

- (void)handlePurgedNotification:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__18;
  v17 = __Block_byref_object_dispose__18;
  v18 = [MEMORY[0x1E695DF70] array];
  v5 = [a3 userInfo];
  v6 = [v5 objectForKey:*MEMORY[0x1E6963398]];
  if (v6)
  {
    if (dword_1ED5AC258)
    {
      v12 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v8 = [[AVResourceReclamationEvent alloc] initWithEventIdentifier:v6];
    stateQueue = self->_stateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__AVResourceReclamationController_AVResourceReclamation__handlePurgedNotification___block_invoke;
    block[3] = &unk_1E7460EE0;
    block[4] = self;
    block[5] = &v13;
    dispatch_sync(stateQueue, block);
    [(AVResourceReclamationController *)self informReclamationEvent:v8 toObservers:v14[5]];
  }

  _Block_object_dispose(&v13, 8);
}

uint64_t __83__AVResourceReclamationController_AVResourceReclamation__handlePurgedNotification___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = [objc_msgSend(*(*(a1 + 32) + 32) objectEnumerator];
  result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (*(*(&v7 + 1) + 8 * v6))
        {
          [*(*(*(a1 + 40) + 8) + 40) addObject:?];
        }

        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t __86__AVResourceReclamationController_AVResourceReclamation__registerForPurgeNotification__block_invoke(uint64_t a1, uint64_t a2)
{
  Weak = objc_loadWeak((a1 + 32));
  if (Weak)
  {

    return [Weak handlePurgedNotification:a2];
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (id)addReclamationEventObserver:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__18;
  v11 = __Block_byref_object_dispose__18;
  v12 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__AVResourceReclamationController_AVResourceReclamation__addReclamationEventObserver___block_invoke;
  block[3] = &unk_1E7460F30;
  block[4] = self;
  block[5] = a3;
  block[6] = &v7;
  dispatch_sync(stateQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

AVResourceReclamationEventObserverToken *__86__AVResourceReclamationController_AVResourceReclamation__addReclamationEventObserver___block_invoke(void *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"T@%lld", FigGetContinuousUpTimeNanoseconds()];
  [*(a1[4] + 32) setObject:a1[5] forKey:v2];
  result = [[AVResourceReclamationEventObserverToken alloc] initWithDetails:v2];
  *(*(a1[6] + 8) + 40) = result;
  return result;
}

- (void)_removeObserverToken:(id)a3
{
  stateQueue = self->_stateQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __79__AVResourceReclamationController_AVResourceReclamation___removeObserverToken___block_invoke;
  v4[3] = &unk_1E7460DF0;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(stateQueue, v4);
}

uint64_t __79__AVResourceReclamationController_AVResourceReclamation___removeObserverToken___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 32);
  v2 = [*(a1 + 40) details];

  return [v1 removeObjectForKey:v2];
}

- (void)informReclamationEvent:(id)a3 toObservers:(id)a4
{
  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__AVResourceReclamationController_AVResourceReclamation__informReclamationEvent_toObservers___block_invoke;
  block[3] = &unk_1E7460E90;
  block[4] = a4;
  block[5] = self;
  block[6] = a3;
  dispatch_async(callbackQueue, block);
}

uint64_t __93__AVResourceReclamationController_AVResourceReclamation__informReclamationEvent_toObservers___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __93__AVResourceReclamationController_AVResourceReclamation__informReclamationEvent_toObservers___block_invoke_2;
  v3[3] = &unk_1E7463CA0;
  v4 = *(a1 + 40);
  return [v1 enumerateObjectsUsingBlock:v3];
}

uint64_t __93__AVResourceReclamationController_AVResourceReclamation__informReclamationEvent_toObservers___block_invoke_2(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    return [a2 reclamationController:v5 didReclaimObjectsWithEvent:v6];
  }

  return result;
}

- (BOOL)ensureIntegrityOfResourcesCreatedSince:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [(AVResourceReclamationController *)self mostRecentReclamationEvent];
  if (!v4)
  {
    v5 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

    return v5 == 0;
  }

  v5 = [-[AVResourceReclamationEvent eventIdentifier](v4 "eventIdentifier")];
  if (!a3)
  {
    return v5 == 0;
  }

LABEL_3:
  if (dword_1ED5AC258)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v5 <= [objc_msgSend(a3 eventIdentifier];
}

- (void)ensureIntegrityOfResourcesCreatedSince:(id)a3 completionHandler:(id)a4
{
  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __115__AVResourceReclamationController_AVResourceReclamation__ensureIntegrityOfResourcesCreatedSince_completionHandler___block_invoke;
  block[3] = &unk_1E7463CC8;
  block[5] = a3;
  block[6] = a4;
  block[4] = self;
  dispatch_async(callbackQueue, block);
}

uint64_t __115__AVResourceReclamationController_AVResourceReclamation__ensureIntegrityOfResourcesCreatedSince_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) ensureIntegrityOfResourcesCreatedSince:*(a1 + 40)];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (void)_releaseResourceReclamationAssertion:(id)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__18;
  v13 = __Block_byref_object_dispose__18;
  v14 = 0;
  if ([(AVResourceReclamationController *)self isEnrolled])
  {
    stateQueue = self->_stateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __95__AVResourceReclamationController_AVResourceReclamation___releaseResourceReclamationAssertion___block_invoke;
    block[3] = &unk_1E7461068;
    block[5] = a3;
    block[6] = &v9;
    block[4] = self;
    dispatch_sync(stateQueue, block);
    if (v10[5])
    {
      figSetterQueue = self->_figSetterQueue;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __95__AVResourceReclamationController_AVResourceReclamation___releaseResourceReclamationAssertion___block_invoke_2;
      v7[3] = &unk_1E7462C30;
      v7[4] = &v9;
      dispatch_sync(figSetterQueue, v7);
    }
  }

  _Block_object_dispose(&v9, 8);
}

uint64_t __95__AVResourceReclamationController_AVResourceReclamation___releaseResourceReclamationAssertion___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(*(a1 + 32) + 40) valueForKey:{objc_msgSend(*(a1 + 40), "details")}];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 40);
  v4 = [v2 details];

  return [v3 removeObjectForKey:v4];
}

void __95__AVResourceReclamationController_AVResourceReclamation___releaseResourceReclamationAssertion___block_invoke_2(uint64_t a1)
{
  FigProcessStateMonitorMayPurgeClientObjects();
  v2 = *(*(*(a1 + 32) + 8) + 40);
}

- (id)takeAssertionPreventingResourceReclamationWithReason:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3052000000;
  v21 = __Block_byref_object_copy__18;
  v22 = __Block_byref_object_dispose__18;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  if (![(AVResourceReclamationController *)self isEnrolled]|| (figSetterQueue = self->_figSetterQueue, block[0] = MEMORY[0x1E69E9820], block[1] = 3221225472, block[2] = __111__AVResourceReclamationController_AVResourceReclamation__takeAssertionPreventingResourceReclamationWithReason___block_invoke, block[3] = &unk_1E7460E68, block[4] = a3, block[5] = &v14, dispatch_sync(figSetterQueue, block), *(v15 + 6)))
  {
    v8 = 0;
  }

  else
  {
    stateQueue = self->_stateQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __111__AVResourceReclamationController_AVResourceReclamation__takeAssertionPreventingResourceReclamationWithReason___block_invoke_2;
    v12[3] = &unk_1E7461068;
    v12[5] = a3;
    v12[6] = &v18;
    v12[4] = self;
    dispatch_sync(stateQueue, v12);
    v7 = [AVResourceReclamationAssertion alloc];
    v8 = [(AVResourceReclamationAssertion *)v7 initWithDetails:v19[5]];
    if (dword_1ED5AC258)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v10 = v8;
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  return v10;
}

uint64_t __111__AVResourceReclamationController_AVResourceReclamation__takeAssertionPreventingResourceReclamationWithReason___block_invoke(uint64_t a1)
{
  result = FigProcessStateMonitorMustNotPurgeClientObjects();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __111__AVResourceReclamationController_AVResourceReclamation__takeAssertionPreventingResourceReclamationWithReason___block_invoke_2(void *a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = a1[4];
  v4 = *(v3 + 48) + 1;
  *(v3 + 48) = v4;
  *(*(a1[6] + 8) + 40) = [v2 stringWithFormat:@"A%lld@%lld", v4, FigGetContinuousUpTimeNanoseconds()];
  v5 = a1[5];
  v6 = *(a1[4] + 40);
  v7 = *(*(a1[6] + 8) + 40);

  return [v6 setValue:v5 forKey:v7];
}

- (AVResourceReclamationEvent)mostRecentReclamationEvent
{
  if ([(AVResourceReclamationController *)self isEnrolled])
  {
    FigProcessStateMonitorGetServerPurgeState();
  }

  return 0;
}

@end