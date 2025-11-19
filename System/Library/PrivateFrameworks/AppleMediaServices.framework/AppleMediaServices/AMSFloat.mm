@interface AMSFloat
+ (id)floatWithFloat:(float)a3;
- (AMSFloat)initWithCoder:(id)a3;
- (AMSFloat)initWithFloat:(float)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToFloat:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSFloat

- (AMSFloat)initWithFloat:(float)a3
{
  v5.receiver = self;
  v5.super_class = AMSFloat;
  result = [(AMSFloat *)&v5 init];
  if (result)
  {
    result->_value = a3;
  }

  return result;
}

+ (id)floatWithFloat:(float)a3
{
  v4 = [a1 alloc];
  *&v5 = a3;
  v6 = [v4 initWithFloat:v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AMSFloat *)self isEqualToFloat:v4];

  return v5;
}

- (BOOL)isEqualToFloat:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  [(AMSFloat *)self value];
  v6 = v5;
  [v4 value];
  v8 = v7;

  return v6 == v8;
}

- (AMSFloat)initWithCoder:(id)a3
{
  [a3 decodeFloatForKey:@"value"];

  return [(AMSFloat *)self initWithFloat:?];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(AMSFloat *)self value];
  [v4 encodeFloat:@"value" forKey:?];
}

@end