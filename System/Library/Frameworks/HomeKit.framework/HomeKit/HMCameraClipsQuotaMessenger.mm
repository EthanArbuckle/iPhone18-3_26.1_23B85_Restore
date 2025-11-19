@interface HMCameraClipsQuotaMessenger
+ (NSUUID)UUID;
+ (id)logCategory;
- (HMCameraClipsQuotaMessenger)initWithContext:(id)a3;
- (void)fetchNamesForZonesWithCloudStorageEnabledWithCompletion:(id)a3;
@end

@implementation HMCameraClipsQuotaMessenger

void __81__HMCameraClipsQuotaMessenger_setCloudStorageEnabled_forZoneWithName_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
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
      v12 = [*(a1 + 40) identifier];
      v13 = [v12 shortDescription];
      v21 = 138543874;
      v22 = v11;
      v23 = 2114;
      v24 = v13;
      v25 = 2112;
      v26 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to update cloud storage: %@", &v21, 0x20u);

LABEL_6:
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v14 = [*(a1 + 40) identifier];
    v15 = [v14 shortDescription];
    v16 = *(a1 + 56);
    v17 = HMFEnabledStatusToString();
    v21 = 138543874;
    v22 = v11;
    v23 = 2114;
    v24 = v15;
    v25 = 2112;
    v26 = v17;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully set cloud storage to %@", &v21, 0x20u);

    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v18 = [*(a1 + 32) context];
  v19 = [v18 delegateCaller];
  [v19 callCompletion:*(a1 + 48) error:v5];

  v20 = *MEMORY[0x1E69E9840];
}

- (void)fetchNamesForZonesWithCloudStorageEnabledWithCompletion:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Fetching names for zones with cloud storage enabled"];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v5 identifier];
    v11 = [v10 shortDescription];
    *buf = 138543618;
    v25 = v9;
    v26 = 2114;
    v27 = v11;
    _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Fetching names for zones with cloud storage enabled", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v12 = objc_alloc(MEMORY[0x1E69A2A00]);
  v13 = [objc_opt_class() UUID];
  v14 = [v12 initWithTarget:v13];

  v15 = [MEMORY[0x1E69A2A10] messageWithName:@"HMCCQMR.m.fetchNamesForZonesWithEnabledCloudStorage" destination:v14 payload:0];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __87__HMCameraClipsQuotaMessenger_fetchNamesForZonesWithCloudStorageEnabledWithCompletion___block_invoke;
  v21[3] = &unk_1E754E480;
  v21[4] = v7;
  v22 = v5;
  v23 = v4;
  v16 = v4;
  v17 = v5;
  [v15 setResponseHandler:v21];
  v18 = [(HMCameraClipsQuotaMessenger *)v7 context];
  v19 = [v18 messageDispatcher];
  [v19 sendMessage:v15];

  v20 = *MEMORY[0x1E69E9840];
}

void __87__HMCameraClipsQuotaMessenger_fetchNamesForZonesWithCloudStorageEnabledWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 hmf_setForKey:@"HMCCQMR.mk.zoneNames"];
  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 40) identifier];
      v14 = [v13 shortDescription];
      v25 = 138543874;
      v26 = v12;
      v27 = 2114;
      v28 = v14;
      v29 = 2112;
      v30 = v7;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched names for zones with cloud storage enabled: %@", &v25, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v15 = [*(a1 + 32) context];
    v16 = [v15 delegateCaller];
    v17 = v16;
    v18 = *(a1 + 48);
    v19 = v7;
    v20 = 0;
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [*(a1 + 40) identifier];
      v23 = [v22 shortDescription];
      v25 = 138543874;
      v26 = v21;
      v27 = 2114;
      v28 = v23;
      v29 = 2112;
      v30 = v5;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to fetch names for zones with cloud storage enabled: %@", &v25, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v15 = [*(a1 + 32) context];
    v16 = [v15 delegateCaller];
    v17 = v16;
    v18 = *(a1 + 48);
    v19 = 0;
    v20 = v5;
  }

  [v16 callCompletion:v18 obj:v19 error:v20];

  v24 = *MEMORY[0x1E69E9840];
}

- (HMCameraClipsQuotaMessenger)initWithContext:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v12.receiver = self;
    v12.super_class = HMCameraClipsQuotaMessenger;
    v7 = [(HMCameraClipsQuotaMessenger *)&v12 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_context, a3);
    }

    return v8;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    return +[(HMCameraClipsQuotaMessenger *)v10];
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t6_49733 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t6_49733, &__block_literal_global_49734);
  }

  v3 = logCategory__hmf_once_v7_49735;

  return v3;
}

uint64_t __42__HMCameraClipsQuotaMessenger_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v7_49735;
  logCategory__hmf_once_v7_49735 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (NSUUID)UUID
{
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"EF39674E-D774-4642-8D67-584A72131553"];

  return v2;
}

@end