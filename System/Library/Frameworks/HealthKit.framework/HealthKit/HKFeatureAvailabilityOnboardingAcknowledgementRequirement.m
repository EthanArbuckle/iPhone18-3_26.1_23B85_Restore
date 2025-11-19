@interface HKFeatureAvailabilityOnboardingAcknowledgementRequirement
- (BOOL)isEqual:(id)a3;
- (HKFeatureAvailabilityOnboardingAcknowledgementRequirement)initWithCoder:(id)a3;
- (HKFeatureAvailabilityOnboardingAcknowledgementRequirement)initWithFeatureIdentifier:(id)a3 onboardingAcknowledgedKey:(id)a4 isAcknowledged:(BOOL)a5;
- (id)isSatisfiedWithOnboardingRecord:(id)a3 dataSource:(id)a4 error:(id *)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKFeatureAvailabilityOnboardingAcknowledgementRequirement

- (HKFeatureAvailabilityOnboardingAcknowledgementRequirement)initWithFeatureIdentifier:(id)a3 onboardingAcknowledgedKey:(id)a4 isAcknowledged:(BOOL)a5
{
  v8 = a4;
  v13.receiver = self;
  v13.super_class = HKFeatureAvailabilityOnboardingAcknowledgementRequirement;
  v9 = [(HKFeatureAvailabilityOnboardingRecordRequirement *)&v13 initWithFeatureIdentifier:a3];
  if (v9)
  {
    v10 = [v8 copy];
    onboardingAcknowledgedKey = v9->_onboardingAcknowledgedKey;
    v9->_onboardingAcknowledgedKey = v10;

    v9->_isAcknowledged = a5;
  }

  return v9;
}

- (id)isSatisfiedWithOnboardingRecord:(id)a3 dataSource:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = [v6 featureSettings];

  if (v7)
  {
    v8 = [v6 featureSettings];
    v9 = [v8 numberForKey:self->_onboardingAcknowledgedKey];

    if (v9 && [v9 BOOLValue])
    {
      v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_isAcknowledged];
    }

    else
    {
      v11 = [v6 featureSettings];
      v12 = [v11 numberForKey:@"OnboardingAcknowledgedDate"];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HKFeatureAvailabilityOnboardingAcknowledgementRequirement;
  if ([(HKFeatureAvailabilityOnboardingRecordRequirement *)&v10 isEqual:v4])
  {
    v5 = v4;
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

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKFeatureAvailabilityOnboardingAcknowledgementRequirement;
  v4 = a3;
  [(HKFeatureAvailabilityOnboardingRecordRequirement *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_onboardingAcknowledgedKey forKey:{@"onboardingAcknowledgedKey", v5.receiver, v5.super_class}];
  [v4 encodeBool:self->_isAcknowledged forKey:@"isAcknowledged"];
}

- (HKFeatureAvailabilityOnboardingAcknowledgementRequirement)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKFeatureAvailabilityOnboardingAcknowledgementRequirement;
  v5 = [(HKFeatureAvailabilityOnboardingRecordRequirement *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"onboardingAcknowledgedKey"];
    onboardingAcknowledgedKey = v5->_onboardingAcknowledgedKey;
    v5->_onboardingAcknowledgedKey = v6;

    v5->_isAcknowledged = [v4 decodeBoolForKey:@"isAcknowledged"];
  }

  return v5;
}

@end