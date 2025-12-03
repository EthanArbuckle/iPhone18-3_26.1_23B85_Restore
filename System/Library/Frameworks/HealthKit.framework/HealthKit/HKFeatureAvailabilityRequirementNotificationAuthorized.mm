@interface HKFeatureAvailabilityRequirementNotificationAuthorized
- (BOOL)isEqual:(id)equal;
- (HKFeatureAvailabilityRequirementNotificationAuthorized)initWithBundleIdentifier:(id)identifier;
- (HKFeatureAvailabilityRequirementNotificationAuthorized)initWithCoder:(id)coder;
- (id)isSatisfiedWithDataSource:(id)source error:(id *)error;
- (id)requiredEntitlements;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKFeatureAvailabilityRequirementNotificationAuthorized

- (HKFeatureAvailabilityRequirementNotificationAuthorized)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = HKFeatureAvailabilityRequirementNotificationAuthorized;
  v5 = [(HKFeatureAvailabilityRequirementNotificationAuthorized *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
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

- (id)isSatisfiedWithDataSource:(id)source error:(id *)error
{
  v5 = MEMORY[0x1E696AD98];
  userNotificationsDataSource = [source userNotificationsDataSource];
  v7 = [v5 numberWithBool:{objc_msgSend(userNotificationsDataSource, "areNotificationsAuthorizedWithBundleIdentifier:", self->_bundleIdentifier)}];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSString *)self->_bundleIdentifier isEqualToString:equalCopy[1]];

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

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKFeatureAvailabilityRequirementNotificationAuthorized;
  coderCopy = coder;
  [(HKFeatureAvailabilityBaseRequirement *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:{@"bundleIdentifierKey", v5.receiver, v5.super_class}];
}

- (HKFeatureAvailabilityRequirementNotificationAuthorized)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifierKey"];

  v6 = [(HKFeatureAvailabilityRequirementNotificationAuthorized *)self initWithBundleIdentifier:v5];
  return v6;
}

@end