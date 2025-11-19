@interface MTSNetworkCredentialManager
+ (BOOL)threadCredentialManagementSupportedForCommissionee:(id)a3;
+ (id)logCategory;
+ (id)threadCredentialManagementEndpoint:(id)a3;
- (MTSNetworkCredentialManager)init;
- (MTSNetworkCredentialManager)initWithServerProxy:(id)a3;
- (void)dealloc;
- (void)retrievePreferredThreadCredentialsOrCreateWithDataset:(id)a3 completionHandler:(id)a4;
- (void)retrievePreferredThreadCredentialsWithCompletionHandler:(id)a3;
- (void)retrievePreferredThreadCredentialsWithOptions:(unint64_t)a3 completionHandler:(id)a4;
@end

@implementation MTSNetworkCredentialManager

- (void)retrievePreferredThreadCredentialsOrCreateWithDataset:(id)a3 completionHandler:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
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

  v9 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"Retrieve or create preferred Thread credentials"];
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [v9 identifier];
    v15 = [v14 shortDescription];
    *buf = 138543618;
    v24 = v13;
    v25 = 2114;
    v26 = v15;
    _os_log_impl(&dword_239824000, v12, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Retrieving or creating preferred Thread credentials", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v16 = [(MTSNetworkCredentialManager *)v11 serverProxy];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __103__MTSNetworkCredentialManager_retrievePreferredThreadCredentialsOrCreateWithDataset_completionHandler___block_invoke;
  v20[3] = &unk_278AA1978;
  v20[4] = v11;
  v21 = v9;
  v22 = v8;
  v17 = v8;
  v18 = v9;
  [v16 retrievePreferredThreadCredentialsOrCreateWithDataset:v6 completionHandler:v20];

  v19 = *MEMORY[0x277D85DE8];
}

void __103__MTSNetworkCredentialManager_retrievePreferredThreadCredentialsOrCreateWithDataset_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
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
      v20 = 138543618;
      v21 = v11;
      v22 = 2114;
      v23 = v13;
      v14 = "%{public}@[%{public}@] Successfully retrieved or created preferred Thread credentials";
      v15 = v10;
      v16 = OS_LOG_TYPE_INFO;
      v17 = 22;
LABEL_6:
      _os_log_impl(&dword_239824000, v15, v16, v14, &v20, v17);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) identifier];
    v13 = [v12 shortDescription];
    v20 = 138543874;
    v21 = v11;
    v22 = 2114;
    v23 = v13;
    v24 = 2112;
    v25 = v6;
    v14 = "%{public}@[%{public}@] Failed to retrieve or create preferred Thread credentials: %@";
    v15 = v10;
    v16 = OS_LOG_TYPE_ERROR;
    v17 = 32;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  (*(*(a1 + 48) + 16))(*(a1 + 48), v5, v6, v18);

  v19 = *MEMORY[0x277D85DE8];
}

- (void)retrievePreferredThreadCredentialsWithCompletionHandler:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    _HMFPreconditionFailure();
  }

  v5 = v4;
  v6 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"Retrieve preferred Thread credentials"];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [v6 identifier];
    v12 = [v11 shortDescription];
    *buf = 138543618;
    v21 = v10;
    v22 = 2114;
    v23 = v12;
    _os_log_impl(&dword_239824000, v9, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Retrieving preferred Thread credentials", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v13 = [(MTSNetworkCredentialManager *)v8 serverProxy];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __87__MTSNetworkCredentialManager_retrievePreferredThreadCredentialsWithCompletionHandler___block_invoke;
  v17[3] = &unk_278AA1978;
  v17[4] = v8;
  v18 = v6;
  v19 = v5;
  v14 = v5;
  v15 = v6;
  [v13 retrievePreferredThreadCredentialsOrCreateWithDataset:0 completionHandler:v17];

  v16 = *MEMORY[0x277D85DE8];
}

void __87__MTSNetworkCredentialManager_retrievePreferredThreadCredentialsWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
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
      v20 = 138543618;
      v21 = v11;
      v22 = 2114;
      v23 = v13;
      v14 = "%{public}@[%{public}@] Successfully retrieved preferred Thread credentials";
      v15 = v10;
      v16 = OS_LOG_TYPE_INFO;
      v17 = 22;
LABEL_6:
      _os_log_impl(&dword_239824000, v15, v16, v14, &v20, v17);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) identifier];
    v13 = [v12 shortDescription];
    v20 = 138543874;
    v21 = v11;
    v22 = 2114;
    v23 = v13;
    v24 = 2112;
    v25 = v6;
    v14 = "%{public}@[%{public}@] Failed to retrieve preferred Thread credentials: %@";
    v15 = v10;
    v16 = OS_LOG_TYPE_ERROR;
    v17 = 32;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  (*(*(a1 + 48) + 16))(*(a1 + 48), v5, v6, v18);

  v19 = *MEMORY[0x277D85DE8];
}

- (void)retrievePreferredThreadCredentialsWithOptions:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (!a3)
  {
    [(MTSNetworkCredentialManager *)self retrievePreferredThreadCredentialsWithCompletionHandler:v6];
    goto LABEL_5;
  }

  if (v6)
  {
    v8 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __95__MTSNetworkCredentialManager_retrievePreferredThreadCredentialsWithOptions_completionHandler___block_invoke;
    block[3] = &unk_278AA1950;
    v11 = v7;
    dispatch_async(v8, block);

LABEL_5:
    return;
  }

  v9 = _HMFPreconditionFailure();
  __95__MTSNetworkCredentialManager_retrievePreferredThreadCredentialsWithOptions_completionHandler___block_invoke(v9);
}

void __95__MTSNetworkCredentialManager_retrievePreferredThreadCredentialsWithOptions_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
  (*(v1 + 16))(v1, 0, v2);
}

void __105__MTSNetworkCredentialManager_setThreadCredentialManagementEnabled_forPairingWithUUID_completionHandler___block_invoke(uint64_t a1, void *a2)
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
      v11 = "%{public}@[%{public}@] Failed to update Thread credential management status: %@";
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
    v11 = "%{public}@[%{public}@] Successfully update Thread credential management status";
    v12 = v7;
    v13 = OS_LOG_TYPE_INFO;
    v14 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 48) + 16))(*(a1 + 48), v3, v15, v16);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(MTSXPCServerProxy *)self->_serverProxy invalidate];
  v3.receiver = self;
  v3.super_class = MTSNetworkCredentialManager;
  [(MTSNetworkCredentialManager *)&v3 dealloc];
}

- (MTSNetworkCredentialManager)initWithServerProxy:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v11.receiver = self;
    v11.super_class = MTSNetworkCredentialManager;
    v6 = [(MTSNetworkCredentialManager *)&v11 init];
    serverProxy = v6->_serverProxy;
    v6->_serverProxy = v5;

    return v6;
  }

  else
  {
    v9 = _HMFPreconditionFailure();
    return [(MTSNetworkCredentialManager *)v9 init];
  }
}

- (MTSNetworkCredentialManager)init
{
  v3 = objc_alloc_init(MTSXPCServerProxy);
  v4 = [(MTSNetworkCredentialManager *)self initWithServerProxy:v3];

  return v4;
}

+ (BOOL)threadCredentialManagementSupportedForCommissionee:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 rootEndpoint];
  if (v5)
  {
    v6 = [a1 threadCredentialManagementEndpoint:v5];
    v7 = v6 != 0;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = a1;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_239824000, v10, OS_LOG_TYPE_ERROR, "%{public}@Missing endpoint information, MTRCommissioningParameters.readEndpointInformation == NO?", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (id)threadCredentialManagementEndpoint:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = [a3 children];
  v20 = [v3 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v20)
  {
    v4 = *v28;
    v21 = v3;
    v19 = *v28;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v28 != v4)
        {
          objc_enumerationMutation(v3);
        }

        v6 = *(*(&v27 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v22 = v6;
        v7 = [v6 deviceTypes];
        v8 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v24;
          while (2)
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v24 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v23 + 1) + 8 * j);
              v13 = [v12 deviceTypeID];
              if ([v13 isEqualToNumber:&unk_284C4AF68])
              {

LABEL_20:
                v16 = [v22 endpointID];

                v3 = v21;
                goto LABEL_21;
              }

              v14 = [v12 deviceTypeID];
              v15 = [v14 isEqualToNumber:&unk_284C4AF80];

              if (v15)
              {
                goto LABEL_20;
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
            v3 = v21;
            v4 = v19;
            if (v9)
            {
              continue;
            }

            break;
          }
        }
      }

      v16 = 0;
      v20 = [v3 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v20);
  }

  else
  {
    v16 = 0;
  }

LABEL_21:

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t9 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t9, &__block_literal_global_1434);
  }

  v3 = logCategory__hmf_once_v10;

  return v3;
}

uint64_t __42__MTSNetworkCredentialManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v10 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end