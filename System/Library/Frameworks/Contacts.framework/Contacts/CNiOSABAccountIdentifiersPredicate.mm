@interface CNiOSABAccountIdentifiersPredicate
- (CNiOSABAccountIdentifiersPredicate)initWithCoder:(id)coder;
- (CNiOSABAccountIdentifiersPredicate)initWithIdentifiers:(id)identifiers;
- (__CFArray)cn_copyAccountsInAddressBook:(void *)book error:(__CFError *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNiOSABAccountIdentifiersPredicate

- (CNiOSABAccountIdentifiersPredicate)initWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  identifiersCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"identifier IN %@", identifiersCopy];
  v11.receiver = self;
  v11.super_class = CNiOSABAccountIdentifiersPredicate;
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

- (CNiOSABAccountIdentifiersPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = CNiOSABAccountIdentifiersPredicate;
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
  v5.super_class = CNiOSABAccountIdentifiersPredicate;
  coderCopy = coder;
  [(CNPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_identifiers forKey:{@"_identifiers", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyAccountsInAddressBook:(void *)book error:(__CFError *)error
{
  v18 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  identifiers = [(CNiOSABAccountIdentifiersPredicate *)self identifiers];
  v7 = [identifiers countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(identifiers);
        }

        if (*(*(&v13 + 1) + 8 * v10))
        {
          [array addObject:?];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [identifiers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = ABAddressBookCopyAccountsWithUUIDs();
  return v11;
}

@end