@interface AMSShort
+ (id)shortWithShort:(signed __int16)a3;
- (AMSShort)initWithShort:(signed __int16)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToShort:(id)a3;
@end

@implementation AMSShort

- (AMSShort)initWithShort:(signed __int16)a3
{
  v5.receiver = self;
  v5.super_class = AMSShort;
  result = [(AMSShort *)&v5 init];
  if (result)
  {
    result->_value = a3;
  }

  return result;
}

+ (id)shortWithShort:(signed __int16)a3
{
  v3 = [[a1 alloc] initWithShort:a3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AMSShort *)self isEqualToShort:v4];

  return v5;
}

- (BOOL)isEqualToShort:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  LODWORD(self) = [(AMSShort *)self value];
  v5 = [v4 value];

  return self == v5;
}

@end