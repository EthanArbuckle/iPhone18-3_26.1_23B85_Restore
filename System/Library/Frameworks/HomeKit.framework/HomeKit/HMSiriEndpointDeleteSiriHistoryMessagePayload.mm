@interface HMSiriEndpointDeleteSiriHistoryMessagePayload
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMSiriEndpointDeleteSiriHistoryMessagePayload)initWithAccessoryUUID:(id)d;
- (HMSiriEndpointDeleteSiriHistoryMessagePayload)initWithPayload:(id)payload;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)payloadCopy;
- (unint64_t)hash;
@end

@implementation HMSiriEndpointDeleteSiriHistoryMessagePayload

- (unint64_t)hash
{
  accessoryUUID = [(HMSiriEndpointDeleteSiriHistoryMessagePayload *)self accessoryUUID];
  v3 = [accessoryUUID hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
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
      accessoryUUID = [(HMSiriEndpointDeleteSiriHistoryMessagePayload *)self accessoryUUID];
      accessoryUUID2 = [(HMSiriEndpointDeleteSiriHistoryMessagePayload *)v6 accessoryUUID];
      v9 = [accessoryUUID hmf_isEqualToUUID:accessoryUUID2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (NSArray)attributeDescriptions
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  accessoryUUID = [(HMSiriEndpointDeleteSiriHistoryMessagePayload *)self accessoryUUID];
  v5 = [v3 initWithName:@"accessoryUUID" value:accessoryUUID];
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

- (HMSiriEndpointDeleteSiriHistoryMessagePayload)initWithPayload:(id)payload
{
  v17 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  v5 = [payloadCopy hmf_UUIDForKey:@"HMAccessoryUUIDPayloadKey"];
  if (v5)
  {
    selfCopy = [(HMSiriEndpointDeleteSiriHistoryMessagePayload *)self initWithAccessoryUUID:v5];
    v7 = selfCopy;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = payloadCopy;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Failed to decode delete siri history payload: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)payloadCopy
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"HMAccessoryUUIDPayloadKey";
  accessoryUUID = [(HMSiriEndpointDeleteSiriHistoryMessagePayload *)self accessoryUUID];
  uUIDString = [accessoryUUID UUIDString];
  v8[0] = uUIDString;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (HMSiriEndpointDeleteSiriHistoryMessagePayload)initWithAccessoryUUID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = HMSiriEndpointDeleteSiriHistoryMessagePayload;
  v6 = [(HMSiriEndpointDeleteSiriHistoryMessagePayload *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accessoryUUID, d);
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_21446 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_21446, &__block_literal_global_21447);
  }

  v3 = logCategory__hmf_once_v2_21448;

  return v3;
}

uint64_t __60__HMSiriEndpointDeleteSiriHistoryMessagePayload_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_21448;
  logCategory__hmf_once_v2_21448 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end