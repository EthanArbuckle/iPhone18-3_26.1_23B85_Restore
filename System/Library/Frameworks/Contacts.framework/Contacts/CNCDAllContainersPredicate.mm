@interface CNCDAllContainersPredicate
- (CNCDAllContainersPredicate)initWithCoder:(id)coder;
- (CNCDAllContainersPredicate)initWithIncludeDisabledContainers:(BOOL)containers;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNCDAllContainersPredicate

- (CNCDAllContainersPredicate)initWithIncludeDisabledContainers:(BOOL)containers
{
  v8.receiver = self;
  v8.super_class = CNCDAllContainersPredicate;
  v4 = [(CNPredicate *)&v8 initWithPredicate:0];
  v5 = v4;
  if (v4)
  {
    v4->_includeDisabledContainers = containers;
    v6 = v4;
  }

  return v5;
}

- (CNCDAllContainersPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CNCDAllContainersPredicate;
  v5 = [(CNPredicate *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_includeDisabledContainers = [coderCopy decodeBoolForKey:@"_includeDisabledContainers"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CNCDAllContainersPredicate;
  coderCopy = coder;
  [(CNPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_includeDisabledContainers forKey:{@"_includeDisabledContainers", v5.receiver, v5.super_class}];
}

@end