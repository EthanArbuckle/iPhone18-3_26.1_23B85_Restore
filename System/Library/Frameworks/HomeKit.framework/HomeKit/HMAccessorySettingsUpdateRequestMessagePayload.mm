@interface HMAccessorySettingsUpdateRequestMessagePayload
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMAccessorySettingsUpdateRequestMessagePayload)initWithAccessoryUUID:(id)d keyPath:(id)path settingValue:(id)value;
- (HMAccessorySettingsUpdateRequestMessagePayload)initWithPayload:(id)payload;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)payloadCopy;
- (unint64_t)hash;
@end

@implementation HMAccessorySettingsUpdateRequestMessagePayload

- (unint64_t)hash
{
  accessoryUUID = [(HMAccessorySettingsUpdateRequestMessagePayload *)self accessoryUUID];
  v3 = [accessoryUUID hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v13 = 1;
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
      accessoryUUID = [(HMAccessorySettingsUpdateRequestMessagePayload *)self accessoryUUID];
      accessoryUUID2 = [(HMAccessorySettingsUpdateRequestMessagePayload *)v6 accessoryUUID];
      if ([accessoryUUID hmf_isEqualToUUID:accessoryUUID2])
      {
        keyPath = [(HMAccessorySettingsUpdateRequestMessagePayload *)self keyPath];
        keyPath2 = [(HMAccessorySettingsUpdateRequestMessagePayload *)v6 keyPath];
        if ([keyPath isEqual:keyPath2])
        {
          settingValue = [(HMAccessorySettingsUpdateRequestMessagePayload *)self settingValue];
          settingValue2 = [(HMAccessorySettingsUpdateRequestMessagePayload *)v6 settingValue];
          v13 = [settingValue isEqual:settingValue2];
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
  keyPath = [(HMAccessorySettingsUpdateRequestMessagePayload *)self keyPath];
  v5 = [v3 initWithName:@"keyPath" value:keyPath];
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  accessoryUUID = [(HMAccessorySettingsUpdateRequestMessagePayload *)self accessoryUUID];
  v8 = [v6 initWithName:@"accessoryUUID" value:accessoryUUID];
  v15[1] = v8;
  v9 = objc_alloc(MEMORY[0x1E69A29C8]);
  settingValue = [(HMAccessorySettingsUpdateRequestMessagePayload *)self settingValue];
  v11 = [v9 initWithName:@"settingValue" value:settingValue];
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
  accessoryUUID = [(HMAccessorySettingsUpdateRequestMessagePayload *)self accessoryUUID];
  uUIDString = [accessoryUUID UUIDString];
  v12[0] = uUIDString;
  v11[1] = @"HMImmutableSettingKeyPathPayloadKey";
  keyPath = [(HMAccessorySettingsUpdateRequestMessagePayload *)self keyPath];
  v12[1] = keyPath;
  v11[2] = @"HMImmutableSettingValuePayloadKey";
  settingValue = [(HMAccessorySettingsUpdateRequestMessagePayload *)self settingValue];
  payloadCopy = [settingValue payloadCopy];
  v12[2] = payloadCopy;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (HMAccessorySettingsUpdateRequestMessagePayload)initWithPayload:(id)payload
{
  v24 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  v5 = [payloadCopy hmf_UUIDForKey:@"HMAccessoryUUIDPayloadKey"];
  v6 = [payloadCopy hmf_stringForKey:@"HMImmutableSettingKeyPathPayloadKey"];
  v7 = [payloadCopy hmf_dictionaryForKey:@"HMImmutableSettingValuePayloadKey"];
  v8 = v7;
  if (v5 && v6 && v7)
  {
    v9 = [[HMImmutableSettingValue alloc] initWithPayload:v7];
    if (v9)
    {
      selfCopy2 = [(HMAccessorySettingsUpdateRequestMessagePayload *)self initWithAccessoryUUID:v5 keyPath:v6 settingValue:v9];
      v11 = selfCopy2;
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy2 = self;
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
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v14;
      v22 = 2112;
      v23 = payloadCopy;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode accessory settings update request message payload: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v11 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v11;
}

- (HMAccessorySettingsUpdateRequestMessagePayload)initWithAccessoryUUID:(id)d keyPath:(id)path settingValue:(id)value
{
  dCopy = d;
  pathCopy = path;
  valueCopy = value;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!pathCopy)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v12 = valueCopy;
  if (!valueCopy)
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
    objc_storeStrong(&v13->_accessoryUUID, d);
    objc_storeStrong(&v14->_keyPath, path);
    objc_storeStrong(&v14->_settingValue, value);
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