@interface CNiOSABContactsInContainerPredicate
- (BOOL)canSearchCoreRecentsLibrary:(id)library;
- (CNiOSABContactsInContainerPredicate)initWithCoder:(id)coder;
- (CNiOSABContactsInContainerPredicate)initWithParentContainerIdentifier:(id)identifier;
- (NSString)description;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error;
- (id)cn_ABQSLPredicateForAddressBook:(void *)book fetchRequest:(id)request error:(id *)error;
- (id)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment nserror:(id *)nserror;
- (id)contactsFromRecentsLibrary:(id)library;
- (int64_t)countOfContactsFromRecentsLibrary:(id)library;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNiOSABContactsInContainerPredicate

- (CNiOSABContactsInContainerPredicate)initWithParentContainerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identifierCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"parentContainer.identifier == %@", identifierCopy];
  v11.receiver = self;
  v11.super_class = CNiOSABContactsInContainerPredicate;
  v6 = [(CNPredicate *)&v11 initWithPredicate:identifierCopy];
  if (v6)
  {
    v7 = [identifierCopy copy];
    parentContainerIdentifier = v6->_parentContainerIdentifier;
    v6->_parentContainerIdentifier = v7;

    v9 = v6;
  }

  return v6;
}

- (CNiOSABContactsInContainerPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CNiOSABContactsInContainerPredicate;
  v5 = [(CNPredicate *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_parentContainerIdentifier"];
    v7 = [v6 copy];
    parentContainerIdentifier = v5->_parentContainerIdentifier;
    v5->_parentContainerIdentifier = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CNiOSABContactsInContainerPredicate;
  coderCopy = coder;
  [(CNPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_parentContainerIdentifier forKey:{@"_parentContainerIdentifier", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error
{
  v15 = 0;
  v8 = [(CNiOSABContactsInContainerPredicate *)self cn_copyPeopleInAddressBook:book fetchRequest:request matchInfos:infos environment:environment nserror:&v15];
  v9 = v15;
  v10 = v9;
  if (v8)
  {
    v11 = v8;
  }

  else if (error)
  {
    code = [v9 code];
    userInfo = [v10 userInfo];
    *error = [CNErrorFactory errorWithCode:code userInfo:userInfo];
  }

  return v8;
}

- (id)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment nserror:(id *)nserror
{
  v19[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v11 = *MEMORY[0x1E6996568];
  parentContainerIdentifier = [(CNiOSABContactsInContainerPredicate *)self parentContainerIdentifier];
  LODWORD(v11) = (*(v11 + 16))(v11, parentContainerIdentifier);

  if (v11)
  {
    v13 = [CNErrorFactory errorWithCode:400 userInfo:0];
    if (nserror)
    {
      v13 = v13;
      *nserror = v13;
    }

    v14 = 0;
  }

  else
  {
    parentContainerIdentifier2 = [(CNiOSABContactsInContainerPredicate *)self parentContainerIdentifier];
    v19[0] = parentContainerIdentifier2;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v16 = ABAddressBookCopySourcesWithUUIDs();

    if (v16 && ([v16 firstObject], v17 = objc_claimAutoreleasedReturnValue(), v17, v17))
    {
      v14 = ABAddressBookCopyArrayOfAllPeopleInSourceWithSortOrdering(book, v17, [requestCopy sortOrder]);
    }

    else
    {
      v14 = MEMORY[0x1E695E0F0];
    }
  }

  return v14;
}

- (id)cn_ABQSLPredicateForAddressBook:(void *)book fetchRequest:(id)request error:(id *)error
{
  v7 = *MEMORY[0x1E6996568];
  v8 = [(CNiOSABContactsInContainerPredicate *)self parentContainerIdentifier:book];
  LODWORD(v7) = (*(v7 + 16))(v7, v8);

  if (v7)
  {
    v9 = [CNErrorFactory errorWithCode:400 userInfo:0];
    parentContainerIdentifier = v9;
    if (error)
    {
      v11 = v9;
      v12 = 0;
      *error = parentContainerIdentifier;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v13 = MEMORY[0x1E698A130];
    parentContainerIdentifier = [(CNiOSABContactsInContainerPredicate *)self parentContainerIdentifier];
    v12 = [v13 predicateForContactsInContainerWithIdentifier:parentContainerIdentifier];
  }

  return v12;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContact predicateForContactsInContainerWithIdentifier:]"];
  parentContainerIdentifier = [(CNiOSABContactsInContainerPredicate *)self parentContainerIdentifier];
  v6 = [v3 appendName:@"identifier" object:parentContainerIdentifier];

  build = [v3 build];

  return build;
}

- (BOOL)canSearchCoreRecentsLibrary:(id)library
{
  libraryCopy = library;
  parentContainerIdentifier = [(CNiOSABContactsInContainerPredicate *)self parentContainerIdentifier];

  if (parentContainerIdentifier)
  {
    domains = [libraryCopy domains];
    parentContainerIdentifier2 = [(CNiOSABContactsInContainerPredicate *)self parentContainerIdentifier];
    v8 = [domains containsObject:parentContainerIdentifier2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)contactsFromRecentsLibrary:(id)library
{
  v15[1] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  parentContainerIdentifier = [(CNiOSABContactsInContainerPredicate *)self parentContainerIdentifier];

  if (parentContainerIdentifier)
  {
    parentContainerIdentifier2 = [(CNiOSABContactsInContainerPredicate *)self parentContainerIdentifier];
    v15[0] = parentContainerIdentifier2;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v14 = 0;
    v8 = [libraryCopy allContactsFromDomains:v7 error:&v14];
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

- (int64_t)countOfContactsFromRecentsLibrary:(id)library
{
  libraryCopy = library;
  parentContainerIdentifier = [(CNiOSABContactsInContainerPredicate *)self parentContainerIdentifier];

  if (parentContainerIdentifier)
  {
    parentContainerIdentifier = [libraryCopy countAllContactsWithError:0];
  }

  return parentContainerIdentifier;
}

@end