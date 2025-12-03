@interface CNiOSABContainersForAccountExternalIdentifierPredicate
- (CNiOSABContainersForAccountExternalIdentifierPredicate)initWithAccountExternalIdentifier:(id)identifier;
- (CNiOSABContainersForAccountExternalIdentifierPredicate)initWithCoder:(id)coder;
- (NSString)description;
- (__CFArray)cn_copyContainersInAddressBook:(void *)book error:(__CFError *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNiOSABContainersForAccountExternalIdentifierPredicate

- (CNiOSABContainersForAccountExternalIdentifierPredicate)initWithAccountExternalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identifierCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"externalIdentifierString == %@", identifierCopy];
  v10.receiver = self;
  v10.super_class = CNiOSABContainersForAccountExternalIdentifierPredicate;
  v6 = [(CNPredicate *)&v10 initWithPredicate:identifierCopy];
  if (v6)
  {
    v7 = [identifierCopy copy];
    accountExternalIdentifier = v6->_accountExternalIdentifier;
    v6->_accountExternalIdentifier = v7;
  }

  return v6;
}

- (CNiOSABContainersForAccountExternalIdentifierPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CNiOSABContainersForAccountExternalIdentifierPredicate;
  v5 = [(CNPredicate *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_accountExternalIdentifier"];
    v7 = [v6 copy];
    accountExternalIdentifier = v5->_accountExternalIdentifier;
    v5->_accountExternalIdentifier = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CNiOSABContainersForAccountExternalIdentifierPredicate;
  coderCopy = coder;
  [(CNPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_accountExternalIdentifier forKey:{@"_accountExternalIdentifier", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyContainersInAddressBook:(void *)book error:(__CFError *)error
{
  v5 = [(CNiOSABContainersForAccountExternalIdentifierPredicate *)self accountExternalIdentifier:book];

  return MEMORY[0x1EEDEADC0](book, v5);
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContainer predicateForContainersInAccountWithExternalIdentifier:]"];
  accountExternalIdentifier = [(CNiOSABContainersForAccountExternalIdentifierPredicate *)self accountExternalIdentifier];
  v6 = [v3 appendName:@"externalIdentifier" object:accountExternalIdentifier];

  build = [v3 build];

  return build;
}

@end