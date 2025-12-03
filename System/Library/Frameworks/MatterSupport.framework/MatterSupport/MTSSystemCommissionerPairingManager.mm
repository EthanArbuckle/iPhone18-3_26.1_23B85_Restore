@interface MTSSystemCommissionerPairingManager
+ (id)logCategory;
- (MTSSystemCommissionerPairingManager)init;
- (MTSSystemCommissionerPairingManager)initWithServerProxy:(id)proxy;
- (void)dealloc;
- (void)fetchPairingsWithCompletionHandler:(id)handler;
- (void)removePairingWithUUID:(id)d completionHandler:(id)handler;
@end

@implementation MTSSystemCommissionerPairingManager

- (void)removePairingWithUUID:(id)d completionHandler:(id)handler
{
  v29 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
LABEL_7:
    _HMFPreconditionFailure();
  }

  v8 = handlerCopy;
  if (!handlerCopy)
  {
    goto LABEL_7;
  }

  v9 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"Remove system commissioner pairing"];
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    identifier = [v9 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543874;
    v24 = v13;
    v25 = 2114;
    v26 = shortDescription;
    v27 = 2112;
    v28 = dCopy;
    _os_log_impl(&dword_239824000, v12, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Removing system commissioner pairing with UUID: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  serverProxy = [(MTSSystemCommissionerPairingManager *)selfCopy serverProxy];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __79__MTSSystemCommissionerPairingManager_removePairingWithUUID_completionHandler___block_invoke;
  v20[3] = &unk_278AA1928;
  v20[4] = selfCopy;
  v21 = v9;
  v22 = v8;
  v17 = v8;
  v18 = v9;
  [serverProxy removeSystemCommissionerPairingWithUUID:dCopy completionHandler:v20];

  v19 = *MEMORY[0x277D85DE8];
}

void __79__MTSSystemCommissionerPairingManager_removePairingWithUUID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
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
      v18 = 138543874;
      v19 = v8;
      v20 = 2114;
      v21 = v10;
      v22 = 2112;
      v23 = v3;
      v11 = "%{public}@[%{public}@] Failed to remove system commissioner pairing: %@";
      v12 = v7;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 32;
LABEL_6:
      _os_log_impl(&dword_239824000, v12, v13, v11, &v18, v14);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [*(a1 + 40) identifier];
    v10 = [v9 shortDescription];
    v18 = 138543618;
    v19 = v8;
    v20 = 2114;
    v21 = v10;
    v11 = "%{public}@[%{public}@] Successfully removed system commissioner pairing";
    v12 = v7;
    v13 = OS_LOG_TYPE_INFO;
    v14 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 48) + 16))(*(a1 + 48), v3, v15, v16);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)fetchPairingsWithCompletionHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    _HMFPreconditionFailure();
  }

  v5 = handlerCopy;
  v6 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"Fetch system commissioner pairings"];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    identifier = [v6 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543618;
    v21 = v10;
    v22 = 2114;
    v23 = shortDescription;
    _os_log_impl(&dword_239824000, v9, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Fetching system commissioner pairings", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  serverProxy = [(MTSSystemCommissionerPairingManager *)selfCopy serverProxy];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __74__MTSSystemCommissionerPairingManager_fetchPairingsWithCompletionHandler___block_invoke;
  v17[3] = &unk_278AA1900;
  v17[4] = selfCopy;
  v18 = v6;
  v19 = v5;
  v14 = v5;
  v15 = v6;
  [serverProxy fetchSystemCommissionerPairingsWithCompletionHandler:v17];

  v16 = *MEMORY[0x277D85DE8];
}

void __74__MTSSystemCommissionerPairingManager_fetchPairingsWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) identifier];
      v13 = [v12 shortDescription];
      v19 = 138543874;
      v20 = v11;
      v21 = 2114;
      v22 = v13;
      v23 = 2048;
      v24 = [v5 count];
      v14 = "%{public}@[%{public}@] Fetched %ld system commissioner pairings";
      v15 = v10;
      v16 = OS_LOG_TYPE_INFO;
LABEL_6:
      _os_log_impl(&dword_239824000, v15, v16, v14, &v19, 0x20u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) identifier];
    v13 = [v12 shortDescription];
    v19 = 138543874;
    v20 = v11;
    v21 = 2114;
    v22 = v13;
    v23 = 2112;
    v24 = v6;
    v14 = "%{public}@[%{public}@] Failed to fetch system commissioner pairings: %@";
    v15 = v10;
    v16 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  (*(*(a1 + 48) + 16))(*(a1 + 48), v5, v6, v17);

  v18 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(MTSXPCServerProxy *)self->_serverProxy invalidate];
  v3.receiver = self;
  v3.super_class = MTSSystemCommissionerPairingManager;
  [(MTSSystemCommissionerPairingManager *)&v3 dealloc];
}

- (MTSSystemCommissionerPairingManager)initWithServerProxy:(id)proxy
{
  proxyCopy = proxy;
  if (proxyCopy)
  {
    v6 = proxyCopy;
    v12.receiver = self;
    v12.super_class = MTSSystemCommissionerPairingManager;
    v7 = [(MTSSystemCommissionerPairingManager *)&v12 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_serverProxy, proxy);
    }

    return v8;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    return [(MTSSystemCommissionerPairingManager *)v10 init];
  }
}

- (MTSSystemCommissionerPairingManager)init
{
  v3 = objc_alloc_init(MTSXPCServerProxy);
  v4 = [(MTSSystemCommissionerPairingManager *)self initWithServerProxy:v3];

  return v4;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t6 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t6, &__block_literal_global_824);
  }

  v3 = logCategory__hmf_once_v7;

  return v3;
}

uint64_t __50__MTSSystemCommissionerPairingManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v7 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end