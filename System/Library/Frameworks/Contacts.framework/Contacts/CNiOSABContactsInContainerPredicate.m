@interface CNiOSABContactsInContainerPredicate
- (BOOL)canSearchCoreRecentsLibrary:(id)a3;
- (CNiOSABContactsInContainerPredicate)initWithCoder:(id)a3;
- (CNiOSABContactsInContainerPredicate)initWithParentContainerIdentifier:(id)a3;
- (NSString)description;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7;
- (id)cn_ABQSLPredicateForAddressBook:(void *)a3 fetchRequest:(id)a4 error:(id *)a5;
- (id)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 nserror:(id *)a7;
- (id)contactsFromRecentsLibrary:(id)a3;
- (int64_t)countOfContactsFromRecentsLibrary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNiOSABContactsInContainerPredicate

- (CNiOSABContactsInContainerPredicate)initWithParentContainerIdentifier:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"parentContainer.identifier == %@", v4];
  v11.receiver = self;
  v11.super_class = CNiOSABContactsInContainerPredicate;
  v6 = [(CNPredicate *)&v11 initWithPredicate:v5];
  if (v6)
  {
    v7 = [v4 copy];
    parentContainerIdentifier = v6->_parentContainerIdentifier;
    v6->_parentContainerIdentifier = v7;

    v9 = v6;
  }

  return v6;
}

- (CNiOSABContactsInContainerPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CNiOSABContactsInContainerPredicate;
  v5 = [(CNPredicate *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_parentContainerIdentifier"];
    v7 = [v6 copy];
    parentContainerIdentifier = v5->_parentContainerIdentifier;
    v5->_parentContainerIdentifier = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CNiOSABContactsInContainerPredicate;
  v4 = a3;
  [(CNPredicate *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_parentContainerIdentifier forKey:{@"_parentContainerIdentifier", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7
{
  v15 = 0;
  v8 = [(CNiOSABContactsInContainerPredicate *)self cn_copyPeopleInAddressBook:a3 fetchRequest:a4 matchInfos:a5 environment:a6 nserror:&v15];
  v9 = v15;
  v10 = v9;
  if (v8)
  {
    v11 = v8;
  }

  else if (a7)
  {
    v12 = [v9 code];
    v13 = [v10 userInfo];
    *a7 = [CNErrorFactory errorWithCode:v12 userInfo:v13];
  }

  return v8;
}

- (id)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 nserror:(id *)a7
{
  v19[1] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = *MEMORY[0x1E6996568];
  v12 = [(CNiOSABContactsInContainerPredicate *)self parentContainerIdentifier];
  LODWORD(v11) = (*(v11 + 16))(v11, v12);

  if (v11)
  {
    v13 = [CNErrorFactory errorWithCode:400 userInfo:0];
    if (a7)
    {
      v13 = v13;
      *a7 = v13;
    }

    v14 = 0;
  }

  else
  {
    v15 = [(CNiOSABContactsInContainerPredicate *)self parentContainerIdentifier];
    v19[0] = v15;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v16 = ABAddressBookCopySourcesWithUUIDs();

    if (v16 && ([v16 firstObject], v17 = objc_claimAutoreleasedReturnValue(), v17, v17))
    {
      v14 = ABAddressBookCopyArrayOfAllPeopleInSourceWithSortOrdering(a3, v17, [v10 sortOrder]);
    }

    else
    {
      v14 = MEMORY[0x1E695E0F0];
    }
  }

  return v14;
}

- (id)cn_ABQSLPredicateForAddressBook:(void *)a3 fetchRequest:(id)a4 error:(id *)a5
{
  v7 = *MEMORY[0x1E6996568];
  v8 = [(CNiOSABContactsInContainerPredicate *)self parentContainerIdentifier:a3];
  LODWORD(v7) = (*(v7 + 16))(v7, v8);

  if (v7)
  {
    v9 = [CNErrorFactory errorWithCode:400 userInfo:0];
    v10 = v9;
    if (a5)
    {
      v11 = v9;
      v12 = 0;
      *a5 = v10;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v13 = MEMORY[0x1E698A130];
    v10 = [(CNiOSABContactsInContainerPredicate *)self parentContainerIdentifier];
    v12 = [v13 predicateForContactsInContainerWithIdentifier:v10];
  }

  return v12;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContact predicateForContactsInContainerWithIdentifier:]"];
  v5 = [(CNiOSABContactsInContainerPredicate *)self parentContainerIdentifier];
  v6 = [v3 appendName:@"identifier" object:v5];

  v7 = [v3 build];

  return v7;
}

- (BOOL)canSearchCoreRecentsLibrary:(id)a3
{
  v4 = a3;
  v5 = [(CNiOSABContactsInContainerPredicate *)self parentContainerIdentifier];

  if (v5)
  {
    v6 = [v4 domains];
    v7 = [(CNiOSABContactsInContainerPredicate *)self parentContainerIdentifier];
    v8 = [v6 containsObject:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)contactsFromRecentsLibrary:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CNiOSABContactsInContainerPredicate *)self parentContainerIdentifier];

  if (v5)
  {
    v6 = [(CNiOSABContactsInContainerPredicate *)self parentContainerIdentifier];
    v15[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v14 = 0;
    v8 = [v4 allContactsFromDomains:v7 error:&v14];
    v9 = v14;

    v10 = MEMORY[0x1E6996810];
    v11 = (*(sContactsPairedWithNoMatchInfo + 2))(sContactsPairedWithNoMatchInfo, v8);
    v12 = [v10 resultWithValue:v11 orError:v9];
  }

  else
  {
    v12 = [MEMORY[0x1E6996810] successWithValue:MEMORY[0x1E695E0F0]];
  }

  return v12;
}

- (int64_t)countOfContactsFromRecentsLibrary:(id)a3
{
  v4 = a3;
  v5 = [(CNiOSABContactsInContainerPredicate *)self parentContainerIdentifier];

  if (v5)
  {
    v5 = [v4 countAllContactsWithError:0];
  }

  return v5;
}

@end