@interface MTSDeviceSetupManager
+ (id)logCategory;
- (MTSDeviceSetupManager)init;
- (MTSDeviceSetupManager)initWithServerProxy:(id)a3;
- (void)dealloc;
- (void)performDeviceSetupUsingRequest:(id)a3 completionHandler:(id)a4;
@end

@implementation MTSDeviceSetupManager

- (void)performDeviceSetupUsingRequest:(id)a3 completionHandler:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    _HMFPreconditionFailure();
LABEL_7:
    _HMFPreconditionFailure();
  }

  v8 = v7;
  if (!v7)
  {
    goto LABEL_7;
  }

  v9 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"Performing Matter device setup"];
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [v9 identifier];
    v15 = [v14 shortDescription];
    *buf = 138543874;
    v24 = v13;
    v25 = 2114;
    v26 = v15;
    v27 = 2112;
    v28 = v6;
    _os_log_impl(&dword_239824000, v12, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Performing Matter device setup using request: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v16 = [(MTSDeviceSetupManager *)v11 serverProxy];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __74__MTSDeviceSetupManager_performDeviceSetupUsingRequest_completionHandler___block_invoke;
  v20[3] = &unk_278AA1928;
  v20[4] = v11;
  v21 = v9;
  v22 = v8;
  v17 = v8;
  v18 = v9;
  [v16 performDeviceSetupUsingRequest:v6 completionHandler:v20];

  v19 = *MEMORY[0x277D85DE8];
}

void __74__MTSDeviceSetupManager_performDeviceSetupUsingRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [*(a1 + 40) identifier];
      v10 = [v9 shortDescription];
      v17 = 138543874;
      v18 = v8;
      v19 = 2114;
      v20 = v10;
      v21 = 2112;
      v22 = v3;
      _os_log_impl(&dword_239824000, v7, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to perform Matter device setup setup: %@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    v11 = *(a1 + 48);
    v12 = [MEMORY[0x277CCA9B8] mts_errorWithCode:1];
    (*(v11 + 16))(v11, v12);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [*(a1 + 40) identifier];
      v15 = [v14 shortDescription];
      v17 = 138543618;
      v18 = v13;
      v19 = 2114;
      v20 = v15;
      _os_log_impl(&dword_239824000, v7, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully performed Matter device setup setup", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    (*(*(a1 + 48) + 16))();
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(MTSXPCServerProxy *)self->_serverProxy invalidate];
  v3.receiver = self;
  v3.super_class = MTSDeviceSetupManager;
  [(MTSDeviceSetupManager *)&v3 dealloc];
}

- (MTSDeviceSetupManager)initWithServerProxy:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v12.receiver = self;
    v12.super_class = MTSDeviceSetupManager;
    v7 = [(MTSDeviceSetupManager *)&v12 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_serverProxy, a3);
    }

    return v8;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    return [(MTSDeviceSetupManager *)v10 init];
  }
}

- (MTSDeviceSetupManager)init
{
  v3 = objc_alloc_init(MTSXPCServerProxy);
  v4 = [(MTSDeviceSetupManager *)self initWithServerProxy:v3];

  return v4;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3, &__block_literal_global_573);
  }

  v3 = logCategory__hmf_once_v4;

  return v3;
}

uint64_t __36__MTSDeviceSetupManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v4 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end