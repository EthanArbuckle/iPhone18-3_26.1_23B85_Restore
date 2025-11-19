@interface BKSHIDEventObserver
+ (BKSHIDEventObserver)sharedInstance;
- (BKSHIDEventObserver)init;
- (BOOL)hasReceivedLatestDeferringObservationsFromServer;
- (NSSet)deferringObservations;
- (id)_initWithConnectionFactory:(id)a3;
- (id)addDeferringObserver:(id)a3;
- (id)addObservingClient:(id)a3 forChainObserver:(id)a4;
- (void)_lock_disableObservation;
- (void)_lock_enableObservation;
- (void)_lock_flushInitialStateToServer;
- (void)_lock_resetChainObserverPredicates;
- (void)didUpdateDeferringChains:(id)a3;
- (void)didUpdateDeferringObservations:(id)a3;
@end

@implementation BKSHIDEventObserver

- (NSSet)deferringObservations
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  if ([(NSMapTable *)self->_lock_deferringAssertionsToObservers count])
  {
    v3 = [(NSSet *)self->_lock_deferringObservations copy];
  }

  else
  {
    v3 = [MEMORY[0x1E695DFD8] set];
  }

  v4 = v3;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (BOOL)hasReceivedLatestDeferringObservationsFromServer
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  lock_hasReceivedLatestDeferringObservationsFromServer = self->_lock_hasReceivedLatestDeferringObservationsFromServer;
  os_unfair_lock_unlock(&self->_lock);
  return lock_hasReceivedLatestDeferringObservationsFromServer;
}

+ (BKSHIDEventObserver)sharedInstance
{
  if (sharedInstance_onceToken_4511 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_4511, &__block_literal_global_4512);
  }

  v3 = sharedInstance___instance;

  return v3;
}

void __37__BKSHIDEventObserver_sharedInstance__block_invoke()
{
  v0 = [BKSHIDEventObserver alloc];
  v3 = +[BKSHIDServiceConnectionFactory sharedInstance];
  v1 = [(BKSHIDEventObserver *)v0 _initWithConnectionFactory:v3];
  v2 = sharedInstance___instance;
  sharedInstance___instance = v1;
}

- (void)_lock_enableObservation
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self->_lock_waitingOnServerHandshake)
  {
    v3 = [(BSServiceInitiatingConnection *)self->_connection remoteTarget];
    v6 = [v3 setObservesDeferringResolutions:MEMORY[0x1E695E118]];

    self->_lock_hasReceivedLatestDeferringObservationsFromServer = 1;
    if (v6)
    {
      v4 = v6;
    }

    else
    {
      v4 = [MEMORY[0x1E695DFD8] set];
    }

    lock_deferringObservations = self->_lock_deferringObservations;
    self->_lock_deferringObservations = v4;
  }
}

- (void)didUpdateDeferringChains:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [(NSMutableDictionary *)self->_lock_identityToChainMatches mutableCopy];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v38;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v38 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v37 + 1) + 8 * i);
        v13 = [v12 identity];
        [v5 setObject:v12 forKey:v13];

        v14 = [v12 identity];
        [v6 removeObjectForKey:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v9);
  }

  v32 = v7;

  v15 = [v5 copy];
  lock_identityToChainMatches = self->_lock_identityToChainMatches;
  self->_lock_identityToChainMatches = v15;

  v17 = [(NSMutableSet *)self->_lock_chainObserverContainers copy];
  os_unfair_lock_unlock(&self->_lock);
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v34;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v34 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v33 + 1) + 8 * j);
        v24 = [v23 requestedChainIdentity];
        v25 = [v6 objectForKey:v24];

        if (v25)
        {
          v26 = [v23 observingClient];
          v27 = [v23 observerInterface];
          [v26 observer:v27 deliveryChainDidUpdate:0];
        }

        v28 = [v5 objectForKey:v24];
        if (v28)
        {
          v29 = [v23 observingClient];
          v30 = [v23 observerInterface];
          [v29 observer:v30 deliveryChainDidUpdate:v28];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v20);
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)didUpdateDeferringObservations:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v4 = [MEMORY[0x1E695DFD8] set];
  }

  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  lock_deferringObservations = self->_lock_deferringObservations;
  if (BSEqualObjects())
  {
    v6 = 0;
  }

  else
  {
    v7 = [v4 copy];
    v8 = self->_lock_deferringObservations;
    self->_lock_deferringObservations = v7;

    v6 = [MEMORY[0x1E695DFA8] setWithCapacity:{-[NSMapTable count](self->_lock_deferringAssertionsToObservers, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = [(NSMapTable *)self->_lock_deferringAssertionsToObservers objectEnumerator];
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      do
      {
        v13 = 0;
        do
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [v6 addObject:*(*(&v24 + 1) + 8 * v13++)];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v11);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = v6;
  v15 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      v18 = 0;
      do
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v20 + 1) + 8 * v18++) deferringResolutionsChanged];
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v16);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_lock_disableObservation
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self->_lock_waitingOnServerHandshake)
  {
    v3 = [(BSServiceInitiatingConnection *)self->_connection remoteTarget];
    v4 = [v3 setObservesDeferringResolutions:MEMORY[0x1E695E110]];

    lock_deferringObservations = self->_lock_deferringObservations;
    self->_lock_deferringObservations = 0;
  }
}

- (void)_lock_resetChainObserverPredicates
{
  v20 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  [(NSMutableSet *)self->_lock_allChainObserverPredicates removeAllObjects];
  if (!self->_lock_allChainObserverPredicates)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    lock_allChainObserverPredicates = self->_lock_allChainObserverPredicates;
    self->_lock_allChainObserverPredicates = v3;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_lock_chainObserverContainers;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = self->_lock_allChainObserverPredicates;
        v11 = [*(*(&v15 + 1) + 8 * v9) requestedChainIdentity];
        [(NSMutableSet *)v10 addObject:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  if (!self->_lock_waitingOnServerHandshake)
  {
    v12 = [(BSServiceInitiatingConnection *)self->_connection remoteTarget];
    v13 = [(NSMutableSet *)self->_lock_allChainObserverPredicates allObjects];
    [v12 setObservesDeferringChainIdentities:v13];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_lock_flushInitialStateToServer
{
  os_unfair_lock_assert_owner(&self->_lock);
  if ([(NSMapTable *)self->_lock_deferringAssertionsToObservers count])
  {
    [(BKSHIDEventObserver *)self _lock_enableObservation];
  }

  if ([(NSMutableSet *)self->_lock_allChainObserverPredicates count])
  {
    v4 = [(BSServiceInitiatingConnection *)self->_connection remoteTarget];
    v3 = [(NSMutableSet *)self->_lock_allChainObserverPredicates allObjects];
    [v4 setObservesDeferringChainIdentities:v3];
  }
}

- (id)addObservingClient:(id)a3 forChainObserver:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v20 = MEMORY[0x1E696AEC0];
    objc_opt_class();
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v23 = [v20 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"observer", v22];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v24 = NSStringFromSelector(a2);
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      *buf = 138544642;
      v39 = v24;
      v40 = 2114;
      v41 = v26;
      v42 = 2048;
      v43 = self;
      v44 = 2114;
      v45 = @"BKSHIDEventObserver.m";
      v46 = 1024;
      v47 = 237;
      v48 = 2114;
      v49 = v23;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v23 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186376270);
  }

  v9 = v8;
  objc_opt_class();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v27 = MEMORY[0x1E696AEC0];
    v28 = [v9 classForCoder];
    if (!v28)
    {
      v28 = objc_opt_class();
    }

    v29 = NSStringFromClass(v28);
    objc_opt_class();
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    v32 = [v27 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"observer", v29, v31];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v33 = NSStringFromSelector(a2);
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      *buf = 138544642;
      v39 = v33;
      v40 = 2114;
      v41 = v35;
      v42 = 2048;
      v43 = self;
      v44 = 2114;
      v45 = @"BKSHIDEventObserver.m";
      v46 = 1024;
      v47 = 237;
      v48 = 2114;
      v49 = v32;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v32 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863763B0);
  }

  os_unfair_lock_lock(&self->_lock);
  v10 = objc_alloc_init(_BKChainObserverContainer);
  [(_BKChainObserverContainer *)v10 setObservingClient:v7];
  v11 = [v9 chainIdentity];
  [(_BKChainObserverContainer *)v10 setRequestedChainIdentity:v11];

  [(_BKChainObserverContainer *)v10 setObserverInterface:v9];
  lock_chainObserverContainers = self->_lock_chainObserverContainers;
  if (!lock_chainObserverContainers)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v14 = self->_lock_chainObserverContainers;
    self->_lock_chainObserverContainers = v13;

    lock_chainObserverContainers = self->_lock_chainObserverContainers;
  }

  [(NSMutableSet *)lock_chainObserverContainers addObject:v10];
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p>", v9, v9];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __59__BKSHIDEventObserver_addObservingClient_forChainObserver___block_invoke;
  v36[3] = &unk_1E6F47C78;
  v36[4] = self;
  v37 = v10;
  v16 = v10;
  v17 = [BKSSimplerAssertion assertionWithDescription:v15 invalidationBlock:v36];

  [(BKSHIDEventObserver *)self _lock_resetChainObserverPredicates];
  os_unfair_lock_unlock(&self->_lock);

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

void __59__BKSHIDEventObserver_addObservingClient_forChainObserver___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 12));
  [*(*(a1 + 32) + 40) removeObject:*(a1 + 40)];
  [*(a1 + 32) _lock_resetChainObserverPredicates];
  v2 = (*(a1 + 32) + 12);

  os_unfair_lock_unlock(v2);
}

- (id)addDeferringObserver:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"observer"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(a2);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138544642;
      v18 = v13;
      v19 = 2114;
      v20 = v15;
      v21 = 2048;
      v22 = self;
      v23 = 2114;
      v24 = @"BKSHIDEventObserver.m";
      v25 = 1024;
      v26 = 196;
      v27 = 2114;
      v28 = v12;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186376664);
  }

  v6 = v5;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v7 = objc_alloc(MEMORY[0x1E698E778]);
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p>", objc_opt_class(), v6];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __44__BKSHIDEventObserver_addDeferringObserver___block_invoke;
  v16[3] = &unk_1E6F46B40;
  v16[4] = self;
  v9 = [v7 initWithIdentifier:@"BKSHIDEventObserver-deferringObserver" forReason:v8 invalidationBlock:v16];

  if (![(NSMapTable *)self->_lock_deferringAssertionsToObservers count])
  {
    [(BKSHIDEventObserver *)self _lock_enableObservation];
  }

  [(NSMapTable *)self->_lock_deferringAssertionsToObservers setObject:v6 forKey:v9];
  os_unfair_lock_unlock(&self->_lock);

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

void __44__BKSHIDEventObserver_addDeferringObserver___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  os_unfair_lock_assert_not_owner((*(a1 + 32) + 12));
  os_unfair_lock_lock((*(a1 + 32) + 12));
  v3 = [*(*(a1 + 32) + 24) objectForKey:v7];

  if (v3)
  {
    [*(*(a1 + 32) + 24) removeObjectForKey:v7];
    if (![*(*(a1 + 32) + 24) count])
    {
      [*(a1 + 32) _lock_disableObservation];
      v4 = [MEMORY[0x1E695DFD8] set];
      v5 = *(a1 + 32);
      v6 = *(v5 + 32);
      *(v5 + 32) = v4;
    }
  }

  os_unfair_lock_unlock((*(a1 + 32) + 12));
}

- (id)_initWithConnectionFactory:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"BKSHIDEventObserver.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"connectionFactory"}];
  }

  v26.receiver = self;
  v26.super_class = BKSHIDEventObserver;
  v6 = [(BKSHIDEventObserver *)&v26 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    v8 = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    lock_deferringAssertionsToObservers = v7->_lock_deferringAssertionsToObservers;
    v7->_lock_deferringAssertionsToObservers = v8;

    v10 = [MEMORY[0x1E695DFD8] set];
    lock_deferringObservations = v7->_lock_deferringObservations;
    v7->_lock_deferringObservations = v10;

    objc_initWeak(&location, v7);
    v7->_isNonLaunchingServer = 0;
    v12 = [v5 clientConnectionForServiceWithName:@"BKHIDEventDeliveryObserver" isNonLaunching:&v7->_isNonLaunchingServer];
    connection = v7->_connection;
    v7->_connection = v12;

    v14 = v7->_connection;
    if (!v14)
    {
      v15 = BKLogEventDelivery();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_186345000, v15, OS_LOG_TYPE_ERROR, "Unable to get a connection to the hid event observer server! No observation will be allowed!!!", buf, 2u);
      }

      v14 = v7->_connection;
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __50__BKSHIDEventObserver__initWithConnectionFactory___block_invoke;
    v21[3] = &unk_1E6F46B18;
    v16 = v7;
    v22 = v16;
    objc_copyWeak(&v23, &location);
    [(BSServiceInitiatingConnection *)v14 configure:v21];
    v17 = v7->_connection;
    if (v17)
    {
      isNonLaunchingServer = v7->_isNonLaunchingServer;
    }

    else
    {
      isNonLaunchingServer = 1;
    }

    v16->_lock_waitingOnServerHandshake = isNonLaunchingServer;
    [(BSServiceInitiatingConnection *)v17 activate];
    objc_destroyWeak(&v23);

    objc_destroyWeak(&location);
  }

  return v7;
}

void __50__BKSHIDEventObserver__initWithConnectionFactory___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1EF570ED8];
  v5 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1EF5793B0];
  v6 = [MEMORY[0x1E698F470] interfaceWithIdentifier:@"BKHIDEventDeliveryObserver"];
  [v6 setServer:v5];
  [v6 setClient:v4];
  [v3 setInterface:v6];
  [v3 setInterfaceTarget:*(a1 + 32)];
  v7 = [MEMORY[0x1E698F4D0] queueWithName:@"com.apple.backboard.hid-events.delivery.observer-callout"];
  [v3 setQueue:v7];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__BKSHIDEventObserver__initWithConnectionFactory___block_invoke_2;
  v13[3] = &unk_1E6F46AF0;
  objc_copyWeak(&v14, (a1 + 40));
  [v3 setActivationHandler:v13];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __50__BKSHIDEventObserver__initWithConnectionFactory___block_invoke_106;
  v11 = &unk_1E6F46AF0;
  objc_copyWeak(&v12, (a1 + 40));
  [v3 setInterruptionHandler:&v8];
  [v3 setInvalidationHandler:{&__block_literal_global_109, v8, v9, v10, v11}];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
}

void __50__BKSHIDEventObserver__initWithConnectionFactory___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_assert_not_owner(WeakRetained + 3);
    os_unfair_lock_lock(v2 + 3);
    v3 = BKLogEventDelivery();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_186345000, v3, OS_LOG_TYPE_DEFAULT, "BKSHIDEventObserver - connection activation", v4, 2u);
    }

    if (LOBYTE(v2[4]._os_unfair_lock_opaque) == 1)
    {
      LOBYTE(v2[4]._os_unfair_lock_opaque) = 0;
      [(os_unfair_lock *)v2 _lock_flushInitialStateToServer];
    }

    os_unfair_lock_unlock(v2 + 3);
  }
}

void __50__BKSHIDEventObserver__initWithConnectionFactory___block_invoke_106(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_assert_not_owner(WeakRetained + 3);
    os_unfair_lock_lock(v5 + 3);
    v6 = BKLogEventDelivery();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_186345000, v6, OS_LOG_TYPE_DEFAULT, "BKSHIDEventObserver - connection interruption", v7, 2u);
    }

    LOBYTE(v5[4]._os_unfair_lock_opaque) = v5[2]._os_unfair_lock_opaque;
    [v3 activate];
    if ((v5[4]._os_unfair_lock_opaque & 1) == 0)
    {
      [(os_unfair_lock *)v5 _lock_flushInitialStateToServer];
    }

    os_unfair_lock_unlock(v5 + 3);
  }
}

void __50__BKSHIDEventObserver__initWithConnectionFactory___block_invoke_107(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = BKLogEventDelivery();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_186345000, v3, OS_LOG_TYPE_ERROR, "BKSHIDEventObserver invalidated - backboardd must have unloaded, exiting…", v4, 2u);
  }

  exit(0);
}

- (BKSHIDEventObserver)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"init is not allowed on BKSHIDEventObserver"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = self;
    v15 = 2114;
    v16 = @"BKSHIDEventObserver.m";
    v17 = 1024;
    v18 = 85;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

@end