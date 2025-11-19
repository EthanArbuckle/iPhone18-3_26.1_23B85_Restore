@interface CNiOSABLocalContainerPredicate
- (CNiOSABLocalContainerPredicate)initWithCoder:(id)a3;
- (CNiOSABLocalContainerPredicate)initWithDisabledContainerIncluded:(BOOL)a3;
- (NSString)description;
- (__CFArray)cn_copyContainersInAddressBook:(void *)a3 error:(__CFError *)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNiOSABLocalContainerPredicate

- (CNiOSABLocalContainerPredicate)initWithDisabledContainerIncluded:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"type == %@", &unk_1F09872E8];
  v10.receiver = self;
  v10.super_class = CNiOSABLocalContainerPredicate;
  v6 = [(CNPredicate *)&v10 initWithPredicate:v5];
  v7 = v6;
  if (v6)
  {
    v6->_includesDisabledContainer = a3;
    v8 = v6;
  }

  return v7;
}

- (CNiOSABLocalContainerPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CNiOSABLocalContainerPredicate;
  v5 = [(CNPredicate *)&v8 initWithCoder:v4];
  if (v5)
  {
    v5->_includesDisabledContainer = [v4 decodeBoolForKey:@"_includesDisabledContainer"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CNiOSABLocalContainerPredicate;
  v4 = a3;
  [(CNPredicate *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_includesDisabledContainer forKey:{@"_includesDisabledContainer", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyContainersInAddressBook:(void *)a3 error:(__CFError *)a4
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
  v6 = [v3 build];

  return v6;
}

@end