@interface CNiOSABGroupIdentifiersPredicate
+ (id)descriptionOfIdentifiers:(id)a3;
- (CNiOSABGroupIdentifiersPredicate)initWithCoder:(id)a3;
- (CNiOSABGroupIdentifiersPredicate)initWithIdentifiers:(id)a3;
- (NSString)description;
- (__CFArray)cn_copyGroupsInAddressBook:(void *)a3 error:(__CFError *)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNiOSABGroupIdentifiersPredicate

- (CNiOSABGroupIdentifiersPredicate)initWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"identifier IN %@", v4];
  v11.receiver = self;
  v11.super_class = CNiOSABGroupIdentifiersPredicate;
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

- (CNiOSABGroupIdentifiersPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CNiOSABGroupIdentifiersPredicate;
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
  v5.super_class = CNiOSABGroupIdentifiersPredicate;
  v4 = a3;
  [(CNPredicate *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_identifiers forKey:{@"_identifiers", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyGroupsInAddressBook:(void *)a3 error:(__CFError *)a4
{
  v6 = [(CNiOSABGroupIdentifiersPredicate *)self identifiers];
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

  v8 = [(CNiOSABGroupIdentifiersPredicate *)self identifiers];
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
  v6 = [(CNiOSABGroupIdentifiersPredicate *)self identifiers];
  v7 = [v5 descriptionOfIdentifiers:v6];
  v8 = [v3 appendName:@"identifiers" object:v7];

  v9 = [v3 build];

  return v9;
}

+ (id)descriptionOfIdentifiers:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a3 componentsJoinedByString:{@", "}];
  v5 = [v3 stringWithFormat:@"(%@)", v4];

  return v5;
}

@end