@interface CNiOSABGroupIdentifiersPredicate
+ (id)descriptionOfIdentifiers:(id)identifiers;
- (CNiOSABGroupIdentifiersPredicate)initWithCoder:(id)coder;
- (CNiOSABGroupIdentifiersPredicate)initWithIdentifiers:(id)identifiers;
- (NSString)description;
- (__CFArray)cn_copyGroupsInAddressBook:(void *)book error:(__CFError *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNiOSABGroupIdentifiersPredicate

- (CNiOSABGroupIdentifiersPredicate)initWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  identifiersCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"identifier IN %@", identifiersCopy];
  v11.receiver = self;
  v11.super_class = CNiOSABGroupIdentifiersPredicate;
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

- (CNiOSABGroupIdentifiersPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = CNiOSABGroupIdentifiersPredicate;
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
  v5.super_class = CNiOSABGroupIdentifiersPredicate;
  coderCopy = coder;
  [(CNPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_identifiers forKey:{@"_identifiers", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyGroupsInAddressBook:(void *)book error:(__CFError *)error
{
  identifiers = [(CNiOSABGroupIdentifiersPredicate *)self identifiers];
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

  identifiers2 = [(CNiOSABGroupIdentifiersPredicate *)self identifiers];
  v9 = ABAddressBookCopyGroupsWithUUIDs();

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
  v4 = [v3 appendName:@"kind" object:@"-[CNContact predicateForGroupsWithIdentifiers:]"];
  v5 = objc_opt_class();
  identifiers = [(CNiOSABGroupIdentifiersPredicate *)self identifiers];
  v7 = [v5 descriptionOfIdentifiers:identifiers];
  v8 = [v3 appendName:@"identifiers" object:v7];

  build = [v3 build];

  return build;
}

+ (id)descriptionOfIdentifiers:(id)identifiers
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [identifiers componentsJoinedByString:{@", "}];
  v5 = [v3 stringWithFormat:@"(%@)", v4];

  return v5;
}

@end