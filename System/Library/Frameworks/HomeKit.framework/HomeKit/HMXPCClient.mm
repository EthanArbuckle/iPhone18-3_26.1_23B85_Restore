@interface HMXPCClient
+ (id)exportedInterface;
+ (id)logCategory;
+ (id)remoteObjectInterface;
- (BOOL)isAuthorizedForHomeDataAccess;
- (HMXPCClient)initWithConfiguration:(id)configuration userInfo:(id)info;
- (HMXPCClient)initWithConfiguration:(id)configuration userInfo:(id)info dataSource:(id)source;
- (HMXPCConnection)connection;
- (void)dealloc;
- (void)messageTransport:(id)transport didReceiveMessage:(id)message;
- (void)registerReconnectionHandler:(id)handler;
- (void)sendMessage:(id)message completionHandler:(id)handler;
@end

@implementation HMXPCClient

- (BOOL)isAuthorizedForHomeDataAccess
{
  os_unfair_lock_lock_with_options();
  if (([(HMXPCClient *)self homeDataAuthorizationStatus]& 1) == 0)
  {
    [(HMXPCClient *)self setHomeDataAuthorizationStatus:HMPrivacyGetAuthorizationStatusForHomeKit()];
  }

  v3 = ([(HMXPCClient *)self homeDataAuthorizationStatus]>> 2) & 1;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (HMXPCConnection)connection
{
  v46 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock_with_options();
  connection = self->_connection;
  if (connection)
  {
    v4 = connection;
  }

  else
  {
    [(HMXPCClient *)self setRequiresCheckin:1];
    objc_initWeak(&location, self);
    dataSource = [(HMXPCClient *)self dataSource];
    userInfo = [(HMXPCClient *)self userInfo];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __25__HMXPCClient_connection__block_invoke;
    v39[3] = &unk_1E754E540;
    objc_copyWeak(&v40, &location);
    v28 = [dataSource createXPCClientConnectionProxyWithUserInfo:userInfo refreshHandler:v39];

    [v28 setDelegate:self];
    dataSource2 = [(HMXPCClient *)self dataSource];
    configuration = [(HMXPCClient *)self configuration];
    machServiceName = [configuration machServiceName];
    v4 = [dataSource2 createXPCConnectionWithMachServiceName:machServiceName];

    v10 = +[HMXPCClient remoteObjectInterface];
    [(HMXPCConnection *)v4 setRemoteObjectInterface:v10];

    v11 = +[HMXPCClient exportedInterface];
    [(HMXPCConnection *)v4 setExportedInterface:v11];

    [(HMXPCConnection *)v4 setExportedObject:v28];
    configuration2 = [(HMXPCClient *)self configuration];
    queue = [configuration2 queue];
    [(HMXPCConnection *)v4 setQueue:queue];

    objc_initWeak(&from, v4);
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __25__HMXPCClient_connection__block_invoke_80;
    v35[3] = &unk_1E7546BE8;
    objc_copyWeak(&v36, &location);
    objc_copyWeak(&v37, &from);
    [(HMXPCConnection *)v4 setInterruptionHandler:v35];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __25__HMXPCClient_connection__block_invoke_81;
    v32[3] = &unk_1E7546BE8;
    objc_copyWeak(&v33, &location);
    objc_copyWeak(&v34, &from);
    [(HMXPCConnection *)v4 setInvalidationHandler:v32];
    if ([(HMXPCClient *)self notifyRegisterToken]== -1)
    {
      v31 = 0;
      dataSource3 = [(HMXPCClient *)self dataSource];
      darwinNotificationProvider = [dataSource3 darwinNotificationProvider];
      configuration3 = [(HMXPCClient *)self configuration];
      serverStartNotification = [configuration3 serverStartNotification];
      v17 = serverStartNotification;
      uTF8String = [serverStartNotification UTF8String];
      v19 = dispatch_get_global_queue(21, 0);
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __25__HMXPCClient_connection__block_invoke_82;
      v29[3] = &unk_1E754C980;
      objc_copyWeak(&v30, &location);
      v20 = [darwinNotificationProvider notifyRegisterDispatch:uTF8String outToken:&v31 queue:v19 handler:v29];

      if (v20)
      {
        v21 = objc_autoreleasePoolPush();
        selfCopy = self;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = HMFGetLogIdentifier();
          *buf = 138543618;
          v43 = v24;
          v44 = 1024;
          v45 = v20;
          _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to register for HomeKit daemon ready notification: %u", buf, 0x12u);
        }

        objc_autoreleasePoolPop(v21);
      }

      else
      {
        [(HMXPCClient *)self setNotifyRegisterToken:v31];
      }

      objc_destroyWeak(&v30);
    }

    [(HMXPCConnection *)v4 resume];
    objc_storeStrong(&self->_connection, v4);
    objc_destroyWeak(&v34);
    objc_destroyWeak(&v33);
    objc_destroyWeak(&v37);
    objc_destroyWeak(&v36);
    objc_destroyWeak(&from);

    objc_destroyWeak(&v40);
    objc_destroyWeak(&location);
  }

  os_unfair_lock_unlock(&self->_lock);
  v25 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)remoteObjectInterface
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&remoteObjectInterface_remoteObjectInterface);
  if (!WeakRetained)
  {
    WeakRetained = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0F63320];
    allowedClassesForXPC = [MEMORY[0x1E69A29F8] allowedClassesForXPC];
    [WeakRetained setClasses:allowedClassesForXPC forSelector:sel_handleMessage_responseHandler_ argumentIndex:1 ofReply:1];

    objc_storeWeak(&remoteObjectInterface_remoteObjectInterface, WeakRetained);
  }

  objc_sync_exit(selfCopy);

  return WeakRetained;
}

+ (id)exportedInterface
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&exportedInterface_exportedInterface);
  if (!WeakRetained)
  {
    WeakRetained = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0F4AE80];
    objc_storeWeak(&exportedInterface_exportedInterface, WeakRetained);
  }

  objc_sync_exit(selfCopy);

  return WeakRetained;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t25 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t25, &__block_literal_global_94);
  }

  v3 = logCategory__hmf_once_v26;

  return v3;
}

uint64_t __26__HMXPCClient_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  logCategory__hmf_once_v26 = HMFCreateOSLogHandle();

  return MEMORY[0x1EEE66BB8]();
}

void __25__HMXPCClient_connection__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = WeakRetained;
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v6 = [(os_unfair_lock_s *)v3 reconnectionHandlers];
      *buf = 138543618;
      v20 = v5;
      v21 = 2048;
      v22 = [v6 count];
      _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying %lu reconnection handlers about refresh", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
    os_unfair_lock_lock_with_options();
    v7 = [(os_unfair_lock_s *)v3 reconnectionHandlers];
    v8 = [v7 copy];

    os_unfair_lock_unlock(v3 + 4);
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v9);
          }

          (*(*(*(&v14 + 1) + 8 * v12) + 16))(*(*(&v14 + 1) + 8 * v12));
          ++v12;
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)messageTransport:(id)transport didReceiveMessage:(id)message
{
  v24 = *MEMORY[0x1E69E9840];
  transportCopy = transport;
  messageCopy = message;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = messageCopy;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    v10 = messageCopy;
  }

  else
  {
    v10 = [messageCopy mutableCopy];
  }

  v11 = v10;

  [v11 setTransport:self];
  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    shortDescription = [messageCopy shortDescription];
    v20 = 138543618;
    v21 = v15;
    v22 = 2112;
    v23 = shortDescription;
    _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@Received message %@ from XPC server", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  delegate = [(HMFMessageTransport *)selfCopy delegate];
  v18 = [v11 copy];
  [delegate messageTransport:selfCopy didReceiveMessage:v18];

  v19 = *MEMORY[0x1E69E9840];
}

- (void)sendMessage:(id)message completionHandler:(id)handler
{
  v59 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  handlerCopy = handler;
  configuration = [(HMXPCClient *)self configuration];
  if ([configuration requiresHomeDataAccess])
  {
    isAuthorizedForHomeDataAccess = [(HMXPCClient *)self isAuthorizedForHomeDataAccess];

    if (!isAuthorizedForHomeDataAccess)
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        shortDescription = [messageCopy shortDescription];
        *buf = 138543618;
        v54 = v13;
        v55 = 2112;
        v56 = shortDescription;
        _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Message send failed for %@ because client is not authorized for home data access", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      connection = [MEMORY[0x1E696ABC0] hmErrorWithCode:47];
      [messageCopy respondWithError:connection];
      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy, connection);
      }

      goto LABEL_28;
    }
  }

  else
  {
  }

  connection = [(HMXPCClient *)self connection];
  os_unfair_lock_lock_with_options();
  if ([(HMXPCClient *)self requiresCheckin])
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v54 = v19;
      v55 = 2048;
      v56 = connection;
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_INFO, "%{public}@Connecting to the daemon using connection: %p", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __45__HMXPCClient_sendMessage_completionHandler___block_invoke;
    v52[3] = &unk_1E754E148;
    v52[4] = selfCopy2;
    v20 = [connection remoteObjectProxyWithErrorHandler:v52];
    userInfo = [(HMXPCClient *)selfCopy2 userInfo];
    [v20 updateUserInfo:userInfo];
  }

  [(HMXPCClient *)self setRequiresCheckin:0];
  os_unfair_lock_unlock(&self->_lock);
  v22 = objc_opt_class();
  if (v22 == objc_opt_class())
  {
    v23 = messageCopy;
  }

  else
  {
    v23 = [messageCopy mutableCopy];
  }

  v24 = v23;
  if ([messageCopy qualityOfService] == -1)
  {
    currentThread = [MEMORY[0x1E696AF00] currentThread];
    [v24 setQualityOfService:{objc_msgSend(currentThread, "qualityOfService")}];

    v25 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v33 = HMFGetLogIdentifier();
      shortDescription2 = [messageCopy shortDescription];
      [v24 qualityOfService];
      v35 = HMFQualityOfServiceToString();
      *buf = 138543874;
      v54 = v33;
      v55 = 2112;
      v56 = shortDescription2;
      v57 = 2112;
      v58 = v35;
      _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_INFO, "%{public}@Sending message %@ to XPC server with adopted QOS: %@", buf, 0x20u);
    }
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      shortDescription3 = [messageCopy shortDescription];
      [v24 qualityOfService];
      v30 = HMFQualityOfServiceToString();
      *buf = 138543874;
      v54 = v28;
      v55 = 2112;
      v56 = shortDescription3;
      v57 = 2112;
      v58 = v30;
      _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_INFO, "%{public}@Sending message %@ to XPC server with QOS: %@", buf, 0x20u);
    }
  }

  objc_autoreleasePoolPop(v25);
  activity = [messageCopy activity];
  clientMetricIdentifier = [activity clientMetricIdentifier];

  if (clientMetricIdentifier)
  {
    activity2 = [messageCopy activity];
    clientMetricIdentifier2 = [activity2 clientMetricIdentifier];
    [v24 setHeaderValue:clientMetricIdentifier2 forKey:@"HMActivityMetricIdentifierKey"];
  }

  v40 = [v24 copy];

  responseHandler = [v40 responseHandler];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __45__HMXPCClient_sendMessage_completionHandler___block_invoke_90;
  v49[3] = &unk_1E754D898;
  v49[4] = self;
  messageCopy = v40;
  v50 = messageCopy;
  v42 = responseHandler;
  v51 = v42;
  v43 = [connection remoteObjectProxyWithErrorHandler:v49];
  v44 = v43;
  if (v42)
  {
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __45__HMXPCClient_sendMessage_completionHandler___block_invoke_91;
    v46[3] = &unk_1E754E480;
    v46[4] = self;
    v47 = messageCopy;
    v48 = v42;
    [v44 handleMessage:v47 responseHandler:v46];
  }

  else
  {
    [v43 handleMessage:messageCopy];
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }

LABEL_28:
  v45 = *MEMORY[0x1E69E9840];
}

void __45__HMXPCClient_sendMessage_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to get remote object proxy for connecting to the daemon: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x1E69E9840];
}

void __45__HMXPCClient_sendMessage_completionHandler___block_invoke_90(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) shortDescription];
    v11 = 138543874;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to get remote object proxy for sending message %@: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))(v9, v3, 0);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __45__HMXPCClient_sendMessage_completionHandler___block_invoke_91(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [*(a1 + 40) shortDescription];
    v13 = 138543618;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Received response from XPC server for message: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  (*(*(a1 + 48) + 16))();

  v12 = *MEMORY[0x1E69E9840];
}

- (void)registerReconnectionHandler:(id)handler
{
  aBlock = handler;
  os_unfair_lock_lock_with_options();
  reconnectionHandlers = [(HMXPCClient *)self reconnectionHandlers];
  v5 = _Block_copy(aBlock);
  [reconnectionHandlers addObject:v5];

  os_unfair_lock_unlock(&self->_lock);
}

void __25__HMXPCClient_connection__block_invoke_80(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 40));
    v4 = objc_autoreleasePoolPush();
    v5 = WeakRetained;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v7;
      v17 = 2048;
      v18 = v3;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Connection to daemon was interrupted: %p", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    os_unfair_lock_lock_with_options();
    if (v3 == *&v5[8]._os_unfair_lock_opaque)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = v5;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = HMFGetLogIdentifier();
        v15 = 138543618;
        v16 = v11;
        v17 = 2048;
        v18 = v3;
        _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Marking the connection as requiring check-in due to interruption: %p", &v15, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      [(os_unfair_lock_s *)v9 setRequiresCheckin:1];
    }

    os_unfair_lock_unlock(v5 + 4);
    v12 = [(os_unfair_lock_s *)v5 dataSource];
    v13 = [v12 notificationCenter];
    [v13 postNotificationName:@"HMDaemonDisconnectedNotification" object:v5];
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __25__HMXPCClient_connection__block_invoke_81(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 40));
    v4 = objc_autoreleasePoolPush();
    v5 = WeakRetained;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v7;
      v15 = 2048;
      v16 = v3;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Connection to daemon was invalidated: %p", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    os_unfair_lock_lock_with_options();
    if (v3 == *&v5[8]._os_unfair_lock_opaque)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = v5;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = HMFGetLogIdentifier();
        v13 = 138543618;
        v14 = v11;
        v15 = 2048;
        v16 = v3;
        _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Resetting connection due to invalidation: %p", &v13, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      [(os_unfair_lock_s *)v9 setConnection:0];
    }

    os_unfair_lock_unlock(v5 + 4);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __25__HMXPCClient_connection__block_invoke_82(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = WeakRetained;
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = HMFGetLogIdentifier();
      v6 = [v3 configuration];
      v7 = [v6 serverStartNotification];
      *buf = 138543618;
      *&buf[4] = v5;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Received notification that HomeKit daemon is ready: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v17 = 1;
    v8 = [v3 connection];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __25__HMXPCClient_connection__block_invoke_83;
    v15[3] = &unk_1E7546C10;
    v15[4] = v3;
    v15[5] = buf;
    v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v15];

    v10 = [v3 userInfo];
    [v9 updateUserInfo:v10 responseHandler:&__block_literal_global_2575];

    v11 = [v3 configuration];
    v12 = [v11 queue];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __25__HMXPCClient_connection__block_invoke_2;
    v14[3] = &unk_1E7549100;
    v14[4] = v3;
    v14[5] = buf;
    dispatch_async(v12, v14);

    _Block_object_dispose(buf, 8);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __25__HMXPCClient_connection__block_invoke_83(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to get synchronous remote object proxy for re-connecting to the daemon: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  *(*(*(a1 + 40) + 8) + 24) = 0;

  v8 = *MEMORY[0x1E69E9840];
}

void __25__HMXPCClient_connection__block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v22 = v5;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Notifying reconnection handlers that HomeKit daemon is ready", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  [*(a1 + 32) setRequiresCheckin:(*(*(*(a1 + 40) + 8) + 24) & 1) == 0];
  v7 = [*(a1 + 32) reconnectionHandlers];
  v8 = [v7 copy];

  os_unfair_lock_unlock(v6 + 4);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v9);
        }

        (*(*(*(&v16 + 1) + 8 * v12) + 16))(*(*(&v16 + 1) + 8 * v12));
        ++v12;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v13 = [*(a1 + 32) dataSource];
  v14 = [v13 notificationCenter];
  [v14 postNotificationName:@"HMDaemonReconnectedNotification" object:*(a1 + 32)];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_notifyRegisterToken != -1)
  {
    darwinNotificationProvider = [(HMXPCClientDataSource *)self->_dataSource darwinNotificationProvider];
    [darwinNotificationProvider notifyCancel:self->_notifyRegisterToken];
  }

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    connection = selfCopy->_connection;
    *buf = 138543618;
    v12 = v7;
    v13 = 2048;
    v14 = connection;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Invalidating connection due to dealloc: %p", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [(HMXPCConnection *)selfCopy->_connection invalidate];
  v10.receiver = selfCopy;
  v10.super_class = HMXPCClient;
  [(HMXPCClient *)&v10 dealloc];
  v9 = *MEMORY[0x1E69E9840];
}

- (HMXPCClient)initWithConfiguration:(id)configuration userInfo:(id)info dataSource:(id)source
{
  configurationCopy = configuration;
  infoCopy = info;
  sourceCopy = source;
  if (!configurationCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!infoCopy)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v11 = sourceCopy;
  if (!sourceCopy)
  {
LABEL_9:
    v29 = _HMFPreconditionFailure();
    return [(HMXPCClient *)v29 initWithConfiguration:v30 userInfo:v31, v32];
  }

  uUID = [MEMORY[0x1E696AFB0] UUID];
  v13 = [infoCopy mutableCopy];
  processInfo = [MEMORY[0x1E69A2A50] processInfo];
  name = [processInfo name];
  [v13 setObject:name forKeyedSubscript:@"HMProcessNameKey"];

  uUIDString = [uUID UUIDString];
  [v13 setObject:uUIDString forKeyedSubscript:@"HMXPCClientUUIDKey"];

  v33.receiver = self;
  v33.super_class = HMXPCClient;
  v17 = [(HMXPCClient *)&v33 init];
  if (v17)
  {
    v18 = [configurationCopy copy];
    configuration = v17->_configuration;
    v17->_configuration = v18;

    v20 = [v13 copy];
    userInfo = v17->_userInfo;
    v17->_userInfo = v20;

    objc_storeStrong(&v17->_dataSource, source);
    objc_storeStrong(&v17->_UUID, uUID);
    v22 = MEMORY[0x1E696AEC0];
    machServiceName = [(HMXPCMessageTransportConfiguration *)v17->_configuration machServiceName];
    v24 = [v22 stringWithFormat:@"%@/%@", machServiceName, v17->_UUID];
    logIdentifier = v17->_logIdentifier;
    v17->_logIdentifier = v24;

    v17->_notifyRegisterToken = -1;
    v17->_requiresCheckin = 1;
    array = [MEMORY[0x1E695DF70] array];
    reconnectionHandlers = v17->_reconnectionHandlers;
    v17->_reconnectionHandlers = array;
  }

  return v17;
}

- (HMXPCClient)initWithConfiguration:(id)configuration userInfo:(id)info
{
  infoCopy = info;
  configurationCopy = configuration;
  v8 = objc_alloc_init(HMXPCClientDataSource);
  v9 = [(HMXPCClient *)self initWithConfiguration:configurationCopy userInfo:infoCopy dataSource:v8];

  return v9;
}

@end