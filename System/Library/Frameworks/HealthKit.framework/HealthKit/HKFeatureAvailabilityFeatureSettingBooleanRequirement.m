@interface HKFeatureAvailabilityFeatureSettingBooleanRequirement
- (BOOL)isEqual:(id)a3;
- (HKFeatureAvailabilityFeatureSettingBooleanRequirement)initWithCoder:(id)a3;
- (HKFeatureAvailabilityFeatureSettingBooleanRequirement)initWithFeatureIdentifier:(id)a3 settingsKey:(id)a4 settingsValue:(BOOL)a5 isSatisfiedWhenSettingIsAbsent:(BOOL)a6;
- (id)isSatisfiedWithOnboardingRecord:(id)a3 dataSource:(id)a4 error:(id *)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKFeatureAvailabilityFeatureSettingBooleanRequirement

- (HKFeatureAvailabilityFeatureSettingBooleanRequirement)initWithFeatureIdentifier:(id)a3 settingsKey:(id)a4 settingsValue:(BOOL)a5 isSatisfiedWhenSettingIsAbsent:(BOOL)a6
{
  v10 = a4;
  v15.receiver = self;
  v15.super_class = HKFeatureAvailabilityFeatureSettingBooleanRequirement;
  v11 = [(HKFeatureAvailabilityOnboardingRecordRequirement *)&v15 initWithFeatureIdentifier:a3];
  if (v11)
  {
    v12 = [v10 copy];
    settingsKey = v11->_settingsKey;
    v11->_settingsKey = v12;

    v11->_settingsValue = a5;
    v11->_isSatisfiedWhenSettingIsAbsent = a6;
  }

  return v11;
}

- (id)isSatisfiedWithOnboardingRecord:(id)a3 dataSource:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = [v6 featureSettings];

  if (v7)
  {
    v8 = [v6 featureSettings];
    v9 = [v8 numberForKey:self->_settingsKey];

    if (v9)
    {
      [MEMORY[0x1E696AD98] numberWithInt:{self->_settingsValue == objc_msgSend(v9, "BOOLValue")}];
    }

    else
    {
      [MEMORY[0x1E696AD98] numberWithBool:self->_isSatisfiedWhenSettingIsAbsent];
    }
    v10 = ;
  }

  else
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSatisfiedWhenSettingIsAbsent];
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HKFeatureAvailabilityFeatureSettingBooleanRequirement;
  if ([(HKFeatureAvailabilityOnboardingRecordRequirement *)&v8 isEqual:v4])
  {
    v5 = v4;
    v6 = [(NSString *)self->_settingsKey isEqualToString:v5[3]]&& self->_settingsValue == *(v5 + 16) && self->_isSatisfiedWhenSettingIsAbsent == *(v5 + 17);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = HKFeatureAvailabilityFeatureSettingBooleanRequirement;
  v3 = [(HKFeatureAvailabilityOnboardingRecordRequirement *)&v5 hash];
  return [(NSString *)self->_settingsKey hash]^ v3 ^ self->_settingsValue ^ self->_isSatisfiedWhenSettingIsAbsent;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = HKFeatureAvailabilityFeatureSettingBooleanRequirement;
  v4 = a3;
  [(HKFeatureAvailabilityOnboardingRecordRequirement *)&v6 encodeWithCoder:v4];
  v5 = [(HKFeatureAvailabilityFeatureSettingBooleanRequirement *)self settingsKey:v6.receiver];
  [v4 encodeObject:v5 forKey:@"settingsKey"];

  [v4 encodeBool:-[HKFeatureAvailabilityFeatureSettingBooleanRequirement settingsValue](self forKey:{"settingsValue"), @"settingsValueKey"}];
  [v4 encodeBool:-[HKFeatureAvailabilityFeatureSettingBooleanRequirement isSatisfiedWhenSettingIsAbsent](self forKey:{"isSatisfiedWhenSettingIsAbsent"), @"isSatisfiedWhenSettingIsAbsent"}];
}

- (HKFeatureAvailabilityFeatureSettingBooleanRequirement)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKFeatureAvailabilityFeatureSettingBooleanRequirement;
  v5 = [(HKFeatureAvailabilityOnboardingRecordRequirement *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"settingsKey"];
    settingsKey = v5->_settingsKey;
    v5->_settingsKey = v6;

    v5->_settingsValue = [v4 decodeBoolForKey:@"settingsValueKey"];
    v5->_isSatisfiedWhenSettingIsAbsent = [v4 decodeBoolForKey:@"isSatisfiedWhenSettingIsAbsent"];
  }

  return v5;
}

@end