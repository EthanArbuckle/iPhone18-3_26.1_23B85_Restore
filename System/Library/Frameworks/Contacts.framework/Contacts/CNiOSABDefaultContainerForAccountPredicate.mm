@interface CNiOSABDefaultContainerForAccountPredicate
- (CNiOSABDefaultContainerForAccountPredicate)initWithAccountIdentifier:(id)identifier;
- (CNiOSABDefaultContainerForAccountPredicate)initWithCoder:(id)coder;
- (NSString)description;
- (__CFArray)cn_copyContainersInAddressBook:(void *)book error:(__CFError *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNiOSABDefaultContainerForAccountPredicate

- (CNiOSABDefaultContainerForAccountPredicate)initWithAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identifierCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"defaultForAccount.identifier == %@", identifierCopy];
  v11.receiver = self;
  v11.super_class = CNiOSABDefaultContainerForAccountPredicate;
  v6 = [(CNPredicate *)&v11 initWithPredicate:identifierCopy];
  if (v6)
  {
    v7 = [identifierCopy copy];
    identifier = v6->_identifier;
    v6->_identifier = v7;

    v9 = v6;
  }

  return v6;
}

- (CNiOSABDefaultContainerForAccountPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CNiOSABDefaultContainerForAccountPredicate;
  v5 = [(CNPredicate *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    v7 = [v6 copy];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CNiOSABDefaultContainerForAccountPredicate;
  coderCopy = coder;
  [(CNPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_identifier forKey:{@"_identifier", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyContainersInAddressBook:(void *)book error:(__CFError *)error
{
  identifier = [(CNiOSABDefaultContainerForAccountPredicate *)self identifier];

  v5 = ABAddressBookCopyArrayOfAllAccounts();
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (CFArrayGetCount(v5) < 1)
  {
    goto LABEL_13;
  }

  v7 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v6, v7);
    v9 = ABAccountCopyInternalUUID();
    if (v9)
    {
      v9 = CFAutorelease(v9);
    }

    if (CFEqual(v9, identifier))
    {
      break;
    }

    if (++v7 >= CFArrayGetCount(v6))
    {
      goto LABEL_13;
    }
  }

  if (ValueAtIndex)
  {
    DefaultSourceForAccount = ABAddressBookGetDefaultSourceForAccount();
    if (DefaultSourceForAccount)
    {
      p_DefaultSourceForAccount = &DefaultSourceForAccount;
      v12 = 1;
    }

    else
    {
      p_DefaultSourceForAccount = 0;
      v12 = 0;
    }

    v10 = CFArrayCreate(*MEMORY[0x1E695E480], p_DefaultSourceForAccount, v12, MEMORY[0x1E695E9C0]);
  }

  else
  {
LABEL_13:
    v10 = 0;
  }

  CFRelease(v6);
  return v10;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContainer predicateForDefaultContainerForAccountWithIdentifier:]"];
  identifier = [(CNiOSABDefaultContainerForAccountPredicate *)self identifier];
  v6 = [v3 appendName:@"identifier" object:identifier];

  build = [v3 build];

  return build;
}

@end