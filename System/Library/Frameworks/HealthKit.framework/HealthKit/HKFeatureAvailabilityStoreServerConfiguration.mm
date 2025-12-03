@interface HKFeatureAvailabilityStoreServerConfiguration
- (HKFeatureAvailabilityStoreServerConfiguration)initWithCoder:(id)coder;
- (HKFeatureAvailabilityStoreServerConfiguration)initWithFeatureIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKFeatureAvailabilityStoreServerConfiguration

- (HKFeatureAvailabilityStoreServerConfiguration)initWithFeatureIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = HKFeatureAvailabilityStoreServerConfiguration;
  v5 = [(HKFeatureAvailabilityStoreServerConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    featureIdentifier = v5->_featureIdentifier;
    v5->_featureIdentifier = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_storeStrong(v4 + 1, self->_featureIdentifier);
  return v4;
}

- (HKFeatureAvailabilityStoreServerConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HKFeatureAvailabilityStoreServerConfiguration;
  v5 = [(HKTaskConfiguration *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FeatureIdentifier"];
    featureIdentifier = v5->_featureIdentifier;
    v5->_featureIdentifier = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKFeatureAvailabilityStoreServerConfiguration;
  coderCopy = coder;
  [(HKTaskConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_featureIdentifier forKey:{@"FeatureIdentifier", v5.receiver, v5.super_class}];
}

@end