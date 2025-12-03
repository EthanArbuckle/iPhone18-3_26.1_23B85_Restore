@interface CNiOSABContainerOfContactPredicate
- (CNiOSABContainerOfContactPredicate)initWithCoder:(id)coder;
- (CNiOSABContainerOfContactPredicate)initWithContactIdentifier:(id)identifier;
- (NSString)description;
- (__CFArray)cn_copyContainersInAddressBook:(void *)book error:(__CFError *)error;
- (id)containersFromRecentsLibrary:(id)library;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNiOSABContainerOfContactPredicate

- (id)containersFromRecentsLibrary:(id)library
{
  libraryCopy = library;
  contactIdentifier = [(CNiOSABContainerOfContactPredicate *)self contactIdentifier];

  if (contactIdentifier && ([(CNiOSABContainerOfContactPredicate *)self contactIdentifier], v6 = objc_claimAutoreleasedReturnValue(), v7 = [(CNContactStore *)CNCoreRecentsContactStore isStoreForContactIdentifier:v6], v6, v7))
  {
    contactIdentifier2 = [(CNiOSABContainerOfContactPredicate *)self contactIdentifier];
    v9 = [CNCoreRecentsContactStore coreRecentsDomainFromContactIdentifier:contactIdentifier2];

    domains = [libraryCopy domains];
    LODWORD(contactIdentifier2) = [domains containsObject:v9];

    if (contactIdentifier2)
    {
      domains2 = [libraryCopy domains];
      v12 = [libraryCopy containersForIdentifiers:domains2];
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

- (CNiOSABContainerOfContactPredicate)initWithContactIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identifierCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY contacts.identifier == %@", identifierCopy];
  v10.receiver = self;
  v10.super_class = CNiOSABContainerOfContactPredicate;
  v6 = [(CNPredicate *)&v10 initWithPredicate:identifierCopy];

  if (v6)
  {
    v7 = [identifierCopy copy];
    contactIdentifier = v6->_contactIdentifier;
    v6->_contactIdentifier = v7;
  }

  return v6;
}

- (CNiOSABContainerOfContactPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CNiOSABContainerOfContactPredicate;
  v5 = [(CNPredicate *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_contactIdentifier"];
    v7 = [v6 copy];
    contactIdentifier = v5->_contactIdentifier;
    v5->_contactIdentifier = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CNiOSABContainerOfContactPredicate;
  coderCopy = coder;
  [(CNPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_contactIdentifier forKey:{@"_contactIdentifier", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyContainersInAddressBook:(void *)book error:(__CFError *)error
{
  contactIdentifier = [(CNiOSABContainerOfContactPredicate *)self contactIdentifier];
  v7 = [contactIdentifier length];

  if (v7)
  {
    contactIdentifier2 = [(CNiOSABContainerOfContactPredicate *)self contactIdentifier];

    values = contactIdentifier2;
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

  else if (error)
  {
    [CNErrorFactory errorWithCode:400 userInfo:0];
    *error = v14 = 0;
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
  contactIdentifier = [(CNiOSABContainerOfContactPredicate *)self contactIdentifier];
  v6 = [v3 appendName:@"identifier" object:contactIdentifier];

  build = [v3 build];

  return build;
}

@end