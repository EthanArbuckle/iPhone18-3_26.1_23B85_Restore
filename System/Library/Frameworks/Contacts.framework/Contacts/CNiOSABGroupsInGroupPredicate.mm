@interface CNiOSABGroupsInGroupPredicate
- (CNiOSABGroupsInGroupPredicate)initWithParentGroupIdentifier:(id)a3;
- (__CFArray)cn_copyGroupsInAddressBook:(void *)a3 error:(__CFError *)a4;
@end

@implementation CNiOSABGroupsInGroupPredicate

- (CNiOSABGroupsInGroupPredicate)initWithParentGroupIdentifier:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"parentGroup.identifier == %@", v4];
  v10.receiver = self;
  v10.super_class = CNiOSABGroupsInGroupPredicate;
  v6 = [(CNPredicate *)&v10 initWithPredicate:v5];

  if (v6)
  {
    v7 = [v4 copy];
    parentGroupIdentifier = v6->_parentGroupIdentifier;
    v6->_parentGroupIdentifier = v7;
  }

  return v6;
}

- (__CFArray)cn_copyGroupsInAddressBook:(void *)a3 error:(__CFError *)a4
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = [(CNiOSABGroupsInGroupPredicate *)self parentGroupIdentifier];
  v9[0] = v4;
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