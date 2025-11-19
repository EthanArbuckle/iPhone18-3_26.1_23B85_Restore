@interface HMSiriEndpointApplyOnboardingSelectionsPayload
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMSiriEndpointApplyOnboardingSelectionsPayload)initWithAccessoryUUID:(id)a3 onboardingSelections:(id)a4;
- (HMSiriEndpointApplyOnboardingSelectionsPayload)initWithPayload:(id)a3;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)payloadCopy;
- (unint64_t)hash;
@end

@implementation HMSiriEndpointApplyOnboardingSelectionsPayload

- (unint64_t)hash
{
  v2 = [(HMSiriEndpointApplyOnboardingSelectionsPayload *)self accessoryUUID];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
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
      v7 = [(HMSiriEndpointApplyOnboardingSelectionsPayload *)self accessoryUUID];
      v8 = [(HMSiriEndpointApplyOnboardingSelectionsPayload *)v6 accessoryUUID];
      if ([v7 hmf_isEqualToUUID:v8])
      {
        v9 = [(HMSiriEndpointApplyOnboardingSelectionsPayload *)self onboardingSelections];
        v10 = [(HMSiriEndpointApplyOnboardingSelectionsPayload *)v6 onboardingSelections];
        v11 = [v9 isEqual:v10];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (NSArray)attributeDescriptions
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v4 = [(HMSiriEndpointApplyOnboardingSelectionsPayload *)self accessoryUUID];
  v5 = [v3 initWithName:@"accessoryUUID" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  v7 = [(HMSiriEndpointApplyOnboardingSelectionsPayload *)self onboardingSelections];
  v8 = [v6 initWithName:@"onboardingSelections" value:v7];
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

- (HMSiriEndpointApplyOnboardingSelectionsPayload)initWithPayload:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 hmf_UUIDForKey:@"HMAccessoryUUIDPayloadKey"];
  v6 = [v4 hmf_dictionaryForKey:@"HMSiriEndpointOnboardingSelectionsPayloadKey"];
  v7 = [[HMSiriEndpointOnboardingSelections alloc] initWithPayload:v6];
  v8 = v7;
  if (v5 && v7)
  {
    v9 = [(HMSiriEndpointApplyOnboardingSelectionsPayload *)self initWithAccessoryUUID:v5 onboardingSelections:v7];
    v10 = v9;
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v9 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Failed to decode apply onboarding selections payload: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)payloadCopy
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"HMAccessoryUUIDPayloadKey";
  v3 = [(HMSiriEndpointApplyOnboardingSelectionsPayload *)self accessoryUUID];
  v4 = [v3 UUIDString];
  v10[1] = @"HMSiriEndpointOnboardingSelectionsPayloadKey";
  v11[0] = v4;
  v5 = [(HMSiriEndpointApplyOnboardingSelectionsPayload *)self onboardingSelections];
  v6 = [v5 payloadCopy];
  v11[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (HMSiriEndpointApplyOnboardingSelectionsPayload)initWithAccessoryUUID:(id)a3 onboardingSelections:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMSiriEndpointApplyOnboardingSelectionsPayload;
  v9 = [(HMSiriEndpointApplyOnboardingSelectionsPayload *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accessoryUUID, a3);
    objc_storeStrong(&v10->_onboardingSelections, a4);
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_58383 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_58383, &__block_literal_global_58384);
  }

  v3 = logCategory__hmf_once_v2_58385;

  return v3;
}

uint64_t __61__HMSiriEndpointApplyOnboardingSelectionsPayload_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_58385;
  logCategory__hmf_once_v2_58385 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end