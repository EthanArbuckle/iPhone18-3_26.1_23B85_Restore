@interface HMSiriEndpointApplyOnboardingSelectionsPayload
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMSiriEndpointApplyOnboardingSelectionsPayload)initWithAccessoryUUID:(id)d onboardingSelections:(id)selections;
- (HMSiriEndpointApplyOnboardingSelectionsPayload)initWithPayload:(id)payload;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)payloadCopy;
- (unint64_t)hash;
@end

@implementation HMSiriEndpointApplyOnboardingSelectionsPayload

- (unint64_t)hash
{
  accessoryUUID = [(HMSiriEndpointApplyOnboardingSelectionsPayload *)self accessoryUUID];
  v3 = [accessoryUUID hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
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
      accessoryUUID = [(HMSiriEndpointApplyOnboardingSelectionsPayload *)self accessoryUUID];
      accessoryUUID2 = [(HMSiriEndpointApplyOnboardingSelectionsPayload *)v6 accessoryUUID];
      if ([accessoryUUID hmf_isEqualToUUID:accessoryUUID2])
      {
        onboardingSelections = [(HMSiriEndpointApplyOnboardingSelectionsPayload *)self onboardingSelections];
        onboardingSelections2 = [(HMSiriEndpointApplyOnboardingSelectionsPayload *)v6 onboardingSelections];
        v11 = [onboardingSelections isEqual:onboardingSelections2];
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
  accessoryUUID = [(HMSiriEndpointApplyOnboardingSelectionsPayload *)self accessoryUUID];
  v5 = [v3 initWithName:@"accessoryUUID" value:accessoryUUID];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  onboardingSelections = [(HMSiriEndpointApplyOnboardingSelectionsPayload *)self onboardingSelections];
  v8 = [v6 initWithName:@"onboardingSelections" value:onboardingSelections];
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

- (HMSiriEndpointApplyOnboardingSelectionsPayload)initWithPayload:(id)payload
{
  v20 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  v5 = [payloadCopy hmf_UUIDForKey:@"HMAccessoryUUIDPayloadKey"];
  v6 = [payloadCopy hmf_dictionaryForKey:@"HMSiriEndpointOnboardingSelectionsPayloadKey"];
  v7 = [[HMSiriEndpointOnboardingSelections alloc] initWithPayload:v6];
  v8 = v7;
  if (v5 && v7)
  {
    selfCopy = [(HMSiriEndpointApplyOnboardingSelectionsPayload *)self initWithAccessoryUUID:v5 onboardingSelections:v7];
    v10 = selfCopy;
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = payloadCopy;
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
  accessoryUUID = [(HMSiriEndpointApplyOnboardingSelectionsPayload *)self accessoryUUID];
  uUIDString = [accessoryUUID UUIDString];
  v10[1] = @"HMSiriEndpointOnboardingSelectionsPayloadKey";
  v11[0] = uUIDString;
  onboardingSelections = [(HMSiriEndpointApplyOnboardingSelectionsPayload *)self onboardingSelections];
  payloadCopy = [onboardingSelections payloadCopy];
  v11[1] = payloadCopy;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (HMSiriEndpointApplyOnboardingSelectionsPayload)initWithAccessoryUUID:(id)d onboardingSelections:(id)selections
{
  dCopy = d;
  selectionsCopy = selections;
  v12.receiver = self;
  v12.super_class = HMSiriEndpointApplyOnboardingSelectionsPayload;
  v9 = [(HMSiriEndpointApplyOnboardingSelectionsPayload *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accessoryUUID, d);
    objc_storeStrong(&v10->_onboardingSelections, selections);
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