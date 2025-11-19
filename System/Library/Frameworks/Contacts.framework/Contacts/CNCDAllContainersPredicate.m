@interface CNCDAllContainersPredicate
- (CNCDAllContainersPredicate)initWithCoder:(id)a3;
- (CNCDAllContainersPredicate)initWithIncludeDisabledContainers:(BOOL)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNCDAllContainersPredicate

- (CNCDAllContainersPredicate)initWithIncludeDisabledContainers:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CNCDAllContainersPredicate;
  v4 = [(CNPredicate *)&v8 initWithPredicate:0];
  v5 = v4;
  if (v4)
  {
    v4->_includeDisabledContainers = a3;
    v6 = v4;
  }

  return v5;
}

- (CNCDAllContainersPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CNCDAllContainersPredicate;
  v5 = [(CNPredicate *)&v8 initWithCoder:v4];
  if (v5)
  {
    v5->_includeDisabledContainers = [v4 decodeBoolForKey:@"_includeDisabledContainers"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CNCDAllContainersPredicate;
  v4 = a3;
  [(CNPredicate *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_includeDisabledContainers forKey:{@"_includeDisabledContainers", v5.receiver, v5.super_class}];
}

@end