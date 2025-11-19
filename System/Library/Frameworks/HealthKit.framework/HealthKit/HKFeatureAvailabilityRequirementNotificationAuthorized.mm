@interface HKFeatureAvailabilityRequirementNotificationAuthorized
- (BOOL)isEqual:(id)a3;
- (HKFeatureAvailabilityRequirementNotificationAuthorized)initWithBundleIdentifier:(id)a3;
- (HKFeatureAvailabilityRequirementNotificationAuthorized)initWithCoder:(id)a3;
- (id)isSatisfiedWithDataSource:(id)a3 error:(id *)a4;
- (id)requiredEntitlements;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKFeatureAvailabilityRequirementNotificationAuthorized

- (HKFeatureAvailabilityRequirementNotificationAuthorized)initWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKFeatureAvailabilityRequirementNotificationAuthorized;
  v5 = [(HKFeatureAvailabilityRequirementNotificationAuthorized *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;
  }

  return v5;
}

- (id)requiredEntitlements
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [HKFeatureAvailabilityRequirementEntitlement userNotificationsBundleIdentifiersEntitlementForBundleIdentifier:self->_bundleIdentifier];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)isSatisfiedWithDataSource:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x1E696AD98];
  v6 = [a3 userNotificationsDataSource];
  v7 = [v5 numberWithBool:{objc_msgSend(v6, "areNotificationsAuthorizedWithBundleIdentifier:", self->_bundleIdentifier)}];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSString *)self->_bundleIdentifier isEqualToString:v4[1]];

  return v5;
}

- (unint64_t)hash
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v4 hash];
  v6 = [(NSString *)self->_bundleIdentifier hash];

  return v6 ^ v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKFeatureAvailabilityRequirementNotificationAuthorized;
  v4 = a3;
  [(HKFeatureAvailabilityBaseRequirement *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_bundleIdentifier forKey:{@"bundleIdentifierKey", v5.receiver, v5.super_class}];
}

- (HKFeatureAvailabilityRequirementNotificationAuthorized)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifierKey"];

  v6 = [(HKFeatureAvailabilityRequirementNotificationAuthorized *)self initWithBundleIdentifier:v5];
  return v6;
}

@end