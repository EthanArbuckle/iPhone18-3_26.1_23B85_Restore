@interface HMPersonSettingsManager
+ (id)logCategory;
+ (id)personSettingsManagerUUIDFromHomeUUID:(id)d;
- (HMFMessageDestination)messageDestination;
- (HMPersonSettingsManager)initWithContext:(id)context UUID:(id)d;
- (HMPersonSettingsManager)initWithHome:(id)home;
- (id)logIdentifier;
- (void)_sendMessageWithName:(id)name payload:(id)payload responseHandler:(id)handler;
- (void)fetchClassificationNotificationsEnabledForPersonWithUUID:(id)d completion:(id)completion;
@end

@implementation HMPersonSettingsManager

- (id)logIdentifier
{
  uUID = [(HMPersonSettingsManager *)self UUID];
  uUIDString = [uUID UUIDString];

  return uUIDString;
}

- (HMFMessageDestination)messageDestination
{
  v3 = objc_alloc(MEMORY[0x1E69A2A00]);
  uUID = [(HMPersonSettingsManager *)self UUID];
  v5 = [v3 initWithTarget:uUID];

  return v5;
}

- (void)_sendMessageWithName:(id)name payload:(id)payload responseHandler:(id)handler
{
  v8 = MEMORY[0x1E69A2A10];
  handlerCopy = handler;
  payloadCopy = payload;
  nameCopy = name;
  messageDestination = [(HMPersonSettingsManager *)self messageDestination];
  v15 = [v8 messageWithName:nameCopy destination:messageDestination payload:payloadCopy];

  [v15 setResponseHandler:handlerCopy];
  context = [(HMPersonSettingsManager *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v15];
}

void __97__HMPersonSettingsManager_updateClassificationNotificationsEnabled_forPersonWithUUID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
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
      v18 = 138543618;
      v19 = v11;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to update classification notifications enabled with error: %@", &v18, 0x16u);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = *(a1 + 56);
    v13 = HMFBooleanToString();
    v14 = *(a1 + 40);
    v18 = 138543874;
    v19 = v11;
    v20 = 2112;
    v21 = v13;
    v22 = 2112;
    v23 = v14;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Successfully updated classification notifications enabled to %@ for person with UUID: %@", &v18, 0x20u);

    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v15 = [*(a1 + 32) context];
  v16 = [v15 delegateCaller];
  [v16 callCompletion:*(a1 + 48) error:v5];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)fetchClassificationNotificationsEnabledForPersonWithUUID:(id)d completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v11;
    v21 = 2112;
    v22 = dCopy;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Fetching classification notifications enabled for person with uuid: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v17 = @"HMPersonSettingsManagerPersonUUIDKey";
  v18 = dCopy;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __95__HMPersonSettingsManager_fetchClassificationNotificationsEnabledForPersonWithUUID_completion___block_invoke;
  v15[3] = &unk_1E754DE00;
  v15[4] = selfCopy;
  v16 = completionCopy;
  v13 = completionCopy;
  [(HMPersonSettingsManager *)selfCopy _sendMessageWithName:@"HMPersonSettingsManagerFetchClassificationNotificationsEnabledMessage" payload:v12 responseHandler:v15];

  v14 = *MEMORY[0x1E69E9840];
}

void __95__HMPersonSettingsManager_fetchClassificationNotificationsEnabledForPersonWithUUID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 hmf_numberForKey:@"HMPersonSettingsManagerClassificationNotificationsEnabledKey"];
    if (v8)
    {
      v9 = v8;
      v10 = [*(a1 + 32) context];
      v11 = [v10 delegateCaller];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __95__HMPersonSettingsManager_fetchClassificationNotificationsEnabledForPersonWithUUID_completion___block_invoke_2;
      v26[3] = &unk_1E754E0F8;
      v26[4] = *(a1 + 32);
      v12 = v9;
      v27 = v12;
      v28 = *(a1 + 40);
      [v11 invokeBlock:v26];
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = *(a1 + 32);
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543618;
        v35 = v22;
        v36 = 2112;
        v37 = v7;
        _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to find enabled value on message response payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      v23 = [*(a1 + 32) context];
      v24 = [v23 delegateCaller];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __95__HMPersonSettingsManager_fetchClassificationNotificationsEnabledForPersonWithUUID_completion___block_invoke_16;
      v29[3] = &unk_1E754E430;
      v30 = *(a1 + 40);
      [v24 invokeBlock:v29];

      v12 = 0;
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v16;
      v36 = 2112;
      v37 = v5;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch classification notifications enabled with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = [*(a1 + 32) context];
    v18 = [v17 delegateCaller];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __95__HMPersonSettingsManager_fetchClassificationNotificationsEnabledForPersonWithUUID_completion___block_invoke_14;
    v31[3] = &unk_1E754E458;
    v33 = *(a1 + 40);
    v32 = v5;
    [v18 invokeBlock:v31];

    v12 = v33;
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __95__HMPersonSettingsManager_fetchClassificationNotificationsEnabledForPersonWithUUID_completion___block_invoke_16(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:15];
  (*(v1 + 16))(v1, 1, v2);
}

uint64_t __95__HMPersonSettingsManager_fetchClassificationNotificationsEnabledForPersonWithUUID_completion___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) BOOLValue];
    v9 = 138543618;
    v10 = v5;
    v11 = 2048;
    v12 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling completion with enabled: %lu", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = (*(*(a1 + 48) + 16))(*(a1 + 48), [*(a1 + 40) BOOLValue], 0);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (HMPersonSettingsManager)initWithContext:(id)context UUID:(id)d
{
  contextCopy = context;
  dCopy = d;
  v14.receiver = self;
  v14.super_class = HMPersonSettingsManager;
  v9 = [(HMPersonSettingsManager *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, context);
    v11 = [objc_opt_class() personSettingsManagerUUIDFromHomeUUID:dCopy];
    UUID = v10->_UUID;
    v10->_UUID = v11;
  }

  return v10;
}

- (HMPersonSettingsManager)initWithHome:(id)home
{
  homeCopy = home;
  context = [homeCopy context];
  uuid = [homeCopy uuid];

  v7 = [(HMPersonSettingsManager *)self initWithContext:context UUID:uuid];
  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t7 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t7, &__block_literal_global_27135);
  }

  v3 = logCategory__hmf_once_v8;

  return v3;
}

uint64_t __38__HMPersonSettingsManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v8;
  logCategory__hmf_once_v8 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)personSettingsManagerUUIDFromHomeUUID:(id)d
{
  v3 = MEMORY[0x1E696AFB0];
  dCopy = d;
  v5 = [[v3 alloc] initWithUUIDString:@"C23FC973-0266-4A09-BC05-8BB8A48F79C9"];
  v6 = MEMORY[0x1E696AFB0];
  uUIDString = [dCopy UUIDString];

  v8 = [uUIDString dataUsingEncoding:4];
  v9 = [v6 hmf_UUIDWithNamespace:v5 data:v8];

  return v9;
}

@end