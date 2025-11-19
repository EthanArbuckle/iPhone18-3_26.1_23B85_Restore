@interface CNiOSABContainerExternalIdentifierPredicate
- (CNiOSABContainerExternalIdentifierPredicate)initWithCoder:(id)a3;
- (CNiOSABContainerExternalIdentifierPredicate)initWithExternalIdentifier:(id)a3;
- (NSString)description;
- (__CFArray)cn_copyContainersInAddressBook:(void *)a3 error:(__CFError *)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNiOSABContainerExternalIdentifierPredicate

- (CNiOSABContainerExternalIdentifierPredicate)initWithExternalIdentifier:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"externalIdentifier == %@", v5];
  v11.receiver = self;
  v11.super_class = CNiOSABContainerExternalIdentifierPredicate;
  v7 = [(CNPredicate *)&v11 initWithPredicate:v6];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_externalIdentifier, a3);
    v9 = v8;
  }

  return v8;
}

- (CNiOSABContainerExternalIdentifierPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CNiOSABContainerExternalIdentifierPredicate;
  v5 = [(CNPredicate *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"externalIdentifier"];
    externalIdentifier = v5->_externalIdentifier;
    v5->_externalIdentifier = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CNiOSABContainerExternalIdentifierPredicate;
  v4 = a3;
  [(CNPredicate *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_externalIdentifier forKey:{@"externalIdentifier", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyContainersInAddressBook:(void *)a3 error:(__CFError *)a4
{
  v6 = *MEMORY[0x1E6996570];
  v7 = [(CNiOSABContainerExternalIdentifierPredicate *)self externalIdentifier];
  LODWORD(v6) = (*(v6 + 16))(v6, v7);

  if (v6)
  {
    v8 = [(CNiOSABContainerExternalIdentifierPredicate *)self externalIdentifier];
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
  v4 = [v3 appendName:@"kind" object:@"-[CNContainer predicateForContainerWithExternalIdentifier:]"];
  v5 = [(CNiOSABContainerExternalIdentifierPredicate *)self externalIdentifier];
  v6 = [v3 appendObject:v5 withName:@"externalIdentifier"];

  v7 = [v3 build];

  return v7;
}

@end