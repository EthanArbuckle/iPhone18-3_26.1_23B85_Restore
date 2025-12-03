@interface CNiOSABContainerOfGroupPredicate
- (CNiOSABContainerOfGroupPredicate)initWithCoder:(id)coder;
- (CNiOSABContainerOfGroupPredicate)initWithGroupIdentifier:(id)identifier;
- (NSString)description;
- (__CFArray)cn_copyContainersInAddressBook:(void *)book error:(__CFError *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNiOSABContainerOfGroupPredicate

- (CNiOSABContainerOfGroupPredicate)initWithGroupIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identifierCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY groups.identifier == %@", identifierCopy];
  v10.receiver = self;
  v10.super_class = CNiOSABContainerOfGroupPredicate;
  v6 = [(CNPredicate *)&v10 initWithPredicate:identifierCopy];

  if (v6)
  {
    v7 = [identifierCopy copy];
    groupIdentifier = v6->_groupIdentifier;
    v6->_groupIdentifier = v7;
  }

  return v6;
}

- (CNiOSABContainerOfGroupPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CNiOSABContainerOfGroupPredicate;
  v5 = [(CNPredicate *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_groupIdentifier"];
    v7 = [v6 copy];
    groupIdentifier = v5->_groupIdentifier;
    v5->_groupIdentifier = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CNiOSABContainerOfGroupPredicate;
  coderCopy = coder;
  [(CNPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_groupIdentifier forKey:{@"_groupIdentifier", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyContainersInAddressBook:(void *)book error:(__CFError *)error
{
  groupIdentifier = [(CNiOSABContainerOfGroupPredicate *)self groupIdentifier];
  v7 = [groupIdentifier length];

  if (v7)
  {
    groupIdentifier2 = [(CNiOSABContainerOfGroupPredicate *)self groupIdentifier];

    values = groupIdentifier2;
    v9 = *MEMORY[0x1E695E480];
    v10 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
    v11 = ABAddressBookCopyGroupsWithUUIDs();
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
      cf = ABGroupCopySource(ValueAtIndex);
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
  v4 = [v3 appendName:@"kind" object:@"-[CNContainer predicateForContainerOfGroupWithIdentifier:]"];
  groupIdentifier = [(CNiOSABContainerOfGroupPredicate *)self groupIdentifier];
  v6 = [v3 appendName:@"identifier" object:groupIdentifier];

  build = [v3 build];

  return build;
}

@end