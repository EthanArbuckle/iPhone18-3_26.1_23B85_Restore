@interface CNiOSABPreferredNameInContainersAndGroupsPredicate
- (BOOL)canSearchCoreRecentsLibrary:(id)library;
- (CNiOSABPreferredNameInContainersAndGroupsPredicate)initWithCoder:(id)coder;
- (CNiOSABPreferredNameInContainersAndGroupsPredicate)initWithContainerIdentifiers:(id)identifiers groupIdentifiers:(id)groupIdentifiers;
- (NSString)description;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error;
- (id)contactsFromRecentsLibrary:(id)library;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNiOSABPreferredNameInContainersAndGroupsPredicate

- (CNiOSABPreferredNameInContainersAndGroupsPredicate)initWithContainerIdentifiers:(id)identifiers groupIdentifiers:(id)groupIdentifiers
{
  identifiersCopy = identifiers;
  groupIdentifiersCopy = groupIdentifiers;
  v14.receiver = self;
  v14.super_class = CNiOSABPreferredNameInContainersAndGroupsPredicate;
  v8 = [(CNPredicate *)&v14 init];
  if (v8)
  {
    v9 = [identifiersCopy copy];
    containerIdentifiers = v8->_containerIdentifiers;
    v8->_containerIdentifiers = v9;

    v11 = [groupIdentifiersCopy copy];
    groupIdentifiers = v8->_groupIdentifiers;
    v8->_groupIdentifiers = v11;
  }

  return v8;
}

- (CNiOSABPreferredNameInContainersAndGroupsPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = CNiOSABPreferredNameInContainersAndGroupsPredicate;
  v5 = [(CNPredicate *)&v20 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_containerIdentifiers"];
    v10 = [v9 copy];
    containerIdentifiers = v5->_containerIdentifiers;
    v5->_containerIdentifiers = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"_groupIdentifiers"];
    v16 = [v15 copy];
    groupIdentifiers = v5->_groupIdentifiers;
    v5->_groupIdentifiers = v16;

    v18 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CNiOSABPreferredNameInContainersAndGroupsPredicate;
  coderCopy = coder;
  [(CNPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_containerIdentifiers forKey:{@"_containerIdentifiers", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_groupIdentifiers forKey:@"_groupIdentifiers"];
}

- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error
{
  requestCopy = request;
  groupIdentifiers = [(CNiOSABPreferredNameInContainersAndGroupsPredicate *)self groupIdentifiers];

  if (groupIdentifiers)
  {
    groupIdentifiers2 = [(CNiOSABPreferredNameInContainersAndGroupsPredicate *)self groupIdentifiers];
    groupIdentifiers = ABAddressBookCopyGroupsWithUUIDs();

    if (!groupIdentifiers)
    {
      groupIdentifiers = CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9C0]);
    }
  }

  containerIdentifiers = [(CNiOSABPreferredNameInContainersAndGroupsPredicate *)self containerIdentifiers];

  if (containerIdentifiers)
  {
    containerIdentifiers2 = [(CNiOSABPreferredNameInContainersAndGroupsPredicate *)self containerIdentifiers];
    v13 = ABAddressBookCopySourcesWithUUIDs();

    if (!v13)
    {
      v13 = CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9C0]);
    }

    v14 = v13 == 0;
    v15 = groupIdentifiers == 0;
    if (v13 && groupIdentifiers)
    {
      if (CFArrayGetCount(v13) <= 0 && CFArrayGetCount(groupIdentifiers) <= 0)
      {
        v17 = CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9C0]);
        CFRelease(groupIdentifiers);
LABEL_18:
        CFRelease(v13);
        goto LABEL_19;
      }

      v15 = 0;
      v14 = 0;
    }
  }

  else
  {
    v13 = 0;
    v15 = groupIdentifiers == 0;
    v14 = 1;
  }

  [requestCopy sortOrder];
  v16 = ABAddressBookCopyArrayOfPreferredNamePeopleForGroupsAndSourcesWithSortOrdering();
  if (!v16)
  {
    v16 = CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9C0]);
  }

  v17 = v16;
  if (!v15)
  {
    CFRelease(groupIdentifiers);
  }

  if (!v14)
  {
    goto LABEL_18;
  }

LABEL_19:

  return v17;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContact predicateForPreferredNameInContainersWithIdentifiers:groupsWithIdentifiers:]"];
  containerIdentifiers = [(CNiOSABPreferredNameInContainersAndGroupsPredicate *)self containerIdentifiers];
  v6 = [v3 appendName:@"containerIdentifiers" object:containerIdentifiers];

  groupIdentifiers = [(CNiOSABPreferredNameInContainersAndGroupsPredicate *)self groupIdentifiers];
  v8 = [v3 appendName:@"groupIdentifiers" object:groupIdentifiers];

  build = [v3 build];

  return build;
}

- (BOOL)canSearchCoreRecentsLibrary:(id)library
{
  libraryCopy = library;
  containerIdentifiers = [(CNiOSABPreferredNameInContainersAndGroupsPredicate *)self containerIdentifiers];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __95__CNiOSABPreferredNameInContainersAndGroupsPredicate_CoreRecents__canSearchCoreRecentsLibrary___block_invoke;
  v9[3] = &unk_1E7412440;
  v10 = libraryCopy;
  v6 = libraryCopy;
  v7 = [containerIdentifiers _cn_all:v9];

  return v7;
}

uint64_t __95__CNiOSABPreferredNameInContainersAndGroupsPredicate_CoreRecents__canSearchCoreRecentsLibrary___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 domains];
  v5 = [v4 containsObject:v3];

  return v5;
}

- (id)contactsFromRecentsLibrary:(id)library
{
  v11 = 0;
  v3 = [library allContactsWithError:&v11];
  v4 = MEMORY[0x1E6996810];
  v5 = sContactsPairedWithNoMatchInfo;
  v6 = *(sContactsPairedWithNoMatchInfo + 2);
  v7 = v11;
  v8 = v6(v5, v3);
  v9 = [v4 resultWithValue:v8 orError:v7];

  return v9;
}

@end