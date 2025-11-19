@interface AMSUnsignedLong
+ (id)unsignedLongWithUnsignedLong:(unint64_t)a3;
- (AMSUnsignedLong)initWithUnsignedLong:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToUnsignedLong:(id)a3;
@end

@implementation AMSUnsignedLong

- (AMSUnsignedLong)initWithUnsignedLong:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = AMSUnsignedLong;
  result = [(AMSUnsignedLong *)&v5 init];
  if (result)
  {
    result->_value = a3;
  }

  return result;
}

+ (id)unsignedLongWithUnsignedLong:(unint64_t)a3
{
  v3 = [[a1 alloc] initWithUnsignedLong:a3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AMSUnsignedLong *)self isEqualToUnsignedLong:v4];

  return v5;
}

- (BOOL)isEqualToUnsignedLong:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(AMSUnsignedLong *)self value];
  v6 = [v4 value];

  return v5 == v6;
}

@end