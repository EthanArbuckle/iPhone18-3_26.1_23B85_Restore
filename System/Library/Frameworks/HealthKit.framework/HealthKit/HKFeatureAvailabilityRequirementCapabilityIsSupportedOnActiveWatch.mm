@interface HKFeatureAvailabilityRequirementCapabilityIsSupportedOnActiveWatch
- (BOOL)isEqual:(id)equal;
- (HKFeatureAvailabilityRequirementCapabilityIsSupportedOnActiveWatch)initWithCoder:(id)coder;
- (HKFeatureAvailabilityRequirementCapabilityIsSupportedOnActiveWatch)initWithFeatureIdentifier:(id)identifier supportedOnLocalDevice:(BOOL)device;
- (id)isSatisfiedWithDataSource:(id)source error:(id *)error;
- (id)requiredEntitlements;
- (id)requirementDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)registerObserver:(id)observer forDataSource:(id)source;
- (void)unregisterObserver:(id)observer fromDataSource:(id)source;
@end

@implementation HKFeatureAvailabilityRequirementCapabilityIsSupportedOnActiveWatch

- (HKFeatureAvailabilityRequirementCapabilityIsSupportedOnActiveWatch)initWithFeatureIdentifier:(id)identifier supportedOnLocalDevice:(BOOL)device
{
  v6.receiver = self;
  v6.super_class = HKFeatureAvailabilityRequirementCapabilityIsSupportedOnActiveWatch;
  result = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)&v6 initWithFeatureIdentifier:identifier];
  if (result)
  {
    result->_supportedOnLocalDevice = device;
  }

  return result;
}

- (id)requirementDescription
{
  v3 = +[_HKBehavior sharedBehavior];
  isAppleWatch = [v3 isAppleWatch];

  v5 = MEMORY[0x1E696AEC0];
  if (isAppleWatch)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The Mobile Gestalt capability must be supported"];
  }

  else
  {
    featureIdentifier = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)self featureIdentifier];
    v6 = [v5 stringWithFormat:@"The paired device capability for %@ must be supported", featureIdentifier];
  }

  return v6;
}

- (id)requiredEntitlements
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = +[_HKBehavior sharedBehavior];
  isAppleWatch = [v3 isAppleWatch];

  if (isAppleWatch)
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  else
  {
    featureIdentifier = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)self featureIdentifier];
    v7 = [HKFeatureAvailabilityRequirementEntitlement featureAvailabilityReadEntitlementForFeatureIdentifier:featureIdentifier];
    v10[0] = v7;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  }

  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)isSatisfiedWithDataSource:(id)source error:(id *)error
{
  sourceCopy = source;
  behavior = [sourceCopy behavior];
  isAppleWatch = [behavior isAppleWatch];

  if (isAppleWatch)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportedOnLocalDevice];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = HKFeatureAvailabilityRequirementCapabilityIsSupportedOnActiveWatch;
    v9 = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)&v12 isSatisfiedWithDataSource:sourceCopy error:error];
  }

  v10 = v9;

  return v10;
}

- (void)registerObserver:(id)observer forDataSource:(id)source
{
  observerCopy = observer;
  sourceCopy = source;
  behavior = [sourceCopy behavior];
  isAppleWatch = [behavior isAppleWatch];

  if ((isAppleWatch & 1) == 0)
  {
    v10.receiver = self;
    v10.super_class = HKFeatureAvailabilityRequirementCapabilityIsSupportedOnActiveWatch;
    [(_HKFeatureAvailabilityRequirementCapabilityIsSupportedOnActiveRemoteDevice *)&v10 registerObserver:observerCopy forDataSource:sourceCopy];
  }
}

- (void)unregisterObserver:(id)observer fromDataSource:(id)source
{
  observerCopy = observer;
  sourceCopy = source;
  behavior = [sourceCopy behavior];
  isAppleWatch = [behavior isAppleWatch];

  if ((isAppleWatch & 1) == 0)
  {
    v10.receiver = self;
    v10.super_class = HKFeatureAvailabilityRequirementCapabilityIsSupportedOnActiveWatch;
    [(_HKFeatureAvailabilityRequirementCapabilityIsSupportedOnActiveRemoteDevice *)&v10 unregisterObserver:observerCopy fromDataSource:sourceCopy];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = HKFeatureAvailabilityRequirementCapabilityIsSupportedOnActiveWatch;
  v5 = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)&v7 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_supportedOnLocalDevice == equalCopy[16];

  return v5;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = HKFeatureAvailabilityRequirementCapabilityIsSupportedOnActiveWatch;
  return [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)&v3 hash]^ self->_supportedOnLocalDevice;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKFeatureAvailabilityRequirementCapabilityIsSupportedOnActiveWatch;
  coderCopy = coder;
  [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_supportedOnLocalDevice forKey:{@"supportedOnLocalDevice", v5.receiver, v5.super_class}];
}

- (HKFeatureAvailabilityRequirementCapabilityIsSupportedOnActiveWatch)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = HKFeatureAvailabilityRequirementCapabilityIsSupportedOnActiveWatch;
  v5 = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_supportedOnLocalDevice = [coderCopy decodeBoolForKey:@"supportedOnLocalDevice"];
  }

  return v5;
}

@end