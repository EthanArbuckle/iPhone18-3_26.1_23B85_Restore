@interface LSProgressNotificationTimer
- (LSProgressNotificationTimer)initWithQueue:(id)queue;
- (SEL)appObserverSelector;
- (id)description;
- (void)addApplication:(id)application;
- (void)dealloc;
- (void)notifyObservers:(id)observers withApplications:(id)applications;
- (void)removeApplication:(id)application;
- (void)sendMessage:(id)message;
- (void)setAppObserverSelector:(SEL)selector;
- (void)stopTimer;
@end

@implementation LSProgressNotificationTimer

- (LSProgressNotificationTimer)initWithQueue:(id)queue
{
  queueCopy = queue;
  v14.receiver = self;
  v14.super_class = LSProgressNotificationTimer;
  v6 = [(LSProgressNotificationTimer *)&v14 init];
  v7 = v6;
  if (v6)
  {
    timer = v6->_timer;
    v6->_timer = 0;

    v9 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:0];
    applications = v7->_applications;
    v7->_applications = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF00]);
    lastFiredDate = v7->_lastFiredDate;
    v7->_lastFiredDate = v11;

    *&v7->_minInterval = xmmword_1817E9190;
    objc_storeStrong(&v7->_queue, queue);
  }

  return v7;
}

- (void)dealloc
{
  [(NSTimer *)self->_timer invalidate];
  v3.receiver = self;
  v3.super_class = LSProgressNotificationTimer;
  [(LSProgressNotificationTimer *)&v3 dealloc];
}

- (void)stopTimer
{
  timer = [(LSProgressNotificationTimer *)self timer];
  if (timer)
  {
    v4 = timer;
    timer2 = [(LSProgressNotificationTimer *)self timer];
    isValid = [timer2 isValid];

    if (isValid)
    {
      [(NSTimer *)self->_timer invalidate];

      [(LSProgressNotificationTimer *)self setTimer:0];
    }
  }
}

- (void)addApplication:(id)application
{
  applications = self->_applications;
  bundleIdentifier = [application bundleIdentifier];
  [(NSMutableSet *)applications addObject:bundleIdentifier];
}

- (void)removeApplication:(id)application
{
  applicationCopy = application;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  applications = selfCopy->_applications;
  bundleIdentifier = [applicationCopy bundleIdentifier];
  LODWORD(applications) = [(NSMutableSet *)applications containsObject:bundleIdentifier];

  if (applications)
  {
    v7 = selfCopy->_applications;
    bundleIdentifier2 = [applicationCopy bundleIdentifier];
    [(NSMutableSet *)v7 removeObject:bundleIdentifier2];

    applications = [(LSProgressNotificationTimer *)selfCopy applications];
    if ([applications count] || (-[LSProgressNotificationTimer timer](selfCopy, "timer"), (v10 = objc_claimAutoreleasedReturnValue()) == 0))
    {
    }

    else
    {
      timer = [(LSProgressNotificationTimer *)selfCopy timer];
      isValid = [timer isValid];

      if (isValid)
      {
        MEMORY[0x1865D7C50]([(LSProgressNotificationTimer *)selfCopy stopTimer]);
      }
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)notifyObservers:(id)observers withApplications:(id)applications
{
  v31 = *MEMORY[0x1E69E9840];
  observersCopy = observers;
  applicationsCopy = applications;
  v8 = applicationsCopy;
  if (applicationsCopy && [applicationsCopy count])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v11)
    {
      v12 = *v27;
      do
      {
        v13 = 0;
        do
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(v10);
          }

          [(LSProgressNotificationTimer *)selfCopy addApplication:*(*(&v26 + 1) + 8 * v13++), v26];
        }

        while (v11 != v13);
        v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v11);
    }

    timer = [(LSProgressNotificationTimer *)selfCopy timer];
    v15 = timer == 0;

    if (!v15)
    {
      goto LABEL_19;
    }

    MEMORY[0x1865D7C40]();
    date = [MEMORY[0x1E695DF00] date];
    lastFiredDate = [(LSProgressNotificationTimer *)selfCopy lastFiredDate];
    [(LSProgressNotificationTimer *)selfCopy minInterval];
    v18 = [lastFiredDate dateByAddingTimeInterval:?];

    [(LSProgressNotificationTimer *)selfCopy minInterval];
    v19 = [date dateByAddingTimeInterval:?];
    v20 = [date compare:v18];
    if (v20 == -1)
    {
      if ([v19 compare:v18] == -1)
      {
        v21 = v19;
        goto LABEL_17;
      }
    }

    else if (v20 == 1)
    {
      [(LSProgressNotificationTimer *)selfCopy latency];
      v21 = [date dateByAddingTimeInterval:?];
LABEL_17:
      v22 = v21;

      goto LABEL_18;
    }

    v22 = v18;
LABEL_18:
    v23 = [objc_alloc(MEMORY[0x1E695DFF0]) initWithFireDate:v22 interval:selfCopy target:sel_sendMessage_ selector:observersCopy userInfo:0 repeats:0.0];
    [(LSProgressNotificationTimer *)selfCopy setTimer:v23];
    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [mainRunLoop addTimer:v23 forMode:*MEMORY[0x1E695D918]];

LABEL_19:
    objc_sync_exit(selfCopy);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)sendMessage:(id)message
{
  v27 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v4 = _LSProgressLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [LSProgressNotificationTimer sendMessage:?];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  timer = [(LSProgressNotificationTimer *)selfCopy timer];
  v7 = timer == 0;

  if (!v7)
  {
    date = [MEMORY[0x1E695DF00] date];
    [(LSProgressNotificationTimer *)selfCopy setLastFiredDate:date];

    [messageCopy userInfo];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    obj = v23 = 0u;
    v9 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = *v23;
      do
      {
        v11 = 0;
        do
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v22 + 1) + 8 * v11);
          v13 = objc_autoreleasePoolPush();
          connection = [v12 connection];
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v21[2] = __43__LSProgressNotificationTimer_sendMessage___block_invoke;
          v21[3] = &unk_1E6A19AC0;
          v21[4] = v12;
          v15 = [connection remoteObjectProxyWithErrorHandler:v21];

          applications = [(LSProgressNotificationTimer *)selfCopy applications];
          allObjects = [applications allObjects];
          [v15 applicationInstallsDidChange:allObjects];

          objc_autoreleasePoolPop(v13);
          ++v11;
        }

        while (v9 != v11);
        v9 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    [(LSProgressNotificationTimer *)selfCopy clear];
    MEMORY[0x1865D7C50]([(LSProgressNotificationTimer *)selfCopy setTimer:0]);
  }

  objc_sync_exit(selfCopy);

  v18 = *MEMORY[0x1E69E9840];
}

void __43__LSProgressNotificationTimer_sendMessage___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _LSProgressLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEFAULT, "Error %@ connecting to observer %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v6.receiver = self;
  v6.super_class = LSProgressNotificationTimer;
  v3 = [(LSProgressNotificationTimer *)&v6 description];
  v4 = [v2 stringWithFormat:@"<LSProgressNotificationTimer: %@>", v3];

  return v4;
}

- (SEL)appObserverSelector
{
  if (self->_appObserverSelector)
  {
    return self->_appObserverSelector;
  }

  else
  {
    return 0;
  }
}

- (void)setAppObserverSelector:(SEL)selector
{
  if (selector)
  {
    selectorCopy = selector;
  }

  else
  {
    selectorCopy = 0;
  }

  self->_appObserverSelector = selectorCopy;
}

- (void)sendMessage:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 applications];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_5_4(v2, v3, v4, v5, v6);

  v7 = *MEMORY[0x1E69E9840];
}

@end