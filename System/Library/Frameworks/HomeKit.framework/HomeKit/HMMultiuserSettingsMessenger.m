@interface HMMultiuserSettingsMessenger
+ (id)logCategory;
+ (id)shortDescription;
- (HMMultiuserSettingsMessenger)initWithMessageDispatcher:(id)a3 messageTargetUUID:(id)a4;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)logIdentifier;
- (void)sendFetchMultiuserSettingsRequest:(id)a3;
@end

@implementation HMMultiuserSettingsMessenger

- (id)logIdentifier
{
  v2 = [(HMMultiuserSettingsMessenger *)self messageTargetUUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (NSArray)attributeDescriptions
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v4 = [(HMMultiuserSettingsMessenger *)self messageTargetUUID];
  v5 = [v3 initWithName:@"messageTargetUUID" value:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (void)sendFetchMultiuserSettingsRequest:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [(HMMultiuserSettingsMessenger *)v6 messageTargetUUID];
    *buf = 138543618;
    v24 = v8;
    v25 = 2112;
    v26 = v9;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Sending multiuser fetch request message with targetUUID %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = objc_alloc(MEMORY[0x1E69A2A00]);
  v11 = [(HMMultiuserSettingsMessenger *)v6 messageTargetUUID];
  v12 = [v10 initWithTarget:v11];

  v13 = [objc_alloc(MEMORY[0x1E69A2A10]) initWithName:@"HMMultiuserSettingsFetchRequestMessage" destination:v12 payload:0];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __66__HMMultiuserSettingsMessenger_sendFetchMultiuserSettingsRequest___block_invoke;
  v20 = &unk_1E754DE00;
  v21 = v6;
  v22 = v4;
  v14 = v4;
  [v13 setResponseHandler:&v17];
  v15 = [(HMMultiuserSettingsMessenger *)v6 messageDispatcher:v17];
  [v15 sendMessage:v13];

  v16 = *MEMORY[0x1E69E9840];
}

void __66__HMMultiuserSettingsMessenger_sendFetchMultiuserSettingsRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Calling responseHandler in sendFetchMultiuserSettingsRequest with responsePayload %@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  if (v6)
  {
    v11 = [[HMMultiUserSettingsForMetrics alloc] initWithPayload:v6];
    if (v11)
    {
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 32);
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v15;
        _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@Failed to instantiate HMMultiUserSettingsForMetrics", &v19, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      v16 = *(a1 + 40);
      v17 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:15];
      (*(v16 + 16))(v16, v17, 0);
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (HMMultiuserSettingsMessenger)initWithMessageDispatcher:(id)a3 messageTargetUUID:(id)a4
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
    return +[(HMMultiuserSettingsMessenger *)v13];
  }

  v15.receiver = self;
  v15.super_class = HMMultiuserSettingsMessenger;
  v10 = [(HMMultiuserSettingsMessenger *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_messageDispatcher, a3);
    objc_storeStrong(&v11->_messageTargetUUID, a4);
  }

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3, &__block_literal_global_43460);
  }

  v3 = logCategory__hmf_once_v4;

  return v3;
}

uint64_t __43__HMMultiuserSettingsMessenger_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v4;
  logCategory__hmf_once_v4 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end