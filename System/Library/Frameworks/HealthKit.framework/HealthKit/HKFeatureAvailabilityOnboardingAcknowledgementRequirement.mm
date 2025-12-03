@interface HKFeatureAvailabilityOnboardingAcknowledgementRequirement
- (BOOL)isEqual:(id)equal;
- (HKFeatureAvailabilityOnboardingAcknowledgementRequirement)initWithCoder:(id)coder;
- (HKFeatureAvailabilityOnboardingAcknowledgementRequirement)initWithFeatureIdentifier:(id)identifier onboardingAcknowledgedKey:(id)key isAcknowledged:(BOOL)acknowledged;
- (id)isSatisfiedWithOnboardingRecord:(id)record dataSource:(id)source error:(id *)error;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKFeatureAvailabilityOnboardingAcknowledgementRequirement

- (HKFeatureAvailabilityOnboardingAcknowledgementRequirement)initWithFeatureIdentifier:(id)identifier onboardingAcknowledgedKey:(id)key isAcknowledged:(BOOL)acknowledged
{
  keyCopy = key;
  v13.receiver = self;
  v13.super_class = HKFeatureAvailabilityOnboardingAcknowledgementRequirement;
  v9 = [(HKFeatureAvailabilityOnboardingRecordRequirement *)&v13 initWithFeatureIdentifier:identifier];
  if (v9)
  {
    v10 = [keyCopy copy];
    onboardingAcknowledgedKey = v9->_onboardingAcknowledgedKey;
    v9->_onboardingAcknowledgedKey = v10;

    v9->_isAcknowledged = acknowledged;
  }

  return v9;
}

- (id)isSatisfiedWithOnboardingRecord:(id)record dataSource:(id)source error:(id *)error
{
  recordCopy = record;
  featureSettings = [recordCopy featureSettings];

  if (featureSettings)
  {
    featureSettings2 = [recordCopy featureSettings];
    v9 = [featureSettings2 numberForKey:self->_onboardingAcknowledgedKey];

    if (v9 && [v9 BOOLValue])
    {
      v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_isAcknowledged];
    }

    else
    {
      featureSettings3 = [recordCopy featureSettings];
      v12 = [featureSettings3 numberForKey:@"OnboardingAcknowledgedDate"];

      isAcknowledged = self->_isAcknowledged;
      if (v12)
      {
        [MEMORY[0x1E696AD98] numberWithBool:isAcknowledged];
      }

      else
      {
        [MEMORY[0x1E696AD98] numberWithInt:isAcknowledged ^ 1];
      }
      v10 = ;
    }
  }

  else
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:!self->_isAcknowledged];
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = HKFeatureAvailabilityOnboardingAcknowledgementRequirement;
  if ([(HKFeatureAvailabilityOnboardingRecordRequirement *)&v10 isEqual:equalCopy])
  {
    v5 = equalCopy;
    onboardingAcknowledgedKey = self->_onboardingAcknowledgedKey;
    v7 = v5[3];
    v8 = (onboardingAcknowledgedKey == v7 || v7 && [(NSString *)onboardingAcknowledgedKey isEqual:?]) && self->_isAcknowledged == *(v5 + 16);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = HKFeatureAvailabilityOnboardingAcknowledgementRequirement;
  v3 = [(HKFeatureAvailabilityOnboardingRecordRequirement *)&v5 hash];
  return [(NSString *)self->_onboardingAcknowledgedKey hash]^ v3 ^ self->_isAcknowledged;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKFeatureAvailabilityOnboardingAcknowledgementRequirement;
  coderCopy = coder;
  [(HKFeatureAvailabilityOnboardingRecordRequirement *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_onboardingAcknowledgedKey forKey:{@"onboardingAcknowledgedKey", v5.receiver, v5.super_class}];
  [coderCopy encodeBool:self->_isAcknowledged forKey:@"isAcknowledged"];
}

- (HKFeatureAvailabilityOnboardingAcknowledgementRequirement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HKFeatureAvailabilityOnboardingAcknowledgementRequirement;
  v5 = [(HKFeatureAvailabilityOnboardingRecordRequirement *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"onboardingAcknowledgedKey"];
    onboardingAcknowledgedKey = v5->_onboardingAcknowledgedKey;
    v5->_onboardingAcknowledgedKey = v6;

    v5->_isAcknowledged = [coderCopy decodeBoolForKey:@"isAcknowledged"];
  }

  return v5;
}

@end