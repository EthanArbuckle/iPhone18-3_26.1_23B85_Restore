@interface HKFeatureAvailabilityRequirementFeatureSetting
- (BOOL)isEqual:(id)equal;
- (HKFeatureAvailabilityRequirementFeatureSetting)initWithCoder:(id)coder;
- (HKFeatureAvailabilityRequirementFeatureSetting)initWithFeatureIdentifier:(id)identifier settingsOnKey:(id)key isOnWhenSettingIsAbsent:(BOOL)absent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKFeatureAvailabilityRequirementFeatureSetting

- (HKFeatureAvailabilityRequirementFeatureSetting)initWithFeatureIdentifier:(id)identifier settingsOnKey:(id)key isOnWhenSettingIsAbsent:(BOOL)absent
{
  identifierCopy = identifier;
  keyCopy = key;
  v14.receiver = self;
  v14.super_class = HKFeatureAvailabilityRequirementFeatureSetting;
  v11 = [(HKFeatureAvailabilityRequirementFeatureSetting *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_featureIdentifier, identifier);
    objc_storeStrong(&v12->_settingsOnKey, key);
    v12->_isOnWhenSettingIsAbsent = absent;
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = [(NSString *)self->_featureIdentifier isEqualToString:v5[2]]&& [(NSString *)self->_settingsOnKey isEqualToString:v5[3]]&& self->_isOnWhenSettingIsAbsent == *(v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  featureIdentifier = self->_featureIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:featureIdentifier forKey:@"featureIdentifierKey"];
  [coderCopy encodeObject:self->_settingsOnKey forKey:@"settingsOnKey"];
  [coderCopy encodeBool:self->_isOnWhenSettingIsAbsent forKey:@"isOnWhenSettingIsAbsent"];
}

- (HKFeatureAvailabilityRequirementFeatureSetting)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"featureIdentifierKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"settingsOnKey"];
  v7 = [coderCopy decodeBoolForKey:@"isOnWhenSettingIsAbsent"];

  v8 = [(HKFeatureAvailabilityRequirementFeatureSetting *)self initWithFeatureIdentifier:v5 settingsOnKey:v6 isOnWhenSettingIsAbsent:v7];
  return v8;
}

@end