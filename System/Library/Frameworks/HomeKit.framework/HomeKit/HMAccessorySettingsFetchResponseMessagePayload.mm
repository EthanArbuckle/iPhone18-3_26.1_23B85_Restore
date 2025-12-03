@interface HMAccessorySettingsFetchResponseMessagePayload
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMAccessorySettingsFetchResponseMessagePayload)initWithPayload:(id)payload;
- (HMAccessorySettingsFetchResponseMessagePayload)initWithSettings:(id)settings failureInformation:(id)information;
- (NSArray)attributeDescriptions;
- (NSArray)fetchResults;
- (NSString)shortDescription;
- (id)payloadCopy;
@end

@implementation HMAccessorySettingsFetchResponseMessagePayload

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      settings = [(HMAccessorySettingsFetchResponseMessagePayload *)self settings];
      v8 = [settings count];
      settings2 = [(HMAccessorySettingsFetchResponseMessagePayload *)v6 settings];
      if (v8 == [settings2 count])
      {
        settings3 = [(HMAccessorySettingsFetchResponseMessagePayload *)self settings];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __58__HMAccessorySettingsFetchResponseMessagePayload_isEqual___block_invoke;
        v16[3] = &unk_1E7546B10;
        v11 = v6;
        v17 = v11;
        if ([settings3 na_allObjectsPassTest:v16])
        {
          failureInformation = [(HMAccessorySettingsFetchResponseMessagePayload *)self failureInformation];
          failureInformation2 = [(HMAccessorySettingsFetchResponseMessagePayload *)v11 failureInformation];
          v14 = [failureInformation isEqual:failureInformation2];
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

uint64_t __58__HMAccessorySettingsFetchResponseMessagePayload_isEqual___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 settings];
  v5 = [v4 containsObject:v3];

  return v5;
}

- (NSArray)attributeDescriptions
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  settings = [(HMAccessorySettingsFetchResponseMessagePayload *)self settings];
  v5 = [v3 initWithName:@"settings" value:settings];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  failureInformation = [(HMAccessorySettingsFetchResponseMessagePayload *)self failureInformation];
  v8 = [v6 initWithName:@"failureInformation" value:failureInformation];
  v12[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (id)payloadCopy
{
  v11[2] = *MEMORY[0x1E69E9840];
  settings = [(HMAccessorySettingsFetchResponseMessagePayload *)self settings];
  v4 = [settings na_map:&__block_literal_global_11];

  v10[0] = @"HMImmutableSettingsPayloadKey";
  v10[1] = HMAccessorySettingsPartialFetchFailureInformationPayloadKey;
  v11[0] = v4;
  failureInformation = [(HMAccessorySettingsFetchResponseMessagePayload *)self failureInformation];
  payloadCopy = [failureInformation payloadCopy];
  v11[1] = payloadCopy;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (HMAccessorySettingsFetchResponseMessagePayload)initWithPayload:(id)payload
{
  v43 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  v5 = [payloadCopy hmf_arrayForKey:@"HMImmutableSettingsPayloadKey"];
  if (v5)
  {
    v33 = payloadCopy;
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v35;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v35 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v34 + 1) + 8 * i);
          v13 = [[HMImmutableSetting alloc] initWithPayload:v12];
          if (!v13)
          {
            v19 = objc_autoreleasePoolPush();
            selfCopy4 = self;
            v20 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              v21 = HMFGetLogIdentifier();
              *buf = 138543618;
              v40 = v21;
              v41 = 2112;
              v42 = v12;
              _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode accessory settings fetch response message due to setting payload: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v19);
            v18 = 0;
            payloadCopy = v33;
            goto LABEL_26;
          }

          v14 = v13;
          [v6 addObject:v13];
        }

        v9 = [v7 countByEnumeratingWithState:&v34 objects:v38 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    payloadCopy = v33;
    v7 = [v33 hmf_dictionaryForKey:HMAccessorySettingsPartialFetchFailureInformationPayloadKey];
    if (v7)
    {
      v15 = [[HMAccessorySettingsPartialFetchFailureInformation alloc] initWithPayload:v7];
      if (v15)
      {
        v16 = [v6 copy];
        selfCopy4 = [(HMAccessorySettingsFetchResponseMessagePayload *)self initWithSettings:v16 failureInformation:v15];

        v18 = selfCopy4;
      }

      else
      {
        v28 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v29 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = HMFGetLogIdentifier();
          *buf = 138543618;
          v40 = v30;
          v41 = 2112;
          v42 = v7;
          _os_log_impl(&dword_19BB39000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode accessory settings fetch response message due to invalid failure information payload: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v28);
        v18 = 0;
      }
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543618;
        v40 = v27;
        v41 = 2112;
        v42 = v33;
        _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode accessory settings fetch response message due to no failure information in payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
      v18 = 0;
    }

LABEL_26:
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v24;
      v41 = 2112;
      v42 = payloadCopy;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode accessory settings fetch response message due to no settings in payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v18 = 0;
  }

  v31 = *MEMORY[0x1E69E9840];
  return v18;
}

- (NSArray)fetchResults
{
  settings = [(HMAccessorySettingsFetchResponseMessagePayload *)self settings];
  v4 = [settings na_map:&__block_literal_global_1558];

  failureInformation = [(HMAccessorySettingsFetchResponseMessagePayload *)self failureInformation];
  failedKeyPaths = [failureInformation failedKeyPaths];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__HMAccessorySettingsFetchResponseMessagePayload_fetchResults__block_invoke_2;
  v11[3] = &unk_1E7546AC8;
  v12 = failureInformation;
  v7 = failureInformation;
  v8 = [failedKeyPaths na_map:v11];

  v9 = [v4 arrayByAddingObjectsFromArray:v8];

  return v9;
}

HMAccessorySettingFetchResult *__62__HMAccessorySettingsFetchResponseMessagePayload_fetchResults__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = -[HMAccessorySettingFetchResult initWithKeyPath:failureType:]([HMAccessorySettingFetchResult alloc], "initWithKeyPath:failureType:", v3, [v2 fetchFailureTypeForKeyPath:v3]);

  return v4;
}

HMAccessorySettingFetchResult *__62__HMAccessorySettingsFetchResponseMessagePayload_fetchResults__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HMAccessorySettingFetchResult alloc] initWithSetting:v2];

  return v3;
}

- (HMAccessorySettingsFetchResponseMessagePayload)initWithSettings:(id)settings failureInformation:(id)information
{
  settingsCopy = settings;
  informationCopy = information;
  if (!settingsCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v8 = informationCopy;
  if (!informationCopy)
  {
LABEL_7:
    v13 = _HMFPreconditionFailure();
    return +[(HMAccessorySettingsFetchResponseMessagePayload *)v13];
  }

  v15.receiver = self;
  v15.super_class = HMAccessorySettingsFetchResponseMessagePayload;
  v9 = [(HMAccessorySettingsFetchResponseMessagePayload *)&v15 init];
  if (v9)
  {
    v10 = [settingsCopy copy];
    settings = v9->_settings;
    v9->_settings = v10;

    objc_storeStrong(&v9->_failureInformation, information);
  }

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_1569 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_1569, &__block_literal_global_17);
  }

  v3 = logCategory__hmf_once_v5_1570;

  return v3;
}

uint64_t __61__HMAccessorySettingsFetchResponseMessagePayload_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  logCategory__hmf_once_v5_1570 = HMFCreateOSLogHandle();

  return MEMORY[0x1EEE66BB8]();
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end