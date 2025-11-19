@interface HMMatterBulletinBoardNotification
+ (id)logCategory;
- (BOOL)mergeFromNewObject:(id)a3;
- (HMAccessory)accessory;
- (HMMatterBulletinBoardNotification)initWithCoder:(id)a3;
- (NSArray)attributeDescriptions;
- (id)logIdentifier;
- (void)__configureWithContext:(id)a3 accessory:(id)a4;
- (void)_commitWithCompletionHandler:(id)a3;
- (void)_handleBulletinBoardNotificationUpdateNotification:(id)a3;
- (void)_registerNotificationHandlers;
- (void)_unconfigure;
- (void)commitWithCompletionHandler:(id)a3;
- (void)setAccessory:(id)a3;
@end

@implementation HMMatterBulletinBoardNotification

- (HMMatterBulletinBoardNotification)initWithCoder:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessory"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceMatterEndpointID"];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v25 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543874;
      v33 = v11;
      v34 = 2112;
      v35 = v5;
      v36 = 2112;
      v37 = v7;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded accessory: %@, endpointID: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v26 = 0;
  }

  else
  {
    v29 = [v4 decodeBoolForKey:@"HM.BulletinBoardNotificationEnabled"];
    v12 = MEMORY[0x1E695DFD8];
    v31[0] = objc_opt_class();
    v31[1] = objc_opt_class();
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
    v14 = [v12 setWithArray:v13];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"HM.BulletinBoardNotificationCondition"];

    v16 = [v5 home];
    v17 = [HMPredicateUtilities rewritePredicateForClient:v15 home:v16];

    v18 = [v5 uuid];
    v19 = [v18 UUIDString];
    v30[0] = v19;
    v20 = [v7 stringValue];
    v30[1] = v20;
    v30[2] = @"HM.BulletinBoardNotification";
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:3];

    v22 = MEMORY[0x1E696AFB0];
    v23 = [v5 uuid];
    v24 = [v22 hm_deriveUUIDFromBaseUUID:v23 identifierSalt:0 withSalts:v21];

    v25 = [(HMMatterBulletinBoardNotification *)self initWithEnabled:v29 condition:v17 accessory:v5 endpointID:v7 messageTargetUUID:v24];
    v26 = v25;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

- (BOOL)mergeFromNewObject:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [(HMBulletinBoardNotification *)self condition];
  v8 = [v6 condition];
  v9 = HMFEqualObjects();

  if ((v9 & 1) == 0)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [(HMBulletinBoardNotification *)v11 condition];
      v15 = [v6 condition];
      v26 = 138543874;
      v27 = v13;
      v28 = 2112;
      v29 = v14;
      v30 = 2112;
      v31 = v15;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Merging due to condition value change from %@ to %@", &v26, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v16 = [v6 condition];
    [(HMBulletinBoardNotification *)v11 setCondition:v16];
  }

  v17 = [(HMBulletinBoardNotification *)self isEnabled];
  if (v17 != [v6 isEnabled])
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      [(HMBulletinBoardNotification *)v19 isEnabled];
      v22 = HMFBooleanToString();
      [v6 isEnabled];
      v23 = HMFBooleanToString();
      v26 = 138543874;
      v27 = v21;
      v28 = 2112;
      v29 = v22;
      v30 = 2112;
      v31 = v23;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_INFO, "%{public}@Merging due to enabled value change from %@ to %@", &v26, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    -[HMBulletinBoardNotification setEnabled:](v19, "setEnabled:", [v6 isEnabled]);
  }

  v24 = *MEMORY[0x1E69E9840];
  return v9 ^ 1;
}

- (NSArray)attributeDescriptions
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = HMMatterBulletinBoardNotification;
  v3 = [(HMBulletinBoardNotification *)&v11 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v5 = [(HMMatterBulletinBoardNotification *)self endpointID];
  v6 = [v4 initWithName:@"Endpoint ID" value:v5];
  v12[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v8 = [v7 arrayByAddingObjectsFromArray:v3];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)logIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(HMMatterBulletinBoardNotification *)self accessory];
  v5 = [v4 name];
  v6 = [(HMMatterBulletinBoardNotification *)self endpointID];
  v7 = [(HMMatterBulletinBoardNotification *)self messageTargetUUID];
  v8 = [v3 stringWithFormat:@"%@/%@%@", v5, v6, v7];

  return v8;
}

- (void)_commitWithCompletionHandler:(id)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMBulletinBoardNotification *)self context];
  if (!v4)
  {
    v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMMatterBulletinBoardNotification _commitWithCompletionHandler:]", @"completion"];
    v40 = objc_autoreleasePoolPush();
    v41 = self;
    v42 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = HMFGetLogIdentifier();
      *buf = 138543618;
      v52 = v43;
      v53 = 2112;
      v54 = v39;
      _os_log_impl(&dword_19BB39000, v42, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v40);
    v44 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v39 userInfo:0];
    objc_exception_throw(v44);
  }

  v6 = v5;
  if (v5)
  {
    v7 = [(HMMatterBulletinBoardNotification *)self accessory];
    v8 = [v7 home];

    if (v8)
    {
      v49 = @"HM.BulletinBoardNotificationEnabled";
      v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMBulletinBoardNotification isEnabled](self, "isEnabled")}];
      v50 = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      v11 = [v10 mutableCopy];

      v12 = [(HMBulletinBoardNotification *)self condition];

      if (v12)
      {
        v13 = [(HMBulletinBoardNotification *)self condition];
        v14 = [HMPredicateUtilities validatePredicate:v13];

        if (!v14)
        {
          v22 = [(HMBulletinBoardNotification *)self context];
          v29 = [v22 delegateCaller];
          v28 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
          [v29 callCompletion:v4 error:v28];
          goto LABEL_15;
        }

        v15 = [(HMBulletinBoardNotification *)self condition];
        v16 = [HMPredicateUtilities rewritePredicateForDaemon:v15];

        if (v16)
        {
          v17 = encodeRootObject(v16);
          [v11 setObject:v17 forKeyedSubscript:@"HM.BulletinBoardNotificationCondition"];
        }
      }

      v18 = objc_alloc(MEMORY[0x1E69A2A10]);
      v19 = objc_alloc(MEMORY[0x1E69A2A00]);
      v20 = [(HMMatterBulletinBoardNotification *)self messageTargetUUID];
      v21 = [v19 initWithTarget:v20];
      v22 = [v18 initWithName:@"kBulletinBoardNotificationCommitRequestKey" destination:v21 payload:v11];

      v23 = [(HMBulletinBoardNotification *)self context];
      v24 = [v23 pendingRequests];

      v25 = [v22 identifier];
      v26 = _Block_copy(v4);
      [v24 addCompletionBlock:v26 forIdentifier:v25];

      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __66__HMMatterBulletinBoardNotification__commitWithCompletionHandler___block_invoke;
      v45[3] = &unk_1E754E0A8;
      v46 = v24;
      v47 = v25;
      v27 = v6;
      v48 = v27;
      v28 = v25;
      v29 = v24;
      [v22 setResponseHandler:v45];
      v30 = [v27 messageDispatcher];
      [v30 sendMessage:v22];

LABEL_15:
      goto LABEL_16;
    }

    v35 = [(HMBulletinBoardNotification *)self context];
    v36 = [v35 delegateCaller];
    v37 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    [v36 callCompletion:v4 error:v37];

    v8 = 0;
  }

  else
  {
    v31 = objc_autoreleasePoolPush();
    v32 = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543618;
      v52 = v34;
      v53 = 2080;
      v54 = "[HMMatterBulletinBoardNotification _commitWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v33, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v31);
    v8 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v4 + 2))(v4, v8);
  }

LABEL_16:

  v38 = *MEMORY[0x1E69E9840];
}

void __66__HMMatterBulletinBoardNotification__commitWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = a2;
    v7 = [v3 removeCompletionBlockForIdentifier:v4];
    v6 = [*(a1 + 48) delegateCaller];
    [v6 callCompletion:v7 error:v5];
  }
}

- (void)commitWithCompletionHandler:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMBulletinBoardNotification *)self context];
  if (!v4)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMMatterBulletinBoardNotification commitWithCompletionHandler:]", @"completion"];
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v18;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v14 userInfo:0];
    objc_exception_throw(v19);
  }

  v6 = v5;
  if (v5)
  {
    v7 = [v5 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__HMMatterBulletinBoardNotification_commitWithCompletionHandler___block_invoke;
    block[3] = &unk_1E754E458;
    block[4] = self;
    v21 = v4;
    dispatch_async(v7, block);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v11;
      v24 = 2080;
      v25 = "[HMMatterBulletinBoardNotification commitWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v4 + 2))(v4, v12);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_handleBulletinBoardNotificationUpdateNotification:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 messagePayload];
    v24 = 138543618;
    v25 = v8;
    v26 = 2112;
    v27 = v9;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Received Matter bulletin board update notification with message %@", &v24, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [v4 BOOLForKey:@"HM.BulletinBoardNotificationEnabled"];
  v11 = [v4 predicateForKey:@"HM.BulletinBoardNotificationCondition"];
  v12 = [(HMMatterBulletinBoardNotification *)v6 accessory];
  v13 = [v12 home];
  v14 = [HMPredicateUtilities rewritePredicateForClient:v11 home:v13];

  v15 = [(HMBulletinBoardNotification *)v6 context];
  v16 = [v15 pendingRequests];

  v17 = [v4 identifier];
  v18 = [v16 removeCompletionBlockForIdentifier:v17];

  if (v10 != [(HMBulletinBoardNotification *)v6 isEnabled])
  {
    [(HMBulletinBoardNotification *)v6 setEnabled:v10];
  }

  v19 = [(HMBulletinBoardNotification *)v6 condition];
  v20 = HMFEqualObjects();

  if ((v20 & 1) == 0)
  {
    [(HMBulletinBoardNotification *)v6 setCondition:v14];
  }

  if (v18)
  {
    v21 = [(HMBulletinBoardNotification *)v6 context];
    v22 = [v21 delegateCaller];
    [v22 callCompletion:v18 error:0];
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)_unconfigure
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(HMBulletinBoardNotification *)self context];

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v8;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Unconfiguring Matter bulletinBoard notification", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v9 = [(HMBulletinBoardNotification *)v5 context];
    v10 = [v9 messageDispatcher];
    [v10 deregisterReceiver:v5];

    [(HMBulletinBoardNotification *)v5 setContext:0];
    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 removeObserver:v5];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Skipping unconfigure on already unconfigured object", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)__configureWithContext:(id)a3 accessory:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Configuring with context: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  [(HMBulletinBoardNotification *)v9 setContext:v6];
  [(HMMatterBulletinBoardNotification *)v9 setAccessory:v7];
  [(HMMatterBulletinBoardNotification *)v9 _registerNotificationHandlers];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setAccessory:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_accessory, v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (HMAccessory)accessory
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_accessory);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (void)_registerNotificationHandlers
{
  v4 = [(HMBulletinBoardNotification *)self context];
  v3 = [v4 messageDispatcher];
  [v3 registerForMessage:@"kBulletinBoardNotificationUpdateNotificationKey" receiver:self selector:sel__handleBulletinBoardNotificationUpdateNotification_];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t10_23423 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t10_23423, &__block_literal_global_23424);
  }

  v3 = logCategory__hmf_once_v11_23425;

  return v3;
}

uint64_t __48__HMMatterBulletinBoardNotification_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v11_23425;
  logCategory__hmf_once_v11_23425 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end