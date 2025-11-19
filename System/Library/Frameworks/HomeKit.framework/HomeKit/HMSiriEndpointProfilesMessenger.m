@interface HMSiriEndpointProfilesMessenger
+ (id)logCategory;
+ (id)messageTargetUUIDWithHomeUUID:(id)a3;
- (HMSiriEndpointProfilesMessenger)initWithMessageTargetUUID:(id)a3 messageDispatcher:(id)a4;
- (id)logIdentifier;
- (void)sendApplyOnboardingSelectionsRequestWithAccessoryUUID:(id)a3 onboardingSelections:(id)a4 completionHandler:(id)a5;
- (void)sendDeleteSiriHistoryRequestWithAccessoryUUID:(id)a3 completionHandler:(id)a4;
@end

@implementation HMSiriEndpointProfilesMessenger

- (id)logIdentifier
{
  v2 = [(HMSiriEndpointProfilesMessenger *)self messageTargetUUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)sendDeleteSiriHistoryRequestWithAccessoryUUID:(id)a3 completionHandler:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v30 = v11;
    v31 = 2112;
    v32 = v6;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Sending delete siri history request with accessory UUID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [[HMSiriEndpointDeleteSiriHistoryMessagePayload alloc] initWithAccessoryUUID:v6];
  v13 = objc_alloc(MEMORY[0x1E69A2A00]);
  v14 = [(HMSiriEndpointProfilesMessenger *)v9 messageTargetUUID];
  v15 = [v13 initWithTarget:v14];

  v16 = objc_alloc(MEMORY[0x1E69A2A10]);
  v17 = +[HMSiriEndpointDeleteSiriHistoryMessagePayload messageName];
  v18 = [(HMSiriEndpointDeleteSiriHistoryMessagePayload *)v12 payloadCopy];
  v19 = [v16 initWithName:v17 destination:v15 payload:v18];

  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __99__HMSiriEndpointProfilesMessenger_sendDeleteSiriHistoryRequestWithAccessoryUUID_completionHandler___block_invoke;
  v26 = &unk_1E754DE00;
  v27 = v9;
  v28 = v7;
  v20 = v7;
  [v19 setResponseHandler:&v23];
  v21 = [(HMSiriEndpointProfilesMessenger *)v9 messageDispatcher:v23];
  [v21 sendMessage:v19];

  v22 = *MEMORY[0x1E69E9840];
}

void __99__HMSiriEndpointProfilesMessenger_sendDeleteSiriHistoryRequestWithAccessoryUUID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Delete siri history message responded with error: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  (*(*(a1 + 40) + 16))();

  v11 = *MEMORY[0x1E69E9840];
}

- (void)sendApplyOnboardingSelectionsRequestWithAccessoryUUID:(id)a3 onboardingSelections:(id)a4 completionHandler:(id)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543874;
    v33 = v14;
    v34 = 2112;
    v35 = v8;
    v36 = 2112;
    v37 = v9;
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Sending apply onboarding selections request with accessory UUID: %@ onboarding selections: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [[HMSiriEndpointApplyOnboardingSelectionsPayload alloc] initWithAccessoryUUID:v8 onboardingSelections:v9];
  v16 = objc_alloc(MEMORY[0x1E69A2A00]);
  v17 = [(HMSiriEndpointProfilesMessenger *)v12 messageTargetUUID];
  v18 = [v16 initWithTarget:v17];

  v19 = objc_alloc(MEMORY[0x1E69A2A10]);
  v20 = [(HMSiriEndpointApplyOnboardingSelectionsPayload *)v15 payloadCopy];
  v21 = [v19 initWithName:@"HMSiriEndpointApplyOnboardingSelectionsRequestMessage" destination:v18 payload:v20];

  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __128__HMSiriEndpointProfilesMessenger_sendApplyOnboardingSelectionsRequestWithAccessoryUUID_onboardingSelections_completionHandler___block_invoke;
  v29 = &unk_1E754DE00;
  v30 = v12;
  v31 = v10;
  v22 = v10;
  [v21 setResponseHandler:&v26];
  v23 = [(HMSiriEndpointProfilesMessenger *)v12 messageDispatcher:v26];
  v24 = [v21 copy];
  [v23 sendMessage:v24];

  v25 = *MEMORY[0x1E69E9840];
}

void __128__HMSiriEndpointProfilesMessenger_sendApplyOnboardingSelectionsRequestWithAccessoryUUID_onboardingSelections_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v23 = 138543618;
      v24 = v11;
      v25 = 2112;
      v26 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Send apply onboarding selections request responded with error: %@", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
LABEL_5:
    (*(*(a1 + 40) + 16))();
    goto LABEL_16;
  }

  if (!v6)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v17;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to get apply onboarding selections response payload", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v5 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:8];
    goto LABEL_5;
  }

  v12 = [[HMSiriEndpointApplyOnboardingSelectionsResponsePayload alloc] initWithPayload:v6];
  v13 = v12;
  if (v12)
  {
    (*(*(a1 + 40) + 16))(*(a1 + 40), 0, [(HMSiriEndpointApplyOnboardingSelectionsResponsePayload *)v12 onboardingResult]);
    v5 = 0;
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 32);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v23 = 138543618;
      v24 = v21;
      v25 = 2112;
      v26 = v7;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode apply onboarding selections response payload: %@", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v5 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:15];
    (*(*(a1 + 40) + 16))();
  }

LABEL_16:
  v22 = *MEMORY[0x1E69E9840];
}

- (HMSiriEndpointProfilesMessenger)initWithMessageTargetUUID:(id)a3 messageDispatcher:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = v8;
  if (!v8)
  {
LABEL_7:
    v13 = _HMFPreconditionFailure();
    return +[(HMSiriEndpointProfilesMessenger *)v13];
  }

  v15.receiver = self;
  v15.super_class = HMSiriEndpointProfilesMessenger;
  v10 = [(HMSiriEndpointProfilesMessenger *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_messageTargetUUID, a3);
    objc_storeStrong(&v11->_messageDispatcher, a4);
  }

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t6_59248 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t6_59248, &__block_literal_global_59249);
  }

  v3 = logCategory__hmf_once_v7_59250;

  return v3;
}

uint64_t __46__HMSiriEndpointProfilesMessenger_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v7_59250;
  logCategory__hmf_once_v7_59250 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)messageTargetUUIDWithHomeUUID:(id)a3
{
  v3 = MEMORY[0x1E696AFB0];
  v4 = a3;
  v5 = [[v3 alloc] initWithUUIDString:@"CFD1F2B8-1A6D-447F-B7CC-23AE501D9033"];
  v6 = MEMORY[0x1E696AFB0];
  v7 = [v4 UUIDString];

  v8 = [v7 dataUsingEncoding:4];
  v9 = [v6 hmf_UUIDWithNamespace:v5 data:v8];

  return v9;
}

@end