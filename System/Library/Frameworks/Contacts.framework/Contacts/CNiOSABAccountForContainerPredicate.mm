@interface CNiOSABAccountForContainerPredicate
- (CNiOSABAccountForContainerPredicate)initWithCoder:(id)coder;
- (CNiOSABAccountForContainerPredicate)initWithContainerIdentifier:(id)identifier;
- (__CFArray)cn_copyAccountsInAddressBook:(void *)book error:(__CFError *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNiOSABAccountForContainerPredicate

- (CNiOSABAccountForContainerPredicate)initWithContainerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identifierCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY containers.identifier == %@", identifierCopy];
  v11.receiver = self;
  v11.super_class = CNiOSABAccountForContainerPredicate;
  v6 = [(CNPredicate *)&v11 initWithPredicate:identifierCopy];
  if (v6)
  {
    v7 = [identifierCopy copy];
    containerIdentifier = v6->_containerIdentifier;
    v6->_containerIdentifier = v7;

    v9 = v6;
  }

  return v6;
}

- (CNiOSABAccountForContainerPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CNiOSABAccountForContainerPredicate;
  v5 = [(CNPredicate *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_containerIdentifier"];
    v7 = [v6 copy];
    containerIdentifier = v5->_containerIdentifier;
    v5->_containerIdentifier = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CNiOSABAccountForContainerPredicate;
  coderCopy = coder;
  [(CNPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_containerIdentifier forKey:{@"_containerIdentifier", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyAccountsInAddressBook:(void *)book error:(__CFError *)error
{
  v13[1] = *MEMORY[0x1E69E9840];
  containerIdentifier = [(CNiOSABAccountForContainerPredicate *)self containerIdentifier];

  if (containerIdentifier)
  {
    containerIdentifier2 = [(CNiOSABAccountForContainerPredicate *)self containerIdentifier];
    v13[0] = containerIdentifier2;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v7 = ABAddressBookCopySourcesWithUUIDs();

    if (v7)
    {
      if (CFArrayGetCount(v7) == 1)
      {
        CFArrayGetValueAtIndex(v7, 0);
        IntValue = ABRecordGetIntValue();
        AccountForSource = ABAddressBookGetAccountForSource();
        values = AccountForSource;
        if (AccountForSource)
        {
          CFRetain(AccountForSource);
        }

        else if (IntValue || (values = ABAccountCreate()) == 0)
        {
          v10 = CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9C0]);
          goto LABEL_11;
        }

        v10 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
        CFRelease(values);
      }

      else
      {
        v10 = 0;
      }

LABEL_11:
      CFRelease(v7);
      return v10;
    }
  }

  return 0;
}

@end