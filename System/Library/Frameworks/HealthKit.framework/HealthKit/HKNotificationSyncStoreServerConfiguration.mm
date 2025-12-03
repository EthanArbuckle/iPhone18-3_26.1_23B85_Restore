@interface HKNotificationSyncStoreServerConfiguration
- (HKNotificationSyncStoreServerConfiguration)initWithClientIdentifier:(id)identifier;
- (HKNotificationSyncStoreServerConfiguration)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKNotificationSyncStoreServerConfiguration

- (HKNotificationSyncStoreServerConfiguration)initWithClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = HKNotificationSyncStoreServerConfiguration;
  v5 = [(HKNotificationSyncStoreServerConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v6;
  }

  return v5;
}

- (HKNotificationSyncStoreServerConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = HKNotificationSyncStoreServerConfiguration;
  v6 = [(HKTaskConfiguration *)&v10 initWithCoder:coderCopy];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientIdentifier"];
    clientIdentifier = v6->_clientIdentifier;
    v6->_clientIdentifier = v7;

    if (!v6->_clientIdentifier)
    {
      [(HKNotificationSyncStoreServerConfiguration *)a2 initWithCoder:v6];
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKNotificationSyncStoreServerConfiguration;
  coderCopy = coder;
  [(HKTaskConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_clientIdentifier forKey:{@"clientIdentifier", v5.receiver, v5.super_class}];
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKNotificationSyncStoreInterfaces.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"_clientIdentifier"}];
}

@end