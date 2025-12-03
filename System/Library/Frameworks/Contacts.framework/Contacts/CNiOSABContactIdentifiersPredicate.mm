@interface CNiOSABContactIdentifiersPredicate
- (CNiOSABContactIdentifiersPredicate)initWithIdentifiers:(id)identifiers ignoreUnifiedIdentifiers:(BOOL)unifiedIdentifiers;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error;
- (id)cn_ABQSLPredicateForAddressBook:(void *)book fetchRequest:(id)request error:(id *)error;
@end

@implementation CNiOSABContactIdentifiersPredicate

- (CNiOSABContactIdentifiersPredicate)initWithIdentifiers:(id)identifiers ignoreUnifiedIdentifiers:(BOOL)unifiedIdentifiers
{
  v9.receiver = self;
  v9.super_class = CNiOSABContactIdentifiersPredicate;
  v5 = [(CNContactsWithIdentifiersPredicate *)&v9 initWithIdentifiers:identifiers];
  v6 = v5;
  if (v5)
  {
    v5->_ignoreUnifiedIdentifiers = unifiedIdentifiers;
    v7 = v5;
  }

  return v6;
}

- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error
{
  identifiers = [(CNContactsWithIdentifiersPredicate *)self identifiers];
  v10 = [identifiers count];

  if (v10)
  {
    v11 = [(CNContactsWithIdentifiersPredicate *)self internalIdentifiersForStoreWithIdentifier:0];
    if (![v11 count] || (objc_msgSend(v11, "allObjects"), v12 = objc_claimAutoreleasedReturnValue(), v13 = ABAddressBookCopyPeopleWithUUIDs(), v12, !v13))
    {
      v13 = CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C0]);
    }
  }

  else if (error)
  {
    [CNErrorFactory errorWithCode:400 userInfo:0];
    *error = v13 = 0;
  }

  else
  {
    return 0;
  }

  return v13;
}

- (id)cn_ABQSLPredicateForAddressBook:(void *)book fetchRequest:(id)request error:(id *)error
{
  v7 = [(CNContactsWithIdentifiersPredicate *)self identifiers:book];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [(CNContactsWithIdentifiersPredicate *)self internalIdentifiersForStoreWithIdentifier:0];
    if ([v9 count])
    {
      v10 = MEMORY[0x1E698A130];
      allObjects = [v9 allObjects];
      v12 = [v10 predicateForContactsWithUUIDs:allObjects ignoreUnifiedIdentifiers:{-[CNiOSABContactIdentifiersPredicate ignoreUnifiedIdentifiers](self, "ignoreUnifiedIdentifiers")}];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    CNSetError(error, 400, 0);
    v12 = 0;
  }

  return v12;
}

@end