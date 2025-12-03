@interface CNiOSABGroupsInGroupPredicate
- (CNiOSABGroupsInGroupPredicate)initWithParentGroupIdentifier:(id)identifier;
- (__CFArray)cn_copyGroupsInAddressBook:(void *)book error:(__CFError *)error;
@end

@implementation CNiOSABGroupsInGroupPredicate

- (CNiOSABGroupsInGroupPredicate)initWithParentGroupIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identifierCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"parentGroup.identifier == %@", identifierCopy];
  v10.receiver = self;
  v10.super_class = CNiOSABGroupsInGroupPredicate;
  v6 = [(CNPredicate *)&v10 initWithPredicate:identifierCopy];

  if (v6)
  {
    v7 = [identifierCopy copy];
    parentGroupIdentifier = v6->_parentGroupIdentifier;
    v6->_parentGroupIdentifier = v7;
  }

  return v6;
}

- (__CFArray)cn_copyGroupsInAddressBook:(void *)book error:(__CFError *)error
{
  v9[1] = *MEMORY[0x1E69E9840];
  parentGroupIdentifier = [(CNiOSABGroupsInGroupPredicate *)self parentGroupIdentifier];
  v9[0] = parentGroupIdentifier;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v5 = ABAddressBookCopyGroupsWithUUIDs();

  if (v5)
  {
    if (CFArrayGetCount(v5))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, 0);
      v7 = ABGroupCopyArrayOfAllSubgroups(ValueAtIndex);
      CFRelease(v5);
      v5 = v7;
      if (!v7)
      {
        return CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9C0]);
      }
    }
  }

  return v5;
}

@end