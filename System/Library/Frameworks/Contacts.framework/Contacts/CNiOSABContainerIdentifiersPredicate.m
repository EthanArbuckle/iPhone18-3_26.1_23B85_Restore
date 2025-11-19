@interface CNiOSABContainerIdentifiersPredicate
- (CNiOSABContainerIdentifiersPredicate)initWithCoder:(id)a3;
- (CNiOSABContainerIdentifiersPredicate)initWithIdentifiers:(id)a3;
- (NSString)description;
- (__CFArray)cn_copyContainersInAddressBook:(void *)a3 error:(__CFError *)a4;
- (id)containersFromRecentsLibrary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNiOSABContainerIdentifiersPredicate

- (id)containersFromRecentsLibrary:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x1E6996530];
  v6 = [(CNiOSABContainerIdentifiersPredicate *)self identifiers];
  LOBYTE(v5) = (*(v5 + 16))(v5, v6);

  if (v5)
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v8 = [(CNiOSABContainerIdentifiersPredicate *)self identifiers];
    v7 = [v4 containersForIdentifiers:v8];
  }

  return v7;
}

- (CNiOSABContainerIdentifiersPredicate)initWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"identifier IN %@", v4];
  v11.receiver = self;
  v11.super_class = CNiOSABContainerIdentifiersPredicate;
  v6 = [(CNPredicate *)&v11 initWithPredicate:v5];
  if (v6)
  {
    v7 = [v4 copy];
    identifiers = v6->_identifiers;
    v6->_identifiers = v7;

    v9 = v6;
  }

  return v6;
}

- (CNiOSABContainerIdentifiersPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CNiOSABContainerIdentifiersPredicate;
  v5 = [(CNPredicate *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"_identifiers"];
    v10 = [v9 copy];
    identifiers = v5->_identifiers;
    v5->_identifiers = v10;

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CNiOSABContainerIdentifiersPredicate;
  v4 = a3;
  [(CNPredicate *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_identifiers forKey:{@"_identifiers", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyContainersInAddressBook:(void *)a3 error:(__CFError *)a4
{
  v6 = [(CNiOSABContainerIdentifiersPredicate *)self identifiers];
  v7 = [v6 count];

  if (!v7)
  {
    if (!a4)
    {
      return 0;
    }

    [CNErrorFactory errorWithCode:400 userInfo:0];
    *a4 = v9 = 0;
    return v9;
  }

  v8 = [(CNiOSABContainerIdentifiersPredicate *)self identifiers];
  v9 = ABAddressBookCopySourcesWithUUIDs();

  if (v9)
  {
    return v9;
  }

  v10 = MEMORY[0x1E695E9C0];

  return CFArrayCreate(0, 0, 0, v10);
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContainer predicateForContainersWithIdentifiers:]"];
  v5 = [(CNiOSABContainerIdentifiersPredicate *)self identifiers];
  v6 = [v3 appendName:@"identifiers" object:v5];

  v7 = [v3 build];

  return v7;
}

@end