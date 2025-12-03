@interface CNiOSABAccountForExternalIdentifierPredicate
- (CNiOSABAccountForExternalIdentifierPredicate)initWithAccountExternalIdentifier:(id)identifier;
- (CNiOSABAccountForExternalIdentifierPredicate)initWithCoder:(id)coder;
- (__CFArray)cn_copyAccountsInAddressBook:(void *)book error:(__CFError *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNiOSABAccountForExternalIdentifierPredicate

- (CNiOSABAccountForExternalIdentifierPredicate)initWithAccountExternalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identifierCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"externalIdentifier == %@", identifierCopy];
  v10.receiver = self;
  v10.super_class = CNiOSABAccountForExternalIdentifierPredicate;
  v6 = [(CNPredicate *)&v10 initWithPredicate:identifierCopy];

  if (v6)
  {
    v7 = [identifierCopy copy];
    externalIdentifier = v6->_externalIdentifier;
    v6->_externalIdentifier = v7;
  }

  return v6;
}

- (CNiOSABAccountForExternalIdentifierPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CNiOSABAccountForExternalIdentifierPredicate;
  v5 = [(CNPredicate *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_externalIdentifier"];
    v7 = [v6 copy];
    externalIdentifier = v5->_externalIdentifier;
    v5->_externalIdentifier = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CNiOSABAccountForExternalIdentifierPredicate;
  coderCopy = coder;
  [(CNPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_externalIdentifier forKey:{@"_externalIdentifier", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyAccountsInAddressBook:(void *)book error:(__CFError *)error
{
  [(CNiOSABAccountForExternalIdentifierPredicate *)self externalIdentifier];

  values = ABAddressBookCopyAccountWithIdentifier();
  v4 = *MEMORY[0x1E695E480];
  v5 = MEMORY[0x1E695E9C0];
  if (values)
  {
    v6 = CFArrayCreate(v4, &values, 1, MEMORY[0x1E695E9C0]);
    if (values)
    {
      CFRelease(values);
    }

    return v6;
  }

  else
  {

    return CFArrayCreate(v4, 0, 0, v5);
  }
}

@end