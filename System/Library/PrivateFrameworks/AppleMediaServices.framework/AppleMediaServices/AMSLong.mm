@interface AMSLong
+ (id)longWithLong:(int64_t)a3;
- (AMSLong)initWithLong:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToLong:(id)a3;
@end

@implementation AMSLong

- (AMSLong)initWithLong:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = AMSLong;
  result = [(AMSLong *)&v5 init];
  if (result)
  {
    result->_value = a3;
  }

  return result;
}

+ (id)longWithLong:(int64_t)a3
{
  v3 = [[a1 alloc] initWithLong:a3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AMSLong *)self isEqualToLong:v4];

  return v5;
}

- (BOOL)isEqualToLong:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(AMSLong *)self value];
  v6 = [v4 value];

  return v5 == v6;
}

@end