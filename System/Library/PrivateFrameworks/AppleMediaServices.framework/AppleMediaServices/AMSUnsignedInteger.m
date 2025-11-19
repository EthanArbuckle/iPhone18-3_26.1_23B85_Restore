@interface AMSUnsignedInteger
+ (id)unsignedIntegerWithUnsignedInteger:(unint64_t)a3;
- (AMSUnsignedInteger)initWithUnsignedInteger:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToUnsignedInteger:(id)a3;
@end

@implementation AMSUnsignedInteger

- (AMSUnsignedInteger)initWithUnsignedInteger:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = AMSUnsignedInteger;
  result = [(AMSUnsignedInteger *)&v5 init];
  if (result)
  {
    result->_value = a3;
  }

  return result;
}

+ (id)unsignedIntegerWithUnsignedInteger:(unint64_t)a3
{
  v3 = [[a1 alloc] initWithUnsignedInteger:a3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AMSUnsignedInteger *)self isEqualToUnsignedInteger:v4];

  return v5;
}

- (BOOL)isEqualToUnsignedInteger:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(AMSUnsignedInteger *)self value];
  v6 = [v4 value];

  return v5 == v6;
}

@end