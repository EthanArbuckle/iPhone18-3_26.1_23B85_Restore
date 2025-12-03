@interface CNiOSABContainerProviderIdentifierPredicate
- (CNiOSABContainerProviderIdentifierPredicate)initWithCoder:(id)coder;
- (CNiOSABContainerProviderIdentifierPredicate)initWithProviderIdentifier:(id)identifier;
- (NSString)description;
- (__CFArray)cn_copyContainersInAddressBook:(void *)book error:(__CFError *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNiOSABContainerProviderIdentifierPredicate

- (CNiOSABContainerProviderIdentifierPredicate)initWithProviderIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identifierCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"providerIdentifier == %@", identifierCopy];
  v11.receiver = self;
  v11.super_class = CNiOSABContainerProviderIdentifierPredicate;
  v7 = [(CNPredicate *)&v11 initWithPredicate:identifierCopy];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_providerIdentifier, identifier);
    v9 = v8;
  }

  return v8;
}

- (CNiOSABContainerProviderIdentifierPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CNiOSABContainerProviderIdentifierPredicate;
  v5 = [(CNPredicate *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"providerIdentifier"];
    providerIdentifier = v5->_providerIdentifier;
    v5->_providerIdentifier = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CNiOSABContainerProviderIdentifierPredicate;
  coderCopy = coder;
  [(CNPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_providerIdentifier forKey:{@"providerIdentifier", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyContainersInAddressBook:(void *)book error:(__CFError *)error
{
  v6 = *MEMORY[0x1E6996570];
  providerIdentifier = [(CNiOSABContainerProviderIdentifierPredicate *)self providerIdentifier];
  LODWORD(v6) = (*(v6 + 16))(v6, providerIdentifier);

  if (v6)
  {
    providerIdentifier2 = [(CNiOSABContainerProviderIdentifierPredicate *)self providerIdentifier];
    v9 = ABAddressBookCopySourceWithProviderIdentifier();

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
  v4 = [v3 appendName:@"kind" object:@"-[CNContainer predicateForContainerWithProviderIdentifier:]"];
  providerIdentifier = [(CNiOSABContainerProviderIdentifierPredicate *)self providerIdentifier];
  v6 = [v3 appendObject:providerIdentifier withName:@"providerIdentifier"];

  build = [v3 build];

  return build;
}

@end