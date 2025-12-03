@interface AMSUnsignedInteger
+ (id)unsignedIntegerWithUnsignedInteger:(unint64_t)integer;
- (AMSUnsignedInteger)initWithUnsignedInteger:(unint64_t)integer;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToUnsignedInteger:(id)integer;
@end

@implementation AMSUnsignedInteger

- (AMSUnsignedInteger)initWithUnsignedInteger:(unint64_t)integer
{
  v5.receiver = self;
  v5.super_class = AMSUnsignedInteger;
  result = [(AMSUnsignedInteger *)&v5 init];
  if (result)
  {
    result->_value = integer;
  }

  return result;
}

+ (id)unsignedIntegerWithUnsignedInteger:(unint64_t)integer
{
  v3 = [[self alloc] initWithUnsignedInteger:integer];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AMSUnsignedInteger *)self isEqualToUnsignedInteger:equalCopy];

  return v5;
}

- (BOOL)isEqualToUnsignedInteger:(id)integer
{
  if (!integer)
  {
    return 0;
  }

  integerCopy = integer;
  value = [(AMSUnsignedInteger *)self value];
  value2 = [integerCopy value];

  return value == value2;
}

@end