@interface CNiOSABContainersForAccountExternalIdentifierPredicate
- (CNiOSABContainersForAccountExternalIdentifierPredicate)initWithAccountExternalIdentifier:(id)a3;
- (CNiOSABContainersForAccountExternalIdentifierPredicate)initWithCoder:(id)a3;
- (NSString)description;
- (__CFArray)cn_copyContainersInAddressBook:(void *)a3 error:(__CFError *)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNiOSABContainersForAccountExternalIdentifierPredicate

- (CNiOSABContainersForAccountExternalIdentifierPredicate)initWithAccountExternalIdentifier:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"externalIdentifierString == %@", v4];
  v10.receiver = self;
  v10.super_class = CNiOSABContainersForAccountExternalIdentifierPredicate;
  v6 = [(CNPredicate *)&v10 initWithPredicate:v5];
  if (v6)
  {
    v7 = [v4 copy];
    accountExternalIdentifier = v6->_accountExternalIdentifier;
    v6->_accountExternalIdentifier = v7;
  }

  return v6;
}

- (CNiOSABContainersForAccountExternalIdentifierPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CNiOSABContainersForAccountExternalIdentifierPredicate;
  v5 = [(CNPredicate *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_accountExternalIdentifier"];
    v7 = [v6 copy];
    accountExternalIdentifier = v5->_accountExternalIdentifier;
    v5->_accountExternalIdentifier = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CNiOSABContainersForAccountExternalIdentifierPredicate;
  v4 = a3;
  [(CNPredicate *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_accountExternalIdentifier forKey:{@"_accountExternalIdentifier", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyContainersInAddressBook:(void *)a3 error:(__CFError *)a4
{
  v5 = [(CNiOSABContainersForAccountExternalIdentifierPredicate *)self accountExternalIdentifier:a3];

  return MEMORY[0x1EEDEADC0](a3, v5);
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContainer predicateForContainersInAccountWithExternalIdentifier:]"];
  v5 = [(CNiOSABContainersForAccountExternalIdentifierPredicate *)self accountExternalIdentifier];
  v6 = [v3 appendName:@"externalIdentifier" object:v5];

  v7 = [v3 build];

  return v7;
}

@end