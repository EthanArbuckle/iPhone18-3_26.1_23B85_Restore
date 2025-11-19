@interface AMSInt
+ (id)intWithInt:(int)a3;
- (AMSInt)initWithCoder:(id)a3;
- (AMSInt)initWithInt:(int)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToInt:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSInt

- (AMSInt)initWithInt:(int)a3
{
  v5.receiver = self;
  v5.super_class = AMSInt;
  result = [(AMSInt *)&v5 init];
  if (result)
  {
    result->_value = a3;
  }

  return result;
}

+ (id)intWithInt:(int)a3
{
  v3 = [[a1 alloc] initWithInt:*&a3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AMSInt *)self isEqualToInt:v4];

  return v5;
}

- (BOOL)isEqualToInt:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  LODWORD(self) = [(AMSInt *)self value];
  v5 = [v4 value];

  return self == v5;
}

- (AMSInt)initWithCoder:(id)a3
{
  v4 = [a3 decodeIntForKey:@"value"];

  return [(AMSInt *)self initWithInt:v4];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt:-[AMSInt value](self forKey:{"value"), @"value"}];
}

@end