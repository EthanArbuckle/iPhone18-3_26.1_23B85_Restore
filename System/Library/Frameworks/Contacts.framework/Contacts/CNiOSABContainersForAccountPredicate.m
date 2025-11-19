@interface CNiOSABContainersForAccountPredicate
- (CNiOSABContainersForAccountPredicate)initWithAccountIdentifier:(id)a3 includingDisabledContainers:(BOOL)a4;
- (CNiOSABContainersForAccountPredicate)initWithCoder:(id)a3;
- (NSString)description;
- (__CFArray)cn_copyContainersInAddressBook:(void *)a3 error:(__CFError *)a4;
- (id)containersFromRecentsLibrary:(id)a3;
- (id)targetDomainID;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNiOSABContainersForAccountPredicate

- (CNiOSABContainersForAccountPredicate)initWithAccountIdentifier:(id)a3 includingDisabledContainers:(BOOL)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"account.identifier == %@", v6];
  v12.receiver = self;
  v12.super_class = CNiOSABContainersForAccountPredicate;
  v8 = [(CNPredicate *)&v12 initWithPredicate:v7];

  if (v8)
  {
    v9 = [v6 copy];
    accountIdentifier = v8->_accountIdentifier;
    v8->_accountIdentifier = v9;

    v8->_includesDisabledContainers = a4;
  }

  return v8;
}

- (CNiOSABContainersForAccountPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CNiOSABContainersForAccountPredicate;
  v5 = [(CNPredicate *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_accountIdentifier"];
    v7 = [v6 copy];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v7;

    v5->_includesDisabledContainers = [v4 decodeBoolForKey:@"_includesDisabledContainers"];
    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CNiOSABContainersForAccountPredicate;
  v4 = a3;
  [(CNPredicate *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_accountIdentifier forKey:{@"_accountIdentifier", v5.receiver, v5.super_class}];
  [v4 encodeBool:self->_includesDisabledContainers forKey:@"_includesDisabledContainers"];
}

- (__CFArray)cn_copyContainersInAddressBook:(void *)a3 error:(__CFError *)a4
{
  v5 = [(CNiOSABContainersForAccountPredicate *)self accountIdentifier];
  v6 = +[CNAccount localAccount];
  v7 = [v6 identifier];
  v8 = [v5 isEqualToString:v7];

  if (v8)
  {
    values = ABAddressBookCopyLocalSource();
    if (!values)
    {
      return CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, 0);
    }

    MutableCopy = CFArrayCreate(0, &values, 1, MEMORY[0x1E695E9C0]);
    v10 = values;
  }

  else
  {
    v11 = [(CNiOSABContainersForAccountPredicate *)self accountIdentifier];

    if (!v11)
    {
      return CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, 0);
    }

    v12 = ABAddressBookCopyArrayOfAllAccounts();
    if (!v12)
    {
      return CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, 0);
    }

    v13 = v12;
    if (CFArrayGetCount(v12) < 1)
    {
      goto LABEL_17;
    }

    v14 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v13, v14);
      v16 = ABAccountCopyInternalUUID();
      if (v16)
      {
        v16 = CFAutorelease(v16);
      }

      if (CFEqual(v16, v11))
      {
        break;
      }

      if (++v14 >= CFArrayGetCount(v13))
      {
        goto LABEL_17;
      }
    }

    if (ValueAtIndex && (v17 = ABAddressBookCopyArrayOfAllSourcesInAccount()) != 0)
    {
      v18 = v17;
      MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, v17);
      CFRelease(v18);
    }

    else
    {
LABEL_17:
      MutableCopy = 0;
    }

    v10 = v13;
  }

  CFRelease(v10);
  if (!MutableCopy)
  {
    return CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, 0);
  }

  return MutableCopy;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContainer predicateForContainersInAccountWithIdentifier:]"];
  v5 = [(CNiOSABContainersForAccountPredicate *)self accountIdentifier];
  v6 = [v3 appendName:@"identifier" object:v5];

  v7 = [v3 build];

  return v7;
}

- (id)containersFromRecentsLibrary:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CNiOSABContainersForAccountPredicate *)self targetDomainID];
  v6 = v5;
  if (v5)
  {
    v10[0] = v5;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v8 = [v4 containersForIdentifiers:v7];
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

- (id)targetDomainID
{
  v2 = [(CNiOSABContainersForAccountPredicate *)self accountIdentifier];
  v3 = +[CNCoreRecentsContactStore acceptedContactsAccountIdentifier];
  v4 = [v2 isEqualToString:v3];

  if (v4)
  {
    v5 = +[CNCoreRecentsContactStore acceptedContactsDomainIdentifier];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end