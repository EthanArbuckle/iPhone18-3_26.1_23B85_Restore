@interface HMNetworkConfigurationProfile
+ (id)logCategory;
- (BOOL)isNetworkAccessRestricted;
- (BOOL)mergeFromNewObject:(id)a3;
- (BOOL)supportsWiFiReconfiguration;
- (HMAccessoryNetworkAccessViolation)accessViolation;
- (NSArray)allowedHosts;
- (id)delegate;
- (id)logIdentifier;
- (int64_t)credentialType;
- (int64_t)currentProtectionMode;
- (int64_t)targetProtectionMode;
- (void)networkConfigurationProfileDidUpdateAccessViolation:(id)a3;
- (void)networkConfigurationProfileDidUpdateAllowedHosts:(id)a3;
- (void)networkConfigurationProfileDidUpdateNetworkAccessMode:(id)a3;
- (void)networkConfigurationProfileDidUpdateProtectionMode:(id)a3;
- (void)networkConfigurationProfileDidUpdateWiFiCredentialType:(id)a3;
- (void)networkConfigurationProfileDidUpdateWiFiReconfigurationSupport:(id)a3;
- (void)previewAllowedHostsForAutoProtectionModeWithCompletionHandler:(id)a3;
- (void)reconfigureWiFiWithOptions:(id)a3 completionHandler:(id)a4;
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
  v2 = [(HMAccessoryProfile *)self uuid];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)networkConfigurationProfileDidUpdateWiFiCredentialType:(id)a3
{
  v4 = [(HMNetworkConfigurationProfile *)self delegate];
  if ([v4 conformsToProtocol:&unk_1F0F63380])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (objc_opt_respondsToSelector())
  {
    v7 = [(HMAccessoryProfile *)self accessoryProfile];
    v8 = [v7 context];
    v9 = [v8 delegateCaller];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __88__HMNetworkConfigurationProfile_networkConfigurationProfileDidUpdateWiFiCredentialType___block_invoke;
    v10[3] = &unk_1E754E5C0;
    v11 = v6;
    v12 = self;
    [v9 invokeBlock:v10];
  }
}

- (void)networkConfigurationProfileDidUpdateWiFiReconfigurationSupport:(id)a3
{
  v4 = [(HMNetworkConfigurationProfile *)self delegate];
  if ([v4 conformsToProtocol:&unk_1F0F63380])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (objc_opt_respondsToSelector())
  {
    v7 = [(HMAccessoryProfile *)self accessoryProfile];
    v8 = [v7 context];
    v9 = [v8 delegateCaller];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __96__HMNetworkConfigurationProfile_networkConfigurationProfileDidUpdateWiFiReconfigurationSupport___block_invoke;
    v10[3] = &unk_1E754E5C0;
    v11 = v6;
    v12 = self;
    [v9 invokeBlock:v10];
  }
}

- (void)networkConfigurationProfileDidUpdateAccessViolation:(id)a3
{
  v4 = [(HMNetworkConfigurationProfile *)self delegate];
  if ([v4 conformsToProtocol:&unk_1F0F63380])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (objc_opt_respondsToSelector())
  {
    v7 = [(HMAccessoryProfile *)self accessoryProfile];
    v8 = [v7 context];
    v9 = [v8 delegateCaller];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __85__HMNetworkConfigurationProfile_networkConfigurationProfileDidUpdateAccessViolation___block_invoke;
    v10[3] = &unk_1E754E5C0;
    v11 = v6;
    v12 = self;
    [v9 invokeBlock:v10];
  }
}

- (void)networkConfigurationProfileDidUpdateAllowedHosts:(id)a3
{
  v4 = [(HMNetworkConfigurationProfile *)self delegate];
  if ([v4 conformsToProtocol:&unk_1F0F63380])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (objc_opt_respondsToSelector())
  {
    v7 = [(HMAccessoryProfile *)self accessoryProfile];
    v8 = [v7 context];
    v9 = [v8 delegateCaller];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __82__HMNetworkConfigurationProfile_networkConfigurationProfileDidUpdateAllowedHosts___block_invoke;
    v10[3] = &unk_1E754E5C0;
    v11 = v6;
    v12 = self;
    [v9 invokeBlock:v10];
  }
}

- (void)networkConfigurationProfileDidUpdateNetworkAccessMode:(id)a3
{
  v4 = [(HMNetworkConfigurationProfile *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(HMAccessoryProfile *)self accessoryProfile];
    v6 = [v5 context];
    v7 = [v6 delegateCaller];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __87__HMNetworkConfigurationProfile_networkConfigurationProfileDidUpdateNetworkAccessMode___block_invoke;
    v8[3] = &unk_1E754E5C0;
    v9 = v4;
    v10 = self;
    [v7 invokeBlock:v8];
  }
}

- (void)networkConfigurationProfileDidUpdateProtectionMode:(id)a3
{
  v4 = [(HMNetworkConfigurationProfile *)self delegate];
  if ([v4 conformsToProtocol:&unk_1F0F63380])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (objc_opt_respondsToSelector())
  {
    v7 = [(HMAccessoryProfile *)self accessoryProfile];
    v8 = [v7 context];
    v9 = [v8 delegateCaller];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __84__HMNetworkConfigurationProfile_networkConfigurationProfileDidUpdateProtectionMode___block_invoke;
    v10[3] = &unk_1E754E5C0;
    v10[4] = self;
    v11 = v6;
    [v9 invokeBlock:v10];
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
  v2 = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 isNetworkAccessRestricted];
  return v5;
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

- (void)previewAllowedHostsForAutoProtectionModeWithCompletionHandler:(id)a3
{
  v7 = a3;
  v4 = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  [v6 previewAllowedHostsForAutoProtectionModeWithCompletionHandler:v7];
}

- (void)reconfigureWiFiWithOptions:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v10 = a3;
  v7 = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 reconfigureWiFiWithOptions:v10 completionHandler:v6];
}

- (BOOL)mergeFromNewObject:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = HMNetworkConfigurationProfile;
  v5 = [(HMAccessoryProfile *)&v15 mergeFromNewObject:v4];
  v6 = v4;
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
    v9 = [(HMAccessoryProfile *)self accessoryProfile];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v12 = [v8 accessoryProfile];
    v13 = [v11 mergeFromNewObject:v12];

    v5 |= v13;
  }

  return v5 & 1;
}

- (int64_t)credentialType
{
  v2 = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 credentialType];
  return v5;
}

- (BOOL)supportsWiFiReconfiguration
{
  v2 = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 supportsWiFiReconfiguration];
  return v5;
}

- (HMAccessoryNetworkAccessViolation)accessViolation
{
  v2 = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 accessViolation];

  return v5;
}

- (NSArray)allowedHosts
{
  v2 = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 allowedHosts];

  return v5;
}

- (int64_t)targetProtectionMode
{
  v2 = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 targetProtectionMode];
  return v5;
}

- (int64_t)currentProtectionMode
{
  v2 = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 currentProtectionMode];
  return v5;
}

@end