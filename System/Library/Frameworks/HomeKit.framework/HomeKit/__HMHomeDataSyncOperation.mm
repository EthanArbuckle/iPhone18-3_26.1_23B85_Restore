@interface __HMHomeDataSyncOperation
+ (id)logCategory;
- (HMHomeManager)manager;
- (__HMHomeDataSyncOperation)initWithHomeManager:(id)manager;
- (void)main;
@end

@implementation __HMHomeDataSyncOperation

+ (id)logCategory
{
  if (logCategory__hmf_once_t7_53187 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t7_53187, &__block_literal_global_53188);
  }

  v3 = logCategory__hmf_once_v8_53189;

  return v3;
}

- (void)main
{
  v43[3] = *MEMORY[0x1E69E9840];
  manager = [(__HMHomeDataSyncOperation *)self manager];
  v4 = manager;
  if (manager)
  {
    generationCounter = [manager generationCounter];
    metadataVersion = [v4 metadataVersion];
    configuration = [v4 configuration];
    v8 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [v4 uuid];
    v10 = [v8 initWithTarget:uuid];

    v11 = MEMORY[0x1E69A2A10];
    qualityOfService = [(__HMHomeDataSyncOperation *)self qualityOfService];
    v42[0] = @"kConfigGenerationCounterKey";
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:generationCounter];
    v43[0] = v13;
    v42[1] = @"kHAPMetadataVersionKey";
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:metadataVersion];
    v43[1] = v14;
    v42[2] = @"options";
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(configuration, "options")}];
    v43[2] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:3];
    v17 = [v11 messageWithName:@"HMHM.fhc" qualityOfService:qualityOfService destination:v10 payload:v16];

    objc_initWeak(&location, self);
    objc_initWeak(&from, v4);
    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __33____HMHomeDataSyncOperation_main__block_invoke;
    v33 = &unk_1E754CAE0;
    objc_copyWeak(&v34, &location);
    objc_copyWeak(&v35, &from);
    [v17 setResponseHandler:&v30];
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      shortDescription = [v17 shortDescription];
      *buf = 138543618;
      v39 = v21;
      v40 = 2112;
      v41 = shortDescription;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_INFO, "%{public}@Sending sync request using message: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    context = [v4 context];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v17];

    objc_destroyWeak(&v35);
    objc_destroyWeak(&v34);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v28;
      _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_INFO, "%{public}@Manager was deallocated before sync operation started", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v25);
    configuration = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
    [(HMFOperation *)selfCopy2 cancelWithError:configuration];
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (HMHomeManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

- (__HMHomeDataSyncOperation)initWithHomeManager:(id)manager
{
  managerCopy = manager;
  v13.receiver = self;
  v13.super_class = __HMHomeDataSyncOperation;
  v5 = [(HMFOperation *)&v13 initWithTimeout:0.0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_manager, managerCopy);
    v7 = MEMORY[0x1E696AEC0];
    logIdentifier = [managerCopy logIdentifier];
    name = [(__HMHomeDataSyncOperation *)v6 name];
    v10 = [v7 stringWithFormat:@"%@/%@", logIdentifier, name];
    logIdentifier = v6->_logIdentifier;
    v6->_logIdentifier = v10;
  }

  return v6;
}

@end