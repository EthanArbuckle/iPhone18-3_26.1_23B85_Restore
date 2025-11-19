@interface ARDaemon
+ (id)_fullDescription;
+ (id)_runningDaemons;
+ (id)createAnonymousListenerDaemon;
+ (id)createAnonymousListenerDaemonWithReplayURL:(id)a3 replayEnableTelemetry:(BOOL)a4 deterministic:(BOOL)a5 replayDelegate:(id)a6 isDryRun:(BOOL)a7;
- (ARDaemon)initWithConfiguration:(id)a3 spawnTime:(id)a4 watchdogMonitor:(id)a5 graphScheduler:(id)a6 replayDelegate:(id)a7;
- (id)_fullDescription;
- (id)listenerEndPointForServiceNamed:(id)a3;
- (void)_heartbeat;
- (void)dealloc;
- (void)memoryPressureMonitor:(id)a3 didUpdateProcessMemoryPressureCondition:(int64_t)a4;
- (void)memoryPressureMonitor:(id)a3 didUpdateSystemMemoryPressureCondition:(int64_t)a4;
- (void)printInfo;
- (void)shutdown;
- (void)startWithServices:(id)a3;
@end

@implementation ARDaemon

+ (id)createAnonymousListenerDaemon
{
  v2 = objc_opt_class();

  return [v2 createAnonymousListenerDaemonWithReplayURL:0 deterministic:0 replayDelegate:0];
}

+ (id)createAnonymousListenerDaemonWithReplayURL:(id)a3 replayEnableTelemetry:(BOOL)a4 deterministic:(BOOL)a5 replayDelegate:(id)a6 isDryRun:(BOOL)a7
{
  v7 = a6;
  v8 = ARDaemonLocalAnonymousListenerDaemon();
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v11 = [ARDaemon alloc];
    v12 = objc_opt_new();
    v13 = objc_opt_new();
    v10 = [(ARDaemon *)v11 initWithConfiguration:v12 spawnTime:v13 watchdogMonitor:0 graphScheduler:0 replayDelegate:v7];
  }

  return v10;
}

- (ARDaemon)initWithConfiguration:(id)a3 spawnTime:(id)a4 watchdogMonitor:(id)a5 graphScheduler:(id)a6 replayDelegate:(id)a7
{
  v61 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = _ARLogDaemon_2();
  if (os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23D391000, v18, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ARDaemonInitialization", &unk_23D3A2247, buf, 2u);
  }

  v56.receiver = self;
  v56.super_class = ARDaemon;
  v19 = [(ARDaemon *)&v56 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_configuration, a3);
    objc_storeStrong(&v20->_spawnTime, a4);
    if (([(ARDaemonConfiguration *)v20->_configuration isInProcess]& 1) == 0)
    {
      v21 = dispatch_source_create(MEMORY[0x277D85D38], 0, 1uLL, MEMORY[0x277D85CD0]);
      heartbeatTimer = v20->_heartbeatTimer;
      v20->_heartbeatTimer = v21;

      v23 = v20->_heartbeatTimer;
      if (v23)
      {
        dispatch_source_set_timer(v23, 0, 0x3B9ACA00uLL, 0);
        objc_initWeak(buf, v20);
        v24 = v20->_heartbeatTimer;
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __90__ARDaemon_initWithConfiguration_spawnTime_watchdogMonitor_graphScheduler_replayDelegate___block_invoke_3;
        handler[3] = &unk_278BCBB68;
        objc_copyWeak(&v55, buf);
        dispatch_source_set_event_handler(v24, handler);
        objc_destroyWeak(&v55);
        objc_destroyWeak(buf);
      }

      else
      {
        if (ARShouldUseLogTypeError_onceToken_0 != -1)
        {
          [ARDaemon initWithConfiguration:spawnTime:watchdogMonitor:graphScheduler:replayDelegate:];
        }

        v25 = ARShouldUseLogTypeError_internalOSVersion_0;
        v26 = _ARLogDaemon_2();
        v27 = v26;
        if (v25 == 1)
        {
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v28 = objc_opt_class();
            v29 = NSStringFromClass(v28);
            *buf = 138543618;
            v58 = v29;
            v59 = 2048;
            v60 = v20;
            _os_log_impl(&dword_23D391000, v27, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to create the heartbeat timer", buf, 0x16u);
          }
        }

        else if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v30 = objc_opt_class();
          v31 = NSStringFromClass(v30);
          *buf = 138543618;
          v58 = v31;
          v59 = 2048;
          v60 = v20;
          _os_log_impl(&dword_23D391000, v27, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to create the heartbeat timer", buf, 0x16u);
        }
      }
    }

    v20->_isReplay = 0;
    v32 = objc_opt_new();
    sessionUUID = v20->_sessionUUID;
    v20->_sessionUUID = v32;

    v20->_lastDaemonHeartbeatEventReportedTimestamp = -1.79769313e308;
    runningRemoteServices = v20->_runningRemoteServices;
    v20->_runningRemoteServices = MEMORY[0x277CBEBF8];

    v35 = objc_opt_new();
    memoryPressureMonitor = v20->_memoryPressureMonitor;
    v20->_memoryPressureMonitor = v35;

    [(ARMemoryPressureMonitor *)v20->_memoryPressureMonitor setDelegate:v20];
    v37 = objc_opt_class();
    objc_sync_enter(v37);
    v38 = objc_autoreleasePoolPush();
    v39 = +[ARDaemon _runningDaemons];
    [_weakDaemons addPointer:v20];
    objc_autoreleasePoolPop(v38);
    objc_sync_exit(v37);

    v40 = _ARLogDaemon_2();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      *buf = 138543618;
      v58 = v42;
      v59 = 2048;
      v60 = v20;
      _os_log_impl(&dword_23D391000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Setting up server", buf, 0x16u);
    }

    v43 = objc_opt_new();
    [v15 updateStatus:6];
    v44 = [[ARServer alloc] initWithDaemonConfiguration:v13 spawnTime:v20->_spawnTime sessionUUID:v20->_sessionUUID watchdogMonitor:v15 executionManager:v43];
    server = v20->_server;
    v20->_server = v44;

    [v15 updateStatus:7];
    v46 = _ARLogDaemon_2();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v47 = objc_opt_class();
      v48 = NSStringFromClass(v47);
      *buf = 138543618;
      v58 = v48;
      v59 = 2048;
      v60 = v20;
      _os_log_impl(&dword_23D391000, v46, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Setting up listeners", buf, 0x16u);
    }

    v49 = v20->_server;
    v50 = [[ARDaemonServiceListener alloc] initWithDelegate:v49 watchdogMonitor:v15 isInProcess:[(ARDaemonConfiguration *)v20->_configuration isInProcess]];
    listener = v20->_listener;
    v20->_listener = v50;

    if ([(ARDaemonConfiguration *)v20->_configuration isInProcess])
    {
      [(ARDaemon *)v20 setLocalAnonymousListenerDaemon:v20];
    }

    v20->_state = 0;
  }

  __90__ARDaemon_initWithConfiguration_spawnTime_watchdogMonitor_graphScheduler_replayDelegate___block_invoke();

  v52 = *MEMORY[0x277D85DE8];
  return v20;
}

void __90__ARDaemon_initWithConfiguration_spawnTime_watchdogMonitor_graphScheduler_replayDelegate___block_invoke()
{
  v0 = _ARLogDaemon_2();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_23D391000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ARDaemonInitialization", &unk_23D3A2247, v1, 2u);
  }
}

void __90__ARDaemon_initWithConfiguration_spawnTime_watchdogMonitor_graphScheduler_replayDelegate___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _heartbeat];
}

- (void)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  runningRemoteServices = self->_runningRemoteServices;
  self->_runningRemoteServices = MEMORY[0x277CBEBF8];

  [(ARDaemon *)self shutdown];
  v4 = _ARLogDaemon_2();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 138543618;
    v10 = v6;
    v11 = 2048;
    v12 = self;
    _os_log_impl(&dword_23D391000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: dealloc", buf, 0x16u);
  }

  v8.receiver = self;
  v8.super_class = ARDaemon;
  [(ARDaemon *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)printInfo
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = _ARLogDaemon_2();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543618;
    v25 = v5;
    v26 = 2048;
    v27 = self;
    _os_log_impl(&dword_23D391000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Initialized with frameworks:", buf, 0x16u);
  }

  v19 = ARFrameworkVersions();
  v6 = [v19 allKeys];
  v7 = [v6 sortedArrayUsingSelector:sel_compare_];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = _ARLogDaemon_2();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = objc_opt_class();
          v16 = NSStringFromClass(v15);
          v17 = [v19 objectForKeyedSubscript:v13];
          *buf = 138544130;
          v25 = v16;
          v26 = 2048;
          v27 = self;
          v28 = 2112;
          v29 = v13;
          v30 = 2112;
          v31 = v17;
          _os_log_impl(&dword_23D391000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: %@ : %@", buf, 0x2Au);
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v10);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)shutdown
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = _ARLogDaemon_2();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v13 = 138543618;
    v14 = v5;
    v15 = 2048;
    v16 = self;
    _os_log_impl(&dword_23D391000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Shutting down", &v13, 0x16u);
  }

  v6 = ARDaemonLocalAnonymousListenerDaemon();

  if (v6 == self)
  {
    [(ARDaemon *)self setLocalAnonymousListenerDaemon:0];
  }

  listener = self->_listener;
  self->_listener = 0;

  [(ARServer *)self->_server invalidate];
  server = self->_server;
  self->_server = 0;

  heartbeatTimer = self->_heartbeatTimer;
  if (heartbeatTimer)
  {
    dispatch_source_cancel(heartbeatTimer);
    v10 = self->_heartbeatTimer;
    self->_heartbeatTimer = 0;
  }

  self->_state = 2;
  runningRemoteServices = self->_runningRemoteServices;
  self->_runningRemoteServices = MEMORY[0x277CBEBF8];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_heartbeat
{
  v35 = *MEMORY[0x277D85DE8];
  ARGetMemoryFootprint();
  v3 = objc_opt_new();
  v4 = [v3 timeSinceSnapshot:self->_spawnTime];
  v5 = +[ARDaemonMetrics sharedDaemonMetrics];
  [v5 reportMemoryFootprintInBytes:0];

  v6 = MEMORY[0x277CCACA8];
  [v3 upTimeIncludingSleepAndDriftCorrection];
  v7 = [v6 ar_hoursMinutesSecondsWithTimeInterval:?];
  v8 = MEMORY[0x277CCACA8];
  [v4 upTimeIncludingSleepAndDriftCorrection];
  v9 = [v8 ar_hoursMinutesSecondsWithTimeInterval:?];
  v10 = _ARLogDaemon_2();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    *buf = 138544642;
    v24 = v12;
    v25 = 2048;
    v26 = self;
    v27 = 2114;
    v28 = v7;
    v29 = 2114;
    v30 = v9;
    v31 = 2050;
    v32 = 0;
    v33 = 2050;
    v34 = 0;
    _os_log_impl(&dword_23D391000, v10, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Heartbeat - system up: {%{public}@}, daemon up: {%{public}@}, footprint: %{iec-bytes,public}llu, peak: %{iec-bytes,public}llu", buf, 0x3Eu);
  }

  if (self->_lastDaemonHeartbeatEventReportedTimestamp == -1.79769313e308 || ([v3 upTimeIncludingSleepAndDriftCorrection], v13 - self->_lastDaemonHeartbeatEventReportedTimestamp >= 60.0))
  {
    [v4 upTime];
    v15 = (v14 / 60.0);
    [v4 upTimeIncludingSleep];
    v17 = (v16 / 60.0);
    [v3 upTimeIncludingSleepAndDriftCorrection];
    v19 = (v18 / 60.0);
    v20 = +[ARDaemonMetrics sharedDaemonMetrics];
    [v20 reportDaemonHeartbeatForSessionUUID:self->_sessionUUID daemonUpTimeExcludingSleepMinutes:v15 daemonUpTimeIncludingSleepMinutes:v17 systemUpTimeMinutes:v19 memoryFootprintInBytes:0];

    [v3 upTimeIncludingSleepAndDriftCorrection];
    self->_lastDaemonHeartbeatEventReportedTimestamp = v21;
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)startWithServices:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ARLogDaemon_2();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138543618;
    v23 = v7;
    v24 = 2048;
    v25 = self;
    _os_log_impl(&dword_23D391000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Starting up", buf, 0x16u);
  }

  [(ARDaemon *)self printInfo];
  heartbeatTimer = self->_heartbeatTimer;
  if (heartbeatTimer)
  {
    dispatch_activate(heartbeatTimer);
  }

  v9 = [v4 copy];
  runningRemoteServices = self->_runningRemoteServices;
  self->_runningRemoteServices = v9;

  [(ARServer *)self->_server commitServices:self->_runningRemoteServices];
  self->_state = 1;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = self->_runningRemoteServices;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v17 + 1) + 8 * v15++) syncServiceWithTimeout:-1 callback:{&__block_literal_global_17, v17}];
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)listenerEndPointForServiceNamed:(id)a3
{
  v4 = a3;
  v5 = [(ARServer *)self->_server listenerEndPointForServiceNamed:v4];
  if (!v5)
  {
    v6 = [(ARDaemonServiceListener *)self->_listener listenerForServiceNamed:v4];
    v5 = [v6 endpoint];
  }

  return v5;
}

+ (id)_runningDaemons
{
  if (_runningDaemons_daemonsOnceToken != -1)
  {
    +[ARDaemon _runningDaemons];
  }

  [_weakDaemons ar_compactZeroedWeakPointers];
  v2 = _weakDaemons;

  return [v2 allObjects];
}

uint64_t __27__ARDaemon__runningDaemons__block_invoke()
{
  _weakDaemons = [MEMORY[0x277CCAC18] weakObjectsPointerArray];

  return MEMORY[0x2821F96F8]();
}

+ (id)_fullDescription
{
  v2 = +[ARDaemon _runningDaemons];
  if ([v2 count] < 2)
  {
    v4 = [v2 firstObject];
    v3 = [v4 _fullDescription];
  }

  else
  {
    v3 = [v2 description];
  }

  return v3;
}

- (id)_fullDescription
{
  v3 = MEMORY[0x277CCAB68];
  v4 = [(ARDaemon *)self description];
  v5 = [v3 stringWithFormat:@"%@\n", v4];

  v6 = [(ARServer *)self->_server _fullDescription];
  [v5 appendFormat:@"Server: %@\n", v6];

  return v5;
}

- (void)memoryPressureMonitor:(id)a3 didUpdateProcessMemoryPressureCondition:(int64_t)a4
{
  v21 = *MEMORY[0x277D85DE8];
  ARGetMemoryFootprint();
  v6 = _ARLogDaemon_2();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromARMemoryPressureCondition(a4);
    *buf = 138544386;
    v12 = v8;
    v13 = 2048;
    v14 = self;
    v15 = 2112;
    v16 = v9;
    v17 = 2050;
    v18 = 0;
    v19 = 2050;
    v20 = 0;
    _os_log_impl(&dword_23D391000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Process memory pressure condition: %@, footprint: %{iec-bytes,public}llu, peak: %{iec-bytes,public}llu", buf, 0x34u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)memoryPressureMonitor:(id)a3 didUpdateSystemMemoryPressureCondition:(int64_t)a4
{
  v21 = *MEMORY[0x277D85DE8];
  ARGetMemoryFootprint();
  v6 = _ARLogDaemon_2();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromARMemoryPressureCondition(a4);
    *buf = 138544386;
    v12 = v8;
    v13 = 2048;
    v14 = self;
    v15 = 2112;
    v16 = v9;
    v17 = 2050;
    v18 = 0;
    v19 = 2050;
    v20 = 0;
    _os_log_impl(&dword_23D391000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: System memory pressure condition: %@, footprint: %{iec-bytes,public}llu, peak: %{iec-bytes,public}llu", buf, 0x34u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end