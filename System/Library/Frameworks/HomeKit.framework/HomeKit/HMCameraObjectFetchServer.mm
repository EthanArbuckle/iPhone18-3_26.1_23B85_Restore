@interface HMCameraObjectFetchServer
+ (id)logCategory;
- (BOOL)canHandleMoreFetchedObjects;
- (HMCameraObjectFetchServer)initWithClientUUID:(id)a3 transport:(id)a4 workQueue:(id)a5;
- (HMCameraObjectFetchServer)initWithFetchMessage:(id)a3 workQueue:(id)a4;
- (HMFMessageTransport)transport;
- (id)logIdentifier;
- (void)_notifyTransport:(id)a3 ofFetchedObjects:(id)a4 forClientUUID:(id)a5 responseHandler:(id)a6;
- (void)handleFetchedObject:(id)a3;
- (void)sendCurrentlyBatchedFetchedObjectsWithCompletion:(id)a3;
@end

@implementation HMCameraObjectFetchServer

- (HMFMessageTransport)transport
{
  WeakRetained = objc_loadWeakRetained(&self->_transport);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMCameraObjectFetchServer *)self clientUUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)_notifyTransport:(id)a3 ofFetchedObjects:(id)a4 forClientUUID:(id)a5 responseHandler:(id)a6
{
  v19[1] = *MEMORY[0x1E69E9840];
  v18 = @"HMCOFC.mk.fo";
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v12 = encodeRootObject(a4);
  v19[0] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];

  v14 = objc_alloc(MEMORY[0x1E69A2A10]);
  v15 = [objc_alloc(MEMORY[0x1E69A2A00]) initWithTarget:v10];

  v16 = [v14 initWithName:@"HMCOFC.m.dfo" destination:v15 payload:v13];
  [v16 setTransport:v11];
  [v16 setResponseHandler:v9];

  [v11 sendMessage:v16 completionHandler:0];
  v17 = *MEMORY[0x1E69E9840];
}

- (void)sendCurrentlyBatchedFetchedObjectsWithCompletion:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMCameraObjectFetchServer *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMCameraObjectFetchServer *)self transport];
  if (v6)
  {
    v7 = [(HMCameraObjectFetchServer *)self currentlyBatchedFetchedObjects];
    v8 = [(HMCameraObjectFetchServer *)self clientUUID];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __78__HMCameraObjectFetchServer_sendCurrentlyBatchedFetchedObjectsWithCompletion___block_invoke;
    v15[3] = &unk_1E754C0F0;
    v16 = v4;
    [(HMCameraObjectFetchServer *)self _notifyTransport:v6 ofFetchedObjects:v7 forClientUUID:v8 responseHandler:v15];

    v9 = [(HMCameraObjectFetchServer *)self currentlyBatchedFetchedObjects];
    [v9 removeAllObjects];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v13;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Cannot send currently batched fetched objects because transport no longer exists", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v4[2](v4);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)handleFetchedObject:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMCameraObjectFetchServer *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMCameraObjectFetchServer *)self transport];
  if (!v6)
  {
    v15 = objc_autoreleasePoolPush();
    v19 = self;
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
    v22 = self;
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

  v7 = [(HMCameraObjectFetchServer *)self currentlyBatchedFetchedObjects];
  [v7 addObject:v4];

  v8 = [(HMCameraObjectFetchServer *)self currentlyBatchedFetchedObjects];
  v9 = [v8 count];
  v10 = [(HMCameraObjectFetchServer *)self fetchedObjectsBatchLimit];

  if (v9 >= v10)
  {
    v11 = [(HMCameraObjectFetchServer *)self currentlyBatchedFetchedObjects];
    v12 = [(HMCameraObjectFetchServer *)self clientUUID];
    [(HMCameraObjectFetchServer *)self _notifyTransport:v6 ofFetchedObjects:v11 forClientUUID:v12 responseHandler:0];

    v13 = [(HMCameraObjectFetchServer *)self currentlyBatchedFetchedObjects];
    [v13 removeAllObjects];
  }

  [(HMCameraObjectFetchServer *)self setTotalFetchedObjectsCount:[(HMCameraObjectFetchServer *)self totalFetchedObjectsCount]+ 1];
  v14 = [(HMCameraObjectFetchServer *)self totalFetchedObjectsCount];
  if (v14 >= [(HMCameraObjectFetchServer *)self totalFetchedObjectsLimit])
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v24 = 138543618;
      v25 = v18;
      v26 = 2048;
      v27 = [(HMCameraObjectFetchServer *)v16 totalFetchedObjectsLimit];
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_INFO, "%{public}@Reached limit of %lu fetched objects", &v24, 0x16u);
    }

    goto LABEL_13;
  }

LABEL_14:

  v23 = *MEMORY[0x1E69E9840];
}

- (BOOL)canHandleMoreFetchedObjects
{
  v3 = [(HMCameraObjectFetchServer *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMCameraObjectFetchServer *)self transport];
  if (v4)
  {
    v5 = [(HMCameraObjectFetchServer *)self totalFetchedObjectsCount];
    v6 = v5 < [(HMCameraObjectFetchServer *)self totalFetchedObjectsLimit];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (HMCameraObjectFetchServer)initWithClientUUID:(id)a3 transport:(id)a4 workQueue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = HMCameraObjectFetchServer;
  v11 = [(HMCameraObjectFetchServer *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_workQueue, a5);
    v13 = [v8 copy];
    clientUUID = v12->_clientUUID;
    v12->_clientUUID = v13;

    objc_storeWeak(&v12->_transport, v9);
    v12->_fetchedObjectsBatchLimit = 100;
    v12->_totalFetchedObjectsLimit = -1;
    v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:v12->_fetchedObjectsBatchLimit];
    currentlyBatchedFetchedObjects = v12->_currentlyBatchedFetchedObjects;
    v12->_currentlyBatchedFetchedObjects = v15;
  }

  return v12;
}

- (HMCameraObjectFetchServer)initWithFetchMessage:(id)a3 workQueue:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 uuidForKey:@"HMCOFC.mk.u"];
  if (v8)
  {
    v9 = [v6 transport];
    if (v9)
    {
      v10 = [(HMCameraObjectFetchServer *)self initWithClientUUID:v8 transport:v9 workQueue:v7];
      v11 = v10;
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v10 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v21 = 138543618;
        v22 = v18;
        v23 = 2112;
        v24 = v6;
        _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Could not find transport on message: %@", &v21, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v11 = 0;
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v10 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [v6 messagePayload];
      v21 = 138543618;
      v22 = v14;
      v23 = 2112;
      v24 = v15;
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