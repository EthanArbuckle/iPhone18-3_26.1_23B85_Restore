@interface HKSharingRecipientAuthorizationStoreTaskConfiguration
- (HKSharingRecipientAuthorizationStoreTaskConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKSharingRecipientAuthorizationStoreTaskConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(HKSharingRecipientAuthorizationStoreTaskConfiguration);
  [(HKSharingRecipientAuthorizationStoreTaskConfiguration *)v4 setRecipientIdentifier:self->_recipientIdentifier];
  return v4;
}

- (HKSharingRecipientAuthorizationStoreTaskConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKSharingRecipientAuthorizationStoreTaskConfiguration;
  v5 = [(HKTaskConfiguration *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RecipientIdentifier"];
    recipientIdentifier = v5->_recipientIdentifier;
    v5->_recipientIdentifier = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKSharingRecipientAuthorizationStoreTaskConfiguration;
  v4 = a3;
  [(HKTaskConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_recipientIdentifier forKey:{@"RecipientIdentifier", v5.receiver, v5.super_class}];
}

@end