@interface HMAccessorySettingsMessenger
+ (id)legacyMessageTargetUUIDWithHomeUUID:(id)d;
+ (id)logCategory;
+ (id)shortDescription;
- (HMAccessorySettingsMessenger)initWithMessageDispatcher:(id)dispatcher messageTargetUUID:(id)d metricsDispatcher:(id)metricsDispatcher;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)logIdentifier;
- (void)sendFetchAccessorySettingsRequestWithAccessoryUUID:(id)d keyPaths:(id)paths completionHandler:(id)handler;
- (void)sendUpdateAccessorySettingRequestWithAccessoryUUID:(id)d keyPath:(id)path settingValue:(id)value completionHandler:(id)handler;
- (void)submitMetricEventWithMessage:(id)message error:(id)error;
@end

@implementation HMAccessorySettingsMessenger

- (id)logIdentifier
{
  messageTargetUUID = [(HMAccessorySettingsMessenger *)self messageTargetUUID];
  uUIDString = [messageTargetUUID UUIDString];

  return uUIDString;
}

- (NSArray)attributeDescriptions
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  messageTargetUUID = [(HMAccessorySettingsMessenger *)self messageTargetUUID];
  v5 = [v3 initWithName:@"messageTargetUUID" value:messageTargetUUID];
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

- (void)submitMetricEventWithMessage:(id)message error:(id)error
{
  v16 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  errorCopy = error;
  if (messageCopy)
  {
    metricsDispatcher = [(HMAccessorySettingsMessenger *)self metricsDispatcher];
    [metricsDispatcher submitEventWithMessage:messageCopy error:errorCopy];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to submit fetch event due to message lost before metric submission", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)sendUpdateAccessorySettingRequestWithAccessoryUUID:(id)d keyPath:(id)path settingValue:(id)value completionHandler:(id)handler
{
  v42 = *MEMORY[0x1E69E9840];
  dCopy = d;
  pathCopy = path;
  valueCopy = value;
  handlerCopy = handler;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138544130;
    v35 = v17;
    v36 = 2112;
    v37 = dCopy;
    v38 = 2112;
    v39 = pathCopy;
    v40 = 2112;
    v41 = valueCopy;
    _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_INFO, "%{public}@Sending update request message with accessory UUID: %@ key path: %@ setting value: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v14);
  v18 = [[HMAccessorySettingsUpdateRequestMessagePayload alloc] initWithAccessoryUUID:dCopy keyPath:pathCopy settingValue:valueCopy];
  v19 = objc_alloc(MEMORY[0x1E69A2A00]);
  messageTargetUUID = [(HMAccessorySettingsMessenger *)selfCopy messageTargetUUID];
  v21 = [v19 initWithTarget:messageTargetUUID];

  v22 = objc_alloc(MEMORY[0x1E69A2A10]);
  payloadCopy = [(HMAccessorySettingsUpdateRequestMessagePayload *)v18 payloadCopy];
  v24 = [v22 initWithName:@"HMAccessorySettingsUpdateRequestMessage" destination:v21 payload:payloadCopy];

  v25 = [v24 copy];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __122__HMAccessorySettingsMessenger_sendUpdateAccessorySettingRequestWithAccessoryUUID_keyPath_settingValue_completionHandler___block_invoke;
  v31[3] = &unk_1E754E480;
  v31[4] = selfCopy;
  v32 = v25;
  v33 = handlerCopy;
  v26 = handlerCopy;
  v27 = v25;
  [v24 setResponseHandler:v31];
  metricsDispatcher = [(HMAccessorySettingsMessenger *)selfCopy metricsDispatcher];
  [metricsDispatcher startEventWithMessage:v24 updateKeyPath:pathCopy];

  messageDispatcher = [(HMAccessorySettingsMessenger *)selfCopy messageDispatcher];
  [messageDispatcher sendMessage:v24];

  v30 = *MEMORY[0x1E69E9840];
}

void __122__HMAccessorySettingsMessenger_sendUpdateAccessorySettingRequestWithAccessoryUUID_keyPath_settingValue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
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
      v19 = 138543618;
      v20 = v11;
      v21 = 2112;
      v22 = v5;
      v12 = "%{public}@Update request message responded with error: %@";
      v13 = v10;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 22;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v13, v14, v12, &v19, v15);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v19 = 138543362;
    v20 = v11;
    v12 = "%{public}@Update request message responded";
    v13 = v10;
    v14 = OS_LOG_TYPE_INFO;
    v15 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  [*(a1 + 32) submitMetricEventWithMessage:*(a1 + 40) error:v5];
  (*(*(a1 + 48) + 16))(*(a1 + 48), v5, v16, v17);

  v18 = *MEMORY[0x1E69E9840];
}

- (void)sendFetchAccessorySettingsRequestWithAccessoryUUID:(id)d keyPaths:(id)paths completionHandler:(id)handler
{
  v37 = *MEMORY[0x1E69E9840];
  dCopy = d;
  pathsCopy = paths;
  handlerCopy = handler;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543874;
    v32 = v14;
    v33 = 2112;
    v34 = dCopy;
    v35 = 2112;
    v36 = pathsCopy;
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Sending fetch request message with accessory UUID: %@ key paths: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [[HMAccessorySettingsFetchRequestMessagePayload alloc] initWithAccessoryUUID:dCopy keyPaths:pathsCopy];
  v16 = objc_alloc(MEMORY[0x1E69A2A00]);
  messageTargetUUID = [(HMAccessorySettingsMessenger *)selfCopy messageTargetUUID];
  v18 = [v16 initWithTarget:messageTargetUUID];

  v19 = objc_alloc(MEMORY[0x1E69A2A10]);
  payloadCopy = [(HMAccessorySettingsFetchRequestMessagePayload *)v15 payloadCopy];
  v21 = [v19 initWithName:@"HMAccessorySettingsFetchRequestMessage" destination:v18 payload:payloadCopy];

  v22 = [v21 copy];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __110__HMAccessorySettingsMessenger_sendFetchAccessorySettingsRequestWithAccessoryUUID_keyPaths_completionHandler___block_invoke;
  v28[3] = &unk_1E754E480;
  v29 = v22;
  v30 = handlerCopy;
  v28[4] = selfCopy;
  v23 = v22;
  v24 = handlerCopy;
  [v21 setResponseHandler:v28];
  metricsDispatcher = [(HMAccessorySettingsMessenger *)selfCopy metricsDispatcher];
  [metricsDispatcher startEventWithMessage:v21 updateKeyPath:0];

  messageDispatcher = [(HMAccessorySettingsMessenger *)selfCopy messageDispatcher];
  [messageDispatcher sendMessage:v21];

  v27 = *MEMORY[0x1E69E9840];
}

void __110__HMAccessorySettingsMessenger_sendFetchAccessorySettingsRequestWithAccessoryUUID_keyPaths_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [[HMAccessorySettingsFetchResponseMessagePayload alloc] initWithPayload:v6];
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    v11 = v10;
    if (v7)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        v28 = 138543618;
        v29 = v12;
        v30 = 2112;
        v31 = v7;
        _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Fetch request message responded with response payload: %@", &v28, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v13 = [(HMAccessorySettingsFetchResponseMessagePayload *)v7 failureInformation];
      v14 = [v13 failedKeyPaths];
      v15 = [v14 count];

      if (v15)
      {
        v16 = MEMORY[0x1E696ABC0];
        v17 = [(HMAccessorySettingsFetchResponseMessagePayload *)v7 failureInformation];
        v18 = [v17 payloadCopy];
        v19 = [v16 hmfErrorWithCode:11 userInfo:v18];
      }

      else
      {
        v19 = 0;
      }

      [*(a1 + 32) submitMetricEventWithMessage:*(a1 + 40) error:v19];
      v25 = *(a1 + 48);
      v26 = [(HMAccessorySettingsFetchResponseMessagePayload *)v7 settings];
      (*(v25 + 16))(v25, v19, v26);
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        v28 = 138543618;
        v29 = v24;
        v30 = 2112;
        v31 = v6;
        _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode fetch response using payload: %@", &v28, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v19 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:15];
      (*(*(a1 + 48) + 16))();
      [*(a1 + 32) submitMetricEventWithMessage:*(a1 + 40) error:v19];
    }
  }

  else
  {
    if (!v5)
    {
      v5 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:15];
    }

    v20 = objc_autoreleasePoolPush();
    v21 = *(a1 + 32);
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v28 = 138543618;
      v29 = v23;
      v30 = 2112;
      v31 = v5;
      _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@Fetch request message responded with error: %@", &v28, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    (*(*(a1 + 48) + 16))();
    [*(a1 + 32) submitMetricEventWithMessage:*(a1 + 40) error:v5];
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (HMAccessorySettingsMessenger)initWithMessageDispatcher:(id)dispatcher messageTargetUUID:(id)d metricsDispatcher:(id)metricsDispatcher
{
  dispatcherCopy = dispatcher;
  dCopy = d;
  metricsDispatcherCopy = metricsDispatcher;
  if (!dispatcherCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!dCopy)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v12 = metricsDispatcherCopy;
  if (!metricsDispatcherCopy)
  {
LABEL_9:
    v16 = _HMFPreconditionFailure();
    return +[(HMAccessorySettingsMessenger *)v16];
  }

  v18.receiver = self;
  v18.super_class = HMAccessorySettingsMessenger;
  v13 = [(HMAccessorySettingsMessenger *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_messageDispatcher, dispatcher);
    objc_storeStrong(&v14->_messageTargetUUID, d);
    objc_storeStrong(&v14->_metricsDispatcher, metricsDispatcher);
  }

  return v14;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t8_49076 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t8_49076, &__block_literal_global_49077);
  }

  v3 = logCategory__hmf_once_v9_49078;

  return v3;
}

uint64_t __43__HMAccessorySettingsMessenger_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v9_49078;
  logCategory__hmf_once_v9_49078 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)legacyMessageTargetUUIDWithHomeUUID:(id)d
{
  v3 = MEMORY[0x1E696AFB0];
  dCopy = d;
  v5 = [[v3 alloc] initWithUUIDString:@"257D2091-3412-4683-8586-B0CF9DF75439"];
  v6 = MEMORY[0x1E696AFB0];
  uUIDString = [dCopy UUIDString];

  v8 = [uUIDString dataUsingEncoding:4];
  v9 = [v6 hmf_UUIDWithNamespace:v5 data:v8];

  return v9;
}

@end