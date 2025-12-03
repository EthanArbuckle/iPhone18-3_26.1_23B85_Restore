@interface BLSXPCAssertionService
+ (id)defaultEndpoint;
- (BLSXPCAssertionService)init;
- (BLSXPCAssertionService)initWithEndpoint:(id)endpoint;
- (id)_queue_assertionForIdentifier:(uint64_t)identifier;
- (void)_queue_acquireAssertion:(void *)assertion withRemoteTarget:;
- (void)_queue_reconnectAssertions;
- (void)_queue_removeAssertionForIdentifier:(uint64_t)identifier;
- (void)_queue_setAssertion:(void *)assertion forIdentifier:;
- (void)acquireAssertion:(id)assertion;
- (void)assertion:(id)assertion failedToAcquireWithError:(id)error;
- (void)assertionAcquired:(id)acquired;
- (void)assertionDidCancel:(id)cancel withError:(id)error;
- (void)assertionPaused:(id)paused;
- (void)assertionResumed:(id)resumed;
- (void)assertionWillCancel:(id)cancel;
- (void)cancelAssertion:(id)assertion withError:(id)error;
- (void)dealloc;
- (void)enqueueRemoteRequest:(uint64_t)request;
- (void)invalidate;
- (void)queue_assertionResponder:(void *)responder didFailToAcquireWithBLSError:;
- (void)restartAssertionTimeoutTimer:(id)timer;
@end

@implementation BLSXPCAssertionService

+ (id)defaultEndpoint
{
  v2 = MEMORY[0x277CF3288];
  defaultShellMachName = [MEMORY[0x277CF3288] defaultShellMachName];
  v4 = +[BLSXPCAssertionServiceSpecification identifier];
  v5 = [v2 endpointForMachName:defaultShellMachName service:v4 instance:0];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = MEMORY[0x277CF3288];
    v9 = +[BLSXPCAssertionServiceSpecification identifier];
    v7 = [v8 nullEndpointForService:v9 instance:0];
  }

  return v7;
}

- (BLSXPCAssertionService)init
{
  v3 = +[BLSXPCAssertionService defaultEndpoint];
  v4 = [(BLSXPCAssertionService *)self initWithEndpoint:v3];

  return v4;
}

- (BLSXPCAssertionService)initWithEndpoint:(id)endpoint
{
  v39 = *MEMORY[0x277D85DE8];
  endpointCopy = endpoint;
  NSClassFromString(&cfstr_Bsserviceconne.isa);
  if (!endpointCopy)
  {
    [BLSXPCAssertionService initWithEndpoint:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [BLSXPCAssertionService initWithEndpoint:a2];
  }

  v32.receiver = self;
  v32.super_class = BLSXPCAssertionService;
  v6 = [(BLSXPCAssertionService *)&v32 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    queue_assertions = v7->_queue_assertions;
    v7->_queue_assertions = strongToWeakObjectsMapTable;

    v10 = [MEMORY[0x277CBEB58] set];
    queue_assertionsToReacquire = v7->_queue_assertionsToReacquire;
    v7->_queue_assertionsToReacquire = v10;

    v12 = [MEMORY[0x277CF3280] connectionWithEndpoint:endpointCopy];
    connection = v7->_connection;
    v7->_connection = v12;

    v14 = +[BLSXPCAssertionServiceSpecification serviceQuality];
    serial = [MEMORY[0x277CF0C18] serial];
    v16 = [serial serviceClass:objc_msgSend(v14 relativePriority:{"serviceClass"), objc_msgSend(v14, "relativePriority")}];
    v17 = BSDispatchQueueCreate();

    objc_storeStrong(&v7->_requestQueue, v17);
    objc_initWeak(&location, v7);
    v18 = v7->_connection;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __43__BLSXPCAssertionService_initWithEndpoint___block_invoke;
    v26[3] = &unk_278428950;
    v19 = v14;
    v27 = v19;
    v20 = v17;
    v28 = v20;
    v21 = v7;
    v29 = v21;
    objc_copyWeak(&v30, &location);
    [(BSServiceConnection *)v18 configureConnection:v26];
    [(BSServiceConnection *)v7->_connection activate];
    v22 = bls_assertions_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v25 = v7->_connection;
      *buf = 134218498;
      v34 = v21;
      v35 = 2114;
      v36 = v25;
      v37 = 2114;
      v38 = endpointCopy;
      _os_log_debug_impl(&dword_21FE25000, v22, OS_LOG_TYPE_DEBUG, "%p did activate connection:%{public}@ for endpoint:%{public}@", buf, 0x20u);
    }

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  v23 = *MEMORY[0x277D85DE8];
  return v7;
}

void __43__BLSXPCAssertionService_initWithEndpoint___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setServiceQuality:*(a1 + 32)];
  [v3 setTargetQueue:*(a1 + 40)];
  v4 = +[BLSXPCAssertionServiceSpecification interface];
  [v3 setInterface:v4];

  [v3 setInterfaceTarget:*(a1 + 48)];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__BLSXPCAssertionService_initWithEndpoint___block_invoke_2;
  v5[3] = &unk_278428908;
  objc_copyWeak(&v6, (a1 + 56));
  [v3 setInterruptionHandler:v5];
  [v3 setInvalidationHandler:&__block_literal_global_1];
  objc_destroyWeak(&v6);
}

void __43__BLSXPCAssertionService_initWithEndpoint___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(BLSXPCAssertionService *)WeakRetained _queue_reconnectAssertions];
}

- (void)_queue_reconnectAssertions
{
  v36 = *MEMORY[0x277D85DE8];
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 8));
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v22 = _os_activity_create(&dword_21FE25000, "BLSXPCAssertionService Reconnect", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v22, &state);
    v2 = bls_assertions_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy4 = self;
      _os_log_impl(&dword_21FE25000, v2, OS_LOG_TYPE_DEFAULT, "%p Reconnect assertions", buf, 0xCu);
    }

    [*(self + 16) activate];
    v3 = *(self + 32);
    objectEnumerator = [*(self + 24) objectEnumerator];
    allObjects = [objectEnumerator allObjects];
    [v3 addObjectsFromArray:allObjects];

    allObjects2 = [*(self + 32) allObjects];
    [*(self + 24) removeAllObjects];
    remoteTarget = [*(self + 16) remoteTarget];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = allObjects2;
    v8 = [v7 countByEnumeratingWithState:&v24 objects:v35 count:16];
    if (v8)
    {
      v9 = *v25;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v24 + 1) + 8 * i);
          identifier = [v11 identifier];
          [v11 setIdentifier:0];
          acquisitionState = [v11 acquisitionState];
          v14 = acquisitionState;
          if ((acquisitionState - 1) >= 2)
          {
            if (!acquisitionState)
            {
              v19 = bls_assertions_log();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
              {
                *buf = 134218498;
                selfCopy4 = self;
                v31 = 2114;
                v32 = v11;
                v33 = 2114;
                v34 = identifier;
                _os_log_impl(&dword_21FE25000, v19, OS_LOG_TYPE_INFO, "%p %{public}@ oldIdentifier=%{public}@ is no longer acquired when handling the reconnection event, ignoring", buf, 0x20u);
              }
            }
          }

          else
          {
            identifier2 = [v11 identifier];
            v16 = identifier2 == 0;

            if (!v16)
            {
              v20 = bls_assertions_log();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
              {
                *buf = 134218498;
                selfCopy4 = self;
                v31 = 2114;
                v32 = v11;
                v33 = 2114;
                v34 = identifier;
                _os_log_impl(&dword_21FE25000, v20, OS_LOG_TYPE_INFO, "%p %{public}@ oldIdentifier=%{public}@ has a new identifier, ignoring", buf, 0x20u);
              }

              goto LABEL_24;
            }

            v17 = bls_assertions_log();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              v18 = NSStringFromBLSAssertionAcquisitionState(v14);
              *buf = 134218498;
              selfCopy4 = self;
              v31 = 2048;
              v32 = v11;
              v33 = 2114;
              v34 = v18;
              _os_log_impl(&dword_21FE25000, v17, OS_LOG_TYPE_INFO, "%p Reacquiring assertion %p for state %{public}@", buf, 0x20u);
            }

            [(BLSXPCAssertionService *)self _queue_acquireAssertion:v11 withRemoteTarget:remoteTarget];
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v24 objects:v35 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_24:

    os_activity_scope_leave(&state);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  [(BSServiceConnection *)self->_connection invalidate];
  os_unfair_lock_lock(&self->_lock);
  self->_lock_invalidated = 1;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)dealloc
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(self);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_9(&dword_21FE25000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"_lock_invalidated", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __47__BLSXPCAssertionService_enqueueRemoteRequest___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) remoteTarget];
  (*(*(a1 + 40) + 16))();
}

void __43__BLSXPCAssertionService_acquireAssertion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isAcquired])
  {
    v4 = bls_assertions_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __43__BLSXPCAssertionService_acquireAssertion___block_invoke_cold_1(a1, (a1 + 32));
    }
  }

  else
  {
    [(BLSXPCAssertionService *)*(a1 + 40) _queue_acquireAssertion:v3 withRemoteTarget:?];
  }
}

void __52__BLSXPCAssertionService_cancelAssertion_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = bls_assertions_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __52__BLSXPCAssertionService_cancelAssertion_withError___block_invoke_cold_1(a1);
  }

  [*(*(a1 + 32) + 32) removeObject:*(a1 + 40)];
  v5 = [*(a1 + 40) identifier];
  [v3 cancelAssertion:v5 withError:*(a1 + 48)];
}

void __55__BLSXPCAssertionService_restartAssertionTimeoutTimer___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = bls_assertions_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __55__BLSXPCAssertionService_restartAssertionTimeoutTimer___block_invoke_cold_1(a1);
  }

  v5 = [*(a1 + 40) identifier];
  [v3 restartAssertionTimeoutTimer:v5];
}

- (id)_queue_assertionForIdentifier:(uint64_t)identifier
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (identifier)
  {
    dispatch_assert_queue_V2(*(identifier + 8));
    v4 = [*(identifier + 24) objectForKey:v3];
    if (!v4)
    {
      v5 = bls_assertions_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = *(identifier + 24);
        v9 = 134218498;
        identifierCopy = identifier;
        v11 = 2112;
        v12 = v3;
        v13 = 2112;
        v14 = v8;
        _os_log_error_impl(&dword_21FE25000, v5, OS_LOG_TYPE_ERROR, "%p could not find assertion:%@; %@", &v9, 0x20u);
      }

      [*(identifier + 24) removeObjectForKey:v3];
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_queue_setAssertion:(void *)assertion forIdentifier:
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  assertionCopy = assertion;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 8));
    [*(self + 24) setObject:v5 forKey:assertionCopy];
    v7 = bls_assertions_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v10 = 134218498;
      selfCopy = self;
      OUTLINED_FUNCTION_5();
      v12 = v5;
      v13 = v9;
      v14 = assertionCopy;
      _os_log_debug_impl(&dword_21FE25000, v7, OS_LOG_TYPE_DEBUG, "%p set assertion:%{public}@ for identifier:%{public}@", &v10, 0x20u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_queue_removeAssertionForIdentifier:(uint64_t)identifier
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (identifier)
  {
    dispatch_assert_queue_V2(*(identifier + 8));
    v5 = bls_assertions_log();
    if (OUTLINED_FUNCTION_10(v5))
    {
      v7 = [*(identifier + 24) objectForKey:v4];
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_3(&dword_21FE25000, v8, v9, "%p remove assertion:%{public}@ for identifier:%{public}@", v10, v11, v12, v13, 2u);
    }

    [*(identifier + 24) removeObjectForKey:v4];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)enqueueRemoteRequest:(uint64_t)request
{
  v3 = a2;
  if (request)
  {
    v4 = *(request + 8);
    OUTLINED_FUNCTION_1();
    v5[1] = 3221225472;
    v5[2] = __47__BLSXPCAssertionService_enqueueRemoteRequest___block_invoke;
    v5[3] = &unk_278428978;
    v5[4] = request;
    v6 = v3;
    dispatch_async(v4, v5);
  }
}

- (void)_queue_acquireAssertion:(void *)assertion withRemoteTarget:
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a2;
  assertionCopy = assertion;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 8));
    identifier = [v5 identifier];
    v8 = bls_assertions_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
    if (identifier)
    {
      if (v9)
      {
        OUTLINED_FUNCTION_2_0();
        v43 = v18;
        v44 = identifier;
        OUTLINED_FUNCTION_11();
        _os_log_debug_impl(v19, v20, v21, v22, v23, 0x20u);
      }

      v24 = OUTLINED_FUNCTION_7();
      [(BLSXPCAssertionService *)v24 _queue_setAssertion:v25 forIdentifier:identifier];
      [assertionCopy acquireAssertion:identifier];
      goto LABEL_13;
    }

    if (v9)
    {
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_11();
      _os_log_debug_impl(v26, v27, v28, v29, v30, 0x16u);
    }

    descriptor = [v5 descriptor];
    v41 = 0;
    v11 = [assertionCopy acquireAssertionForDescriptor:descriptor error:&v41];
    v12 = v41;

    if (v11)
    {
      [v5 setIdentifier:v11];
      v31 = OUTLINED_FUNCTION_7();
      [(BLSXPCAssertionService *)v31 _queue_setAssertion:v32 forIdentifier:v11];
      if (v12)
      {
LABEL_7:
        isBSServiceConnectionError = [v12 isBSServiceConnectionError];
        v14 = bls_assertions_log();
        v15 = v14;
        if (isBSServiceConnectionError)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            bls_loggingString = [v12 bls_loggingString];
            OUTLINED_FUNCTION_2_0();
            v43 = v39;
            v44 = v40;
            _os_log_error_impl(&dword_21FE25000, v15, OS_LOG_TYPE_ERROR, "%p assertion:%{public}@ failed to acquire with connection error:%{public}@", buf, 0x20u);
          }

          identifier2 = [v5 identifier];

          if (!identifier2)
          {
            [*(self + 32) addObject:v5];
          }
        }

        else
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            bls_loggingString2 = [v12 bls_loggingString];
            OUTLINED_FUNCTION_2_0();
            v43 = v34;
            v44 = v35;
            _os_log_impl(&dword_21FE25000, v15, OS_LOG_TYPE_INFO, "%p assertion:%{public}@ failed to acquire with error:%{public}@", buf, 0x20u);
          }

          v36 = OUTLINED_FUNCTION_7();
          [(BLSXPCAssertionService *)v36 queue_assertionResponder:v37 didFailToAcquireWithBLSError:v12];
        }
      }
    }

    else if (v12)
    {
      goto LABEL_7;
    }

LABEL_13:
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)queue_assertionResponder:(void *)responder didFailToAcquireWithBLSError:
{
  v8 = a2;
  if (self)
  {
    v5 = *(self + 8);
    responderCopy = responder;
    dispatch_assert_queue_V2(v5);
    identifier = [v8 identifier];
    if (identifier)
    {
      [(BLSXPCAssertionService *)self _queue_removeAssertionForIdentifier:identifier];
    }

    [*(self + 32) removeObject:v8];
    [v8 serviceFailedToAcquireWithError:responderCopy];
  }
}

- (void)acquireAssertion:(id)assertion
{
  assertionCopy = assertion;
  OUTLINED_FUNCTION_1();
  v7[1] = 3221225472;
  v7[2] = __43__BLSXPCAssertionService_acquireAssertion___block_invoke;
  v7[3] = &unk_2784289A0;
  v8 = v5;
  selfCopy = self;
  v6 = v5;
  [(BLSXPCAssertionService *)self enqueueRemoteRequest:v7];
}

- (void)cancelAssertion:(id)assertion withError:(id)error
{
  assertionCopy = assertion;
  errorCopy = error;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__BLSXPCAssertionService_cancelAssertion_withError___block_invoke;
  v10[3] = &unk_2784289C8;
  v10[4] = self;
  v11 = assertionCopy;
  v12 = errorCopy;
  v8 = errorCopy;
  v9 = assertionCopy;
  [(BLSXPCAssertionService *)self enqueueRemoteRequest:v10];
}

- (void)restartAssertionTimeoutTimer:(id)timer
{
  timerCopy = timer;
  OUTLINED_FUNCTION_1();
  v7[1] = 3221225472;
  v7[2] = __55__BLSXPCAssertionService_restartAssertionTimeoutTimer___block_invoke;
  v7[3] = &unk_2784289A0;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(BLSXPCAssertionService *)self enqueueRemoteRequest:v7];
}

- (void)assertion:(id)assertion failedToAcquireWithError:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_requestQueue);
  v8 = [(BLSXPCAssertionService *)self _queue_assertionForIdentifier:assertionCopy];
  v9 = bls_assertions_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11();
    _os_log_debug_impl(v11, v12, v13, v14, v15, 0x2Au);
  }

  if (v8)
  {
    [(BLSXPCAssertionService *)self queue_assertionResponder:v8 didFailToAcquireWithBLSError:errorCopy];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)assertionAcquired:(id)acquired
{
  v18 = *MEMORY[0x277D85DE8];
  acquiredCopy = acquired;
  OUTLINED_FUNCTION_12();
  v6 = OUTLINED_FUNCTION_7();
  v8 = [(BLSXPCAssertionService *)v6 _queue_assertionForIdentifier:v7];
  v9 = bls_assertions_log();
  if (OUTLINED_FUNCTION_10(v9))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21FE25000, v11, v12, "%p acquired assertion:%{public}@ with identifier:%{public}@", v13, v14, v15, v16, v17);
  }

  [v8 serviceDidAcquire];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)assertionWillCancel:(id)cancel
{
  v18 = *MEMORY[0x277D85DE8];
  cancelCopy = cancel;
  OUTLINED_FUNCTION_12();
  v6 = OUTLINED_FUNCTION_7();
  v8 = [(BLSXPCAssertionService *)v6 _queue_assertionForIdentifier:v7];
  v9 = bls_assertions_log();
  if (OUTLINED_FUNCTION_10(v9))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21FE25000, v11, v12, "%p will cancel assertion:%{public}@ with identifier:%{public}@", v13, v14, v15, v16, v17);
  }

  [v8 serviceWillCancel];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)assertionDidCancel:(id)cancel withError:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  cancelCopy = cancel;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_requestQueue);
  v8 = [(BLSXPCAssertionService *)self _queue_assertionForIdentifier:cancelCopy];
  v9 = bls_assertions_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11();
    _os_log_debug_impl(v10, v11, v12, v13, v14, 0x2Au);
  }

  [v8 serviceDidCancelWithError:errorCopy];
  [(BLSXPCAssertionService *)self _queue_removeAssertionForIdentifier:cancelCopy];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)assertionPaused:(id)paused
{
  v18 = *MEMORY[0x277D85DE8];
  pausedCopy = paused;
  OUTLINED_FUNCTION_12();
  v6 = OUTLINED_FUNCTION_7();
  v8 = [(BLSXPCAssertionService *)v6 _queue_assertionForIdentifier:v7];
  v9 = bls_assertions_log();
  if (OUTLINED_FUNCTION_10(v9))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21FE25000, v11, v12, "%p paused assertion:%{public}@ with identifier:%{public}@", v13, v14, v15, v16, v17);
  }

  [v8 serviceDidPause];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)assertionResumed:(id)resumed
{
  v18 = *MEMORY[0x277D85DE8];
  resumedCopy = resumed;
  OUTLINED_FUNCTION_12();
  v6 = OUTLINED_FUNCTION_7();
  v8 = [(BLSXPCAssertionService *)v6 _queue_assertionForIdentifier:v7];
  v9 = bls_assertions_log();
  if (OUTLINED_FUNCTION_10(v9))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21FE25000, v11, v12, "%p resumed assertion:%{public}@ with identifier:%{public}@", v13, v14, v15, v16, v17);
  }

  [v8 serviceDidResume];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)initWithEndpoint:(const char *)a1 .cold.1(const char *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_9(&dword_21FE25000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"[_bs_assert_object isKindOfClass:BSServiceConnectionEndpointClass]", v12, v13);
  }

  v11 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithEndpoint:(const char *)a1 .cold.2(const char *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_9(&dword_21FE25000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"_bs_assert_object != nil", v12, v13);
  }

  v11 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __43__BLSXPCAssertionService_acquireAssertion___block_invoke_cold_1(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *a2;
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_21FE25000, v4, OS_LOG_TYPE_ERROR, "%p already aquired:%{public}@, ignoring", v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __52__BLSXPCAssertionService_cancelAssertion_withError___block_invoke_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(&dword_21FE25000, v3, OS_LOG_TYPE_DEBUG, "%p tell remote to cancel assertion:%{public}@", v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __55__BLSXPCAssertionService_restartAssertionTimeoutTimer___block_invoke_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(&dword_21FE25000, v3, OS_LOG_TYPE_DEBUG, "%p tell remote to restart timeout timer for assertion:%{public}@", v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end