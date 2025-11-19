@interface HKFeatureAvailabilityRequirementFeatureSetting
- (BOOL)isEqual:(id)a3;
- (HKFeatureAvailabilityRequirementFeatureSetting)initWithCoder:(id)a3;
- (HKFeatureAvailabilityRequirementFeatureSetting)initWithFeatureIdentifier:(id)a3 settingsOnKey:(id)a4 isOnWhenSettingIsAbsent:(BOOL)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKFeatureAvailabilityRequirementFeatureSetting

- (HKFeatureAvailabilityRequirementFeatureSetting)initWithFeatureIdentifier:(id)a3 settingsOnKey:(id)a4 isOnWhenSettingIsAbsent:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = HKFeatureAvailabilityRequirementFeatureSetting;
  v11 = [(HKFeatureAvailabilityRequirementFeatureSetting *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_featureIdentifier, a3);
    objc_storeStrong(&v12->_settingsOnKey, a4);
    v12->_isOnWhenSettingIsAbsent = a5;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(NSString *)self->_featureIdentifier isEqualToString:v5[2]]&& [(NSString *)self->_settingsOnKey isEqualToString:v5[3]]&& self->_isOnWhenSettingIsAbsent == *(v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  featureIdentifier = self->_featureIdentifier;
  v5 = a3;
  [v5 encodeObject:featureIdentifier forKey:@"featureIdentifierKey"];
  [v5 encodeObject:self->_settingsOnKey forKey:@"settingsOnKey"];
  [v5 encodeBool:self->_isOnWhenSettingIsAbsent forKey:@"isOnWhenSettingIsAbsent"];
}

- (HKFeatureAvailabilityRequirementFeatureSetting)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"featureIdentifierKey"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"settingsOnKey"];
  v7 = [v4 decodeBoolForKey:@"isOnWhenSettingIsAbsent"];

  v8 = [(HKFeatureAvailabilityRequirementFeatureSetting *)self initWithFeatureIdentifier:v5 settingsOnKey:v6 isOnWhenSettingIsAbsent:v7];
  return v8;
}

@end