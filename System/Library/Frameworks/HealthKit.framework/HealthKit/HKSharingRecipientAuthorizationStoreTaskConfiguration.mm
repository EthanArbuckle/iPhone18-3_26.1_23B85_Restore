@interface HKSharingRecipientAuthorizationStoreTaskConfiguration
- (HKSharingRecipientAuthorizationStoreTaskConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKSharingRecipientAuthorizationStoreTaskConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(HKSharingRecipientAuthorizationStoreTaskConfiguration);
  [(HKSharingRecipientAuthorizationStoreTaskConfiguration *)v4 setRecipientIdentifier:self->_recipientIdentifier];
  return v4;
}

- (HKSharingRecipientAuthorizationStoreTaskConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HKSharingRecipientAuthorizationStoreTaskConfiguration;
  v5 = [(HKTaskConfiguration *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RecipientIdentifier"];
    recipientIdentifier = v5->_recipientIdentifier;
    v5->_recipientIdentifier = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKSharingRecipientAuthorizationStoreTaskConfiguration;
  coderCopy = coder;
  [(HKTaskConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_recipientIdentifier forKey:{@"RecipientIdentifier", v5.receiver, v5.super_class}];
}

@end