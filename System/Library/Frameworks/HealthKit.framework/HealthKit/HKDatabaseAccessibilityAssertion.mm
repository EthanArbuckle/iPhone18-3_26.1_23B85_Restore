@interface HKDatabaseAccessibilityAssertion
- (HKDatabaseAccessibilityAssertion)initWithCoder:(id)coder;
- (HKDatabaseAccessibilityAssertion)initWithOwnerIdentifier:(id)identifier uuidString:(id)string;
- (HKHealthStore)healthStore;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
@end

@implementation HKDatabaseAccessibilityAssertion

- (HKDatabaseAccessibilityAssertion)initWithOwnerIdentifier:(id)identifier uuidString:(id)string
{
  identifierCopy = identifier;
  stringCopy = string;
  v14.receiver = self;
  v14.super_class = HKDatabaseAccessibilityAssertion;
  v9 = [(HKDatabaseAccessibilityAssertion *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_ownerIdentifier, identifier);
    v11 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:stringCopy];
    UUID = v10->_UUID;
    v10->_UUID = v11;

    v10->_isValid = 0;
  }

  return v10;
}

- (void)invalidate
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Attempted to invalidate an invalid assertion %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  ownerIdentifier = self->_ownerIdentifier;
  v7 = coderCopy;
  if (ownerIdentifier)
  {
    [coderCopy encodeObject:ownerIdentifier forKey:@"OwnerIdentifier"];
    coderCopy = v7;
  }

  UUID = self->_UUID;
  if (UUID)
  {
    [v7 encodeObject:UUID forKey:@"UniqueIdentifier"];
    coderCopy = v7;
  }
}

- (HKDatabaseAccessibilityAssertion)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (![coderCopy containsValueForKey:@"OwnerIdentifier"])
  {
    _HKInitializeLogging();
    v5 = HKLogAssertions();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [HKDatabaseAccessibilityAssertion initWithCoder:v5];
    }

    goto LABEL_9;
  }

  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"OwnerIdentifier"];
  if (([coderCopy containsValueForKey:@"UniqueIdentifier"] & 1) == 0)
  {
    _HKInitializeLogging();
    v10 = HKLogAssertions();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [HKDatabaseAccessibilityAssertion initWithCoder:v10];
    }

LABEL_9:
    selfCopy = 0;
    goto LABEL_10;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UniqueIdentifier"];
  UUID = self->_UUID;
  self->_UUID = v6;

  uUIDString = [(NSUUID *)self->_UUID UUIDString];
  self = [(HKDatabaseAccessibilityAssertion *)self initWithOwnerIdentifier:v5 uuidString:uUIDString];

  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (HKHealthStore)healthStore
{
  WeakRetained = objc_loadWeakRetained(&self->_healthStore);

  return WeakRetained;
}

@end