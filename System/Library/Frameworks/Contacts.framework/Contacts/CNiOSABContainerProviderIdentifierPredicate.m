@interface CNiOSABContainerProviderIdentifierPredicate
- (CNiOSABContainerProviderIdentifierPredicate)initWithCoder:(id)a3;
- (CNiOSABContainerProviderIdentifierPredicate)initWithProviderIdentifier:(id)a3;
- (NSString)description;
- (__CFArray)cn_copyContainersInAddressBook:(void *)a3 error:(__CFError *)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNiOSABContainerProviderIdentifierPredicate

- (CNiOSABContainerProviderIdentifierPredicate)initWithProviderIdentifier:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"providerIdentifier == %@", v5];
  v11.receiver = self;
  v11.super_class = CNiOSABContainerProviderIdentifierPredicate;
  v7 = [(CNPredicate *)&v11 initWithPredicate:v6];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_providerIdentifier, a3);
    v9 = v8;
  }

  return v8;
}

- (CNiOSABContainerProviderIdentifierPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CNiOSABContainerProviderIdentifierPredicate;
  v5 = [(CNPredicate *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"providerIdentifier"];
    providerIdentifier = v5->_providerIdentifier;
    v5->_providerIdentifier = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CNiOSABContainerProviderIdentifierPredicate;
  v4 = a3;
  [(CNPredicate *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_providerIdentifier forKey:{@"providerIdentifier", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyContainersInAddressBook:(void *)a3 error:(__CFError *)a4
{
  v6 = *MEMORY[0x1E6996570];
  v7 = [(CNiOSABContainerProviderIdentifierPredicate *)self providerIdentifier];
  LODWORD(v6) = (*(v6 + 16))(v6, v7);

  if (v6)
  {
    v8 = [(CNiOSABContainerProviderIdentifierPredicate *)self providerIdentifier];
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

  else if (a4)
  {
    v14 = [CNErrorFactory errorWithCode:400 userInfo:0];
    result = 0;
    *a4 = v14;
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
  v5 = [(CNiOSABContainerProviderIdentifierPredicate *)self providerIdentifier];
  v6 = [v3 appendObject:v5 withName:@"providerIdentifier"];

  v7 = [v3 build];

  return v7;
}

@end