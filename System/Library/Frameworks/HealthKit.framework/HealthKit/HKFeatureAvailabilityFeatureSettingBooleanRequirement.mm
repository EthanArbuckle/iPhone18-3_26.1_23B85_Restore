@interface HKFeatureAvailabilityFeatureSettingBooleanRequirement
- (BOOL)isEqual:(id)equal;
- (HKFeatureAvailabilityFeatureSettingBooleanRequirement)initWithCoder:(id)coder;
- (HKFeatureAvailabilityFeatureSettingBooleanRequirement)initWithFeatureIdentifier:(id)identifier settingsKey:(id)key settingsValue:(BOOL)value isSatisfiedWhenSettingIsAbsent:(BOOL)absent;
- (id)isSatisfiedWithOnboardingRecord:(id)record dataSource:(id)source error:(id *)error;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKFeatureAvailabilityFeatureSettingBooleanRequirement

- (HKFeatureAvailabilityFeatureSettingBooleanRequirement)initWithFeatureIdentifier:(id)identifier settingsKey:(id)key settingsValue:(BOOL)value isSatisfiedWhenSettingIsAbsent:(BOOL)absent
{
  keyCopy = key;
  v15.receiver = self;
  v15.super_class = HKFeatureAvailabilityFeatureSettingBooleanRequirement;
  v11 = [(HKFeatureAvailabilityOnboardingRecordRequirement *)&v15 initWithFeatureIdentifier:identifier];
  if (v11)
  {
    v12 = [keyCopy copy];
    settingsKey = v11->_settingsKey;
    v11->_settingsKey = v12;

    v11->_settingsValue = value;
    v11->_isSatisfiedWhenSettingIsAbsent = absent;
  }

  return v11;
}

- (id)isSatisfiedWithOnboardingRecord:(id)record dataSource:(id)source error:(id *)error
{
  recordCopy = record;
  featureSettings = [recordCopy featureSettings];

  if (featureSettings)
  {
    featureSettings2 = [recordCopy featureSettings];
    v9 = [featureSettings2 numberForKey:self->_settingsKey];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = HKFeatureAvailabilityFeatureSettingBooleanRequirement;
  if ([(HKFeatureAvailabilityOnboardingRecordRequirement *)&v8 isEqual:equalCopy])
  {
    v5 = equalCopy;
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

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = HKFeatureAvailabilityFeatureSettingBooleanRequirement;
  coderCopy = coder;
  [(HKFeatureAvailabilityOnboardingRecordRequirement *)&v6 encodeWithCoder:coderCopy];
  v5 = [(HKFeatureAvailabilityFeatureSettingBooleanRequirement *)self settingsKey:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"settingsKey"];

  [coderCopy encodeBool:-[HKFeatureAvailabilityFeatureSettingBooleanRequirement settingsValue](self forKey:{"settingsValue"), @"settingsValueKey"}];
  [coderCopy encodeBool:-[HKFeatureAvailabilityFeatureSettingBooleanRequirement isSatisfiedWhenSettingIsAbsent](self forKey:{"isSatisfiedWhenSettingIsAbsent"), @"isSatisfiedWhenSettingIsAbsent"}];
}

- (HKFeatureAvailabilityFeatureSettingBooleanRequirement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HKFeatureAvailabilityFeatureSettingBooleanRequirement;
  v5 = [(HKFeatureAvailabilityOnboardingRecordRequirement *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"settingsKey"];
    settingsKey = v5->_settingsKey;
    v5->_settingsKey = v6;

    v5->_settingsValue = [coderCopy decodeBoolForKey:@"settingsValueKey"];
    v5->_isSatisfiedWhenSettingIsAbsent = [coderCopy decodeBoolForKey:@"isSatisfiedWhenSettingIsAbsent"];
  }

  return v5;
}

@end