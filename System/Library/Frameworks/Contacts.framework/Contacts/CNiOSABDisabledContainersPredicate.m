@interface CNiOSABDisabledContainersPredicate
- (CNiOSABDisabledContainersPredicate)initWithCoder:(id)a3;
- (CNiOSABDisabledContainersPredicate)initWithDisabledContainersIncluded:(BOOL)a3;
- (NSString)description;
- (__CFArray)cn_copyContainersInAddressBook:(void *)a3 error:(__CFError *)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNiOSABDisabledContainersPredicate

- (CNiOSABDisabledContainersPredicate)initWithDisabledContainersIncluded:(BOOL)a3
{
  if (a3)
  {
    v5 = [@"enabled == YES" stringByAppendingString:@" || enabled == NO"];
  }

  else
  {
    v5 = @"enabled == YES";
  }

  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:v5];
  v9.receiver = self;
  v9.super_class = CNiOSABDisabledContainersPredicate;
  v7 = [(CNPredicate *)&v9 initWithPredicate:v6];

  if (v7)
  {
    v7->_includesDisabledContainers = a3;
  }

  return v7;
}

- (CNiOSABDisabledContainersPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CNiOSABDisabledContainersPredicate;
  v5 = [(CNPredicate *)&v8 initWithCoder:v4];
  if (v5)
  {
    v5->_includesDisabledContainers = [v4 decodeBoolForKey:@"_includesDisabledContainers"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CNiOSABDisabledContainersPredicate;
  v4 = a3;
  [(CNPredicate *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_includesDisabledContainers forKey:{@"_includesDisabledContainers", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyContainersInAddressBook:(void *)a3 error:(__CFError *)a4
{
  [(CNiOSABDisabledContainersPredicate *)self includesDisabledContainers:a3];

  return ABAddressBookCopyArrayOfAllSourcesIncludingDisabledSources();
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContainer predicateForContainersIncludingDisabled:]"];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNiOSABDisabledContainersPredicate includesDisabledContainers](self, "includesDisabledContainers")}];
  v6 = [v3 appendName:@"includingDisabled" object:v5];

  v7 = [v3 build];

  return v7;
}

@end