@interface CNiOSABContainerIdentifiersPredicate
- (CNiOSABContainerIdentifiersPredicate)initWithCoder:(id)coder;
- (CNiOSABContainerIdentifiersPredicate)initWithIdentifiers:(id)identifiers;
- (NSString)description;
- (__CFArray)cn_copyContainersInAddressBook:(void *)book error:(__CFError *)error;
- (id)containersFromRecentsLibrary:(id)library;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNiOSABContainerIdentifiersPredicate

- (id)containersFromRecentsLibrary:(id)library
{
  libraryCopy = library;
  v5 = *MEMORY[0x1E6996530];
  identifiers = [(CNiOSABContainerIdentifiersPredicate *)self identifiers];
  LOBYTE(v5) = (*(v5 + 16))(v5, identifiers);

  if (v5)
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  else
  {
    identifiers2 = [(CNiOSABContainerIdentifiersPredicate *)self identifiers];
    v7 = [libraryCopy containersForIdentifiers:identifiers2];
  }

  return v7;
}

- (CNiOSABContainerIdentifiersPredicate)initWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  identifiersCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"identifier IN %@", identifiersCopy];
  v11.receiver = self;
  v11.super_class = CNiOSABContainerIdentifiersPredicate;
  v6 = [(CNPredicate *)&v11 initWithPredicate:identifiersCopy];
  if (v6)
  {
    v7 = [identifiersCopy copy];
    identifiers = v6->_identifiers;
    v6->_identifiers = v7;

    v9 = v6;
  }

  return v6;
}

- (CNiOSABContainerIdentifiersPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = CNiOSABContainerIdentifiersPredicate;
  v5 = [(CNPredicate *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_identifiers"];
    v10 = [v9 copy];
    identifiers = v5->_identifiers;
    v5->_identifiers = v10;

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CNiOSABContainerIdentifiersPredicate;
  coderCopy = coder;
  [(CNPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_identifiers forKey:{@"_identifiers", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyContainersInAddressBook:(void *)book error:(__CFError *)error
{
  identifiers = [(CNiOSABContainerIdentifiersPredicate *)self identifiers];
  v7 = [identifiers count];

  if (!v7)
  {
    if (!error)
    {
      return 0;
    }

    [CNErrorFactory errorWithCode:400 userInfo:0];
    *error = v9 = 0;
    return v9;
  }

  identifiers2 = [(CNiOSABContainerIdentifiersPredicate *)self identifiers];
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
  identifiers = [(CNiOSABContainerIdentifiersPredicate *)self identifiers];
  v6 = [v3 appendName:@"identifiers" object:identifiers];

  build = [v3 build];

  return build;
}

@end