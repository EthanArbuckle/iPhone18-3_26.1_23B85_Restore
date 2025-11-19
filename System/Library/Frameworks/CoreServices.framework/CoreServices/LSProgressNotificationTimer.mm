@interface LSProgressNotificationTimer
- (LSProgressNotificationTimer)initWithQueue:(id)a3;
- (SEL)appObserverSelector;
- (id)description;
- (void)addApplication:(id)a3;
- (void)dealloc;
- (void)notifyObservers:(id)a3 withApplications:(id)a4;
- (void)removeApplication:(id)a3;
- (void)sendMessage:(id)a3;
- (void)setAppObserverSelector:(SEL)a3;
- (void)stopTimer;
@end

@implementation LSProgressNotificationTimer

- (LSProgressNotificationTimer)initWithQueue:(id)a3
{
  v5 = a3;
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
    objc_storeStrong(&v7->_queue, a3);
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
  v3 = [(LSProgressNotificationTimer *)self timer];
  if (v3)
  {
    v4 = v3;
    v5 = [(LSProgressNotificationTimer *)self timer];
    v6 = [v5 isValid];

    if (v6)
    {
      [(NSTimer *)self->_timer invalidate];

      [(LSProgressNotificationTimer *)self setTimer:0];
    }
  }
}

- (void)addApplication:(id)a3
{
  applications = self->_applications;
  v4 = [a3 bundleIdentifier];
  [(NSMutableSet *)applications addObject:v4];
}

- (void)removeApplication:(id)a3
{
  v13 = a3;
  v4 = self;
  objc_sync_enter(v4);
  applications = v4->_applications;
  v6 = [v13 bundleIdentifier];
  LODWORD(applications) = [(NSMutableSet *)applications containsObject:v6];

  if (applications)
  {
    v7 = v4->_applications;
    v8 = [v13 bundleIdentifier];
    [(NSMutableSet *)v7 removeObject:v8];

    v9 = [(LSProgressNotificationTimer *)v4 applications];
    if ([v9 count] || (-[LSProgressNotificationTimer timer](v4, "timer"), (v10 = objc_claimAutoreleasedReturnValue()) == 0))
    {
    }

    else
    {
      v11 = [(LSProgressNotificationTimer *)v4 timer];
      v12 = [v11 isValid];

      if (v12)
      {
        MEMORY[0x1865D7C50]([(LSProgressNotificationTimer *)v4 stopTimer]);
      }
    }
  }

  objc_sync_exit(v4);
}

- (void)notifyObservers:(id)a3 withApplications:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7 && [v7 count])
  {
    v9 = self;
    objc_sync_enter(v9);
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

          [(LSProgressNotificationTimer *)v9 addApplication:*(*(&v26 + 1) + 8 * v13++), v26];
        }

        while (v11 != v13);
        v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v11);
    }

    v14 = [(LSProgressNotificationTimer *)v9 timer];
    v15 = v14 == 0;

    if (!v15)
    {
      goto LABEL_19;
    }

    MEMORY[0x1865D7C40]();
    v16 = [MEMORY[0x1E695DF00] date];
    v17 = [(LSProgressNotificationTimer *)v9 lastFiredDate];
    [(LSProgressNotificationTimer *)v9 minInterval];
    v18 = [v17 dateByAddingTimeInterval:?];

    [(LSProgressNotificationTimer *)v9 minInterval];
    v19 = [v16 dateByAddingTimeInterval:?];
    v20 = [v16 compare:v18];
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
      [(LSProgressNotificationTimer *)v9 latency];
      v21 = [v16 dateByAddingTimeInterval:?];
LABEL_17:
      v22 = v21;

      goto LABEL_18;
    }

    v22 = v18;
LABEL_18:
    v23 = [objc_alloc(MEMORY[0x1E695DFF0]) initWithFireDate:v22 interval:v9 target:sel_sendMessage_ selector:v6 userInfo:0 repeats:0.0];
    [(LSProgressNotificationTimer *)v9 setTimer:v23];
    v24 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [v24 addTimer:v23 forMode:*MEMORY[0x1E695D918]];

LABEL_19:
    objc_sync_exit(v9);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)sendMessage:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v19 = a3;
  v4 = _LSProgressLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [LSProgressNotificationTimer sendMessage:?];
  }

  v5 = self;
  objc_sync_enter(v5);
  v6 = [(LSProgressNotificationTimer *)v5 timer];
  v7 = v6 == 0;

  if (!v7)
  {
    v8 = [MEMORY[0x1E695DF00] date];
    [(LSProgressNotificationTimer *)v5 setLastFiredDate:v8];

    [v19 userInfo];
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
          v14 = [v12 connection];
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v21[2] = __43__LSProgressNotificationTimer_sendMessage___block_invoke;
          v21[3] = &unk_1E6A19AC0;
          v21[4] = v12;
          v15 = [v14 remoteObjectProxyWithErrorHandler:v21];

          v16 = [(LSProgressNotificationTimer *)v5 applications];
          v17 = [v16 allObjects];
          [v15 applicationInstallsDidChange:v17];

          objc_autoreleasePoolPop(v13);
          ++v11;
        }

        while (v9 != v11);
        v9 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    [(LSProgressNotificationTimer *)v5 clear];
    MEMORY[0x1865D7C50]([(LSProgressNotificationTimer *)v5 setTimer:0]);
  }

  objc_sync_exit(v5);

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

- (void)setAppObserverSelector:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_appObserverSelector = v3;
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