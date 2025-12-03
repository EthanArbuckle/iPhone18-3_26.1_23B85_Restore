@interface ATSession
+ (id)_remoteSessionsWithTypeIdentifier:(id)identifier;
+ (id)allSessions;
+ (id)sessionsWithSessionTypeIdentifier:(id)identifier;
+ (id)sessionsWithSessionTypeIdentifier:(id)identifier dataClass:(id)class;
+ (unint64_t)_remoteActiveSessionCountWithTypeIdentifier:(id)identifier;
+ (unint64_t)activeSessionCountWithSessionTypeIdentifier:(id)identifier;
+ (void)_cancelSessionWithIdentifier:(id)identifier;
+ (void)initialize;
- (ATMessageLink)messageLink;
- (ATSession)init;
- (ATSession)initWithCoder:(id)coder;
- (ATSession)initWithSessionIdentifier:(id)identifier sessionTypeIdentifier:(id)typeIdentifier;
- (BOOL)isSuspended;
- (NSString)debugDescription;
- (NSString)description;
- (double)duration;
- (id)sessionTasks;
- (id)sessionTasksWithGroupingKey:(id)key;
- (void)_beginTasks:(id)tasks;
- (void)_finishWithError:(id)error;
- (void)_observeKeysForTask:(id)task;
- (void)_performSelectorOnObservers:(SEL)observers object:(id)object;
- (void)_performSelectorOnObservers:(SEL)observers object:(id)object object:(id)a5;
- (void)_stopObservingKeysForTask:(id)task;
- (void)addObserver:(id)observer;
- (void)addSessionTasks:(id)tasks;
- (void)beginSessionTask:(id)task;
- (void)cancel;
- (void)encodeWithCoder:(id)coder;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeObserver:(id)observer;
- (void)setSuspended:(BOOL)suspended;
- (void)start;
- (void)updateSessionTask:(id)task;
@end

@implementation ATSession

- (ATMessageLink)messageLink
{
  WeakRetained = objc_loadWeakRetained(&self->_messageLink);

  return WeakRetained;
}

- (void)_finishWithError:(id)error
{
  v10 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = os_log_create("com.apple.amp.AirTraffic", "Framework");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_23EC61000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Finishing.", &v8, 0xCu);
  }

  [(ATSession *)self setFinished:1];
  [(ATSession *)self setRunning:0];
  [(ATSession *)self setError:errorCopy];
  self->_finishTime = CFAbsoluteTimeGetCurrent();
  if (__sessionHost == 1)
  {
    v6 = __allSessionsList;
    objc_sync_enter(v6);
    [__allSessionsList removeObject:self];
    objc_sync_exit(v6);
  }

  [(ATSession *)self _performSelectorOnObservers:sel_sessionDidFinish_ object:self];
  dispatch_group_leave(self->_group);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_performSelectorOnObservers:(SEL)observers object:(id)object object:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v8 = a5;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = self->_observers;
  v10 = [(NSHashTable *)v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      v13 = 0;
      do
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          callbackQueue = self->_callbackQueue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __55__ATSession__performSelectorOnObservers_object_object___block_invoke;
          block[3] = &unk_278C6D7B0;
          block[4] = v14;
          observersCopy = observers;
          v19 = objectCopy;
          v20 = v8;
          dispatch_async(callbackQueue, block);
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSHashTable *)v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_performSelectorOnObservers:(SEL)observers object:(id)object
{
  v23 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = self->_observers;
  v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          callbackQueue = self->_callbackQueue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __48__ATSession__performSelectorOnObservers_object___block_invoke;
          block[3] = &unk_278C6D788;
          block[4] = v12;
          observersCopy = observers;
          v16 = objectCopy;
          dispatch_async(callbackQueue, block);
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_beginTasks:(id)tasks
{
  v23 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = tasks;
  v4 = [obj countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v15;
    *&v5 = 138543618;
    v12 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        [(ATSession *)self _performSelectorOnObservers:sel_session_willBeginSessionTask_ object:self object:v9, v12];
        v10 = os_log_create("com.apple.amp.AirTraffic", "Framework");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v12;
          selfCopy = self;
          v20 = 2114;
          v21 = v9;
          _os_log_impl(&dword_23EC61000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Starting %{public}@", buf, 0x16u);
        }

        [v9 _start];
        [(ATSession *)self _performSelectorOnObservers:sel_session_didBeginSessionTask_ object:self object:v9];
      }

      v6 = [obj countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_stopObservingKeysForTask:(id)task
{
  v16 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  if ([(NSMutableSet *)self->_observing containsObject:taskCopy])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    _keysToObserve = [(ATSession *)self _keysToObserve];
    v6 = [_keysToObserve countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(_keysToObserve);
          }

          [taskCopy removeObserver:self forKeyPath:*(*(&v11 + 1) + 8 * v9++) context:0];
        }

        while (v7 != v9);
        v7 = [_keysToObserve countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    [(NSMutableSet *)self->_observing removeObject:taskCopy];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_observeKeysForTask:(id)task
{
  v16 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  [(NSMutableSet *)self->_observing addObject:taskCopy];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  _keysToObserve = [(ATSession *)self _keysToObserve];
  v6 = [_keysToObserve countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(_keysToObserve);
        }

        [taskCopy addObserver:self forKeyPath:*(*(&v11 + 1) + 8 * v9++) options:1 context:0];
      }

      while (v7 != v9);
      v7 = [_keysToObserve countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateSessionTask:(id)task
{
  taskCopy = task;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31__ATSession_updateSessionTask___block_invoke;
  v7[3] = &unk_278C6DC30;
  v7[4] = self;
  v8 = taskCopy;
  v6 = taskCopy;
  dispatch_async(queue, v7);
}

void __31__ATSession_updateSessionTask___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 16);
  v3 = [*(a1 + 40) sessionTaskIdentifier];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v5 = [*(a1 + 32) _keysToObserve];
    v6 = [v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (!v6)
    {
      goto LABEL_25;
    }

    v7 = v6;
    v27 = *v29;
    v26 = *MEMORY[0x277CCA2F0];
    obj = v5;
    v25 = *MEMORY[0x277CCA300];
    while (1)
    {
      v8 = 0;
      do
      {
        if (*v29 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v28 + 1) + 8 * v8);
        v10 = [*(a1 + 40) valueForKey:v9];
        v11 = [v4 valueForKey:v9];
        v12 = v11;
        if (v10)
        {
          if ([v10 isEqual:v11])
          {
            goto LABEL_17;
          }
        }

        else if (!v11)
        {
          goto LABEL_17;
        }

        [v4 setValue:v10 forKey:v9];
        v13 = *(a1 + 32);
        v14 = *(a1 + 40);
        v15 = v10;
        v32[0] = v26;
        if (!v10)
        {
          v23 = [MEMORY[0x277CBEB68] null];
          v15 = v23;
        }

        v33[0] = v15;
        v32[1] = v25;
        v16 = v12;
        if (!v12)
        {
          v22 = [MEMORY[0x277CBEB68] null];
          v16 = v22;
        }

        v33[1] = v16;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:{2, v22}];
        [v13 observeValueForKeyPath:v9 ofObject:v14 change:v17 context:0];

        if (v12)
        {
          if (v10)
          {
            goto LABEL_17;
          }
        }

        else
        {

          if (v10)
          {
            goto LABEL_17;
          }
        }

LABEL_17:
        ++v8;
      }

      while (v7 != v8);
      v5 = obj;
      v18 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
      v7 = v18;
      if (!v18)
      {
        goto LABEL_25;
      }
    }
  }

  v5 = os_log_create("com.apple.amp.AirTraffic", "Framework");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 32);
    v20 = [*(a1 + 40) sessionTaskIdentifier];
    *buf = 138543618;
    v36 = v19;
    v37 = 2114;
    v38 = v20;
    _os_log_impl(&dword_23EC61000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Cannot update unknown session task with identifier %{public}@", buf, 0x16u);
  }

LABEL_25:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)beginSessionTask:(id)task
{
  taskCopy = task;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __30__ATSession_beginSessionTask___block_invoke;
  v7[3] = &unk_278C6DC30;
  v7[4] = self;
  v8 = taskCopy;
  v6 = taskCopy;
  dispatch_async(queue, v7);
}

void __30__ATSession_beginSessionTask___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = [*(a1 + 40) sessionTaskIdentifier];
  v6 = [v2 objectForKeyedSubscript:v3];

  if (!v6)
  {
    v6 = *(a1 + 40);
    [*(*(a1 + 32) + 8) addObject:v6];
    v4 = *(*(a1 + 32) + 16);
    v5 = [v6 sessionTaskIdentifier];
    [v4 setObject:v6 forKeyedSubscript:v5];

    [v6 setSession:*(a1 + 32)];
  }

  [*(a1 + 32) _performSelectorOnObservers:sel_session_willBeginSessionTask_ object:*(a1 + 32) object:v6];
  [v6 setRunning:1];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  queue = self->_queue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __60__ATSession_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v16[3] = &unk_278C6D760;
  v16[4] = self;
  v17 = objectCopy;
  v18 = pathCopy;
  v19 = changeCopy;
  v13 = changeCopy;
  v14 = pathCopy;
  v15 = objectCopy;
  dispatch_async(queue, v16);
}

void __60__ATSession_observeValueForKeyPath_ofObject_change_context___block_invoke(id *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1[4] + 2);
  v3 = [a1[5] sessionTaskIdentifier];
  v4 = [v2 objectForKey:v3];

  if (!v4)
  {
LABEL_16:
    v19 = *MEMORY[0x277D85DE8];
    return;
  }

  if ([a1[6] isEqualToString:@"finished"])
  {
    v5 = [a1[7] objectForKey:*MEMORY[0x277CCA2F0]];
    v6 = [v5 BOOLValue];

    if (v6)
    {
      [a1[5] finishTime];
      if (v7 <= 0.0)
      {
        [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      }

      else
      {
        [a1[5] finishTime];
      }

      [a1[5] setFinishTime:?];
      v11 = os_log_create("com.apple.amp.AirTraffic", "Framework");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = a1[4];
        v12 = a1[5];
        [v12 duration];
        v20 = 138543874;
        v21 = v13;
        v22 = 2114;
        v23 = v12;
        v24 = 2048;
        v25 = v14;
        _os_log_impl(&dword_23EC61000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished task %{public}@ in %.2f seconds", &v20, 0x20u);
      }

      v15 = *(a1[4] + 2);
      v16 = [a1[5] sessionTaskIdentifier];
      [v15 removeObjectForKey:v16];

      [a1[4] _performSelectorOnObservers:sel_session_didFinishSessionTask_ object:a1[4] object:a1[5]];
      [a1[4] _stopObservingKeysForTask:a1[5]];
      [a1[5] setRunning:0];
      if (![*(a1[4] + 2) count])
      {
        v17 = a1[4];
        if ([v17 isCancelled])
        {
          v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:2 userInfo:0];
          [v17 _finishWithError:v18];
        }

        else
        {
          [v17 _finishWithError:0];
        }
      }

      goto LABEL_16;
    }
  }

  v8 = a1[4];
  v9 = a1[5];
  v10 = *MEMORY[0x277D85DE8];

  [v8 _performSelectorOnObservers:sel_session_didUpdateSessionTask_ object:v8 object:v9];
}

- (void)encodeWithCoder:(id)coder
{
  v25 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  sessionIdentifier = [(ATSession *)self sessionIdentifier];
  [coderCopy encodeObject:sessionIdentifier forKey:@"sessionIdentifier"];

  sessionTypeIdentifier = [(ATSession *)self sessionTypeIdentifier];
  [coderCopy encodeObject:sessionTypeIdentifier forKey:@"sessionTypeIdentifier"];

  localizedDescription = [(ATSession *)self localizedDescription];
  [coderCopy encodeObject:localizedDescription forKey:@"localizedDescription"];

  dataClass = [(ATSession *)self dataClass];
  [coderCopy encodeObject:dataClass forKey:@"dataClass"];

  error = [(ATSession *)self error];
  msv_errorByRemovingUnsafeUserInfo = [error msv_errorByRemovingUnsafeUserInfo];
  [coderCopy encodeObject:msv_errorByRemovingUnsafeUserInfo forKey:@"error"];

  [(ATSession *)self progress];
  [coderCopy encodeDouble:@"progress" forKey:?];
  [coderCopy encodeBool:-[ATSession isRunning](self forKey:{"isRunning"), @"running"}];
  [coderCopy encodeBool:-[ATSession isFinished](self forKey:{"isFinished"), @"finished"}];
  [coderCopy encodeBool:-[ATSession isCancelled](self forKey:{"isCancelled"), @"cancelled"}];
  v11 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  sessionTasks = [(ATSession *)self sessionTasks];
  v13 = [sessionTasks countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(sessionTasks);
        }

        baseClassRepresentation = [*(*(&v20 + 1) + 8 * v16) baseClassRepresentation];
        [v11 addObject:baseClassRepresentation];

        ++v16;
      }

      while (v14 != v16);
      v14 = [sessionTasks countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  [coderCopy encodeObject:v11 forKey:@"sessionTasks"];
  endpoint = [(ATSession *)self endpoint];
  [coderCopy encodeObject:endpoint forKey:@"endpoint"];

  v19 = *MEMORY[0x277D85DE8];
}

- (ATSession)initWithCoder:(id)coder
{
  v41 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [(ATSession *)self initWithSessionTypeIdentifier:0];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionIdentifier"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionTypeIdentifier"];
    sessionTypeIdentifier = v5->_sessionTypeIdentifier;
    v5->_sessionTypeIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dataClass"];
    dataClass = v5->_dataClass;
    v5->_dataClass = v10;

    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"sessionTasks"];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v37;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v37 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v36 + 1) + 8 * i);
          [(NSMutableArray *)v5->_sessionTasks addObject:v21];
          if (([v21 isFinished] & 1) == 0)
          {
            sessionTasksByIdentifier = v5->_sessionTasksByIdentifier;
            sessionTaskIdentifier = [v21 sessionTaskIdentifier];
            [(NSMutableDictionary *)sessionTasksByIdentifier setObject:v21 forKeyedSubscript:sessionTaskIdentifier];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v18);
    }

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedDescription"];
    localizedDescription = v5->_localizedDescription;
    v5->_localizedDescription = v24;

    [coderCopy decodeDoubleForKey:@"progress"];
    v5->_progress = v26;
    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v27;

    v5->_running = [coderCopy decodeBoolForKey:@"running"];
    v5->_cancelled = [coderCopy decodeBoolForKey:@"cancelled"];
    v5->_finished = [coderCopy decodeBoolForKey:@"finished"];
    dispatch_group_enter(v5->_group);
    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endpoint"];
    if (v29)
    {
      v30 = [objc_alloc(MEMORY[0x277CCAE80]) initWithListenerEndpoint:v29];
      connection = v5->_connection;
      v5->_connection = v30;

      [(NSXPCConnection *)v5->_connection setExportedObject:v5];
      v32 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28515E460];
      [(NSXPCConnection *)v5->_connection setExportedInterface:v32];

      v33 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285162C28];
      [(NSXPCConnection *)v5->_connection setRemoteObjectInterface:v33];

      [(NSXPCConnection *)v5->_connection resume];
    }
  }

  v34 = *MEMORY[0x277D85DE8];
  return v5;
}

- (NSString)debugDescription
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v4 = [(ATSession *)self description];
  v5 = [v3 initWithString:v4];

  [v5 appendString:@"\n"];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  sessionTasks = [(ATSession *)self sessionTasks];
  v7 = [sessionTasks countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(sessionTasks);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        [v5 appendString:@"  "];
        v12 = [v11 debugDescription];
        [v5 appendString:v12];

        [v5 appendString:@"\n"];
      }

      v8 = [sessionTasks countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  sessionIdentifier = [(ATSession *)self sessionIdentifier];
  sessionTypeIdentifier = [(ATSession *)self sessionTypeIdentifier];
  dataClass = [(ATSession *)self dataClass];
  v8 = [v3 stringWithFormat:@"<%@ %@ %@/%@: running=%d finished=%d cancelled=%d>", v4, sessionIdentifier, sessionTypeIdentifier, dataClass, -[ATSession isRunning](self, "isRunning"), -[ATSession isFinished](self, "isFinished"), -[ATSession isCancelled](self, "isCancelled")];

  return v8;
}

- (double)duration
{
  if ([(ATSession *)self isFinished])
  {
    finishTime = self->_finishTime;
  }

  else
  {
    finishTime = CFAbsoluteTimeGetCurrent();
  }

  return finishTime - self->_startTime;
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __28__ATSession_removeObserver___block_invoke;
  v7[3] = &unk_278C6DC30;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __25__ATSession_addObserver___block_invoke;
  v7[3] = &unk_278C6DC30;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

void __25__ATSession_addObserver___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) addObject:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 64);
  if (v2)
  {
    v3 = [v2 remoteObjectProxy];
    [v3 connect];
  }
}

- (id)sessionTasksWithGroupingKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__279;
  v16 = __Block_byref_object_dispose__280;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__ATSession_sessionTasksWithGroupingKey___block_invoke;
  block[3] = &unk_278C6DB18;
  v10 = keyCopy;
  v11 = &v12;
  block[4] = self;
  v6 = keyCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __41__ATSession_sessionTasksWithGroupingKey___block_invoke(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(a1[4] + 8), "count")}];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = *(a1[4] + 8);
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 sessionGroupingKey];
        v12 = [v11 isEqualToString:a1[5]];

        if (v12)
        {
          [*(*(a1[6] + 8) + 40) addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)sessionTasks
{
  v2 = [(NSMutableArray *)self->_sessionTasks copy];

  return v2;
}

- (void)addSessionTasks:(id)tasks
{
  tasksCopy = tasks;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__ATSession_addSessionTasks___block_invoke;
  v7[3] = &unk_278C6DC30;
  v7[4] = self;
  v8 = tasksCopy;
  v6 = tasksCopy;
  dispatch_sync(queue, v7);
}

void __29__ATSession_addSessionTasks___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 89) & 1) != 0 || (*(v2 + 91))
  {
    v3 = os_log_create("com.apple.amp.AirTraffic", "Framework");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      *buf = 138543362;
      v23 = v4;
      _os_log_impl(&dword_23EC61000, v3, OS_LOG_TYPE_ERROR, "%{public}@ Can't add tasks to a completed session - ignoring", buf, 0xCu);
    }
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = *(a1 + 40);
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          [*(a1 + 32) _observeKeysForTask:v11];
          v12 = *(*(a1 + 32) + 16);
          v13 = [v11 sessionTaskIdentifier];
          [v12 setObject:v11 forKeyedSubscript:v13];

          [*(*(a1 + 32) + 8) addObject:v11];
          [v11 setSession:*(a1 + 32)];
        }

        v8 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
      }

      while (v8);
    }

    v14 = *(a1 + 32);
    if (*(v14 + 90) == 1 && (*(v14 + 88) & 1) == 0)
    {
      v15 = *(v14 + 40);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __29__ATSession_addSessionTasks___block_invoke_2;
      v16[3] = &unk_278C6DC30;
      v16[4] = v14;
      v17 = *(a1 + 40);
      dispatch_async(v15, v16);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)setSuspended:(BOOL)suspended
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __26__ATSession_setSuspended___block_invoke;
  v4[3] = &unk_278C6D738;
  v4[4] = self;
  suspendedCopy = suspended;
  dispatch_sync(queue, v4);
}

void __26__ATSession_setSuspended___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 88) = *(a1 + 40);
  v2 = *(*(a1 + 32) + 88);
  v3 = os_log_create("com.apple.amp.AirTraffic", "Framework");
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 32);
      *buf = 138543362;
      v12 = v5;
      _os_log_impl(&dword_23EC61000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Suspending.", buf, 0xCu);
    }
  }

  else
  {
    if (v4)
    {
      v6 = *(a1 + 32);
      *buf = 138543362;
      v12 = v6;
      _os_log_impl(&dword_23EC61000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Resuming.", buf, 0xCu);
    }

    v7 = *(a1 + 32);
    v8 = *(v7 + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __26__ATSession_setSuspended___block_invoke_26;
    block[3] = &unk_278C6DBE0;
    block[4] = v7;
    dispatch_async(v8, block);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __26__ATSession_setSuspended___block_invoke_26(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(*(a1 + 32) + 8);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (([v8 isRunning] & 1) == 0 && (objc_msgSend(v8, "isFinished") & 1) == 0 && (objc_msgSend(v8, "isCancelled") & 1) == 0)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [*(a1 + 32) _beginTasks:v2];
  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)isSuspended
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __24__ATSession_isSuspended__block_invoke;
  v5[3] = &unk_278C6DC58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)cancel
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = __sessionHost;
  v4 = os_log_create("com.apple.amp.AirTraffic", "Framework");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3 == 1)
  {
    if (v5)
    {
      error = [(ATSession *)self error];
      *buf = 138543618;
      selfCopy2 = self;
      v13 = 2114;
      v14 = error;
      _os_log_impl(&dword_23EC61000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Cancelling. err=%{public}@", buf, 0x16u);
    }

    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __19__ATSession_cancel__block_invoke;
    block[3] = &unk_278C6DBE0;
    block[4] = self;
    dispatch_async(queue, block);
  }

  else
  {
    if (v5)
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_23EC61000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Cancelling remote session.", buf, 0xCu);
    }

    sessionIdentifier = [(ATSession *)self sessionIdentifier];
    [ATSession _cancelSessionWithIdentifier:sessionIdentifier];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __19__ATSession_cancel__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if ((v2[91] & 1) == 0)
  {
    [v2 setCancelled:1];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = *(*(a1 + 32) + 8);
    v4 = [v3 countByEnumeratingWithState:&v14 objects:v22 count:16];
    if (v4)
    {
      v6 = v4;
      v7 = *v15;
      *&v5 = 138543618;
      v13 = v5;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          if (([v9 isFinished] & 1) == 0 && (objc_msgSend(v9, "isCancelled") & 1) == 0)
          {
            v10 = os_log_create("com.apple.amp.AirTraffic", "Framework");
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              v11 = *(a1 + 32);
              *buf = v13;
              v19 = v11;
              v20 = 2114;
              v21 = v9;
              _os_log_impl(&dword_23EC61000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Cancelling %{public}@", buf, 0x16u);
            }

            [v9 cancel];
          }
        }

        v6 = [v3 countByEnumeratingWithState:&v14 objects:v22 count:16];
      }

      while (v6);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.amp.AirTraffic", "Framework");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_23EC61000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Starting.", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __18__ATSession_start__block_invoke;
  block[3] = &unk_278C6DBE0;
  block[4] = self;
  dispatch_async(queue, block);
  v5 = *MEMORY[0x277D85DE8];
}

_BYTE *__18__ATSession_start__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[90] & 1) == 0)
  {
    [result setRunning:1];
    *(*(a1 + 32) + 72) = CFAbsoluteTimeGetCurrent();
    dispatch_group_enter(*(*(a1 + 32) + 56));
    v3 = [*(*(a1 + 32) + 8) count];
    v4 = *(a1 + 32);
    if (v3)
    {
      [v4 _performSelectorOnObservers:sel_sessionWillBegin_ object:*(a1 + 32)];
      v5 = *(a1 + 32);
      v6 = v5[1];

      return [v5 _beginTasks:v6];
    }

    else
    {

      return [v4 _finishWithError:0];
    }
  }

  return result;
}

- (ATSession)initWithSessionIdentifier:(id)identifier sessionTypeIdentifier:(id)typeIdentifier
{
  identifierCopy = identifier;
  typeIdentifierCopy = typeIdentifier;
  v31.receiver = self;
  v31.super_class = ATSession;
  v8 = [(ATSession *)&v31 init];
  if (v8)
  {
    if (identifierCopy)
    {
      v9 = [identifierCopy copy];
      sessionIdentifier = v8->_sessionIdentifier;
      v8->_sessionIdentifier = v9;
    }

    else
    {
      sessionIdentifier = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [sessionIdentifier UUIDString];
      v12 = v8->_sessionIdentifier;
      v8->_sessionIdentifier = uUIDString;
    }

    v13 = [typeIdentifierCopy copy];
    sessionTypeIdentifier = v8->_sessionTypeIdentifier;
    v8->_sessionTypeIdentifier = v13;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    sessionTasksByIdentifier = v8->_sessionTasksByIdentifier;
    v8->_sessionTasksByIdentifier = dictionary;

    array = [MEMORY[0x277CBEB18] array];
    sessionTasks = v8->_sessionTasks;
    v8->_sessionTasks = array;

    v19 = [MEMORY[0x277CBEB58] set];
    observing = v8->_observing;
    v8->_observing = v19;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v8->_observers;
    v8->_observers = weakObjectsHashTable;

    v23 = dispatch_queue_create("com.apple.AirTraffic.ATSession.accessQueue", 0);
    queue = v8->_queue;
    v8->_queue = v23;

    v25 = dispatch_queue_create("com.apple.AirTraffic.ATSession.callbackQueue", 0);
    callbackQueue = v8->_callbackQueue;
    v8->_callbackQueue = v25;

    v27 = dispatch_group_create();
    group = v8->_group;
    v8->_group = v27;

    if (__sessionHost == 1)
    {
      v29 = __allSessionsList;
      objc_sync_enter(v29);
      [__allSessionsList addObject:v8];
      objc_sync_exit(v29);
    }
  }

  return v8;
}

- (ATSession)init
{
  v4.receiver = self;
  v4.super_class = ATSession;
  [(ATSession *)&v4 doesNotRecognizeSelector:a2];

  return 0;
}

+ (unint64_t)_remoteActiveSessionCountWithTypeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.atc.xpc.sessions" options:0];
  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285162CD8];
  [v4 setRemoteObjectInterface:v5];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __57__ATSession__remoteActiveSessionCountWithTypeIdentifier___block_invoke;
  v25[3] = &unk_278C6D7D8;
  v25[4] = &v26;
  [v4 setInvalidationHandler:v25];
  [v4 resume];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v6 = dispatch_semaphore_create(0);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __57__ATSession__remoteActiveSessionCountWithTypeIdentifier___block_invoke_2;
  v18[3] = &unk_278C6D8A0;
  v7 = identifierCopy;
  v19 = v7;
  v8 = v6;
  v20 = v8;
  v9 = [v4 remoteObjectProxyWithErrorHandler:v18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__ATSession__remoteActiveSessionCountWithTypeIdentifier___block_invoke_174;
  v15[3] = &unk_278C6D800;
  v17 = &v21;
  v10 = v8;
  v16 = v10;
  [v9 fetchActiveSessionCountForSessionTypeIdentifier:v7 completion:v15];

  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  if (*(v27 + 24) == 1)
  {
    [v4 invalidate];
    v11 = os_log_create("com.apple.amp.AirTraffic", "Framework");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 0;
      _os_log_impl(&dword_23EC61000, v11, OS_LOG_TYPE_DEFAULT, "XPC Connection was still valid - invalidating", &v14, 2u);
    }
  }

  v12 = v22[3];

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v26, 8);

  return v12;
}

void __57__ATSession__remoteActiveSessionCountWithTypeIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.AirTraffic", "Framework");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&dword_23EC61000, v4, OS_LOG_TYPE_ERROR, "Failed to fetch count of active sessions of type %{public}@ error:%{public}@", &v7, 0x16u);
  }

  dispatch_semaphore_signal(*(a1 + 40));
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_cancelSessionWithIdentifier:(id)identifier
{
  v27 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.atc.xpc.sessions" options:0];
  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285162CD8];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [v5 setClasses:v8 forSelector:sel_fetchSessionsWithTypeIdentifier_completion_ argumentIndex:0 ofReply:1];

  [v4 setRemoteObjectInterface:v5];
  [v4 resume];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __42__ATSession__cancelSessionWithIdentifier___block_invoke;
  v20[3] = &unk_278C6D7D8;
  v20[4] = &v21;
  [v4 setInvalidationHandler:v20];
  v9 = os_log_create("com.apple.amp.AirTraffic", "Framework");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v26 = identifierCopy;
    _os_log_impl(&dword_23EC61000, v9, OS_LOG_TYPE_DEFAULT, "cancelling session. id=%{public}@", buf, 0xCu);
  }

  v10 = dispatch_semaphore_create(0);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __42__ATSession__cancelSessionWithIdentifier___block_invoke_172;
  v18[3] = &unk_278C6D9C0;
  v11 = v10;
  v19 = v11;
  v12 = [v4 remoteObjectProxyWithErrorHandler:v18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __42__ATSession__cancelSessionWithIdentifier___block_invoke_173;
  v16[3] = &unk_278C6D9C0;
  v13 = v11;
  v17 = v13;
  [v12 cancelSessionWithIdentifier:identifierCopy completion:v16];

  dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
  if (*(v22 + 24) == 1)
  {
    [v4 invalidate];
    v14 = os_log_create("com.apple.amp.AirTraffic", "Framework");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23EC61000, v14, OS_LOG_TYPE_DEFAULT, "XPC Connection was still valid - invalidating", buf, 2u);
    }
  }

  _Block_object_dispose(&v21, 8);
  v15 = *MEMORY[0x277D85DE8];
}

void __42__ATSession__cancelSessionWithIdentifier___block_invoke_172(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.AirTraffic", "Framework");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_23EC61000, v4, OS_LOG_TYPE_ERROR, "Failed to cancel session. error=%{public}@", &v6, 0xCu);
  }

  dispatch_semaphore_signal(*(a1 + 32));
  v5 = *MEMORY[0x277D85DE8];
}

void __42__ATSession__cancelSessionWithIdentifier___block_invoke_173(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.AirTraffic", "Framework");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_23EC61000, v4, OS_LOG_TYPE_ERROR, "Failed to cancel session. error=%{public}@", &v6, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v5 = *MEMORY[0x277D85DE8];
}

+ (id)_remoteSessionsWithTypeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.atc.xpc.sessions" options:0];
  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285162CD8];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [v5 setClasses:v8 forSelector:sel_fetchSessionsWithTypeIdentifier_completion_ argumentIndex:0 ofReply:1];

  [v4 setRemoteObjectInterface:v5];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 1;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __47__ATSession__remoteSessionsWithTypeIdentifier___block_invoke;
  v28[3] = &unk_278C6D7D8;
  v28[4] = &v29;
  [v4 setInvalidationHandler:v28];
  [v4 resume];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__279;
  v26 = __Block_byref_object_dispose__280;
  v27 = 0;
  v9 = dispatch_semaphore_create(0);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __47__ATSession__remoteSessionsWithTypeIdentifier___block_invoke_2;
  v20[3] = &unk_278C6D9C0;
  v10 = v9;
  v21 = v10;
  v11 = [v4 remoteObjectProxyWithErrorHandler:v20];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __47__ATSession__remoteSessionsWithTypeIdentifier___block_invoke_170;
  v17[3] = &unk_278C6D828;
  v19 = &v22;
  v12 = v10;
  v18 = v12;
  [v11 fetchSessionsWithTypeIdentifier:identifierCopy completion:v17];

  dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  if (*(v30 + 24) == 1)
  {
    [v4 invalidate];
    v13 = os_log_create("com.apple.amp.AirTraffic", "Framework");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23EC61000, v13, OS_LOG_TYPE_DEFAULT, "XPC Connection was still valid - invalidating", buf, 2u);
    }
  }

  v14 = v23[5];

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v29, 8);

  return v14;
}

void __47__ATSession__remoteSessionsWithTypeIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.AirTraffic", "Framework");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_23EC61000, v4, OS_LOG_TYPE_ERROR, "Failed to fetch sessions: %{public}@", &v6, 0xCu);
  }

  dispatch_semaphore_signal(*(a1 + 32));
  v5 = *MEMORY[0x277D85DE8];
}

void __47__ATSession__remoteSessionsWithTypeIdentifier___block_invoke_170(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  else
  {
    v8 = os_log_create("com.apple.amp.AirTraffic", "Framework");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = v7;
      _os_log_impl(&dword_23EC61000, v8, OS_LOG_TYPE_DEFAULT, "Failed to fetch sessions: %{public}@", &v10, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v9 = *MEMORY[0x277D85DE8];
}

+ (unint64_t)activeSessionCountWithSessionTypeIdentifier:(id)identifier
{
  v26 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (__sessionHost == 1)
  {
    v5 = __allSessionsList;
    objc_sync_enter(v5);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = __allSessionsList;
    v7 = 0;
    v8 = [v6 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v8)
    {
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
          sessionTypeIdentifier = [v11 sessionTypeIdentifier];
          v13 = [sessionTypeIdentifier isEqualToString:identifierCopy];

          if (v13 && ([v11 isCancelled] & 1) == 0)
          {
            v7 += [v11 isFinished] ^ 1;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v8);
    }

    objc_sync_exit(v5);
  }

  else
  {
    v7 = [self _remoteActiveSessionCountWithTypeIdentifier:identifierCopy];
  }

  v14 = os_log_create("com.apple.amp.AirTraffic", "Framework");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v22 = v7;
    v23 = 2114;
    v24 = identifierCopy;
    _os_log_impl(&dword_23EC61000, v14, OS_LOG_TYPE_DEFAULT, "Found %lu active sessions for identifier %{public}@", buf, 0x16u);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (id)sessionsWithSessionTypeIdentifier:(id)identifier dataClass:(id)class
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  classCopy = class;
  v7 = objc_opt_new();
  v8 = [ATSession sessionsWithSessionTypeIdentifier:identifierCopy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        if (classCopy)
        {
          dataClass = [*(*(&v18 + 1) + 8 * i) dataClass];
          v15 = [dataClass isEqualToString:classCopy];

          if (!v15)
          {
            continue;
          }
        }

        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)sessionsWithSessionTypeIdentifier:(id)identifier
{
  v30 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = objc_opt_new();
  if (__sessionHost == 1)
  {
    v6 = __allSessionsList;
    objc_sync_enter(v6);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = __allSessionsList;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v8)
    {
      v9 = *v22;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          sessionTypeIdentifier = [v11 sessionTypeIdentifier];
          v13 = [sessionTypeIdentifier isEqualToString:identifierCopy];

          if (v13)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v8);
    }

    objc_sync_exit(v6);
  }

  else
  {
    v14 = [self _remoteSessionsWithTypeIdentifier:identifierCopy];
    v15 = [v14 copy];

    v5 = v15;
  }

  v16 = os_log_create("com.apple.amp.AirTraffic", "Framework");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v5 count];
    *buf = 134218242;
    v26 = v17;
    v27 = 2114;
    v28 = identifierCopy;
    _os_log_impl(&dword_23EC61000, v16, OS_LOG_TYPE_DEFAULT, "Found %lu sessions for identifier %{public}@", buf, 0x16u);
  }

  v18 = os_log_create("com.apple.amp.AirTraffic", "Framework_Oversize");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v26 = v5;
    _os_log_impl(&dword_23EC61000, v18, OS_LOG_TYPE_DEFAULT, "sessions %{public}@:", buf, 0xCu);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)allSessions
{
  if (__sessionHost == 1)
  {
    v2 = __allSessionsList;
    objc_sync_enter(v2);
    v3 = __allSessionsList;
    objc_sync_exit(v2);
  }

  else
  {
    v3 = [self _remoteSessionsWithTypeIdentifier:0];
  }

  return v3;
}

+ (void)initialize
{
  array = [MEMORY[0x277CBEB18] array];
  v3 = __allSessionsList;
  __allSessionsList = array;

  uTF8String = [@"ATSessionsDidChangeNotification" UTF8String];
  v5 = dispatch_get_global_queue(0, 0);
  notify_register_dispatch(uTF8String, &__dispatchToken, v5, &__block_literal_global_306);
}

void __23__ATSession_initialize__block_invoke()
{
  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterPostNotification(LocalCenter, @"ATSessionsDidChangeNotification", 0, 0, 1u);
}

@end