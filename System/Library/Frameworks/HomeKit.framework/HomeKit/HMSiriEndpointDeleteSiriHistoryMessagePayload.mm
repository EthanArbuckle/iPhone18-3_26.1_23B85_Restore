@interface HMSiriEndpointDeleteSiriHistoryMessagePayload
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMSiriEndpointDeleteSiriHistoryMessagePayload)initWithAccessoryUUID:(id)a3;
- (HMSiriEndpointDeleteSiriHistoryMessagePayload)initWithPayload:(id)a3;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)payloadCopy;
- (unint64_t)hash;
@end

@implementation HMSiriEndpointDeleteSiriHistoryMessagePayload

- (unint64_t)hash
{
  v2 = [(HMSiriEndpointDeleteSiriHistoryMessagePayload *)self accessoryUUID];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
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
      v7 = [(HMSiriEndpointDeleteSiriHistoryMessagePayload *)self accessoryUUID];
      v8 = [(HMSiriEndpointDeleteSiriHistoryMessagePayload *)v6 accessoryUUID];
      v9 = [v7 hmf_isEqualToUUID:v8];
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
  v4 = [(HMSiriEndpointDeleteSiriHistoryMessagePayload *)self accessoryUUID];
  v5 = [v3 initWithName:@"accessoryUUID" value:v4];
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

- (HMSiriEndpointDeleteSiriHistoryMessagePayload)initWithPayload:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 hmf_UUIDForKey:@"HMAccessoryUUIDPayloadKey"];
  if (v5)
  {
    v6 = [(HMSiriEndpointDeleteSiriHistoryMessagePayload *)self initWithAccessoryUUID:v5];
    v7 = v6;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v6 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v4;
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
  v2 = [(HMSiriEndpointDeleteSiriHistoryMessagePayload *)self accessoryUUID];
  v3 = [v2 UUIDString];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (HMSiriEndpointDeleteSiriHistoryMessagePayload)initWithAccessoryUUID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMSiriEndpointDeleteSiriHistoryMessagePayload;
  v6 = [(HMSiriEndpointDeleteSiriHistoryMessagePayload *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accessoryUUID, a3);
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