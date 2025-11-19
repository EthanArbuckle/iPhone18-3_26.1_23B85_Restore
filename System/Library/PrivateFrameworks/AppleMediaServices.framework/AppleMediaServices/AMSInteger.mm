@interface AMSInteger
+ (id)integerWithInteger:(int64_t)a3;
- (AMSInteger)initWithCoder:(id)a3;
- (AMSInteger)initWithInteger:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToInteger:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSInteger

- (AMSInteger)initWithInteger:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = AMSInteger;
  result = [(AMSInteger *)&v5 init];
  if (result)
  {
    result->_value = a3;
  }

  return result;
}

+ (id)integerWithInteger:(int64_t)a3
{
  v3 = [[a1 alloc] initWithInteger:a3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AMSInteger *)self isEqualToInteger:v4];

  return v5;
}

- (BOOL)isEqualToInteger:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(AMSInteger *)self value];
  v6 = [v4 value];

  return v5 == v6;
}

- (AMSInteger)initWithCoder:(id)a3
{
  v4 = [a3 decodeIntegerForKey:@"value"];

  return [(AMSInteger *)self initWithInteger:v4];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[AMSInteger value](self forKey:{"value"), @"value"}];
}

@end