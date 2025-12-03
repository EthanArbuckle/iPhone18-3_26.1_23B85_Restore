@interface AMSDouble
+ (id)doubleWithDouble:(double)double;
- (AMSDouble)initWithCoder:(id)coder;
- (AMSDouble)initWithDouble:(double)double;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDouble:(id)double;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSDouble

- (AMSDouble)initWithDouble:(double)double
{
  v5.receiver = self;
  v5.super_class = AMSDouble;
  result = [(AMSDouble *)&v5 init];
  if (result)
  {
    result->_value = double;
  }

  return result;
}

+ (id)doubleWithDouble:(double)double
{
  v3 = [[self alloc] initWithDouble:double];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AMSDouble *)self isEqualToDouble:equalCopy];

  return v5;
}

- (BOOL)isEqualToDouble:(id)double
{
  if (!double)
  {
    return 0;
  }

  doubleCopy = double;
  [(AMSDouble *)self value];
  v6 = v5;
  [doubleCopy value];
  v8 = v7;

  return v6 == v8;
}

- (AMSDouble)initWithCoder:(id)coder
{
  [coder decodeDoubleForKey:@"value"];

  return [(AMSDouble *)self initWithDouble:?];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(AMSDouble *)self value];
  [coderCopy encodeDouble:@"value" forKey:?];
}

@end