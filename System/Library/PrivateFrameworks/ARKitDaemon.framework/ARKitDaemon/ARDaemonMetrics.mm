@interface ARDaemonMetrics
+ (id)sharedDaemonMetrics;
- (ARDaemonMetrics)init;
- (BOOL)_removeServiceForClient:(id)client serviceName:(id)name;
- (void)_addServiceForClient:(id)client serviceName:(id)name;
- (void)_reportDaemonHeartbeatForSessionUUID:(id)d daemonUpTimeExcludingSleepMinutes:(unint64_t)minutes daemonUpTimeIncludingSleepMinutes:(unint64_t)sleepMinutes systemUpTimeMinutes:(unint64_t)timeMinutes memoryFootprintInBytes:(unint64_t)bytes;
- (void)reportMemoryFootprintInBytes:(unint64_t)bytes;
- (void)reportServiceAddedWithName:(id)name clientBundleIdentifier:(id)identifier;
- (void)reportServiceRemovedWithName:(id)name clientBundleIdentifier:(id)identifier;
@end

@implementation ARDaemonMetrics

- (ARDaemonMetrics)init
{
  v11.receiver = self;
  v11.super_class = ARDaemonMetrics;
  v2 = [(ARDaemonMetrics *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_peakMemoryUsageInMegabytes = 0;
    v4 = ARCreateNonFixedPriorityDispatchQueue();
    reportingQueue = v3->_reportingQueue;
    v3->_reportingQueue = v4;

    v6 = objc_opt_new();
    activeServiceCountPerClient = v3->_activeServiceCountPerClient;
    v3->_activeServiceCountPerClient = v6;

    v8 = objc_opt_new();
    allServicesUsedPerClient = v3->_allServicesUsedPerClient;
    v3->_allServicesUsedPerClient = v8;
  }

  return v3;
}

+ (id)sharedDaemonMetrics
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__ARDaemonMetrics_sharedDaemonMetrics__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedDaemonMetrics_onceToken != -1)
  {
    dispatch_once(&sharedDaemonMetrics_onceToken, block);
  }

  v2 = sharedDaemonMetrics_sharedARDaemonMetrics;

  return v2;
}

uint64_t __38__ARDaemonMetrics_sharedDaemonMetrics__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedDaemonMetrics_sharedARDaemonMetrics = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (void)reportMemoryFootprintInBytes:(unint64_t)bytes
{
  reportingQueue = self->_reportingQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__ARDaemonMetrics_reportMemoryFootprintInBytes___block_invoke;
  v4[3] = &unk_278BCBC68;
  v4[4] = self;
  v4[5] = bytes;
  dispatch_async(reportingQueue, v4);
}

uint64_t __48__ARDaemonMetrics_reportMemoryFootprintInBytes___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = vcvts_n_f32_u64(*(result + 40), 0xAuLL) * 0.00097656;
  if (*(v1 + 8) < v2)
  {
    *(v1 + 8) = v2;
  }

  return result;
}

- (void)reportServiceRemovedWithName:(id)name clientBundleIdentifier:(id)identifier
{
  nameCopy = name;
  identifierCopy = identifier;
  v8 = identifierCopy;
  if (identifierCopy)
  {
    reportingQueue = self->_reportingQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__ARDaemonMetrics_reportServiceRemovedWithName_clientBundleIdentifier___block_invoke;
    block[3] = &unk_278BCBC90;
    block[4] = self;
    v11 = identifierCopy;
    v12 = nameCopy;
    dispatch_async(reportingQueue, block);
  }
}

void __71__ARDaemonMetrics_reportServiceRemovedWithName_clientBundleIdentifier___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _removeServiceForClient:*(a1 + 40) serviceName:*(a1 + 48)];
  v3 = [*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)];

  if (!v3)
  {
    if (ARShouldUseLogTypeError_onceToken_1 != -1)
    {
      __71__ARDaemonMetrics_reportServiceRemovedWithName_clientBundleIdentifier___block_invoke_cold_1();
    }

    v11 = ARShouldUseLogTypeError_internalOSVersion_1;
    v12 = _ARLogDaemon_3();
    v13 = v12;
    if (v11 == 1)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = *(a1 + 32);
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v18 = *(a1 + 40);
        v17 = *(a1 + 48);
        v19 = *(a1 + 32);
        v29 = 138544130;
        v30 = v16;
        v31 = 2048;
        v32 = v19;
        v33 = 2112;
        v34 = v17;
        v35 = 2112;
        v36 = v18;
        v20 = "%{public}@ <%p>: Service '%@' removed for unknown client with ID: %@";
        v21 = v13;
        v22 = OS_LOG_TYPE_ERROR;
LABEL_15:
        _os_log_impl(&dword_23D391000, v21, v22, v20, &v29, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v23 = *(a1 + 32);
      v24 = objc_opt_class();
      v16 = NSStringFromClass(v24);
      v26 = *(a1 + 40);
      v25 = *(a1 + 48);
      v27 = *(a1 + 32);
      v29 = 138544130;
      v30 = v16;
      v31 = 2048;
      v32 = v27;
      v33 = 2112;
      v34 = v25;
      v35 = 2112;
      v36 = v26;
      v20 = "Error: %{public}@ <%p>: Service '%@' removed for unknown client with ID: %@";
      v21 = v13;
      v22 = OS_LOG_TYPE_INFO;
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  v4 = *(a1 + 32);
  if (v4[1] || ([v4 setCurrentMemoryFootprintAsPeak], *(*(a1 + 32) + 8)))
  {
    v5 = _ARLogDaemon_3();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v29 = 138543874;
      v30 = v8;
      v31 = 2048;
      v32 = v9;
      v33 = 2112;
      v34 = v10;
      _os_log_impl(&dword_23D391000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Flushing daemon metrics to CA for disconnected client with ID: %@", &v29, 0x20u);
    }

    [*(a1 + 32) reportCoreAnalyticsDaemonEventWithServiceName:*(a1 + 48) clientBundleIdentifier:*(a1 + 40) isServiceRemoved:1 isDisconnectingClient:v2];
    *(*(a1 + 32) + 8) = 0;
    if (v2)
    {
      [*(*(a1 + 32) + 24) removeObjectForKey:*(a1 + 40)];
      [*(*(a1 + 32) + 32) removeObjectForKey:*(a1 + 40)];
    }
  }

LABEL_17:
  v28 = *MEMORY[0x277D85DE8];
}

- (void)reportServiceAddedWithName:(id)name clientBundleIdentifier:(id)identifier
{
  nameCopy = name;
  identifierCopy = identifier;
  v8 = identifierCopy;
  if (identifierCopy)
  {
    reportingQueue = self->_reportingQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__ARDaemonMetrics_reportServiceAddedWithName_clientBundleIdentifier___block_invoke;
    block[3] = &unk_278BCBC90;
    block[4] = self;
    v11 = identifierCopy;
    v12 = nameCopy;
    dispatch_async(reportingQueue, block);
  }
}

void *__69__ARDaemonMetrics_reportServiceAddedWithName_clientBundleIdentifier___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _addServiceForClient:*(a1 + 40) serviceName:*(a1 + 48)];
  result = *(a1 + 32);
  if (result[1] || ([result setCurrentMemoryFootprintAsPeak], result = *(a1 + 32), result[1]))
  {
    result = [result reportCoreAnalyticsDaemonEventWithServiceName:*(a1 + 48) clientBundleIdentifier:*(a1 + 40) isServiceRemoved:0 isDisconnectingClient:0];
    *(*(a1 + 32) + 8) = 0;
  }

  return result;
}

- (void)_reportDaemonHeartbeatForSessionUUID:(id)d daemonUpTimeExcludingSleepMinutes:(unint64_t)minutes daemonUpTimeIncludingSleepMinutes:(unint64_t)sleepMinutes systemUpTimeMinutes:(unint64_t)timeMinutes memoryFootprintInBytes:(unint64_t)bytes
{
  v10 = (vcvts_n_f32_u64(bytes, 0xAuLL) * 0.00097656);
  dCopy = d;
  v17 = objc_opt_new();
  uUIDString = [dCopy UUIDString];

  [v17 setObject:uUIDString forKeyedSubscript:@"sessionUUID"];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:minutes];
  [v17 setObject:v13 forKeyedSubscript:@"daemonUpTimeExcludingSleepMinutes"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:sleepMinutes];
  [v17 setObject:v14 forKeyedSubscript:@"daemonUpTimeIncludingSleepMinutes"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:timeMinutes];
  [v17 setObject:v15 forKeyedSubscript:@"systemUpTimeMinutes"];

  v16 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
  [v17 setObject:v16 forKeyedSubscript:@"currentMemoryFootprint"];

  ARCoreAnalyticsEventCreateAndReport();
}

- (void)_addServiceForClient:(id)client serviceName:(id)name
{
  clientCopy = client;
  activeServiceCountPerClient = self->_activeServiceCountPerClient;
  nameCopy = name;
  v8 = [(NSMutableDictionary *)activeServiceCountPerClient objectForKey:clientCopy];

  if (!v8)
  {
    v9 = self->_activeServiceCountPerClient;
    zero = [MEMORY[0x277CCA980] zero];
    [(NSMutableDictionary *)v9 setObject:zero forKey:clientCopy];
  }

  v11 = self->_activeServiceCountPerClient;
  v12 = [(NSMutableDictionary *)v11 objectForKey:clientCopy];
  v13 = [MEMORY[0x277CCA980] one];
  v14 = [v12 decimalNumberByAdding:v13];
  [(NSMutableDictionary *)v11 setObject:v14 forKey:clientCopy];

  v15 = [(NSMutableDictionary *)self->_allServicesUsedPerClient objectForKey:clientCopy];

  if (!v15)
  {
    allServicesUsedPerClient = self->_allServicesUsedPerClient;
    v17 = objc_opt_new();
    [(NSMutableDictionary *)allServicesUsedPerClient setObject:v17 forKey:clientCopy];
  }

  v18 = [(NSMutableDictionary *)self->_allServicesUsedPerClient objectForKey:clientCopy];
  [v18 addObject:nameCopy];
}

- (BOOL)_removeServiceForClient:(id)client serviceName:(id)name
{
  clientCopy = client;
  v6 = [(NSMutableDictionary *)self->_activeServiceCountPerClient objectForKey:clientCopy];
  if (v6)
  {
    v7 = [MEMORY[0x277CCA980] one];
    v8 = [v6 decimalNumberBySubtracting:v7];

    [(NSMutableDictionary *)self->_activeServiceCountPerClient setObject:v8 forKey:clientCopy];
    v9 = [v8 intValue] < 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end