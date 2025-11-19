@interface HMAccessorySettingsUpdateRequestMessagePayload
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMAccessorySettingsUpdateRequestMessagePayload)initWithAccessoryUUID:(id)a3 keyPath:(id)a4 settingValue:(id)a5;
- (HMAccessorySettingsUpdateRequestMessagePayload)initWithPayload:(id)a3;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)payloadCopy;
- (unint64_t)hash;
@end

@implementation HMAccessorySettingsUpdateRequestMessagePayload

- (unint64_t)hash
{
  v2 = [(HMAccessorySettingsUpdateRequestMessagePayload *)self accessoryUUID];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v13 = 1;
  }

  else
  {
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
    if (v6)
    {
      v7 = [(HMAccessorySettingsUpdateRequestMessagePayload *)self accessoryUUID];
      v8 = [(HMAccessorySettingsUpdateRequestMessagePayload *)v6 accessoryUUID];
      if ([v7 hmf_isEqualToUUID:v8])
      {
        v9 = [(HMAccessorySettingsUpdateRequestMessagePayload *)self keyPath];
        v10 = [(HMAccessorySettingsUpdateRequestMessagePayload *)v6 keyPath];
        if ([v9 isEqual:v10])
        {
          v11 = [(HMAccessorySettingsUpdateRequestMessagePayload *)self settingValue];
          v12 = [(HMAccessorySettingsUpdateRequestMessagePayload *)v6 settingValue];
          v13 = [v11 isEqual:v12];
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (NSArray)attributeDescriptions
{
  v15[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v4 = [(HMAccessorySettingsUpdateRequestMessagePayload *)self keyPath];
  v5 = [v3 initWithName:@"keyPath" value:v4];
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  v7 = [(HMAccessorySettingsUpdateRequestMessagePayload *)self accessoryUUID];
  v8 = [v6 initWithName:@"accessoryUUID" value:v7];
  v15[1] = v8;
  v9 = objc_alloc(MEMORY[0x1E69A29C8]);
  v10 = [(HMAccessorySettingsUpdateRequestMessagePayload *)self settingValue];
  v11 = [v9 initWithName:@"settingValue" value:v10];
  v15[2] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (id)payloadCopy
{
  v12[3] = *MEMORY[0x1E69E9840];
  v11[0] = @"HMAccessoryUUIDPayloadKey";
  v3 = [(HMAccessorySettingsUpdateRequestMessagePayload *)self accessoryUUID];
  v4 = [v3 UUIDString];
  v12[0] = v4;
  v11[1] = @"HMImmutableSettingKeyPathPayloadKey";
  v5 = [(HMAccessorySettingsUpdateRequestMessagePayload *)self keyPath];
  v12[1] = v5;
  v11[2] = @"HMImmutableSettingValuePayloadKey";
  v6 = [(HMAccessorySettingsUpdateRequestMessagePayload *)self settingValue];
  v7 = [v6 payloadCopy];
  v12[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (HMAccessorySettingsUpdateRequestMessagePayload)initWithPayload:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 hmf_UUIDForKey:@"HMAccessoryUUIDPayloadKey"];
  v6 = [v4 hmf_stringForKey:@"HMImmutableSettingKeyPathPayloadKey"];
  v7 = [v4 hmf_dictionaryForKey:@"HMImmutableSettingValuePayloadKey"];
  v8 = v7;
  if (v5 && v6 && v7)
  {
    v9 = [[HMImmutableSettingValue alloc] initWithPayload:v7];
    if (v9)
    {
      v10 = [(HMAccessorySettingsUpdateRequestMessagePayload *)self initWithAccessoryUUID:v5 keyPath:v6 settingValue:v9];
      v11 = v10;
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v10 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        v20 = 138543618;
        v21 = v17;
        v22 = 2112;
        v23 = v8;
        _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode accessory settings update request message due to invalid setting value payload: %@", &v20, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      v11 = 0;
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v10 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v14;
      v22 = 2112;
      v23 = v4;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode accessory settings update request message payload: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v11 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v11;
}

- (HMAccessorySettingsUpdateRequestMessagePayload)initWithAccessoryUUID:(id)a3 keyPath:(id)a4 settingValue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!v10)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v12 = v11;
  if (!v11)
  {
LABEL_9:
    v16 = _HMFPreconditionFailure();
    return +[(HMAccessorySettingsUpdateRequestMessagePayload *)v16];
  }

  v18.receiver = self;
  v18.super_class = HMAccessorySettingsUpdateRequestMessagePayload;
  v13 = [(HMAccessorySettingsUpdateRequestMessagePayload *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_accessoryUUID, a3);
    objc_storeStrong(&v14->_keyPath, a4);
    objc_storeStrong(&v14->_settingValue, a5);
  }

  return v14;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_34021 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_34021, &__block_literal_global_34022);
  }

  v3 = logCategory__hmf_once_v3_34023;

  return v3;
}

uint64_t __61__HMAccessorySettingsUpdateRequestMessagePayload_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v3_34023;
  logCategory__hmf_once_v3_34023 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end