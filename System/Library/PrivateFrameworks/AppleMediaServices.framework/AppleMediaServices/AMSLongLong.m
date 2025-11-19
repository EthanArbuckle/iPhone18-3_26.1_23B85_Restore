@interface AMSLongLong
+ (id)longLongWithLongLong:(int64_t)a3;
- (AMSLongLong)initWithLongLong:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToLongLong:(id)a3;
@end

@implementation AMSLongLong

- (AMSLongLong)initWithLongLong:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = AMSLongLong;
  result = [(AMSLongLong *)&v5 init];
  if (result)
  {
    result->_value = a3;
  }

  return result;
}

+ (id)longLongWithLongLong:(int64_t)a3
{
  v3 = [[a1 alloc] initWithLongLong:a3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AMSLongLong *)self isEqualToLongLong:v4];

  return v5;
}

- (BOOL)isEqualToLongLong:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(AMSLongLong *)self value];
  v6 = [v4 value];

  return v5 == v6;
}

@end