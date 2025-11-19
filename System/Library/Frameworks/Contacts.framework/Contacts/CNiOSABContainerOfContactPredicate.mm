@interface CNiOSABContainerOfContactPredicate
- (CNiOSABContainerOfContactPredicate)initWithCoder:(id)a3;
- (CNiOSABContainerOfContactPredicate)initWithContactIdentifier:(id)a3;
- (NSString)description;
- (__CFArray)cn_copyContainersInAddressBook:(void *)a3 error:(__CFError *)a4;
- (id)containersFromRecentsLibrary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNiOSABContainerOfContactPredicate

- (id)containersFromRecentsLibrary:(id)a3
{
  v4 = a3;
  v5 = [(CNiOSABContainerOfContactPredicate *)self contactIdentifier];

  if (v5 && ([(CNiOSABContainerOfContactPredicate *)self contactIdentifier], v6 = objc_claimAutoreleasedReturnValue(), v7 = [(CNContactStore *)CNCoreRecentsContactStore isStoreForContactIdentifier:v6], v6, v7))
  {
    v8 = [(CNiOSABContainerOfContactPredicate *)self contactIdentifier];
    v9 = [CNCoreRecentsContactStore coreRecentsDomainFromContactIdentifier:v8];

    v10 = [v4 domains];
    LODWORD(v8) = [v10 containsObject:v9];

    if (v8)
    {
      v11 = [v4 domains];
      v12 = [v4 containersForIdentifiers:v11];
    }

    else
    {
      v12 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  return v12;
}

- (CNiOSABContainerOfContactPredicate)initWithContactIdentifier:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY contacts.identifier == %@", v4];
  v10.receiver = self;
  v10.super_class = CNiOSABContainerOfContactPredicate;
  v6 = [(CNPredicate *)&v10 initWithPredicate:v5];

  if (v6)
  {
    v7 = [v4 copy];
    contactIdentifier = v6->_contactIdentifier;
    v6->_contactIdentifier = v7;
  }

  return v6;
}

- (CNiOSABContainerOfContactPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CNiOSABContainerOfContactPredicate;
  v5 = [(CNPredicate *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_contactIdentifier"];
    v7 = [v6 copy];
    contactIdentifier = v5->_contactIdentifier;
    v5->_contactIdentifier = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CNiOSABContainerOfContactPredicate;
  v4 = a3;
  [(CNPredicate *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_contactIdentifier forKey:{@"_contactIdentifier", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyContainersInAddressBook:(void *)a3 error:(__CFError *)a4
{
  v6 = [(CNiOSABContainerOfContactPredicate *)self contactIdentifier];
  v7 = [v6 length];

  if (v7)
  {
    v8 = [(CNiOSABContainerOfContactPredicate *)self contactIdentifier];

    values = v8;
    v9 = *MEMORY[0x1E695E480];
    v10 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
    v11 = ABAddressBookCopyPeopleWithUUIDs();
    if (!v11)
    {
      v14 = 0;
      if (!v10)
      {
        return v14;
      }

      goto LABEL_14;
    }

    v12 = v11;
    if (CFArrayGetCount(v11) == 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v12, 0);
      cf = ABPersonCopySource(ValueAtIndex);
      if (cf)
      {
        v14 = CFArrayCreate(v9, &cf, 1, MEMORY[0x1E695E9C0]);
        CFRelease(cf);
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = CFArrayCreate(v9, 0, 0, MEMORY[0x1E695E9C0]);
    }

    CFRelease(v12);
    if (v10)
    {
LABEL_14:
      CFRelease(v10);
    }
  }

  else if (a4)
  {
    [CNErrorFactory errorWithCode:400 userInfo:0];
    *a4 = v14 = 0;
  }

  else
  {
    return 0;
  }

  return v14;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContainer predicateForContainerOfContactWithIdentifier:]"];
  v5 = [(CNiOSABContainerOfContactPredicate *)self contactIdentifier];
  v6 = [v3 appendName:@"identifier" object:v5];

  v7 = [v3 build];

  return v7;
}

@end