@interface CNiOSABContactIdentifiersPredicate
- (CNiOSABContactIdentifiersPredicate)initWithIdentifiers:(id)a3 ignoreUnifiedIdentifiers:(BOOL)a4;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7;
- (id)cn_ABQSLPredicateForAddressBook:(void *)a3 fetchRequest:(id)a4 error:(id *)a5;
@end

@implementation CNiOSABContactIdentifiersPredicate

- (CNiOSABContactIdentifiersPredicate)initWithIdentifiers:(id)a3 ignoreUnifiedIdentifiers:(BOOL)a4
{
  v9.receiver = self;
  v9.super_class = CNiOSABContactIdentifiersPredicate;
  v5 = [(CNContactsWithIdentifiersPredicate *)&v9 initWithIdentifiers:a3];
  v6 = v5;
  if (v5)
  {
    v5->_ignoreUnifiedIdentifiers = a4;
    v7 = v5;
  }

  return v6;
}

- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7
{
  v9 = [(CNContactsWithIdentifiersPredicate *)self identifiers];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [(CNContactsWithIdentifiersPredicate *)self internalIdentifiersForStoreWithIdentifier:0];
    if (![v11 count] || (objc_msgSend(v11, "allObjects"), v12 = objc_claimAutoreleasedReturnValue(), v13 = ABAddressBookCopyPeopleWithUUIDs(), v12, !v13))
    {
      v13 = CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C0]);
    }
  }

  else if (a7)
  {
    [CNErrorFactory errorWithCode:400 userInfo:0];
    *a7 = v13 = 0;
  }

  else
  {
    return 0;
  }

  return v13;
}

- (id)cn_ABQSLPredicateForAddressBook:(void *)a3 fetchRequest:(id)a4 error:(id *)a5
{
  v7 = [(CNContactsWithIdentifiersPredicate *)self identifiers:a3];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [(CNContactsWithIdentifiersPredicate *)self internalIdentifiersForStoreWithIdentifier:0];
    if ([v9 count])
    {
      v10 = MEMORY[0x1E698A130];
      v11 = [v9 allObjects];
      v12 = [v10 predicateForContactsWithUUIDs:v11 ignoreUnifiedIdentifiers:{-[CNiOSABContactIdentifiersPredicate ignoreUnifiedIdentifiers](self, "ignoreUnifiedIdentifiers")}];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    CNSetError(a5, 400, 0);
    v12 = 0;
  }

  return v12;
}

@end