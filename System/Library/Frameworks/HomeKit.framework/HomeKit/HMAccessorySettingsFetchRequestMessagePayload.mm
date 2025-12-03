@interface HMAccessorySettingsFetchRequestMessagePayload
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMAccessorySettingsFetchRequestMessagePayload)initWithAccessoryUUID:(id)d keyPaths:(id)paths;
- (HMAccessorySettingsFetchRequestMessagePayload)initWithPayload:(id)payload;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)payloadCopy;
- (unint64_t)hash;
@end

@implementation HMAccessorySettingsFetchRequestMessagePayload

- (unint64_t)hash
{
  accessoryUUID = [(HMAccessorySettingsFetchRequestMessagePayload *)self accessoryUUID];
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
      accessoryUUID = [(HMAccessorySettingsFetchRequestMessagePayload *)self accessoryUUID];
      accessoryUUID2 = [(HMAccessorySettingsFetchRequestMessagePayload *)v6 accessoryUUID];
      if ([accessoryUUID hmf_isEqualToUUID:accessoryUUID2])
      {
        keyPaths = [(HMAccessorySettingsFetchRequestMessagePayload *)self keyPaths];
        v10 = [keyPaths count];
        keyPaths2 = [(HMAccessorySettingsFetchRequestMessagePayload *)v6 keyPaths];
        if (v10 == [keyPaths2 count])
        {
          keyPaths3 = [(HMAccessorySettingsFetchRequestMessagePayload *)self keyPaths];
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __57__HMAccessorySettingsFetchRequestMessagePayload_isEqual___block_invoke;
          v15[3] = &unk_1E7548550;
          v16 = v6;
          v13 = [keyPaths3 na_allObjectsPassTest:v15];
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

uint64_t __57__HMAccessorySettingsFetchRequestMessagePayload_isEqual___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 keyPaths];
  v5 = [v4 containsObject:v3];

  return v5;
}

- (NSArray)attributeDescriptions
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  accessoryUUID = [(HMAccessorySettingsFetchRequestMessagePayload *)self accessoryUUID];
  v5 = [v3 initWithName:@"accessoryUUID" value:accessoryUUID];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  keyPaths = [(HMAccessorySettingsFetchRequestMessagePayload *)self keyPaths];
  v8 = [v6 initWithName:@"keyPaths" value:keyPaths];
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
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"HMAccessoryUUIDPayloadKey";
  accessoryUUID = [(HMAccessorySettingsFetchRequestMessagePayload *)self accessoryUUID];
  uUIDString = [accessoryUUID UUIDString];
  v9[1] = @"HMImmutableSettingKeyPathsPayloadKey";
  v10[0] = uUIDString;
  keyPaths = [(HMAccessorySettingsFetchRequestMessagePayload *)self keyPaths];
  v10[1] = keyPaths;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (HMAccessorySettingsFetchRequestMessagePayload)initWithPayload:(id)payload
{
  v19 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  v5 = [payloadCopy hmf_UUIDForKey:@"HMAccessoryUUIDPayloadKey"];
  v6 = [payloadCopy hmf_arrayForKey:@"HMImmutableSettingKeyPathsPayloadKey"];
  v7 = v6;
  if (v5 && v6)
  {
    selfCopy = [(HMAccessorySettingsFetchRequestMessagePayload *)self initWithAccessoryUUID:v5 keyPaths:v6];
    v9 = selfCopy;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = payloadCopy;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode accessory settings fetch request message payload: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

- (HMAccessorySettingsFetchRequestMessagePayload)initWithAccessoryUUID:(id)d keyPaths:(id)paths
{
  dCopy = d;
  pathsCopy = paths;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = pathsCopy;
  if (!pathsCopy)
  {
LABEL_7:
    v13 = _HMFPreconditionFailure();
    return +[(HMAccessorySettingsFetchRequestMessagePayload *)v13];
  }

  v15.receiver = self;
  v15.super_class = HMAccessorySettingsFetchRequestMessagePayload;
  v10 = [(HMAccessorySettingsFetchRequestMessagePayload *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_accessoryUUID, d);
    objc_storeStrong(&v11->_keyPaths, paths);
  }

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_19506 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_19506, &__block_literal_global_19507);
  }

  v3 = logCategory__hmf_once_v2_19508;

  return v3;
}

uint64_t __60__HMAccessorySettingsFetchRequestMessagePayload_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_19508;
  logCategory__hmf_once_v2_19508 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end