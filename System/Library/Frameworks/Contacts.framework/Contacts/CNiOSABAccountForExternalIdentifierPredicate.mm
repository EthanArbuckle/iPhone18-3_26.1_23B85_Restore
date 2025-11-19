@interface CNiOSABAccountForExternalIdentifierPredicate
- (CNiOSABAccountForExternalIdentifierPredicate)initWithAccountExternalIdentifier:(id)a3;
- (CNiOSABAccountForExternalIdentifierPredicate)initWithCoder:(id)a3;
- (__CFArray)cn_copyAccountsInAddressBook:(void *)a3 error:(__CFError *)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNiOSABAccountForExternalIdentifierPredicate

- (CNiOSABAccountForExternalIdentifierPredicate)initWithAccountExternalIdentifier:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"externalIdentifier == %@", v4];
  v10.receiver = self;
  v10.super_class = CNiOSABAccountForExternalIdentifierPredicate;
  v6 = [(CNPredicate *)&v10 initWithPredicate:v5];

  if (v6)
  {
    v7 = [v4 copy];
    externalIdentifier = v6->_externalIdentifier;
    v6->_externalIdentifier = v7;
  }

  return v6;
}

- (CNiOSABAccountForExternalIdentifierPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CNiOSABAccountForExternalIdentifierPredicate;
  v5 = [(CNPredicate *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_externalIdentifier"];
    v7 = [v6 copy];
    externalIdentifier = v5->_externalIdentifier;
    v5->_externalIdentifier = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CNiOSABAccountForExternalIdentifierPredicate;
  v4 = a3;
  [(CNPredicate *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_externalIdentifier forKey:{@"_externalIdentifier", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyAccountsInAddressBook:(void *)a3 error:(__CFError *)a4
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