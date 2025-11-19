@interface CNiOSABStringMatchContactPredicate
- (CNiOSABStringMatchContactPredicate)initWithCoder:(id)a3;
- (CNiOSABStringMatchContactPredicate)initWithSearchString:(id)a3 accountIdentifier:(id)a4 containerIdentifier:(id)a5 groupIdentifier:(id)a6;
- (NSString)description;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNiOSABStringMatchContactPredicate

- (CNiOSABStringMatchContactPredicate)initWithSearchString:(id)a3 accountIdentifier:(id)a4 containerIdentifier:(id)a5 groupIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = CNiOSABStringMatchContactPredicate;
  v14 = [(CNPredicate *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    searchString = v14->_searchString;
    v14->_searchString = v15;

    v17 = [v11 copy];
    accountIdentifier = v14->_accountIdentifier;
    v14->_accountIdentifier = v17;

    v19 = [v12 copy];
    containerIdentifier = v14->_containerIdentifier;
    v14->_containerIdentifier = v19;

    v21 = [v13 copy];
    groupIdentifier = v14->_groupIdentifier;
    v14->_groupIdentifier = v21;
  }

  return v14;
}

- (CNiOSABStringMatchContactPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = CNiOSABStringMatchContactPredicate;
  v5 = [(CNPredicate *)&v20 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_searchString"];
    v7 = [v6 copy];
    searchString = v5->_searchString;
    v5->_searchString = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_accountIdentifier"];
    v10 = [v9 copy];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_containerIdentifier"];
    v13 = [v12 copy];
    containerIdentifier = v5->_containerIdentifier;
    v5->_containerIdentifier = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_groupIdentifier"];
    v16 = [v15 copy];
    groupIdentifier = v5->_groupIdentifier;
    v5->_groupIdentifier = v16;

    v18 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CNiOSABStringMatchContactPredicate;
  v4 = a3;
  [(CNPredicate *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_searchString forKey:{@"_searchString", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_accountIdentifier forKey:@"_accountIdentifier"];
  [v4 encodeObject:self->_containerIdentifier forKey:@"_containerIdentifier"];
  [v4 encodeObject:self->_groupIdentifier forKey:@"_groupIdentifier"];
}

- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7
{
  v21[1] = *MEMORY[0x1E69E9840];
  v9 = *MEMORY[0x1E6996568];
  v10 = [(CNiOSABStringMatchContactPredicate *)self searchString];
  LODWORD(v9) = (*(v9 + 16))(v9, v10);

  if (v9)
  {
    if (!a7)
    {
      return 0;
    }

    [CNErrorFactory errorWithCode:400 userInfo:0];
    *a7 = v11 = 0;
    return v11;
  }

  v12 = [(CNiOSABStringMatchContactPredicate *)self groupIdentifier];

  if (v12)
  {
    v13 = [(CNiOSABStringMatchContactPredicate *)self groupIdentifier];
    v21[0] = v13;
    v14 = 1;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    v12 = ABAddressBookCopyGroupsWithUUIDs();

    if (v12)
    {
      if (CFArrayGetCount(v12))
      {
        CFArrayGetValueAtIndex(v12, 0);
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

  v15 = [(CNiOSABStringMatchContactPredicate *)self containerIdentifier];

  if (v15)
  {
    v16 = [(CNiOSABStringMatchContactPredicate *)self containerIdentifier];
    v20 = v16;
    [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
    v15 = ABAddressBookCopySourcesWithUUIDs();

    if (!v15)
    {
      goto LABEL_17;
    }

    if (!CFArrayGetCount(v15))
    {
      goto LABEL_17;
    }

    CFArrayGetValueAtIndex(v15, 0);
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

  v17 = [(CNiOSABStringMatchContactPredicate *)self searchString];
  v18 = [(CNiOSABStringMatchContactPredicate *)self accountIdentifier];
  v11 = ABAddressBookCopyArrayOfAllPeopleMatching();

  if (!v11)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (v12)
  {
    CFRelease(v12);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v11;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContact predicateForContactsMatchingString:accountIdentifier:containerIdentifier:groupIdentifier:]"];
  v5 = [(CNiOSABStringMatchContactPredicate *)self searchString];
  v6 = [v3 appendName:@"searchString" object:v5];

  v7 = [(CNiOSABStringMatchContactPredicate *)self accountIdentifier];
  v8 = [v3 appendName:@"accountIdentifier" object:v7];

  v9 = [(CNiOSABStringMatchContactPredicate *)self containerIdentifier];
  v10 = [v3 appendName:@"containerIdentifier" object:v9];

  v11 = [(CNiOSABStringMatchContactPredicate *)self groupIdentifier];
  v12 = [v3 appendName:@"groupIdentifier" object:v11];

  v13 = [v3 build];

  return v13;
}

@end