@interface AMSInteger
+ (id)integerWithInteger:(int64_t)integer;
- (AMSInteger)initWithCoder:(id)coder;
- (AMSInteger)initWithInteger:(int64_t)integer;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToInteger:(id)integer;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSInteger

- (AMSInteger)initWithInteger:(int64_t)integer
{
  v5.receiver = self;
  v5.super_class = AMSInteger;
  result = [(AMSInteger *)&v5 init];
  if (result)
  {
    result->_value = integer;
  }

  return result;
}

+ (id)integerWithInteger:(int64_t)integer
{
  v3 = [[self alloc] initWithInteger:integer];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AMSInteger *)self isEqualToInteger:equalCopy];

  return v5;
}

- (BOOL)isEqualToInteger:(id)integer
{
  if (!integer)
  {
    return 0;
  }

  integerCopy = integer;
  value = [(AMSInteger *)self value];
  value2 = [integerCopy value];

  return value == value2;
}

- (AMSInteger)initWithCoder:(id)coder
{
  v4 = [coder decodeIntegerForKey:@"value"];

  return [(AMSInteger *)self initWithInteger:v4];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[AMSInteger value](self forKey:{"value"), @"value"}];
}

@end