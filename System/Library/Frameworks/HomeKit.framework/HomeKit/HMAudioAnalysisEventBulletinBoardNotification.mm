@interface HMAudioAnalysisEventBulletinBoardNotification
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)mergeFromNewObject:(id)a3;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)logIdentifier;
- (id)uniqueIdentifier;
- (unint64_t)options;
- (void)__configureWithContext:(id)a3;
- (void)commitWithCompletionHandler:(id)a3;
@end

@implementation HMAudioAnalysisEventBulletinBoardNotification

- (NSArray)attributeDescriptions
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMBulletinBoardNotification *)self isEnabled];
  v4 = HMFBooleanToString();
  v5 = [v3 initWithName:@"Enabled" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  v7 = [(HMBulletinBoardNotification *)self condition];
  v8 = [v6 initWithName:@"Condition" value:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (id)logIdentifier
{
  v2 = [(HMAudioAnalysisEventBulletinBoardNotification *)self accessoryIdentifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (BOOL)mergeFromNewObject:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
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

  if (v6)
  {
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
        v27 = 138543874;
        v28 = v13;
        v29 = 2112;
        v30 = v14;
        v31 = 2112;
        v32 = v15;
        _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Merging due to condition value change from %@ to %@", &v27, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      v16 = [v6 condition];
      [(HMBulletinBoardNotification *)v11 setCondition:v16];
    }

    v17 = [(HMBulletinBoardNotification *)self isEnabled];
    if (v17 == [v6 isEnabled])
    {
      v24 = v9 ^ 1;
    }

    else
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
        v27 = 138543874;
        v28 = v21;
        v29 = 2112;
        v30 = v22;
        v31 = 2112;
        v32 = v23;
        _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_INFO, "%{public}@Merging due to enabled value change from %@ to %@", &v27, 0x20u);
      }

      objc_autoreleasePoolPop(v18);
      -[HMBulletinBoardNotification setEnabled:](v19, "setEnabled:", [v6 isEnabled]);
      v24 = 1;
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

- (id)uniqueIdentifier
{
  v2 = MEMORY[0x1E696AFB0];
  v3 = [(HMAudioAnalysisEventBulletinBoardNotification *)self accessoryIdentifier];
  v4 = [v2 hm_deriveUUIDFromBaseUUID:v3];

  return v4;
}

- (void)__configureWithContext:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Configuring HMAudioAnalysisEventBulletinBoardNotification with context %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMBulletinBoardNotification *)v6 setContext:v4];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)commitWithCompletionHandler:(id)a3
{
  v49[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMBulletinBoardNotification *)self context];
  if (!v4)
  {
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAudioAnalysisEventBulletinBoardNotification commitWithCompletionHandler:]", @"completion"];
    v30 = objc_autoreleasePoolPush();
    v31 = self;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543618;
      v43 = v33;
      v44 = 2112;
      v45 = v29;
      _os_log_impl(&dword_19BB39000, v32, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    v34 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v29 userInfo:0];
    objc_exception_throw(v34);
  }

  v6 = v5;
  if (v5)
  {
    v7 = [(HMBulletinBoardNotification *)self condition];
    v8 = [(HMBulletinBoardNotification *)self isEnabled];
    if ([HMPredicateUtilities validatePredicate:v7])
    {
      v37 = [HMPredicateUtilities rewritePredicateForDaemon:v7 characteristicIsInvalid:0];
      v48[0] = @"HM.BulletinBoardNotificationEnabled";
      v9 = [MEMORY[0x1E696AD98] numberWithBool:v8];
      v49[0] = v9;
      v48[1] = @"HM.BulletinBoardNotificationCondition";
      v10 = encodeRootObject(v37);
      v49[1] = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:2];

      v12 = [v6 messageDispatcher];
      v13 = objc_alloc(MEMORY[0x1E69A2A00]);
      v14 = [(HMAudioAnalysisEventBulletinBoardNotification *)self accessoryIdentifier];
      v36 = [v13 initWithTarget:v14];

      objc_initWeak(&location, self);
      v15 = [MEMORY[0x1E69A2A10] messageWithName:@"kBulletinBoardNotificationCommitRequestKey" destination:v36 payload:v11];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __77__HMAudioAnalysisEventBulletinBoardNotification_commitWithCompletionHandler___block_invoke;
      v38[3] = &unk_1E754CFF8;
      objc_copyWeak(&v40, &location);
      v39 = v4;
      [v15 setResponseHandler:v38];
      context = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v19 = [v15 shortDescription];
        *buf = 138543874;
        v43 = v18;
        v44 = 2112;
        v45 = v19;
        v46 = 2112;
        v47 = v16;
        _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_INFO, "%{public}@Committing audio analysis event bulletin board notification using message %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(context);
      [v12 sendMessage:v15];

      objc_destroyWeak(&v40);
      objc_destroyWeak(&location);
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543618;
        v43 = v27;
        v44 = 2112;
        v45 = v7;
        _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@Invalid predicate: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      v37 = [(HMBulletinBoardNotification *)v25 context];
      v11 = [v37 delegateCaller];
      v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
      [v11 callCompletion:v4 error:v12];
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v43 = v23;
      v44 = 2080;
      v45 = "[HMAudioAnalysisEventBulletinBoardNotification commitWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v7 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v4 + 2))(v4, v7);
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __77__HMAudioAnalysisEventBulletinBoardNotification_commitWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v11)
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v12;
      v27 = 2112;
      v28 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Daemon responded with error %@ for commiting Audio Analysis settings", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v13 = [v9 context];
    v14 = [v13 delegateCaller];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __77__HMAudioAnalysisEventBulletinBoardNotification_commitWithCompletionHandler___block_invoke_20;
    v22[3] = &unk_1E754E458;
    v15 = &v24;
    v24 = *(a1 + 32);
    v23 = v5;
    [v14 invokeBlock:v22];

    v16 = v23;
  }

  else
  {
    if (v11)
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v17;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Successfully set Audio Analysis user notification settings", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v16 = [v9 context];
    v18 = [v16 delegateCaller];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __77__HMAudioAnalysisEventBulletinBoardNotification_commitWithCompletionHandler___block_invoke_22;
    v20[3] = &unk_1E754E430;
    v15 = &v21;
    v21 = *(a1 + 32);
    [v18 invokeBlock:v20];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (unint64_t)options
{
  v2 = [(HMBulletinBoardNotification *)self condition];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [HMPredicateUtilities audioAnalysisNotificationOptionsInPredicate:v4];

  v6 = [v5 unsignedIntValue];
  return v6;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t11_13428 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t11_13428, &__block_literal_global_13429);
  }

  v3 = logCategory__hmf_once_v12_13430;

  return v3;
}

uint64_t __60__HMAudioAnalysisEventBulletinBoardNotification_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v12_13430;
  logCategory__hmf_once_v12_13430 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end