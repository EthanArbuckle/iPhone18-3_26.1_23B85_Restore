@interface AMSLongLong
+ (id)longLongWithLongLong:(int64_t)long;
- (AMSLongLong)initWithLongLong:(int64_t)long;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToLongLong:(id)long;
@end

@implementation AMSLongLong

- (AMSLongLong)initWithLongLong:(int64_t)long
{
  v5.receiver = self;
  v5.super_class = AMSLongLong;
  result = [(AMSLongLong *)&v5 init];
  if (result)
  {
    result->_value = long;
  }

  return result;
}

+ (id)longLongWithLongLong:(int64_t)long
{
  v3 = [[self alloc] initWithLongLong:long];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AMSLongLong *)self isEqualToLongLong:equalCopy];

  return v5;
}

- (BOOL)isEqualToLongLong:(id)long
{
  if (!long)
  {
    return 0;
  }

  longCopy = long;
  value = [(AMSLongLong *)self value];
  value2 = [longCopy value];

  return value == value2;
}

@end