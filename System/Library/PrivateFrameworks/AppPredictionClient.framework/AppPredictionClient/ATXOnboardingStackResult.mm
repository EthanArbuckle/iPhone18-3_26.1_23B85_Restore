@interface ATXOnboardingStackResult
- (ATXOnboardingStackResult)initWithCoder:(id)coder;
- (ATXOnboardingStackResult)initWithStack1:(id)stack1 stack2:(id)stack2;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXOnboardingStackResult

- (ATXOnboardingStackResult)initWithStack1:(id)stack1 stack2:(id)stack2
{
  stack1Copy = stack1;
  stack2Copy = stack2;
  v12.receiver = self;
  v12.super_class = ATXOnboardingStackResult;
  v9 = [(ATXOnboardingStackResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_stack1, stack1);
    objc_storeStrong(&v10->_stack2, stack2);
  }

  return v10;
}

- (ATXOnboardingStackResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stack1"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stack2"];

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = [objc_alloc(objc_opt_class()) initWithStack1:v5 stack2:v6];
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  stack1 = self->_stack1;
  coderCopy = coder;
  [coderCopy encodeObject:stack1 forKey:@"stack1"];
  [coderCopy encodeObject:self->_stack2 forKey:@"stack2"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  stack1 = self->_stack1;
  stack2 = self->_stack2;

  return [v4 initWithStack1:stack1 stack2:stack2];
}

@end