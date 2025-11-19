@interface CNDataMapperConfiguration
- (CNDataMapperConfiguration)initWithContactStoreConfiguration:(id)a3;
- (id)description;
@end

@implementation CNDataMapperConfiguration

- (CNDataMapperConfiguration)initWithContactStoreConfiguration:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CNDataMapperConfiguration;
  v5 = [(CNDataMapperConfiguration *)&v11 init];
  if (v5)
  {
    v6 = [v4 environment];
    [(CNDataMapperConfiguration *)v5 setEnvironment:v6];

    v7 = [v4 managedConfiguration];
    [(CNDataMapperConfiguration *)v5 setManagedConfiguration:v7];

    v8 = [v4 assumedIdentity];
    [(CNDataMapperConfiguration *)v5 setAssumedIdentity:v8];

    -[CNDataMapperConfiguration setIsContactProvider:](v5, "setIsContactProvider:", [v4 isContactProvider]);
    v9 = v5;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendObject:self->_environment withName:@"environment"];
  v5 = [v3 appendObject:self->_managedConfiguration withName:@"managedConfiguration"];
  v6 = [v3 appendObject:self->_assumedIdentity withName:@"assumedIdentity"];
  v7 = [v3 appendName:@"identifierAuditMode" unsignedInteger:self->_identifierAuditMode];
  v8 = [v3 appendObject:self->_authorizationContext withName:@"authorizationContext"];
  v9 = [v3 appendName:@"isContactProvider" BOOLValue:self->_isContactProvider];
  v10 = [v3 appendObject:self->_contactProviderManager withName:@"contactProviderManager"];
  v11 = [v3 build];

  return v11;
}

@end