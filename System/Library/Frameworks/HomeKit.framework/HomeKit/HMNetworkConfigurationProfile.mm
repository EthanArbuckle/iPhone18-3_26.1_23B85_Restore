@interface HMNetworkConfigurationProfile
+ (id)logCategory;
- (BOOL)isNetworkAccessRestricted;
- (BOOL)mergeFromNewObject:(id)object;
- (BOOL)supportsWiFiReconfiguration;
- (HMAccessoryNetworkAccessViolation)accessViolation;
- (NSArray)allowedHosts;
- (id)delegate;
- (id)logIdentifier;
- (int64_t)credentialType;
- (int64_t)currentProtectionMode;
- (int64_t)targetProtectionMode;
- (void)networkConfigurationProfileDidUpdateAccessViolation:(id)violation;
- (void)networkConfigurationProfileDidUpdateAllowedHosts:(id)hosts;
- (void)networkConfigurationProfileDidUpdateNetworkAccessMode:(id)mode;
- (void)networkConfigurationProfileDidUpdateProtectionMode:(id)mode;
- (void)networkConfigurationProfileDidUpdateWiFiCredentialType:(id)type;
- (void)networkConfigurationProfileDidUpdateWiFiReconfigurationSupport:(id)support;
- (void)previewAllowedHostsForAutoProtectionModeWithCompletionHandler:(id)handler;
- (void)reconfigureWiFiWithOptions:(id)options completionHandler:(id)handler;
@end

@implementation HMNetworkConfigurationProfile

void __96___HMNetworkConfigurationProfile_previewAllowedHostsForAutoProtectionModeWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [v6 hmf_dataForKey:@"allowed"];
  if (v8)
  {
    v9 = MEMORY[0x1E695DFD8];
    v31[0] = objc_opt_class();
    v31[1] = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
    v11 = [v9 setWithArray:v10];

    v24 = 0;
    v12 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v11 fromData:v8 error:&v24];
    v13 = v24;
    if (v12)
    {
      v14 = v5;
    }

    else
    {
      context = objc_autoreleasePoolPush();
      v15 = WeakRetained;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543618;
        v28 = v22;
        v29 = 2112;
        v30 = v13;
        _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive NSArray<HMAccessoryAllowedHost *>: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(context);
      v17 = MEMORY[0x1E696ABC0];
      if (v13)
      {
        v25 = *MEMORY[0x1E696AA08];
        v26 = v13;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      }

      else
      {
        v18 = 0;
      }

      v14 = [v17 hmErrorWithCode:-1 userInfo:v18];

      if (v13)
      {
      }
    }

    v5 = v14;
  }

  else
  {
    v12 = 0;
  }

  v19 = [WeakRetained context];
  v20 = [v19 delegateCaller];
  [v20 callCompletion:*(a1 + 32) obj:v12 error:v5];

  v21 = *MEMORY[0x1E69E9840];
}

void __79___HMNetworkConfigurationProfile_reconfigureWiFiWithOptions_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained context];
  v5 = [v4 delegateCaller];
  [v5 callCompletion:*(a1 + 32) error:v3];
}

uint64_t __45___HMNetworkConfigurationProfile_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v26_26876;
  logCategory__hmf_once_v26_26876 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  uuid = [(HMAccessoryProfile *)self uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (void)networkConfigurationProfileDidUpdateWiFiCredentialType:(id)type
{
  delegate = [(HMNetworkConfigurationProfile *)self delegate];
  if ([delegate conformsToProtocol:&unk_1F0F63380])
  {
    v5 = delegate;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (objc_opt_respondsToSelector())
  {
    accessoryProfile = [(HMAccessoryProfile *)self accessoryProfile];
    context = [accessoryProfile context];
    delegateCaller = [context delegateCaller];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __88__HMNetworkConfigurationProfile_networkConfigurationProfileDidUpdateWiFiCredentialType___block_invoke;
    v10[3] = &unk_1E754E5C0;
    v11 = v6;
    selfCopy = self;
    [delegateCaller invokeBlock:v10];
  }
}

- (void)networkConfigurationProfileDidUpdateWiFiReconfigurationSupport:(id)support
{
  delegate = [(HMNetworkConfigurationProfile *)self delegate];
  if ([delegate conformsToProtocol:&unk_1F0F63380])
  {
    v5 = delegate;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (objc_opt_respondsToSelector())
  {
    accessoryProfile = [(HMAccessoryProfile *)self accessoryProfile];
    context = [accessoryProfile context];
    delegateCaller = [context delegateCaller];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __96__HMNetworkConfigurationProfile_networkConfigurationProfileDidUpdateWiFiReconfigurationSupport___block_invoke;
    v10[3] = &unk_1E754E5C0;
    v11 = v6;
    selfCopy = self;
    [delegateCaller invokeBlock:v10];
  }
}

- (void)networkConfigurationProfileDidUpdateAccessViolation:(id)violation
{
  delegate = [(HMNetworkConfigurationProfile *)self delegate];
  if ([delegate conformsToProtocol:&unk_1F0F63380])
  {
    v5 = delegate;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (objc_opt_respondsToSelector())
  {
    accessoryProfile = [(HMAccessoryProfile *)self accessoryProfile];
    context = [accessoryProfile context];
    delegateCaller = [context delegateCaller];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __85__HMNetworkConfigurationProfile_networkConfigurationProfileDidUpdateAccessViolation___block_invoke;
    v10[3] = &unk_1E754E5C0;
    v11 = v6;
    selfCopy = self;
    [delegateCaller invokeBlock:v10];
  }
}

- (void)networkConfigurationProfileDidUpdateAllowedHosts:(id)hosts
{
  delegate = [(HMNetworkConfigurationProfile *)self delegate];
  if ([delegate conformsToProtocol:&unk_1F0F63380])
  {
    v5 = delegate;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (objc_opt_respondsToSelector())
  {
    accessoryProfile = [(HMAccessoryProfile *)self accessoryProfile];
    context = [accessoryProfile context];
    delegateCaller = [context delegateCaller];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __82__HMNetworkConfigurationProfile_networkConfigurationProfileDidUpdateAllowedHosts___block_invoke;
    v10[3] = &unk_1E754E5C0;
    v11 = v6;
    selfCopy = self;
    [delegateCaller invokeBlock:v10];
  }
}

- (void)networkConfigurationProfileDidUpdateNetworkAccessMode:(id)mode
{
  delegate = [(HMNetworkConfigurationProfile *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    accessoryProfile = [(HMAccessoryProfile *)self accessoryProfile];
    context = [accessoryProfile context];
    delegateCaller = [context delegateCaller];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __87__HMNetworkConfigurationProfile_networkConfigurationProfileDidUpdateNetworkAccessMode___block_invoke;
    v8[3] = &unk_1E754E5C0;
    v9 = delegate;
    selfCopy = self;
    [delegateCaller invokeBlock:v8];
  }
}

- (void)networkConfigurationProfileDidUpdateProtectionMode:(id)mode
{
  delegate = [(HMNetworkConfigurationProfile *)self delegate];
  if ([delegate conformsToProtocol:&unk_1F0F63380])
  {
    v5 = delegate;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (objc_opt_respondsToSelector())
  {
    accessoryProfile = [(HMAccessoryProfile *)self accessoryProfile];
    context = [accessoryProfile context];
    delegateCaller = [context delegateCaller];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __84__HMNetworkConfigurationProfile_networkConfigurationProfileDidUpdateProtectionMode___block_invoke;
    v10[3] = &unk_1E754E5C0;
    v10[4] = self;
    v11 = v6;
    [delegateCaller invokeBlock:v10];
  }
}

uint64_t __84__HMNetworkConfigurationProfile_networkConfigurationProfileDidUpdateProtectionMode___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Telling delegate that network configuration profile did update protection mode. Delegate: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 40) profileDidUpdateNetworkProtectionMode:*(a1 + 32)];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isNetworkAccessRestricted
{
  accessoryProfile = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = accessoryProfile;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  isNetworkAccessRestricted = [v4 isNetworkAccessRestricted];
  return isNetworkAccessRestricted;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t44_26899 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t44_26899, &__block_literal_global_240);
  }

  v3 = logCategory__hmf_once_v45_26900;

  return v3;
}

uint64_t __44__HMNetworkConfigurationProfile_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v45_26900;
  logCategory__hmf_once_v45_26900 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (void)previewAllowedHostsForAutoProtectionModeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  accessoryProfile = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = accessoryProfile;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  [v6 previewAllowedHostsForAutoProtectionModeWithCompletionHandler:handlerCopy];
}

- (void)reconfigureWiFiWithOptions:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  accessoryProfile = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = accessoryProfile;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 reconfigureWiFiWithOptions:optionsCopy completionHandler:handlerCopy];
}

- (BOOL)mergeFromNewObject:(id)object
{
  objectCopy = object;
  v15.receiver = self;
  v15.super_class = HMNetworkConfigurationProfile;
  v5 = [(HMAccessoryProfile *)&v15 mergeFromNewObject:objectCopy];
  v6 = objectCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    accessoryProfile = [(HMAccessoryProfile *)self accessoryProfile];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = accessoryProfile;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    accessoryProfile2 = [v8 accessoryProfile];
    v13 = [v11 mergeFromNewObject:accessoryProfile2];

    v5 |= v13;
  }

  return v5 & 1;
}

- (int64_t)credentialType
{
  accessoryProfile = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = accessoryProfile;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  credentialType = [v4 credentialType];
  return credentialType;
}

- (BOOL)supportsWiFiReconfiguration
{
  accessoryProfile = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = accessoryProfile;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  supportsWiFiReconfiguration = [v4 supportsWiFiReconfiguration];
  return supportsWiFiReconfiguration;
}

- (HMAccessoryNetworkAccessViolation)accessViolation
{
  accessoryProfile = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = accessoryProfile;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  accessViolation = [v4 accessViolation];

  return accessViolation;
}

- (NSArray)allowedHosts
{
  accessoryProfile = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = accessoryProfile;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  allowedHosts = [v4 allowedHosts];

  return allowedHosts;
}

- (int64_t)targetProtectionMode
{
  accessoryProfile = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = accessoryProfile;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  targetProtectionMode = [v4 targetProtectionMode];
  return targetProtectionMode;
}

- (int64_t)currentProtectionMode
{
  accessoryProfile = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = accessoryProfile;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  currentProtectionMode = [v4 currentProtectionMode];
  return currentProtectionMode;
}

@end