@interface BLSHLocalAssertionService
- (BLSHLocalAssertionService)initWithOSInterfaceProvider:(id)provider;
- (id)activeAssertionDescription;
- (id)activeAssertionForIdentifier:(uint64_t)identifier;
- (os_unfair_lock_s)existingAttributeHandlerForClasses:(os_unfair_lock_s *)classes;
- (void)_queue_acquireDeferredAssertion:(void *)assertion completion:;
- (void)acquireAssertion:(char)assertion skipSleepCheck:;
- (void)addObserver:(id)observer;
- (void)cancelAssertion:(id)assertion withError:(id)error;
- (void)lock_addPotentialLongHeldAssertionToHistory:(uint64_t)history;
- (void)notifyObserversWithBlock:(uint64_t)block;
- (void)pauseAssertion:(id)assertion;
- (void)queue_acquireAssertion:(char)assertion skipSleepCheck:;
- (void)queue_cancelAssertion:(void *)assertion withError:;
- (void)queue_pauseAssertion:(uint64_t)assertion;
- (void)queue_registerAttributeHandler:(void *)handler forAttributeClasses:;
- (void)queue_restartAssertionTimeoutTimer:(uint64_t)timer;
- (void)queue_resumeAssertion:(uint64_t)assertion;
- (void)queue_willCancelAssertion:(uint64_t)assertion;
- (void)registerAttributeHandler:(id)handler forAttributeClasses:(id)classes;
- (void)removeObserver:(id)observer;
- (void)replaceWithService:(id)service;
- (void)restartAssertionTimeoutTimer:(id)timer;
- (void)resumeAssertion:(id)assertion;
- (void)willCancelAssertion:(id)assertion;
@end

@implementation BLSHLocalAssertionService

void __55__BLSHLocalAssertionService_activeAssertionDescription__block_invoke_2(void *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(a1[4] + 16) objectEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v8 = a1[5];
        v9 = [v7 identifier];
        LODWORD(v8) = [v8 containsObject:v9];

        if (v8)
        {
          v10 = MEMORY[0x277CCACA8];
          v11 = a1[6];
          v12 = *(a1[7] + 8);
          v13 = (*(v12 + 24) + 1);
          *(v12 + 24) = v13;
          v14 = [v10 stringWithFormat:@"%d", v13];
          v15 = [v11 appendObject:v7 withName:v14];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)activeAssertionDescription
{
  selfCopy = self;
  if (self)
  {
    v2 = objc_opt_new();
    os_unfair_lock_lock((selfCopy + 88));
    v3 = *(selfCopy + 24);
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __55__BLSHLocalAssertionService_activeAssertionDescription__block_invoke;
    v17[3] = &unk_27841F1C8;
    v17[4] = selfCopy;
    v4 = v3;
    v18 = v4;
    v5 = v2;
    v19 = v5;
    v20 = &v21;
    [v5 appendBodySectionWithName:@"activeAssertions" openDelimiter:@"[" closeDelimiter:@"]" block:v17];
    *(v22 + 6) = 0;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __55__BLSHLocalAssertionService_activeAssertionDescription__block_invoke_2;
    v13[3] = &unk_27841F1C8;
    v13[4] = selfCopy;
    v6 = v4;
    v14 = v6;
    v7 = v5;
    v15 = v7;
    v16 = &v21;
    [v7 appendBodySectionWithName:@"pausedAssertions" openDelimiter:@"[" closeDelimiter:@"]" block:v13];
    *(v22 + 6) = 0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __55__BLSHLocalAssertionService_activeAssertionDescription__block_invoke_3;
    v10[3] = &unk_27841EC68;
    v10[4] = selfCopy;
    v8 = v7;
    v11 = v8;
    v12 = &v21;
    [v8 appendBodySectionWithName:@"longHeldAssertions" openDelimiter:@"[" closeDelimiter:@"]" block:v10];
    os_unfair_lock_unlock((selfCopy + 88));
    selfCopy = [v8 description];

    _Block_object_dispose(&v21, 8);
  }

  return selfCopy;
}

void __55__BLSHLocalAssertionService_activeAssertionDescription__block_invoke(void *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(a1[4] + 16) objectEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v8 = a1[5];
        v9 = [v7 identifier];
        LOBYTE(v8) = [v8 containsObject:v9];

        if ((v8 & 1) == 0)
        {
          v10 = MEMORY[0x277CCACA8];
          v11 = a1[6];
          v12 = *(a1[7] + 8);
          v13 = (*(v12 + 24) + 1);
          *(v12 + 24) = v13;
          v14 = [v10 stringWithFormat:@"%d", v13];
          v15 = [v11 appendObject:v7 withName:v14];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __55__BLSHLocalAssertionService_activeAssertionDescription__block_invoke_3(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1[4] + 32);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * v6);
        v8 = MEMORY[0x277CCACA8];
        v9 = a1[5];
        v10 = *(a1[6] + 8);
        v11 = (*(v10 + 24) + 1);
        *(v10 + 24) = v11;
        v12 = [v8 stringWithFormat:@"%d", v11];
        v13 = [v9 appendObject:v7 withName:v12];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BLSHLocalAssertionService)initWithOSInterfaceProvider:(id)provider
{
  providerCopy = provider;
  v31.receiver = self;
  v31.super_class = BLSHLocalAssertionService;
  v6 = [(BLSHLocalAssertionService *)&v31 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    attributeHandlers = v7->_attributeHandlers;
    v7->_attributeHandlers = dictionary;

    v10 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:517 capacity:8];
    activeAssertions = v7->_activeAssertions;
    v7->_activeAssertions = v10;

    array = [MEMORY[0x277CBEB18] array];
    pausedAssertions = v7->_pausedAssertions;
    v7->_pausedAssertions = array;

    array2 = [MEMORY[0x277CBEB18] array];
    lock_longHeldAssertionHistory = v7->_lock_longHeldAssertionHistory;
    v7->_lock_longHeldAssertionHistory = array2;

    v16 = [MEMORY[0x277CBEB58] set];
    queue_deferredAcquisitionAssertions = v7->_queue_deferredAcquisitionAssertions;
    v7->_queue_deferredAcquisitionAssertions = v16;

    v18 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:2];
    observers = v7->_observers;
    v7->_observers = v18;

    objc_storeStrong(&v7->_osInterfaceProvider, provider);
    v20 = objc_alloc_init(BLSHAggregatedSystemActivityAssertionFactory);
    aggregatedAssertionFactory = v7->_aggregatedAssertionFactory;
    v7->_aggregatedAssertionFactory = v20;

    inactive = dispatch_workloop_create_inactive("BLSHLocalAssertionService workloop");
    rootWorkloop = v7->_rootWorkloop;
    v7->_rootWorkloop = inactive;

    v24 = v7->_rootWorkloop;
    dispatch_workloop_set_scheduler_priority();
    dispatch_activate(v7->_rootWorkloop);
    v25 = dispatch_queue_create_with_target_V2("BLSHLocalAssertionService queue", 0, v7->_rootWorkloop);
    queue = v7->_queue;
    v7->_queue = v25;

    objc_initWeak(&location, v7);
    v27 = v7->_queue;
    objc_copyWeak(&v29, &location);
    v7->_stateHandler = os_state_add_handler();
    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  return v7;
}

uint64_t __57__BLSHLocalAssertionService_initWithOSInterfaceProvider___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [(BLSHLocalAssertionService *)WeakRetained activeAssertionDescription];
  v3 = BLSStateDataWithTitleDescriptionAndHints();

  return v3;
}

- (os_unfair_lock_s)existingAttributeHandlerForClasses:(os_unfair_lock_s *)classes
{
  v3 = a2;
  if (classes)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__4;
    v13 = __Block_byref_object_dispose__4;
    v14 = 0;
    os_unfair_lock_lock(classes + 22);
    v4 = *&classes[2]._os_unfair_lock_opaque;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __64__BLSHLocalAssertionService_existingAttributeHandlerForClasses___block_invoke;
    v6[3] = &unk_27841F1F0;
    v7 = v3;
    v8 = &v9;
    [v4 enumerateKeysAndObjectsUsingBlock:v6];
    os_unfair_lock_unlock(classes + 22);
    classes = v10[5];

    _Block_object_dispose(&v9, 8);
  }

  return classes;
}

void __64__BLSHLocalAssertionService_existingAttributeHandlerForClasses___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 firstObjectCommonWithArray:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)registerAttributeHandler:(id)handler forAttributeClasses:(id)classes
{
  handlerCopy = handler;
  classesCopy = classes;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__BLSHLocalAssertionService_registerAttributeHandler_forAttributeClasses___block_invoke;
  block[3] = &unk_27841EAF0;
  block[4] = self;
  v12 = handlerCopy;
  v13 = classesCopy;
  v9 = classesCopy;
  v10 = handlerCopy;
  dispatch_async(queue, block);
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_observers addObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_observers removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)pauseAssertion:(id)assertion
{
  assertionCopy = assertion;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__BLSHLocalAssertionService_pauseAssertion___block_invoke;
  v7[3] = &unk_27841E538;
  v7[4] = self;
  v8 = assertionCopy;
  v6 = assertionCopy;
  dispatch_async(queue, v7);
}

void __50__BLSHLocalAssertionService_queue_pauseAssertion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [*(a1 + 32) attributesOfClasses:a2];
  v7 = [v6 indexesOfObjectsPassingTest:&__block_literal_global_37];
  v8 = [v6 objectsAtIndexes:v7];

  if ([v8 count])
  {
    v9 = bls_assertions_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 40);
      v11 = *(a1 + 48);
      v13 = NSStringFromBLSAssertingObject();
      v14 = 134218754;
      v15 = v12;
      v16 = 2114;
      v17 = v5;
      v18 = 2114;
      v19 = v8;
      v20 = 2114;
      v21 = v13;
      _os_log_debug_impl(&dword_21FD11000, v9, OS_LOG_TYPE_DEBUG, "%p handler:%{public}@ will deactivate (pause) attributes:%{public}@ from assertion:%{public}@", &v14, 0x2Au);
    }

    [v5 deactivateAttributes:v8 fromAssertion:*(a1 + 48) forService:*(a1 + 40)];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __50__BLSHLocalAssertionService_queue_pauseAssertion___block_invoke_38(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 service:*(a1 + 32) didPauseAssertion:*(a1 + 40)];
  }
}

- (void)resumeAssertion:(id)assertion
{
  assertionCopy = assertion;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__BLSHLocalAssertionService_resumeAssertion___block_invoke;
  v7[3] = &unk_27841E538;
  v7[4] = self;
  v8 = assertionCopy;
  v6 = assertionCopy;
  dispatch_async(queue, v7);
}

void __51__BLSHLocalAssertionService_queue_resumeAssertion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) attributesOfClasses:a2];
  v7 = [v6 indexesOfObjectsPassingTest:&__block_literal_global_43];
  v8 = [v6 objectsAtIndexes:v7];

  if ([v8 count])
  {
    v9 = bls_assertions_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __51__BLSHLocalAssertionService_queue_resumeAssertion___block_invoke_cold_1(a1);
    }

    [v5 activateAttributes:v8 fromAssertion:*(a1 + 48) forService:*(a1 + 40)];
  }
}

void __51__BLSHLocalAssertionService_queue_resumeAssertion___block_invoke_44(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 service:*(a1 + 32) didResumeAssertion:*(a1 + 40)];
  }
}

- (void)willCancelAssertion:(id)assertion
{
  assertionCopy = assertion;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__BLSHLocalAssertionService_willCancelAssertion___block_invoke;
  v7[3] = &unk_27841E538;
  v7[4] = self;
  v8 = assertionCopy;
  v6 = assertionCopy;
  dispatch_async(queue, v7);
}

void __55__BLSHLocalAssertionService_queue_willCancelAssertion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 service:*(a1 + 32) willCancelAssertion:*(a1 + 40)];
  }
}

- (void)queue_acquireAssertion:(char)assertion skipSleepCheck:
{
  v63[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (self)
  {
    identifier = [v5 identifier];
    if (!identifier)
    {
      v8 = objc_alloc(MEMORY[0x277CF0870]);
      v9 = getpid();
      identifier = [v8 initWithClientPid:v9 hostPid:getpid() count:{objc_msgSend(MEMORY[0x277CF0870], "nextCount")}];
      v10 = bls_assertions_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218498;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = identifier;
        *&buf[22] = 2114;
        v58 = v6;
        _os_log_debug_impl(&dword_21FD11000, v10, OS_LOG_TYPE_DEBUG, "%p created identifer:%{public}@ for local assertion:%{public}@", buf, 0x20u);
      }

      [v6 setIdentifier:identifier];
    }

    v11 = [(BLSHLocalAssertionService *)self activeAssertionForIdentifier:identifier];
    v12 = v11 == 0;

    if (v12)
    {
      descriptor = [v6 descriptor];
      v61[0] = objc_opt_class();
      v61[1] = objc_opt_class();
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:2];
      v19 = [descriptor attributesOfClasses:v18];
      v20 = [v19 count];

      if (assertion & 1) != 0 || !v20 || ([*(self + 96) systemSleepMonitor], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isAwakeOrAbortingSleep"), v21, (v22))
      {
        v23 = bls_assertions_log();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *&buf[4] = self;
          *&buf[12] = 2114;
          *&buf[14] = v6;
          _os_log_impl(&dword_21FD11000, v23, OS_LOG_TYPE_DEFAULT, "%p will acquire assertion:%{public}@", buf, 0x16u);
        }

        [*(self + 40) removeObject:identifier];
        os_unfair_lock_lock((self + 88));
        [*(self + 16) setObject:v6 forKey:identifier];
        v24 = [*(self + 8) copy];
        os_unfair_lock_unlock((self + 88));
        attributes = [descriptor attributes];
        v26 = [attributes mutableCopy];

        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __67__BLSHLocalAssertionService_queue_acquireAssertion_skipSleepCheck___block_invoke_69;
        v39[3] = &unk_27841F328;
        v40 = descriptor;
        selfCopy = self;
        v27 = v6;
        v42 = v27;
        v28 = v26;
        v43 = v28;
        [v24 enumerateKeysAndObjectsUsingBlock:v39];
        if ([v28 count])
        {
          v29 = bls_assertions_log();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v30 = NSStringFromBLSAssertingObject();
            *buf = 134218498;
            *&buf[4] = self;
            *&buf[12] = 2114;
            *&buf[14] = v28;
            *&buf[22] = 2114;
            v58 = v30;
            _os_log_impl(&dword_21FD11000, v29, OS_LOG_TYPE_INFO, "%p (no handler) will delay activation of attributes:%{public}@ for assertion:%{public}@", buf, 0x20u);
          }
        }

        [v27 serviceDidAcquire];
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __67__BLSHLocalAssertionService_queue_acquireAssertion_skipSleepCheck___block_invoke_70;
        v37[3] = &unk_27841F260;
        v37[4] = self;
        v38 = v27;
        [(BLSHLocalAssertionService *)self notifyObserversWithBlock:v37];
      }

      else
      {
        [*(self + 40) addObject:identifier];
        v31 = mach_continuous_time();
        v32 = *(self + 96);
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v58 = __Block_byref_object_copy__4;
        v59 = __Block_byref_object_dispose__4;
        v33 = NSStringFromBLSAssertingObject();
        v60 = [BLSHSystemWaker wakerWithIdentifier:v33 osInterfaceProvider:v32];

        objc_initWeak(&location, self);
        v34 = bls_assertions_log();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          *v53 = 134218242;
          selfCopy2 = self;
          v55 = 2114;
          v56 = v6;
          _os_log_impl(&dword_21FD11000, v34, OS_LOG_TYPE_INFO, "%p system about to sleep - will defer acquiring assertion:%{public}@", v53, 0x16u);
        }

        v35 = *(*&buf[8] + 40);
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __67__BLSHLocalAssertionService_queue_acquireAssertion_skipSleepCheck___block_invoke_61;
        v44[3] = &unk_27841F300;
        objc_copyWeak(v48, &location);
        v45 = v6;
        v48[1] = v31;
        v24 = v32;
        v46 = v24;
        v47 = buf;
        [v35 wakeWithCompletion:v44];

        objc_destroyWeak(v48);
        objc_destroyWeak(&location);
        _Block_object_dispose(buf, 8);
      }
    }

    else
    {
      v13 = bls_assertions_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [BLSHLocalAssertionService queue_acquireAssertion:skipSleepCheck:];
      }

      v14 = MEMORY[0x277CCA9B8];
      v62 = *MEMORY[0x277CCA450];
      v63[0] = @"already acquired assertion";
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:&v62 count:1];
      v16 = [v14 errorWithDomain:*MEMORY[0x277CF0828] code:2 userInfo:v15];

      [v6 serviceFailedToAcquireWithError:v16];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __67__BLSHLocalAssertionService_queue_acquireAssertion_skipSleepCheck___block_invoke;
      v50[3] = &unk_27841F288;
      v50[4] = self;
      v51 = v6;
      v52 = v16;
      descriptor = v16;
      [(BLSHLocalAssertionService *)self notifyObserversWithBlock:v50];
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

void __67__BLSHLocalAssertionService_queue_acquireAssertion_skipSleepCheck___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 service:a1[4] failedToAcquireAssertion:a1[5] withError:a1[6]];
  }
}

void __67__BLSHLocalAssertionService_queue_acquireAssertion_skipSleepCheck___block_invoke_61(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[10];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__BLSHLocalAssertionService_queue_acquireAssertion_skipSleepCheck___block_invoke_2;
    block[3] = &unk_27841F2D8;
    block[4] = WeakRetained;
    v5 = *(a1 + 32);
    v6 = *(a1 + 64);
    v12 = v5;
    v15 = v6;
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v13 = v7;
    v14 = v8;
    dispatch_async(v4, block);
  }

  else
  {
    [*(*(*(a1 + 48) + 8) + 40) invalidate];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;
  }
}

void __67__BLSHLocalAssertionService_queue_acquireAssertion_skipSleepCheck___block_invoke_2(uint64_t a1)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__BLSHLocalAssertionService_queue_acquireAssertion_skipSleepCheck___block_invoke_3;
  v6[3] = &unk_27841F2B0;
  v2 = (a1 + 56);
  v5 = *(a1 + 32);
  v3 = *(&v5 + 1);
  v9 = *(a1 + 64);
  *&v4 = *(a1 + 48);
  *(&v4 + 1) = *v2;
  v7 = v5;
  v8 = v4;
  [(BLSHLocalAssertionService *)v5 _queue_acquireDeferredAssertion:v3 completion:v6];
}

void __67__BLSHLocalAssertionService_queue_acquireAssertion_skipSleepCheck___block_invoke_3(uint64_t a1, int a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = bls_assertions_log();
  v5 = v4;
  if (a2)
  {
    v6 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v6 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v4, v6))
  {
    if (a2)
    {
      v7 = @"for assertion";
    }

    else
    {
      v7 = @"but assertion was already canceled";
    }

    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = NSStringFromBLSAssertingObject();
    v11 = *(a1 + 64);
    mach_continuous_time();
    BSTimeDifferenceFromMachTimeToMachTime();
    v13 = v12;
    v14 = [*(a1 + 48) systemSleepMonitor];
    v18 = 134219010;
    v19 = v9;
    v20 = 2112;
    v21 = v7;
    v22 = 2114;
    v23 = v10;
    v24 = 2048;
    v25 = v13;
    v26 = 1024;
    v27 = [v14 hasSleepBeenRequested];
    _os_log_impl(&dword_21FD11000, v5, v6, "%p system awoke  %@:%{public}@ elapsed:%.4lfs hasSleepBeenRequested:%{BOOL}u", &v18, 0x30u);
  }

  [*(*(*(a1 + 56) + 8) + 40) invalidate];
  v15 = *(*(a1 + 56) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = 0;

  v17 = *MEMORY[0x277D85DE8];
}

void __67__BLSHLocalAssertionService_queue_acquireAssertion_skipSleepCheck___block_invoke_69(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) attributesOfClasses:a2];
  if ([v6 count])
  {
    v7 = bls_assertions_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __67__BLSHLocalAssertionService_queue_acquireAssertion_skipSleepCheck___block_invoke_69_cold_1(a1);
    }

    [v5 activateAttributes:v6 fromAssertion:*(a1 + 48) forService:*(a1 + 40)];
    [*(a1 + 56) removeObjectsInArray:v6];
  }
}

void __67__BLSHLocalAssertionService_queue_acquireAssertion_skipSleepCheck___block_invoke_70(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 service:*(a1 + 32) didAcquireAssertion:*(a1 + 40)];
  }
}

- (void)cancelAssertion:(id)assertion withError:(id)error
{
  assertionCopy = assertion;
  errorCopy = error;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__BLSHLocalAssertionService_cancelAssertion_withError___block_invoke;
  block[3] = &unk_27841EAF0;
  block[4] = self;
  v12 = assertionCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = assertionCopy;
  dispatch_async(queue, block);
}

void __61__BLSHLocalAssertionService_queue_cancelAssertion_withError___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [*(a1 + 32) attributesOfClasses:a2];
  v7 = v6;
  if (*(a1 + 64) == 1)
  {
    v8 = [v6 indexesOfObjectsPassingTest:&__block_literal_global_76];
    v9 = [v7 objectsAtIndexes:v8];

    v7 = v9;
  }

  if ([v7 count])
  {
    v10 = bls_assertions_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 40);
      v12 = *(a1 + 48);
      v14 = NSStringFromBLSAssertingObject();
      v15 = 134218754;
      v16 = v13;
      v17 = 2114;
      v18 = v5;
      v19 = 2114;
      v20 = v7;
      v21 = 2114;
      v22 = v14;
      _os_log_debug_impl(&dword_21FD11000, v10, OS_LOG_TYPE_DEBUG, "%p handler:%{public}@ will deactivate (cancel) attributes:%{public}@ from assertion:%{public}@", &v15, 0x2Au);
    }

    [v5 deactivateAttributes:v7 fromAssertion:*(a1 + 48) forService:*(a1 + 40)];
    [*(a1 + 56) removeObjectsInArray:v7];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __61__BLSHLocalAssertionService_queue_cancelAssertion_withError___block_invoke_77(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 service:a1[4] didCancelAssertion:a1[5] withError:a1[6]];
  }
}

- (void)restartAssertionTimeoutTimer:(id)timer
{
  timerCopy = timer;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__BLSHLocalAssertionService_restartAssertionTimeoutTimer___block_invoke;
  v7[3] = &unk_27841E538;
  v7[4] = self;
  v8 = timerCopy;
  v6 = timerCopy;
  dispatch_async(queue, v7);
}

- (void)queue_restartAssertionTimeoutTimer:(uint64_t)timer
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (timer)
  {
    v4 = objc_opt_class();
    descriptor = [v3 descriptor];
    v6 = [descriptor attributeOfClass:v4];

    if (v6)
    {
      v7 = [(BLSHLocalAssertionService *)v3 queue_restartAssertionTimeoutTimer:timer, &v18];
      v8 = v18;
      if (v7)
      {
        os_unfair_lock_lock((timer + 88));
        v18 = 0;
        v19 = &v18;
        v20 = 0x3032000000;
        v21 = __Block_byref_object_copy__4;
        v22 = __Block_byref_object_dispose__4;
        v23 = 0;
        v9 = *(timer + 8);
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __64__BLSHLocalAssertionService_queue_restartAssertionTimeoutTimer___block_invoke;
        v17[3] = &unk_27841F378;
        v17[4] = &v18;
        v17[5] = v4;
        [v9 enumerateKeysAndObjectsUsingBlock:v17];
        os_unfair_lock_unlock((timer + 88));
        if (v19[5])
        {
          v10 = bls_assertions_log();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            *buf = 134218498;
            timerCopy2 = timer;
            v27 = 2114;
            v28 = v6;
            v29 = 2114;
            v30 = v3;
            _os_log_impl(&dword_21FD11000, v10, OS_LOG_TYPE_INFO, "%p will restart timer:%{public}@ for assertion:%{public}@", buf, 0x20u);
          }

          v11 = v19[5];
          v24 = v6;
          v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
          [v11 activateAttributes:v12 fromAssertion:v3 forService:timer];

          v15[0] = MEMORY[0x277D85DD0];
          v15[1] = 3221225472;
          v15[2] = __64__BLSHLocalAssertionService_queue_restartAssertionTimeoutTimer___block_invoke_83;
          v15[3] = &unk_27841F260;
          v15[4] = timer;
          v16 = v3;
          [(BLSHLocalAssertionService *)timer notifyObserversWithBlock:v15];
        }

        else
        {
          v13 = bls_assertions_log();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 134218498;
            timerCopy2 = timer;
            v27 = 2114;
            v28 = v6;
            v29 = 2114;
            v30 = v3;
            _os_log_impl(&dword_21FD11000, v13, OS_LOG_TYPE_INFO, "%p (no handler) will not restart timeout:%{public}@ for assertion:%{public}@", buf, 0x20u);
          }
        }

        _Block_object_dispose(&v18, 8);
      }
    }

    else
    {
      v8 = bls_assertions_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [BLSHLocalAssertionService queue_restartAssertionTimeoutTimer:];
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __64__BLSHLocalAssertionService_queue_restartAssertionTimeoutTimer___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  if ([a2 containsObject:*(a1 + 40)])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    *a4 = 1;
  }
}

void __64__BLSHLocalAssertionService_queue_restartAssertionTimeoutTimer___block_invoke_83(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 service:*(a1 + 32) didRestartTimeoutTimerForAssertion:*(a1 + 40)];
  }
}

- (void)replaceWithService:(id)service
{
  serviceCopy = service;
  os_unfair_lock_lock(&self->_lock);
  v4 = [(NSMapTable *)self->_activeAssertions count];
  os_unfair_lock_unlock(&self->_lock);
  if (v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"BLSLocalAssertionService does not support replacement with %@", serviceCopy}];
  }
}

- (id)activeAssertionForIdentifier:(uint64_t)identifier
{
  if (identifier)
  {
    v3 = a2;
    os_unfair_lock_lock((identifier + 88));
    v4 = [*(identifier + 16) objectForKey:v3];

    os_unfair_lock_unlock((identifier + 88));
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)queue_registerAttributeHandler:(void *)handler forAttributeClasses:
{
  v40 = *MEMORY[0x277D85DE8];
  v26 = a2;
  handlerCopy = handler;
  if (self)
  {
    v6 = [(BLSHLocalAssertionService *)self existingAttributeHandlerForClasses:handlerCopy];
    if (v6)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"cannot register handler for classes:%@ overlaps existing handler for classes:%@", handlerCopy, v6}];
    }

    else
    {
      os_unfair_lock_lock((self + 88));
      [*(self + 8) setObject:v26 forKey:handlerCopy];
      v7 = NSAllMapTableValues(*(self + 16));
      v8 = [*(self + 24) copy];
      os_unfair_lock_unlock((self + 88));
      v9 = bls_assertions_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218242;
        selfCopy = self;
        v33 = 2114;
        v34 = handlerCopy;
        _os_log_debug_impl(&dword_21FD11000, v9, OS_LOG_TYPE_DEBUG, "%p registered handler for attributes:%{public}@", buf, 0x16u);
      }

      selfCopy2 = self;

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      obj = v7;
      v10 = [obj countByEnumeratingWithState:&v27 objects:v39 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v28;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v28 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v27 + 1) + 8 * i);
            descriptor = [v14 descriptor];
            v16 = [descriptor attributesOfClasses:handlerCopy];
            identifier = [v14 identifier];
            v18 = [v8 containsObject:identifier];

            if (v18)
            {
              v19 = [v16 indexesOfObjectsPassingTest:&__block_literal_global_7];
              v20 = [v16 objectsAtIndexes:v19];

              v16 = v20;
            }

            if ([v16 count])
            {
              v21 = bls_assertions_log();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
              {
                v22 = NSStringFromBLSAssertingObject();
                *buf = 134218754;
                selfCopy = selfCopy2;
                v33 = 2114;
                v34 = v26;
                v35 = 2114;
                v36 = v16;
                v37 = 2114;
                v38 = v22;
                _os_log_debug_impl(&dword_21FD11000, v21, OS_LOG_TYPE_DEBUG, "%p will now activate (registered handler:%{public}@) attributes:%{public}@ from assertion:%{public}@", buf, 0x2Au);
              }

              [v26 activateAttributes:v16 fromAssertion:v14 forService:selfCopy2];
            }
          }

          v11 = [obj countByEnumeratingWithState:&v27 objects:v39 count:16];
        }

        while (v11);
      }

      v6 = 0;
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)queue_pauseAssertion:(uint64_t)assertion
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (assertion)
  {
    identifier = [v3 identifier];
    v6 = [(BLSHLocalAssertionService *)assertion activeAssertionForIdentifier:identifier];

    if (v6)
    {
      os_unfair_lock_lock((assertion + 88));
      v7 = [OUTLINED_FUNCTION_12_0() containsObject:?];
      os_unfair_lock_unlock((assertion + 88));
      v8 = bls_assertions_log();
      v9 = v8;
      if (v7)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_0_7(3.8521e-34);
          OUTLINED_FUNCTION_6_2();
          OUTLINED_FUNCTION_11_0(v10, v11, v12, v13, v14);
        }
      }

      else
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_0_7(3.8521e-34);
          OUTLINED_FUNCTION_6_2();
          _os_log_impl(v16, v17, OS_LOG_TYPE_DEFAULT, v18, v19, 0x16u);
        }

        os_unfair_lock_lock((assertion + 88));
        [OUTLINED_FUNCTION_12_0() addObject:?];
        v9 = [*(assertion + 8) copy];
        os_unfair_lock_unlock((assertion + 88));
        [v4 descriptor];
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_3_3();
        v34 = 3221225472;
        v35 = __50__BLSHLocalAssertionService_queue_pauseAssertion___block_invoke;
        v36 = &unk_27841F238;
        v37 = v20;
        assertionCopy = assertion;
        v21 = v4;
        v39 = v21;
        v22 = v7;
        [v9 enumerateKeysAndObjectsUsingBlock:v33];
        [v21 serviceDidPause];
        OUTLINED_FUNCTION_0_5();
        v28 = 3221225472;
        v29 = __50__BLSHLocalAssertionService_queue_pauseAssertion___block_invoke_38;
        v30 = &unk_27841F260;
        assertionCopy2 = assertion;
        v32 = v21;
        [(BLSHLocalAssertionService *)assertion notifyObserversWithBlock:v27];
      }
    }

    else
    {
      v9 = bls_assertions_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_0_7(3.8521e-34);
        OUTLINED_FUNCTION_6_2();
        _os_log_debug_impl(v23, v24, OS_LOG_TYPE_DEBUG, v25, v26, 0x16u);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)notifyObserversWithBlock:(uint64_t)block
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (block)
  {
    os_unfair_lock_lock((block + 88));
    allObjects = [*(block + 48) allObjects];
    os_unfair_lock_unlock((block + 88));
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = allObjects;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v3[2](v3, *(*(&v11 + 1) + 8 * v9++));
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)queue_resumeAssertion:(uint64_t)assertion
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (assertion)
  {
    identifier = [v3 identifier];
    v6 = [(BLSHLocalAssertionService *)assertion activeAssertionForIdentifier:identifier];

    if (v6)
    {
      os_unfair_lock_lock((assertion + 88));
      v7 = [OUTLINED_FUNCTION_12_0() containsObject:?];
      os_unfair_lock_unlock((assertion + 88));
      v8 = bls_assertions_log();
      v9 = v8;
      if (v7)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_0_7(3.8521e-34);
          OUTLINED_FUNCTION_6_2();
          _os_log_impl(v16, v17, OS_LOG_TYPE_DEFAULT, v18, v19, 0x16u);
        }

        os_unfair_lock_lock((assertion + 88));
        [OUTLINED_FUNCTION_12_0() removeObject:?];
        v9 = [*(assertion + 8) copy];
        os_unfair_lock_unlock((assertion + 88));
        [v4 descriptor];
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_3_3();
        v34 = 3221225472;
        v35 = __51__BLSHLocalAssertionService_queue_resumeAssertion___block_invoke;
        v36 = &unk_27841F238;
        v37 = v20;
        assertionCopy = assertion;
        v21 = v4;
        v39 = v21;
        v22 = v7;
        [v9 enumerateKeysAndObjectsUsingBlock:v33];
        [v21 serviceDidResume];
        OUTLINED_FUNCTION_0_5();
        v28 = 3221225472;
        v29 = __51__BLSHLocalAssertionService_queue_resumeAssertion___block_invoke_44;
        v30 = &unk_27841F260;
        assertionCopy2 = assertion;
        v32 = v21;
        [(BLSHLocalAssertionService *)assertion notifyObserversWithBlock:v27];
      }

      else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_0_7(3.8521e-34);
        OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_11_0(v10, v11, v12, v13, v14);
      }
    }

    else
    {
      v9 = bls_assertions_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_0_7(3.8521e-34);
        OUTLINED_FUNCTION_6_2();
        _os_log_debug_impl(v23, v24, OS_LOG_TYPE_DEBUG, v25, v26, 0x16u);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)queue_willCancelAssertion:(uint64_t)assertion
{
  v3 = a2;
  v4 = v3;
  if (assertion)
  {
    [v3 serviceWillCancel];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __55__BLSHLocalAssertionService_queue_willCancelAssertion___block_invoke;
    v5[3] = &unk_27841F260;
    v5[4] = assertion;
    v6 = v4;
    [(BLSHLocalAssertionService *)assertion notifyObserversWithBlock:v5];
  }
}

- (void)acquireAssertion:(char)assertion skipSleepCheck:
{
  v5 = a2;
  if (self)
  {
    v6 = *(self + 80);
    OUTLINED_FUNCTION_0_5();
    v8 = 3221225472;
    v9 = __61__BLSHLocalAssertionService_acquireAssertion_skipSleepCheck___block_invoke;
    v10 = &unk_27841EA28;
    selfCopy = self;
    v12 = v5;
    assertionCopy = assertion;
    dispatch_async(v6, block);
  }
}

- (void)_queue_acquireDeferredAssertion:(void *)assertion completion:
{
  v8 = a2;
  assertionCopy = assertion;
  if (self)
  {
    identifier = [v8 identifier];
    v7 = [*(self + 40) containsObject:identifier];
    if (v7)
    {
      [*(self + 40) removeObject:identifier];
      [(BLSHLocalAssertionService *)self queue_acquireAssertion:v8 skipSleepCheck:1];
    }

    assertionCopy[2](assertionCopy, v7);
  }
}

- (void)queue_cancelAssertion:(void *)assertion withError:
{
  v59 = *MEMORY[0x277D85DE8];
  v5 = a2;
  assertionCopy = assertion;
  if (self)
  {
    identifier = [v5 identifier];
    if ([*(self + 40) containsObject:identifier])
    {
      v8 = bls_assertions_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        OUTLINED_FUNCTION_2_6();
        v56 = v5;
        OUTLINED_FUNCTION_14_0(&dword_21FD11000, v9, v10, "%p removing deferred assertion and notifying observers %{public}@", v11, v12, v13, v14, v36, v37, v39, v40, v41, v42, selfCopy2, v44, v45, v46, v47, v48, v49, v50, selfCopy, v52, v53, v54, buf[0]);
      }

      [*(self + 40) removeObject:identifier];
    }

    else
    {
      v15 = [(BLSHLocalAssertionService *)self activeAssertionForIdentifier:identifier];

      if (!v15)
      {
        v16 = bls_assertions_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          OUTLINED_FUNCTION_2_6();
          v56 = v5;
          OUTLINED_FUNCTION_14_0(&dword_21FD11000, v17, v18, "%p already cancelled assertion %{public}@", v19, v20, v21, v22, v36, v37, v39, v40, v41, v42, selfCopy2, v44, v45, v46, v47, v48, v49, v50, selfCopy, v52, v53, v54, buf[0]);
        }

        goto LABEL_11;
      }

      os_unfair_lock_lock((self + 88));
      v24 = [*(self + 24) containsObject:identifier];
      [*(self + 16) removeObjectForKey:identifier];
      [*(self + 24) removeObject:identifier];
      [(BLSHLocalAssertionService *)self lock_addPotentialLongHeldAssertionToHistory:v5];
      v38 = [*(self + 8) copy];
      os_unfair_lock_unlock((self + 88));
      v25 = bls_assertions_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_2_6();
        v56 = v5;
        v57 = 1024;
        LODWORD(v58) = v24;
        _os_log_impl(&dword_21FD11000, v25, OS_LOG_TYPE_DEFAULT, "%p will cancel assertion:%{public}@ wasPaused:%{BOOL}u", buf, 0x1Cu);
      }

      descriptor = [v5 descriptor];
      attributes = [descriptor attributes];
      v28 = [attributes mutableCopy];

      if (v24)
      {
        v29 = [v28 indexesOfObjectsPassingTest:&__block_literal_global_74];
        [v28 removeObjectsAtIndexes:v29];
      }

      v46 = MEMORY[0x277D85DD0];
      v47 = 3221225472;
      v48 = __61__BLSHLocalAssertionService_queue_cancelAssertion_withError___block_invoke_2;
      v49 = &unk_27841F350;
      LOBYTE(v54) = v24;
      v50 = descriptor;
      selfCopy = self;
      v52 = v5;
      v30 = v28;
      v53 = v30;
      v31 = descriptor;
      [v38 enumerateKeysAndObjectsUsingBlock:&v46];
      if ([v30 count])
      {
        v32 = bls_assertions_log();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v33 = NSStringFromBLSAssertingObject();
          OUTLINED_FUNCTION_2_6();
          v56 = v30;
          v57 = v34;
          v58 = v35;
          _os_log_impl(&dword_21FD11000, v32, OS_LOG_TYPE_INFO, "%p (still no handler) will not cancel attributes:%{public}@ for assertion:%{public}@", buf, 0x20u);
        }
      }
    }

    [v5 serviceDidCancelWithError:assertionCopy];
    v39 = MEMORY[0x277D85DD0];
    v40 = 3221225472;
    v41 = __61__BLSHLocalAssertionService_queue_cancelAssertion_withError___block_invoke_77;
    v42 = &unk_27841F288;
    selfCopy2 = self;
    v44 = v5;
    v45 = assertionCopy;
    [(BLSHLocalAssertionService *)self notifyObserversWithBlock:?];

LABEL_11:
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)lock_addPotentialLongHeldAssertionToHistory:(uint64_t)history
{
  v3 = a2;
  if (history)
  {
    v10 = v3;
    [v3 activeDuration];
    v3 = v10;
    v5 = v4;
    if (v4 >= 720.0)
    {
      v6 = [v10 description];
      v7 = [MEMORY[0x277CBEAA8] now];
      v8 = [BLSHLongHeldAssertion longHeldAssertionWithDescription:v6 activeDuration:v7 timeReleased:v5];

      [*(history + 32) insertObject:v8 atIndex:0];
      v9 = [*(history + 32) count];
      if (v9 >= 0x1F)
      {
        [*(history + 32) removeObjectsInRange:{30, v9 - 30}];
      }

      v3 = v10;
    }
  }
}

void __51__BLSHLocalAssertionService_queue_resumeAssertion___block_invoke_cold_1(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v1 = *(a1 + 48);
  v3 = NSStringFromBLSAssertingObject();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_13_0(&dword_21FD11000, v4, v5, "%p will activate (resume) attributes:%{public}@ from assertion:%{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)queue_acquireAssertion:skipSleepCheck:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_11_0(&dword_21FD11000, v0, v0, "%p already acquired assertion %{public}@", v2);
  v1 = *MEMORY[0x277D85DE8];
}

void __67__BLSHLocalAssertionService_queue_acquireAssertion_skipSleepCheck___block_invoke_69_cold_1(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v1 = *(a1 + 48);
  v3 = NSStringFromBLSAssertingObject();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_13_0(&dword_21FD11000, v4, v5, "%p will activate (acquire) attributes:%{public}@ from assertion:%{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (uint64_t)queue_restartAssertionTimeoutTimer:(void *)a3 .cold.1(void *a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = [a1 identifier];
  *a3 = v6;
  v7 = [(BLSHLocalAssertionService *)a2 activeAssertionForIdentifier:v6];

  if (v7)
  {
    result = 1;
  }

  else
  {
    v9 = bls_assertions_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 134218242;
      v13 = a2;
      v14 = 2114;
      v15 = a1;
      OUTLINED_FUNCTION_11_0(&dword_21FD11000, v9, v10, "%p cannot restart timer for unacquired assertion %{public}@", &v12);
    }

    result = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)queue_restartAssertionTimeoutTimer:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_11_0(&dword_21FD11000, v0, v0, "%p cannot restart timer without BLSTimeoutDurationAttribute for assertion %{public}@", v2);
  v1 = *MEMORY[0x277D85DE8];
}

@end