@interface CNiOSABContainerExternalIdentifierPredicate
- (CNiOSABContainerExternalIdentifierPredicate)initWithCoder:(id)coder;
- (CNiOSABContainerExternalIdentifierPredicate)initWithExternalIdentifier:(id)identifier;
- (NSString)description;
- (__CFArray)cn_copyContainersInAddressBook:(void *)book error:(__CFError *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNiOSABContainerExternalIdentifierPredicate

- (CNiOSABContainerExternalIdentifierPredicate)initWithExternalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identifierCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"externalIdentifier == %@", identifierCopy];
  v11.receiver = self;
  v11.super_class = CNiOSABContainerExternalIdentifierPredicate;
  v7 = [(CNPredicate *)&v11 initWithPredicate:identifierCopy];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_externalIdentifier, identifier);
    v9 = v8;
  }

  return v8;
}

- (CNiOSABContainerExternalIdentifierPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CNiOSABContainerExternalIdentifierPredicate;
  v5 = [(CNPredicate *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"externalIdentifier"];
    externalIdentifier = v5->_externalIdentifier;
    v5->_externalIdentifier = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CNiOSABContainerExternalIdentifierPredicate;
  coderCopy = coder;
  [(CNPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_externalIdentifier forKey:{@"externalIdentifier", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyContainersInAddressBook:(void *)book error:(__CFError *)error
{
  v6 = *MEMORY[0x1E6996570];
  externalIdentifier = [(CNiOSABContainerExternalIdentifierPredicate *)self externalIdentifier];
  LODWORD(v6) = (*(v6 + 16))(v6, externalIdentifier);

  if (v6)
  {
    externalIdentifier2 = [(CNiOSABContainerExternalIdentifierPredicate *)self externalIdentifier];
    v9 = ABAddressBookCopySourceWithAccountAndExternalIdentifiers();

    v16 = v9;
    if (v9)
    {
      v10 = *MEMORY[0x1E695E480];
      v11 = MEMORY[0x1E695E9C0];
      v12 = &v16;
      v13 = 1;
    }

    else
    {
      v11 = MEMORY[0x1E695E9C0];
      v10 = 0;
      v12 = 0;
      v13 = 0;
    }

    return CFArrayCreate(v10, v12, v13, v11);
  }

  else if (error)
  {
    v14 = [CNErrorFactory errorWithCode:400 userInfo:0];
    result = 0;
    *error = v14;
  }

  else
  {
    return 0;
  }

  return result;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContainer predicateForContainerWithExternalIdentifier:]"];
  externalIdentifier = [(CNiOSABContainerExternalIdentifierPredicate *)self externalIdentifier];
  v6 = [v3 appendObject:externalIdentifier withName:@"externalIdentifier"];

  build = [v3 build];

  return build;
}

@end