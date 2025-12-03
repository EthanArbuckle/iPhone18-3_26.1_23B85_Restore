@interface CNiOSABStringMatchContactPredicate
- (CNiOSABStringMatchContactPredicate)initWithCoder:(id)coder;
- (CNiOSABStringMatchContactPredicate)initWithSearchString:(id)string accountIdentifier:(id)identifier containerIdentifier:(id)containerIdentifier groupIdentifier:(id)groupIdentifier;
- (NSString)description;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNiOSABStringMatchContactPredicate

- (CNiOSABStringMatchContactPredicate)initWithSearchString:(id)string accountIdentifier:(id)identifier containerIdentifier:(id)containerIdentifier groupIdentifier:(id)groupIdentifier
{
  stringCopy = string;
  identifierCopy = identifier;
  containerIdentifierCopy = containerIdentifier;
  groupIdentifierCopy = groupIdentifier;
  v24.receiver = self;
  v24.super_class = CNiOSABStringMatchContactPredicate;
  v14 = [(CNPredicate *)&v24 init];
  if (v14)
  {
    v15 = [stringCopy copy];
    searchString = v14->_searchString;
    v14->_searchString = v15;

    v17 = [identifierCopy copy];
    accountIdentifier = v14->_accountIdentifier;
    v14->_accountIdentifier = v17;

    v19 = [containerIdentifierCopy copy];
    containerIdentifier = v14->_containerIdentifier;
    v14->_containerIdentifier = v19;

    v21 = [groupIdentifierCopy copy];
    groupIdentifier = v14->_groupIdentifier;
    v14->_groupIdentifier = v21;
  }

  return v14;
}

- (CNiOSABStringMatchContactPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = CNiOSABStringMatchContactPredicate;
  v5 = [(CNPredicate *)&v20 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_searchString"];
    v7 = [v6 copy];
    searchString = v5->_searchString;
    v5->_searchString = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_accountIdentifier"];
    v10 = [v9 copy];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_containerIdentifier"];
    v13 = [v12 copy];
    containerIdentifier = v5->_containerIdentifier;
    v5->_containerIdentifier = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_groupIdentifier"];
    v16 = [v15 copy];
    groupIdentifier = v5->_groupIdentifier;
    v5->_groupIdentifier = v16;

    v18 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CNiOSABStringMatchContactPredicate;
  coderCopy = coder;
  [(CNPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_searchString forKey:{@"_searchString", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_accountIdentifier forKey:@"_accountIdentifier"];
  [coderCopy encodeObject:self->_containerIdentifier forKey:@"_containerIdentifier"];
  [coderCopy encodeObject:self->_groupIdentifier forKey:@"_groupIdentifier"];
}

- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error
{
  v21[1] = *MEMORY[0x1E69E9840];
  v9 = *MEMORY[0x1E6996568];
  searchString = [(CNiOSABStringMatchContactPredicate *)self searchString];
  LODWORD(v9) = (*(v9 + 16))(v9, searchString);

  if (v9)
  {
    if (!error)
    {
      return 0;
    }

    [CNErrorFactory errorWithCode:400 userInfo:0];
    *error = v11 = 0;
    return v11;
  }

  groupIdentifier = [(CNiOSABStringMatchContactPredicate *)self groupIdentifier];

  if (groupIdentifier)
  {
    groupIdentifier2 = [(CNiOSABStringMatchContactPredicate *)self groupIdentifier];
    v21[0] = groupIdentifier2;
    v14 = 1;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    groupIdentifier = ABAddressBookCopyGroupsWithUUIDs();

    if (groupIdentifier)
    {
      if (CFArrayGetCount(groupIdentifier))
      {
        CFArrayGetValueAtIndex(groupIdentifier, 0);
        v14 = 0;
      }

      else
      {
        v14 = 1;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  containerIdentifier = [(CNiOSABStringMatchContactPredicate *)self containerIdentifier];

  if (containerIdentifier)
  {
    containerIdentifier2 = [(CNiOSABStringMatchContactPredicate *)self containerIdentifier];
    v20 = containerIdentifier2;
    [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
    containerIdentifier = ABAddressBookCopySourcesWithUUIDs();

    if (!containerIdentifier)
    {
      goto LABEL_17;
    }

    if (!CFArrayGetCount(containerIdentifier))
    {
      goto LABEL_17;
    }

    CFArrayGetValueAtIndex(containerIdentifier, 0);
    if (v14)
    {
      goto LABEL_17;
    }
  }

  else if (v14)
  {
LABEL_17:
    v11 = CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C0]);
    goto LABEL_18;
  }

  searchString2 = [(CNiOSABStringMatchContactPredicate *)self searchString];
  accountIdentifier = [(CNiOSABStringMatchContactPredicate *)self accountIdentifier];
  v11 = ABAddressBookCopyArrayOfAllPeopleMatching();

  if (!v11)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (groupIdentifier)
  {
    CFRelease(groupIdentifier);
  }

  if (containerIdentifier)
  {
    CFRelease(containerIdentifier);
  }

  return v11;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContact predicateForContactsMatchingString:accountIdentifier:containerIdentifier:groupIdentifier:]"];
  searchString = [(CNiOSABStringMatchContactPredicate *)self searchString];
  v6 = [v3 appendName:@"searchString" object:searchString];

  accountIdentifier = [(CNiOSABStringMatchContactPredicate *)self accountIdentifier];
  v8 = [v3 appendName:@"accountIdentifier" object:accountIdentifier];

  containerIdentifier = [(CNiOSABStringMatchContactPredicate *)self containerIdentifier];
  v10 = [v3 appendName:@"containerIdentifier" object:containerIdentifier];

  groupIdentifier = [(CNiOSABStringMatchContactPredicate *)self groupIdentifier];
  v12 = [v3 appendName:@"groupIdentifier" object:groupIdentifier];

  build = [v3 build];

  return build;
}

@end