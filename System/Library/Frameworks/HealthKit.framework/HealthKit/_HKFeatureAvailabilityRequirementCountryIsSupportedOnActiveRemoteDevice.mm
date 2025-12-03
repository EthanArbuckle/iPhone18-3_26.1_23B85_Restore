@interface _HKFeatureAvailabilityRequirementCountryIsSupportedOnActiveRemoteDevice
- (BOOL)isEqual:(id)equal;
- (_HKFeatureAvailabilityRequirementCountryIsSupportedOnActiveRemoteDevice)initWithCoder:(id)coder;
- (_HKFeatureAvailabilityRequirementCountryIsSupportedOnActiveRemoteDevice)initWithFeatureIdentifier:(id)identifier isSupportedIfCountryListMissing:(BOOL)missing;
- (id)isSatisfiedWithOnboardingEligibility:(id)eligibility error:(id *)error;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HKFeatureAvailabilityRequirementCountryIsSupportedOnActiveRemoteDevice

- (_HKFeatureAvailabilityRequirementCountryIsSupportedOnActiveRemoteDevice)initWithFeatureIdentifier:(id)identifier isSupportedIfCountryListMissing:(BOOL)missing
{
  v6.receiver = self;
  v6.super_class = _HKFeatureAvailabilityRequirementCountryIsSupportedOnActiveRemoteDevice;
  result = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)&v6 initWithFeatureIdentifier:identifier];
  if (result)
  {
    result->_isSupportedIfCountryListMissing = missing;
  }

  return result;
}

- (id)isSatisfiedWithOnboardingEligibility:(id)eligibility error:(id *)error
{
  eligibilityCopy = eligibility;
  ineligibilityReasons = [eligibilityCopy ineligibilityReasons];
  ineligibilityReasons2 = [eligibilityCopy ineligibilityReasons];
  ineligibilityReasons3 = [eligibilityCopy ineligibilityReasons];

  if ((ineligibilityReasons & 2) != 0)
  {
    v10 = MEMORY[0x1E695E110];
  }

  else
  {
    isSupportedIfCountryListMissing = (ineligibilityReasons3 & 0x20) == 0;
    if ((ineligibilityReasons2 & 0x10) != 0)
    {
      isSupportedIfCountryListMissing = self->_isSupportedIfCountryListMissing;
    }

    v10 = [MEMORY[0x1E696AD98] numberWithBool:isSupportedIfCountryListMissing];
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = _HKFeatureAvailabilityRequirementCountryIsSupportedOnActiveRemoteDevice;
  v5 = -[HKFeatureAvailabilityOnboardingEligibilityRequirement isEqual:](&v7, sel_isEqual_, equalCopy) && [equalCopy isMemberOfClass:objc_opt_class()] && self->_isSupportedIfCountryListMissing == equalCopy[16];

  return v5;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = _HKFeatureAvailabilityRequirementCountryIsSupportedOnActiveRemoteDevice;
  return [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)&v3 hash]^ self->_isSupportedIfCountryListMissing;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _HKFeatureAvailabilityRequirementCountryIsSupportedOnActiveRemoteDevice;
  coderCopy = coder;
  [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_isSupportedIfCountryListMissing forKey:{@"isSupportedIfCountryListMissing", v5.receiver, v5.super_class}];
}

- (_HKFeatureAvailabilityRequirementCountryIsSupportedOnActiveRemoteDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = _HKFeatureAvailabilityRequirementCountryIsSupportedOnActiveRemoteDevice;
  v5 = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_isSupportedIfCountryListMissing = [coderCopy decodeBoolForKey:@"isSupportedIfCountryListMissing"];
  }

  return v5;
}

@end