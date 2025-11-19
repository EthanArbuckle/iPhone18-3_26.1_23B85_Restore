@interface CNiOSABPreferredNameInContainersAndGroupsPredicate
- (BOOL)canSearchCoreRecentsLibrary:(id)a3;
- (CNiOSABPreferredNameInContainersAndGroupsPredicate)initWithCoder:(id)a3;
- (CNiOSABPreferredNameInContainersAndGroupsPredicate)initWithContainerIdentifiers:(id)a3 groupIdentifiers:(id)a4;
- (NSString)description;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7;
- (id)contactsFromRecentsLibrary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNiOSABPreferredNameInContainersAndGroupsPredicate

- (CNiOSABPreferredNameInContainersAndGroupsPredicate)initWithContainerIdentifiers:(id)a3 groupIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = CNiOSABPreferredNameInContainersAndGroupsPredicate;
  v8 = [(CNPredicate *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    containerIdentifiers = v8->_containerIdentifiers;
    v8->_containerIdentifiers = v9;

    v11 = [v7 copy];
    groupIdentifiers = v8->_groupIdentifiers;
    v8->_groupIdentifiers = v11;
  }

  return v8;
}

- (CNiOSABPreferredNameInContainersAndGroupsPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = CNiOSABPreferredNameInContainersAndGroupsPredicate;
  v5 = [(CNPredicate *)&v20 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"_containerIdentifiers"];
    v10 = [v9 copy];
    containerIdentifiers = v5->_containerIdentifiers;
    v5->_containerIdentifiers = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"_groupIdentifiers"];
    v16 = [v15 copy];
    groupIdentifiers = v5->_groupIdentifiers;
    v5->_groupIdentifiers = v16;

    v18 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CNiOSABPreferredNameInContainersAndGroupsPredicate;
  v4 = a3;
  [(CNPredicate *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_containerIdentifiers forKey:{@"_containerIdentifiers", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_groupIdentifiers forKey:@"_groupIdentifiers"];
}

- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7
{
  v8 = a4;
  v9 = [(CNiOSABPreferredNameInContainersAndGroupsPredicate *)self groupIdentifiers];

  if (v9)
  {
    v10 = [(CNiOSABPreferredNameInContainersAndGroupsPredicate *)self groupIdentifiers];
    v9 = ABAddressBookCopyGroupsWithUUIDs();

    if (!v9)
    {
      v9 = CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9C0]);
    }
  }

  v11 = [(CNiOSABPreferredNameInContainersAndGroupsPredicate *)self containerIdentifiers];

  if (v11)
  {
    v12 = [(CNiOSABPreferredNameInContainersAndGroupsPredicate *)self containerIdentifiers];
    v13 = ABAddressBookCopySourcesWithUUIDs();

    if (!v13)
    {
      v13 = CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9C0]);
    }

    v14 = v13 == 0;
    v15 = v9 == 0;
    if (v13 && v9)
    {
      if (CFArrayGetCount(v13) <= 0 && CFArrayGetCount(v9) <= 0)
      {
        v17 = CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9C0]);
        CFRelease(v9);
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
    v15 = v9 == 0;
    v14 = 1;
  }

  [v8 sortOrder];
  v16 = ABAddressBookCopyArrayOfPreferredNamePeopleForGroupsAndSourcesWithSortOrdering();
  if (!v16)
  {
    v16 = CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9C0]);
  }

  v17 = v16;
  if (!v15)
  {
    CFRelease(v9);
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
  v5 = [(CNiOSABPreferredNameInContainersAndGroupsPredicate *)self containerIdentifiers];
  v6 = [v3 appendName:@"containerIdentifiers" object:v5];

  v7 = [(CNiOSABPreferredNameInContainersAndGroupsPredicate *)self groupIdentifiers];
  v8 = [v3 appendName:@"groupIdentifiers" object:v7];

  v9 = [v3 build];

  return v9;
}

- (BOOL)canSearchCoreRecentsLibrary:(id)a3
{
  v4 = a3;
  v5 = [(CNiOSABPreferredNameInContainersAndGroupsPredicate *)self containerIdentifiers];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __95__CNiOSABPreferredNameInContainersAndGroupsPredicate_CoreRecents__canSearchCoreRecentsLibrary___block_invoke;
  v9[3] = &unk_1E7412440;
  v10 = v4;
  v6 = v4;
  v7 = [v5 _cn_all:v9];

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

- (id)contactsFromRecentsLibrary:(id)a3
{
  v11 = 0;
  v3 = [a3 allContactsWithError:&v11];
  v4 = MEMORY[0x1E6996810];
  v5 = sContactsPairedWithNoMatchInfo;
  v6 = *(sContactsPairedWithNoMatchInfo + 2);
  v7 = v11;
  v8 = v6(v5, v3);
  v9 = [v4 resultWithValue:v8 orError:v7];

  return v9;
}

@end