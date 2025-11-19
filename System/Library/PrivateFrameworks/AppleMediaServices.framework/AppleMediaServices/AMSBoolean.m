@interface AMSBoolean
+ (id)BOOLeanWithBool:(BOOL)a3;
- (AMSBoolean)initWithBool:(BOOL)a3;
- (AMSBoolean)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToBool:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSBoolean

- (AMSBoolean)initWithBool:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = AMSBoolean;
  result = [(AMSBoolean *)&v5 init];
  if (result)
  {
    result->_value = a3;
  }

  return result;
}

+ (id)BOOLeanWithBool:(BOOL)a3
{
  v3 = [[a1 alloc] initWithBool:a3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AMSBoolean *)self isEqualToBool:v4];

  return v5;
}

- (BOOL)isEqualToBool:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  LOBYTE(self) = [(AMSBoolean *)self value];
  v5 = [v4 value];

  return self ^ v5 ^ 1;
}

- (AMSBoolean)initWithCoder:(id)a3
{
  v4 = [a3 decodeBoolForKey:@"value"];

  return [(AMSBoolean *)self initWithBool:v4];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[AMSBoolean value](self forKey:{"value"), @"value"}];
}

@end