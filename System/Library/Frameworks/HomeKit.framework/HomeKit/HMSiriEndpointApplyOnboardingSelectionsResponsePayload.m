@interface HMSiriEndpointApplyOnboardingSelectionsResponsePayload
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMSiriEndpointApplyOnboardingSelectionsResponsePayload)initWithOnboardingResult:(int64_t)a3;
- (HMSiriEndpointApplyOnboardingSelectionsResponsePayload)initWithPayload:(id)a3;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)payloadCopy;
@end

@implementation HMSiriEndpointApplyOnboardingSelectionsResponsePayload

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
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
      v7 = [(HMSiriEndpointApplyOnboardingSelectionsResponsePayload *)self onboardingResult];
      v8 = v7 == [(HMSiriEndpointApplyOnboardingSelectionsResponsePayload *)v6 onboardingResult];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (NSArray)attributeDescriptions
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v4 = HMSiriEndpointOnboardingResultAsString([(HMSiriEndpointApplyOnboardingSelectionsResponsePayload *)self onboardingResult]);
  v5 = [v3 initWithName:@"onboardingResult" value:v4];
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

- (HMSiriEndpointApplyOnboardingSelectionsResponsePayload)initWithPayload:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0;
  v5 = [v4 hmf_integerForKey:@"HMSiriEndpointOnboardingResultPayloadKey" error:&v14];
  v6 = v14;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543874;
      v16 = v10;
      v17 = 2112;
      v18 = v4;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Failed to decode apply onboarding selections payload: %@ error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = 0;
  }

  else
  {
    v8 = [(HMSiriEndpointApplyOnboardingSelectionsResponsePayload *)self initWithOnboardingResult:v5];
    v11 = v8;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)payloadCopy
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"HMSiriEndpointOnboardingResultPayloadKey";
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HMSiriEndpointApplyOnboardingSelectionsResponsePayload onboardingResult](self, "onboardingResult")}];
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (HMSiriEndpointApplyOnboardingSelectionsResponsePayload)initWithOnboardingResult:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = HMSiriEndpointApplyOnboardingSelectionsResponsePayload;
  result = [(HMSiriEndpointApplyOnboardingSelectionsResponsePayload *)&v5 init];
  if (result)
  {
    result->_onboardingResult = a3;
  }

  return result;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_53307 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_53307, &__block_literal_global_53308);
  }

  v3 = logCategory__hmf_once_v2_53309;

  return v3;
}

uint64_t __69__HMSiriEndpointApplyOnboardingSelectionsResponsePayload_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_53309;
  logCategory__hmf_once_v2_53309 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end