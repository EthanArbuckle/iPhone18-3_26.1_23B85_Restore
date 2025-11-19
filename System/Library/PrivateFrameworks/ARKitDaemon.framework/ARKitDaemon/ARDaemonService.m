@interface ARDaemonService
+ (int64_t)maximumConcurrentServicesPerClient;
- (ARDaemonService)initWithConnection:(id)a3;
- (ARDaemonService)initWithConnection:(id)a3 exportedInterface:(id)a4 remoteObjectInterface:(id)a5;
- (ARDaemonService)initWithRemoteService:(id)a3;
- (ARDaemonServiceDataSource)dataSource;
- (ARDaemonServiceDelegate)delegate;
- (id)initAsLocalService;
- (uint64_t)isAuthorized;
- (uint64_t)isDataAccessAllowed;
- (uint64_t)isHidFocused;
- (void)_commonInitWithProcessName:(id)a3 processIdentifier:(int)a4 bundleIdentifier:(id)a5;
- (void)beginDispatchChannelCreation;
- (void)beginRTChannelCreation;
- (void)interruptionHandler;
- (void)invalidate;
- (void)invalidateClient;
- (void)invalidationHandler;
- (void)setActive:(BOOL)a3;
- (void)startService:(id)a3;
@end

@implementation ARDaemonService

- (void)_commonInitWithProcessName:(id)a3 processIdentifier:(int)a4 bundleIdentifier:(id)a5
{
  v8 = a3;
  v9 = a5;
  clientProcessName = self->_clientProcessName;
  self->_clientProcessName = v8;
  v11 = v8;

  self->_clientProcessIdentifier = a4;
  clientBundleIdentifier = self->_clientBundleIdentifier;
  self->_clientBundleIdentifier = v9;
  v13 = v9;

  v16 = [objc_opt_class() serviceName];
  v14 = [v16 stringByReplacingOccurrencesOfString:@"com.apple.arkit.service." withString:&stru_284F65A90];
  shortenedServiceNameForLogging = self->_shortenedServiceNameForLogging;
  self->_shortenedServiceNameForLogging = v14;
}

- (ARDaemonService)initWithConnection:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([objc_opt_class() remoteServiceClass])
  {
    v5 = [objc_opt_class() remoteServiceClass];
    if (v5 != objc_opt_class())
    {
      v6 = [objc_msgSend(objc_opt_class() "remoteServiceClass")];
      v7 = [objc_msgSend(objc_opt_class() "remoteServiceClass")];
      v8 = v7;
      if (v6)
      {
        if (v7)
        {
          self = [(ARDaemonService *)self initWithConnection:v4 exportedInterface:v7 remoteObjectInterface:v6];
          v9 = self;
LABEL_33:

          goto LABEL_34;
        }

        if (ARShouldUseLogTypeError_onceToken_2 != -1)
        {
          [ARDaemonService initWithConnection:];
        }

        v29 = ARShouldUseLogTypeError_internalOSVersion_2;
        v30 = _ARLogDaemon_4();
        v23 = v30;
        if (v29 == 1)
        {
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v31 = objc_opt_class();
            v25 = NSStringFromClass(v31);
            v32 = [objc_opt_class() remoteServiceClass];
            v27 = NSStringFromClass(v32);
            v41 = 138543874;
            v42 = v25;
            v43 = 2048;
            v44 = self;
            v45 = 2112;
            v46 = v27;
            v28 = "%{public}@ <%p>: %@ does not define a daemon service interface. Implement the 'daemonServiceInterface'";
            goto LABEL_25;
          }

          goto LABEL_32;
        }

        if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          goto LABEL_32;
        }

        v37 = objc_opt_class();
        v25 = NSStringFromClass(v37);
        v38 = [objc_opt_class() remoteServiceClass];
        v27 = NSStringFromClass(v38);
        v41 = 138543874;
        v42 = v25;
        v43 = 2048;
        v44 = self;
        v45 = 2112;
        v46 = v27;
        v28 = "Error: %{public}@ <%p>: %@ does not define a daemon service interface. Implement the 'daemonServiceInterface'";
      }

      else
      {
        if (ARShouldUseLogTypeError_onceToken_2 != -1)
        {
          [ARDaemonService initWithConnection:];
        }

        v21 = ARShouldUseLogTypeError_internalOSVersion_2;
        v22 = _ARLogDaemon_4();
        v23 = v22;
        if (v21 == 1)
        {
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v24 = objc_opt_class();
            v25 = NSStringFromClass(v24);
            v26 = [objc_opt_class() remoteServiceClass];
            v27 = NSStringFromClass(v26);
            v41 = 138543874;
            v42 = v25;
            v43 = 2048;
            v44 = self;
            v45 = 2112;
            v46 = v27;
            v28 = "%{public}@ <%p>: %@ does not define a remote service interface. Implement the 'remoteServiceInterface'";
LABEL_25:
            v33 = v23;
            v34 = OS_LOG_TYPE_ERROR;
LABEL_31:
            _os_log_impl(&dword_23D391000, v33, v34, v28, &v41, 0x20u);
          }

LABEL_32:

          v9 = 0;
          goto LABEL_33;
        }

        if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          goto LABEL_32;
        }

        v35 = objc_opt_class();
        v25 = NSStringFromClass(v35);
        v36 = [objc_opt_class() remoteServiceClass];
        v27 = NSStringFromClass(v36);
        v41 = 138543874;
        v42 = v25;
        v43 = 2048;
        v44 = self;
        v45 = 2112;
        v46 = v27;
        v28 = "Error: %{public}@ <%p>: %@ does not define a remote service interface. Implement the 'remoteServiceInterface'";
      }

      v33 = v23;
      v34 = OS_LOG_TYPE_INFO;
      goto LABEL_31;
    }
  }

  if (ARShouldUseLogTypeError_onceToken_2 != -1)
  {
    [ARDaemonService initWithConnection:];
  }

  v10 = ARShouldUseLogTypeError_internalOSVersion_2;
  v11 = _ARLogDaemon_4();
  v6 = v11;
  if (v10 == 1)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v41 = 138543874;
      v42 = v13;
      v43 = 2048;
      v44 = self;
      v45 = 2112;
      v46 = v15;
      v16 = "%{public}@ <%p>: %@ does not define a remote service class. Implement the 'remoteServiceClass' function and point it to its remote";
      v17 = v6;
      v18 = OS_LOG_TYPE_ERROR;
LABEL_13:
      _os_log_impl(&dword_23D391000, v17, v18, v16, &v41, 0x20u);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v19 = objc_opt_class();
    v13 = NSStringFromClass(v19);
    v20 = objc_opt_class();
    v15 = NSStringFromClass(v20);
    v41 = 138543874;
    v42 = v13;
    v43 = 2048;
    v44 = self;
    v45 = 2112;
    v46 = v15;
    v16 = "Error: %{public}@ <%p>: %@ does not define a remote service class. Implement the 'remoteServiceClass' function and point it to its remote";
    v17 = v6;
    v18 = OS_LOG_TYPE_INFO;
    goto LABEL_13;
  }

  v9 = 0;
LABEL_34:

  v39 = *MEMORY[0x277D85DE8];
  return v9;
}

- (ARDaemonService)initWithConnection:(id)a3 exportedInterface:(id)a4 remoteObjectInterface:(id)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    v35.receiver = self;
    v35.super_class = ARDaemonService;
    v12 = [(ARDaemonService *)&v35 init];
    if (v12)
    {
      v13 = _os_activity_create(&dword_23D391000, "Daemon service", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
      v14 = *(v12 + 2);
      *(v12 + 2) = v13;

      [v9 setExportedObject:v12];
      [v9 setExportedInterface:v10];
      [v9 setRemoteObjectInterface:v11];
      objc_initWeak(&location, v12);
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __78__ARDaemonService_initWithConnection_exportedInterface_remoteObjectInterface___block_invoke;
      v32[3] = &unk_278BCBB68;
      objc_copyWeak(&v33, &location);
      [v9 setInterruptionHandler:v32];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __78__ARDaemonService_initWithConnection_exportedInterface_remoteObjectInterface___block_invoke_2;
      v30[3] = &unk_278BCBB68;
      objc_copyWeak(&v31, &location);
      [v9 setInvalidationHandler:v30];
      objc_storeStrong(v12 + 10, a3);
      v15 = ARCreateTransactionForService(v12);
      v16 = *(v12 + 1);
      *(v12 + 1) = v15;

      *(v12 + 32) = 1;
      v17 = [*(v12 + 10) ar_processName];
      v18 = [*(v12 + 10) ar_remoteProcessIdentifier];
      v19 = [*(v12 + 10) ar_processBundleIdentifier];
      [v12 _commonInitWithProcessName:v17 processIdentifier:v18 bundleIdentifier:v19];

      v20 = _ARLogGeneral_0();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v24 = *(v12 + 6);
        v23 = *(v12 + 7);
        v25 = *(v12 + 10);
        *buf = 138544387;
        *&buf[4] = v22;
        *&buf[12] = 2048;
        *&buf[14] = v12;
        v37 = 2114;
        v38 = v23;
        v39 = 2113;
        v40 = v24;
        v41 = 1024;
        v42 = v25;
        _os_log_impl(&dword_23D391000, v20, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Client connected: %{public}@ (%{private}@, %i)", buf, 0x30u);
      }

      *buf = 0;
      *&buf[8] = 0;
      v26 = _os_activity_create(&dword_23D391000, "Daemon service init", *(v12 + 2), OS_ACTIVITY_FLAG_DEFAULT);
      os_activity_scope_enter(v26, buf);

      os_activity_scope_leave(buf);
      objc_destroyWeak(&v31);
      objc_destroyWeak(&v33);
      objc_destroyWeak(&location);
    }

    self = v12;
    v27 = self;
  }

  else
  {
    v27 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

void __78__ARDaemonService_initWithConnection_exportedInterface_remoteObjectInterface___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained interruptionHandler];
}

void __78__ARDaemonService_initWithConnection_exportedInterface_remoteObjectInterface___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidationHandler];
}

- (id)initAsLocalService
{
  v10.receiver = self;
  v10.super_class = ARDaemonService;
  v2 = [(ARDaemonService *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAC38] processInfo];
    v4 = [v3 processName];
    v5 = [MEMORY[0x277CCAC38] processInfo];
    v6 = [v5 processIdentifier];
    v7 = [MEMORY[0x277CCA8D8] mainBundle];
    v8 = [v7 bundleIdentifier];
    [(ARDaemonService *)v2 _commonInitWithProcessName:v4 processIdentifier:v6 bundleIdentifier:v8];
  }

  return v2;
}

- (ARDaemonService)initWithRemoteService:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = ARDaemonService;
  v6 = [(ARDaemonService *)&v14 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CCAC38] processInfo];
    v8 = [v7 processName];
    v9 = [MEMORY[0x277CCAC38] processInfo];
    v10 = [v9 processIdentifier];
    v11 = [MEMORY[0x277CCA8D8] mainBundle];
    v12 = [v11 bundleIdentifier];
    [(ARDaemonService *)v6 _commonInitWithProcessName:v8 processIdentifier:v10 bundleIdentifier:v12];

    objc_storeStrong(&v6->_remoteService, a3);
  }

  return v6;
}

- (void)interruptionHandler
{
  v24 = *MEMORY[0x277D85DE8];
  v17.opaque[0] = 0;
  v17.opaque[1] = 0;
  v3 = _os_activity_create(&dword_23D391000, "Daemon service interrupted", self->_daemonServiceActivity, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v3, &v17);

  v4 = _ARLogGeneral_0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    clientProcessName = self->_clientProcessName;
    *buf = 138543874;
    v19 = v6;
    v20 = 2048;
    v21 = self;
    v22 = 2114;
    v23 = clientProcessName;
    _os_log_impl(&dword_23D391000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Daemon service interrupted: %{public}@", buf, 0x20u);
  }

  v8 = [(ARDaemonService *)self channel:v17.opaque[0]];
  v9 = v8 == 0;

  if (!v9)
  {
    v10 = [(ARDaemonService *)self channel];
    channel_rt_close();

    [(ARDaemonService *)self setChannel:0];
  }

  v11 = [(ARDaemonService *)self dispatchChannel];
  v12 = v11 == 0;

  if (!v12)
  {
    v13 = [(ARDaemonService *)self dispatchChannel];
    channel_rt_close();

    [(ARDaemonService *)self setDispatchChannel:0];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v15 = objc_loadWeakRetained(&self->_delegate);
    [v15 serviceDidInterrupt:self];
  }

  os_activity_scope_leave(&v17);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)invalidationHandler
{
  v24 = *MEMORY[0x277D85DE8];
  v17.opaque[0] = 0;
  v17.opaque[1] = 0;
  v3 = _os_activity_create(&dword_23D391000, "Daemon service invalidated", self->_daemonServiceActivity, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v3, &v17);

  v4 = _ARLogGeneral_0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    clientProcessName = self->_clientProcessName;
    *buf = 138543874;
    v19 = v6;
    v20 = 2048;
    v21 = self;
    v22 = 2114;
    v23 = clientProcessName;
    _os_log_impl(&dword_23D391000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Daemon service invalidated: %{public}@", buf, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 serviceDidInvalidate:{self, v17.opaque[0], v17.opaque[1]}];
  }

  v10 = [(ARDaemonService *)self channel:v17.opaque[0]];
  v11 = v10 == 0;

  if (!v11)
  {
    v12 = [(ARDaemonService *)self channel];
    channel_rt_close();

    [(ARDaemonService *)self setChannel:0];
  }

  v13 = [(ARDaemonService *)self dispatchChannel];
  v14 = v13 == 0;

  if (!v14)
  {
    v15 = [(ARDaemonService *)self dispatchChannel];
    channel_rt_close();

    [(ARDaemonService *)self setDispatchChannel:0];
  }

  [(ARDaemonService *)self setConnection:0];
  os_activity_scope_leave(&v17);
  v16 = *MEMORY[0x277D85DE8];
}

+ (int64_t)maximumConcurrentServicesPerClient
{
  if (maximumConcurrentServicesPerClient_onceToken != -1)
  {
    +[ARDaemonService maximumConcurrentServicesPerClient];
  }

  return maximumConcurrentServicesPerClient_maximum;
}

uint64_t __53__ARDaemonService_maximumConcurrentServicesPerClient__block_invoke()
{
  result = [MEMORY[0x277CE52D8] integerForKey:*MEMORY[0x277CE51C8]];
  maximumConcurrentServicesPerClient_maximum = result;
  return result;
}

- (void)invalidateClient
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = _ARLogGeneral_0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v8 = 138543618;
    v9 = v5;
    v10 = 2048;
    v11 = self;
    _os_log_impl(&dword_23D391000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Force invalidating client", &v8, 0x16u);
  }

  v6 = [(ARDaemonService *)self clientService];
  [v6 invalidate];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(ARDaemonService *)self connection];
  [(ARDaemonService *)self setConnection:0];
  [v3 invalidate];
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v4 = _os_activity_create(&dword_23D391000, "Daemon service invalidate", self->_daemonServiceActivity, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v4, &v10);

  v5 = _ARLogGeneral_0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [objc_opt_class() serviceName];
    *buf = 138543874;
    v12 = v7;
    v13 = 2048;
    v14 = self;
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&dword_23D391000, v5, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Invalidate: %{public}@", buf, 0x20u);
  }

  os_activity_scope_leave(&v10);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)setActive:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x277D85DE8];
  v5 = _ARLogGeneral_0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = @"NO";
    v10 = 138543874;
    v11 = v7;
    if (v3)
    {
      v8 = @"YES";
    }

    v12 = 2048;
    v13 = self;
    v14 = 2114;
    v15 = v8;
    _os_log_impl(&dword_23D391000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Setting active to: %{public}@", &v10, 0x20u);
  }

  self->_active = v3;
  v9 = *MEMORY[0x277D85DE8];
}

- (void)startService:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ARLogGeneral_0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    clientProcessName = self->_clientProcessName;
    *v11 = 138543874;
    *&v11[4] = v7;
    *&v11[12] = 2048;
    *&v11[14] = self;
    v12 = 2114;
    v13 = clientProcessName;
    _os_log_impl(&dword_23D391000, v5, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Daemon service started: %{public}@", v11, 0x20u);
  }

  *v11 = 0;
  *&v11[8] = 0;
  v9 = _os_activity_create(&dword_23D391000, "Daemon service started", self->_daemonServiceActivity, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v9, v11);

  v4[2](v4, 1);
  os_activity_scope_leave(v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)beginRTChannelCreation
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = xpc_dictionary_create(0, 0, 0);
  [(ARDaemonService *)self channelDataSize];
  [(ARDaemonService *)self minimumChannelQueueSize];
  v4 = *MEMORY[0x277D85FA0];
  asymmetric_endpoint_and_request = channel_create_asymmetric_endpoint_and_request();
  if (asymmetric_endpoint_and_request)
  {
    objc_initWeak(location, self);
    v6 = [(ARDaemonService *)self connection];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __41__ARDaemonService_beginRTChannelCreation__block_invoke;
    v19[3] = &unk_278BCBCB8;
    objc_copyWeak(&v20, location);
    v7 = [v6 remoteObjectProxyWithErrorHandler:v19];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __41__ARDaemonService_beginRTChannelCreation__block_invoke_23;
    v16[3] = &unk_278BCBCE0;
    objc_copyWeak(&v18, location);
    v17 = asymmetric_endpoint_and_request;
    [v7 createRTChannelWithRequest:v3 completion:v16];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&v20);
    objc_destroyWeak(location);
  }

  else
  {
    if (ARShouldUseLogTypeError_onceToken_2 != -1)
    {
      [ARDaemonService initWithConnection:];
    }

    v8 = ARShouldUseLogTypeError_internalOSVersion_2;
    v9 = _ARLogGeneral_0();
    v10 = v9;
    if (v8 == 1)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *location = 138543618;
        *&location[4] = v12;
        v22 = 2048;
        v23 = self;
        _os_log_impl(&dword_23D391000, v10, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to create endpoint using channel_create_endpoint_and_request", location, 0x16u);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *location = 138543618;
      *&location[4] = v14;
      v22 = 2048;
      v23 = self;
      _os_log_impl(&dword_23D391000, v10, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to create endpoint using channel_create_endpoint_and_request", location, 0x16u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __41__ARDaemonService_beginRTChannelCreation__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (ARShouldUseLogTypeError_onceToken_2 != -1)
    {
      [ARDaemonService initWithConnection:];
    }

    v3 = ARShouldUseLogTypeError_internalOSVersion_2;
    v4 = _ARLogGeneral_0();
    v5 = v4;
    if (v3 == 1)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        v16 = 138543618;
        v17 = v7;
        v18 = 2048;
        v19 = WeakRetained;
        v8 = "%{public}@ <%p>: Failed to send request to remote service to create RT channel, aborting.";
        v9 = v5;
        v10 = OS_LOG_TYPE_ERROR;
LABEL_11:
        _os_log_impl(&dword_23D391000, v9, v10, v8, &v16, 0x16u);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v7 = NSStringFromClass(v14);
      v16 = 138543618;
      v17 = v7;
      v18 = 2048;
      v19 = WeakRetained;
      v8 = "Error: %{public}@ <%p>: Failed to send request to remote service to create RT channel, aborting.";
      v9 = v5;
      v10 = OS_LOG_TYPE_INFO;
      goto LABEL_11;
    }
  }

  else
  {
    v5 = _ARLogGeneral_0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v11 = objc_loadWeakRetained((a1 + 32));
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v16 = 138543362;
      v17 = v13;
      _os_log_impl(&dword_23D391000, v5, OS_LOG_TYPE_INFO, "%{public}@: Daemon service deallocated before RT channel creation completed, aborting error handler.", &v16, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __41__ARDaemonService_beginRTChannelCreation__block_invoke_23(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    v11 = _ARLogGeneral_0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_loadWeakRetained((a1 + 40));
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v28 = 138543362;
      v29 = v14;
      _os_log_impl(&dword_23D391000, v11, OS_LOG_TYPE_INFO, "%{public}@: Daemon service deallocated before RT channel creation completed, aborting request completion handler.", &v28, 0xCu);
    }

    goto LABEL_26;
  }

  if (!v3)
  {
    if (ARShouldUseLogTypeError_onceToken_2 != -1)
    {
      [ARDaemonService initWithConnection:];
    }

    v15 = ARShouldUseLogTypeError_internalOSVersion_2;
    v16 = _ARLogGeneral_0();
    v11 = v16;
    if (v15 == 1)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v28 = 138543618;
        v29 = v18;
        v30 = 2048;
        v31 = WeakRetained;
        v19 = "%{public}@ <%p>: Received a nil reply from createRTChannelWithRequest, aborting creating a RT channel";
LABEL_19:
        v23 = v11;
        v24 = OS_LOG_TYPE_ERROR;
LABEL_25:
        _os_log_impl(&dword_23D391000, v23, v24, v19, &v28, 0x16u);
      }

LABEL_26:

      goto LABEL_27;
    }

    if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      goto LABEL_26;
    }

    v25 = objc_opt_class();
    v18 = NSStringFromClass(v25);
    v28 = 138543618;
    v29 = v18;
    v30 = 2048;
    v31 = WeakRetained;
    v19 = "Error: %{public}@ <%p>: Received a nil reply from createRTChannelWithRequest, aborting creating a RT channel";
LABEL_24:
    v23 = v11;
    v24 = OS_LOG_TYPE_INFO;
    goto LABEL_25;
  }

  v5 = *(a1 + 32);
  v6 = channel_rt_create_from_reply();
  [WeakRetained setChannel:v6];

  v7 = [WeakRetained channel];

  if (!v7)
  {
    if (ARShouldUseLogTypeError_onceToken_2 != -1)
    {
      [ARDaemonService initWithConnection:];
    }

    v20 = ARShouldUseLogTypeError_internalOSVersion_2;
    v21 = _ARLogGeneral_0();
    v11 = v21;
    if (v20 == 1)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = objc_opt_class();
        v18 = NSStringFromClass(v22);
        v28 = 138543618;
        v29 = v18;
        v30 = 2048;
        v31 = WeakRetained;
        v19 = "%{public}@ <%p>: Failed to create RT channel using channel_rt_create_from_reply";
        goto LABEL_19;
      }

      goto LABEL_26;
    }

    if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      goto LABEL_26;
    }

    v26 = objc_opt_class();
    v18 = NSStringFromClass(v26);
    v28 = 138543618;
    v29 = v18;
    v30 = 2048;
    v31 = WeakRetained;
    v19 = "Error: %{public}@ <%p>: Failed to create RT channel using channel_rt_create_from_reply";
    goto LABEL_24;
  }

  v8 = _ARLogGeneral_0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v28 = 138543618;
    v29 = v10;
    v30 = 2048;
    v31 = WeakRetained;
    _os_log_impl(&dword_23D391000, v8, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Successfully setup RT channel", &v28, 0x16u);
  }

  [WeakRetained setupCompleteForRTChannel];
LABEL_27:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)beginDispatchChannelCreation
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(ARDaemonService *)self dispatchChannelDataSize];
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_uint64(empty, [*MEMORY[0x277CE53C0] UTF8String], v3);
  [(ARDaemonService *)self minimumChannelQueueSize];
  v5 = *MEMORY[0x277D85FA0];
  asymmetric_endpoint_and_request = channel_create_asymmetric_endpoint_and_request();
  if (asymmetric_endpoint_and_request)
  {
    objc_initWeak(location, self);
    v7 = [(ARDaemonService *)self connection];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __47__ARDaemonService_beginDispatchChannelCreation__block_invoke;
    v21[3] = &unk_278BCBCB8;
    objc_copyWeak(&v22, location);
    v8 = [v7 remoteObjectProxyWithErrorHandler:v21];
    v9 = [MEMORY[0x277CE53B8] wrapperWithDictionary:empty];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __47__ARDaemonService_beginDispatchChannelCreation__block_invoke_26;
    v18[3] = &unk_278BCBD08;
    objc_copyWeak(&v20, location);
    v19 = asymmetric_endpoint_and_request;
    [v8 createDispatchChannelWithRequest:v9 completion:v18];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&v22);
    objc_destroyWeak(location);
  }

  else
  {
    if (ARShouldUseLogTypeError_onceToken_2 != -1)
    {
      [ARDaemonService initWithConnection:];
    }

    v10 = ARShouldUseLogTypeError_internalOSVersion_2;
    v11 = _ARLogGeneral_0();
    v12 = v11;
    if (v10 == 1)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        *location = 138543618;
        *&location[4] = v14;
        v24 = 2048;
        v25 = self;
        _os_log_impl(&dword_23D391000, v12, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to create endpoint using channel_create_endpoint_and_request", location, 0x16u);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *location = 138543618;
      *&location[4] = v16;
      v24 = 2048;
      v25 = self;
      _os_log_impl(&dword_23D391000, v12, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to create endpoint using channel_create_endpoint_and_request", location, 0x16u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __47__ARDaemonService_beginDispatchChannelCreation__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (ARShouldUseLogTypeError_onceToken_2 != -1)
    {
      [ARDaemonService initWithConnection:];
    }

    v3 = ARShouldUseLogTypeError_internalOSVersion_2;
    v4 = _ARLogGeneral_0();
    v5 = v4;
    if (v3 == 1)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        v16 = 138543618;
        v17 = v7;
        v18 = 2048;
        v19 = WeakRetained;
        v8 = "%{public}@ <%p>: Failed to send request to remote service to create dispatch channel, aborting.";
        v9 = v5;
        v10 = OS_LOG_TYPE_ERROR;
LABEL_11:
        _os_log_impl(&dword_23D391000, v9, v10, v8, &v16, 0x16u);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v7 = NSStringFromClass(v14);
      v16 = 138543618;
      v17 = v7;
      v18 = 2048;
      v19 = WeakRetained;
      v8 = "Error: %{public}@ <%p>: Failed to send request to remote service to create dispatch channel, aborting.";
      v9 = v5;
      v10 = OS_LOG_TYPE_INFO;
      goto LABEL_11;
    }
  }

  else
  {
    v5 = _ARLogGeneral_0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v11 = objc_loadWeakRetained((a1 + 32));
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v16 = 138543362;
      v17 = v13;
      _os_log_impl(&dword_23D391000, v5, OS_LOG_TYPE_INFO, "%{public}@: Daemon service deallocated before dispatch channel creation completed, aborting error handler.", &v16, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __47__ARDaemonService_beginDispatchChannelCreation__block_invoke_26(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    v12 = _ARLogGeneral_0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = objc_loadWeakRetained((a1 + 40));
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v29 = 138543362;
      v30 = v15;
      _os_log_impl(&dword_23D391000, v12, OS_LOG_TYPE_INFO, "%{public}@: Daemon service deallocated before dispatch channel creation completed, aborting request completion handler.", &v29, 0xCu);
    }

    goto LABEL_26;
  }

  if (!v3)
  {
    if (ARShouldUseLogTypeError_onceToken_2 != -1)
    {
      [ARDaemonService initWithConnection:];
    }

    v16 = ARShouldUseLogTypeError_internalOSVersion_2;
    v17 = _ARLogGeneral_0();
    v12 = v17;
    if (v16 == 1)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v29 = 138543618;
        v30 = v19;
        v31 = 2048;
        v32 = WeakRetained;
        v20 = "%{public}@ <%p>: Received a nil reply from createRTChannelWithRequest, aborting creating a dispatch channel";
LABEL_19:
        v24 = v12;
        v25 = OS_LOG_TYPE_ERROR;
LABEL_25:
        _os_log_impl(&dword_23D391000, v24, v25, v20, &v29, 0x16u);
      }

LABEL_26:

      goto LABEL_27;
    }

    if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      goto LABEL_26;
    }

    v26 = objc_opt_class();
    v19 = NSStringFromClass(v26);
    v29 = 138543618;
    v30 = v19;
    v31 = 2048;
    v32 = WeakRetained;
    v20 = "Error: %{public}@ <%p>: Received a nil reply from createRTChannelWithRequest, aborting creating a dispatch channel";
LABEL_24:
    v24 = v12;
    v25 = OS_LOG_TYPE_INFO;
    goto LABEL_25;
  }

  v5 = *(a1 + 32);
  v6 = [v3 dictionary];
  v7 = channel_rt_create_from_reply();
  [WeakRetained setDispatchChannel:v7];

  v8 = [WeakRetained dispatchChannel];

  if (!v8)
  {
    if (ARShouldUseLogTypeError_onceToken_2 != -1)
    {
      [ARDaemonService initWithConnection:];
    }

    v21 = ARShouldUseLogTypeError_internalOSVersion_2;
    v22 = _ARLogGeneral_0();
    v12 = v22;
    if (v21 == 1)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = objc_opt_class();
        v19 = NSStringFromClass(v23);
        v29 = 138543618;
        v30 = v19;
        v31 = 2048;
        v32 = WeakRetained;
        v20 = "%{public}@ <%p>: Failed to create dispatch channel using channel_rt_create_from_reply";
        goto LABEL_19;
      }

      goto LABEL_26;
    }

    if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      goto LABEL_26;
    }

    v27 = objc_opt_class();
    v19 = NSStringFromClass(v27);
    v29 = 138543618;
    v30 = v19;
    v31 = 2048;
    v32 = WeakRetained;
    v20 = "Error: %{public}@ <%p>: Failed to create dispatch channel using channel_rt_create_from_reply";
    goto LABEL_24;
  }

  v9 = _ARLogGeneral_0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v29 = 138543618;
    v30 = v11;
    v31 = 2048;
    v32 = WeakRetained;
    _os_log_impl(&dword_23D391000, v9, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Successfully setup dispatch channel", &v29, 0x16u);
  }

  [WeakRetained setupCompleteForRTDispatchChannel];
LABEL_27:

  v28 = *MEMORY[0x277D85DE8];
}

- (ARDaemonServiceDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (ARDaemonServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (uint64_t)isAuthorized
{
  if (a1)
  {
    return OUTLINED_FUNCTION_0(*(a1 + 33));
  }

  else
  {
    return OUTLINED_FUNCTION_0(0);
  }
}

- (uint64_t)isDataAccessAllowed
{
  if (a1)
  {
    return OUTLINED_FUNCTION_0(*(a1 + 34));
  }

  else
  {
    return OUTLINED_FUNCTION_0(0);
  }
}

- (uint64_t)isHidFocused
{
  if (a1)
  {
    return OUTLINED_FUNCTION_0(*(a1 + 35));
  }

  else
  {
    return OUTLINED_FUNCTION_0(0);
  }
}

@end