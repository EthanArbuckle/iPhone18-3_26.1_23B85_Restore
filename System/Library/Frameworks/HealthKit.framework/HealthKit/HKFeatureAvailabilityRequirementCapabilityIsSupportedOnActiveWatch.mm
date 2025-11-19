@interface HKFeatureAvailabilityRequirementCapabilityIsSupportedOnActiveWatch
- (BOOL)isEqual:(id)a3;
- (HKFeatureAvailabilityRequirementCapabilityIsSupportedOnActiveWatch)initWithCoder:(id)a3;
- (HKFeatureAvailabilityRequirementCapabilityIsSupportedOnActiveWatch)initWithFeatureIdentifier:(id)a3 supportedOnLocalDevice:(BOOL)a4;
- (id)isSatisfiedWithDataSource:(id)a3 error:(id *)a4;
- (id)requiredEntitlements;
- (id)requirementDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)registerObserver:(id)a3 forDataSource:(id)a4;
- (void)unregisterObserver:(id)a3 fromDataSource:(id)a4;
@end

@implementation HKFeatureAvailabilityRequirementCapabilityIsSupportedOnActiveWatch

- (HKFeatureAvailabilityRequirementCapabilityIsSupportedOnActiveWatch)initWithFeatureIdentifier:(id)a3 supportedOnLocalDevice:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = HKFeatureAvailabilityRequirementCapabilityIsSupportedOnActiveWatch;
  result = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)&v6 initWithFeatureIdentifier:a3];
  if (result)
  {
    result->_supportedOnLocalDevice = a4;
  }

  return result;
}

- (id)requirementDescription
{
  v3 = +[_HKBehavior sharedBehavior];
  v4 = [v3 isAppleWatch];

  v5 = MEMORY[0x1E696AEC0];
  if (v4)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The Mobile Gestalt capability must be supported"];
  }

  else
  {
    v7 = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)self featureIdentifier];
    v6 = [v5 stringWithFormat:@"The paired device capability for %@ must be supported", v7];
  }

  return v6;
}

- (id)requiredEntitlements
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = +[_HKBehavior sharedBehavior];
  v4 = [v3 isAppleWatch];

  if (v4)
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v6 = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)self featureIdentifier];
    v7 = [HKFeatureAvailabilityRequirementEntitlement featureAvailabilityReadEntitlementForFeatureIdentifier:v6];
    v10[0] = v7;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  }

  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)isSatisfiedWithDataSource:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 behavior];
  v8 = [v7 isAppleWatch];

  if (v8)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportedOnLocalDevice];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = HKFeatureAvailabilityRequirementCapabilityIsSupportedOnActiveWatch;
    v9 = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)&v12 isSatisfiedWithDataSource:v6 error:a4];
  }

  v10 = v9;

  return v10;
}

- (void)registerObserver:(id)a3 forDataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 behavior];
  v9 = [v8 isAppleWatch];

  if ((v9 & 1) == 0)
  {
    v10.receiver = self;
    v10.super_class = HKFeatureAvailabilityRequirementCapabilityIsSupportedOnActiveWatch;
    [(_HKFeatureAvailabilityRequirementCapabilityIsSupportedOnActiveRemoteDevice *)&v10 registerObserver:v6 forDataSource:v7];
  }
}

- (void)unregisterObserver:(id)a3 fromDataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 behavior];
  v9 = [v8 isAppleWatch];

  if ((v9 & 1) == 0)
  {
    v10.receiver = self;
    v10.super_class = HKFeatureAvailabilityRequirementCapabilityIsSupportedOnActiveWatch;
    [(_HKFeatureAvailabilityRequirementCapabilityIsSupportedOnActiveRemoteDevice *)&v10 unregisterObserver:v6 fromDataSource:v7];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = HKFeatureAvailabilityRequirementCapabilityIsSupportedOnActiveWatch;
  v5 = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)&v7 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_supportedOnLocalDevice == v4[16];

  return v5;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = HKFeatureAvailabilityRequirementCapabilityIsSupportedOnActiveWatch;
  return [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)&v3 hash]^ self->_supportedOnLocalDevice;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKFeatureAvailabilityRequirementCapabilityIsSupportedOnActiveWatch;
  v4 = a3;
  [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_supportedOnLocalDevice forKey:{@"supportedOnLocalDevice", v5.receiver, v5.super_class}];
}

- (HKFeatureAvailabilityRequirementCapabilityIsSupportedOnActiveWatch)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = HKFeatureAvailabilityRequirementCapabilityIsSupportedOnActiveWatch;
  v5 = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_supportedOnLocalDevice = [v4 decodeBoolForKey:@"supportedOnLocalDevice"];
  }

  return v5;
}

@end