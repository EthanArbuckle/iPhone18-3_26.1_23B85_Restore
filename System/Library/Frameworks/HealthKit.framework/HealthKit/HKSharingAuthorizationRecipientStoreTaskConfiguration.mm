@interface HKSharingAuthorizationRecipientStoreTaskConfiguration
- (HKSharingAuthorizationRecipientStoreTaskConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKSharingAuthorizationRecipientStoreTaskConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(HKSharingAuthorizationRecipientStoreTaskConfiguration);
  v5 = [(NSArray *)self->_sharingAuthorizations copy];
  [(HKSharingAuthorizationRecipientStoreTaskConfiguration *)v4 setSharingAuthorizations:v5];

  return v4;
}

- (HKSharingAuthorizationRecipientStoreTaskConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = HKSharingAuthorizationRecipientStoreTaskConfiguration;
  v5 = [(HKTaskConfiguration *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"SharingAuthorizations"];
    sharingAuthorizations = v5->_sharingAuthorizations;
    v5->_sharingAuthorizations = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKSharingAuthorizationRecipientStoreTaskConfiguration;
  coderCopy = coder;
  [(HKTaskConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_sharingAuthorizations forKey:{@"SharingAuthorizations", v5.receiver, v5.super_class}];
}

@end