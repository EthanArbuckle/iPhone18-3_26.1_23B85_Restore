@interface AMSUnsignedLongLong
+ (id)unsignedLongLongWithUnsignedLongLong:(unint64_t)long;
- (AMSUnsignedLongLong)initWithUnsignedLongLong:(unint64_t)long;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToUnsignedLongLong:(id)long;
@end

@implementation AMSUnsignedLongLong

- (AMSUnsignedLongLong)initWithUnsignedLongLong:(unint64_t)long
{
  v5.receiver = self;
  v5.super_class = AMSUnsignedLongLong;
  result = [(AMSUnsignedLongLong *)&v5 init];
  if (result)
  {
    result->_value = long;
  }

  return result;
}

+ (id)unsignedLongLongWithUnsignedLongLong:(unint64_t)long
{
  v3 = [[self alloc] initWithUnsignedLongLong:long];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AMSUnsignedLongLong *)self isEqualToUnsignedLongLong:equalCopy];

  return v5;
}

- (BOOL)isEqualToUnsignedLongLong:(id)long
{
  if (!long)
  {
    return 0;
  }

  longCopy = long;
  value = [(AMSUnsignedLongLong *)self value];
  value2 = [longCopy value];

  return value == value2;
}

@end