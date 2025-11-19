@interface CNiOSABDefaultContainerForAccountPredicate
- (CNiOSABDefaultContainerForAccountPredicate)initWithAccountIdentifier:(id)a3;
- (CNiOSABDefaultContainerForAccountPredicate)initWithCoder:(id)a3;
- (NSString)description;
- (__CFArray)cn_copyContainersInAddressBook:(void *)a3 error:(__CFError *)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNiOSABDefaultContainerForAccountPredicate

- (CNiOSABDefaultContainerForAccountPredicate)initWithAccountIdentifier:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"defaultForAccount.identifier == %@", v4];
  v11.receiver = self;
  v11.super_class = CNiOSABDefaultContainerForAccountPredicate;
  v6 = [(CNPredicate *)&v11 initWithPredicate:v5];
  if (v6)
  {
    v7 = [v4 copy];
    identifier = v6->_identifier;
    v6->_identifier = v7;

    v9 = v6;
  }

  return v6;
}

- (CNiOSABDefaultContainerForAccountPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CNiOSABDefaultContainerForAccountPredicate;
  v5 = [(CNPredicate *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    v7 = [v6 copy];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CNiOSABDefaultContainerForAccountPredicate;
  v4 = a3;
  [(CNPredicate *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_identifier forKey:{@"_identifier", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyContainersInAddressBook:(void *)a3 error:(__CFError *)a4
{
  v4 = [(CNiOSABDefaultContainerForAccountPredicate *)self identifier];

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

    if (CFEqual(v9, v4))
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
  v5 = [(CNiOSABDefaultContainerForAccountPredicate *)self identifier];
  v6 = [v3 appendName:@"identifier" object:v5];

  v7 = [v3 build];

  return v7;
}

@end