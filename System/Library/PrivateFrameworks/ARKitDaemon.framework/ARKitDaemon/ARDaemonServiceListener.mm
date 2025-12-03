@interface ARDaemonServiceListener
- (ARDaemonServiceListener)initWithDelegate:(id)delegate watchdogMonitor:(id)monitor isInProcess:(BOOL)process requiredServiceNames:(id)names ignoredServiceNames:(id)serviceNames;
- (ARDaemonServiceListenerDelegate)delegate;
- (BOOL)addServiceByName:(id)name serviceClass:(Class)class;
- (BOOL)addServiceWithQueueByName:(id)name serviceClass:(Class)class;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)createService:(id)service;
- (id)listenerForServiceNamed:(id)named;
@end

@implementation ARDaemonServiceListener

- (ARDaemonServiceListener)initWithDelegate:(id)delegate watchdogMonitor:(id)monitor isInProcess:(BOOL)process requiredServiceNames:(id)names ignoredServiceNames:(id)serviceNames
{
  delegateCopy = delegate;
  monitorCopy = monitor;
  namesCopy = names;
  serviceNamesCopy = serviceNames;
  v32.receiver = self;
  v32.super_class = ARDaemonServiceListener;
  v16 = [(ARDaemonServiceListener *)&v32 init];
  v17 = v16;
  if (v16)
  {
    objc_storeWeak(&v16->_delegate, delegateCopy);
    v17->_isInProcess = process;
    v18 = objc_opt_new();
    xpcListeners = v17->_xpcListeners;
    v17->_xpcListeners = v18;

    v20 = objc_opt_new();
    serviceClasses = v17->_serviceClasses;
    v17->_serviceClasses = v20;

    v22 = ARCreateFixedPriorityDispatchQueue();
    serviceQueue = v17->_serviceQueue;
    v17->_serviceQueue = v22;

    [monitorCopy addQueue:v17->_serviceQueue hangPolicy:0];
    v24 = [namesCopy count] != 0;
    v25 = v17->_serviceQueue;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __113__ARDaemonServiceListener_initWithDelegate_watchdogMonitor_isInProcess_requiredServiceNames_ignoredServiceNames___block_invoke;
    v27[3] = &unk_278BCBD30;
    v31 = v24;
    v28 = namesCopy;
    v29 = v17;
    v30 = serviceNamesCopy;
    dispatch_sync(v25, v27);
  }

  return v17;
}

void __113__ARDaemonServiceListener_initWithDelegate_watchdogMonitor_isInProcess_requiredServiceNames_ignoredServiceNames___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  ARGetSubclassesForClass();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        v9 = [v7 performSelector:{sel_serviceName, v11}];
        if (v9)
        {
          if (*(a1 + 56) == 1)
          {
            if (([*(a1 + 32) containsObject:v9] & 1) == 0)
            {
              if (*(a1 + 56))
              {
                goto LABEL_12;
              }

              goto LABEL_10;
            }
          }

          else
          {
LABEL_10:
            if ([*(a1 + 48) containsObject:v9])
            {
              goto LABEL_12;
            }
          }

          [*(a1 + 40) addServiceByName:v9 serviceClass:v7];
        }

LABEL_12:

        objc_autoreleasePoolPop(v8);
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)listenerForServiceNamed:(id)named
{
  namedCopy = named;
  dispatch_assert_queue_not_V2(self->_serviceQueue);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  serviceQueue = self->_serviceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__ARDaemonServiceListener_listenerForServiceNamed___block_invoke;
  block[3] = &unk_278BCBD58;
  v10 = namedCopy;
  v11 = &v12;
  block[4] = self;
  v6 = namedCopy;
  dispatch_sync(serviceQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __51__ARDaemonServiceListener_listenerForServiceNamed___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)addServiceWithQueueByName:(id)name serviceClass:(Class)class
{
  nameCopy = name;
  dispatch_assert_queue_not_V2(self->_serviceQueue);
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  serviceQueue = self->_serviceQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__ARDaemonServiceListener_addServiceWithQueueByName_serviceClass___block_invoke;
  v10[3] = &unk_278BCBD80;
  v10[4] = self;
  v11 = nameCopy;
  v12 = &v14;
  classCopy = class;
  v8 = nameCopy;
  dispatch_sync(serviceQueue, v10);
  LOBYTE(self) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return self;
}

uint64_t __66__ARDaemonServiceListener_addServiceWithQueueByName_serviceClass___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) addServiceByName:*(a1 + 40) serviceClass:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)addServiceByName:(id)name serviceClass:(Class)class
{
  v32 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  dispatch_assert_queue_V2(self->_serviceQueue);
  v7 = _ARLogDaemon_5();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v24 = 138544130;
    v25 = v9;
    v26 = 2048;
    selfCopy3 = self;
    v28 = 2112;
    classCopy3 = class;
    v30 = 2112;
    v31 = nameCopy;
    _os_log_impl(&dword_23D391000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Adding listener for service: <%@:%@>", &v24, 0x2Au);
  }

  allKeys = [(NSMutableDictionary *)self->_serviceClasses allKeys];
  v11 = [allKeys containsObject:nameCopy];

  if (v11)
  {
    if (ARShouldUseLogTypeError_onceToken_3 != -1)
    {
      [ARDaemonServiceListener addServiceByName:serviceClass:];
    }

    v12 = ARShouldUseLogTypeError_internalOSVersion_3;
    v13 = _ARLogDaemon_5();
    v14 = v13;
    if (v12 == 1)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v24 = 138544130;
        v25 = v16;
        v26 = 2048;
        selfCopy3 = self;
        v28 = 2112;
        classCopy3 = class;
        v30 = 2112;
        v31 = nameCopy;
        v17 = "%{public}@ <%p>: Duplicate service names are not allowed: <%@:%@>";
        v18 = v14;
        v19 = OS_LOG_TYPE_ERROR;
LABEL_13:
        _os_log_impl(&dword_23D391000, v18, v19, v17, &v24, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v21 = objc_opt_class();
      v16 = NSStringFromClass(v21);
      v24 = 138544130;
      v25 = v16;
      v26 = 2048;
      selfCopy3 = self;
      v28 = 2112;
      classCopy3 = class;
      v30 = 2112;
      v31 = nameCopy;
      v17 = "Error: %{public}@ <%p>: Duplicate service names are not allowed: <%@:%@>";
      v18 = v14;
      v19 = OS_LOG_TYPE_INFO;
      goto LABEL_13;
    }
  }

  else
  {
    [(NSMutableDictionary *)self->_serviceClasses setObject:class forKey:nameCopy];
    if (self->_isInProcess)
    {
      anonymousListener = [MEMORY[0x277CCAE98] anonymousListener];
    }

    else
    {
      anonymousListener = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:nameCopy];
    }

    v14 = anonymousListener;
    [anonymousListener setDelegate:self];
    [v14 _setQueue:self->_serviceQueue];
    [(NSMutableDictionary *)self->_xpcListeners setObject:v14 forKey:nameCopy];
    [v14 resume];
  }

  v22 = *MEMORY[0x277D85DE8];
  return v11 ^ 1;
}

- (id)createService:(id)service
{
  v43 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  dispatch_assert_queue_V2(self->_serviceQueue);
  serviceClasses = self->_serviceClasses;
  serviceName = [serviceCopy serviceName];
  v7 = [(NSMutableDictionary *)serviceClasses objectForKey:serviceName];

  if (!v7)
  {
    if (ARShouldUseLogTypeError_onceToken_3 != -1)
    {
      [ARDaemonServiceListener createService:];
    }

    v14 = ARShouldUseLogTypeError_internalOSVersion_3;
    v15 = _ARLogDaemon_5();
    v8 = v15;
    if (v14 == 1)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        serviceName2 = [serviceCopy serviceName];
        v35 = 138543874;
        v36 = v17;
        v37 = 2048;
        selfCopy5 = self;
        v39 = 2112;
        v40 = serviceName2;
        v19 = "%{public}@ <%p>: Failed to find service class for service name: %@";
        v20 = v8;
        v21 = OS_LOG_TYPE_ERROR;
LABEL_18:
        _os_log_impl(&dword_23D391000, v20, v21, v19, &v35, 0x20u);
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v31 = objc_opt_class();
      v17 = NSStringFromClass(v31);
      serviceName2 = [serviceCopy serviceName];
      v35 = 138543874;
      v36 = v17;
      v37 = 2048;
      selfCopy5 = self;
      v39 = 2112;
      v40 = serviceName2;
      v19 = "Error: %{public}@ <%p>: Failed to find service class for service name: %@";
      v20 = v8;
      v21 = OS_LOG_TYPE_INFO;
      goto LABEL_18;
    }

    v13 = 0;
    goto LABEL_24;
  }

  v8 = [[v7 alloc] initWithConnection:serviceCopy];
  if (!v8)
  {
    if (ARShouldUseLogTypeError_onceToken_3 != -1)
    {
      [ARDaemonServiceListener createService:];
    }

    v22 = ARShouldUseLogTypeError_internalOSVersion_3;
    v23 = _ARLogDaemon_5();
    v24 = v23;
    if (v22 == 1)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        serviceName3 = [serviceCopy serviceName];
        v35 = 138543874;
        v36 = v26;
        v37 = 2048;
        selfCopy5 = self;
        v39 = 2112;
        v40 = serviceName3;
        v28 = "%{public}@ <%p>: Failed to create service for service name: %@";
        v29 = v24;
        v30 = OS_LOG_TYPE_ERROR;
LABEL_22:
        _os_log_impl(&dword_23D391000, v29, v30, v28, &v35, 0x20u);
      }
    }

    else if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v32 = objc_opt_class();
      v26 = NSStringFromClass(v32);
      serviceName3 = [serviceCopy serviceName];
      v35 = 138543874;
      v36 = v26;
      v37 = 2048;
      selfCopy5 = self;
      v39 = 2112;
      v40 = serviceName3;
      v28 = "Error: %{public}@ <%p>: Failed to create service for service name: %@";
      v29 = v24;
      v30 = OS_LOG_TYPE_INFO;
      goto LABEL_22;
    }

    v13 = 0;
    goto LABEL_24;
  }

  v9 = _ARLogDaemon_5();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    serviceName4 = [serviceCopy serviceName];
    v35 = 138544130;
    v36 = v11;
    v37 = 2048;
    selfCopy5 = self;
    v39 = 2112;
    v40 = v7;
    v41 = 2112;
    v42 = serviceName4;
    _os_log_impl(&dword_23D391000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Created %@ for service name: %@", &v35, 0x2Au);
  }

  v8 = v8;
  v13 = v8;
LABEL_24:

  v33 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v55 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  dispatch_assert_queue_V2(self->_serviceQueue);
  if (self->_isInProcess)
  {
    serviceName = [connectionCopy serviceName];

    if (!serviceName)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      allKeys = [(NSMutableDictionary *)self->_xpcListeners allKeys];
      v10 = [allKeys countByEnumeratingWithState:&v40 objects:v54 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v41;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v41 != v12)
            {
              objc_enumerationMutation(allKeys);
            }

            v14 = *(*(&v40 + 1) + 8 * i);
            v15 = [(NSMutableDictionary *)self->_xpcListeners objectForKeyedSubscript:v14];

            if (v15 == listenerCopy)
            {
              [connectionCopy setValue:v14 forKey:@"_serviceName"];
              goto LABEL_13;
            }
          }

          v11 = [allKeys countByEnumeratingWithState:&v40 objects:v54 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:
    }
  }

  v16 = _ARLogDaemon_5();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    ar_processName = [connectionCopy ar_processName];
    ar_remoteProcessIdentifier = [connectionCopy ar_remoteProcessIdentifier];
    serviceName2 = [connectionCopy serviceName];
    *buf = 138544386;
    v45 = v18;
    v46 = 2048;
    selfCopy4 = self;
    v48 = 2114;
    v49 = ar_processName;
    v50 = 1024;
    v51 = ar_remoteProcessIdentifier;
    v52 = 2114;
    v53 = serviceName2;
    _os_log_impl(&dword_23D391000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Listener received request from process: %{public}@ (%d) to accept connection for service: %{public}@", buf, 0x30u);
  }

  v22 = [(ARDaemonServiceListener *)self createService:connectionCopy];
  if (!v22)
  {
    if (ARShouldUseLogTypeError_onceToken_3 != -1)
    {
      [ARDaemonServiceListener addServiceByName:serviceClass:];
    }

    v28 = ARShouldUseLogTypeError_internalOSVersion_3;
    v29 = _ARLogDaemon_5();
    v30 = v29;
    if (v28 == 1)
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        serviceName3 = [connectionCopy serviceName];
        *buf = 138543874;
        v45 = v32;
        v46 = 2048;
        selfCopy4 = self;
        v48 = 2112;
        v49 = serviceName3;
        v34 = "%{public}@ <%p>: Failed to accept connection for service: %@";
        v35 = v30;
        v36 = OS_LOG_TYPE_ERROR;
LABEL_27:
        _os_log_impl(&dword_23D391000, v35, v36, v34, buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v37 = objc_opt_class();
      v32 = NSStringFromClass(v37);
      serviceName3 = [connectionCopy serviceName];
      *buf = 138543874;
      v45 = v32;
      v46 = 2048;
      selfCopy4 = self;
      v48 = 2112;
      v49 = serviceName3;
      v34 = "Error: %{public}@ <%p>: Failed to accept connection for service: %@";
      v35 = v30;
      v36 = OS_LOG_TYPE_INFO;
      goto LABEL_27;
    }

    goto LABEL_29;
  }

  v23 = _ARLogDaemon_5();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    serviceName4 = [connectionCopy serviceName];
    *buf = 138543874;
    v45 = v25;
    v46 = 2048;
    selfCopy4 = self;
    v48 = 2112;
    v49 = serviceName4;
    _os_log_impl(&dword_23D391000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Accepting connection for service: %@", buf, 0x20u);
  }

  delegate = [(ARDaemonServiceListener *)self delegate];
  [delegate didDiscoverService:v22];

  [connectionCopy resume];
LABEL_29:

  v38 = *MEMORY[0x277D85DE8];
  return v22 != 0;
}

- (ARDaemonServiceListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end