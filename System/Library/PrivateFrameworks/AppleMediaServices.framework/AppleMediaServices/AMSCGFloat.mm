@interface AMSCGFloat
+ (id)cgFloatWithCGFloat:(double)a3;
- (AMSCGFloat)initWithCGFloat:(double)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCGFloat:(id)a3;
@end

@implementation AMSCGFloat

- (AMSCGFloat)initWithCGFloat:(double)a3
{
  v5.receiver = self;
  v5.super_class = AMSCGFloat;
  result = [(AMSCGFloat *)&v5 init];
  if (result)
  {
    result->_value = a3;
  }

  return result;
}

+ (id)cgFloatWithCGFloat:(double)a3
{
  v3 = [[a1 alloc] initWithCGFloat:a3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AMSCGFloat *)self isEqualToCGFloat:v4];

  return v5;
}

- (BOOL)isEqualToCGFloat:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  [(AMSCGFloat *)self value];
  v6 = v5;
  [v4 value];
  v8 = v7;

  return v6 == v8;
}

@end