@interface AMSLong
+ (id)longWithLong:(int64_t)long;
- (AMSLong)initWithLong:(int64_t)long;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToLong:(id)long;
@end

@implementation AMSLong

- (AMSLong)initWithLong:(int64_t)long
{
  v5.receiver = self;
  v5.super_class = AMSLong;
  result = [(AMSLong *)&v5 init];
  if (result)
  {
    result->_value = long;
  }

  return result;
}

+ (id)longWithLong:(int64_t)long
{
  v3 = [[self alloc] initWithLong:long];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AMSLong *)self isEqualToLong:equalCopy];

  return v5;
}

- (BOOL)isEqualToLong:(id)long
{
  if (!long)
  {
    return 0;
  }

  longCopy = long;
  value = [(AMSLong *)self value];
  value2 = [longCopy value];

  return value == value2;
}

@end