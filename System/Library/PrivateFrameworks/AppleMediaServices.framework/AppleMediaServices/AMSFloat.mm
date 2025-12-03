@interface AMSFloat
+ (id)floatWithFloat:(float)float;
- (AMSFloat)initWithCoder:(id)coder;
- (AMSFloat)initWithFloat:(float)float;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFloat:(id)float;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSFloat

- (AMSFloat)initWithFloat:(float)float
{
  v5.receiver = self;
  v5.super_class = AMSFloat;
  result = [(AMSFloat *)&v5 init];
  if (result)
  {
    result->_value = float;
  }

  return result;
}

+ (id)floatWithFloat:(float)float
{
  v4 = [self alloc];
  *&v5 = float;
  v6 = [v4 initWithFloat:v5];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AMSFloat *)self isEqualToFloat:equalCopy];

  return v5;
}

- (BOOL)isEqualToFloat:(id)float
{
  if (!float)
  {
    return 0;
  }

  floatCopy = float;
  [(AMSFloat *)self value];
  v6 = v5;
  [floatCopy value];
  v8 = v7;

  return v6 == v8;
}

- (AMSFloat)initWithCoder:(id)coder
{
  [coder decodeFloatForKey:@"value"];

  return [(AMSFloat *)self initWithFloat:?];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(AMSFloat *)self value];
  [coderCopy encodeFloat:@"value" forKey:?];
}

@end