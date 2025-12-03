@interface HMCameraObjectFetchServer
+ (id)logCategory;
- (BOOL)canHandleMoreFetchedObjects;
- (HMCameraObjectFetchServer)initWithClientUUID:(id)d transport:(id)transport workQueue:(id)queue;
- (HMCameraObjectFetchServer)initWithFetchMessage:(id)message workQueue:(id)queue;
- (HMFMessageTransport)transport;
- (id)logIdentifier;
- (void)_notifyTransport:(id)transport ofFetchedObjects:(id)objects forClientUUID:(id)d responseHandler:(id)handler;
- (void)handleFetchedObject:(id)object;
- (void)sendCurrentlyBatchedFetchedObjectsWithCompletion:(id)completion;
@end

@implementation HMCameraObjectFetchServer

- (HMFMessageTransport)transport
{
  WeakRetained = objc_loadWeakRetained(&self->_transport);

  return WeakRetained;
}

- (id)logIdentifier
{
  clientUUID = [(HMCameraObjectFetchServer *)self clientUUID];
  uUIDString = [clientUUID UUIDString];

  return uUIDString;
}

- (void)_notifyTransport:(id)transport ofFetchedObjects:(id)objects forClientUUID:(id)d responseHandler:(id)handler
{
  v19[1] = *MEMORY[0x1E69E9840];
  v18 = @"HMCOFC.mk.fo";
  handlerCopy = handler;
  dCopy = d;
  transportCopy = transport;
  v12 = encodeRootObject(objects);
  v19[0] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];

  v14 = objc_alloc(MEMORY[0x1E69A2A10]);
  v15 = [objc_alloc(MEMORY[0x1E69A2A00]) initWithTarget:dCopy];

  v16 = [v14 initWithName:@"HMCOFC.m.dfo" destination:v15 payload:v13];
  [v16 setTransport:transportCopy];
  [v16 setResponseHandler:handlerCopy];

  [transportCopy sendMessage:v16 completionHandler:0];
  v17 = *MEMORY[0x1E69E9840];
}

- (void)sendCurrentlyBatchedFetchedObjectsWithCompletion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  workQueue = [(HMCameraObjectFetchServer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  transport = [(HMCameraObjectFetchServer *)self transport];
  if (transport)
  {
    currentlyBatchedFetchedObjects = [(HMCameraObjectFetchServer *)self currentlyBatchedFetchedObjects];
    clientUUID = [(HMCameraObjectFetchServer *)self clientUUID];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __78__HMCameraObjectFetchServer_sendCurrentlyBatchedFetchedObjectsWithCompletion___block_invoke;
    v15[3] = &unk_1E754C0F0;
    v16 = completionCopy;
    [(HMCameraObjectFetchServer *)self _notifyTransport:transport ofFetchedObjects:currentlyBatchedFetchedObjects forClientUUID:clientUUID responseHandler:v15];

    currentlyBatchedFetchedObjects2 = [(HMCameraObjectFetchServer *)self currentlyBatchedFetchedObjects];
    [currentlyBatchedFetchedObjects2 removeAllObjects];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v13;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Cannot send currently batched fetched objects because transport no longer exists", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    completionCopy[2](completionCopy);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)handleFetchedObject:(id)object
{
  v28 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  workQueue = [(HMCameraObjectFetchServer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  transport = [(HMCameraObjectFetchServer *)self transport];
  if (!transport)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v20;
      v21 = "%{public}@Cannot handle fetched object because transport no longer exists";
LABEL_12:
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, v21, &v24, 0xCu);
    }

LABEL_13:

    objc_autoreleasePoolPop(v15);
    goto LABEL_14;
  }

  if (![(HMCameraObjectFetchServer *)self canHandleMoreFetchedObjects])
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v20;
      v21 = "%{public}@Asked to handle fetched object while unable to handle more fetched objects";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  currentlyBatchedFetchedObjects = [(HMCameraObjectFetchServer *)self currentlyBatchedFetchedObjects];
  [currentlyBatchedFetchedObjects addObject:objectCopy];

  currentlyBatchedFetchedObjects2 = [(HMCameraObjectFetchServer *)self currentlyBatchedFetchedObjects];
  v9 = [currentlyBatchedFetchedObjects2 count];
  fetchedObjectsBatchLimit = [(HMCameraObjectFetchServer *)self fetchedObjectsBatchLimit];

  if (v9 >= fetchedObjectsBatchLimit)
  {
    currentlyBatchedFetchedObjects3 = [(HMCameraObjectFetchServer *)self currentlyBatchedFetchedObjects];
    clientUUID = [(HMCameraObjectFetchServer *)self clientUUID];
    [(HMCameraObjectFetchServer *)self _notifyTransport:transport ofFetchedObjects:currentlyBatchedFetchedObjects3 forClientUUID:clientUUID responseHandler:0];

    currentlyBatchedFetchedObjects4 = [(HMCameraObjectFetchServer *)self currentlyBatchedFetchedObjects];
    [currentlyBatchedFetchedObjects4 removeAllObjects];
  }

  [(HMCameraObjectFetchServer *)self setTotalFetchedObjectsCount:[(HMCameraObjectFetchServer *)self totalFetchedObjectsCount]+ 1];
  totalFetchedObjectsCount = [(HMCameraObjectFetchServer *)self totalFetchedObjectsCount];
  if (totalFetchedObjectsCount >= [(HMCameraObjectFetchServer *)self totalFetchedObjectsLimit])
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v24 = 138543618;
      v25 = v18;
      v26 = 2048;
      totalFetchedObjectsLimit = [(HMCameraObjectFetchServer *)selfCopy3 totalFetchedObjectsLimit];
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_INFO, "%{public}@Reached limit of %lu fetched objects", &v24, 0x16u);
    }

    goto LABEL_13;
  }

LABEL_14:

  v23 = *MEMORY[0x1E69E9840];
}

- (BOOL)canHandleMoreFetchedObjects
{
  workQueue = [(HMCameraObjectFetchServer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  transport = [(HMCameraObjectFetchServer *)self transport];
  if (transport)
  {
    totalFetchedObjectsCount = [(HMCameraObjectFetchServer *)self totalFetchedObjectsCount];
    v6 = totalFetchedObjectsCount < [(HMCameraObjectFetchServer *)self totalFetchedObjectsLimit];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (HMCameraObjectFetchServer)initWithClientUUID:(id)d transport:(id)transport workQueue:(id)queue
{
  dCopy = d;
  transportCopy = transport;
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = HMCameraObjectFetchServer;
  v11 = [(HMCameraObjectFetchServer *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_workQueue, queue);
    v13 = [dCopy copy];
    clientUUID = v12->_clientUUID;
    v12->_clientUUID = v13;

    objc_storeWeak(&v12->_transport, transportCopy);
    v12->_fetchedObjectsBatchLimit = 100;
    v12->_totalFetchedObjectsLimit = -1;
    v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:v12->_fetchedObjectsBatchLimit];
    currentlyBatchedFetchedObjects = v12->_currentlyBatchedFetchedObjects;
    v12->_currentlyBatchedFetchedObjects = v15;
  }

  return v12;
}

- (HMCameraObjectFetchServer)initWithFetchMessage:(id)message workQueue:(id)queue
{
  v25 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  queueCopy = queue;
  v8 = [messageCopy uuidForKey:@"HMCOFC.mk.u"];
  if (v8)
  {
    transport = [messageCopy transport];
    if (transport)
    {
      selfCopy2 = [(HMCameraObjectFetchServer *)self initWithClientUUID:v8 transport:transport workQueue:queueCopy];
      v11 = selfCopy2;
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v21 = 138543618;
        v22 = v18;
        v23 = 2112;
        v24 = messageCopy;
        _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Could not find transport on message: %@", &v21, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v11 = 0;
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      messagePayload = [messageCopy messagePayload];
      v21 = 138543618;
      v22 = v14;
      v23 = 2112;
      v24 = messagePayload;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Could not find client UUID in message payload: %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v11 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t6_38190 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t6_38190, &__block_literal_global_38191);
  }

  v3 = logCategory__hmf_once_v7_38192;

  return v3;
}

uint64_t __40__HMCameraObjectFetchServer_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v7_38192;
  logCategory__hmf_once_v7_38192 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end