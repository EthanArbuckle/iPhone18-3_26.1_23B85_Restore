@interface HKSharingAuthorizationRecipientStoreTaskConfiguration
- (HKSharingAuthorizationRecipientStoreTaskConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKSharingAuthorizationRecipientStoreTaskConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(HKSharingAuthorizationRecipientStoreTaskConfiguration);
  v5 = [(NSArray *)self->_sharingAuthorizations copy];
  [(HKSharingAuthorizationRecipientStoreTaskConfiguration *)v4 setSharingAuthorizations:v5];

  return v4;
}

- (HKSharingAuthorizationRecipientStoreTaskConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HKSharingAuthorizationRecipientStoreTaskConfiguration;
  v5 = [(HKTaskConfiguration *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"SharingAuthorizations"];
    sharingAuthorizations = v5->_sharingAuthorizations;
    v5->_sharingAuthorizations = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKSharingAuthorizationRecipientStoreTaskConfiguration;
  v4 = a3;
  [(HKTaskConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_sharingAuthorizations forKey:{@"SharingAuthorizations", v5.receiver, v5.super_class}];
}

@end