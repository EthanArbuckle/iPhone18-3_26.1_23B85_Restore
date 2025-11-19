@interface CNiOSABContainerOfGroupPredicate
- (CNiOSABContainerOfGroupPredicate)initWithCoder:(id)a3;
- (CNiOSABContainerOfGroupPredicate)initWithGroupIdentifier:(id)a3;
- (NSString)description;
- (__CFArray)cn_copyContainersInAddressBook:(void *)a3 error:(__CFError *)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNiOSABContainerOfGroupPredicate

- (CNiOSABContainerOfGroupPredicate)initWithGroupIdentifier:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY groups.identifier == %@", v4];
  v10.receiver = self;
  v10.super_class = CNiOSABContainerOfGroupPredicate;
  v6 = [(CNPredicate *)&v10 initWithPredicate:v5];

  if (v6)
  {
    v7 = [v4 copy];
    groupIdentifier = v6->_groupIdentifier;
    v6->_groupIdentifier = v7;
  }

  return v6;
}

- (CNiOSABContainerOfGroupPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CNiOSABContainerOfGroupPredicate;
  v5 = [(CNPredicate *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_groupIdentifier"];
    v7 = [v6 copy];
    groupIdentifier = v5->_groupIdentifier;
    v5->_groupIdentifier = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CNiOSABContainerOfGroupPredicate;
  v4 = a3;
  [(CNPredicate *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_groupIdentifier forKey:{@"_groupIdentifier", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyContainersInAddressBook:(void *)a3 error:(__CFError *)a4
{
  v6 = [(CNiOSABContainerOfGroupPredicate *)self groupIdentifier];
  v7 = [v6 length];

  if (v7)
  {
    v8 = [(CNiOSABContainerOfGroupPredicate *)self groupIdentifier];

    values = v8;
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
  v4 = [v3 appendName:@"kind" object:@"-[CNContainer predicateForContainerOfGroupWithIdentifier:]"];
  v5 = [(CNiOSABContainerOfGroupPredicate *)self groupIdentifier];
  v6 = [v3 appendName:@"identifier" object:v5];

  v7 = [v3 build];

  return v7;
}

@end