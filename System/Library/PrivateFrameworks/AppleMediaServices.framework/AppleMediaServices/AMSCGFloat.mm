@interface AMSCGFloat
+ (id)cgFloatWithCGFloat:(double)float;
- (AMSCGFloat)initWithCGFloat:(double)float;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCGFloat:(id)float;
@end

@implementation AMSCGFloat

- (AMSCGFloat)initWithCGFloat:(double)float
{
  v5.receiver = self;
  v5.super_class = AMSCGFloat;
  result = [(AMSCGFloat *)&v5 init];
  if (result)
  {
    result->_value = float;
  }

  return result;
}

+ (id)cgFloatWithCGFloat:(double)float
{
  v3 = [[self alloc] initWithCGFloat:float];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AMSCGFloat *)self isEqualToCGFloat:equalCopy];

  return v5;
}

- (BOOL)isEqualToCGFloat:(id)float
{
  if (!float)
  {
    return 0;
  }

  floatCopy = float;
  [(AMSCGFloat *)self value];
  v6 = v5;
  [floatCopy value];
  v8 = v7;

  return v6 == v8;
}

@end