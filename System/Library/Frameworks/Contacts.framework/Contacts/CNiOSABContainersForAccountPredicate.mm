@interface CNiOSABContainersForAccountPredicate
- (CNiOSABContainersForAccountPredicate)initWithAccountIdentifier:(id)identifier includingDisabledContainers:(BOOL)containers;
- (CNiOSABContainersForAccountPredicate)initWithCoder:(id)coder;
- (NSString)description;
- (__CFArray)cn_copyContainersInAddressBook:(void *)book error:(__CFError *)error;
- (id)containersFromRecentsLibrary:(id)library;
- (id)targetDomainID;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNiOSABContainersForAccountPredicate

- (CNiOSABContainersForAccountPredicate)initWithAccountIdentifier:(id)identifier includingDisabledContainers:(BOOL)containers
{
  identifierCopy = identifier;
  identifierCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"account.identifier == %@", identifierCopy];
  v12.receiver = self;
  v12.super_class = CNiOSABContainersForAccountPredicate;
  v8 = [(CNPredicate *)&v12 initWithPredicate:identifierCopy];

  if (v8)
  {
    v9 = [identifierCopy copy];
    accountIdentifier = v8->_accountIdentifier;
    v8->_accountIdentifier = v9;

    v8->_includesDisabledContainers = containers;
  }

  return v8;
}

- (CNiOSABContainersForAccountPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CNiOSABContainersForAccountPredicate;
  v5 = [(CNPredicate *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_accountIdentifier"];
    v7 = [v6 copy];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v7;

    v5->_includesDisabledContainers = [coderCopy decodeBoolForKey:@"_includesDisabledContainers"];
    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CNiOSABContainersForAccountPredicate;
  coderCopy = coder;
  [(CNPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_accountIdentifier forKey:{@"_accountIdentifier", v5.receiver, v5.super_class}];
  [coderCopy encodeBool:self->_includesDisabledContainers forKey:@"_includesDisabledContainers"];
}

- (__CFArray)cn_copyContainersInAddressBook:(void *)book error:(__CFError *)error
{
  accountIdentifier = [(CNiOSABContainersForAccountPredicate *)self accountIdentifier];
  v6 = +[CNAccount localAccount];
  identifier = [v6 identifier];
  v8 = [accountIdentifier isEqualToString:identifier];

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
    accountIdentifier2 = [(CNiOSABContainersForAccountPredicate *)self accountIdentifier];

    if (!accountIdentifier2)
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

      if (CFEqual(v16, accountIdentifier2))
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
  accountIdentifier = [(CNiOSABContainersForAccountPredicate *)self accountIdentifier];
  v6 = [v3 appendName:@"identifier" object:accountIdentifier];

  build = [v3 build];

  return build;
}

- (id)containersFromRecentsLibrary:(id)library
{
  v10[1] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  targetDomainID = [(CNiOSABContainersForAccountPredicate *)self targetDomainID];
  v6 = targetDomainID;
  if (targetDomainID)
  {
    v10[0] = targetDomainID;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v8 = [libraryCopy containersForIdentifiers:v7];
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

- (id)targetDomainID
{
  accountIdentifier = [(CNiOSABContainersForAccountPredicate *)self accountIdentifier];
  v3 = +[CNCoreRecentsContactStore acceptedContactsAccountIdentifier];
  v4 = [accountIdentifier isEqualToString:v3];

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