@interface CNiOSABContactsInGroupPredicate
- (CNiOSABContactsInGroupPredicate)initWithCoder:(id)coder;
- (CNiOSABContactsInGroupPredicate)initWithParentGroupIdentifier:(id)identifier;
- (NSString)description;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error;
- (id)cn_ABQSLPredicateForAddressBook:(void *)book fetchRequest:(id)request error:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNiOSABContactsInGroupPredicate

- (CNiOSABContactsInGroupPredicate)initWithParentGroupIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identifierCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"parentGroup.identifier == %@", identifierCopy];
  v10.receiver = self;
  v10.super_class = CNiOSABContactsInGroupPredicate;
  v6 = [(CNPredicate *)&v10 initWithPredicate:identifierCopy];

  if (v6)
  {
    v7 = [identifierCopy copy];
    parentGroupIdentifier = v6->_parentGroupIdentifier;
    v6->_parentGroupIdentifier = v7;
  }

  return v6;
}

- (CNiOSABContactsInGroupPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CNiOSABContactsInGroupPredicate;
  v5 = [(CNPredicate *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_parentGroupIdentifier"];
    v7 = [v6 copy];
    parentGroupIdentifier = v5->_parentGroupIdentifier;
    v5->_parentGroupIdentifier = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CNiOSABContactsInGroupPredicate;
  coderCopy = coder;
  [(CNPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_parentGroupIdentifier forKey:{@"_parentGroupIdentifier", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error
{
  v17[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  parentGroupIdentifier = [(CNiOSABContactsInGroupPredicate *)self parentGroupIdentifier];
  v11 = [parentGroupIdentifier length];

  if (!v11)
  {
    if (error)
    {
      [CNErrorFactory errorWithCode:400 userInfo:0];
      *error = v15 = 0;
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_11;
  }

  parentGroupIdentifier2 = [(CNiOSABContactsInGroupPredicate *)self parentGroupIdentifier];
  v17[0] = parentGroupIdentifier2;
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
  v15 = ABGroupCopyArrayOfAllMembersWithSortOrdering(ValueAtIndex, [requestCopy sortOrder]);
  CFRelease(v13);
  if (!v15)
  {
    goto LABEL_9;
  }

LABEL_11:

  return v15;
}

- (id)cn_ABQSLPredicateForAddressBook:(void *)book fetchRequest:(id)request error:(id *)error
{
  v7 = [(CNiOSABContactsInGroupPredicate *)self parentGroupIdentifier:book];
  v8 = [v7 length];

  if (v8)
  {
    v9 = MEMORY[0x1E698A130];
    parentGroupIdentifier = [(CNiOSABContactsInGroupPredicate *)self parentGroupIdentifier];
    v11 = [v9 predicateForContactsInGroupWithIdentifier:parentGroupIdentifier];
  }

  else
  {
    CNSetError(error, 400, 0);
    v11 = 0;
  }

  return v11;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContact predicateForContactsInGroupWithIdentifier:]"];
  parentGroupIdentifier = [(CNiOSABContactsInGroupPredicate *)self parentGroupIdentifier];
  v6 = [v3 appendName:@"identifier" object:parentGroupIdentifier];

  build = [v3 build];

  return build;
}

@end