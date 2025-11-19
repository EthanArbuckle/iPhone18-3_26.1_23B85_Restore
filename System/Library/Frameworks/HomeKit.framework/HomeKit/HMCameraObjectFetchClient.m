@interface HMCameraObjectFetchClient
+ (id)logCategory;
- (HMCameraObjectFetchClient)initWithUUID:(id)a3 context:(id)a4 messageName:(id)a5 destination:(id)a6;
- (id)logIdentifier;
- (void)dealloc;
- (void)fetchWithCompletion:(id)a3;
- (void)handleDidFetchObjectsMessage:(id)a3;
@end

@implementation HMCameraObjectFetchClient

- (id)logIdentifier
{
  v2 = [(HMCameraObjectFetchClient *)self UUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)handleDidFetchObjectsMessage:(id)a3
{
  v47[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 messagePayload];
  v6 = [v5 objectForKeyedSubscript:@"HMCOFC.mk.fo"];

  if (!v6)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [v4 messagePayload];
      *buf = 138543618;
      v42 = v18;
      v43 = 2112;
      v44 = v19;
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Could not find fetched objects in message payload: %@", buf, 0x16u);
    }

    v20 = v15;
    goto LABEL_21;
  }

  v7 = [(HMCameraObjectFetchClient *)self classForUnarchiving];
  if (!v7)
  {
    v14 = v6;
    objc_opt_class();
    v21 = objc_opt_isKindOfClass() & 1;
    if (v21)
    {
      v22 = v14;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;

    if (v21)
    {
LABEL_12:
      v24 = objc_autoreleasePoolPush();
      v25 = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        v28 = [v14 count];
        *buf = 138543618;
        v42 = v27;
        v43 = 2048;
        v44 = v28;
        _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_INFO, "%{public}@Handling %lu fetched objects", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      v29 = [(HMCameraObjectFetchClient *)v25 fetchedObjects];
      [v29 addObjectsFromArray:v14];

      [v4 respondWithPayload:0];
      goto LABEL_22;
    }

    v35 = objc_autoreleasePoolPush();
    v36 = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543618;
      v42 = v38;
      v43 = 2112;
      v44 = v14;
      _os_log_impl(&dword_19BB39000, v37, OS_LOG_TYPE_ERROR, "%{public}@No class for unarchiving and fetchedObjects was not already an array: %@", buf, 0x16u);
    }

    v20 = v35;
LABEL_21:
    objc_autoreleasePoolPop(v20);
    v14 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
    [v4 respondWithError:v14];
    goto LABEL_22;
  }

  v8 = v7;
  v9 = MEMORY[0x1E696ACD0];
  v10 = MEMORY[0x1E695DFD8];
  v47[0] = objc_opt_class();
  v47[1] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
  v12 = [v10 setWithArray:v11];
  v40 = 0;
  v13 = [v9 unarchivedObjectOfClasses:v12 fromData:v6 error:&v40];
  v14 = v40;

  if (v13)
  {

    v14 = v13;
    goto LABEL_12;
  }

  v30 = objc_autoreleasePoolPush();
  v31 = self;
  v32 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    v33 = HMFGetLogIdentifier();
    *buf = 138543874;
    v42 = v33;
    v43 = 2112;
    v44 = v6;
    v45 = 2112;
    v46 = v14;
    _os_log_impl(&dword_19BB39000, v32, OS_LOG_TYPE_ERROR, "%{public}@Could decode encoded fetched objects %@: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v30);
  v34 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
  [v4 respondWithError:v34];

LABEL_22:
  v39 = *MEMORY[0x1E69E9840];
}

- (void)fetchWithCompletion:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMCameraObjectFetchClient *)self context];
  v6 = [v5 messageDispatcher];
  [v6 registerForMessage:@"HMCOFC.m.dfo" receiver:self selector:sel_handleDidFetchObjectsMessage_];

  v7 = [(HMCameraObjectFetchClient *)self payload];
  v8 = [v7 mutableCopy];

  v9 = [(HMCameraObjectFetchClient *)self UUID];
  [v8 setObject:v9 forKeyedSubscript:@"HMCOFC.mk.u"];

  v10 = MEMORY[0x1E69A2A10];
  v11 = [(HMCameraObjectFetchClient *)self messageName];
  v12 = [(HMCameraObjectFetchClient *)self destination];
  v13 = [v10 messageWithName:v11 destination:v12 payload:v8];

  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __49__HMCameraObjectFetchClient_fetchWithCompletion___block_invoke;
  v25 = &unk_1E754DE00;
  v26 = self;
  v14 = v4;
  v27 = v14;
  [v13 setResponseHandler:&v22];
  v15 = objc_autoreleasePoolPush();
  v16 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543362;
    v29 = v18;
    _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_INFO, "%{public}@Fetching objects", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v15);
  v19 = [(HMCameraObjectFetchClient *)v16 context:v22];
  v20 = [v19 messageDispatcher];
  [v20 sendMessage:v13];

  v21 = *MEMORY[0x1E69E9840];
}

void __49__HMCameraObjectFetchClient_fetchWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v11;
      v28 = 2112;
      v29 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch objects: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [*(a1 + 32) context];
    v13 = [v12 delegateCaller];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __49__HMCameraObjectFetchClient_fetchWithCompletion___block_invoke_12;
    v23[3] = &unk_1E754E458;
    v14 = &v25;
    v25 = *(a1 + 40);
    v24 = v5;
    [v13 invokeBlock:v23];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [*(a1 + 32) fetchedObjects];
      *buf = 138543618;
      v27 = v15;
      v28 = 2048;
      v29 = [v16 count];
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Successfully fetched %lu objects", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v17 = [*(a1 + 32) context];
    v18 = [v17 delegateCaller];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __49__HMCameraObjectFetchClient_fetchWithCompletion___block_invoke_14;
    v21[3] = &unk_1E754E458;
    v14 = &v22;
    v19 = *(a1 + 40);
    v21[4] = *(a1 + 32);
    v22 = v19;
    [v18 invokeBlock:v21];
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __49__HMCameraObjectFetchClient_fetchWithCompletion___block_invoke_14(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = [*(a1 + 32) fetchedObjects];
  v2 = [v3 copy];
  (*(v1 + 16))(v1, v2, 0);
}

- (void)dealloc
{
  v3 = [(HMCameraObjectFetchClient *)self context];
  v4 = [v3 messageDispatcher];
  [v4 deregisterReceiver:self];

  v5.receiver = self;
  v5.super_class = HMCameraObjectFetchClient;
  [(HMCameraObjectFetchClient *)&v5 dealloc];
}

- (HMCameraObjectFetchClient)initWithUUID:(id)a3 context:(id)a4 messageName:(id)a5 destination:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v25.receiver = self;
  v25.super_class = HMCameraObjectFetchClient;
  v15 = [(HMCameraObjectFetchClient *)&v25 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_UUID, a3);
    objc_storeStrong(&v16->_context, a4);
    v17 = [v13 copy];
    messageName = v16->_messageName;
    v16->_messageName = v17;

    v19 = [v14 copy];
    destination = v16->_destination;
    v16->_destination = v19;

    payload = v16->_payload;
    v16->_payload = MEMORY[0x1E695E0F8];

    v22 = [MEMORY[0x1E695DF70] array];
    fetchedObjects = v16->_fetchedObjects;
    v16->_fetchedObjects = v22;
  }

  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t8_38651 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t8_38651, &__block_literal_global_38652);
  }

  v3 = logCategory__hmf_once_v9_38653;

  return v3;
}

uint64_t __40__HMCameraObjectFetchClient_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v9_38653;
  logCategory__hmf_once_v9_38653 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end