@interface MTSDevicePairingManager
+ (id)logCategory;
- (MTSDevicePairingManager)initWithSystemCommissionerPairing:(id)pairing;
- (MTSDevicePairingManager)initWithSystemCommissionerPairing:(id)pairing serverProxy:(id)proxy;
- (id)logIdentifier;
- (void)dealloc;
- (void)fetchPairingsWithCompletionHandler:(id)handler;
- (void)openCommissioningWindowWithDuration:(double)duration completionHandler:(id)handler;
- (void)readCommissioningWindowStatusWithCompletionHandler:(id)handler;
- (void)removeAllPairingsWithCompletionHandler:(id)handler;
- (void)removePairingWithUUID:(id)d completionHandler:(id)handler;
@end

@implementation MTSDevicePairingManager

- (id)logIdentifier
{
  systemCommissionerPairing = [(MTSDevicePairingManager *)self systemCommissionerPairing];
  uuid = [systemCommissionerPairing uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (void)readCommissioningWindowStatusWithCompletionHandler:(id)handler
{
  v26 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    _HMFPreconditionFailure();
  }

  v5 = handlerCopy;
  v6 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"Read commissioning window status"];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    identifier = [v6 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543618;
    v23 = v10;
    v24 = 2114;
    v25 = shortDescription;
    _os_log_impl(&dword_239824000, v9, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Reading commissioning window status", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  serverProxy = [(MTSDevicePairingManager *)selfCopy serverProxy];
  systemCommissionerPairing = [(MTSDevicePairingManager *)selfCopy systemCommissionerPairing];
  uuid = [systemCommissionerPairing uuid];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __78__MTSDevicePairingManager_readCommissioningWindowStatusWithCompletionHandler___block_invoke;
  v19[3] = &unk_278AA18A8;
  v19[4] = selfCopy;
  v20 = v6;
  v21 = v5;
  v16 = v5;
  v17 = v6;
  [serverProxy readCommissioningWindowStatusForSystemCommissionerPairingUUID:uuid completionHandler:v19];

  v18 = *MEMORY[0x277D85DE8];
}

void __78__MTSDevicePairingManager_readCommissioningWindowStatusWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
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
      v14 = "%{public}@[%{public}@] Failed to read commissioning window status: %@";
      v15 = v10;
      v16 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_239824000, v15, v16, v14, &v19, 0x20u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) identifier];
    v13 = [v12 shortDescription];
    v19 = 138543874;
    v20 = v11;
    v21 = 2114;
    v22 = v13;
    v23 = 2112;
    v24 = v5;
    v14 = "%{public}@[%{public}@] Successfully read commissioning window status: %@";
    v15 = v10;
    v16 = OS_LOG_TYPE_INFO;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  (*(*(a1 + 48) + 16))(*(a1 + 48), v5, v6, v17);

  v18 = *MEMORY[0x277D85DE8];
}

- (void)openCommissioningWindowWithDuration:(double)duration completionHandler:(id)handler
{
  v28 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    _HMFPreconditionFailure();
  }

  v7 = handlerCopy;
  v8 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"Open commissioning window"];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    identifier = [v8 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543618;
    v25 = v12;
    v26 = 2114;
    v27 = shortDescription;
    _os_log_impl(&dword_239824000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Opening commissioning window", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  serverProxy = [(MTSDevicePairingManager *)selfCopy serverProxy];
  systemCommissionerPairing = [(MTSDevicePairingManager *)selfCopy systemCommissionerPairing];
  uuid = [systemCommissionerPairing uuid];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __81__MTSDevicePairingManager_openCommissioningWindowWithDuration_completionHandler___block_invoke;
  v21[3] = &unk_278AA1880;
  v21[4] = selfCopy;
  v22 = v8;
  v23 = v7;
  v18 = v7;
  v19 = v8;
  [serverProxy openCommissioningWindowForSystemCommissionerPairingUUID:uuid duration:v21 completionHandler:duration];

  v20 = *MEMORY[0x277D85DE8];
}

void __81__MTSDevicePairingManager_openCommissioningWindowWithDuration_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v7)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [*(a1 + 40) identifier];
      v16 = [v15 shortDescription];
      v24 = 138544130;
      v25 = v14;
      v26 = 2114;
      v27 = v16;
      v28 = 2112;
      v29 = v7;
      v30 = 2112;
      v31 = v8;
      v17 = "%{public}@[%{public}@] Successfully opened commissioning window with setup QR code: %@, manual pairing code: %@";
      v18 = v13;
      v19 = OS_LOG_TYPE_INFO;
      v20 = 42;
LABEL_6:
      _os_log_impl(&dword_239824000, v18, v19, v17, &v24, v20);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [*(a1 + 40) identifier];
    v16 = [v15 shortDescription];
    v24 = 138543874;
    v25 = v14;
    v26 = 2114;
    v27 = v16;
    v28 = 2112;
    v29 = v9;
    v17 = "%{public}@[%{public}@] Failed to open commissioning window: %@";
    v18 = v13;
    v19 = OS_LOG_TYPE_ERROR;
    v20 = 32;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v10);
  (*(*(a1 + 48) + 16))(*(a1 + 48), v7, v8, v9, v21, v22);

  v23 = *MEMORY[0x277D85DE8];
}

- (void)removeAllPairingsWithCompletionHandler:(id)handler
{
  v26 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    _HMFPreconditionFailure();
  }

  v5 = handlerCopy;
  v6 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"Remove all device pairings"];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    identifier = [v6 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543618;
    v23 = v10;
    v24 = 2114;
    v25 = shortDescription;
    _os_log_impl(&dword_239824000, v9, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Removing all device pairings", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  serverProxy = [(MTSDevicePairingManager *)selfCopy serverProxy];
  systemCommissionerPairing = [(MTSDevicePairingManager *)selfCopy systemCommissionerPairing];
  uuid = [systemCommissionerPairing uuid];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __66__MTSDevicePairingManager_removeAllPairingsWithCompletionHandler___block_invoke;
  v19[3] = &unk_278AA1928;
  v19[4] = selfCopy;
  v20 = v6;
  v21 = v5;
  v16 = v5;
  v17 = v6;
  [serverProxy removeAllDevicePairingsForSystemCommissionerPairingUUID:uuid completionHandler:v19];

  v18 = *MEMORY[0x277D85DE8];
}

void __66__MTSDevicePairingManager_removeAllPairingsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
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
      v11 = "%{public}@[%{public}@] Failed to remove all device pairings: %@";
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
    v11 = "%{public}@[%{public}@] Successfully removed all device pairings";
    v12 = v7;
    v13 = OS_LOG_TYPE_INFO;
    v14 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 48) + 16))(*(a1 + 48), v3, v15, v16);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)removePairingWithUUID:(id)d completionHandler:(id)handler
{
  v31 = *MEMORY[0x277D85DE8];
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

  v9 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"Remove device pairing"];
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    identifier = [v9 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543874;
    v26 = v13;
    v27 = 2114;
    v28 = shortDescription;
    v29 = 2112;
    v30 = dCopy;
    _os_log_impl(&dword_239824000, v12, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Removing device pairing with UUID: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  serverProxy = [(MTSDevicePairingManager *)selfCopy serverProxy];
  systemCommissionerPairing = [(MTSDevicePairingManager *)selfCopy systemCommissionerPairing];
  uuid = [systemCommissionerPairing uuid];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __67__MTSDevicePairingManager_removePairingWithUUID_completionHandler___block_invoke;
  v22[3] = &unk_278AA1928;
  v22[4] = selfCopy;
  v23 = v9;
  v24 = v8;
  v19 = v8;
  v20 = v9;
  [serverProxy removeDevicePairingWithUUID:dCopy forSystemCommissionerPairingUUID:uuid completionHandler:v22];

  v21 = *MEMORY[0x277D85DE8];
}

void __67__MTSDevicePairingManager_removePairingWithUUID_completionHandler___block_invoke(uint64_t a1, void *a2)
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
      v11 = "%{public}@[%{public}@] Failed to remove device pairing: %@";
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
    v11 = "%{public}@[%{public}@] Successfully removed device pairing";
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
  v26 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    _HMFPreconditionFailure();
  }

  v5 = handlerCopy;
  v6 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"Fetch all device pairings"];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    identifier = [v6 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543618;
    v23 = v10;
    v24 = 2114;
    v25 = shortDescription;
    _os_log_impl(&dword_239824000, v9, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Fetching all device pairings", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  serverProxy = [(MTSDevicePairingManager *)selfCopy serverProxy];
  systemCommissionerPairing = [(MTSDevicePairingManager *)selfCopy systemCommissionerPairing];
  uuid = [systemCommissionerPairing uuid];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __62__MTSDevicePairingManager_fetchPairingsWithCompletionHandler___block_invoke;
  v19[3] = &unk_278AA1900;
  v19[4] = selfCopy;
  v20 = v6;
  v21 = v5;
  v16 = v5;
  v17 = v6;
  [serverProxy fetchDevicePairingsForSystemCommissionerPairingUUID:uuid completionHandler:v19];

  v18 = *MEMORY[0x277D85DE8];
}

void __62__MTSDevicePairingManager_fetchPairingsWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
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
      v14 = "%{public}@[%{public}@] Fetched %ld device pairings";
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
    v14 = "%{public}@[%{public}@] Failed to fetch device pairings: %@";
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
  v3.super_class = MTSDevicePairingManager;
  [(MTSDevicePairingManager *)&v3 dealloc];
}

- (MTSDevicePairingManager)initWithSystemCommissionerPairing:(id)pairing serverProxy:(id)proxy
{
  pairingCopy = pairing;
  proxyCopy = proxy;
  if (!pairingCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v8 = proxyCopy;
  if (!proxyCopy)
  {
LABEL_7:
    v13 = _HMFPreconditionFailure();
    return [(MTSDevicePairingManager *)v13 initWithSystemCommissionerPairing:v14, v15];
  }

  v16.receiver = self;
  v16.super_class = MTSDevicePairingManager;
  v9 = [(MTSDevicePairingManager *)&v16 init];
  if (v9)
  {
    v10 = [pairingCopy copy];
    systemCommissionerPairing = v9->_systemCommissionerPairing;
    v9->_systemCommissionerPairing = v10;

    objc_storeStrong(&v9->_serverProxy, proxy);
  }

  return v9;
}

- (MTSDevicePairingManager)initWithSystemCommissionerPairing:(id)pairing
{
  pairingCopy = pairing;
  v5 = objc_alloc_init(MTSXPCServerProxy);
  v6 = [(MTSDevicePairingManager *)self initWithSystemCommissionerPairing:pairingCopy serverProxy:v5];

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t15 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t15, &__block_literal_global_406);
  }

  v3 = logCategory__hmf_once_v16;

  return v3;
}

uint64_t __38__MTSDevicePairingManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v16 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end