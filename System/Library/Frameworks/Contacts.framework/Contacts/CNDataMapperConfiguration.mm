@interface CNDataMapperConfiguration
- (CNDataMapperConfiguration)initWithContactStoreConfiguration:(id)configuration;
- (id)description;
@end

@implementation CNDataMapperConfiguration

- (CNDataMapperConfiguration)initWithContactStoreConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = CNDataMapperConfiguration;
  v5 = [(CNDataMapperConfiguration *)&v11 init];
  if (v5)
  {
    environment = [configurationCopy environment];
    [(CNDataMapperConfiguration *)v5 setEnvironment:environment];

    managedConfiguration = [configurationCopy managedConfiguration];
    [(CNDataMapperConfiguration *)v5 setManagedConfiguration:managedConfiguration];

    assumedIdentity = [configurationCopy assumedIdentity];
    [(CNDataMapperConfiguration *)v5 setAssumedIdentity:assumedIdentity];

    -[CNDataMapperConfiguration setIsContactProvider:](v5, "setIsContactProvider:", [configurationCopy isContactProvider]);
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
  build = [v3 build];

  return build;
}

@end