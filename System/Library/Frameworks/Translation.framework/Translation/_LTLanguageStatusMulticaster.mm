@interface _LTLanguageStatusMulticaster
+ (id)shared;
- (BOOL)_connectObserverIfNeeded:(id)needed;
- (_LTLanguageStatusMulticaster)init;
- (id)_currentObservers;
- (void)_closeConnectionForObserver:(id)observer;
- (void)_didEnterBackground:(id)background;
- (void)_didEnterForeground:(id)foreground;
- (void)_multicastObservations:(id)observations taskHint:(int64_t)hint progress:(BOOL)progress;
- (void)_reconnectIfStreamingWithConnectionIdentifier:(id)identifier taskHint:(int64_t)hint useDedicatedMachPort:(BOOL)port;
- (void)_removeAllObservers;
- (void)_removeObserver:(id)observer forceCloseConnection:(BOOL)connection;
- (void)_replayLastObservationsOnHeartbeat:(double)heartbeat;
- (void)addObserver:(id)observer;
- (void)dealloc;
@end

@implementation _LTLanguageStatusMulticaster

+ (id)shared
{
  if (shared_onceToken != -1)
  {
    +[_LTLanguageStatusMulticaster shared];
  }

  v3 = shared_shared;

  return v3;
}

- (_LTLanguageStatusMulticaster)init
{
  v15.receiver = self;
  v15.super_class = _LTLanguageStatusMulticaster;
  v2 = [(_LTLanguageStatusMulticaster *)&v15 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.translation.LanguageStatusMulticast", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    statusObservers = v2->_statusObservers;
    v2->_statusObservers = strongToWeakObjectsMapTable;

    v7 = objc_opt_new();
    lastStatusObservations = v2->_lastStatusObservations;
    v2->_lastStatusObservations = v7;

    v9 = objc_opt_new();
    connectionIdentifiers = v2->_connectionIdentifiers;
    v2->_connectionIdentifiers = v9;

    [(_LTLanguageStatusMulticaster *)v2 _replayLastObservationsOnHeartbeat:15.0];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__didEnterForeground_ name:@"UIApplicationWillEnterForegroundNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel__didEnterBackground_ name:@"UIApplicationDidEnterBackgroundNotification" object:0];

    v13 = v2;
  }

  return v2;
}

- (void)dealloc
{
  [(_LTLanguageStatusMulticaster *)self _removeAllObservers];
  [(NSMapTable *)self->_statusObservers removeAllObjects];
  statusObservers = self->_statusObservers;
  self->_statusObservers = 0;

  lastStatusObservations = self->_lastStatusObservations;
  self->_lastStatusObservations = 0;

  connectionIdentifiers = self->_connectionIdentifiers;
  self->_connectionIdentifiers = 0;

  v6.receiver = self;
  v6.super_class = _LTLanguageStatusMulticaster;
  [(_LTLanguageStatusMulticaster *)&v6 dealloc];
}

- (void)_removeAllObservers
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51___LTLanguageStatusMulticaster__removeAllObservers__block_invoke;
  v4[3] = &unk_278B6CD30;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44___LTLanguageStatusMulticaster_addObserver___block_invoke;
  block[3] = &unk_278B6CD08;
  objc_copyWeak(&v9, &location);
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_removeObserver:(id)observer forceCloseConnection:(BOOL)connection
{
  observerCopy = observer;
  identifier = [observerCopy identifier];
  taskHint = [observerCopy taskHint];
  useDedicatedMachPort = [observerCopy useDedicatedMachPort];

  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69___LTLanguageStatusMulticaster__removeObserver_forceCloseConnection___block_invoke;
  block[3] = &unk_278B6D100;
  objc_copyWeak(v14, &location);
  connectionCopy = connection;
  v13 = identifier;
  v14[1] = taskHint;
  v16 = useDedicatedMachPort;
  v11 = identifier;
  dispatch_async(queue, block);

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
}

- (BOOL)_connectObserverIfNeeded:(id)needed
{
  v18 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  dispatch_assert_queue_V2(self->_queue);
  if (neededCopy)
  {
    v5 = _keyForObserver(neededCopy);
    v6 = [(NSMutableDictionary *)self->_connectionIdentifiers objectForKeyedSubscript:v5];

    v7 = v6 == 0;
    if (!v6)
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      v9 = _LTOSLogAssetObservation();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = v9;
        identifier = [neededCopy identifier];
        v14 = 138543618;
        v15 = identifier;
        v16 = 2114;
        v17 = uUID;
        _os_log_impl(&dword_23AAF5000, v10, OS_LOG_TYPE_INFO, "Starting/resuming connection for identifier %{public}@; connectionID: %{public}@", &v14, 0x16u);
      }

      [(NSMutableDictionary *)self->_connectionIdentifiers setObject:uUID forKeyedSubscript:v5];
      -[_LTLanguageStatusMulticaster _startWithConnectionIdentifier:taskHint:useDedicatedMachPort:](self, "_startWithConnectionIdentifier:taskHint:useDedicatedMachPort:", uUID, [neededCopy taskHint], objc_msgSend(neededCopy, "useDedicatedMachPort"));
    }
  }

  else
  {
    v7 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)_closeConnectionForObserver:(id)observer
{
  if (observer)
  {
    observerCopy = observer;
    identifier = [observerCopy identifier];
    taskHint = [observerCopy taskHint];
    useDedicatedMachPort = [observerCopy useDedicatedMachPort];

    [(_LTLanguageStatusMulticaster *)self _closeConnectionForced:1 forIdentifier:identifier taskHint:taskHint useDedicatedMachPort:useDedicatedMachPort];
  }
}

- (id)_currentObservers
{
  v17 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  array = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  objectEnumerator = [(NSMapTable *)self->_statusObservers objectEnumerator];
  v5 = [objectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        [array addObject:*(*(&v12 + 1) + 8 * i)];
      }

      v6 = [objectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v9 = [array copy];
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)_didEnterForeground:(id)foreground
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52___LTLanguageStatusMulticaster__didEnterForeground___block_invoke;
  v5[3] = &unk_278B6CD30;
  objc_copyWeak(&v6, &location);
  dispatch_async(queue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)_didEnterBackground:(id)background
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52___LTLanguageStatusMulticaster__didEnterBackground___block_invoke;
  v5[3] = &unk_278B6CD30;
  objc_copyWeak(&v6, &location);
  dispatch_async(queue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)_multicastObservations:(id)observations taskHint:(int64_t)hint progress:(BOOL)progress
{
  observationsCopy = observations;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73___LTLanguageStatusMulticaster__multicastObservations_taskHint_progress___block_invoke;
  block[3] = &unk_278B6D150;
  objc_copyWeak(v13, &location);
  v12 = observationsCopy;
  v13[1] = hint;
  progressCopy = progress;
  v10 = observationsCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

- (void)_replayLastObservationsOnHeartbeat:(double)heartbeat
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = _LTOSLogAssetObservation();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    heartbeatCopy = heartbeat;
    _os_log_impl(&dword_23AAF5000, v5, OS_LOG_TYPE_DEFAULT, "Schedule replay of last language status observationsin in %fs", buf, 0xCu);
  }

  v6 = dispatch_time(0, (heartbeat * 1000000000.0));
  objc_initWeak(buf, self);
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67___LTLanguageStatusMulticaster__replayLastObservationsOnHeartbeat___block_invoke;
  v9[3] = &unk_278B6D178;
  objc_copyWeak(v10, buf);
  v10[1] = *&heartbeat;
  dispatch_after(v6, queue, v9);
  objc_destroyWeak(v10);
  objc_destroyWeak(buf);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_reconnectIfStreamingWithConnectionIdentifier:(id)identifier taskHint:(int64_t)hint useDedicatedMachPort:(BOOL)port
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  allValues = [(NSMutableDictionary *)self->_connectionIdentifiers allValues];
  v10 = [allValues containsObject:identifierCopy];

  if (v10)
  {
    v11 = _LTOSLogAssetObservation();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v19 = identifierCopy;
      _os_log_impl(&dword_23AAF5000, v11, OS_LOG_TYPE_INFO, "Reconnecting language status observation connection %{public}@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    queue = self->_queue;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __108___LTLanguageStatusMulticaster__reconnectIfStreamingWithConnectionIdentifier_taskHint_useDedicatedMachPort___block_invoke;
    v14[3] = &unk_278B6D150;
    objc_copyWeak(v16, buf);
    v15 = identifierCopy;
    v16[1] = hint;
    portCopy = port;
    dispatch_async(queue, v14);

    objc_destroyWeak(v16);
    objc_destroyWeak(buf);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_closeConnectionForced:forIdentifier:taskHint:useDedicatedMachPort:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v4 = 2114;
  v5 = v0;
  _os_log_debug_impl(&dword_23AAF5000, v1, OS_LOG_TYPE_DEBUG, "Not closing connection for key %{public}@ with identifier %{public}@ since other observers are relying on this connection", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end