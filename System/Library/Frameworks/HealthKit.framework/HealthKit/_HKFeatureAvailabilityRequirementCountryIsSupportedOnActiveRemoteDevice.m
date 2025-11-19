@interface _HKFeatureAvailabilityRequirementCountryIsSupportedOnActiveRemoteDevice
- (BOOL)isEqual:(id)a3;
- (_HKFeatureAvailabilityRequirementCountryIsSupportedOnActiveRemoteDevice)initWithCoder:(id)a3;
- (_HKFeatureAvailabilityRequirementCountryIsSupportedOnActiveRemoteDevice)initWithFeatureIdentifier:(id)a3 isSupportedIfCountryListMissing:(BOOL)a4;
- (id)isSatisfiedWithOnboardingEligibility:(id)a3 error:(id *)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HKFeatureAvailabilityRequirementCountryIsSupportedOnActiveRemoteDevice

- (_HKFeatureAvailabilityRequirementCountryIsSupportedOnActiveRemoteDevice)initWithFeatureIdentifier:(id)a3 isSupportedIfCountryListMissing:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = _HKFeatureAvailabilityRequirementCountryIsSupportedOnActiveRemoteDevice;
  result = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)&v6 initWithFeatureIdentifier:a3];
  if (result)
  {
    result->_isSupportedIfCountryListMissing = a4;
  }

  return result;
}

- (id)isSatisfiedWithOnboardingEligibility:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 ineligibilityReasons];
  v7 = [v5 ineligibilityReasons];
  v8 = [v5 ineligibilityReasons];

  if ((v6 & 2) != 0)
  {
    v10 = MEMORY[0x1E695E110];
  }

  else
  {
    isSupportedIfCountryListMissing = (v8 & 0x20) == 0;
    if ((v7 & 0x10) != 0)
    {
      isSupportedIfCountryListMissing = self->_isSupportedIfCountryListMissing;
    }

    v10 = [MEMORY[0x1E696AD98] numberWithBool:isSupportedIfCountryListMissing];
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _HKFeatureAvailabilityRequirementCountryIsSupportedOnActiveRemoteDevice;
  v5 = -[HKFeatureAvailabilityOnboardingEligibilityRequirement isEqual:](&v7, sel_isEqual_, v4) && [v4 isMemberOfClass:objc_opt_class()] && self->_isSupportedIfCountryListMissing == v4[16];

  return v5;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = _HKFeatureAvailabilityRequirementCountryIsSupportedOnActiveRemoteDevice;
  return [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)&v3 hash]^ self->_isSupportedIfCountryListMissing;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _HKFeatureAvailabilityRequirementCountryIsSupportedOnActiveRemoteDevice;
  v4 = a3;
  [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_isSupportedIfCountryListMissing forKey:{@"isSupportedIfCountryListMissing", v5.receiver, v5.super_class}];
}

- (_HKFeatureAvailabilityRequirementCountryIsSupportedOnActiveRemoteDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _HKFeatureAvailabilityRequirementCountryIsSupportedOnActiveRemoteDevice;
  v5 = [(HKFeatureAvailabilityOnboardingEligibilityRequirement *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_isSupportedIfCountryListMissing = [v4 decodeBoolForKey:@"isSupportedIfCountryListMissing"];
  }

  return v5;
}

@end