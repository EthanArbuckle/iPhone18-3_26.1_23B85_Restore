@interface CNiOSABDisabledContainersPredicate
- (CNiOSABDisabledContainersPredicate)initWithCoder:(id)coder;
- (CNiOSABDisabledContainersPredicate)initWithDisabledContainersIncluded:(BOOL)included;
- (NSString)description;
- (__CFArray)cn_copyContainersInAddressBook:(void *)book error:(__CFError *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNiOSABDisabledContainersPredicate

- (CNiOSABDisabledContainersPredicate)initWithDisabledContainersIncluded:(BOOL)included
{
  if (included)
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
    v7->_includesDisabledContainers = included;
  }

  return v7;
}

- (CNiOSABDisabledContainersPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CNiOSABDisabledContainersPredicate;
  v5 = [(CNPredicate *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_includesDisabledContainers = [coderCopy decodeBoolForKey:@"_includesDisabledContainers"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CNiOSABDisabledContainersPredicate;
  coderCopy = coder;
  [(CNPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_includesDisabledContainers forKey:{@"_includesDisabledContainers", v5.receiver, v5.super_class}];
}

- (__CFArray)cn_copyContainersInAddressBook:(void *)book error:(__CFError *)error
{
  [(CNiOSABDisabledContainersPredicate *)self includesDisabledContainers:book];

  return ABAddressBookCopyArrayOfAllSourcesIncludingDisabledSources();
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContainer predicateForContainersIncludingDisabled:]"];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNiOSABDisabledContainersPredicate includesDisabledContainers](self, "includesDisabledContainers")}];
  v6 = [v3 appendName:@"includingDisabled" object:v5];

  build = [v3 build];

  return build;
}

@end