@interface CNiOSABContactsInGroupPredicate
- (CNiOSABContactsInGroupPredicate)initWithCoder:(id)a3;
- (CNiOSABContactsInGroupPredicate)initWithParentGroupIdentifier:(id)a3;
- (NSString)description;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7;
- (id)cn_ABQSLPredicateForAddressBook:(void *)a3 fetchRequest:(id)a4 error:(id *)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNiOSABContactsInGroupPredicate

- (CNiOSABContactsInGroupPredicate)initWithParentGroupIdentifier:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"parentGroup.identifier == %@", v4];
  v10.receiver = self;
  v10.super_class = CNiOSABContactsInGroupPredicate;
  v6 = [(CNPredicate *)&v10 initWithPredicate:v5];

  if (v6)
  {
    v7 = [v4 copy];
    parentGroupIdentifier = v6->_parentGroupIdentifier;
    v6->_parentGroupIdentifier = v7;
  }

  return v6;
}

- (CNiOSABContactsInGroupPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CNiOSABContactsInGroupPredicate;
  v5 = [(CNPredicate *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_parentGroupIdentifier"];
    v7 = [v6 copy];
    parentGroupIdentifier = v5->_parentGroupIdentifier;
    v5->_parentGroupIdentifier = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CNiOSABContactsInGroupPredicate;
  v4 = a3;
  [(CNPredicate *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_parentGroupIdentifier forKey:{@"_parentGroupIdentifier", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7
{
  v17[1] = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = [(CNiOSABContactsInGroupPredicate *)self parentGroupIdentifier];
  v11 = [v10 length];

  if (!v11)
  {
    if (a7)
    {
      [CNErrorFactory errorWithCode:400 userInfo:0];
      *a7 = v15 = 0;
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_11;
  }

  v12 = [(CNiOSABContactsInGroupPredicate *)self parentGroupIdentifier];
  v17[0] = v12;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v13 = ABAddressBookCopyGroupsWithUUIDs();

  if (!v13)
  {
LABEL_9:
    v15 = CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C0]);
    goto LABEL_11;
  }

  if (CFArrayGetCount(v13) <= 0)
  {
    CFRelease(v13);
    goto LABEL_9;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v13, 0);
  v15 = ABGroupCopyArrayOfAllMembersWithSortOrdering(ValueAtIndex, [v9 sortOrder]);
  CFRelease(v13);
  if (!v15)
  {
    goto LABEL_9;
  }

LABEL_11:

  return v15;
}

- (id)cn_ABQSLPredicateForAddressBook:(void *)a3 fetchRequest:(id)a4 error:(id *)a5
{
  v7 = [(CNiOSABContactsInGroupPredicate *)self parentGroupIdentifier:a3];
  v8 = [v7 length];

  if (v8)
  {
    v9 = MEMORY[0x1E698A130];
    v10 = [(CNiOSABContactsInGroupPredicate *)self parentGroupIdentifier];
    v11 = [v9 predicateForContactsInGroupWithIdentifier:v10];
  }

  else
  {
    CNSetError(a5, 400, 0);
    v11 = 0;
  }

  return v11;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContact predicateForContactsInGroupWithIdentifier:]"];
  v5 = [(CNiOSABContactsInGroupPredicate *)self parentGroupIdentifier];
  v6 = [v3 appendName:@"identifier" object:v5];

  v7 = [v3 build];

  return v7;
}

@end