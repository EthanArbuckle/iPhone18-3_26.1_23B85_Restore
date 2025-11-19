@interface HMBulletinBoardNotification
+ (id)logCategory;
- (BOOL)isEnabled;
- (BOOL)mergeFromNewObject:(id)a3;
- (HMBulletinBoardNotification)initWithCoder:(id)a3;
- (HMBulletinBoardNotification)initWithEnabled:(BOOL)a3 condition:(id)a4 service:(id)a5 messageTargetUUID:(id)a6;
- (HMService)service;
- (NSPredicate)condition;
- (NSUUID)uniqueIdentifier;
- (id)attributeDescriptions;
- (id)logIdentifier;
- (void)__configureWithContext:(id)a3;
- (void)_callBulletinBoardNotificationUpdatedDelegate;
- (void)_commitWithCompletionHandler:(id)a3;
- (void)_handleBulletinBoardNotificationUpdateNotification:(id)a3;
- (void)_registerNotificationHandlers;
- (void)_unconfigure;
- (void)commitWithCompletionHandler:(id)a3;
- (void)setCondition:(id)a3;
- (void)setEnabled:(BOOL)a3;
@end

@implementation HMBulletinBoardNotification

- (HMService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

- (HMBulletinBoardNotification)initWithCoder:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"service"];
  v6 = [v5 accessory];
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
      v32 = v11;
      v33 = 2112;
      v34 = v5;
      v35 = 2112;
      v36 = v7;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded service: %@, accessory: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v26 = 0;
  }

  else
  {
    v12 = [v4 decodeBoolForKey:@"HM.BulletinBoardNotificationEnabled"];
    v13 = MEMORY[0x1E695DFD8];
    v30[0] = objc_opt_class();
    v30[1] = objc_opt_class();
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
    v15 = [v13 setWithArray:v14];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"HM.BulletinBoardNotificationCondition"];

    v17 = [v7 home];
    v18 = [HMPredicateUtilities rewritePredicateForClient:v16 home:v17];

    v19 = [v5 instanceID];
    v20 = [v19 stringValue];
    v29[0] = v20;
    v29[1] = @"HM.BulletinBoardNotification";
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];

    v22 = MEMORY[0x1E696AFB0];
    v23 = [v7 uuid];
    v24 = [v22 hm_deriveUUIDFromBaseUUID:v23 identifierSalt:0 withSalts:v21];

    v25 = [(HMBulletinBoardNotification *)self initWithEnabled:v12 condition:v18 service:v5 messageTargetUUID:v24];
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

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMBulletinBoardNotification isEnabled](self, "isEnabled")}];
  v5 = [v3 initWithName:@"Enabled" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  v7 = [(HMBulletinBoardNotification *)self uniqueIdentifier];
  v8 = [v6 initWithName:@"Unique ID" value:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)logIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(HMBulletinBoardNotification *)self service];
  v5 = [v4 name];
  v6 = [(HMBulletinBoardNotification *)self messageTargetUUID];
  v7 = [v3 stringWithFormat:@"%@/%@", v5, v6];

  return v7;
}

- (void)_commitWithCompletionHandler:(id)a3
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMBulletinBoardNotification *)self context];
  if (!v4)
  {
    v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMBulletinBoardNotification _commitWithCompletionHandler:]", @"completion"];
    v41 = objc_autoreleasePoolPush();
    v42 = self;
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = HMFGetLogIdentifier();
      *buf = 138543618;
      v53 = v44;
      v54 = 2112;
      v55 = v40;
      _os_log_impl(&dword_19BB39000, v43, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v41);
    v45 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v40 userInfo:0];
    objc_exception_throw(v45);
  }

  v6 = v5;
  if (v5)
  {
    v7 = [(HMBulletinBoardNotification *)self service];
    v8 = [v7 accessory];
    v9 = [v8 home];

    if (v9)
    {
      v50 = @"HM.BulletinBoardNotificationEnabled";
      v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMBulletinBoardNotification isEnabled](self, "isEnabled")}];
      v51 = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
      v12 = [v11 mutableCopy];

      v13 = [(HMBulletinBoardNotification *)self condition];

      if (v13)
      {
        v14 = [(HMBulletinBoardNotification *)self condition];
        v15 = [HMPredicateUtilities validatePredicate:v14];

        if (!v15)
        {
          v23 = [(HMBulletinBoardNotification *)self context];
          v30 = [v23 delegateCaller];
          v29 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
          [v30 callCompletion:v4 error:v29];
          goto LABEL_15;
        }

        buf[0] = 0;
        v16 = [(HMBulletinBoardNotification *)self condition];
        v17 = [HMPredicateUtilities rewritePredicateForDaemon:v16 characteristicIsInvalid:buf];

        if (v17)
        {
          v18 = encodeRootObject(v17);
          [v12 setObject:v18 forKeyedSubscript:@"HM.BulletinBoardNotificationCondition"];
        }
      }

      v19 = objc_alloc(MEMORY[0x1E69A2A10]);
      v20 = objc_alloc(MEMORY[0x1E69A2A00]);
      v21 = [(HMBulletinBoardNotification *)self messageTargetUUID];
      v22 = [v20 initWithTarget:v21];
      v23 = [v19 initWithName:@"kBulletinBoardNotificationCommitRequestKey" destination:v22 payload:v12];

      v24 = [(HMBulletinBoardNotification *)self context];
      v25 = [v24 pendingRequests];

      v26 = [v23 identifier];
      v27 = _Block_copy(v4);
      [v25 addCompletionBlock:v27 forIdentifier:v26];

      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __60__HMBulletinBoardNotification__commitWithCompletionHandler___block_invoke;
      v46[3] = &unk_1E754E0A8;
      v47 = v25;
      v48 = v26;
      v28 = v6;
      v49 = v28;
      v29 = v26;
      v30 = v25;
      [v23 setResponseHandler:v46];
      v31 = [v28 messageDispatcher];
      [v31 sendMessage:v23];

LABEL_15:
      goto LABEL_16;
    }

    v36 = [(HMBulletinBoardNotification *)self context];
    v37 = [v36 delegateCaller];
    v38 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    [v37 callCompletion:v4 error:v38];

    v9 = 0;
  }

  else
  {
    v32 = objc_autoreleasePoolPush();
    v33 = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543618;
      v53 = v35;
      v54 = 2080;
      v55 = "[HMBulletinBoardNotification _commitWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v34, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
    v9 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v4 + 2))(v4, v9);
  }

LABEL_16:

  v39 = *MEMORY[0x1E69E9840];
}

void __60__HMBulletinBoardNotification__commitWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
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
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMBulletinBoardNotification commitWithCompletionHandler:]", @"completion"];
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
    block[2] = __59__HMBulletinBoardNotification_commitWithCompletionHandler___block_invoke;
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
      v25 = "[HMBulletinBoardNotification commitWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v4 + 2))(v4, v12);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_callBulletinBoardNotificationUpdatedDelegate
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v19 = v6;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Calling service notification delegate", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMBulletinBoardNotification *)v4 service];
  v8 = [v7 accessory];
  v9 = [v8 delegate];
  if ([v9 conformsToProtocol:&unk_1F0F63E80])
  {
    v10 = v9;
    if (objc_opt_respondsToSelector())
    {
      v11 = [(HMBulletinBoardNotification *)v4 context];
      v12 = [v11 delegateCaller];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __76__HMBulletinBoardNotification__callBulletinBoardNotificationUpdatedDelegate__block_invoke;
      v14[3] = &unk_1E754E5E8;
      v15 = v10;
      v16 = v8;
      v17 = v7;
      [v12 invokeBlock:v14];
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setCondition:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  condition = self->_condition;
  self->_condition = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSPredicate)condition
{
  os_unfair_lock_lock_with_options();
  v3 = self->_condition;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setEnabled:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_enabled = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isEnabled
{
  os_unfair_lock_lock_with_options();
  enabled = self->_enabled;
  os_unfair_lock_unlock(&self->_lock);
  return enabled;
}

- (NSUUID)uniqueIdentifier
{
  os_unfair_lock_lock_with_options();
  uniqueIdentifier = self->_uniqueIdentifier;
  if (!uniqueIdentifier)
  {
    v4 = [MEMORY[0x1E696AFB0] hm_deriveUUIDFromBaseUUID:self->_messageTargetUUID];
    v5 = self->_uniqueIdentifier;
    self->_uniqueIdentifier = v4;

    uniqueIdentifier = self->_uniqueIdentifier;
  }

  v6 = uniqueIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (void)_handleBulletinBoardNotificationUpdateNotification:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 messagePayload];
    v26 = 138543618;
    v27 = v8;
    v28 = 2112;
    v29 = v9;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Received bulletin board update notification with message %@", &v26, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [v4 BOOLForKey:@"HM.BulletinBoardNotificationEnabled"];
  v11 = [v4 predicateForKey:@"HM.BulletinBoardNotificationCondition"];
  v12 = [(HMBulletinBoardNotification *)v6 service];
  v13 = [v12 accessory];
  v14 = [v13 home];
  v15 = [HMPredicateUtilities rewritePredicateForClient:v11 home:v14];

  v16 = [(HMBulletinBoardNotification *)v6 context];
  v17 = [v16 pendingRequests];

  v18 = [v4 identifier];
  v19 = [v17 removeCompletionBlockForIdentifier:v18];

  v20 = v10 ^ [(HMBulletinBoardNotification *)v6 isEnabled];
  if (v20 == 1)
  {
    [(HMBulletinBoardNotification *)v6 setEnabled:v10];
  }

  v21 = [(HMBulletinBoardNotification *)v6 condition];
  v22 = HMFEqualObjects();

  if (v22)
  {
    if (!v19)
    {
      if (!v20)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else
  {
    [(HMBulletinBoardNotification *)v6 setCondition:v15];
    if (!v19)
    {
LABEL_11:
      [(HMBulletinBoardNotification *)v6 _callBulletinBoardNotificationUpdatedDelegate];
      goto LABEL_12;
    }
  }

  v23 = [(HMBulletinBoardNotification *)v6 context];
  v24 = [v23 delegateCaller];
  [v24 callCompletion:v19 error:0];

LABEL_12:
  v25 = *MEMORY[0x1E69E9840];
}

- (void)_unconfigure
{
  v16 = *MEMORY[0x1E69E9840];
  context = self->_context;
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (context)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v8;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Unconfiguring bulletinBoard notification", &v14, 0xCu);
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

- (void)__configureWithContext:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Configuring with context: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMBulletinBoardNotification *)v6 setContext:v4];
  [(HMBulletinBoardNotification *)v6 _registerNotificationHandlers];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_registerNotificationHandlers
{
  v4 = [(HMBulletinBoardNotification *)self context];
  v3 = [v4 messageDispatcher];
  [v3 registerForMessage:@"kBulletinBoardNotificationUpdateNotificationKey" receiver:self selector:sel__handleBulletinBoardNotificationUpdateNotification_];
}

- (HMBulletinBoardNotification)initWithEnabled:(BOOL)a3 condition:(id)a4 service:(id)a5 messageTargetUUID:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = HMBulletinBoardNotification;
  v14 = [(HMBulletinBoardNotification *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_enabled = a3;
    objc_storeStrong(&v14->_condition, a4);
    objc_storeWeak(&v15->_service, v12);
    objc_storeStrong(&v15->_messageTargetUUID, a6);
  }

  return v15;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t14 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t14, &__block_literal_global_63213);
  }

  v3 = logCategory__hmf_once_v15;

  return v3;
}

uint64_t __42__HMBulletinBoardNotification_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v15;
  logCategory__hmf_once_v15 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end