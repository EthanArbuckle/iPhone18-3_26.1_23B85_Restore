@interface CNiOSABLocalContainerPredicate
- (CNiOSABLocalContainerPredicate)initWithCoder:(id)coder;
- (CNiOSABLocalContainerPredicate)initWithDisabledContainerIncluded:(BOOL)included;
- (NSString)description;
- (__CFArray)cn_copyContainersInAddressBook:(void *)book error:(__CFError *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNiOSABLocalContainerPredicate

- (CNiOSABLocalContainerPredicate)initWithDisabledContainerIncluded:(BOOL)included
{
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"type == %@", &unk_1F09872E8];
  v10.receiver = self;
  v10.super_class = CNiOSABLocalContainerPredicate;
  v6 = [(CNPredicate *)&v10 initWithPredicate:v5];
  v7 = v6;
  if (v6)
  {
    v6->_includesDisabledContainer = included;
    v8 = v6;
  }

  return v7;
}

- (CNiOSABLocalContainerPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CNiOSABLocalContainerPredicate;
  v5 = [(CNPredicate *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_includesDisabledContainer = [coderCopy decodeBoolForKey:@"_includesDisabledContainer"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CNiOSABLocalContainerPredicate;
  coderCopy = coder;
  [(CNPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_includesDisabledContainer forKey:{@"_includesDisabledContainer", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyContainersInAddressBook:(void *)book error:(__CFError *)error
{
  values = ABAddressBookCopyLocalSource();
  if (!values)
  {
    return 0;
  }

  v4 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
  CFRelease(values);
  return v4;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContainer predicateForLocalContainer]"];
  v5 = [v3 appendName:@"includesDisabledContainers" BOOLValue:{-[CNiOSABLocalContainerPredicate includesDisabledContainer](self, "includesDisabledContainer")}];
  build = [v3 build];

  return build;
}

@end