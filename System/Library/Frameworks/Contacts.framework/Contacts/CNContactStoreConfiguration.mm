@interface CNContactStoreConfiguration
- (CNContactStoreConfiguration)init;
- (id)description;
@end

@implementation CNContactStoreConfiguration

- (CNContactStoreConfiguration)init
{
  v7.receiver = self;
  v7.super_class = CNContactStoreConfiguration;
  v2 = [(CNContactStoreConfiguration *)&v7 init];
  if (v2)
  {
    v3 = +[CNContactsEnvironment currentEnvironment];
    environment = v2->_environment;
    v2->_environment = v3;

    v2->_includeLocalContacts = 1;
    v2->_includeSharedPhotoContacts = 1;
    v5 = v2;
  }

  return v2;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"includeLocalContacts" BOOLValue:self->_includeLocalContacts];
  v5 = [v3 appendName:@"includeSuggestedContacts" BOOLValue:self->_includeSuggestedContacts];
  v6 = [v3 appendName:@"includeDonatedContacts" BOOLValue:self->_includeDonatedContacts];
  v7 = [v3 appendName:@"includeIncludeManagedAppleIDs" BOOLValue:self->_includeIncludeManagedAppleIDs];
  v8 = [v3 appendName:@"includeAcceptedIntroductions" BOOLValue:self->_includeAcceptedIntroductions];
  v9 = [v3 appendName:@"includeSharedPhotoContacts" BOOLValue:self->_includeSharedPhotoContacts];
  v10 = [v3 appendName:@"useOutOfProcessMapperExclusively" BOOLValue:self->_useOutOfProcessMapperExclusively];
  v11 = [v3 appendName:@"useInProcessMapperExclusively" BOOLValue:self->_useInProcessMapperExclusively];
  v12 = [v3 appendObject:self->_assumedIdentity withName:@"assumedIdentity"];
  v13 = [v3 appendObject:self->_environment withName:@"environment"];
  v14 = [v3 appendObject:self->_managedConfiguration withName:@"managedConfiguration"];
  v15 = [v3 appendName:@"isContactProvider" BOOLValue:self->_isContactProvider];
  build = [v3 build];

  return build;
}

@end