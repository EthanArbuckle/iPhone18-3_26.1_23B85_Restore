@interface AMSUnsignedLong
+ (id)unsignedLongWithUnsignedLong:(unint64_t)long;
- (AMSUnsignedLong)initWithUnsignedLong:(unint64_t)long;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToUnsignedLong:(id)long;
@end

@implementation AMSUnsignedLong

- (AMSUnsignedLong)initWithUnsignedLong:(unint64_t)long
{
  v5.receiver = self;
  v5.super_class = AMSUnsignedLong;
  result = [(AMSUnsignedLong *)&v5 init];
  if (result)
  {
    result->_value = long;
  }

  return result;
}

+ (id)unsignedLongWithUnsignedLong:(unint64_t)long
{
  v3 = [[self alloc] initWithUnsignedLong:long];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AMSUnsignedLong *)self isEqualToUnsignedLong:equalCopy];

  return v5;
}

- (BOOL)isEqualToUnsignedLong:(id)long
{
  if (!long)
  {
    return 0;
  }

  longCopy = long;
  value = [(AMSUnsignedLong *)self value];
  value2 = [longCopy value];

  return value == value2;
}

@end