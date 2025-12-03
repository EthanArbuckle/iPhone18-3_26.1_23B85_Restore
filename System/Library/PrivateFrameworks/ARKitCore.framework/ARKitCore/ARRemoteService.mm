@interface ARRemoteService
- (ARRemoteService)initWithDaemon:(id)daemon startConnection:(BOOL)connection dispatchChannelQueue:(id)queue fixedPriorityQueueForXPC:(BOOL)c deviceEndpoint:(id)endpoint;
- (ARRemoteService)initWithDeviceEndpoint:(id)endpoint;
- (ARRemoteService)initWithDispatchChannelQueue:(id)queue fixedPriorityQueueForXPC:(BOOL)c;
- (ARRemoteService)initWithEndpoint:(id)endpoint;
- (ARRemoteService)initWithEndpoint:(id)endpoint deviceEndpoint:(id)deviceEndpoint;
- (ARRemoteService)initWithEndpoint:(id)endpoint startConnection:(BOOL)connection dispatchChannelQueue:(id)queue;
- (ARRemoteService)initWithEndpoint:(id)endpoint startConnection:(BOOL)connection dispatchChannelQueue:(id)queue fixedPriorityQueueForXPC:(BOOL)c;
- (ARRemoteService)initWithMachServiceName:(id)name exportedInterface:(id)interface remoteObjectInterface:(id)objectInterface endpoint:(id)endpoint startConnection:(BOOL)connection dispatchChannelQueue:(id)queue fixedPriorityQueueForXPC:(BOOL)c deviceEndpoint:(id)self0;
- (ARRemoteServiceAnchorDelegate)anchorDelegate;
- (BOOL)_waitUntilStarted:(unint64_t)started;
- (BOOL)waitUntilStarted:(unint64_t)started;
- (__n128)originFromWorld;
- (__n128)worldFromOrigin;
- (id)clientProcessName;
- (int)clientProcessIdentifier;
- (int64_t)_waitForDispatchGroup:(unint64_t)group;
- (void)_serverConnectionInvalidated;
- (void)_startServiceSynchronous:(BOOL)synchronous;
- (void)asyncServiceWithCallback:(id)callback;
- (void)connectionDispatchGroupLeave;
- (void)createDispatchChannelWithRequest:(id)request completion:(id)completion;
- (void)createRTChannelWithRequest:(id)request completion:(id)completion;
- (void)dealloc;
- (void)handleDispatchChannelMessage:(void *)message size:(unint64_t)size type:(unsigned int)type;
- (void)invalidate;
- (void)reconnect;
- (void)serverConnectionInterrupted;
- (void)serviceConfiguredWithError:(id)error;
- (void)serviceFailedWithError:(id)error;
- (void)setService:(id)service syncService:(id)syncService;
- (void)syncServiceWithTimeout:(unint64_t)timeout callback:(id)callback;
@end

@implementation ARRemoteService

- (ARRemoteService)initWithDispatchChannelQueue:(id)queue fixedPriorityQueueForXPC:(BOOL)c
{
  cCopy = c;
  queueCopy = queue;
  serviceName = [objc_opt_class() serviceName];
  remoteServiceInterface = [objc_opt_class() remoteServiceInterface];
  daemonServiceInterface = [objc_opt_class() daemonServiceInterface];
  v10 = [(ARRemoteService *)self initWithMachServiceName:serviceName exportedInterface:remoteServiceInterface remoteObjectInterface:daemonServiceInterface dispatchChannelQueue:queueCopy fixedPriorityQueueForXPC:cCopy];

  return v10;
}

- (ARRemoteService)initWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  serviceName = [objc_opt_class() serviceName];
  remoteServiceInterface = [objc_opt_class() remoteServiceInterface];
  daemonServiceInterface = [objc_opt_class() daemonServiceInterface];
  v8 = [(ARRemoteService *)self initWithMachServiceName:serviceName exportedInterface:remoteServiceInterface remoteObjectInterface:daemonServiceInterface endpoint:endpointCopy startConnection:0 dispatchChannelQueue:0];

  return v8;
}

- (ARRemoteService)initWithEndpoint:(id)endpoint deviceEndpoint:(id)deviceEndpoint
{
  deviceEndpointCopy = deviceEndpoint;
  endpointCopy = endpoint;
  serviceName = [objc_opt_class() serviceName];
  remoteServiceInterface = [objc_opt_class() remoteServiceInterface];
  daemonServiceInterface = [objc_opt_class() daemonServiceInterface];
  LOBYTE(v13) = 0;
  v11 = [(ARRemoteService *)self initWithMachServiceName:serviceName exportedInterface:remoteServiceInterface remoteObjectInterface:daemonServiceInterface endpoint:endpointCopy startConnection:0 dispatchChannelQueue:0 fixedPriorityQueueForXPC:v13 deviceEndpoint:deviceEndpointCopy];

  return v11;
}

- (ARRemoteService)initWithEndpoint:(id)endpoint startConnection:(BOOL)connection dispatchChannelQueue:(id)queue
{
  connectionCopy = connection;
  queueCopy = queue;
  endpointCopy = endpoint;
  serviceName = [objc_opt_class() serviceName];
  remoteServiceInterface = [objc_opt_class() remoteServiceInterface];
  daemonServiceInterface = [objc_opt_class() daemonServiceInterface];
  v13 = [(ARRemoteService *)self initWithMachServiceName:serviceName exportedInterface:remoteServiceInterface remoteObjectInterface:daemonServiceInterface endpoint:endpointCopy startConnection:connectionCopy dispatchChannelQueue:queueCopy];

  return v13;
}

- (ARRemoteService)initWithEndpoint:(id)endpoint startConnection:(BOOL)connection dispatchChannelQueue:(id)queue fixedPriorityQueueForXPC:(BOOL)c
{
  connectionCopy = connection;
  queueCopy = queue;
  endpointCopy = endpoint;
  serviceName = [objc_opt_class() serviceName];
  remoteServiceInterface = [objc_opt_class() remoteServiceInterface];
  daemonServiceInterface = [objc_opt_class() daemonServiceInterface];
  LOBYTE(v17) = c;
  v15 = [(ARRemoteService *)self initWithMachServiceName:serviceName exportedInterface:remoteServiceInterface remoteObjectInterface:daemonServiceInterface endpoint:endpointCopy startConnection:connectionCopy dispatchChannelQueue:queueCopy fixedPriorityQueueForXPC:v17 deviceEndpoint:0];

  return v15;
}

- (ARRemoteService)initWithDeviceEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  serviceName = [objc_opt_class() serviceName];
  remoteServiceInterface = [objc_opt_class() remoteServiceInterface];
  daemonServiceInterface = [objc_opt_class() daemonServiceInterface];
  LOBYTE(v10) = 0;
  v8 = [(ARRemoteService *)self initWithMachServiceName:serviceName exportedInterface:remoteServiceInterface remoteObjectInterface:daemonServiceInterface endpoint:0 startConnection:1 dispatchChannelQueue:0 fixedPriorityQueueForXPC:v10 deviceEndpoint:endpointCopy];

  return v8;
}

- (ARRemoteService)initWithMachServiceName:(id)name exportedInterface:(id)interface remoteObjectInterface:(id)objectInterface endpoint:(id)endpoint startConnection:(BOOL)connection dispatchChannelQueue:(id)queue fixedPriorityQueueForXPC:(BOOL)c deviceEndpoint:(id)self0
{
  connectionCopy = connection;
  v74 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  interfaceCopy = interface;
  objectInterfaceCopy = objectInterface;
  endpointCopy = endpoint;
  queueCopy = queue;
  deviceEndpointCopy = deviceEndpoint;
  v68.receiver = self;
  v68.super_class = ARRemoteService;
  v18 = [(ARRemoteService *)&v68 init];
  if (v18)
  {
    v19 = _os_activity_create(&dword_1C241C000, "Remote service", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v20 = *(v18 + 6);
    *(v18 + 6) = v19;

    *(v18 + 10) = 0;
    v21 = dispatch_group_create();
    v22 = *(v18 + 4);
    *(v18 + 4) = v21;

    *(v18 + 232) = 0;
    objc_storeStrong(v18 + 30, deviceEndpoint);
    dispatch_group_enter(*(v18 + 4));
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v23 = _os_activity_create(&dword_1C241C000, "Remote service init", *(v18 + 6), OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v23, &state);

    v24 = _ARLogGeneral_46();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      *buf = 138543618;
      *&buf[4] = v26;
      v70 = 2048;
      v71 = v18;
      _os_log_impl(&dword_1C241C000, v24, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Remote service init", buf, 0x16u);
    }

    if (endpointCopy)
    {
      v27 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:endpointCopy];
    }

    else
    {
      v27 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:nameCopy options:4096];
    }

    v28 = *(v18 + 32);
    *(v18 + 32) = v27;

    v29 = [ARWeakReference weakReferenceWithObject:v18];
    [*(v18 + 32) setExportedObject:v29];

    [*(v18 + 32) setExportedInterface:interfaceCopy];
    [*(v18 + 32) setRemoteObjectInterface:objectInterfaceCopy];
    objc_initWeak(&location, v18);
    v30 = *(v18 + 32);
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __169__ARRemoteService_initWithMachServiceName_exportedInterface_remoteObjectInterface_endpoint_startConnection_dispatchChannelQueue_fixedPriorityQueueForXPC_deviceEndpoint___block_invoke;
    v64[3] = &unk_1E817BD88;
    objc_copyWeak(&v65, &location);
    [v30 setInterruptionHandler:v64];
    v31 = *(v18 + 32);
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __169__ARRemoteService_initWithMachServiceName_exportedInterface_remoteObjectInterface_endpoint_startConnection_dispatchChannelQueue_fixedPriorityQueueForXPC_deviceEndpoint___block_invoke_2;
    v62[3] = &unk_1E817BD88;
    objc_copyWeak(&v63, &location);
    [v31 setInvalidationHandler:v62];
    v32 = [nameCopy stringByAppendingString:@".asyncServiceQueue"];
    v33 = v32;
    if (c)
    {
      v34 = ARCreateFixedPriorityDispatchQueueWithPropagatedQOS([v32 UTF8String], QOS_CLASS_USER_INITIATED, 0);
      v35 = *(v18 + 3);
      *(v18 + 3) = v34;

      v36 = [nameCopy stringByAppendingString:@".xpc"];
      v37 = _ARLogGeneral_46();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = objc_opt_class();
        v39 = NSStringFromClass(v38);
        *buf = 138543874;
        *&buf[4] = v39;
        v70 = 2048;
        v71 = v18;
        v72 = 2112;
        v73 = v36;
        _os_log_impl(&dword_1C241C000, v37, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Connection set to custom fixed priority queue: %@", buf, 0x20u);
      }

      v40 = *(v18 + 32);
      v41 = v36;
      v42 = ARCreateFixedPriorityDispatchQueueWithQOS([v36 UTF8String]);
      [v40 _setQueue:v42];
    }

    else
    {
      uTF8String = [v32 UTF8String];
      v36 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v44 = dispatch_queue_create(uTF8String, v36);
      v42 = *(v18 + 3);
      *(v18 + 3) = v44;
    }

    [*(v18 + 32) resume];
    [v18 setStatus:0];
    v45 = objc_opt_new();
    v46 = *(v18 + 1);
    *(v18 + 1) = v45;

    *(v18 + 4) = 0;
    *(v18 + 64) = [v18 conformsToProtocol:&unk_1F4284858];
    v47 = [nameCopy componentsSeparatedByString:@"."];
    lastObject = [v47 lastObject];
    *buf = 0;
    v49 = lastObject;
    v50 = [v49 getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(v49, "length"), 0}];

    v51 = *buf;
    if (!v50)
    {
      v51 = 0;
    }

    *(v18 + 7) = v51;

    v52 = MEMORY[0x1E69E9B18];
    v53 = *MEMORY[0x1E69E9B18];
    v54 = *(MEMORY[0x1E69E9B18] + 16);
    *(v18 + 5) = *MEMORY[0x1E69E9B18];
    *(v18 + 6) = v54;
    v55 = *(v52 + 32);
    v56 = *(v52 + 48);
    *(v18 + 7) = v55;
    *(v18 + 8) = v56;
    *(v18 + 9) = v53;
    *(v18 + 10) = v54;
    *(v18 + 11) = v55;
    *(v18 + 12) = v56;
    *(v18 + 52) = 0;
    [v18 setUpdateUnmodifiedAnchors:1];
    objc_storeStrong(v18 + 42, queue);
    *(v18 + 248) = 0;
    [v18 _commonInit];
    if (connectionCopy)
    {
      [v18 _startService];
    }

    objc_destroyWeak(&v63);
    objc_destroyWeak(&v65);
    objc_destroyWeak(&location);
    os_activity_scope_leave(&state);
  }

  return v18;
}

void __169__ARRemoteService_initWithMachServiceName_exportedInterface_remoteObjectInterface_endpoint_startConnection_dispatchChannelQueue_fixedPriorityQueueForXPC_deviceEndpoint___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained serverConnectionInterrupted];
}

void __169__ARRemoteService_initWithMachServiceName_exportedInterface_remoteObjectInterface_endpoint_startConnection_dispatchChannelQueue_fixedPriorityQueueForXPC_deviceEndpoint___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _serverConnectionInvalidated];
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v3 = _os_activity_create(&dword_1C241C000, "dealloc", self->_remoteServiceActivity, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v3, &state);

  v4 = _ARLogGeneral_46();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 138543618;
    v11 = v6;
    v12 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_INFO, "%{public}@ <%p>: dealloc", buf, 0x16u);
  }

  [(ARRemoteService *)self setServiceDidInvalidateBlock:0];
  [(ARRemoteService *)self setServiceDidConfigureBlock:0];
  [(ARRemoteService *)self setServiceDidUpdateDataAccessBlock:0];
  [(ARRemoteService *)self invalidate];
  [(ARRemoteService *)self connectionDispatchGroupLeave];
  messageBuffer = self->_messageBuffer;
  if (messageBuffer)
  {
    free(messageBuffer);
    self->_messageBuffer = 0;
  }

  os_activity_scope_leave(&state);
  v8.receiver = self;
  v8.super_class = ARRemoteService;
  [(ARRemoteService *)&v8 dealloc];
}

- (void)connectionDispatchGroupLeave
{
  os_unfair_lock_lock(&self->_connectionDispatchGroupLock);
  connectionDispatchGroup = self->_connectionDispatchGroup;
  if (connectionDispatchGroup)
  {
    dispatch_group_leave(connectionDispatchGroup);
    v4 = self->_connectionDispatchGroup;
    self->_connectionDispatchGroup = 0;
  }

  os_unfair_lock_unlock(&self->_connectionDispatchGroupLock);
}

- (void)_startServiceSynchronous:(BOOL)synchronous
{
  synchronousCopy = synchronous;
  v30 = *MEMORY[0x1E69E9840];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = _os_activity_create(&dword_1C241C000, "_startService", self->_remoteServiceActivity, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v5, &state);

  v6 = _ARLogGeneral_46();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = &stru_1F4208A80;
    *buf = 138543874;
    v25 = v8;
    if (synchronousCopy)
    {
      v9 = @": synchronous";
    }

    v26 = 2048;
    selfCopy = self;
    v28 = 2112;
    v29 = v9;
    _os_log_impl(&dword_1C241C000, v6, OS_LOG_TYPE_INFO, "%{public}@ <%p>: _startService%@", buf, 0x20u);
  }

  skipRemoteObjectErrorHandlers = self->_skipRemoteObjectErrorHandlers;
  objc_initWeak(buf, self);
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __44__ARRemoteService__startServiceSynchronous___block_invoke;
  v20 = &unk_1E817E998;
  v22 = skipRemoteObjectErrorHandlers;
  objc_copyWeak(&v21, buf);
  v11 = MEMORY[0x1C691B4C0](&v17);
  v12 = [(ARRemoteService *)self connection:v17];
  v13 = [v12 remoteObjectProxyWithErrorHandler:v11];
  service = self->_service;
  self->_service = v13;

  if (synchronousCopy)
  {
    connection = [(ARRemoteService *)self connection];
    v16 = [connection synchronousRemoteObjectProxyWithErrorHandler:v11];

    if (v16)
    {
      goto LABEL_7;
    }

LABEL_10:
    [(ARRemoteService *)self serviceFailedWithError:0];
    goto LABEL_11;
  }

  v16 = self->_service;
  if (!v16)
  {
    goto LABEL_10;
  }

LABEL_7:
  [(ARRemoteService *)self setStatus:1];
  if (!self->_deviceEndpoint)
  {
    [(ARDaemonServiceBaseProtocol *)v16 startService:&__block_literal_global_120];
  }

LABEL_11:

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);
  os_activity_scope_leave(&state);
}

void __44__ARRemoteService__startServiceSynchronous___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ((*(a1 + 40) & 1) == 0)
  {
    if (ARShouldUseLogTypeError_onceToken_52 != -1)
    {
      __44__ARRemoteService__startServiceSynchronous___block_invoke_cold_1();
    }

    v4 = ARShouldUseLogTypeError_internalOSVersion_52;
    v5 = _ARLogGeneral_46();
    v6 = v5;
    if (v4 == 1)
    {
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      v7 = [v3 description];
      v19 = 138412290;
      v20 = v7;
      v8 = "ARRemoteService: remote object proxy failed with error: %@";
      v9 = v6;
      v10 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        goto LABEL_10;
      }

      v7 = [v3 description];
      v19 = 138412290;
      v20 = v7;
      v8 = "Error: ARRemoteService: remote object proxy failed with error: %@";
      v9 = v6;
      v10 = OS_LOG_TYPE_INFO;
    }

    _os_log_impl(&dword_1C241C000, v9, v10, v8, &v19, 0xCu);

LABEL_10:
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v12 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained serviceFailedWithError:v3];
LABEL_21:

      goto LABEL_22;
    }

    if (ARShouldUseLogTypeError_onceToken_52 != -1)
    {
      __44__ARRemoteService__startServiceSynchronous___block_invoke_cold_2();
    }

    v13 = ARShouldUseLogTypeError_internalOSVersion_52;
    v14 = _ARLogGeneral_46();
    v15 = v14;
    if (v13 == 1)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v19) = 0;
        v16 = "ARRemoteService: weak self released before invalidation";
        v17 = v15;
        v18 = OS_LOG_TYPE_ERROR;
LABEL_19:
        _os_log_impl(&dword_1C241C000, v17, v18, v16, &v19, 2u);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LOWORD(v19) = 0;
      v16 = "Error: ARRemoteService: weak self released before invalidation";
      v17 = v15;
      v18 = OS_LOG_TYPE_INFO;
      goto LABEL_19;
    }

    goto LABEL_21;
  }

LABEL_22:
}

void __44__ARRemoteService__startServiceSynchronous___block_invoke_67(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = _ARLogGeneral_46();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = @"unsuccessfully";
    if (a2)
    {
      v4 = @"successfully";
    }

    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_DEBUG, "Connected to arkitd %{public}@", &v5, 0xCu);
  }
}

- (void)invalidate
{
  v17 = *MEMORY[0x1E69E9840];
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  v3 = _os_activity_create(&dword_1C241C000, "invalidate", self->_remoteServiceActivity, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v3, &v12);

  v4 = _ARLogGeneral_46();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 138543618;
    v14 = v6;
    v15 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_INFO, "%{public}@ <%p>: invalidate", buf, 0x16u);
  }

  v7 = [(ARRemoteService *)self connection:v12.opaque[0]];
  [v7 invalidate];

  [(ARRemoteService *)self setConnection:0];
  service = self->_service;
  self->_service = 0;

  syncService = self->_syncService;
  self->_syncService = 0;

  serviceDidInvalidateBlock = [(ARRemoteService *)self serviceDidInvalidateBlock];

  if (serviceDidInvalidateBlock)
  {
    serviceDidInvalidateBlock2 = [(ARRemoteService *)self serviceDidInvalidateBlock];
    (serviceDidInvalidateBlock2)[2](serviceDidInvalidateBlock2, self);
  }

  os_activity_scope_leave(&v12);
}

- (int64_t)_waitForDispatchGroup:(unint64_t)group
{
  os_unfair_lock_lock(&self->_connectionDispatchGroupLock);
  v5 = self->_connectionDispatchGroup;
  os_unfair_lock_unlock(&self->_connectionDispatchGroupLock);
  if (v5)
  {
    v6 = dispatch_group_wait(v5, group);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_waitUntilStarted:(unint64_t)started
{
  objc_initWeak(&location, self);
  v5 = [(ARRemoteService *)self _waitForDispatchGroup:started];
  v6 = objc_loadWeakRetained(&location);
  status = [v6 status];

  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = (status - 3) >= 2;
  }

  v9 = !v8;
  objc_destroyWeak(&location);
  return v9;
}

- (BOOL)waitUntilStarted:(unint64_t)started
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__ARRemoteService_waitUntilStarted___block_invoke;
  v5[3] = &unk_1E817E9E0;
  v5[4] = &v6;
  [(ARRemoteService *)self syncServiceWithTimeout:started callback:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)reconnect
{
  v21 = *MEMORY[0x1E69E9840];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v3 = _os_activity_create(&dword_1C241C000, "reconnect", self->_remoteServiceActivity, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v3, &state);

  v4 = _ARLogGeneral_46();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 138543618;
    v18 = v6;
    v19 = 2048;
    selfCopy3 = self;
    _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_INFO, "%{public}@ <%p>: reconnect", buf, 0x16u);
  }

  if ([(ARRemoteService *)self status]!= 3)
  {
    if ([(ARRemoteService *)self status]== 4)
    {
      v7 = _ARLogGeneral_46();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        *buf = 138543618;
        v18 = v9;
        v19 = 2048;
        selfCopy3 = self;
        _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Service not started - delaying reconnection attempt", buf, 0x16u);
      }

      objc_initWeak(buf, self);
      v10 = dispatch_time(0, 2000000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __28__ARRemoteService_reconnect__block_invoke;
      block[3] = &unk_1E817BD88;
      objc_copyWeak(&v15, buf);
      dispatch_after(v10, MEMORY[0x1E69E96A0], block);
      objc_destroyWeak(&v15);
      objc_destroyWeak(buf);
    }

    v11 = _ARLogGeneral_46();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138543618;
      v18 = v13;
      v19 = 2048;
      selfCopy3 = self;
      _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Attempting reconnection", buf, 0x16u);
    }

    [(ARDaemonServiceBaseProtocol *)self->_service startService:&__block_literal_global_78_3];
  }

  os_activity_scope_leave(&state);
}

void __28__ARRemoteService_reconnect__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reconnect];

  objc_autoreleasePoolPop(v2);
}

void __28__ARRemoteService_reconnect__block_invoke_76()
{
  v0 = _ARLogGeneral_46();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_1C241C000, v0, OS_LOG_TYPE_INFO, "Reconnected to arkitd", v1, 2u);
  }
}

- (void)syncServiceWithTimeout:(unint64_t)timeout callback:(id)callback
{
  v25 = *MEMORY[0x1E69E9840];
  callbackCopy = callback;
  objc_initWeak(&location, self);
  if (![(ARRemoteService *)self _waitUntilStarted:timeout])
  {
    if (ARShouldUseLogTypeError_onceToken_52 != -1)
    {
      __44__ARRemoteService__startServiceSynchronous___block_invoke_cold_2();
    }

    v10 = ARShouldUseLogTypeError_internalOSVersion_52;
    v11 = _ARLogGeneral_46();
    v12 = v11;
    if (v10 == 1)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_loadWeakRetained(&location);
        if (v13)
        {
          v4 = objc_loadWeakRetained(&location);
          v14 = objc_opt_class();
          v15 = NSStringFromClass(v14);
        }

        else
        {
          v15 = @"ARRemoteService";
        }

        v18 = objc_loadWeakRetained(&location);
        *buf = 138412546;
        v22 = v15;
        v23 = 2048;
        v24 = v18;
        _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_ERROR, "%@ <%p>: syncService timed out.", buf, 0x16u);

        if (v13)
        {
        }

LABEL_19:
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = objc_loadWeakRetained(&location);
      if (v13)
      {
        v4 = objc_loadWeakRetained(&location);
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
      }

      else
      {
        v17 = @"ARRemoteService";
      }

      v19 = objc_loadWeakRetained(&location);
      *buf = 138412546;
      v22 = v17;
      v23 = 2048;
      v24 = v19;
      _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_INFO, "Error: %@ <%p>: syncService timed out.", buf, 0x16u);

      if (v13)
      {
      }

      goto LABEL_19;
    }

    callbackCopy[2](callbackCopy, 0);
    goto LABEL_21;
  }

  v8 = objc_loadWeakRetained(&location);
  syncService = [v8 syncService];
  (callbackCopy)[2](callbackCopy, syncService);

LABEL_21:
  objc_destroyWeak(&location);
}

- (void)asyncServiceWithCallback:(id)callback
{
  callbackCopy = callback;
  objc_initWeak(&location, self);
  asyncServiceQueue = self->_asyncServiceQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__ARRemoteService_asyncServiceWithCallback___block_invoke;
  block[3] = &unk_1E817EA08;
  objc_copyWeak(&v9, &location);
  v8 = callbackCopy;
  v6 = callbackCopy;
  dispatch_async(asyncServiceQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __44__ARRemoteService_asyncServiceWithCallback___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _waitUntilStarted:-1];

  v4 = *(a1 + 32);
  if (v3)
  {
    v8 = objc_loadWeakRetained((a1 + 40));
    v5 = [v8 service];
    (*(v4 + 16))(v4, v5);
  }

  else
  {
    v6 = *(v4 + 16);
    v7 = *(a1 + 32);

    v6(v7, 0);
  }
}

- (void)setService:(id)service syncService:(id)syncService
{
  serviceCopy = service;
  syncServiceCopy = syncService;
  service = self->_service;
  self->_service = serviceCopy;
  v10 = serviceCopy;

  syncService = self->_syncService;
  self->_syncService = syncServiceCopy;
}

- (void)serverConnectionInterrupted
{
  v15 = *MEMORY[0x1E69E9840];
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v3 = _os_activity_create(&dword_1C241C000, "Connection interrupted", self->_remoteServiceActivity, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v3, &v10);

  v4 = _ARLogGeneral_46();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 138543618;
    v12 = v6;
    v13 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Connection interrupted", buf, 0x16u);
  }

  v7 = [(ARRemoteService *)self connection:v10.opaque[0]];
  endpoint = [v7 endpoint];
  if (endpoint)
  {
  }

  else
  {
    v9 = [(ARRemoteService *)self status]== 0;

    if (!v9)
    {
      [(ARRemoteService *)self setStatus:4];
      [(ARRemoteService *)self reconnect];
    }
  }

  os_activity_scope_leave(&v10);
}

- (void)_serverConnectionInvalidated
{
  v12 = *MEMORY[0x1E69E9840];
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  v3 = _os_activity_create(&dword_1C241C000, "Connection invalidated", self->_remoteServiceActivity, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v3, &v7);

  v4 = _ARLogGeneral_46();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 138543618;
    v9 = v6;
    v10 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Connection invalidated", buf, 0x16u);
  }

  [(ARRemoteService *)self setConnection:0, v7.opaque[0], v7.opaque[1]];
  os_activity_scope_leave(&v7);
}

- (id)clientProcessName
{
  v2 = objc_opt_new();
  processName = [v2 processName];

  return processName;
}

- (int)clientProcessIdentifier
{
  v2 = objc_opt_new();
  processIdentifier = [v2 processIdentifier];

  return processIdentifier;
}

- (void)serviceFailedWithError:(id)error
{
  v16 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  v5 = _os_activity_create(&dword_1C241C000, "serviceFailedWithError", self->_remoteServiceActivity, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v5, &v9);

  v6 = _ARLogGeneral_46();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 138543874;
    v11 = v8;
    v12 = 2048;
    selfCopy = self;
    v14 = 2112;
    v15 = errorCopy;
    _os_log_impl(&dword_1C241C000, v6, OS_LOG_TYPE_INFO, "%{public}@ <%p>: serviceFailedWithError: %@", buf, 0x20u);
  }

  [(ARRemoteService *)self setStatus:2, v9.opaque[0], v9.opaque[1]];
  [(ARRemoteService *)self connectionDispatchGroupLeave];
  os_activity_scope_leave(&v9);
}

- (void)serviceConfiguredWithError:(id)error
{
  v26 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (errorCopy)
  {
    if (ARShouldUseLogTypeError_onceToken_52 != -1)
    {
      __44__ARRemoteService__startServiceSynchronous___block_invoke_cold_1();
    }

    v5 = ARShouldUseLogTypeError_internalOSVersion_52;
    v6 = _ARLogGeneral_46();
    v7 = v6;
    if (v5 == 1)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        *buf = 138543874;
        *&buf[4] = v9;
        *&buf[12] = 2048;
        *&buf[14] = self;
        v24 = 2112;
        v25 = errorCopy;
        _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Service configured with error: %@", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138543874;
      *&buf[4] = v13;
      *&buf[12] = 2048;
      *&buf[14] = self;
      v24 = 2112;
      v25 = errorCopy;
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Service configured with error: %@", buf, 0x20u);
    }
  }

  else
  {
    v7 = _ARLogGeneral_46();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138543618;
      *&buf[4] = v11;
      *&buf[12] = 2048;
      *&buf[14] = self;
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Service successfully configured", buf, 0x16u);
    }
  }

  if ([(ARRemoteService *)self status]== 4)
  {
    [(ARRemoteService *)self serviceDidReconnect:errorCopy == 0];
  }

  if (errorCopy)
  {
    [(ARRemoteService *)self invalidate];
    [(ARRemoteService *)self serviceFailedWithError:errorCopy];
  }

  else
  {
    [(ARRemoteService *)self setStatus:3];
    *buf = 0;
    *&buf[8] = 0;
    v14 = _os_activity_create(&dword_1C241C000, "serviceConfiguredWithNOError", self->_remoteServiceActivity, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v14, buf);

    objc_initWeak(&location, self);
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __46__ARRemoteService_serviceConfiguredWithError___block_invoke;
    v20 = &unk_1E817BD88;
    objc_copyWeak(&v21, &location);
    [(ARRemoteService *)self serviceConfiguredWithCompletionHandler:&v17];
    v15 = [(ARRemoteService *)self serviceDidConfigureBlock:v17];

    if (v15)
    {
      serviceDidConfigureBlock = [(ARRemoteService *)self serviceDidConfigureBlock];
      (serviceDidConfigureBlock)[2](serviceDidConfigureBlock, self);
    }

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
    os_activity_scope_leave(buf);
  }
}

void __46__ARRemoteService_serviceConfiguredWithError___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_opt_class();
    v3 = NSStringFromClass(v2);
    v4 = _ARLogGeneral_46();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v11 = v3;
      _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_INFO, "%{public}@ - Preparing sync service and leaving dispatch group", buf, 0xCu);
    }

    v5 = [WeakRetained connection];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __46__ARRemoteService_serviceConfiguredWithError___block_invoke_84;
    v8[3] = &unk_1E817E818;
    v9 = v3;
    v6 = v3;
    v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v8];
    [WeakRetained setSyncService:v7];

    [WeakRetained connectionDispatchGroupLeave];
  }
}

void __46__ARRemoteService_serviceConfiguredWithError___block_invoke_84(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (ARShouldUseLogTypeError_onceToken_52 != -1)
  {
    __44__ARRemoteService__startServiceSynchronous___block_invoke_cold_1();
  }

  v4 = ARShouldUseLogTypeError_internalOSVersion_52;
  v5 = _ARLogGeneral_46();
  v6 = v5;
  if (v4 == 1)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v12 = 138543618;
      v13 = v7;
      v14 = 2112;
      v15 = v3;
      v8 = "%{public}@ - Synchronous remote object proxy failed with error: %@";
      v9 = v6;
      v10 = OS_LOG_TYPE_ERROR;
LABEL_8:
      _os_log_impl(&dword_1C241C000, v9, v10, v8, &v12, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 32);
    v12 = 138543618;
    v13 = v11;
    v14 = 2112;
    v15 = v3;
    v8 = "Error: %{public}@ - Synchronous remote object proxy failed with error: %@";
    v9 = v6;
    v10 = OS_LOG_TYPE_INFO;
    goto LABEL_8;
  }
}

- (void)createRTChannelWithRequest:(id)request completion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  requestCopy = request;
  v8 = xpc_dictionary_create(0, 0, 0);
  v9 = channel_rt_create_from_request();

  [(ARRemoteService *)self setChannel:v9];
  channel = [(ARRemoteService *)self channel];

  if (!channel)
  {
    if (ARShouldUseLogTypeError_onceToken_52 != -1)
    {
      __44__ARRemoteService__startServiceSynchronous___block_invoke_cold_1();
    }

    v11 = ARShouldUseLogTypeError_internalOSVersion_52;
    v12 = _ARLogGeneral_46();
    v13 = v12;
    if (v11 == 1)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        *v20 = 138543618;
        *&v20[4] = v15;
        *&v20[12] = 2048;
        *&v20[14] = self;
        v16 = "%{public}@ <%p>: Failed to create RT channel from request using channel_rt_create_from_request";
        v17 = v13;
        v18 = OS_LOG_TYPE_ERROR;
LABEL_9:
        _os_log_impl(&dword_1C241C000, v17, v18, v16, v20, 0x16u);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v19 = objc_opt_class();
      v15 = NSStringFromClass(v19);
      *v20 = 138543618;
      *&v20[4] = v15;
      *&v20[12] = 2048;
      *&v20[14] = self;
      v16 = "Error: %{public}@ <%p>: Failed to create RT channel from request using channel_rt_create_from_request";
      v17 = v13;
      v18 = OS_LOG_TYPE_INFO;
      goto LABEL_9;
    }
  }

  [(ARRemoteService *)self setupCompleteForRTChannel:*v20];
  completionCopy[2](completionCopy, v8);
}

- (void)createDispatchChannelWithRequest:(id)request completion:(id)completion
{
  v75 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  v8 = xpc_dictionary_create(0, 0, 0);
  dictionary = [requestCopy dictionary];
  dispatchChannelQueue = [(ARRemoteService *)self dispatchChannelQueue];

  dispatchChannelQueue2 = [(ARRemoteService *)self dispatchChannelQueue];

  if (!dispatchChannelQueue2)
  {
    serviceName = [objc_opt_class() serviceName];
    v13 = [serviceName stringByAppendingString:@".dispatchChannelQueue"];

    v14 = ARCreateFixedPriorityDispatchQueueWithQOS([v13 UTF8String]);
    [(ARRemoteService *)self setDispatchChannelQueue:v14];
  }

  v15 = @"Reusing";
  if (!dispatchChannelQueue)
  {
    v15 = @"Creating";
  }

  v16 = v15;
  v17 = _ARLogGeneral_46();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    dispatchChannelQueue3 = [(ARRemoteService *)self dispatchChannelQueue];
    *buf = 138544130;
    v68 = v19;
    v69 = 2048;
    selfCopy11 = self;
    v71 = 2112;
    v72 = v16;
    v73 = 2112;
    v74 = dispatchChannelQueue3;
    _os_log_impl(&dword_1C241C000, v17, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ dispatch channel with queue: %@", buf, 0x2Au);
  }

  dictionary2 = [requestCopy dictionary];
  dispatchChannelQueue4 = [(ARRemoteService *)self dispatchChannelQueue];
  v23 = channel_dispatch_create_from_request();
  dispatchChannel = self->_dispatchChannel;
  self->_dispatchChannel = v23;

  if (self->_dispatchChannel)
  {
    v25 = [ARXPCDictionaryWrapper wrapperWithDictionary:v8];
    completionCopy[2](completionCopy, v25);

    uint64 = xpc_dictionary_get_uint64(dictionary, [@"ARDispatchChannelMessageSizeKey" UTF8String]);
    if (!uint64)
    {
      if (ARShouldUseLogTypeError_onceToken_52 != -1)
      {
        __44__ARRemoteService__startServiceSynchronous___block_invoke_cold_2();
      }

      v27 = ARShouldUseLogTypeError_internalOSVersion_52;
      v28 = _ARLogGeneral_46();
      v29 = v28;
      if (v27 == 1)
      {
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v30 = objc_opt_class();
          v31 = NSStringFromClass(v30);
          *buf = 138543618;
          v68 = v31;
          v69 = 2048;
          selfCopy11 = self;
          _os_log_impl(&dword_1C241C000, v29, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Creating a dispatch channel with dispatchChannelDataSize equal to 0.", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v39 = objc_opt_class();
        v40 = NSStringFromClass(v39);
        *buf = 138543618;
        v68 = v40;
        v69 = 2048;
        selfCopy11 = self;
        _os_log_impl(&dword_1C241C000, v29, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Creating a dispatch channel with dispatchChannelDataSize equal to 0.", buf, 0x16u);
      }
    }

    if (self->_messageBuffer)
    {
      if (uint64 == self->_dispatchDataSize)
      {
LABEL_37:
        objc_initWeak(&location, self);
        v64[1] = MEMORY[0x1E69E9820];
        v64[2] = 3221225472;
        v64[3] = __63__ARRemoteService_createDispatchChannelWithRequest_completion___block_invoke;
        v64[4] = &unk_1E817EA30;
        objc_copyWeak(&v65, &location);
        v49 = channel_dispatch_set_message_handler();
        if ((v49 & 1) == 0)
        {
          if (ARShouldUseLogTypeError_onceToken_52 != -1)
          {
            __44__ARRemoteService__startServiceSynchronous___block_invoke_cold_2();
          }

          v50 = ARShouldUseLogTypeError_internalOSVersion_52;
          v51 = _ARLogGeneral_46();
          v52 = v51;
          if (v50 == 1)
          {
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              v53 = objc_opt_class();
              v54 = NSStringFromClass(v53);
              *buf = 138543618;
              v68 = v54;
              v69 = 2048;
              selfCopy11 = self;
              _os_log_impl(&dword_1C241C000, v52, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error setting message handler for Dispatch Channel", buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
          {
            v55 = objc_opt_class();
            v56 = NSStringFromClass(v55);
            *buf = 138543618;
            v68 = v56;
            v69 = 2048;
            selfCopy11 = self;
            _os_log_impl(&dword_1C241C000, v52, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error setting message handler for Dispatch Channel", buf, 0x16u);
          }
        }

        objc_copyWeak(v64, &location);
        if (channel_dispatch_set_cancel_handler())
        {
          if (v49)
          {
            channel_dispatch_activate();
          }
        }

        else
        {
          if (ARShouldUseLogTypeError_onceToken_52 != -1)
          {
            __44__ARRemoteService__startServiceSynchronous___block_invoke_cold_2();
          }

          v57 = ARShouldUseLogTypeError_internalOSVersion_52;
          v58 = _ARLogGeneral_46();
          v59 = v58;
          if (v57 == 1)
          {
            if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
            {
              v60 = objc_opt_class();
              v61 = NSStringFromClass(v60);
              *buf = 138543618;
              v68 = v61;
              v69 = 2048;
              selfCopy11 = self;
              _os_log_impl(&dword_1C241C000, v59, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error setting cancel handler for Dispatch Channel", buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
          {
            v62 = objc_opt_class();
            v63 = NSStringFromClass(v62);
            *buf = 138543618;
            v68 = v63;
            v69 = 2048;
            selfCopy11 = self;
            _os_log_impl(&dword_1C241C000, v59, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error setting cancel handler for Dispatch Channel", buf, 0x16u);
          }
        }

        objc_destroyWeak(v64);
        objc_destroyWeak(&v65);
        objc_destroyWeak(&location);
        goto LABEL_58;
      }

      if (ARShouldUseLogTypeError_onceToken_52 != -1)
      {
        __44__ARRemoteService__startServiceSynchronous___block_invoke_cold_2();
      }

      v41 = ARShouldUseLogTypeError_internalOSVersion_52;
      v42 = _ARLogGeneral_46();
      v43 = v42;
      if (v41 == 1)
      {
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v44 = objc_opt_class();
          v45 = NSStringFromClass(v44);
          *buf = 138543618;
          v68 = v45;
          v69 = 2048;
          selfCopy11 = self;
          _os_log_impl(&dword_1C241C000, v43, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: dispatchDataSize changed on _messageBuffer. _messageBuffer is being resized.", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v47 = objc_opt_class();
        v48 = NSStringFromClass(v47);
        *buf = 138543618;
        v68 = v48;
        v69 = 2048;
        selfCopy11 = self;
        _os_log_impl(&dword_1C241C000, v43, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: dispatchDataSize changed on _messageBuffer. _messageBuffer is being resized.", buf, 0x16u);
      }

      self->_dispatchDataSize = uint64;
      free(self->_messageBuffer);
      v46 = malloc_type_malloc(self->_dispatchDataSize, 0xA9A4FC6AuLL);
    }

    else
    {
      self->_dispatchDataSize = uint64;
      v46 = malloc_type_malloc(uint64, 0x5D984D6DuLL);
    }

    self->_messageBuffer = v46;
    goto LABEL_37;
  }

  if (ARShouldUseLogTypeError_onceToken_52 != -1)
  {
    __44__ARRemoteService__startServiceSynchronous___block_invoke_cold_2();
  }

  v32 = ARShouldUseLogTypeError_internalOSVersion_52;
  v33 = _ARLogGeneral_46();
  v34 = v33;
  if (v32 == 1)
  {
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v35 = objc_opt_class();
      v36 = NSStringFromClass(v35);
      *buf = 138543618;
      v68 = v36;
      v69 = 2048;
      selfCopy11 = self;
      _os_log_impl(&dword_1C241C000, v34, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Failed to create dispatch channel from request", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    v37 = objc_opt_class();
    v38 = NSStringFromClass(v37);
    *buf = 138543618;
    v68 = v38;
    v69 = 2048;
    selfCopy11 = self;
    _os_log_impl(&dword_1C241C000, v34, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Failed to create dispatch channel from request", buf, 0x16u);
  }

  completionCopy[2](completionCopy, 0);
LABEL_58:
}

void __63__ARRemoteService_createDispatchChannelWithRequest_completion___block_invoke(uint64_t a1, const void *a2, size_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = WeakRetained[27];
    if (v10)
    {
      if (v9[28] == a3)
      {
        memcpy(v10, a2, a3);
        [v9 handleDispatchChannelMessage:v9[27] size:a3 type:a4];
        goto LABEL_14;
      }

      if (ARShouldUseLogTypeError_onceToken_52 != -1)
      {
        __44__ARRemoteService__startServiceSynchronous___block_invoke_cold_1();
      }

      v11 = ARShouldUseLogTypeError_internalOSVersion_52;
      v12 = _ARLogGeneral_46();
      v13 = v12;
      if (v11 == 1)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v14 = objc_loadWeakRetained((a1 + 32));
          v15 = objc_opt_class();
          v16 = NSStringFromClass(v15);
          v21 = 138543362;
          v22 = v16;
          v17 = "%{public}@: message_size doesn't match dispatchChannelDataSize.";
          v18 = v13;
          v19 = OS_LOG_TYPE_ERROR;
LABEL_12:
          _os_log_impl(&dword_1C241C000, v18, v19, v17, &v21, 0xCu);
        }
      }

      else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v14 = objc_loadWeakRetained((a1 + 32));
        v20 = objc_opt_class();
        v16 = NSStringFromClass(v20);
        v21 = 138543362;
        v22 = v16;
        v17 = "Error: %{public}@: message_size doesn't match dispatchChannelDataSize.";
        v18 = v13;
        v19 = OS_LOG_TYPE_INFO;
        goto LABEL_12;
      }
    }
  }

LABEL_14:
}

void __63__ARRemoteService_createDispatchChannelWithRequest_completion___block_invoke_96(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = _ARLogGeneral_46();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_1C241C000, v2, OS_LOG_TYPE_INFO, "%{public}@: Cancelled dispatch channel", &v7, 0xCu);
  }

  v6 = objc_loadWeakRetained((a1 + 32));
  if (v6)
  {
    v6[248] = 1;
  }
}

- (void)handleDispatchChannelMessage:(void *)message size:(unint64_t)size type:(unsigned int)type
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D940];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"-[ARRemoteService handleDispatchChannelMessage:size:type:]", size, *&type}];
  [v5 raise:v6 format:{@"Subclass needs to override %@ and not call super", v7}];
}

- (ARRemoteService)initWithDaemon:(id)daemon startConnection:(BOOL)connection dispatchChannelQueue:(id)queue fixedPriorityQueueForXPC:(BOOL)c deviceEndpoint:(id)endpoint
{
  connectionCopy = connection;
  endpointCopy = endpoint;
  queueCopy = queue;
  daemonCopy = daemon;
  v15 = [objc_opt_class() performSelector:sel_serviceName];
  v16 = [daemonCopy listenerEndPointForServiceNamed:v15];

  serviceName = [objc_opt_class() serviceName];
  remoteServiceInterface = [objc_opt_class() remoteServiceInterface];
  daemonServiceInterface = [objc_opt_class() daemonServiceInterface];
  if (v16)
  {
    cCopy = 0;
  }

  else
  {
    cCopy = c;
  }

  LOBYTE(v23) = cCopy;
  v21 = [(ARRemoteService *)self initWithMachServiceName:serviceName exportedInterface:remoteServiceInterface remoteObjectInterface:daemonServiceInterface endpoint:v16 startConnection:connectionCopy dispatchChannelQueue:queueCopy fixedPriorityQueueForXPC:v23 deviceEndpoint:endpointCopy];

  return v21;
}

- (ARRemoteServiceAnchorDelegate)anchorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_anchorDelegate);

  return WeakRetained;
}

- (__n128)worldFromOrigin
{
  if (self)
  {
    os_unfair_lock_lock_with_options();
    v3 = *(self + 80);
    os_unfair_lock_unlock((self + 208));
  }

  else
  {
    OUTLINED_FUNCTION_0_0();
  }

  return v3;
}

- (__n128)originFromWorld
{
  if (self)
  {
    os_unfair_lock_lock_with_options();
    v3 = *(self + 144);
    os_unfair_lock_unlock((self + 208));
  }

  else
  {
    OUTLINED_FUNCTION_0_0();
  }

  return v3;
}

@end