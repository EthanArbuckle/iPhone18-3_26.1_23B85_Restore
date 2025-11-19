@interface AMSDouble
+ (id)doubleWithDouble:(double)a3;
- (AMSDouble)initWithCoder:(id)a3;
- (AMSDouble)initWithDouble:(double)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDouble:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSDouble

- (AMSDouble)initWithDouble:(double)a3
{
  v5.receiver = self;
  v5.super_class = AMSDouble;
  result = [(AMSDouble *)&v5 init];
  if (result)
  {
    result->_value = a3;
  }

  return result;
}

+ (id)doubleWithDouble:(double)a3
{
  v3 = [[a1 alloc] initWithDouble:a3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AMSDouble *)self isEqualToDouble:v4];

  return v5;
}

- (BOOL)isEqualToDouble:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  [(AMSDouble *)self value];
  v6 = v5;
  [v4 value];
  v8 = v7;

  return v6 == v8;
}

- (AMSDouble)initWithCoder:(id)a3
{
  [a3 decodeDoubleForKey:@"value"];

  return [(AMSDouble *)self initWithDouble:?];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(AMSDouble *)self value];
  [v4 encodeDouble:@"value" forKey:?];
}

@end