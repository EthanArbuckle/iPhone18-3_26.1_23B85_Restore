@interface CNiOSABAccountIdentifiersPredicate
- (CNiOSABAccountIdentifiersPredicate)initWithCoder:(id)a3;
- (CNiOSABAccountIdentifiersPredicate)initWithIdentifiers:(id)a3;
- (__CFArray)cn_copyAccountsInAddressBook:(void *)a3 error:(__CFError *)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNiOSABAccountIdentifiersPredicate

- (CNiOSABAccountIdentifiersPredicate)initWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"identifier IN %@", v4];
  v11.receiver = self;
  v11.super_class = CNiOSABAccountIdentifiersPredicate;
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

- (CNiOSABAccountIdentifiersPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CNiOSABAccountIdentifiersPredicate;
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
  v5.super_class = CNiOSABAccountIdentifiersPredicate;
  v4 = a3;
  [(CNPredicate *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_identifiers forKey:{@"_identifiers", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyAccountsInAddressBook:(void *)a3 error:(__CFError *)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(CNiOSABAccountIdentifiersPredicate *)self identifiers];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (*(*(&v13 + 1) + 8 * v10))
        {
          [v5 addObject:?];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = ABAddressBookCopyAccountsWithUUIDs();
  return v11;
}

@end