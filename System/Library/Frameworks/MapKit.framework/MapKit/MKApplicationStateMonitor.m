@interface MKApplicationStateMonitor
+ (id)sharedInstance;
- (BOOL)_applicationStateIsForegroundForTaskState:(unsigned __int8)a3;
- (MKApplicationStateMonitor)init;
- (id)_stringForTaskState:(unsigned __int8)a3;
- (void)_becomeActive;
- (void)_enterBackground;
- (void)_exitBackground;
- (void)_handleApplicationStateChangeForMonitor:(id)a3 handle:(id)a4 update:(id)a5 interestedPid:(int)a6;
- (void)_performSynchronouslyOnMainQueue:(id)a3;
- (void)_resignActive;
- (void)_setupProcessMonitorWithIdentifier:(id)a3 interestedPid:(int)a4;
- (void)dealloc;
- (void)setForceRunningBoardServicesMonitoring:(BOOL)a3;
- (void)startObserving;
- (void)stopObserving;
@end

@implementation MKApplicationStateMonitor

- (void)startObserving
{
  v37 = *MEMORY[0x1E69E9840];
  observerCount = self->_observerCount;
  self->_observerCount = observerCount + 1;
  v4 = MKGetApplicationStateMonitorLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = self->_observerCount;
    *buf = 134217984;
    *v34 = v5;
    _os_log_impl(&dword_1A2EA0000, v4, OS_LOG_TYPE_DEBUG, "Observer count increased to %lu", buf, 0xCu);
  }

  if (!observerCount)
  {
    if (self->_forceRunningBoardServicesMonitoring)
    {
      goto LABEL_17;
    }

    if (_shouldUseUIApplicationState_once != -1)
    {
      dispatch_once(&_shouldUseUIApplicationState_once, &__block_literal_global_101);
    }

    if (_shouldUseUIApplicationState_value != 1)
    {
LABEL_17:
      v17 = getpid();
      v16 = [MEMORY[0x1E69C75E0] identifierWithPid:v17];
      v32 = 0;
      v18 = [MEMORY[0x1E69C75D0] handleForIdentifier:v16 error:&v32];
      v19 = v32;
      v20 = [v18 currentState];
      v21 = [v20 taskState];

      [(MKApplicationStateMonitor *)self _setupProcessMonitorWithIdentifier:v16 interestedPid:v17];
      v22 = MKGetApplicationStateMonitorLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = [v18 bundle];
        v24 = [v23 identifier];
        *buf = 67240450;
        *v34 = v17;
        *&v34[4] = 2114;
        *&v34[6] = v24;
        _os_log_impl(&dword_1A2EA0000, v22, OS_LOG_TYPE_INFO, "Will start monitoring using RunningBoardServices (pid:%{public}d -> %{public}@)", buf, 0x12u);
      }

      v25 = [(MKApplicationStateMonitor *)self _applicationStateIsForegroundForTaskState:v21];
      self->_inBackground = !v25;
      self->_active = v25;
      v26 = [(MKApplicationStateMonitor *)self _stringForTaskState:v21];
      v27 = MKGetApplicationStateMonitorLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        if (self->_inBackground)
        {
          v28 = @"YES";
        }

        else
        {
          v28 = @"NO";
        }

        v29 = v28;
        if (self->_active)
        {
          v30 = @"YES";
        }

        else
        {
          v30 = @"NO";
        }

        v31 = v30;
        *buf = 138412802;
        *v34 = v26;
        *&v34[8] = 2112;
        *&v34[10] = v29;
        v35 = 2112;
        v36 = v31;
        _os_log_impl(&dword_1A2EA0000, v27, OS_LOG_TYPE_INFO, "Initial monitoring state (state:%@, inBackground:%@, active:%@)", buf, 0x20u);
      }
    }

    else
    {
      v6 = [MEMORY[0x1E69DC668] sharedApplication];
      self->_inBackground = [v6 applicationState] == 2;

      v7 = [MEMORY[0x1E69DC668] sharedApplication];
      self->_active = [v7 applicationState] == 0;

      v8 = MKGetApplicationStateMonitorLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        if (self->_inBackground)
        {
          v9 = @"YES";
        }

        else
        {
          v9 = @"NO";
        }

        v10 = v9;
        if (self->_active)
        {
          v11 = @"YES";
        }

        else
        {
          v11 = @"NO";
        }

        v12 = v11;
        *buf = 138412546;
        *v34 = v10;
        *&v34[8] = 2112;
        *&v34[10] = v12;
        _os_log_impl(&dword_1A2EA0000, v8, OS_LOG_TYPE_INFO, "Will start monitoring using UIApplicationState with initial state (inBackground:%@, active:%@)", buf, 0x16u);
      }

      v13 = [MEMORY[0x1E696AD88] defaultCenter];
      [v13 addObserver:self selector:sel__enterBackground name:*MEMORY[0x1E69DDAC8] object:0];

      v14 = [MEMORY[0x1E696AD88] defaultCenter];
      [v14 addObserver:self selector:sel__exitBackground name:*MEMORY[0x1E69DDBC0] object:0];

      v15 = [MEMORY[0x1E696AD88] defaultCenter];
      [v15 addObserver:self selector:sel__becomeActive name:*MEMORY[0x1E69DDAB0] object:0];

      v16 = [MEMORY[0x1E696AD88] defaultCenter];
      [v16 addObserver:self selector:sel__resignActive name:*MEMORY[0x1E69DDBC8] object:0];
    }
  }
}

+ (id)sharedInstance
{
  if (sharedInstance_once_37434 != -1)
  {
    dispatch_once(&sharedInstance_once_37434, &__block_literal_global_12_37435);
  }

  v3 = sharedInstance_singleton;

  return v3;
}

- (MKApplicationStateMonitor)init
{
  v3.receiver = self;
  v3.super_class = MKApplicationStateMonitor;
  result = [(MKApplicationStateMonitor *)&v3 init];
  if (result)
  {
    result->_isVisible = 1;
  }

  return result;
}

void __43__MKApplicationStateMonitor_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(MKApplicationStateMonitor);
  v1 = sharedInstance_singleton;
  sharedInstance_singleton = v0;
}

- (void)_exitBackground
{
  inBackground = self->_inBackground;
  v4 = MKGetApplicationStateMonitorLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (inBackground)
  {
    if (v5)
    {
      *v6 = 0;
      _os_log_impl(&dword_1A2EA0000, v4, OS_LOG_TYPE_INFO, "Will exit background", v6, 2u);
    }

    self->_inBackground = 0;
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 postNotificationName:@"MKApplicationStateWillEnterForegroundNotification" object:self];
  }

  else if (v5)
  {
    *buf = 0;
    _os_log_impl(&dword_1A2EA0000, v4, OS_LOG_TYPE_INFO, "Asked to exit background, but not currently background", buf, 2u);
  }
}

- (void)_becomeActive
{
  active = self->_active;
  v4 = MKGetApplicationStateMonitorLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (active)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1A2EA0000, v4, OS_LOG_TYPE_INFO, "Asked to become active, but currently active", buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *v6 = 0;
      _os_log_impl(&dword_1A2EA0000, v4, OS_LOG_TYPE_INFO, "Will become active", v6, 2u);
    }

    self->_active = 1;
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 postNotificationName:@"MKApplicationStateDidBecomeActiveNotification" object:self];
  }
}

- (void)_resignActive
{
  active = self->_active;
  v4 = MKGetApplicationStateMonitorLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (active)
  {
    if (v5)
    {
      *v7 = 0;
      _os_log_impl(&dword_1A2EA0000, v4, OS_LOG_TYPE_INFO, "Will resign active", v7, 2u);
    }

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 postNotificationName:@"MKApplicationStateWillResignActiveNotification" object:self];

    self->_active = 0;
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1A2EA0000, v4, OS_LOG_TYPE_INFO, "Asked to resign active, but not currently active", buf, 2u);
    }
  }
}

- (void)_enterBackground
{
  inBackground = self->_inBackground;
  v4 = MKGetApplicationStateMonitorLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (inBackground)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1A2EA0000, v4, OS_LOG_TYPE_INFO, "Asked to enter background, but currently background", buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *v6 = 0;
      _os_log_impl(&dword_1A2EA0000, v4, OS_LOG_TYPE_INFO, "Will enter background", v6, 2u);
    }

    self->_inBackground = 1;
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 postNotificationName:@"MKApplicationStateDidEnterBackgroundNotification" object:self];
  }
}

- (id)_stringForTaskState:(unsigned __int8)a3
{
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v5 = @"background (task suspended)";
    }

    else if (a3 == 4)
    {
      if (self->_isVisible)
      {
        v7 = @"foreground (running)";
      }

      else
      {
        v7 = @"background (running)";
      }

      v5 = v7;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v4 = @"terminated";
    if (a3 != 1)
    {
      v4 = 0;
    }

    if (a3)
    {
      v5 = v4;
    }

    else
    {
      v5 = @"unknown";
    }
  }

  return v5;
}

- (void)stopObserving
{
  v14 = *MEMORY[0x1E69E9840];
  observerCount = self->_observerCount;
  if (observerCount)
  {
    v4 = observerCount - 1;
    self->_observerCount = v4;
    if (v4)
    {
      processMonitor = MKGetApplicationStateMonitorLog();
      if (os_log_type_enabled(processMonitor, OS_LOG_TYPE_DEBUG))
      {
        v6 = self->_observerCount;
        v12 = 134217984;
        v13 = v6;
        _os_log_impl(&dword_1A2EA0000, processMonitor, OS_LOG_TYPE_DEBUG, "Observer count dropped to %lu", &v12, 0xCu);
      }
    }

    else
    {
      if (self->_forceRunningBoardServicesMonitoring)
      {
        goto LABEL_12;
      }

      if (_shouldUseUIApplicationState_once != -1)
      {
        dispatch_once(&_shouldUseUIApplicationState_once, &__block_literal_global_101);
      }

      if (_shouldUseUIApplicationState_value != 1)
      {
LABEL_12:
        v11 = MKGetApplicationStateMonitorLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          LOWORD(v12) = 0;
          _os_log_impl(&dword_1A2EA0000, v11, OS_LOG_TYPE_INFO, "Will stop monitoring RunningBoardServices", &v12, 2u);
        }

        [(RBSProcessMonitor *)self->_processMonitor invalidate];
        processMonitor = self->_processMonitor;
        self->_processMonitor = 0;
      }

      else
      {
        v7 = MKGetApplicationStateMonitorLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          LOWORD(v12) = 0;
          _os_log_impl(&dword_1A2EA0000, v7, OS_LOG_TYPE_INFO, "Will stop monitoring UIApplicationState", &v12, 2u);
        }

        v8 = [MEMORY[0x1E696AD88] defaultCenter];
        [v8 removeObserver:self name:*MEMORY[0x1E69DDAC8] object:0];

        v9 = [MEMORY[0x1E696AD88] defaultCenter];
        [v9 removeObserver:self name:*MEMORY[0x1E69DDBC0] object:0];

        v10 = [MEMORY[0x1E696AD88] defaultCenter];
        [v10 removeObserver:self name:*MEMORY[0x1E69DDAB0] object:0];

        processMonitor = [MEMORY[0x1E696AD88] defaultCenter];
        [processMonitor removeObserver:self name:*MEMORY[0x1E69DDBC8] object:0];
      }
    }
  }
}

- (void)_performSynchronouslyOnMainQueue:(id)a3
{
  v3 = a3;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v3[2](v3);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__MKApplicationStateMonitor__performSynchronouslyOnMainQueue___block_invoke;
    block[3] = &unk_1E76CD4D0;
    v5 = v3;
    dispatch_sync(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_handleApplicationStateChangeForMonitor:(id)a3 handle:(id)a4 update:(id)a5 interestedPid:(int)a6
{
  v31 = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = [a4 pid];
  if (v10 == a6)
  {
    v11 = [v9 state];
    v12 = [v11 taskState];

    v13 = [(MKApplicationStateMonitor *)self isInBackground];
    v14 = !v13;
    v15 = [(MKApplicationStateMonitor *)self _applicationStateIsForegroundForTaskState:v12];
    v16 = [(MKApplicationStateMonitor *)self _stringForTaskState:v12];
    v17 = MKGetApplicationStateMonitorLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      if (v13)
      {
        v18 = @"NO";
      }

      else
      {
        v18 = @"YES";
      }

      v19 = v18;
      if (v15)
      {
        v20 = @"YES";
      }

      else
      {
        v20 = @"NO";
      }

      v21 = v20;
      *buf = 138412802;
      *v27 = v16;
      *&v27[8] = 2112;
      v28 = v19;
      v29 = 2112;
      v30 = v21;
      _os_log_impl(&dword_1A2EA0000, v17, OS_LOG_TYPE_INFO, "(state:%@, wasInForeground:%@, isInForeground:%@)", buf, 0x20u);
    }

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __97__MKApplicationStateMonitor__handleApplicationStateChangeForMonitor_handle_update_interestedPid___block_invoke;
    v23[3] = &unk_1E76CC808;
    v24 = v14;
    v25 = v15;
    v23[4] = self;
    [(MKApplicationStateMonitor *)self _performSynchronouslyOnMainQueue:v23];
  }

  else
  {
    v22 = v10;
    v16 = MKGetApplicationStateMonitorLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109376;
      *v27 = v22;
      *&v27[4] = 1024;
      *&v27[6] = a6;
      _os_log_impl(&dword_1A2EA0000, v16, OS_LOG_TYPE_DEBUG, "Received update for process we don't care about, ignoring (pid:%d, interested in %d)", buf, 0xEu);
    }
  }
}

uint64_t __97__MKApplicationStateMonitor__handleApplicationStateChangeForMonitor_handle_update_interestedPid___block_invoke(uint64_t result)
{
  v1 = result;
  if (*(result + 40) == 1)
  {
    if ((*(result + 41) & 1) == 0)
    {
      [*(result + 32) _resignActive];
      v2 = *(v1 + 32);

      return [v2 _enterBackground];
    }
  }

  else if (*(result + 41))
  {
    [*(result + 32) _exitBackground];
    v3 = *(v1 + 32);

    return [v3 _becomeActive];
  }

  return result;
}

- (void)_setupProcessMonitorWithIdentifier:(id)a3 interestedPid:(int)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  v7 = MEMORY[0x1E69C75F8];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__MKApplicationStateMonitor__setupProcessMonitorWithIdentifier_interestedPid___block_invoke;
  v11[3] = &unk_1E76CC7E0;
  v8 = v6;
  v12 = v8;
  objc_copyWeak(&v14, &location);
  v13 = self;
  v15 = a4;
  v9 = [v7 monitorWithConfiguration:v11];
  processMonitor = self->_processMonitor;
  self->_processMonitor = v9;

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __78__MKApplicationStateMonitor__setupProcessMonitorWithIdentifier_interestedPid___block_invoke(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E69C7630] descriptor];
  [v4 setEndowmentNamespaces:&unk_1F1612330];
  v5 = [MEMORY[0x1E69C7610] predicateMatchingIdentifier:*(a1 + 32)];
  [v3 setStateDescriptor:v4];
  v10[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [v3 setPredicates:v6];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__MKApplicationStateMonitor__setupProcessMonitorWithIdentifier_interestedPid___block_invoke_2;
  v7[3] = &unk_1E76CC7B8;
  objc_copyWeak(&v8, (a1 + 48));
  v7[4] = *(a1 + 40);
  v9 = *(a1 + 56);
  [v3 setUpdateHandler:v7];
  objc_destroyWeak(&v8);
}

void __78__MKApplicationStateMonitor__setupProcessMonitorWithIdentifier_interestedPid___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v11 = [v9 state];
    v12 = [v11 endowmentNamespaces];

    v13 = [v12 containsObject:@"com.apple.frontboard.visibility"];
    v14 = *(a1 + 32);
    objc_sync_enter(v14);
    if (WeakRetained[18] == v13)
    {
      objc_sync_exit(v14);
    }

    else
    {
      v15 = MKGetApplicationStateMonitorLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        if (WeakRetained[18])
        {
          v16 = @"YES";
        }

        else
        {
          v16 = @"NO";
        }

        v17 = v16;
        v18 = @"YES";
        if (!v13)
        {
          v18 = @"NO";
        }

        *buf = 138412546;
        v20 = v17;
        v22 = v17;
        v23 = 2112;
        v24 = v18;
        v19 = v24;
        _os_log_impl(&dword_1A2EA0000, v15, OS_LOG_TYPE_INFO, "RunningBoardServices visibility changed from %@ to %@", buf, 0x16u);
      }

      WeakRetained[18] = v13;
      objc_sync_exit(v14);

      [WeakRetained _handleApplicationStateChangeForMonitor:v7 handle:v8 update:v9 interestedPid:*(a1 + 48)];
    }
  }
}

- (BOOL)_applicationStateIsForegroundForTaskState:(unsigned __int8)a3
{
  if (a3 == 3)
  {
    return 0;
  }

  else
  {
    return a3 != 4 || self->_isVisible;
  }
}

- (void)setForceRunningBoardServicesMonitoring:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x1E69E9840];
  v5 = MKGetApplicationStateMonitorLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = @"NO";
    if (v3)
    {
      v6 = @"YES";
    }

    v7 = v6;
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_INFO, "setForceRunningBoardServicesMonitoring:%@", &v8, 0xCu);
  }

  self->_forceRunningBoardServicesMonitoring = v3;
}

- (void)dealloc
{
  [(RBSProcessMonitor *)self->_processMonitor invalidate];
  v3.receiver = self;
  v3.super_class = MKApplicationStateMonitor;
  [(MKApplicationStateMonitor *)&v3 dealloc];
}

@end