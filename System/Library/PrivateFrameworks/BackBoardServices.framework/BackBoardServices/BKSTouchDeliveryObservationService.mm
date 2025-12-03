@interface BKSTouchDeliveryObservationService
+ (id)sharedInstance;
- (BKSTouchDeliveryObservationService)init;
- (BOOL)_queue_addObserver:(id)observer forTouchIdentifier:(unsigned int)identifier;
- (BOOL)_queue_removeObserver:(id)observer forTouchIdentifier:(unsigned int)identifier;
- (id)_queue_observersForTouchIdentifier:(unsigned int)identifier;
- (void)_connectToTouchDeliveryService;
- (void)_processTouchEventDeliveryUpdate:(id)update;
- (void)addObserver:(id)observer;
- (void)addObserver:(id)observer forTouchIdentifier:(unsigned int)identifier;
- (void)dealloc;
- (void)observeTouchEventDeliveryDidOccur:(id)occur response:(id)response;
- (void)removeObserver:(id)observer;
@end

@implementation BKSTouchDeliveryObservationService

- (void)_processTouchEventDeliveryUpdate:(id)update
{
  v25 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  v6 = BKLogTouchDeliveryObserver();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v24 = updateCopy;
    _os_log_debug_impl(&dword_186345000, v6, OS_LOG_TYPE_DEBUG, "update: received touch event update %{public}@", buf, 0xCu);
  }

  touchIdentifier = [updateCopy touchIdentifier];
  v8 = [updateCopy pid];
  isDetached = [updateCopy isDetached];
  contextID = [updateCopy contextID];
  type = [updateCopy type];
  if (type)
  {
    calloutQueue = self->_calloutQueue;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __71__BKSTouchDeliveryObservationService__processTouchEventDeliveryUpdate___block_invoke;
    v15[3] = &unk_1E6F47390;
    v15[4] = self;
    v17 = type;
    v18 = a2;
    v22 = isDetached;
    v19 = touchIdentifier;
    v20 = contextID;
    v21 = v8;
    v16 = updateCopy;
    dispatch_async(calloutQueue, v15);
  }

  else
  {
    v13 = BKLogTouchDeliveryObserver();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v24 = updateCopy;
      _os_log_error_impl(&dword_186345000, v13, OS_LOG_TYPE_ERROR, "update: invalid update type %{public}@", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __71__BKSTouchDeliveryObservationService__processTouchEventDeliveryUpdate___block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__9945;
  v50 = __Block_byref_object_dispose__9946;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__9945;
  v44 = __Block_byref_object_dispose__9946;
  v45 = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__BKSTouchDeliveryObservationService__processTouchEventDeliveryUpdate___block_invoke_84;
  block[3] = &unk_1E6F47368;
  v39 = *(a1 + 64);
  block[4] = v2;
  block[5] = &v46;
  block[6] = &v40;
  dispatch_sync(v3, block);
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v4 = [v47[5] objectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v34 objects:v55 count:16];
  if (v5)
  {
    v6 = *v35;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v35 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(a1 + 48);
        if (v8)
        {
          v9 = *(*(&v34 + 1) + 8 * i);
          if (v8 == 1)
          {
            v12 = *(*(&v34 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              v13 = BKLogTouchDeliveryObserver();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
              {
                v15 = *(a1 + 64);
                *buf = 67109378;
                *v54 = v15;
                *&v54[4] = 2114;
                *&v54[6] = v9;
                _os_log_debug_impl(&dword_186345000, v13, OS_LOG_TYPE_DEBUG, "update: up for %X to pid:%{public}@", buf, 0x12u);
              }

              [v9 touchUpOccuredForIdentifier:*(a1 + 64) detached:*(a1 + 76) context:*(a1 + 68) pid:*(a1 + 72)];
            }
          }

          else if (v8 == 2)
          {
            v10 = *(*(&v34 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              v11 = BKLogTouchDeliveryObserver();
              if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
              {
                v16 = *(a1 + 64);
                *buf = 67109378;
                *v54 = v16;
                *&v54[4] = 2114;
                *&v54[6] = v9;
                _os_log_debug_impl(&dword_186345000, v11, OS_LOG_TYPE_DEBUG, "update: detach for %X to %{public}@", buf, 0x12u);
              }

              [v9 touchDetachedForIdentifier:*(a1 + 64) context:*(a1 + 68) pid:*(a1 + 72)];
            }
          }
        }

        else
        {
          v14 = [MEMORY[0x1E696AAA8] currentHandler];
          [v14 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"BKSTouchDeliveryObservationService.m" lineNumber:293 description:{@"Invalid parameter not satisfying: %@", @"NO"}];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v34 objects:v55 count:16];
    }

    while (v5);
  }

  if ([v41[5] count])
  {
    v29 = *(a1 + 40);
    if (*(a1 + 64))
    {
      v17 = [*(a1 + 40) copy];

      [v17 setTouchIdentifier:0];
      v29 = v17;
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v18 = [v41[5] objectEnumerator];
    v19 = [v18 countByEnumeratingWithState:&v30 objects:v52 count:16];
    if (v19)
    {
      v20 = *v31;
      do
      {
        v21 = 0;
        do
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v30 + 1) + 8 * v21);
          if (([v47[5] containsObject:v22] & 1) == 0)
          {
            v23 = *(a1 + 48);
            if (v23)
            {
              if (v23 == 1)
              {
                if (objc_opt_respondsToSelector())
                {
                  v25 = BKLogTouchDeliveryObserver();
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138543362;
                    *v54 = v22;
                    _os_log_debug_impl(&dword_186345000, v25, OS_LOG_TYPE_DEBUG, "update: up to %{public}@", buf, 0xCu);
                  }

                  [v22 touchUpOccuredForIdentifier:0 detached:*(a1 + 76) context:*(a1 + 68) pid:*(a1 + 72)];
                }
              }

              else if (v23 == 2 && (objc_opt_respondsToSelector() & 1) != 0)
              {
                v24 = BKLogTouchDeliveryObserver();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138543362;
                  *v54 = v22;
                  _os_log_debug_impl(&dword_186345000, v24, OS_LOG_TYPE_DEBUG, "update: detach to %{public}@", buf, 0xCu);
                }

                [v22 touchDetachedForIdentifier:0 context:*(a1 + 68) pid:*(a1 + 72)];
              }
            }

            else
            {
              v26 = [MEMORY[0x1E696AAA8] currentHandler];
              [v26 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"BKSTouchDeliveryObservationService.m" lineNumber:324 description:{@"Invalid parameter not satisfying: %@", @"NO"}];
            }
          }

          ++v21;
        }

        while (v19 != v21);
        v27 = [v18 countByEnumeratingWithState:&v30 objects:v52 count:16];
        v19 = v27;
      }

      while (v27);
    }
  }

  _Block_object_dispose(&v40, 8);

  _Block_object_dispose(&v46, 8);
  v28 = *MEMORY[0x1E69E9840];
}

uint64_t __71__BKSTouchDeliveryObservationService__processTouchEventDeliveryUpdate___block_invoke_84(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v2 = [*(a1 + 32) _queue_observersForTouchIdentifier:?];
    v3 = [v2 copy];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    [*(a1 + 32) _queue_removeObserversForTouchIdentifier:*(a1 + 56)];
  }

  v6 = [*(*(a1 + 32) + 56) copy];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return MEMORY[0x1EEE66BB8]();
}

- (void)observeTouchEventDeliveryDidOccur:(id)occur response:(id)response
{
  v18 = *MEMORY[0x1E69E9840];
  occurCopy = occur;
  responseCopy = response;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [occurCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(occurCopy);
        }

        [(BKSTouchDeliveryObservationService *)self _processTouchEventDeliveryUpdate:*(*(&v13 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [occurCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  responseCopy[2](responseCopy, 0);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_connectToTouchDeliveryService
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = +[BKSHIDServiceConnectionFactory sharedInstance];
  v5 = [v4 clientConnectionForServiceWithName:@"BKTouchDeliveryObservation"];

  if (v5)
  {
    objc_storeStrong(&self->_connection, v5);
    connection = self->_connection;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __68__BKSTouchDeliveryObservationService__connectToTouchDeliveryService__block_invoke;
    v14[3] = &unk_1E6F47978;
    v14[4] = self;
    [(BSServiceInitiatingConnection *)connection configure:v14];
    v7 = BKLogTouchDeliveryObserver();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_186345000, v7, OS_LOG_TYPE_DEBUG, "activating connection to server", buf, 2u);
    }

    [v5 activate];
    v8 = BKLogTouchDeliveryObserver();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      remoteTarget = [v5 remoteTarget];
      *buf = 138543362;
      v16 = remoteTarget;
      _os_log_debug_impl(&dword_186345000, v8, OS_LOG_TYPE_DEBUG, "server remote target %{public}@", buf, 0xCu);
    }

    remoteTarget2 = [v5 remoteTarget];

    if (!remoteTarget2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"BKSTouchDeliveryObservationService.m" lineNumber:246 description:@"we must have a remote target"];
    }
  }

  else
  {
    v11 = BKLogTouchDeliveryObserver();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_186345000, v11, OS_LOG_TYPE_ERROR, "cannot get connection for service", buf, 2u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __68__BKSTouchDeliveryObservationService__connectToTouchDeliveryService__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BKLogTouchDeliveryObserver();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_186345000, v4, OS_LOG_TYPE_DEBUG, "configured client service", buf, 2u);
  }

  v5 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1EF5744A0];
  v6 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1EF5795F0];
  v7 = [MEMORY[0x1E698F470] interfaceWithIdentifier:@"BKTouchDeliveryObservation"];
  [v7 setServer:v6];
  [v7 setClient:v5];
  [v3 setInterface:v7];
  [v3 setInterfaceTarget:*(a1 + 32)];
  [v3 setQueue:*(*(a1 + 32) + 24)];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__BKSTouchDeliveryObservationService__connectToTouchDeliveryService__block_invoke_71;
  v8[3] = &unk_1E6F474B0;
  v8[4] = *(a1 + 32);
  [v3 setInterruptionHandler:v8];
  [v3 setInvalidationHandler:&__block_literal_global_75_9973];
}

void __68__BKSTouchDeliveryObservationService__connectToTouchDeliveryService__block_invoke_71(uint64_t a1)
{
  v2 = BKLogTouchDeliveryObserver();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_186345000, v2, OS_LOG_TYPE_ERROR, "service interruption -- attempting to reconnect", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__BKSTouchDeliveryObservationService__connectToTouchDeliveryService__block_invoke_72;
  block[3] = &unk_1E6F477B8;
  block[4] = v3;
  dispatch_async(v4, block);
}

void __68__BKSTouchDeliveryObservationService__connectToTouchDeliveryService__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = BKLogTouchDeliveryObserver();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_186345000, v3, OS_LOG_TYPE_ERROR, "backboardd must be going down, exiting", v4, 2u);
  }

  exit(0);
}

void __68__BKSTouchDeliveryObservationService__connectToTouchDeliveryService__block_invoke_72(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__BKSTouchDeliveryObservationService__connectToTouchDeliveryService__block_invoke_2;
  v5[3] = &unk_1E6F47340;
  v5[4] = v2;
  [v3 enumerateKeysWithBlock:v5];
  if ([*(*(a1 + 32) + 56) count])
  {
    v4 = [*(*(a1 + 32) + 32) remoteTarget];
    [v4 setObservesAllTouches:MEMORY[0x1E695E118]];
  }
}

void __68__BKSTouchDeliveryObservationService__connectToTouchDeliveryService__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(*(a1 + 32) + 32) remoteTarget];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  [v4 setObservesTouch:MEMORY[0x1E695E118] withIdentifier:v3];
}

- (BOOL)_queue_removeObserver:(id)observer forTouchIdentifier:(unsigned int)identifier
{
  observerCopy = observer;
  dispatch_assert_queue_V2(self->_touchClientQueue);
  identifierCopy = identifier;
  v8 = [(BSMutableIntegerMap *)self->_touchIdentifierToObserverLists objectForKey:identifier];
  v9 = v8;
  if (v8 && [v8 containsObject:observerCopy])
  {
    [v9 removeObject:observerCopy];
    v10 = [v9 count];
    v11 = v10 == 0;
    if (!v10)
    {
      [(BSMutableIntegerMap *)self->_touchIdentifierToObserverLists removeObjectForKey:identifierCopy];
    }

    v12 = [(NSMapTable *)self->_observersToTouchIdentifiers objectForKey:observerCopy];
    v13 = v12;
    if (v12)
    {
      [v12 removeValue:identifierCopy];
      if (![v13 count])
      {
        [(NSMapTable *)self->_observersToTouchIdentifiers removeObjectForKey:observerCopy];
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_queue_addObserver:(id)observer forTouchIdentifier:(unsigned int)identifier
{
  v16 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  dispatch_assert_queue_V2(self->_touchClientQueue);
  identifierCopy = identifier;
  v8 = [(BSMutableIntegerMap *)self->_touchIdentifierToObserverLists objectForKey:identifier];
  if (!v8)
  {
    v8 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
    [(BSMutableIntegerMap *)self->_touchIdentifierToObserverLists setObject:v8 forKey:identifierCopy];
  }

  if (([v8 containsObject:observerCopy] & 1) == 0)
  {
    [v8 addObject:observerCopy];
    v9 = [(NSMapTable *)self->_observersToTouchIdentifiers objectForKey:observerCopy];
    if (!v9)
    {
      v9 = objc_alloc_init(MEMORY[0x1E698E6E8]);
      [(NSMapTable *)self->_observersToTouchIdentifiers setObject:v9 forKey:observerCopy];
    }

    [v9 addValue:identifierCopy];
  }

  v10 = BKLogTouchDeliveryObserver();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138543362;
    v15 = v8;
    _os_log_debug_impl(&dword_186345000, v10, OS_LOG_TYPE_DEBUG, "addObserver:forTouchIdentifier: table:%{public}@", &v14, 0xCu);
  }

  v11 = [v8 count] == 1;
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)_queue_observersForTouchIdentifier:(unsigned int)identifier
{
  dispatch_assert_queue_V2(self->_touchClientQueue);
  touchIdentifierToObserverLists = self->_touchIdentifierToObserverLists;

  return [(BSMutableIntegerMap *)touchIdentifierToObserverLists objectForKey:identifier];
}

- (void)removeObserver:(id)observer
{
  v15 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  v5 = BKLogTouchDeliveryObserver();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v14 = objc_opt_class();
    v9 = v14;
    _os_log_debug_impl(&dword_186345000, v5, OS_LOG_TYPE_DEBUG, "add observer:%{public}@", buf, 0xCu);
  }

  touchClientQueue = self->_touchClientQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__BKSTouchDeliveryObservationService_removeObserver___block_invoke;
  v10[3] = &unk_1E6F47C78;
  v11 = observerCopy;
  selfCopy = self;
  v7 = observerCopy;
  dispatch_sync(touchClientQueue, v10);

  v8 = *MEMORY[0x1E69E9840];
}

void __53__BKSTouchDeliveryObservationService_removeObserver___block_invoke(int8x16_t *a1)
{
  if (a1[2].i64[0])
  {
    [*(a1[2].i64[1] + 56) removeObject:?];
    if (![*(a1[2].i64[1] + 56) count])
    {
      v2 = [*(a1[2].i64[1] + 32) remoteTarget];
      [v2 setObservesAllTouches:MEMORY[0x1E695E110]];
    }

    v3 = [*(a1[2].i64[1] + 48) objectForKey:a1[2].i64[0]];
    v4 = [v3 copy];

    if (v4)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __53__BKSTouchDeliveryObservationService_removeObserver___block_invoke_2;
      v7[3] = &unk_1E6F47318;
      v6 = a1[2];
      v5 = v6.i64[0];
      v8 = vextq_s8(v6, v6, 8uLL);
      [v4 enumerateWithBlock:v7];
    }
  }
}

void __53__BKSTouchDeliveryObservationService_removeObserver___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) _queue_removeObserver:*(a1 + 40) forTouchIdentifier:a2])
  {
    v5 = [*(*(a1 + 32) + 32) remoteTarget];
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
    [v5 setObservesTouch:MEMORY[0x1E695E110] withIdentifier:v4];
  }
}

- (void)addObserver:(id)observer forTouchIdentifier:(unsigned int)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  v7 = BKLogTouchDeliveryObserver();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    v17 = objc_opt_class();
    v18 = 1024;
    identifierCopy = identifier;
    v11 = v17;
    _os_log_debug_impl(&dword_186345000, v7, OS_LOG_TYPE_DEBUG, "add observer:%{public}@ for touch:%X", buf, 0x12u);
  }

  touchClientQueue = self->_touchClientQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__BKSTouchDeliveryObservationService_addObserver_forTouchIdentifier___block_invoke;
  block[3] = &unk_1E6F472F0;
  v13 = observerCopy;
  selfCopy = self;
  identifierCopy2 = identifier;
  v9 = observerCopy;
  dispatch_sync(touchClientQueue, block);

  v10 = *MEMORY[0x1E69E9840];
}

void __69__BKSTouchDeliveryObservationService_addObserver_forTouchIdentifier___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && [*(a1 + 40) _queue_addObserver:v1 forTouchIdentifier:*(a1 + 48)])
  {
    v4 = [*(*(a1 + 40) + 32) remoteTarget];
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 48)];
    [v4 setObservesTouch:MEMORY[0x1E695E118] withIdentifier:v3];
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v5 = BKLogTouchDeliveryObserver();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_186345000, v5, OS_LOG_TYPE_DEBUG, "add observer", buf, 2u);
  }

  touchClientQueue = self->_touchClientQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__BKSTouchDeliveryObservationService_addObserver___block_invoke;
  v8[3] = &unk_1E6F47C78;
  v8[4] = self;
  v9 = observerCopy;
  v7 = observerCopy;
  dispatch_sync(touchClientQueue, v8);
}

void __50__BKSTouchDeliveryObservationService_addObserver___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 56) addObject:*(a1 + 40)];
  if ([*(*(a1 + 32) + 56) count] == 1)
  {
    v2 = [*(*(a1 + 32) + 32) remoteTarget];
    [v2 setObservesAllTouches:MEMORY[0x1E695E118]];
  }
}

- (void)dealloc
{
  [(BSServiceInitiatingConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = BKSTouchDeliveryObservationService;
  [(BKSTouchDeliveryObservationService *)&v3 dealloc];
}

- (BKSTouchDeliveryObservationService)init
{
  v16.receiver = self;
  v16.super_class = BKSTouchDeliveryObservationService;
  v2 = [(BKSTouchDeliveryObservationService *)&v16 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E698E6E0]);
    touchIdentifierToObserverLists = v2->_touchIdentifierToObserverLists;
    v2->_touchIdentifierToObserverLists = v3;

    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    observersToTouchIdentifiers = v2->_observersToTouchIdentifiers;
    v2->_observersToTouchIdentifiers = weakToStrongObjectsMapTable;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    generalObservers = v2->_generalObservers;
    v2->_generalObservers = weakObjectsHashTable;

    Serial = BSDispatchQueueCreateSerial();
    calloutQueue = v2->_calloutQueue;
    v2->_calloutQueue = Serial;

    v11 = [MEMORY[0x1E698F4D0] queueWithName:@"com.apple.backboard.hid.touchdelivery-client"];
    bsServiceDispatchQueue = v2->_bsServiceDispatchQueue;
    v2->_bsServiceDispatchQueue = v11;

    queue = [(BSServiceDispatchQueue *)v2->_bsServiceDispatchQueue queue];
    touchClientQueue = v2->_touchClientQueue;
    v2->_touchClientQueue = queue;

    [(BKSTouchDeliveryObservationService *)v2 _connectToTouchDeliveryService];
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_10006 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_10006, &__block_literal_global_10007);
  }

  v3 = sharedInstance___shared;

  return v3;
}

uint64_t __52__BKSTouchDeliveryObservationService_sharedInstance__block_invoke()
{
  sharedInstance___shared = objc_alloc_init(BKSTouchDeliveryObservationService);

  return MEMORY[0x1EEE66BB8]();
}

@end