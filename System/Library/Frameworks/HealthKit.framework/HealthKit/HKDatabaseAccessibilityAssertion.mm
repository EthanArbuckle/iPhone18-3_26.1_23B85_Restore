@interface HKDatabaseAccessibilityAssertion
- (HKDatabaseAccessibilityAssertion)initWithCoder:(id)a3;
- (HKDatabaseAccessibilityAssertion)initWithOwnerIdentifier:(id)a3 uuidString:(id)a4;
- (HKHealthStore)healthStore;
- (void)encodeWithCoder:(id)a3;
- (void)invalidate;
@end

@implementation HKDatabaseAccessibilityAssertion

- (HKDatabaseAccessibilityAssertion)initWithOwnerIdentifier:(id)a3 uuidString:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HKDatabaseAccessibilityAssertion;
  v9 = [(HKDatabaseAccessibilityAssertion *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_ownerIdentifier, a3);
    v11 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v8];
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
  v4 = a1;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Attempted to invalidate an invalid assertion %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  ownerIdentifier = self->_ownerIdentifier;
  v7 = v4;
  if (ownerIdentifier)
  {
    [v4 encodeObject:ownerIdentifier forKey:@"OwnerIdentifier"];
    v4 = v7;
  }

  UUID = self->_UUID;
  if (UUID)
  {
    [v7 encodeObject:UUID forKey:@"UniqueIdentifier"];
    v4 = v7;
  }
}

- (HKDatabaseAccessibilityAssertion)initWithCoder:(id)a3
{
  v4 = a3;
  if (![v4 containsValueForKey:@"OwnerIdentifier"])
  {
    _HKInitializeLogging();
    v5 = HKLogAssertions();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [HKDatabaseAccessibilityAssertion initWithCoder:v5];
    }

    goto LABEL_9;
  }

  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"OwnerIdentifier"];
  if (([v4 containsValueForKey:@"UniqueIdentifier"] & 1) == 0)
  {
    _HKInitializeLogging();
    v10 = HKLogAssertions();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [HKDatabaseAccessibilityAssertion initWithCoder:v10];
    }

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UniqueIdentifier"];
  UUID = self->_UUID;
  self->_UUID = v6;

  v8 = [(NSUUID *)self->_UUID UUIDString];
  self = [(HKDatabaseAccessibilityAssertion *)self initWithOwnerIdentifier:v5 uuidString:v8];

  v9 = self;
LABEL_10:

  return v9;
}

- (HKHealthStore)healthStore
{
  WeakRetained = objc_loadWeakRetained(&self->_healthStore);

  return WeakRetained;
}

@end