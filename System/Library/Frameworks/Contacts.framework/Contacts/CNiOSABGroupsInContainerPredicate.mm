@interface CNiOSABGroupsInContainerPredicate
- (CNiOSABGroupsInContainerPredicate)initWithCoder:(id)coder;
- (CNiOSABGroupsInContainerPredicate)initWithContainerIdentifier:(id)identifier;
- (NSString)description;
- (__CFArray)cn_copyGroupsInAddressBook:(void *)book error:(__CFError *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNiOSABGroupsInContainerPredicate

- (CNiOSABGroupsInContainerPredicate)initWithContainerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identifierCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"parentContainer.identifier == %@", identifierCopy];
  v10.receiver = self;
  v10.super_class = CNiOSABGroupsInContainerPredicate;
  v6 = [(CNPredicate *)&v10 initWithPredicate:identifierCopy];

  if (v6)
  {
    v7 = [identifierCopy copy];
    containerIdentifier = v6->_containerIdentifier;
    v6->_containerIdentifier = v7;
  }

  return v6;
}

- (CNiOSABGroupsInContainerPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CNiOSABGroupsInContainerPredicate;
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
  v5.super_class = CNiOSABGroupsInContainerPredicate;
  coderCopy = coder;
  [(CNPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_containerIdentifier forKey:{@"_containerIdentifier", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyGroupsInAddressBook:(void *)book error:(__CFError *)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  containerIdentifier = [(CNiOSABGroupsInContainerPredicate *)self containerIdentifier];
  v8 = [containerIdentifier length];

  if (!v8)
  {
    if (!error)
    {
      return 0;
    }

    [CNErrorFactory errorWithCode:400 userInfo:0];
    *error = v12 = 0;
    return v12;
  }

  containerIdentifier2 = [(CNiOSABGroupsInContainerPredicate *)self containerIdentifier];
  v14[0] = containerIdentifier2;
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
  v12 = ABAddressBookCopyArrayOfAllGroupsInSource(book, ValueAtIndex);
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
  containerIdentifier = [(CNiOSABGroupsInContainerPredicate *)self containerIdentifier];
  v6 = [v3 appendName:@"identifier" object:containerIdentifier];

  build = [v3 build];

  return build;
}

@end