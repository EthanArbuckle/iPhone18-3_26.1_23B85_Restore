@interface CNiOSABGroupsInContainerPredicate
- (CNiOSABGroupsInContainerPredicate)initWithCoder:(id)a3;
- (CNiOSABGroupsInContainerPredicate)initWithContainerIdentifier:(id)a3;
- (NSString)description;
- (__CFArray)cn_copyGroupsInAddressBook:(void *)a3 error:(__CFError *)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNiOSABGroupsInContainerPredicate

- (CNiOSABGroupsInContainerPredicate)initWithContainerIdentifier:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"parentContainer.identifier == %@", v4];
  v10.receiver = self;
  v10.super_class = CNiOSABGroupsInContainerPredicate;
  v6 = [(CNPredicate *)&v10 initWithPredicate:v5];

  if (v6)
  {
    v7 = [v4 copy];
    containerIdentifier = v6->_containerIdentifier;
    v6->_containerIdentifier = v7;
  }

  return v6;
}

- (CNiOSABGroupsInContainerPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CNiOSABGroupsInContainerPredicate;
  v5 = [(CNPredicate *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_containerIdentifier"];
    v7 = [v6 copy];
    containerIdentifier = v5->_containerIdentifier;
    v5->_containerIdentifier = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CNiOSABGroupsInContainerPredicate;
  v4 = a3;
  [(CNPredicate *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_containerIdentifier forKey:{@"_containerIdentifier", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyGroupsInAddressBook:(void *)a3 error:(__CFError *)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v7 = [(CNiOSABGroupsInContainerPredicate *)self containerIdentifier];
  v8 = [v7 length];

  if (!v8)
  {
    if (!a4)
    {
      return 0;
    }

    [CNErrorFactory errorWithCode:400 userInfo:0];
    *a4 = v12 = 0;
    return v12;
  }

  v9 = [(CNiOSABGroupsInContainerPredicate *)self containerIdentifier];
  v14[0] = v9;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v10 = ABAddressBookCopySourcesWithUUIDs();

  if (!v10)
  {
    return CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C0]);
  }

  if (CFArrayGetCount(v10) <= 0)
  {
    CFRelease(v10);
    return CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C0]);
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v10, 0);
  v12 = ABAddressBookCopyArrayOfAllGroupsInSource(a3, ValueAtIndex);
  CFRelease(v10);
  if (!v12)
  {
    return CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C0]);
  }

  return v12;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContact predicateForGroupsInContainerWithIdentifier:]"];
  v5 = [(CNiOSABGroupsInContainerPredicate *)self containerIdentifier];
  v6 = [v3 appendName:@"identifier" object:v5];

  v7 = [v3 build];

  return v7;
}

@end