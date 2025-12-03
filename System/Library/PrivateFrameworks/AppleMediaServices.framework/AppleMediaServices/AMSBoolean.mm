@interface AMSBoolean
+ (id)BOOLeanWithBool:(BOOL)bool;
- (AMSBoolean)initWithBool:(BOOL)bool;
- (AMSBoolean)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToBool:(id)bool;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSBoolean

- (AMSBoolean)initWithBool:(BOOL)bool
{
  v5.receiver = self;
  v5.super_class = AMSBoolean;
  result = [(AMSBoolean *)&v5 init];
  if (result)
  {
    result->_value = bool;
  }

  return result;
}

+ (id)BOOLeanWithBool:(BOOL)bool
{
  v3 = [[self alloc] initWithBool:bool];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AMSBoolean *)self isEqualToBool:equalCopy];

  return v5;
}

- (BOOL)isEqualToBool:(id)bool
{
  if (!bool)
  {
    return 0;
  }

  boolCopy = bool;
  LOBYTE(self) = [(AMSBoolean *)self value];
  value = [boolCopy value];

  return self ^ value ^ 1;
}

- (AMSBoolean)initWithCoder:(id)coder
{
  v4 = [coder decodeBoolForKey:@"value"];

  return [(AMSBoolean *)self initWithBool:v4];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[AMSBoolean value](self forKey:{"value"), @"value"}];
}

@end