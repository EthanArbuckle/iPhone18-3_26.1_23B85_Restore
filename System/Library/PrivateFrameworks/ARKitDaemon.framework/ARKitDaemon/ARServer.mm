@interface ARServer
- (ARServer)initWithDaemonConfiguration:(id)a3 spawnTime:(id)a4 sessionUUID:(id)a5 watchdogMonitor:(id)a6 executionManager:(id)a7;
- (BOOL)_addServices:(id)a3;
- (BOOL)_updateAlgorithmConfigurationWithServices:(id)a3;
- (BOOL)_updateWithServices:(id)a3 error:(id *)a4;
- (BOOL)commitServices:(id)a3;
- (BOOL)servicesIsEmpty;
- (id)_peerServicesOfService:(id)a3;
- (id)listenerEndPointForServiceNamed:(id)a3;
- (id)service:(id)a3 peerServiceOfType:(Class)a4;
- (id)statusDictionaryWithWaitEndOfTransition:(BOOL)a3;
- (id)statusStringWithWaitEndOfTransition:(BOOL)a3;
- (int64_t)numberOfActiveConnectionsForService:(id)a3;
- (void)_configureServiceForExecution:(id)a3;
- (void)_logDaemonStatus;
- (void)_removeService:(id)a3;
- (void)_removeServiceFromServicesByClass:(id)a3;
- (void)_setupUserProfile;
- (void)_updateServicesByPID;
- (void)dealloc;
- (void)didDiscoverControl:(id)a3;
- (void)didDiscoverService:(id)a3;
- (void)invalidate;
- (void)serviceDidInterrupt:(id)a3;
- (void)serviceDidInvalidate:(id)a3;
- (void)setServices:(id)a3;
@end

@implementation ARServer

- (ARServer)initWithDaemonConfiguration:(id)a3 spawnTime:(id)a4 sessionUUID:(id)a5 watchdogMonitor:(id)a6 executionManager:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = _ARLogDaemon_6();
  if (os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23D391000, v18, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ARServerInitialization", &unk_23D3A2247, buf, 2u);
  }

  v39.receiver = self;
  v39.super_class = ARServer;
  v19 = [(ARServer *)&v39 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_daemonConfiguration, a3);
    objc_storeStrong(&v20->_spawnTime, a4);
    objc_storeStrong(&v20->_sessionUUID, a5);
    v21 = objc_opt_new();
    services = v20->_services;
    v20->_services = v21;

    v23 = objc_opt_new();
    servicesByClass = v20->_servicesByClass;
    v20->_servicesByClass = v23;

    v25 = objc_opt_new();
    servicesByPID = v20->_servicesByPID;
    v20->_servicesByPID = v25;

    servicesBeingAdded = v20->_servicesBeingAdded;
    v20->_servicesBeingAdded = MEMORY[0x277CBEBF8];

    v20->_servicesLock._os_unfair_lock_opaque = 0;
    v20->_batchedServicesLock._os_unfair_lock_opaque = 0;
    v28 = ARCreateFixedPriorityDispatchQueue();
    serviceQueue = v20->_serviceQueue;
    v20->_serviceQueue = v28;

    [v16 addQueue:v20->_serviceQueue hangPolicy:0];
    v30 = [MEMORY[0x277CBEB18] array];
    batchedServices = v20->_batchedServices;
    v20->_batchedServices = v30;

    v32 = dispatch_semaphore_create(0);
    batchedServicesConfiguredSemaphore = v20->_batchedServicesConfiguredSemaphore;
    v20->_batchedServicesConfiguredSemaphore = v32;

    v34 = objc_alloc_init(MEMORY[0x277CE5248]);
    statusLogger = v20->_statusLogger;
    v20->_statusLogger = v34;

    [(ARServer *)v20 _setupUserProfile];
    [(ARServer *)v20 _createLocalServices];
    v36 = [[ARControlListener alloc] initWithDelegate:v20 controlClass:[(ARDaemonConfiguration *)v20->_daemonConfiguration controlClass] isInProcess:[(ARDaemonConfiguration *)v20->_daemonConfiguration isInProcess]];
    controlListener = v20->_controlListener;
    v20->_controlListener = v36;
  }

  __95__ARServer_initWithDaemonConfiguration_spawnTime_sessionUUID_watchdogMonitor_executionManager___block_invoke();

  return v20;
}

void __95__ARServer_initWithDaemonConfiguration_spawnTime_sessionUUID_watchdogMonitor_executionManager___block_invoke()
{
  v0 = _ARLogDaemon_6();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_23D391000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ARServerInitialization", &unk_23D3A2247, v1, 2u);
  }
}

- (void)_setupUserProfile
{
  v3 = [MEMORY[0x277CE5390] defaultProfile];
  userProfile = self->_userProfile;
  self->_userProfile = v3;

  MEMORY[0x2821F96F8]();
}

- (void)dealloc
{
  [(ARServer *)self invalidate];
  v3.receiver = self;
  v3.super_class = ARServer;
  [(ARServer *)&v3 dealloc];
}

- (void)invalidate
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = _ARLogDaemon_6();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543618;
    v10 = v5;
    v11 = 2048;
    v12 = self;
    _os_log_impl(&dword_23D391000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Invalidating services", buf, 0x16u);
  }

  dispatch_assert_queue_not_V2(self->_serviceQueue);
  serviceQueue = self->_serviceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __22__ARServer_invalidate__block_invoke;
  block[3] = &unk_278BCBDD0;
  block[4] = self;
  dispatch_async_and_wait(serviceQueue, block);
  v7 = *MEMORY[0x277D85DE8];
}

void __22__ARServer_invalidate__block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 40));
  [*(*(a1 + 32) + 16) enumerateObjectsUsingBlock:&__block_literal_global_11];
  v2 = (*(a1 + 32) + 40);

  os_unfair_lock_unlock(v2);
}

- (BOOL)servicesIsEmpty
{
  os_unfair_lock_lock(&self->_servicesLock);
  v3 = [(NSMutableArray *)self->_services count]== 0;
  os_unfair_lock_unlock(&self->_servicesLock);
  return v3;
}

- (BOOL)_addServices:(id)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v44 = a3;
  dispatch_assert_queue_V2(self->_serviceQueue);
  v4 = _ARLogDaemon_6();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 138543874;
    v51 = v6;
    v52 = 2048;
    v53 = self;
    v54 = 2112;
    v55 = v44;
    _os_log_impl(&dword_23D391000, v4, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Adding services '%@'", buf, 0x20u);
  }

  v43 = [MEMORY[0x277CBEB18] arrayWithArray:v44];
  os_unfair_lock_lock(&self->_servicesLock);
  [(ARServer *)self setServicesBeingAdded:v44];
  if ([v43 count])
  {
    v39 = [v43 arrayByAddingObjectsFromArray:self->_services];
    v7 = MEMORY[0x277CCACA8];
    v8 = [v43 componentsJoinedByString:{@", "}];
    v40 = [v7 stringWithFormat:@"ARServer: Triggering algorithm update due to adding services: %@", v8];

    v9 = _ARLogGeneral_2();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v51 = v40;
      _os_log_impl(&dword_23D391000, v9, OS_LOG_TYPE_INFO, "%{public}@", buf, 0xCu);
    }

    v10 = _ARLogDaemon_6();
    if (os_signpost_enabled(v10))
    {
      *buf = 138543362;
      v51 = v40;
      _os_signpost_emit_with_name_impl(&dword_23D391000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ARKitTransitionUpdateWithServices", "%{public}@", buf, 0xCu);
    }

    v49 = 0;
    v41 = [(ARServer *)self _updateWithServices:v39 error:&v49];
    v42 = v49;
    if (v41)
    {
      v11 = [v39 mutableCopy];
      [(ARServer *)self setServices:v11];

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v12 = v43;
      v13 = [v12 countByEnumeratingWithState:&v45 objects:v58 count:16];
      if (v13)
      {
        v14 = *v46;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v46 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v45 + 1) + 8 * i);
            v17 = [(NSMutableDictionary *)self->_servicesByClass objectForKeyedSubscript:objc_opt_class()];
            if (!v17)
            {
              v17 = objc_opt_new();
              [(NSMutableDictionary *)self->_servicesByClass setObject:v17 forKeyedSubscript:objc_opt_class()];
            }

            [v17 addObject:v16];
            v18 = +[ARDaemonMetrics sharedDaemonMetrics];
            v19 = [objc_opt_class() serviceName];
            v20 = [v16 clientBundleIdentifier];
            [v18 reportServiceAddedWithName:v19 clientBundleIdentifier:v20];
          }

          v13 = [v12 countByEnumeratingWithState:&v45 objects:v58 count:16];
        }

        while (v13);
      }
    }

    __25__ARServer__addServices___block_invoke();

    v21 = v39;
  }

  else
  {
    if (ARShouldUseLogTypeError_onceToken_5 != -1)
    {
      [ARServer _addServices:];
    }

    v22 = ARShouldUseLogTypeError_internalOSVersion_5;
    v23 = _ARLogDaemon_6();
    v21 = v23;
    if (v22 == 1)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v26 = [(NSMutableDictionary *)self->_servicesByClass allKeys];
        *buf = 138544130;
        v51 = v25;
        v52 = 2048;
        v53 = self;
        v54 = 2112;
        v55 = v44;
        v56 = 2112;
        v57 = v26;
        _os_log_impl(&dword_23D391000, v21, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: No services to be added from %@ to %@", buf, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      v29 = [(NSMutableDictionary *)self->_servicesByClass allKeys];
      *buf = 138544130;
      v51 = v28;
      v52 = 2048;
      v53 = self;
      v54 = 2112;
      v55 = v44;
      v56 = 2112;
      v57 = v29;
      _os_log_impl(&dword_23D391000, v21, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: No services to be added from %@ to %@", buf, 0x2Au);
    }

    v42 = 0;
    LOBYTE(v41) = 0;
  }

  [(ARServer *)self setServicesBeingAdded:MEMORY[0x277CBEBF8]];
  os_unfair_lock_unlock(&self->_servicesLock);
  if (v42)
  {
    if (ARShouldUseLogTypeError_onceToken_5 != -1)
    {
      [ARServer _addServices:];
    }

    v30 = ARShouldUseLogTypeError_internalOSVersion_5;
    v31 = _ARLogDaemon_6();
    v32 = v31;
    if (v30 == 1)
    {
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        *buf = 138543874;
        v51 = v34;
        v52 = 2048;
        v53 = self;
        v54 = 2112;
        v55 = v42;
        _os_log_impl(&dword_23D391000, v32, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error setting up service: %@", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v35 = objc_opt_class();
      v36 = NSStringFromClass(v35);
      *buf = 138543874;
      v51 = v36;
      v52 = 2048;
      v53 = self;
      v54 = 2112;
      v55 = v42;
      _os_log_impl(&dword_23D391000, v32, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error setting up service: %@", buf, 0x20u);
    }

    LOBYTE(v41) = 0;
  }

  v37 = *MEMORY[0x277D85DE8];
  return v41;
}

void __25__ARServer__addServices___block_invoke()
{
  v0 = _ARLogDaemon_6();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_23D391000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ARKitTransitionUpdateWithServices", &unk_23D3A2247, v1, 2u);
  }
}

- (id)listenerEndPointForServiceNamed:(id)a3
{
  daemonConfiguration = self->_daemonConfiguration;
  v5 = a3;
  v6 = [-[ARDaemonConfiguration controlClass](daemonConfiguration "controlClass")];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = [(ARControlListener *)self->_controlListener endpoint];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)statusDictionaryWithWaitEndOfTransition:(BOOL)a3
{
  v44[1] = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CCAC38] processInfo];
  v6 = [v5 processName];

  v43 = @"pid";
  v7 = MEMORY[0x277CCABB0];
  v8 = [MEMORY[0x277CCAC38] processInfo];
  v9 = [v7 numberWithInt:{objc_msgSend(v8, "processIdentifier")}];
  v44[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:&v43 count:1];

  v41 = v6;
  v42 = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
  [v4 addEntriesFromDictionary:v11];

  ARGetSystemBootTime();
  v13 = v12;
  v14 = objc_opt_new();
  v15 = [v14 timeSinceSnapshot:self->_spawnTime];
  v16 = MEMORY[0x277CBEAA8];
  [(ARSystemTimeSnapshot *)self->_spawnTime upTimeIncludingSleepAndDriftCorrection];
  v18 = [v16 dateWithTimeIntervalSince1970:v13 + v17];
  v19 = [MEMORY[0x277CCACA8] ar_timestampWithDate:v18];
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_spawn_time", v6];
  [v4 setObject:v19 forKeyedSubscript:v20];

  v21 = MEMORY[0x277CCACA8];
  [v15 upTime];
  v22 = [v21 ar_hoursMinutesSecondsWithTimeInterval:?];
  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_up_time", v6];
  [v4 setObject:v22 forKeyedSubscript:v23];

  v24 = MEMORY[0x277CCACA8];
  [v15 upTimeIncludingSleep];
  v25 = [v24 ar_hoursMinutesSecondsWithTimeInterval:?];
  v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_up_time_including_sleep", v6];
  [v4 setObject:v25 forKeyedSubscript:v26];

  v27 = MEMORY[0x277CCACA8];
  [v15 upTimeIncludingSleepAndDriftCorrection];
  v28 = [v27 ar_hoursMinutesSecondsWithTimeInterval:?];
  v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_up_time_including_sleep_and_drift_correction", v6];
  [v4 setObject:v28 forKeyedSubscript:v29];

  v30 = MEMORY[0x277CCACA8];
  v31 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v13];
  v32 = [v30 ar_timestampWithDate:v31];
  [v4 setObject:v32 forKeyedSubscript:@"system_boot_time"];

  v33 = MEMORY[0x277CCACA8];
  [v14 upTime];
  v34 = [v33 ar_hoursMinutesSecondsWithTimeInterval:?];
  [v4 setObject:v34 forKeyedSubscript:@"system_up_time"];

  v35 = MEMORY[0x277CCACA8];
  [v14 upTimeIncludingSleep];
  v36 = [v35 ar_hoursMinutesSecondsWithTimeInterval:?];
  [v4 setObject:v36 forKeyedSubscript:@"system_up_time_including_sleep"];

  v37 = MEMORY[0x277CCACA8];
  [v14 upTimeIncludingSleepAndDriftCorrection];
  v38 = [v37 ar_hoursMinutesSecondsWithTimeInterval:?];
  [v4 setObject:v38 forKeyedSubscript:@"system_up_time_including_sleep_and_drift_correction"];

  v39 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)statusStringWithWaitEndOfTransition:(BOOL)a3
{
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CCAC38] processInfo];
  v6 = [v5 processName];

  ARGetSystemBootTime();
  v8 = v7;
  v9 = objc_opt_new();
  v10 = [v9 timeSinceSnapshot:self->_spawnTime];
  v11 = MEMORY[0x277CBEAA8];
  [(ARSystemTimeSnapshot *)self->_spawnTime upTimeIncludingSleepAndDriftCorrection];
  v13 = [v11 dateWithTimeIntervalSince1970:v8 + v12];
  v14 = [MEMORY[0x277CCAC38] processInfo];
  [v4 appendFormat:@"%@ pid: %d\n", v6, objc_msgSend(v14, "processIdentifier")];

  v15 = [MEMORY[0x277CCACA8] ar_timestampWithDate:v13];
  [v4 appendFormat:@"%@ spawn time: %@\n", v6, v15];

  v16 = MEMORY[0x277CCACA8];
  [v10 upTime];
  v17 = [v16 ar_hoursMinutesSecondsWithTimeInterval:?];
  [v4 appendFormat:@"%@ up time: %@\n", v6, v17];

  v18 = MEMORY[0x277CCACA8];
  [v10 upTimeIncludingSleep];
  v19 = [v18 ar_hoursMinutesSecondsWithTimeInterval:?];
  [v4 appendFormat:@"%@ up time (including sleep): %@\n", v6, v19];

  v20 = MEMORY[0x277CCACA8];
  [v10 upTimeIncludingSleepAndDriftCorrection];
  v21 = [v20 ar_hoursMinutesSecondsWithTimeInterval:?];
  [v4 appendFormat:@"%@ up time (including sleep and drift correction): %@\n", v6, v21];

  v22 = MEMORY[0x277CCACA8];
  v23 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v8];
  v24 = [v22 ar_timestampWithDate:v23];
  [v4 appendFormat:@"System boot time: %@\n", v24];

  v25 = MEMORY[0x277CCACA8];
  [v9 upTime];
  v26 = [v25 ar_hoursMinutesSecondsWithTimeInterval:?];
  [v4 appendFormat:@"System up time: %@\n", v26];

  v27 = MEMORY[0x277CCACA8];
  [v9 upTimeIncludingSleep];
  v28 = [v27 ar_hoursMinutesSecondsWithTimeInterval:?];
  [v4 appendFormat:@"System up time (including sleep): %@\n", v28];

  v29 = MEMORY[0x277CCACA8];
  [v9 upTimeIncludingSleepAndDriftCorrection];
  v30 = [v29 ar_hoursMinutesSecondsWithTimeInterval:?];
  [v4 appendFormat:@"System up time (including sleep and drift correction): %@\n", v30];

  return v4;
}

- (id)service:(id)a3 peerServiceOfType:(Class)a4
{
  v5 = [(ARServer *)self _peerServicesOfService:a3];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__ARServer_service_peerServiceOfType___block_invoke;
  v8[3] = &__block_descriptor_40_e32_B32__0__ARDaemonService_8Q16_B24lu32l8;
  v8[4] = a4;
  v6 = [v5 ar_firstObjectPassingTest:v8];

  return v6;
}

uint64_t __38__ARServer_service_peerServiceOfType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isMemberOfClass:*(a1 + 32)])
  {
    v4 = [v3 isActive];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)numberOfActiveConnectionsForService:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_servicesLock);
  v5 = [objc_opt_class() serviceName];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  services = self->_services;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__ARServer_numberOfActiveConnectionsForService___block_invoke;
  v10[3] = &unk_278BCBE18;
  v7 = v5;
  v11 = v7;
  v12 = &v13;
  [(NSMutableArray *)services enumerateObjectsUsingBlock:v10];
  v8 = v14[3];

  _Block_object_dispose(&v13, 8);
  os_unfair_lock_unlock(&self->_servicesLock);

  return v8;
}

void __48__ARServer_numberOfActiveConnectionsForService___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() serviceName];
  LODWORD(v2) = [v2 isEqualToString:v3];

  if (v2)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

- (id)_peerServicesOfService:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_servicesLock);
  v5 = objc_opt_new();
  services = self->_services;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __35__ARServer__peerServicesOfService___block_invoke;
  v12[3] = &unk_278BCBE40;
  v7 = v4;
  v13 = v7;
  v8 = v5;
  v14 = v8;
  [(NSMutableArray *)services enumerateObjectsUsingBlock:v12];
  v9 = v14;
  v10 = v8;

  os_unfair_lock_unlock(&self->_servicesLock);

  return v10;
}

uint64_t __35__ARServer__peerServicesOfService___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) != v3)
  {
    v7 = v3;
    v5 = [v3 clientProcessIdentifier];
    v3 = [*(a1 + 32) clientProcessIdentifier];
    v4 = v7;
    if (v5 == v3)
    {
      v3 = [*(a1 + 40) addObject:v7];
      v4 = v7;
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (BOOL)_updateWithServices:(id)a3 error:(id *)a4
{
  dispatch_assert_queue_V2(self->_serviceQueue);
  [(ARServer *)self _logDaemonStatus];
  return 1;
}

- (void)_removeService:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_serviceQueue);
  v5 = _ARLogDaemon_6();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138543874;
    v30 = v7;
    v31 = 2048;
    v32 = self;
    v33 = 2112;
    v34 = v4;
    _os_log_impl(&dword_23D391000, v5, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Removing service '%@'", buf, 0x20u);
  }

  os_unfair_lock_lock(&self->_servicesLock);
  [(ARServer *)self setServiceBeingRemoved:v4];
  v8 = [(NSMutableArray *)self->_services mutableCopy];
  if ([v8 containsObject:v4])
  {
    [v8 removeObject:v4];
  }

  else
  {
    v9 = _ARLogDaemon_6();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v4 shortenedServiceNameForLogging];
      *buf = 138543874;
      v30 = v11;
      v31 = 2048;
      v32 = self;
      v33 = 2112;
      v34 = v12;
      _os_log_impl(&dword_23D391000, v9, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Tried to remove service %@, but it was not found in active services", buf, 0x20u);
    }
  }

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"ARServer: Triggering algorithm update due to the removal of a service: %@", v4];
  v14 = _ARLogGeneral_2();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v30 = v13;
    _os_log_impl(&dword_23D391000, v14, OS_LOG_TYPE_INFO, "%{public}@", buf, 0xCu);
  }

  v15 = _ARLogDaemon_6();
  if (os_signpost_enabled(v15))
  {
    *buf = 138543362;
    v30 = v13;
    _os_signpost_emit_with_name_impl(&dword_23D391000, v15, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ARKitTransitionUpdateWithServices", "%{public}@", buf, 0xCu);
  }

  v28 = 0;
  v16 = [(ARServer *)self _updateWithServices:v8 error:&v28];
  v17 = v28;
  if (v16)
  {
    [(ARServer *)self setServices:v8];
    [(ARServer *)self _removeServiceFromServicesByClass:v4];
    v18 = +[ARDaemonMetrics sharedDaemonMetrics];
    v19 = [objc_opt_class() serviceName];
    v20 = [v4 clientBundleIdentifier];
    [v18 reportServiceRemovedWithName:v19 clientBundleIdentifier:v20];
  }

  else
  {
    if (ARShouldUseLogTypeError_onceToken_5 != -1)
    {
      [ARServer _addServices:];
    }

    v21 = ARShouldUseLogTypeError_internalOSVersion_5;
    v22 = _ARLogDaemon_6();
    v18 = v22;
    if (v21 == 1)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        *buf = 138544130;
        v30 = v24;
        v31 = 2048;
        v32 = self;
        v33 = 2112;
        v34 = v4;
        v35 = 2112;
        v36 = v17;
        _os_log_impl(&dword_23D391000, v18, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error removing service %@: %@", buf, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      *buf = 138544130;
      v30 = v26;
      v31 = 2048;
      v32 = self;
      v33 = 2112;
      v34 = v4;
      v35 = 2112;
      v36 = v17;
      _os_log_impl(&dword_23D391000, v18, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error removing service %@: %@", buf, 0x2Au);
    }
  }

  [(ARServer *)self setServiceBeingRemoved:0];
  os_unfair_lock_unlock(&self->_servicesLock);
  __25__ARServer__addServices___block_invoke();

  v27 = *MEMORY[0x277D85DE8];
}

- (void)setServices:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_serviceQueue);
  if (os_unfair_lock_trylock(&self->_servicesLock))
  {
    os_unfair_lock_unlock(&self->_servicesLock);
  }

  else
  {
    objc_storeStrong(&self->_services, a3);
    [(ARServer *)self _updateServicesByPID];
  }
}

- (void)_updateServicesByPID
{
  dispatch_assert_queue_V2(self->_serviceQueue);
  if (os_unfair_lock_trylock(&self->_servicesLock))
  {

    os_unfair_lock_unlock(&self->_servicesLock);
  }

  else
  {
    v3 = objc_opt_new();
    services = self->_services;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __32__ARServer__updateServicesByPID__block_invoke;
    v8[3] = &unk_278BCBE68;
    v5 = v3;
    v9 = v5;
    [(NSMutableArray *)services enumerateObjectsUsingBlock:v8];
    servicesByPID = self->_servicesByPID;
    self->_servicesByPID = v5;
    v7 = v5;
  }
}

void __32__ARServer__updateServicesByPID__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCABB0];
  v4 = a2;
  v5 = [v4 connection];
  v9 = [v3 numberWithInt:{objc_msgSend(v5, "ar_remoteProcessIdentifier")}];

  v6 = [*(a1 + 32) objectForKeyedSubscript:v9];

  if (!v6)
  {
    v7 = objc_opt_new();
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v9];
  }

  v8 = [*(a1 + 32) objectForKeyedSubscript:v9];
  [v8 addObject:v4];
}

- (void)_removeServiceFromServicesByClass:(id)a3
{
  v6 = a3;
  v4 = [(NSMutableDictionary *)self->_servicesByClass objectForKeyedSubscript:objc_opt_class()];
  v5 = v4;
  if (v4)
  {
    [v4 removeObject:v6];
    if (![v5 count])
    {
      [(NSMutableDictionary *)self->_servicesByClass removeObjectForKey:objc_opt_class()];
    }
  }
}

- (void)didDiscoverService:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_serviceQueue);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v5 = _os_activity_create(&dword_23D391000, "Daemon service discovered", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v5, &v10);

  v6 = _ARLogDaemon_6();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 138543874;
    v12 = v8;
    v13 = 2048;
    v14 = self;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_23D391000, v6, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Service '%@' was discovered.", buf, 0x20u);
  }

  [v4 setDelegate:{self, v10.opaque[0], v10.opaque[1]}];
  [v4 setDataSource:self];
  [(ARServer *)self _configureServiceForExecution:v4];
  os_activity_scope_leave(&v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_configureServiceForExecution:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_serviceQueue);
  v5 = _ARLogDaemon_6();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138543874;
    *&buf[4] = v7;
    *&buf[12] = 2048;
    *&buf[14] = self;
    *&buf[22] = 2114;
    v31 = v4;
    _os_log_impl(&dword_23D391000, v5, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Configuring service '%{public}@' for execution", buf, 0x20u);
  }

  v8 = _ARLogDaemon_6();
  v9 = os_signpost_id_generate(v8);

  v10 = _ARLogDaemon_6();
  v11 = v10;
  if ((v9 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v4 clientProcessName];
    *buf = 138543618;
    *&buf[4] = v13;
    *&buf[12] = 2114;
    *&buf[14] = v14;
    _os_signpost_emit_with_name_impl(&dword_23D391000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "AddServiceWaitServiceQueue", "%{public}@(%{public}@)", buf, 0x16u);
  }

  objc_initWeak(&location, self);
  if (self->_numServicesToBatchCommit)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v31) = 0;
    serviceQueue = self->_serviceQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__ARServer__configureServiceForExecution___block_invoke;
    block[3] = &unk_278BCBE90;
    objc_copyWeak(&v28, &location);
    v16 = v4;
    v26 = v16;
    v27 = buf;
    dispatch_async_and_wait(serviceQueue, block);
    os_unfair_lock_lock_with_options();
    if (*(*&buf[8] + 24))
    {
      --self->_numServicesToBatchCommit;
    }

    else
    {
      [(NSMutableArray *)self->_batchedServices addObject:v16];
    }

    if ([(NSMutableArray *)self->_batchedServices count]>= self->_numServicesToBatchCommit)
    {
      dispatch_semaphore_signal(self->_batchedServicesConfiguredSemaphore);
    }

    os_unfair_lock_unlock(&self->_batchedServicesLock);
    v18 = _ARLogDaemon_6();
    v19 = v18;
    if ((v9 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *v24 = 0;
      _os_signpost_emit_with_name_impl(&dword_23D391000, v19, OS_SIGNPOST_INTERVAL_END, v9, "AddServiceWaitServiceQueue", &unk_23D3A2247, v24, 2u);
    }

    objc_destroyWeak(&v28);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v17 = self->_serviceQueue;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __42__ARServer__configureServiceForExecution___block_invoke_103;
    v21[3] = &unk_278BCBEB8;
    objc_copyWeak(v23, &location);
    v23[1] = v9;
    v22 = v4;
    dispatch_async_and_wait(v17, v21);

    objc_destroyWeak(v23);
  }

  objc_destroyWeak(&location);

  v20 = *MEMORY[0x277D85DE8];
}

void __42__ARServer__configureServiceForExecution___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = *(a1 + 32);
  if (([WeakRetained _shouldAddService:objc_opt_class() forPID:{objc_msgSend(v2, "clientProcessIdentifier")}] & 1) == 0)
  {
    v3 = [*(a1 + 32) clientService];
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE5178] code:501 userInfo:0];
    [v3 serviceConfiguredWithError:v4];

    [*(a1 + 32) invalidate];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void __42__ARServer__configureServiceForExecution___block_invoke_103(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = _ARLogDaemon_6();
  v4 = v3;
  v5 = *(a1 + 48);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23D391000, v4, OS_SIGNPOST_INTERVAL_END, v5, "AddServiceWaitServiceQueue", &unk_23D3A2247, buf, 2u);
  }

  v6 = *(a1 + 32);
  if ([WeakRetained _shouldAddService:objc_opt_class() forPID:{objc_msgSend(v6, "clientProcessIdentifier")}])
  {
    v7 = _ARLogDaemon_6();
    v8 = v7;
    v9 = *(a1 + 48);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      v10 = *(a1 + 32);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = [*(a1 + 32) clientProcessName];
      *buf = 138543618;
      v22 = v12;
      v23 = 2114;
      v24 = v13;
      _os_signpost_emit_with_name_impl(&dword_23D391000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v9, "AddService", "%{public}@(%{public}@)", buf, 0x16u);
    }

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __42__ARServer__configureServiceForExecution___block_invoke_104;
    v19[3] = &__block_descriptor_40_e5_v8__0l;
    v14 = *(a1 + 32);
    v19[4] = *(a1 + 48);
    v20 = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:{1, MEMORY[0x277D85DD0], 3221225472}];
    [WeakRetained _updateAlgorithmConfigurationWithServices:v15];

    __42__ARServer__configureServiceForExecution___block_invoke_104(v19);
  }

  else
  {
    v16 = [*(a1 + 32) clientService];
    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE5178] code:501 userInfo:0];
    [v16 serviceConfiguredWithError:v17];

    [*(a1 + 32) invalidate];
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __42__ARServer__configureServiceForExecution___block_invoke_104(uint64_t a1)
{
  v2 = _ARLogDaemon_6();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23D391000, v3, OS_SIGNPOST_INTERVAL_END, v4, "AddService", &unk_23D3A2247, v5, 2u);
  }
}

- (BOOL)commitServices:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_serviceQueue);
  v5 = _ARLogDaemon_6();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138543874;
    *&buf[4] = v7;
    *&buf[12] = 2048;
    *&buf[14] = self;
    *&buf[22] = 2114;
    v33 = v4;
    _os_log_impl(&dword_23D391000, v5, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Committing batched services: %{public}@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v33) = 0;
  v8 = [v4 count];
  self->_numServicesToBatchCommit = v8;
  if (v8)
  {
    v9 = _ARLogDaemon_6();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *v26 = 138543874;
      v27 = v11;
      v28 = 2048;
      v29 = self;
      v30 = 2114;
      v31 = v4;
      _os_log_impl(&dword_23D391000, v9, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Preparing to start sorted batched services: %{public}@", v26, 0x20u);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = v4;
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = *v22;
      do
      {
        v15 = 0;
        do
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v21 + 1) + 8 * v15++) _startService];
        }

        while (v13 != v15);
        v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }

    dispatch_semaphore_wait(self->_batchedServicesConfiguredSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    serviceQueue = self->_serviceQueue;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __27__ARServer_commitServices___block_invoke;
    v20[3] = &unk_278BCBEE0;
    v20[4] = self;
    v20[5] = buf;
    dispatch_async_and_wait(serviceQueue, v20);
  }

  v17 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);

  v18 = *MEMORY[0x277D85DE8];
  return v17 & 1;
}

void __27__ARServer_commitServices___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  os_unfair_lock_lock(v2 + 16);
  if ([*(*(a1 + 32) + 72) count])
  {
    v3 = *(a1 + 32);
    v4 = [v3[9] copy];
    *(*(*(a1 + 40) + 8) + 24) = [v3 _updateAlgorithmConfigurationWithServices:v4];

    [*(*(a1 + 32) + 72) removeAllObjects];
    *(*(a1 + 32) + 56) = 0;
  }

  else
  {
    if (ARShouldUseLogTypeError_onceToken_5 != -1)
    {
      __27__ARServer_commitServices___block_invoke_cold_1();
    }

    v5 = ARShouldUseLogTypeError_internalOSVersion_5;
    v6 = _ARLogDaemon_6();
    v7 = v6;
    if (v5 == 1)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 32);
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = *(a1 + 32);
        v17 = 138543618;
        v18 = v10;
        v19 = 2048;
        v20 = v11;
        _os_log_impl(&dword_23D391000, v7, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: No batched services available. Skipping algorithm configuration update.", &v17, 0x16u);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 32);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = *(a1 + 32);
      v17 = 138543618;
      v18 = v14;
      v19 = 2048;
      v20 = v15;
      _os_log_impl(&dword_23D391000, v7, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: No batched services available. Skipping algorithm configuration update.", &v17, 0x16u);
    }
  }

  os_unfair_lock_unlock(v2 + 16);
  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)_updateAlgorithmConfigurationWithServices:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_serviceQueue);
  v5 = [(ARServer *)self _addServices:v4];
  v6 = _ARLogGeneral_2();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138543874;
      v27 = v9;
      v28 = 2048;
      v29 = self;
      v30 = 2114;
      v31 = v4;
      _os_log_impl(&dword_23D391000, v6, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Updated algorithms for service: %{public}@", buf, 0x20u);
    }

    v10 = 0;
  }

  else
  {
    if (v7)
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138543874;
      v27 = v12;
      v28 = 2048;
      v29 = self;
      v30 = 2114;
      v31 = v4;
      _os_log_impl(&dword_23D391000, v6, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Failed to update algorithms for services: %{public}@", buf, 0x20u);
    }

    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE5178] code:501 userInfo:0];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = v4;
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      v17 = 0;
      do
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v21 + 1) + 8 * v17) clientService];
        [v18 serviceConfiguredWithError:v10];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v10 == 0;
}

- (void)didDiscoverControl:(id)a3
{
  v4 = a3;
  [v4 setServer:self];
  [v4 setStatusLogger:self];
}

- (void)serviceDidInvalidate:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_serviceQueue);
  v5 = _ARLogDaemon_6();
  v6 = os_signpost_id_generate(v5);

  v7 = _ARLogDaemon_6();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 138543362;
    v16 = v4;
    _os_signpost_emit_with_name_impl(&dword_23D391000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "TransitionQueueDelaySync", "service invalidated %{public}@", buf, 0xCu);
  }

  serviceQueue = self->_serviceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__ARServer_serviceDidInvalidate___block_invoke;
  block[3] = &unk_278BCBF08;
  v13 = v4;
  v14 = v6;
  block[4] = self;
  v10 = v4;
  dispatch_async_and_wait(serviceQueue, block);

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __33__ARServer_serviceDidInvalidate___block_invoke(uint64_t a1)
{
  v2 = _ARLogDaemon_6();
  v3 = v2;
  v4 = *(a1 + 48);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_23D391000, v3, OS_SIGNPOST_INTERVAL_END, v4, "TransitionQueueDelaySync", &unk_23D3A2247, v6, 2u);
  }

  return [*(a1 + 32) _removeService:*(a1 + 40)];
}

- (void)serviceDidInterrupt:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_serviceQueue);
  v5 = _ARLogDaemon_6();
  v6 = os_signpost_id_generate(v5);

  v7 = _ARLogDaemon_6();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 138543362;
    v16 = v4;
    _os_signpost_emit_with_name_impl(&dword_23D391000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "TransitionQueueDelaySync", "service interrupted %{public}@", buf, 0xCu);
  }

  serviceQueue = self->_serviceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__ARServer_serviceDidInterrupt___block_invoke;
  block[3] = &unk_278BCBF08;
  v13 = v4;
  v14 = v6;
  block[4] = self;
  v10 = v4;
  dispatch_async_and_wait(serviceQueue, block);

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __32__ARServer_serviceDidInterrupt___block_invoke(uint64_t a1)
{
  v2 = _ARLogDaemon_6();
  v3 = v2;
  v4 = *(a1 + 48);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_23D391000, v3, OS_SIGNPOST_INTERVAL_END, v4, "TransitionQueueDelaySync", &unk_23D3A2247, v6, 2u);
  }

  return [*(a1 + 32) _removeService:*(a1 + 40)];
}

- (void)_logDaemonStatus
{
  statusLogger = self->_statusLogger;
  v6 = [(ARServer *)self statusDictionaryWithWaitEndOfTransition:0];
  v4 = [MEMORY[0x277CCAC38] processInfo];
  v5 = [v4 processName];
  [(ARDaemonStatusLogger *)statusLogger logStatusUpdateWithDictionary:v6 forServerObject:self andProcessName:v5];
}

@end